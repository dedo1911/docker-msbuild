# MSBuild 2019 for Windows Container

Docker image with MSBuild 2019 for building .NET Framework, .NET Core, C#, F#, C++, and web projects. It is preinstalled with .NET Framework SDK 4.5 to 4.8 and Nuget 5.8.1.

List of preinstalled build tools can be found [here](https://docs.microsoft.com/en-us/visualstudio/install/workload-component-id-vs-build-tools).

Dockerfile can be found on [this](https://github.com/dedo1911/docker-msbuild/tree/master) GitHub repository.

# Usage

## MSBuild

MSBuild is located at `C:\BuildTools\MSBuild\BuildTools\MSBuild\Current\Bin\MSBuild.exe`.

```
C:\BuildTools\MSBuild\BuildTools\MSBuild\Current\Bin>MSBuild.exe /version
Microsoft (R) Build Engine version 16.9.0+57a23d249 for .NET Framework
Copyright (C) Microsoft Corporation. All rights reserved.

16.9.0.11203
```

## Nuget

Nuget is located at `C:\Nuget\nuget.exe`.

```
C:\Nuget>nuget.exe
NuGet Version: 5.8.1.7021
usage: NuGet <command> [args] [options]
Type 'NuGet help <command>' for help on a specific command.
```

# Contribution

Like us? [Star](https://github.com/dedo1911/docker-msbuild/stargazers/) us.

Want to make it better? [Send](https://github.com/dedo1911/docker-msbuild/issues/) us your wish.
