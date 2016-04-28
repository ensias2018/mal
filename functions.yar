rule Accept: This function is used to listen for incoming connections. This function indicates that the program will listen for incoming connections on a socket. It is mostly used by malware to communicate with their Command and Communication server.
{
strings:
	$a = "Accept"
condition:
	any of them
}
rule AdjustTokenPrivileges: This function is used to enable or disable specific access privileges. In a process injection attack, this function is used by malware to gain additional permissions.
{
strings:
	$a = "AdjustTokenPrivileges"
condition:
	any of them
}
rule AttachThreadInput: This function attaches the input processing from one thread to another so that the second thread receives input events such as keyboard and mouse events. Keyloggers and other spyware use this function.
{
strings:
	$a = "AttachThreadInput"
condition:
	any of them
}
rule Bind: This function is used to associate a local address to a socket in order to listen for incoming connections.
{
strings:
	$a = "Bind"
condition:
	any of them
}
rule BitBlt: This function is used to copy graphic data from one device to another. Spyware sometimes uses this function to capture screenshots.
{
strings:
	$a = "BitBlt"
condition:
	any of them
}
rule CertOpenSystemStore: This function is used to access the certificates stored on the local system.
{
strings:
	$a = "CertOpenSystemStore"
condition:
	any of them
}
rule Connect: This function is used to connect to a remote socket. Malware often uses low-level functionality to connect to a command-and-control server. It is mostly used by malware to communicate with their Command and Communication server.
{
strings:
	$a = "Connect"
condition:
	any of them
}
rule ConnectNamedPipe: This function is used to create a server pipe for interprocess communication that will wait for a client pipe to connect. Backdoors and reverse shells sometimes use ConnectNamedPipe to simplify connectivity to a command-and-control server.
{
strings:
	$a = "ConnectNamedPipe"
condition:
	any of them
}
rule ControlService: This function is used to start, stop, modify, or send a signal to a running service. If malware is using its own malicious service, code needs to be analyzed that implements the service in order to determine the purpose of the call.
{
strings:
	$a = "ControlService"
condition:
	any of them
}
rule CreateFile: Creates a new file or opens an existing file.
{
strings:
	$a = "CreateFile"
condition:
	any of them
}
rule CreateFileMapping: This function is used to create a handle to a file mapping that loads a file into memory and makes it accessible via memory addresses. Launchers, loaders, and injectors use this function to read and modify PE files.
{
strings:
	$a = "CreateFileMapping"
condition:
	any of them
}
rule CreateMutex: This function creates a mutual exclusion object that can be used by malware to ensure that only a single instance of the malware is running on a system at any given time. Malware often uses fixed names for mutexes, which can be good host-based indicators to detect additional installations of the malware.
{
strings:
	$a = "CreateMutex"
condition:
	any of them
}
rule CreateProcess: This function creates and launches a new process. If malware creates a new process, new process needs to be analyzed as well.
{
strings:
	$a = "CreateProcess"
condition:
	any of them
}
rule CreateRemoteThread: This function is used to start a thread in a remote process. Launchers and stealth malware use CreateRemoteThread to inject code into a different process.
{
strings:
	$a = "CreateRemoteThread"
condition:
	any of them
}
rule CreateService: This function is used to create a service that can be started at boot time. Malware uses CreateService for persistence, stealth, or to load kernel drivers.
{
strings:
	$a = "CreateService"
condition:
	any of them
}
rule CreateToolhelp32Snapshot: This function is used to create a snapshot of processes, heaps, threads, and modules. Malware often uses this function as part of code that iterates through processes or threads.
{
strings:
	$a = "CreateToolhelp32Snapshot"
condition:
	any of them
}
rule CryptAcquireContext: This function is often the first function used by malware to initialize the use of Windows encryption.
{
strings:
	$a = "CryptAcquireContext"
condition:
	any of them
}
rule DeviceIoControl: This function sends a control message from user space to a device driver. Kernel malware that needs to pass information between user space and kernel space often use this function.
{
strings:
	$a = "DeviceIoControl"
condition:
	any of them
}
rule EnableExecuteProtectionSupport: This function is used to modify the Data Execution Protection (DEP) settings of the host, making it more susceptible to attack.
{
strings:
	$a = "EnableExecuteProtectionSupport"
condition:
	any of them
}
rule EnumProcesses: This function is used to enumerate through running processes on the system. Malware often enumerates through processes to find a process into which to inject.
{
strings:
	$a = "EnumProcesses"
condition:
	any of them
}
rule EnumProcessModules: This function is used to enumerate the loaded modules (executables and DLLs) for a given process. Malware enumerates through modules when doing an injection.
{
strings:
	$a = "EnumProcessModules"
condition:
	any of them
}
rule FindFirstFile-FindNextFile: This function is used to search through a directory and enumerate the file system.
{
strings:
	$a = "FindFirstFile"
	$b = "FindNextFile"
condition:
	any of them
}
rule FindResource: This function is used to find a resource in an executable or loaded DLL. Malware sometimes uses resources to store strings, configuration information, or other malicious files. If this function is used, then check for an .rsrc section in the malware’s PE header.
{
strings:
	$a = "FindResource"
condition:
	any of them
}
rule FindWindow: This function is used to search for an open window on the desktop. Sometimes this function is used as an anti-debugging technique to search for OllyDbg windows.
{
strings:
	$a = "FindWindow"
condition:
	any of them
}
rule FtpPutFile: This function is used to upload a file to remote FTP server.
{
strings:
	$a = "FtpPutFile"
condition:
	any of them
}
rule GetAdaptersInfo: This function is used to obtain information about the network adapters on the system. Backdoors sometimes call GetAdaptersInfo in the information-gathering phase to gather information about infected machines. In some cases, it’s used to gather MAC addresses to check for VMware as part of anti-virtual machine techniques.
{
strings:
	$a = "GetAdaptersInfo"
condition:
	any of them
}
rule GetAsyncKeyState: This function is used to determine whether a particular key is being pressed. Malware sometimes uses this function to implement a keylogger.
{
strings:
	$a = "GetAsyncKeyState"
condition:
	any of them
}
rule GetDC: This function returns a handle to a device context for a window or the whole screen. Spyware that takes screen captures often uses this function.
{
strings:
	$a = "GetDC"
condition:
	any of them
}
rule GetForegroundWindow: This function returns a handle to the window currently in the foreground of the desktop. Keyloggers commonly use this function to determine in which window the user is entering his keystrokes.
{
strings:
	$a = "GetForegroundWindow"
condition:
	any of them
}
rule Gethostbyname: This function is used to perform a DNS lookup on a particular hostname prior to making an IP connection to a remote host. Hostnames that serve as command and- control servers often make good network-based signatures.
{
strings:
	$a = "Gethostbyname"
condition:
	any of them
}
rule Gethostname: This function is used to retrieve the hostname of the computer. Backdoors sometimes use gethostname in information gathering phase of the victim machine.
{
strings:
	$a = "Gethostname"
condition:
	any of them
}
rule GetKeyState: This function is used by keyloggers to obtain the status of a particular key on the keyboard.
{
strings:
	$a = "GetKeyState"
condition:
	any of them
}
rule GetModuleFilename: This function returns the filename of a module that is loaded in the current process. Malware can use this function to modify or copy files in the currently running process.
{
strings:
	$a = "GetModuleFilename"
condition:
	any of them
}
rule GetModuleHandle: This function is used to obtain a handle to an already loaded module. Malware may use GetModuleHandle to locate and modify code in a loaded module or to search for a good location to inject code.
{
strings:
	$a = "GetModuleHandle"
condition:
	any of them
}
rule GetProcAddress: This function is used to retrieve the address of a function in a DLL loaded into memory. This is used to import functions from other DLLs in addition to the functions imported in the PE file header.
{
strings:
	$a = "GetProcAddress"
condition:
	any of them
}
rule GetStartupInfo: This function is used to retrieve a structure containing details about how the current process was configured to run, such as where the standard handles are directed.
{
strings:
	$a = "GetStartupInfo"
condition:
	any of them
}
rule GetSystemDefaultLangId: This function returns the default language settings for the system. These are used by malwares by specifically designed for region-based attacks.
{
strings:
	$a = "GetSystemDefaultLangId"
condition:
	any of them
}
rule GetTempPath: This function returns the temporary file path. If malware call this function, check whether it reads or writes any files in the temporary file path.
{
strings:
	$a = "GetTempPath"
condition:
	any of them
}
rule GetThreadContext: This function returns the context structure of a given thread. The context for a thread stores all the thread information, such as the register values and current state.
{
strings:
	$a = "GetThreadContext"
condition:
	any of them
}
rule GetVersionEx: This function returns information about which version of Windows is currently running. This can be used as part of a victim survey, or to select between different offsets for undocumented structures that have changed between different versions of Windows.
{
strings:
	$a = "GetVersionEx"
condition:
	any of them
}
rule GetWindowsDirectory: This function returns the file path to the Windows directory (usually C:\Windows). Malware sometimes uses this call to determine into which directory to install additional malicious programs.
{
strings:
	$a = "GetWindowsDirectory"
condition:
	any of them
}
rule inet_addr: This function converts an IP address string like 127.0.0.1 so that it can be used by functions such as connect. The string specified can sometimes be used as a network-based signature.
{
strings:
	$a = "inet_addr"
condition:
	any of them
}
rule InternetOpen: This function initializes the high-level Internet access functions from WinINet, such as InternetOpenUrl and InternetReadFile. Searching for InternetOpen is a good way to find the start of Internet access functionality. One of the parameters to InternetOpen is the User-Agent, which can sometimes make a good network-based signature.
{
strings:
	$a = "InternetOpen"
condition:
	any of them
}
rule InternetOpenUrl: This function opens a specific URL for a connection using FTP, HTTP, or HTTPS.URLs, if fixed, can often be good network-based signatures.
{
strings:
	$a = "InternetOpenUrl"
condition:
	any of them
}
rule InternetReadFile: This function reads data from a previously opened URL.
{
strings:
	$a = "InternetReadFile"
condition:
	any of them
}
rule InternetWriteFile: This function writes data to a previously opened URL.
{
strings:
	$a = "InternetWriteFile"
condition:
	any of them
}
rule IsNTAdmin: This function checks if the user has administrator privileges.
{
strings:
	$a = "IsNTAdmin"
condition:
	any of them
}
rule IsWoW64Process: This function is used by a 32-bit process to determine if it is running on a 64-bit operating system.
{
strings:
	$a = "IsWoW64Process"
condition:
	any of them
}
rule LdrLoadDll: This is a low-level function to load a DLL into a process, just like LoadLibrary. Normal programs use LoadLibrary, and the presence of this import may indicate a program that is attempting to be stealthy.
{
strings:
	$a = "LdrLoadDll"
condition:
	any of them
}
rule LoadResource: This function loads a resource from a PE file into memory. Malware sometimes uses resources to store strings, configuration information, or other malicious files.
{
strings:
	$a = "LoadResource"
condition:
	any of them
}
rule LsaEnumerateLogonSessions: This function is used to enumerate through logon sessions on the current system, which can be used as part of a credential stealer.
{
strings:
	$a = "LsaEnumerateLogonSessions"
condition:
	any of them
}
rule MapViewOfFile: This function is used to map a file into memory and makes the contents of the file accessible via memory addresses. Launchers, loaders, and injectors use this function to read and modify PE files. By using MapViewOfFile, the malware can avoid using WriteFile to modify the contents of a file.
{
strings:
	$a = "MapViewOfFile"
condition:
	any of them
}
rule MapVirtualKey: This function is used to translate a virtual-key code into a character value. It is often used by keylogging malware.
{
strings:
	$a = "MapVirtualKey"
condition:
	any of them
}
rule Module32First-Module32Next: This function is used to enumerate through modules loaded into a process. Injectors use this function to determine where to inject code.
{
strings:
	$a = "Module32First"
	$b = "Module32Next"
condition:
	any of them
}
rule NetScheduleJobAdd: This function submits a request for a program to be run at a specified date and time. Malware can use NetScheduleJobAdd to run a different program. This is an important indicator to see the program that is scheduled to run at future time.
{
strings:
	$a = "NetScheduleJobAdd"
condition:
	any of them
}
rule NetShareEnum: This function is used to enumerate network shares.
{
strings:
	$a = "NetShareEnum"
condition:
	any of them
}
rule NtQueryDirectoryFile: This function returns information about files in a directory. Rootkits commonly hook this function in order to hide files.
{
strings:
	$a = "NtQueryDirectoryFile"
condition:
	any of them
}
rule NtQueryInformationProcess: This function is used to return various information about a specified process. This function is sometimes used as an anti-debugging technique because it can return the same information as CheckRemoteDebuggerPresent.
{
strings:
	$a = "NtQueryInformationProcess"
condition:
	any of them
}
rule NtSetInformationProcess: This function is used to change the privilege level of a program or to bypass Data Execution Prevention (DEP).
{
strings:
	$a = "NtSetInformationProcess"
condition:
	any of them
}
rule OpenMutex: This function opens a handle to a mutual exclusion object that can be used by malware to ensure that only a single instance of malware is running on a system at any given time. Malware often uses fixed names for mutexes, which can be good host-based indicators.
{
strings:
	$a = "OpenMutex"
condition:
	any of them
}
rule OpenProcess: This function is used to open a handle to another process running on the system. This handle can be used to read and write to the other process memory or to inject code into the other process.
{
strings:
	$a = "OpenProcess"
condition:
	any of them
}
rule OutputDebugString: This function is used to output a string to a debugger if one is attached. This can be used as an anti-debugging technique.
{
strings:
	$a = "OutputDebugString"
condition:
	any of them
}
rule PeekNamedPipe: This function is used to copy data from a named pipe without removing data from the pipe. This function is popular with reverse shells.
{
strings:
	$a = "PeekNamedPipe"
condition:
	any of them
}
rule Process32First-Process32Next: This function is used to begin enumerating processes from a previous call to CreateToolhelp32Snapshot. Malware often enumerates through processes to find a process into which to inject.
{
strings:
	$a = "Process32First"
	$b = "Process32Next"
condition:
	any of them
}
rule QueueUserAPC: This function is used to execute code for a different thread. Malware sometimes uses QueueUserAPC to inject code into another process.
{
strings:
	$a = "QueueUserAPC"
condition:
	any of them
}
rule ReadProcessMemory: This function is used to read the memory of a remote process.
{
strings:
	$a = "ReadProcessMemory"
condition:
	any of them
}
rule Recv: This function is used to receive data from a remote machine. Malware often uses this function to receive data from a remote command-and-control server.
{
strings:
	$a = "Recv"
condition:
	any of them
}
rule RegisterHotKey: This function is used to register a handler to be notified anytime a user enters a particular key combination (like CTRL-ALT-J), regardless of which window is active when the user presses the key combination. This function is sometimes used by spyware that remains hidden from the user until the key combination is pressed.
{
strings:
	$a = "RegisterHotKey"
condition:
	any of them
}
rule RegOpenKey: This function is used to open a handle to a registry key for reading and editing. Registry keys are sometimes written as a way for software to achieve persistence on a host. The registry also contains a whole host of operating system and application setting information.
{
strings:
	$a = "RegOpenKey"
condition:
	any of them
}
rule ResumeThread: This function is used to resume a previously suspended thread. ResumeThread is used as part of several injection techniques.
{
strings:
	$a = "ResumeThread"
condition:
	any of them
}
rule RtlCreateRegistryKey: This function is used to create a registry from kernel-mode code.
{
strings:
	$a = "RtlCreateRegistryKey"
condition:
	any of them
}
rule RtlWriteRegistryValue: This function is used to write a value to the registry from kernel-mode code.
{
strings:
	$a = "RtlWriteRegistryValue"
condition:
	any of them
}
rule SamIConnect: This function is used to connect to the Security Account Manager (SAM) in order to make future calls that access credential information. Hash-dumping programs access the SAM database in order to retrieve the hash of users’ login passwords.
{
strings:
	$a = "SamIConnect"
condition:
	any of them
}
rule SamIGetPrivateData: This function is used to query the private information about a specific user from the Security Account Manager (SAM) database. Hash-dumping programs access the SAM database in order to retrieve the hash of users’ login passwords.
{
strings:
	$a = "SamIGetPrivateData"
condition:
	any of them
}
rule SamQueryInformationUse: This function is used to query information about a specific user in the Security Account Manager (SAM) database. Hash-dumping programs access the SAM database in order to retrieve the hash of users’ login passwords.
{
strings:
	$a = "SamQueryInformationUse"
condition:
	any of them
}
rule Send: This function is used to send data to a remote machine. It is often used by malwares to send data to a remote command-and-control server.
{
strings:
	$a = "Send"
condition:
	any of them
}
rule SetFileTime: This function is used to modify the creation, access, or last modified time of a file. Malware often uses this function to conceal malicious activity.
{
strings:
	$a = "SetFileTime"
condition:
	any of them
}
rule SetThreadContext: This function is used to modify the context of a given thread. Some injection techniques use SetThreadContext.
{
strings:
	$a = "SetThreadContext"
condition:
	any of them
}
rule SetWindowsHookEx: This function is used to set a hook function to be called whenever a certain event is called. Commonly used with keyloggers and spyware, this function also provides an easy way to load a DLL into all GUI processes on the system. This function is sometimes added by the compiler.
{
strings:
	$a = "SetWindowsHookEx"
condition:
	any of them
}
rule SfcTerminateWatcherThread: This function is used to disable Windows file protection and modify files that otherwise would be protected.
{
strings:
	$a = "SfcTerminateWatcherThread"
condition:
	any of them
}
rule ShellExecute: This function is used to execute another program.
{
strings:
	$a = "ShellExecute"
condition:
	any of them
}
rule StartServiceCtrlDispatcher: This function is used by a service to connect the main thread of the process to the service control manager. Any process that runs as a service must call this function within 30 seconds of startup. Locating this function in malware will tell that the function should be run as a service.
{
strings:
	$a = "StartServiceCtrlDispatcher"
condition:
	any of them
}
rule SuspendThread: This function is used to suspend a thread so that it stops running. Malware will sometimes suspend a thread in order to modify it by performing code injection.
{
strings:
	$a = "SuspendThread"
condition:
	any of them
}
rule System: This function is used to run another program provided by some C runtime libraries. On Windows, this function serves as a wrapper function to CreateProcess.
{
strings:
	$a = "System"
condition:
	any of them
}
rule Thread32First-Thread32Next: This function is used to iterate through the threads of a process. Injectors use these functions to find an appropriate thread into which to inject.
{
strings:
	$a = "Thread32First"
	$b = "Thread32Next"
condition:
	any of them
}
rule Toolhelp32ReadProcessMemory: This function is used to read the memory of a remote process.
{
strings:
	$a = "Toolhelp32ReadProcessMemory"
condition:
	any of them
}
rule URLDownloadToFile: This function is used to download a file from a web server and save it to disk. This function is popular with downloaders because it implements all the functionality of a downloader in one function call.
{
strings:
	$a = "URLDownloadToFile"
condition:
	any of them
}
rule VirtualAllocEx: This function is a memory-allocation routine that can allocate memory in a remote process. Malware sometimes uses VirtualAllocEx as part of process injection.
{
strings:
	$a = "VirtualAllocEx"
condition:
	any of them
}
rule VirtualProtectEx: This function is used to change the protection on a region of memory. Malware may use this function to change a read-only section of memory to an executable.
{
strings:
	$a = "VirtualProtectEx"
condition:
	any of them
}
rule WideCharToMultiByte: This function is used to convert a Unicode string into an ASCII string.
{
strings:
	$a = "WideCharToMultiByte"
condition:
	any of them
}
rule WinExec: This function is used to execute another program.
{
strings:
	$a = "WinExec"
condition:
	any of them
}
rule WriteProcessMemory: This function is used to write data to a remote process. Malware uses WriteProcessMemory as part of process injection.
{
strings:
	$a = "WriteProcessMemory"
condition:
	any of them
}
rule WSAStartup: This function is used to initialize low-level network functionality. Finding calls to WSAStartup can often be an easy way to locate the start of network related functionality.
{
strings:
	$a = "WSAStartup"
condition:
	any of them
}