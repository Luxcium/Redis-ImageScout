# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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
CMAKE_BINARY_DIR = /home/luxcium/.local/src/Redis-ImageScout

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target install/strip
install/strip: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip

# Special rule for the target install/strip
install/strip/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip/fast

# Special rule for the target install
install: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install

# Special rule for the target install
install/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install/fast

# Special rule for the target list_install_components
list_install_components:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Available install components are: \"Unspecified\""
.PHONY : list_install_components

# Special rule for the target list_install_components
list_install_components/fast: list_install_components
.PHONY : list_install_components/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# Special rule for the target install/local
install/local: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local

# Special rule for the target install/local
install/local/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/luxcium/.local/src/Redis-ImageScout/CMakeFiles /home/luxcium/.local/src/Redis-ImageScout//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/luxcium/.local/src/Redis-ImageScout/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named imgscoutclient

# Build rule for target.
imgscoutclient: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 imgscoutclient
.PHONY : imgscoutclient

# fast build rule for target.
imgscoutclient/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/imgscoutclient.dir/build.make CMakeFiles/imgscoutclient.dir/build
.PHONY : imgscoutclient/fast

#=============================================================================
# Target rules for targets named hiredis

# Build rule for target.
hiredis: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 hiredis
.PHONY : hiredis

# fast build rule for target.
hiredis/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/hiredis.dir/build.make CMakeFiles/hiredis.dir/build
.PHONY : hiredis/fast

#=============================================================================
# Target rules for targets named phash

# Build rule for target.
phash: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 phash
.PHONY : phash

# fast build rule for target.
phash/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/phash.dir/build.make CMakeFiles/phash.dir/build
.PHONY : phash/fast

#=============================================================================
# Target rules for targets named imgscout

# Build rule for target.
imgscout: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 imgscout
.PHONY : imgscout

# fast build rule for target.
imgscout/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/imgscout.dir/build.make CMakeFiles/imgscout.dir/build
.PHONY : imgscout/fast

imgscoutclient.o: imgscoutclient.cpp.o
.PHONY : imgscoutclient.o

# target to build an object file
imgscoutclient.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/imgscoutclient.dir/build.make CMakeFiles/imgscoutclient.dir/imgscoutclient.cpp.o
.PHONY : imgscoutclient.cpp.o

imgscoutclient.i: imgscoutclient.cpp.i
.PHONY : imgscoutclient.i

# target to preprocess a source file
imgscoutclient.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/imgscoutclient.dir/build.make CMakeFiles/imgscoutclient.dir/imgscoutclient.cpp.i
.PHONY : imgscoutclient.cpp.i

imgscoutclient.s: imgscoutclient.cpp.s
.PHONY : imgscoutclient.s

# target to generate assembly for a file
imgscoutclient.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/imgscoutclient.dir/build.make CMakeFiles/imgscoutclient.dir/imgscoutclient.cpp.s
.PHONY : imgscoutclient.cpp.s

module.o: module.cpp.o
.PHONY : module.o

# target to build an object file
module.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/imgscout.dir/build.make CMakeFiles/imgscout.dir/module.cpp.o
.PHONY : module.cpp.o

module.i: module.cpp.i
.PHONY : module.i

# target to preprocess a source file
module.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/imgscout.dir/build.make CMakeFiles/imgscout.dir/module.cpp.i
.PHONY : module.cpp.i

module.s: module.cpp.s
.PHONY : module.s

# target to generate assembly for a file
module.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/imgscout.dir/build.make CMakeFiles/imgscout.dir/module.cpp.s
.PHONY : module.cpp.s

mvpnode.o: mvpnode.cpp.o
.PHONY : mvpnode.o

# target to build an object file
mvpnode.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/imgscout.dir/build.make CMakeFiles/imgscout.dir/mvpnode.cpp.o
.PHONY : mvpnode.cpp.o

mvpnode.i: mvpnode.cpp.i
.PHONY : mvpnode.i

# target to preprocess a source file
mvpnode.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/imgscout.dir/build.make CMakeFiles/imgscout.dir/mvpnode.cpp.i
.PHONY : mvpnode.cpp.i

mvpnode.s: mvpnode.cpp.s
.PHONY : mvpnode.s

# target to generate assembly for a file
mvpnode.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/imgscout.dir/build.make CMakeFiles/imgscout.dir/mvpnode.cpp.s
.PHONY : mvpnode.cpp.s

mvptree.o: mvptree.cpp.o
.PHONY : mvptree.o

# target to build an object file
mvptree.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/imgscout.dir/build.make CMakeFiles/imgscout.dir/mvptree.cpp.o
.PHONY : mvptree.cpp.o

mvptree.i: mvptree.cpp.i
.PHONY : mvptree.i

# target to preprocess a source file
mvptree.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/imgscout.dir/build.make CMakeFiles/imgscout.dir/mvptree.cpp.i
.PHONY : mvptree.cpp.i

mvptree.s: mvptree.cpp.s
.PHONY : mvptree.s

# target to generate assembly for a file
mvptree.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/imgscout.dir/build.make CMakeFiles/imgscout.dir/mvptree.cpp.s
.PHONY : mvptree.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... install"
	@echo "... install/local"
	@echo "... install/strip"
	@echo "... list_install_components"
	@echo "... rebuild_cache"
	@echo "... hiredis"
	@echo "... phash"
	@echo "... imgscout"
	@echo "... imgscoutclient"
	@echo "... imgscoutclient.o"
	@echo "... imgscoutclient.i"
	@echo "... imgscoutclient.s"
	@echo "... module.o"
	@echo "... module.i"
	@echo "... module.s"
	@echo "... mvpnode.o"
	@echo "... mvpnode.i"
	@echo "... mvpnode.s"
	@echo "... mvptree.o"
	@echo "... mvptree.i"
	@echo "... mvptree.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

