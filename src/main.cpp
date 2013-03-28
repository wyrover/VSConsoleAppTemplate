#if defined(_WIN32) && defined(_DEBUG)
#define _CRTDBG_MAPALLOC
#include <stdlib.h>
#include <crtdbg.h>
#endif

#include <windows.h>

const char HELP[] =
{
    "App v1.0\n"
    "About.\n"
    "Usage: app\n"
};

int wmain(int argc, wchar_t *argv[])
{

    // Code

#if defined(_WIN32) && defined(_DEBUG)
    _CrtDumpMemoryLeaks();
#endif
    return EXIT_SUCCESS;
}
