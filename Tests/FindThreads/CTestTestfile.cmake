# CMake generated Testfile for 
# Source directory: /workspaces/CMake/Tests/FindThreads
# Build directory: /workspaces/CMake/Tests/FindThreads
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[FindThreads.C-only]=] "/workspaces/CMake/bin/ctest" "--build-and-test" "/workspaces/CMake/Tests/FindThreads/C-only" "/workspaces/CMake/Tests/FindThreads/C-only" "--build-generator" "Unix Makefiles" "--build-makeprogram" "/usr/bin/make" "--build-project" "FindThreads_C-only" "--build-options" "--test-command" "/workspaces/CMake/bin/ctest" "-V")
set_tests_properties([=[FindThreads.C-only]=] PROPERTIES  _BACKTRACE_TRIPLES "/workspaces/CMake/Tests/FindThreads/CMakeLists.txt;2;add_test;/workspaces/CMake/Tests/FindThreads/CMakeLists.txt;0;")
add_test([=[FindThreads.CXX-only]=] "/workspaces/CMake/bin/ctest" "--build-and-test" "/workspaces/CMake/Tests/FindThreads/CXX-only" "/workspaces/CMake/Tests/FindThreads/CXX-only" "--build-generator" "Unix Makefiles" "--build-makeprogram" "/usr/bin/make" "--build-project" "FindThreads_CXX-only" "--build-options" "--test-command" "/workspaces/CMake/bin/ctest" "-V")
set_tests_properties([=[FindThreads.CXX-only]=] PROPERTIES  _BACKTRACE_TRIPLES "/workspaces/CMake/Tests/FindThreads/CMakeLists.txt;2;add_test;/workspaces/CMake/Tests/FindThreads/CMakeLists.txt;0;")
