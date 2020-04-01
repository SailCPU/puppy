# Copyright (c) 2020 - 2022 xuzhenhai <282052309@qq.com>
#
# This file is part of puppy builder
#    License: MIT License
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the "Software"),
# to deal in the Software without restriction, including without limitation
# the rights to use, copy, modify, merge, publish, distribute, sublicense,
# and/or sell copies of the Software, and to permit persons to whom the
# Software is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN hACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

unset(nlopt_LIBRARIES)

find_library(nlopt_LIBRARIES
        NAMES
        nlopt
        HINTS
        ${OSS_PREFIX_LIB_PATH}
        )
find_path(nlopt_INCLUDE_DIRS
        NAMES
        nlopt.hpp
        HINTS
        ${OSS_PREFIX_INC_PATH}
        )
message(STATUS "${nlopt_LIBRARIES} ")
message(STATUS "${nlopt_INCLUDE_DIRS} ")
if (${nlopt_LIBRARIES} STREQUAL "nlopt_LIBRARIES-NOTFOUND" OR ${nlopt_INCLUDE_DIRS} STREQUAL "nlopt_INCLUDE_DIRS-NOTFOUND")
    set(nlopt_FOUND OFF)
    set(nlopt_LIBRARIES)
    set(nlopt_INCLUDE_DIR)
else ()
    set(nlopt_FOUND ON)
endif ()