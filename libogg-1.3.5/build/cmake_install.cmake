# Install script for directory: /home/mrshuong/thow/project/me-stop-yap/libogg-1.3.5

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/mrshuong/thow/project/me-stop-yap/libogg-1.3.5")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/mrshuong/thow/project/me-stop-yap/libogg-1.3.5/build/libogg.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ogg" TYPE FILE FILES
    "/home/mrshuong/thow/project/me-stop-yap/libogg-1.3.5/build/include/ogg/config_types.h"
    "/home/mrshuong/thow/project/me-stop-yap/libogg-1.3.5/include/ogg/ogg.h"
    "/home/mrshuong/thow/project/me-stop-yap/libogg-1.3.5/include/ogg/os_types.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Ogg/OggTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Ogg/OggTargets.cmake"
         "/home/mrshuong/thow/project/me-stop-yap/libogg-1.3.5/build/CMakeFiles/Export/lib/cmake/Ogg/OggTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Ogg/OggTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Ogg/OggTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Ogg" TYPE FILE FILES "/home/mrshuong/thow/project/me-stop-yap/libogg-1.3.5/build/CMakeFiles/Export/lib/cmake/Ogg/OggTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Ogg" TYPE FILE FILES "/home/mrshuong/thow/project/me-stop-yap/libogg-1.3.5/build/CMakeFiles/Export/lib/cmake/Ogg/OggTargets-noconfig.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Ogg" TYPE FILE FILES
    "/home/mrshuong/thow/project/me-stop-yap/libogg-1.3.5/build/OggConfig.cmake"
    "/home/mrshuong/thow/project/me-stop-yap/libogg-1.3.5/build/OggConfigVersion.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/mrshuong/thow/project/me-stop-yap/libogg-1.3.5/build/ogg.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/libogg/html" TYPE FILE FILES
    "/home/mrshuong/thow/project/me-stop-yap/libogg-1.3.5/doc/framing.html"
    "/home/mrshuong/thow/project/me-stop-yap/libogg-1.3.5/doc/index.html"
    "/home/mrshuong/thow/project/me-stop-yap/libogg-1.3.5/doc/oggstream.html"
    "/home/mrshuong/thow/project/me-stop-yap/libogg-1.3.5/doc/ogg-multiplex.html"
    "/home/mrshuong/thow/project/me-stop-yap/libogg-1.3.5/doc/fish_xiph_org.png"
    "/home/mrshuong/thow/project/me-stop-yap/libogg-1.3.5/doc/multiplex1.png"
    "/home/mrshuong/thow/project/me-stop-yap/libogg-1.3.5/doc/packets.png"
    "/home/mrshuong/thow/project/me-stop-yap/libogg-1.3.5/doc/pages.png"
    "/home/mrshuong/thow/project/me-stop-yap/libogg-1.3.5/doc/stream.png"
    "/home/mrshuong/thow/project/me-stop-yap/libogg-1.3.5/doc/vorbisword2.png"
    "/home/mrshuong/thow/project/me-stop-yap/libogg-1.3.5/doc/white-ogg.png"
    "/home/mrshuong/thow/project/me-stop-yap/libogg-1.3.5/doc/white-xifish.png"
    "/home/mrshuong/thow/project/me-stop-yap/libogg-1.3.5/doc/rfc3533.txt"
    "/home/mrshuong/thow/project/me-stop-yap/libogg-1.3.5/doc/rfc5334.txt"
    "/home/mrshuong/thow/project/me-stop-yap/libogg-1.3.5/doc/skeleton.html"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/libogg/html" TYPE DIRECTORY FILES "/home/mrshuong/thow/project/me-stop-yap/libogg-1.3.5/doc/libogg")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/mrshuong/thow/project/me-stop-yap/libogg-1.3.5/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
