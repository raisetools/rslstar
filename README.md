# The RAISE toolset for RSL* 

This repository contains an extension of _rsltc_ which supports the language constructs in RSL*.

## RSL* 
RSL* is an extension of RSL-SAL, which adds language constructs for generic specifications. 

## Tool support
This version of _rsltc_ includes syntax and type checking for the language constructs of RSL*. In addition, the tool includes an _unfolder_, which unfolds a specification in RSl* with generic constructs to a specification within the RSL-SAL subset. 

## Development
This version of _rsltc_ is currently under development and is provided as is.

## Building the tool
To build the tool, [gentle](http://gentle.compilertools.net/) must be installed. 

With gentle installed, `edit GENTLE_DIR = ...` in `src/Makefile` to point to point to the directory where gentle is installed (the directory containing the three sub-directories `gentle`, `lib` and `reflex`). 

Then with a terminal placed in `src` execute `make`. This results in an executable file `rsltc` in the `src` directory. 

## Usage
This assumes that an executable `rsltc` file has been obtained.

To type check an RSL specification
```
rsltc <myRSLfile.rsl>
```

To unfold (and type check) an RSL* specification containing generic constructs (results in myRSLfile.unf in the same directory)
```
rsltc -unf <myRSLfile.rsl>
```
