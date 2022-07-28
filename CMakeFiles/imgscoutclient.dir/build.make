# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/luxcium/.local/src/Redis-ImageScout

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/luxcium/src/Redis-ImageScout

# Include any dependencies generated for this target.
include CMakeFiles/imgscoutclient.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/imgscoutclient.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/imgscoutclient.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/imgscoutclient.dir/flags.make

CMakeFiles/imgscoutclient.dir/imgscoutclient.cpp.o: CMakeFiles/imgscoutclient.dir/flags.make
CMakeFiles/imgscoutclient.dir/imgscoutclient.cpp.o: imgscoutclient.cpp
CMakeFiles/imgscoutclient.dir/imgscoutclient.cpp.o: CMakeFiles/imgscoutclient.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/luxcium/src/Redis-ImageScout/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/imgscoutclient.dir/imgscoutclient.cpp.o"
	/usr/lib64/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/imgscoutclient.dir/imgscoutclient.cpp.o -MF CMakeFiles/imgscoutclient.dir/imgscoutclient.cpp.o.d -o CMakeFiles/imgscoutclient.dir/imgscoutclient.cpp.o -c /home/luxcium/src/Redis-ImageScout/imgscoutclient.cpp

CMakeFiles/imgscoutclient.dir/imgscoutclient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgscoutclient.dir/imgscoutclient.cpp.i"
	/usr/lib64/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/luxcium/src/Redis-ImageScout/imgscoutclient.cpp > CMakeFiles/imgscoutclient.dir/imgscoutclient.cpp.i

CMakeFiles/imgscoutclient.dir/imgscoutclient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgscoutclient.dir/imgscoutclient.cpp.s"
	/usr/lib64/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/luxcium/src/Redis-ImageScout/imgscoutclient.cpp -o CMakeFiles/imgscoutclient.dir/imgscoutclient.cpp.s

# Object files for target imgscoutclient
imgscoutclient_OBJECTS = \
"CMakeFiles/imgscoutclient.dir/imgscoutclient.cpp.o"

# External object files for target imgscoutclient
imgscoutclient_EXTERNAL_OBJECTS =

imgscoutclient: CMakeFiles/imgscoutclient.dir/imgscoutclient.cpp.o
imgscoutclient: CMakeFiles/imgscoutclient.dir/build.make
imgscoutclient: /usr/lib64/libboost_program_options.so
imgscoutclient: /usr/lib64/libboost_filesystem.so
imgscoutclient: phash/lib/libpHash.so
imgscoutclient: /usr/lib64/libpng.so
imgscoutclient: /usr/lib64/libjpeg.so
imgscoutclient: /usr/lib64/libtiff.so
imgscoutclient: hiredis/lib/libhiredis.a
imgscoutclient: CMakeFiles/imgscoutclient.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/luxcium/src/Redis-ImageScout/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable imgscoutclient"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/imgscoutclient.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/imgscoutclient.dir/build: imgscoutclient
.PHONY : CMakeFiles/imgscoutclient.dir/build

CMakeFiles/imgscoutclient.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/imgscoutclient.dir/cmake_clean.cmake
.PHONY : CMakeFiles/imgscoutclient.dir/clean

CMakeFiles/imgscoutclient.dir/depend:
	cd /home/luxcium/src/Redis-ImageScout && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/luxcium/.local/src/Redis-ImageScout /home/luxcium/src/Redis-ImageScout /home/luxcium/src/Redis-ImageScout /home/luxcium/src/Redis-ImageScout /home/luxcium/src/Redis-ImageScout/CMakeFiles/imgscoutclient.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/imgscoutclient.dir/depend

