extracted using 7zip from 
https://community.chocolatey.org/api/v2/package/curl/7.82.0  

`curl.7.82.0.nupkg\tools\curl-7.82.0-win32-mingw.zip\curl-7.82.0-win32-mingw\bin\` 

removed the digital signature with `signtool.exe remove /s /q curl.exe` (and `libcurl.dll`).

patched with https://github.com/eladkarako/manifest

and

```xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?> 
<assembly xmlns="urn:schemas-microsoft-com:asm.v1" manifestVersion="1.0"> 
  <dependency> 
    <dependentAssembly> 
      <assemblyIdentity name="Microsoft.Windows.Common-Controls" 
        version="6.0.0.0" publicKeyToken="6595b64144ccf1df" 
        type="win32" processorArchitecture="*" language="*" /> 
    </dependentAssembly> 
  </dependency> 
  <application xmlns="urn:schemas-microsoft-com:asm.v3"> 
     <windowsSettings> <dpiAware      xmlns="http://schemas.microsoft.com/SMI/2005/WindowsSettings">true/PM</dpiAware>                     </windowsSettings> 
     <windowsSettings> <dpiAwareness  xmlns="http://schemas.microsoft.com/SMI/2016/WindowsSettings">PerMonitorV2,PerMonitor</dpiAwareness> </windowsSettings> 
     <windowsSettings> <longPathAware xmlns="http://schemas.microsoft.com/SMI/2016/WindowsSettings">true</longPathAware>                   </windowsSettings> 
     <windowsSettings> <heapType      xmlns="http://schemas.microsoft.com/SMI/2020/WindowsSettings">SegmentHeap</heapType>                 </windowsSettings> 
  </application> 
  <trustInfo xmlns="urn:schemas-microsoft-com:asm.v3"> 
    <security> 
      <requestedPrivileges> 
        <requestedExecutionLevel level="asInvoker" uiAccess="false" /> 
      </requestedPrivileges> 
    </security> 
  </trustInfo> 
  <compatibility xmlns="urn:schemas-microsoft-com:compatibility.v1"> 
    <application> 
      <supportedOS Id="{8e0f7a12-bfb3-4fe8-b9a5-48fd50a15a9a}" /> 
      <supportedOS Id="{1f676c76-80e1-4239-95bb-83d0f6d0da78}" /> 
      <supportedOS Id="{4a2f28e3-53b9-4441-ba9c-d69d4a4a6e38}" /> 
      <supportedOS Id="{35138b9a-5d96-4fbd-8e2d-a2440225f93a}" /> 
      <supportedOS Id="{e2011457-1546-43c5-a5fe-008deee3d3f0}" /> 
    </application> 
  </compatibility> 
</assembly> 
 
```

<hr/>

icon was added based on https://curl.se/logo/curl-symbol.png

<hr/>

windows will default to run `curl.cmd` when you call `curl` w/o specifying an extension, from this folder (or when added to PATH).

`curl.cmd` uses `curl.conf`, unless a user has specified own `-K `/`--config` commands.

`curl.conf` has few defaults to smooth downloads, it uses a browser-useragent or automatic REFER header, along with `DNT: 1` header to opt-out tracking if any exists.

the configuration file also includes some workarounds of hostname to ip, so users may block hostnames in their HOSTS file (`0.0.0.0` myhostname.com) and still be able to access a download URL. this was done using `chrome://net-internals/#dns` of an older chromium and the first ip resolved.

