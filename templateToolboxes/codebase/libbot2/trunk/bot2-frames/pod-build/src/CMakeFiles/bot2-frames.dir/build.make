# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-frames

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-frames/pod-build

# Include any dependencies generated for this target.
include src/CMakeFiles/bot2-frames.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/bot2-frames.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/bot2-frames.dir/flags.make

src/CMakeFiles/bot2-frames.dir/bot_frames.c.o: src/CMakeFiles/bot2-frames.dir/flags.make
src/CMakeFiles/bot2-frames.dir/bot_frames.c.o: ../src/bot_frames.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-frames/pod-build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/CMakeFiles/bot2-frames.dir/bot_frames.c.o"
	cd /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-frames/pod-build/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/bot2-frames.dir/bot_frames.c.o   -c /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-frames/src/bot_frames.c

src/CMakeFiles/bot2-frames.dir/bot_frames.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bot2-frames.dir/bot_frames.c.i"
	cd /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-frames/pod-build/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-frames/src/bot_frames.c > CMakeFiles/bot2-frames.dir/bot_frames.c.i

src/CMakeFiles/bot2-frames.dir/bot_frames.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bot2-frames.dir/bot_frames.c.s"
	cd /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-frames/pod-build/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-frames/src/bot_frames.c -o CMakeFiles/bot2-frames.dir/bot_frames.c.s

src/CMakeFiles/bot2-frames.dir/bot_frames.c.o.requires:
.PHONY : src/CMakeFiles/bot2-frames.dir/bot_frames.c.o.requires

src/CMakeFiles/bot2-frames.dir/bot_frames.c.o.provides: src/CMakeFiles/bot2-frames.dir/bot_frames.c.o.requires
	$(MAKE) -f src/CMakeFiles/bot2-frames.dir/build.make src/CMakeFiles/bot2-frames.dir/bot_frames.c.o.provides.build
.PHONY : src/CMakeFiles/bot2-frames.dir/bot_frames.c.o.provides

src/CMakeFiles/bot2-frames.dir/bot_frames.c.o.provides.build: src/CMakeFiles/bot2-frames.dir/bot_frames.c.o

# Object files for target bot2-frames
bot2__frames_OBJECTS = \
"CMakeFiles/bot2-frames.dir/bot_frames.c.o"

# External object files for target bot2-frames
bot2__frames_EXTERNAL_OBJECTS =

lib/libbot2-frames.so.2: src/CMakeFiles/bot2-frames.dir/bot_frames.c.o
lib/libbot2-frames.so.2: src/CMakeFiles/bot2-frames.dir/build.make
lib/libbot2-frames.so.2: src/CMakeFiles/bot2-frames.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared library ../lib/libbot2-frames.so"
	cd /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-frames/pod-build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bot2-frames.dir/link.txt --verbose=$(VERBOSE)
	cd /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-frames/pod-build/src && $(CMAKE_COMMAND) -E cmake_symlink_library ../lib/libbot2-frames.so.2 ../lib/libbot2-frames.so.2 ../lib/libbot2-frames.so

lib/libbot2-frames.so: lib/libbot2-frames.so.2

# Rule to build all files generated by this target.
src/CMakeFiles/bot2-frames.dir/build: lib/libbot2-frames.so
.PHONY : src/CMakeFiles/bot2-frames.dir/build

src/CMakeFiles/bot2-frames.dir/requires: src/CMakeFiles/bot2-frames.dir/bot_frames.c.o.requires
.PHONY : src/CMakeFiles/bot2-frames.dir/requires

src/CMakeFiles/bot2-frames.dir/clean:
	cd /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-frames/pod-build/src && $(CMAKE_COMMAND) -P CMakeFiles/bot2-frames.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/bot2-frames.dir/clean

src/CMakeFiles/bot2-frames.dir/depend:
	cd /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-frames/pod-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-frames /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-frames/src /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-frames/pod-build /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-frames/pod-build/src /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-frames/pod-build/src/CMakeFiles/bot2-frames.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/bot2-frames.dir/depend

