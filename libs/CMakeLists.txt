

add_subdirectory(sst/sst-cmake)
set(CMAKE_MODULE_PATH "${CMAKE_MODULE_PATH}" PARENT_SCOPE)

# Dependencies
CPMAddPackage("gh:/juce-framework/JUCE#8.0.11")
CPMAddPackage("gh:/free-audio/clap-juce-extensions#main")
find_package(fmt)
#CPMAddPackage("gh:fmtlib/fmt#12.1.0")
# add_subdirectory(JUCE EXCLUDE_FROM_ALL)
# add_subdirectory(fmt EXCLUDE_FROM_ALL)

add_library(simde INTERFACE)
target_include_directories(simde INTERFACE simde)

add_subdirectory(sst/sst-cpputils EXCLUDE_FROM_ALL)
add_subdirectory(sst/sst-basic-blocks EXCLUDE_FROM_ALL)
add_subdirectory(sst/sst-plugininfra EXCLUDE_FROM_ALL)

add_subdirectory(melatonin_inspector EXCLUDE_FROM_ALL)
# add_subdirectory(clap-juce-extensions EXCLUDE_FROM_ALL)

add_library(mts-client STATIC MTS-ESP/Client/libMTSClient.cpp)
target_include_directories(mts-client PUBLIC MTS-ESP/Client)
