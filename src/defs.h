//
// Project: App
// Date:    YYYY-MM-DD
// Author:  Name <login[]example.com>
//

#pragma once

#define VERSION "0.1"

#define MAIN_ABORT(msg) { std::cerr << msg << std::endl; return 1; }

#ifdef _UNICODE
    #define tstring std::wstring
  
    #ifndef _T
    #define _T(text) L##text
    #endif

    #ifndef tchar
    #define tchar wchar_t
    #endif

    #ifndef _tmain
    #define _tmain wmain
    #endif
#else
    #define tstring std::string

    #ifndef _T
    #define _T(text) text
    #endif

    #ifndef tchar
    #define tchar char
    #endif

    #ifndef _tmain
    #define _tmain main
    #endif
#endif
