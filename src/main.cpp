//
// Project: VSConsoleAppTemplate
// Date:    YYYY-MM-DD
// Author:  Name <login[]example.com>
//


#if defined(_WIN32) && defined(_DEBUG)
#define _CRTDBG_MAPALLOC
#include <stdlib.h>
#include <crtdbg.h>
#endif

#include <iostream>

#include "defs.h"


const char USAGE[] =
{
    "VSConsoleAppTemplate v"VERSION"\n"
    "About.\n"
    "Usage: VSConsoleAppTemplate\n"
};


int _tmain(int argc, tchar *argv[])
{

    if (argc != TODO)
    {
        std::cout << USAGE;
        return EXIT_FAILURE;
    }
    else
    {
    	// Code
    }

#if defined(_WIN32) && defined(_DEBUG)
    _CrtDumpMemoryLeaks();
#endif
    return EXIT_SUCCESS;
}
