# Dotnet CLI Vim Plugin

A Vim plugin for interfacing with the .NET CLI directly from Vim. This plugin allows you to run common `dotnet` commands seamlessly within the editor.

## Features

The plugin provides the following commands for interacting with the .NET CLI:

### Commands

| Command                         | Description                                                                 |
|---------------------------------|-----------------------------------------------------------------------------|
| `:DotnetBuild`                  | Builds the project in the current directory.                               |
| `:DotnetRun`                    | Runs the project in the current directory.                                 |
| `:DotnetTest`                   | Runs tests for the project.                                                |
| `:DotnetRestore`                | Restores dependencies and project-specific tools.                          |
| `:DotnetAddClass <name>`        | Adds a new class with the specified name (e.g., `Student`).                |
| `:DotnetAddInterface <name>`    | Adds a new interface with the specified name (e.g., `IStudent`).           |
| `:DotnetNewGitignore`           | Creates a new `.gitignore` file for the project.                           |
| `:DotnetNewProject <name>`      | Creates a new console project with the specified name.                     |
| `:DotnetAddPackage <name>`      | Adds a NuGet package to the project (e.g., `Newtonsoft.Json`).             |
| `:DotnetAddReference <path>`    | Adds a project reference (e.g., `../MyLibrary/MyLibrary.csproj`).          |
| `:DotnetRemovePackage <name>`   | Removes a NuGet package from the project (e.g., `Newtonsoft.Json`).        |
| `:DotnetRemoveReference <path>` | Removes a project reference (e.g., `../MyLibrary/MyLibrary.csproj`).       |
| `:DotnetClean`                  | Cleans the build outputs of the project or solution.                       |

## Examples

Here are some practical examples of how to use the plugin:

 **Build the project**:
 
   `:DotnetBuild`
   
 **Run the project**:
 
`:DotnetRun`

**Test the project**:

`:DotnetTest`

**Restore dependencies**:

`:DotnetRestore`

**Add a new class named Student**:

`:DotnetAddClass Student`

Add a new interface named IStudent:

`:DotnetAddInterface IStudent`

**Generate a .gitignore file**:

`:DotnetNewGitignore`

**Create a new console project named MyProject**:

`:DotnetNewProject MyProject`

**Add a package, for example, Newtonsoft.Json**:

`:DotnetAddPackage Newtonsoft.Json`

**Add a reference to another project, for example, ../MyLibrary/MyLibrary.csproj**:

`:DotnetAddReference ../MyLibrary/MyLibrary.csproj`

**Remove a package, for example, Newtonsoft.Json**:

`:DotnetRemovePackage Newtonsoft.Json`

**Remove a reference, for example, ../MyLibrary/MyLibrary.csproj**:

`:DotnetRemoveReference ../MyLibrary/MyLibrary.csproj`

**Clean the solution**:

 `:DotnetClean`

# Installation
## Manual Installation
Create the plugin directory: `~/.vim/pack/plugins/start/dotnet/`

Save the plugin file as `dotnet.vim` in the above directory.

You can also place the plugin file under `ftplugin`. See `:h ftplugin`.

## Vim Plugin Managers
If you use a plugin manager like vim-plug, add the following line to your .vimrc:
```
Plug 'wolandark/dotnet-vim'
```

# License
This plugin is licensed under the MIT License.

# Contributions
Contributions and feature suggestions are welcome! Feel free to open issues or submit pull requests.
