# SimpleWebloc
Create a webloc file easily. Ever since the Safari UI/UX update that came with macOS Monterey, I could no longer easily generate webloc files from Safari. As such, I built this small tool.

A webloc file is essentially a shortcut to a website that appears as a file in your filesystem.

## Installation
The only step for installation is to run `make` from the project directory. This puts the file in `/usr/local/bin/`, which is most likely already a part of your path.

*I am assuming you are on macOS if you are using this script.

## Usage
Usage: `make-webloc.sh <filename> <URL>`