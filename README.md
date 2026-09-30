# WinCC
Cross compiler from Linux to Windows for DLL and EXE, all in a docker

## Installation
1. Build the container
```
docker build -t wincc:latest .
```
2. Install the tool
```
~/wincc/install.sh
```
3. Add it to PATH
```
export PATH="$HOME/.local/bin:$PATH"
```
4. Run
```
wincc --help
```
## Usage
- Compile C to EXE
```
wincc main.c -o main.exe
```
- Compile C++ to EXE
```
wincc main.cpp -o main.exe
```
- Compile C to DLL
```
wincc main.c -o main.dll
```
- Compile C++ to DLL
```
wincc main.cpp -o main.dll
```
