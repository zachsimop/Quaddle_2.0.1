# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.19

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2021.1.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2021.1.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\zachs\Documents\Lab\Quaddle_2.0.1\ObjectTableGenerator

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\zachs\Documents\Lab\Quaddle_2.0.1\ObjectTableGenerator\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ObjectTableGenerator.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ObjectTableGenerator.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ObjectTableGenerator.dir/flags.make

CMakeFiles/ObjectTableGenerator.dir/main.cpp.obj: CMakeFiles/ObjectTableGenerator.dir/flags.make
CMakeFiles/ObjectTableGenerator.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\zachs\Documents\Lab\Quaddle_2.0.1\ObjectTableGenerator\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ObjectTableGenerator.dir/main.cpp.obj"
	C:\msys64\mingw64\bin\clang++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\ObjectTableGenerator.dir\main.cpp.obj -c C:\Users\zachs\Documents\Lab\Quaddle_2.0.1\ObjectTableGenerator\main.cpp

CMakeFiles/ObjectTableGenerator.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ObjectTableGenerator.dir/main.cpp.i"
	C:\msys64\mingw64\bin\clang++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\zachs\Documents\Lab\Quaddle_2.0.1\ObjectTableGenerator\main.cpp > CMakeFiles\ObjectTableGenerator.dir\main.cpp.i

CMakeFiles/ObjectTableGenerator.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ObjectTableGenerator.dir/main.cpp.s"
	C:\msys64\mingw64\bin\clang++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\zachs\Documents\Lab\Quaddle_2.0.1\ObjectTableGenerator\main.cpp -o CMakeFiles\ObjectTableGenerator.dir\main.cpp.s

CMakeFiles/ObjectTableGenerator.dir/functions.cpp.obj: CMakeFiles/ObjectTableGenerator.dir/flags.make
CMakeFiles/ObjectTableGenerator.dir/functions.cpp.obj: ../functions.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\zachs\Documents\Lab\Quaddle_2.0.1\ObjectTableGenerator\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ObjectTableGenerator.dir/functions.cpp.obj"
	C:\msys64\mingw64\bin\clang++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\ObjectTableGenerator.dir\functions.cpp.obj -c C:\Users\zachs\Documents\Lab\Quaddle_2.0.1\ObjectTableGenerator\functions.cpp

CMakeFiles/ObjectTableGenerator.dir/functions.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ObjectTableGenerator.dir/functions.cpp.i"
	C:\msys64\mingw64\bin\clang++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\zachs\Documents\Lab\Quaddle_2.0.1\ObjectTableGenerator\functions.cpp > CMakeFiles\ObjectTableGenerator.dir\functions.cpp.i

CMakeFiles/ObjectTableGenerator.dir/functions.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ObjectTableGenerator.dir/functions.cpp.s"
	C:\msys64\mingw64\bin\clang++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\zachs\Documents\Lab\Quaddle_2.0.1\ObjectTableGenerator\functions.cpp -o CMakeFiles\ObjectTableGenerator.dir\functions.cpp.s

# Object files for target ObjectTableGenerator
ObjectTableGenerator_OBJECTS = \
"CMakeFiles/ObjectTableGenerator.dir/main.cpp.obj" \
"CMakeFiles/ObjectTableGenerator.dir/functions.cpp.obj"

# External object files for target ObjectTableGenerator
ObjectTableGenerator_EXTERNAL_OBJECTS =

../ObjectTableGenerator.exe: CMakeFiles/ObjectTableGenerator.dir/main.cpp.obj
../ObjectTableGenerator.exe: CMakeFiles/ObjectTableGenerator.dir/functions.cpp.obj
../ObjectTableGenerator.exe: CMakeFiles/ObjectTableGenerator.dir/build.make
../ObjectTableGenerator.exe: CMakeFiles/ObjectTableGenerator.dir/linklibs.rsp
../ObjectTableGenerator.exe: CMakeFiles/ObjectTableGenerator.dir/objects1.rsp
../ObjectTableGenerator.exe: CMakeFiles/ObjectTableGenerator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\zachs\Documents\Lab\Quaddle_2.0.1\ObjectTableGenerator\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ..\ObjectTableGenerator.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\ObjectTableGenerator.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ObjectTableGenerator.dir/build: ../ObjectTableGenerator.exe

.PHONY : CMakeFiles/ObjectTableGenerator.dir/build

CMakeFiles/ObjectTableGenerator.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\ObjectTableGenerator.dir\cmake_clean.cmake
.PHONY : CMakeFiles/ObjectTableGenerator.dir/clean

CMakeFiles/ObjectTableGenerator.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\zachs\Documents\Lab\Quaddle_2.0.1\ObjectTableGenerator C:\Users\zachs\Documents\Lab\Quaddle_2.0.1\ObjectTableGenerator C:\Users\zachs\Documents\Lab\Quaddle_2.0.1\ObjectTableGenerator\cmake-build-debug C:\Users\zachs\Documents\Lab\Quaddle_2.0.1\ObjectTableGenerator\cmake-build-debug C:\Users\zachs\Documents\Lab\Quaddle_2.0.1\ObjectTableGenerator\cmake-build-debug\CMakeFiles\ObjectTableGenerator.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ObjectTableGenerator.dir/depend

