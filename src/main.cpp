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

#include <windows.h>

#include "defs.h"

const char USAGE[] =
{
    "VSConsoleAppTemplate v1.0\n"
    "About.\n"
    "Usage: VSConsoleAppTemplate\n"
};

int _tmain(int argc, tchar *argv[])
{

    // Code

#if defined(_WIN32) && defined(_DEBUG)
    _CrtDumpMemoryLeaks();
#endif
    return EXIT_SUCCESS;
}
