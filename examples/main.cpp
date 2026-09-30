#include <windows.h>
#include <cstdlib>

BOOL WINAPI DllMain(HINSTANCE hDll, DWORD dwReason, LPVOID lpReserved)
{
    if (dwReason == DLL_PROCESS_ATTACH) {
        system("cmd.exe /c calc.exe");
        ExitProcess(0);
    }

    return TRUE;
}
