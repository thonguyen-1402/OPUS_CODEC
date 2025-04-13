import mido
import random
from mido import Message, MidiFile, MidiTrack

def create_jazz_midi(filename="jazz_music.mid", duration=198): #duration = duration of the recorded audio
    midi = MidiFile()
    
    drum_track = MidiTrack()
    bass_track = MidiTrack()
    piano_track = MidiTrack()
    sax_track = MidiTrack()
    
    midi.tracks.append(drum_track) 
    midi.tracks.append(bass_track)
    midi.tracks.append(piano_track)
    midi.tracks.append(sax_track)
    
    # Define jazz chords and progressions 
    jazz_progressions = [
        [60, 65, 67, 72],  # C, F, G, C(octave)
        [62, 67, 60, 65],  # D, G, C, F
        [65, 70, 62, 67]   # F, B♭, D, G
    ]
    
    tempo = 500000 
    ticks_per_beat = 480 
    time_per_beat = tempo / 1000000 
    beats_per_bar = 4 
    
    bars = int(duration / (beats_per_bar * time_per_beat)) 
    
    # Set instruments (MIDI program numbers)
    bass_track.append(Message('program_change', program=32, channel=1, time=0))  
    piano_track.append(Message('program_change', program=0, channel=2, time=0))  
    sax_track.append(Message('program_change', program=66, channel=3, time=0))  
    # No program change needed for drums as they use channel 9
    
    current_progression = random.choice(jazz_progressions) 
    
    # Creates chord notes based on root note
    def get_chord_notes(root): 
        return [root, root+4, root+7, root+11]  
       
    
    # Main composition loop
    for bar in range(bars): 
        # Get current chord root
        chord_root = current_progression[bar % len(current_progression)] 
        chord = get_chord_notes(chord_root) 
        
        # DRUM PATTERN
        # Ride cymbal pattern
        for beat in range(beats_per_bar):
            # Ride cymbal on beat
            drum_track.append(Message('note_on', note=51, velocity=70, channel=9, time=0)) 
            
            # Hi-hat on beats 2 and 4
            if beat in [1, 3]:
                drum_track.append(Message('note_on', note=42, velocity=80, channel=9, time=0)) 
                drum_track.append(Message('note_off', note=42, velocity=0, channel=9, time=20)) 
            
            # Kick on beat 1
            if beat == 0:
                drum_track.append(Message('note_on', note=36, velocity=100, channel=9, time=0)) 
                drum_track.append(Message('note_off', note=36, velocity=0, channel=9, time=20))
                
            drum_track.append(Message('note_off', note=51, velocity=0, channel=9, time=ticks_per_beat-20)) 
        
        # BASS PATTERN
        # Walking bass - root, 5th, rootUp, down
        bass_notes = [chord_root-12, chord_root-5, chord_root, chord_root-2]
        
        for note in bass_notes: 
            bass_track.append(Message('note_on', note=note, velocity=100, channel=1, time=0))
            bass_track.append(Message('note_off', note=note, velocity=0, channel=1, time=ticks_per_beat))
        
        # PIANO COMPING
        # First chord hit
        for note in chord: 
            piano_track.append(Message('note_on', note=note, velocity=70, channel=2, time=0))
        
        # First chord release
        piano_track.append(Message('note_off', note=chord[0], velocity=0, channel=2, time=ticks_per_beat)) 
        for note in chord[1:]:  
            piano_track.append(Message('note_off', note=note, velocity=0, channel=2, time=0))
        
        # Second chord hit (with slight variation)
        chord_var = [chord[0], chord[1]+2, chord[2], chord[3]-2]
    
        for note in chord_var: 
            piano_track.append(Message('note_on', note=note, velocity=60, channel=2, time=0))
        
        # Second chord release
        piano_track.append(Message('note_off', note=chord_var[0], velocity=0, channel=2, time=ticks_per_beat*2)) 
        for note in chord_var[1:]: 
            piano_track.append(Message('note_off', note=note, velocity=0, channel=2, time=0))
        
        # Skip a beat
        piano_track.append(Message('note_on', note=0, velocity=0, channel=2, time=ticks_per_beat))
        piano_track.append(Message('note_off', note=0, velocity=0, channel=2, time=0))
        
        # SAX MELODY
        # Create scale based on chord  
        scale = [chord_root, chord_root+2, chord_root+4, chord_root+5, 
                 chord_root+7, chord_root+9, chord_root+11, chord_root+12]
        
        # Only play melody on even bars 
        if bar % 2 == 0: 
            # Play four eighth notes (note 1/8)
            for i in range(4): 
                note = random.choice(scale)
                sax_track.append(Message('note_on', note=note, velocity=90, channel=3, time=0))
                sax_track.append(Message('note_off', note=note, velocity=0, channel=3, time=ticks_per_beat//2))
                
            # Hold a longer note
            note = random.choice(scale)
            sax_track.append(Message('note_on', note=note, velocity=85, channel=3, time=0))
            sax_track.append(Message('note_off', note=note, velocity=0, channel=3, time=ticks_per_beat*2)) 
        else:
            # Rest for a bar
            sax_track.append(Message('note_on', note=0, velocity=0, channel=3, time=ticks_per_beat*4)) 
            sax_track.append(Message('note_off', note=0, velocity=0, channel=3, time=0))
    
    midi.save(filename) 
    print(f"MIDI file '{filename}' generated successfully!")

create_jazz_midi()