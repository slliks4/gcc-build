# Basic Build

Dumb simple way to build without make because I don't yet know what and why I should use make lol!

## Features
* **No Bloat**: Just standard shell and GCC.
* **Auto-Cleanup**: Separates binaries into an output folder.
* **Smart Naming**: Removes `.c` extensions automatically.
* **Instant Run**: Compiles and executes in one command.

## Usage

Make the script executable first:
```sh
chmod +x build.sh
```

### Build Only
Pass your C file as the first argument:
```sh
./build.sh main.c
```

### Build and Run
Add `run` as the second argument to execute immediately after a successful build:
```sh
./build.sh main.c run
```

## Structure
* Source files stay in your root directory.
* Compiled binaries are saved inside `./output/`.
