# avrdude
#
# @brief 
# 
# @author Ivan Novoselov, jedi.orden@gmail.com
# 
# @date May 19, 2022
# 
# @details 
# 
# @copyright MIT License
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in 
# all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.


if(NOT avrdude-root)
    message(WARNING "avrdude-root directory not specified")
elseif(NOT EXISTS ${avrdude-root})
    message(WARNING "avrdude-root directory does not exist")
endif()

if(${CMAKE_HOST_SYSTEM_NAME} STREQUAL "Windows")
    set(exec_end ".exe")
elseif(${CMAKE_HOST_SYSTEM_NAME} STREQUAL "Linux")
    set(exec_end "")
else()
    message("${CMAKE_HOST_SYSTEM_NAME}" not supported yet)
endif()


set(CMAKE_AVRDUDE "${avrdude-root}/avrdude${exec_end}")
set(avrdude-conf  "${avrdude-root}/avrdude.conf")
set(avrdude-pdb   "${avrdude-root}/avrdude.pdb")

message("Checking ${avrdude-root} for avrdude files...")
if(NOT EXISTS "${CMAKE_AVRDUDE}")
    message(WARNING "avrdude executable absent")
elseif(NOT EXISTS "${avrdude-conf}")
    message(WARNING "avrdude.conf absent")
elseif(NOT EXISTS "${avrdude-pdb}")
    message(WARNING "avrdude.pdb absent")
else()
    message("All avrdude files are present")
    message("")
endif()

unset(avrdude-conf)
unset(avrdude-pdb)
unset(avrdude)
