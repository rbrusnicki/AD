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
CMAKE_SOURCE_DIR = /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-lcm-utils

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-lcm-utils/pod-build

# Include any dependencies generated for this target.
include src/logfilter/CMakeFiles/bot-lcm-logfilter.dir/depend.make

# Include the progress variables for this target.
include src/logfilter/CMakeFiles/bot-lcm-logfilter.dir/progress.make

# Include the compile flags for this target's objects.
include src/logfilter/CMakeFiles/bot-lcm-logfilter.dir/flags.make

src/logfilter/CMakeFiles/bot-lcm-logfilter.dir/lcm-logfilter.c.o: src/logfilter/CMakeFiles/bot-lcm-logfilter.dir/flags.make
src/logfilter/CMakeFiles/bot-lcm-logfilter.dir/lcm-logfilter.c.o: ../src/logfilter/lcm-logfilter.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-lcm-utils/pod-build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/logfilter/CMakeFiles/bot-lcm-logfilter.dir/lcm-logfilter.c.o"
	cd /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-lcm-utils/pod-build/src/logfilter && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/bot-lcm-logfilter.dir/lcm-logfilter.c.o   -c /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-lcm-utils/src/logfilter/lcm-logfilter.c

src/logfilter/CMakeFiles/bot-lcm-logfilter.dir/lcm-logfilter.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bot-lcm-logfilter.dir/lcm-logfilter.c.i"
	cd /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-lcm-utils/pod-build/src/logfilter && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-lcm-utils/src/logfilter/lcm-logfilter.c > CMakeFiles/bot-lcm-logfilter.dir/lcm-logfilter.c.i

src/logfilter/CMakeFiles/bot-lcm-logfilter.dir/lcm-logfilter.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bot-lcm-logfilter.dir/lcm-logfilter.c.s"
	cd /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-lcm-utils/pod-build/src/logfilter && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-lcm-utils/src/logfilter/lcm-logfilter.c -o CMakeFiles/bot-lcm-logfilter.dir/lcm-logfilter.c.s

src/logfilter/CMakeFiles/bot-lcm-logfilter.dir/lcm-logfilter.c.o.requires:
.PHONY : src/logfilter/CMakeFiles/bot-lcm-logfilter.dir/lcm-logfilter.c.o.requires

src/logfilter/CMakeFiles/bot-lcm-logfilter.dir/lcm-logfilter.c.o.provides: src/logfilter/CMakeFiles/bot-lcm-logfilter.dir/lcm-logfilter.c.o.requires
	$(MAKE) -f src/logfilter/CMakeFiles/bot-lcm-logfilter.dir/build.make src/logfilter/CMakeFiles/bot-lcm-logfilter.dir/lcm-logfilter.c.o.provides.build
.PHONY : src/logfilter/CMakeFiles/bot-lcm-logfilter.dir/lcm-logfilter.c.o.provides

src/logfilter/CMakeFiles/bot-lcm-logfilter.dir/lcm-logfilter.c.o.provides.build: src/logfilter/CMakeFiles/bot-lcm-logfilter.dir/lcm-logfilter.c.o

# Object files for target bot-lcm-logfilter
bot__lcm__logfilter_OBJECTS = \
"CMakeFiles/bot-lcm-logfilter.dir/lcm-logfilter.c.o"

# External object files for target bot-lcm-logfilter
bot__lcm__logfilter_EXTERNAL_OBJECTS =

bin/bot-lcm-logfilter: src/logfilter/CMakeFiles/bot-lcm-logfilter.dir/lcm-logfilter.c.o
bin/bot-lcm-logfilter: src/logfilter/CMakeFiles/bot-lcm-logfilter.dir/build.make
bin/bot-lcm-logfilter: src/logfilter/CMakeFiles/bot-lcm-logfilter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable ../../bin/bot-lcm-logfilter"
	cd /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-lcm-utils/pod-build/src/logfilter && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bot-lcm-logfilter.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/logfilter/CMakeFiles/bot-lcm-logfilter.dir/build: bin/bot-lcm-logfilter
.PHONY : src/logfilter/CMakeFiles/bot-lcm-logfilter.dir/build

src/logfilter/CMakeFiles/bot-lcm-logfilter.dir/requires: src/logfilter/CMakeFiles/bot-lcm-logfilter.dir/lcm-logfilter.c.o.requires
.PHONY : src/logfilter/CMakeFiles/bot-lcm-logfilter.dir/requires

src/logfilter/CMakeFiles/bot-lcm-logfilter.dir/clean:
	cd /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-lcm-utils/pod-build/src/logfilter && $(CMAKE_COMMAND) -P CMakeFiles/bot-lcm-logfilter.dir/cmake_clean.cmake
.PHONY : src/logfilter/CMakeFiles/bot-lcm-logfilter.dir/clean

src/logfilter/CMakeFiles/bot-lcm-logfilter.dir/depend:
	cd /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-lcm-utils/pod-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-lcm-utils /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-lcm-utils/src/logfilter /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-lcm-utils/pod-build /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-lcm-utils/pod-build/src/logfilter /home/ra/workspace/code/starter_toolboxes/codebase/libbot2/trunk/bot2-lcm-utils/pod-build/src/logfilter/CMakeFiles/bot-lcm-logfilter.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/logfilter/CMakeFiles/bot-lcm-logfilter.dir/depend

