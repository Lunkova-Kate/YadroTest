# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_SOURCE_DIR = /home/nekoie/YadroTest/ComputerClub

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nekoie/YadroTest/ComputerClub/build

# Include any dependencies generated for this target.
include CMakeFiles/ComputerClub.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ComputerClub.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ComputerClub.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ComputerClub.dir/flags.make

CMakeFiles/ComputerClub.dir/computerClub.cpp.o: CMakeFiles/ComputerClub.dir/flags.make
CMakeFiles/ComputerClub.dir/computerClub.cpp.o: /home/nekoie/YadroTest/ComputerClub/computerClub.cpp
CMakeFiles/ComputerClub.dir/computerClub.cpp.o: CMakeFiles/ComputerClub.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/nekoie/YadroTest/ComputerClub/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ComputerClub.dir/computerClub.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ComputerClub.dir/computerClub.cpp.o -MF CMakeFiles/ComputerClub.dir/computerClub.cpp.o.d -o CMakeFiles/ComputerClub.dir/computerClub.cpp.o -c /home/nekoie/YadroTest/ComputerClub/computerClub.cpp

CMakeFiles/ComputerClub.dir/computerClub.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ComputerClub.dir/computerClub.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nekoie/YadroTest/ComputerClub/computerClub.cpp > CMakeFiles/ComputerClub.dir/computerClub.cpp.i

CMakeFiles/ComputerClub.dir/computerClub.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ComputerClub.dir/computerClub.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nekoie/YadroTest/ComputerClub/computerClub.cpp -o CMakeFiles/ComputerClub.dir/computerClub.cpp.s

CMakeFiles/ComputerClub.dir/event.cpp.o: CMakeFiles/ComputerClub.dir/flags.make
CMakeFiles/ComputerClub.dir/event.cpp.o: /home/nekoie/YadroTest/ComputerClub/event.cpp
CMakeFiles/ComputerClub.dir/event.cpp.o: CMakeFiles/ComputerClub.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/nekoie/YadroTest/ComputerClub/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ComputerClub.dir/event.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ComputerClub.dir/event.cpp.o -MF CMakeFiles/ComputerClub.dir/event.cpp.o.d -o CMakeFiles/ComputerClub.dir/event.cpp.o -c /home/nekoie/YadroTest/ComputerClub/event.cpp

CMakeFiles/ComputerClub.dir/event.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ComputerClub.dir/event.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nekoie/YadroTest/ComputerClub/event.cpp > CMakeFiles/ComputerClub.dir/event.cpp.i

CMakeFiles/ComputerClub.dir/event.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ComputerClub.dir/event.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nekoie/YadroTest/ComputerClub/event.cpp -o CMakeFiles/ComputerClub.dir/event.cpp.s

CMakeFiles/ComputerClub.dir/main.cpp.o: CMakeFiles/ComputerClub.dir/flags.make
CMakeFiles/ComputerClub.dir/main.cpp.o: /home/nekoie/YadroTest/ComputerClub/main.cpp
CMakeFiles/ComputerClub.dir/main.cpp.o: CMakeFiles/ComputerClub.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/nekoie/YadroTest/ComputerClub/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ComputerClub.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ComputerClub.dir/main.cpp.o -MF CMakeFiles/ComputerClub.dir/main.cpp.o.d -o CMakeFiles/ComputerClub.dir/main.cpp.o -c /home/nekoie/YadroTest/ComputerClub/main.cpp

CMakeFiles/ComputerClub.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ComputerClub.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nekoie/YadroTest/ComputerClub/main.cpp > CMakeFiles/ComputerClub.dir/main.cpp.i

CMakeFiles/ComputerClub.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ComputerClub.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nekoie/YadroTest/ComputerClub/main.cpp -o CMakeFiles/ComputerClub.dir/main.cpp.s

CMakeFiles/ComputerClub.dir/time.cpp.o: CMakeFiles/ComputerClub.dir/flags.make
CMakeFiles/ComputerClub.dir/time.cpp.o: /home/nekoie/YadroTest/ComputerClub/time.cpp
CMakeFiles/ComputerClub.dir/time.cpp.o: CMakeFiles/ComputerClub.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/nekoie/YadroTest/ComputerClub/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/ComputerClub.dir/time.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ComputerClub.dir/time.cpp.o -MF CMakeFiles/ComputerClub.dir/time.cpp.o.d -o CMakeFiles/ComputerClub.dir/time.cpp.o -c /home/nekoie/YadroTest/ComputerClub/time.cpp

CMakeFiles/ComputerClub.dir/time.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ComputerClub.dir/time.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nekoie/YadroTest/ComputerClub/time.cpp > CMakeFiles/ComputerClub.dir/time.cpp.i

CMakeFiles/ComputerClub.dir/time.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ComputerClub.dir/time.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nekoie/YadroTest/ComputerClub/time.cpp -o CMakeFiles/ComputerClub.dir/time.cpp.s

# Object files for target ComputerClub
ComputerClub_OBJECTS = \
"CMakeFiles/ComputerClub.dir/computerClub.cpp.o" \
"CMakeFiles/ComputerClub.dir/event.cpp.o" \
"CMakeFiles/ComputerClub.dir/main.cpp.o" \
"CMakeFiles/ComputerClub.dir/time.cpp.o"

# External object files for target ComputerClub
ComputerClub_EXTERNAL_OBJECTS =

ComputerClub: CMakeFiles/ComputerClub.dir/computerClub.cpp.o
ComputerClub: CMakeFiles/ComputerClub.dir/event.cpp.o
ComputerClub: CMakeFiles/ComputerClub.dir/main.cpp.o
ComputerClub: CMakeFiles/ComputerClub.dir/time.cpp.o
ComputerClub: CMakeFiles/ComputerClub.dir/build.make
ComputerClub: CMakeFiles/ComputerClub.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/nekoie/YadroTest/ComputerClub/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable ComputerClub"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ComputerClub.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ComputerClub.dir/build: ComputerClub
.PHONY : CMakeFiles/ComputerClub.dir/build

CMakeFiles/ComputerClub.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ComputerClub.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ComputerClub.dir/clean

CMakeFiles/ComputerClub.dir/depend:
	cd /home/nekoie/YadroTest/ComputerClub/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nekoie/YadroTest/ComputerClub /home/nekoie/YadroTest/ComputerClub /home/nekoie/YadroTest/ComputerClub/build /home/nekoie/YadroTest/ComputerClub/build /home/nekoie/YadroTest/ComputerClub/build/CMakeFiles/ComputerClub.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/ComputerClub.dir/depend

