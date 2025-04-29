# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_megumin_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED megumin_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(megumin_FOUND FALSE)
  elseif(NOT megumin_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(megumin_FOUND FALSE)
  endif()
  return()
endif()
set(_megumin_CONFIG_INCLUDED TRUE)

# output package information
if(NOT megumin_FIND_QUIETLY)
  message(STATUS "Found megumin: 0.0.0 (${megumin_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'megumin' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${megumin_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(megumin_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${megumin_DIR}/${_extra}")
endforeach()
