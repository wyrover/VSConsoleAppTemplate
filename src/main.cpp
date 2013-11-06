//
//  Project: REPLACE_APP_NAME
//  Date:    YYYY-MM-DD
//  Author:  REPLACE_AUTHOR <REPLACE_EMAIL>
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
    "REPLACE_APP_NAME v"VERSION"by REPLACE_AUTHOR\n"
    "About.\n"
    "Usage: REPLACE_APP_NAME\n"
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
