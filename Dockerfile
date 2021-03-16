FROM mcr.microsoft.com/dotnet/framework/sdk:4.8-windowsservercore-ltsc2019
LABEL maintainer=dedo1911 description="MSBuild 2019"

SHELL ["cmd", "/S", "/C"]

ADD https://aka.ms/vs/16/release/vs_buildtools.exe C:\TEMP\vs_buildtools.exe
ADD https://dist.nuget.org/win-x86-commandline/v5.8.1/nuget.exe C:\Nuget\nuget.exe

RUN C:\TEMP\vs_buildtools.exe  --quiet --wait --norestart --nocache \
  --installPath C:\BuildTools \
  --add Microsoft.VisualStudio.Workload.MSBuildTools \
  --add Microsoft.VisualStudio.Workload.NetCoreBuildTools \
  --add Microsoft.VisualStudio.Workload.VCTools \
  --add Microsoft.VisualStudio.Workload.WebBuildTools \
|| IF "%ERRORLEVEL%"=="3010" EXIT 0

RUN SETX /M Path "%Path%;C:\\Nuget;C:\\BuildTools\\MSBuild\\Current\\Bin"
