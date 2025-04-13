#include <opusfile.h>
#include <stdio.h>
#include <stdlib.h>

#define BUFFER_SIZE 120 * 48000 * 2 / 1000

int main(int argc, char *argv[]) {
    if (argc < 3) {
        fprintf(stderr, "Usage: <input.opus> <output.pcm>\n");
        return 1;
    }
    const char *inputfile = argv[1];
    const char *outputfile = argv[2];
    FILE *outstream = fopen(outputfile, "wb");
    OggOpusFile *of = op_open_file(inputfile, NULL);
    if (!of) {
        fprintf(stderr, "Failed to open file: %s\n", inputfile);
        return 1;
    }
    opus_int16 pcm[BUFFER_SIZE];
    int samples;
    while ((samples = op_read(of, pcm, BUFFER_SIZE, NULL)) > 0) {
        fwrite(pcm, sizeof(opus_int16), samples, outstream);
    }
    if (samples < 0) {
        fprintf(stderr, "Error decoding Opus file: %d\n", samples);
    }
    fclose(outstream);
    op_free(of);
    return 0;
}
