
if(NOT "/home/luxcium/src/Redis-ImageScout/phash/src/phash-stamp/phash-gitinfo.txt" IS_NEWER_THAN "/home/luxcium/src/Redis-ImageScout/phash/src/phash-stamp/phash-gitclone-lastrun.txt")
  message(STATUS "Avoiding repeated git clone, stamp file is up to date: '/home/luxcium/src/Redis-ImageScout/phash/src/phash-stamp/phash-gitclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E rm -rf "/home/luxcium/src/Redis-ImageScout/phash/src/phash"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/home/luxcium/src/Redis-ImageScout/phash/src/phash'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/bin/git"  clone --no-checkout --config "advice.detachedHead=false" "https://github.com/starkdg/phash.git" "phash"
    WORKING_DIRECTORY "/home/luxcium/src/Redis-ImageScout/phash/src"
    RESULT_VARIABLE error_code
    )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once:
          ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/starkdg/phash.git'")
endif()

execute_process(
  COMMAND "/usr/bin/git"  checkout master --
  WORKING_DIRECTORY "/home/luxcium/src/Redis-ImageScout/phash/src/phash"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: 'master'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "/usr/bin/git"  submodule update --recursive --init 
    WORKING_DIRECTORY "/home/luxcium/src/Redis-ImageScout/phash/src/phash"
    RESULT_VARIABLE error_code
    )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/home/luxcium/src/Redis-ImageScout/phash/src/phash'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "/home/luxcium/src/Redis-ImageScout/phash/src/phash-stamp/phash-gitinfo.txt"
    "/home/luxcium/src/Redis-ImageScout/phash/src/phash-stamp/phash-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/home/luxcium/src/Redis-ImageScout/phash/src/phash-stamp/phash-gitclone-lastrun.txt'")
endif()

