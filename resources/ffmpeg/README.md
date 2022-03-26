https://github.com/nanake/ffmpeg-tinderbox/releases/tag/build-2022-03-25-21-25-n106440
(based on https://github.com/FFmpeg/FFmpeg/commit/f2967490f1)

https://github.com/nanake/ffmpeg-tinderbox/releases/download/build-2022-03-25-21-25-n106440/ffmpeg-N-106440-gf2967490f1-win32-nonfree-shared.7z

dll and exe files from:  
`ffmpeg-N-106440-gf2967490f1-win32-nonfree-shared.7z/ffmpeg-N-106440-gf2967490f1-win32-nonfree-shared/bin/`

<hr/>

external (side-by-side) manifest (https://github.com/eladkarako/manifest)  


```xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?> 
<assembly xmlns="urn:schemas-microsoft-com:asm.v1" manifestVersion="1.0"> 
  <dependency optional="yes"> 
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

thanks to https://github.com/nanake/ffmpeg-tinderbox/issues/2  
there is a shared build, meaning the logic (~60MB) is in the dll files,  
while ffmpeg and ffprobe are about ~150KB.

<hr/>

I did compressed with UPX all the dll and exe files.
it reduces the total weight to about ~25MB.
and ffplay is not included (since it is not used nor needed).