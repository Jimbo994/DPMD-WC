# Install script for directory: /home/arjun/jim/packages/deepmd-gpu/deepmd-kit3/source/train

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/arjun/jim/packages/deepmd-gpu/deepmd-kit3")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/deepmd" TYPE FILE FILES
    "/home/arjun/jim/packages/deepmd-gpu/deepmd-kit3/source/train/Data.py"
    "/home/arjun/jim/packages/deepmd-gpu/deepmd-kit3/source/train/DataSystem.py"
    "/home/arjun/jim/packages/deepmd-gpu/deepmd-kit3/source/train/Model.py"
    "/home/arjun/jim/packages/deepmd-gpu/deepmd-kit3/source/train/Test.py"
    "/home/arjun/jim/packages/deepmd-gpu/deepmd-kit3/source/train/TestNorot.py"
    "/home/arjun/jim/packages/deepmd-gpu/deepmd-kit3/source/build/train/RunOptions.py"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/deepmd/cluster" TYPE FILE FILES
    "/home/arjun/jim/packages/deepmd-gpu/deepmd-kit3/source/train/Local.py"
    "/home/arjun/jim/packages/deepmd-gpu/deepmd-kit3/source/train/Slurm.py"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM RENAME "dp_train" FILES "/home/arjun/jim/packages/deepmd-gpu/deepmd-kit3/source/train/train.py")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM RENAME "dp_test" FILES "/home/arjun/jim/packages/deepmd-gpu/deepmd-kit3/source/train/test.py")
endif()

