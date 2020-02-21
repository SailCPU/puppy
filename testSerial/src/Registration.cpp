/*Copyright (c) 2020 - 2022 xuzhenhai <282052309@qq.com>

This file is part of puppy builder
   License: MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the "Software"),
to deal in the Software without restriction, including without limitation
the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
 */
#include "rttr/registration.h"
#include "DataObject.h"

RTTR_REGISTRATION {
    rttr::registration::class_<DataObject>("DataObject")
            .

                    constructor<>()(
                    rttr::policy::ctor::as_object
            )

            .property("age", &DataObject::age)
            .property("ps", &DataObject::ps)
            .property("strs", &DataObject::strs)
            .property("ints", &DataObject::ints)
            .property("bean", &DataObject::bean)
            .property("rs", &DataObject::rs)
            .property("map1", &DataObject::map1)
            .property("map2", &DataObject::map2)
            .property("map3", &DataObject::map3)
            .property("map4", &DataObject::map4)
            .property("name", &DataObject::name);

    rttr::registration::class_<Bean>("Bean")
            .

                    constructor<>()(
                    rttr::policy::ctor::as_object
            )
            .property("a", &Bean::a)
            .property("b", &Bean::b)
            .property("c", &Bean::c)
            .property("d", &Bean::d)
            .property("result", &Bean::name);
}