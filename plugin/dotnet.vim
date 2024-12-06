"  ___________________________________________________________
" /\                                                          \
" \_|  ____        _              _     __     ___            |
"   | |  _ \  ___ | |_ _ __   ___| |_   \ \   / (_)_ __ ___   |
"   | | | | |/ _ \| __| '_ \ / _ \ __|___\ \ / /| | '_ ` _ \  |
"   | | |_| | (_) | |_| | | |  __/ ||_____\ V / | | | | | | | |
"   | |____/ \___/ \__|_| |_|\___|\__|     \_/  |_|_| |_| |_| |
"   |                                                         |
"   |   ______________________________________________________|_
"    \_/________________________________________________________/
"
" Dotnet-Vim - A simple plugin to interface with the dotnet CLI from Vim (WIP)
"
" Copyright © 2024 wolandark
"
" plugin home: https://github.com/wolandark/dotnet-vim
"

if exists('g:loaded_dotnet')
    finish
endif
let g:loaded_dotnet = 1

" Check if .NET CLI is available
function DotnetAvailable()
    if executable('dotnet')
        return 1
    else
        echo "Error: .NET CLI not found in PATH."
        return 0
    endif
endfunction

" Run a .NET command and display output in a Vim buffer
function DotnetRunCommand(cmd)
    if !DotnetAvailable()
        return
    endif
    let output = systemlist('dotnet ' . a:cmd)
    if v:shell_error
        echo "Error running: dotnet " . a:cmd
        return
    endif

    " Display output in a new buffer
    new
    setlocal buftype=nofile
    setlocal bufhidden=wipe
    setlocal noswapfile
    call setline(1, output)
endfunction

" Main dotnet CLI command
command! -nargs=+ Dotnet call DotnetRunCommand(<q-args>)

" Enhanced shortcuts for .NET CLI commands
command! -nargs=0 DotnetBuild call DotnetRunCommand('build')
command! -nargs=0 DotnetRun call DotnetRunCommand('run')
command! -nargs=0 DotnetTest call DotnetRunCommand('test')
command! -nargs=0 DotnetRestore call DotnetRunCommand('restore')
command! -nargs=1 DotnetAddClass call DotnetRunCommand('new class -n ' . <q-args>)
command! -nargs=1 DotnetAddInterface call DotnetRunCommand('new interface -n ' . <q-args>)
command! -nargs=1 DotnetNewGitignore call DotnetRunCommand('new gitignore')
command! -nargs=1 DotnetNewProject call DotnetRunCommand('new console -n ' . <q-args>)
command! -nargs=1 DotnetAddPackage call DotnetRunCommand('add package ' . <q-args>)
command! -nargs=1 DotnetAddReference call DotnetRunCommand('add reference ' . <q-args>)
command! -nargs=1 DotnetRemovePackage call DotnetRunCommand('remove package ' . <q-args>)
command! -nargs=1 DotnetRemoveReference call DotnetRunCommand('remove reference ' . <q-args>)
command! -nargs=1 DotnetClean call DotnetRunCommand('clean ' . <q-args>)

