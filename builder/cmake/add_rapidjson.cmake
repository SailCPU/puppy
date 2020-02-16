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
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

if (TARGET rapidjson)
    set(rapidjson_INCLUDE_DIRS "${OSS_PREFIX_PATH}/include")
    set(rapidjson_LIBRARIES "")
    set(rapidjson_FOUND ON)
    return()
endif ()
find_package(rapidjson QUIET)
if (${rapidjson_FOUND})
    message(STATUS "FOUND rapidjson ${rapidjson_LIBRARIES} ${rapidjson_INCLUDE_DIRS}")
else()
    include(ExternalProject)
    ExternalProject_Add(
            rapidjson
            GIT_REPOSITORY "https://gitee.com/qq2820/rapidjson.git"
            GIT_TAG "v1.1.0"
            GIT_SUBMODULES ""
            UPDATE_COMMAND ""
            PATCH_COMMAND ""

            SOURCE_DIR "${OSS_SRC_PATH}/rapidjson"
            CMAKE_ARGS -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${OSS_PREFIX_PATH} -DBUILD_UNIT_TESTS=OFF -DRAPIDJSON_BUILD_EXAMPLES=OFF

            TEST_COMMAND ""
    )
    set(rapidjson_INCLUDE_DIRS "${OSS_PREFIX_PATH}/include")
    set(rapidjson_LIBRARIES "")
endif ()

include_directories(${rapidjson_INCLUDE_DIRS})