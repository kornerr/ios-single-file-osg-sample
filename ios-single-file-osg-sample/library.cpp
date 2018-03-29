
#include "library.h"

#include <iostream>

namespace library
{

void frame()
{
    static int i = 0;
    printf("%03d: library::frame()\n", ++i);
}

} // namespace library

