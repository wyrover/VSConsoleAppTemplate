//
//  Project: REPLACE_APP_NAME
//  Date:    YYYY-MM-DD
//  Author:  REPLACE_AUTHOR <REPLACE_EMAIL>
//


#pragma once


#define VERSION "0.1.0a"

#define MAIN_ABORT(msg) { std::cerr << "Error: " << msg << "." << std::endl; return EXIT_FAILURE; }
#define PRINT_ERROR(msg) std::cerr << "Error: " << msg << "." << std::endl;
#define ARRAY_SIZE(arr) (sizeof(arr) / sizeof(arr[0]))

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
    
    #ifndef _tcscmp
    #define _tcscmp wcscmp
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
    
    #ifndef _tcscmp
    #define _tcscmp strcmp
    #endif
#endif
