cmake_minimum_required(VERSION 3.6)

project(opus_codec C) #project name and the programming language

# want to include header without using absolute path?
# add this  
include_directories(/home/mrshuong/thow/project/me-stop-yap/libogg-1.3.5/include/)
include_directories(/home/mrshuong/thow/project/me-stop-yap/opus/include/)
include_directories(/home/mrshuong/thow/project/me-stop-yap/opusfile-0.11/include/)

include_directories(/home/mrshuong/thow/project/me-stop-yap/opusfile-0.11/.libs/)
link_directories(/home/mrshuong/thow/project/me-stop-yap/opus/build/lib)
link_directories(/home/mrshuong/thow/project/me-stop-yap/libogg-1.3.5/lib/)
find_library(OPUSFILE_LIB NAMES opusfile PATHS /home/mrshuong/thow/project/me-stop-yap/opusfile-0.11/.libs/)
# # add_definitions(-DVAR_ARRAYS)

# # specify where the source files for header are at
# file(GLOB SHARED_SOURCE
#     ${PROJECT_SOURCE_DIR}/src/*.c)

# add_definitions(-DOPUS_BUILD)

# tell gcc to compile all .c files
add_executable(decode ${PROJECT_SOURCE_DIR}/decoder.c)
# Link the import library (.lib)
target_link_libraries(decode opusfile opus ogg )
