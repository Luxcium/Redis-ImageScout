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

# Utility rule file for phash.

# Include any custom commands dependencies for this target.
include CMakeFiles/phash.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/phash.dir/progress.make

CMakeFiles/phash: CMakeFiles/phash-complete

CMakeFiles/phash-complete: phash/src/phash-stamp/phash-install
CMakeFiles/phash-complete: phash/src/phash-stamp/phash-mkdir
CMakeFiles/phash-complete: phash/src/phash-stamp/phash-download
CMakeFiles/phash-complete: phash/src/phash-stamp/phash-update
CMakeFiles/phash-complete: phash/src/phash-stamp/phash-patch
CMakeFiles/phash-complete: phash/src/phash-stamp/phash-configure
CMakeFiles/phash-complete: phash/src/phash-stamp/phash-build
CMakeFiles/phash-complete: phash/src/phash-stamp/phash-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/luxcium/src/Redis-ImageScout/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'phash'"
	/usr/bin/cmake -E make_directory /home/luxcium/src/Redis-ImageScout/CMakeFiles
	/usr/bin/cmake -E touch /home/luxcium/src/Redis-ImageScout/CMakeFiles/phash-complete
	/usr/bin/cmake -E touch /home/luxcium/src/Redis-ImageScout/phash/src/phash-stamp/phash-done

phash/src/phash-stamp/phash-build: phash/src/phash-stamp/phash-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/luxcium/src/Redis-ImageScout/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing build step for 'phash'"
	cd /home/luxcium/src/Redis-ImageScout/phash/src/phash-build && $(MAKE)
	cd /home/luxcium/src/Redis-ImageScout/phash/src/phash-build && /usr/bin/cmake -E touch /home/luxcium/src/Redis-ImageScout/phash/src/phash-stamp/phash-build

phash/src/phash-stamp/phash-configure: phash/tmp/phash-cfgcmd.txt
phash/src/phash-stamp/phash-configure: phash/src/phash-stamp/phash-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/luxcium/src/Redis-ImageScout/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Performing configure step for 'phash'"
	cd /home/luxcium/src/Redis-ImageScout/phash/src/phash-build && /usr/bin/cmake -DCMAKE_INSTALL_PREFIX=/home/luxcium/src/Redis-ImageScout/phash -DCMAKE_BUILD_TYPE=RelWithDebInfo -DUSE_IMAGE_HASH=ON -DUSE_AUDIO_HASH=OFF -DUSE_VIDEO_HASH=OFF -DUSE_TEXT_HASH=OFF "-GUnix Makefiles" /home/luxcium/src/Redis-ImageScout/phash/src/phash
	cd /home/luxcium/src/Redis-ImageScout/phash/src/phash-build && /usr/bin/cmake -E touch /home/luxcium/src/Redis-ImageScout/phash/src/phash-stamp/phash-configure

phash/src/phash-stamp/phash-download: phash/src/phash-stamp/phash-gitinfo.txt
phash/src/phash-stamp/phash-download: phash/src/phash-stamp/phash-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/luxcium/src/Redis-ImageScout/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'phash'"
	cd /home/luxcium/src/Redis-ImageScout/phash/src && /usr/bin/cmake -P /home/luxcium/src/Redis-ImageScout/phash/tmp/phash-gitclone.cmake
	cd /home/luxcium/src/Redis-ImageScout/phash/src && /usr/bin/cmake -E touch /home/luxcium/src/Redis-ImageScout/phash/src/phash-stamp/phash-download

phash/src/phash-stamp/phash-install: phash/src/phash-stamp/phash-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/luxcium/src/Redis-ImageScout/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Performing install step for 'phash'"
	cd /home/luxcium/src/Redis-ImageScout/phash/src/phash-build && $(MAKE) install
	cd /home/luxcium/src/Redis-ImageScout/phash/src/phash-build && /usr/bin/cmake -E touch /home/luxcium/src/Redis-ImageScout/phash/src/phash-stamp/phash-install

phash/src/phash-stamp/phash-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/luxcium/src/Redis-ImageScout/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Creating directories for 'phash'"
	/usr/bin/cmake -E make_directory /home/luxcium/src/Redis-ImageScout/phash/src/phash
	/usr/bin/cmake -E make_directory /home/luxcium/src/Redis-ImageScout/phash/src/phash-build
	/usr/bin/cmake -E make_directory /home/luxcium/src/Redis-ImageScout/phash
	/usr/bin/cmake -E make_directory /home/luxcium/src/Redis-ImageScout/phash/tmp
	/usr/bin/cmake -E make_directory /home/luxcium/src/Redis-ImageScout/phash/src/phash-stamp
	/usr/bin/cmake -E make_directory /home/luxcium/src/Redis-ImageScout/phash/src
	/usr/bin/cmake -E make_directory /home/luxcium/src/Redis-ImageScout/phash/src/phash-stamp
	/usr/bin/cmake -E touch /home/luxcium/src/Redis-ImageScout/phash/src/phash-stamp/phash-mkdir

phash/src/phash-stamp/phash-patch: phash/src/phash-stamp/phash-update
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/luxcium/src/Redis-ImageScout/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No patch step for 'phash'"
	/usr/bin/cmake -E echo_append
	/usr/bin/cmake -E touch /home/luxcium/src/Redis-ImageScout/phash/src/phash-stamp/phash-patch

phash/src/phash-stamp/phash-update: phash/src/phash-stamp/phash-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/luxcium/src/Redis-ImageScout/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing update step for 'phash'"
	cd /home/luxcium/src/Redis-ImageScout/phash/src/phash && /usr/bin/cmake -P /home/luxcium/src/Redis-ImageScout/phash/tmp/phash-gitupdate.cmake

phash: CMakeFiles/phash
phash: CMakeFiles/phash-complete
phash: phash/src/phash-stamp/phash-build
phash: phash/src/phash-stamp/phash-configure
phash: phash/src/phash-stamp/phash-download
phash: phash/src/phash-stamp/phash-install
phash: phash/src/phash-stamp/phash-mkdir
phash: phash/src/phash-stamp/phash-patch
phash: phash/src/phash-stamp/phash-update
phash: CMakeFiles/phash.dir/build.make
.PHONY : phash

# Rule to build all files generated by this target.
CMakeFiles/phash.dir/build: phash
.PHONY : CMakeFiles/phash.dir/build

CMakeFiles/phash.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/phash.dir/cmake_clean.cmake
.PHONY : CMakeFiles/phash.dir/clean

CMakeFiles/phash.dir/depend:
	cd /home/luxcium/src/Redis-ImageScout && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/luxcium/.local/src/Redis-ImageScout /home/luxcium/src/Redis-ImageScout /home/luxcium/src/Redis-ImageScout /home/luxcium/src/Redis-ImageScout /home/luxcium/src/Redis-ImageScout/CMakeFiles/phash.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/phash.dir/depend

