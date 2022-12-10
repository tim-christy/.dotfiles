# Notes on bash scripts

### Three Main Components to a BASH Script
1. The Hash-bang or Shbang
\#!/bin/bash
Tells the shell where to find the binary to run the bash script
You can tell this is set correctly by using the file command.
file <filename>
That should say it's a bash script.

2. The actual bash commands themselves

3. Exit Statement
Not required, but the shell will take the exit code of the last command it
ran as the exit code if omitted.

You should also add meta data like
a. Author
b. Date Created
c. Date Modified
d. Description
e. Usage


### Permission changes
Need to allow script to be execute i.e. chmod +x script
Or chmod 755 script etc.

Recall 4 = read
       2 = write
       1 = execute


### Adding scripts to your PATH
In your .bashrc:    
export PATH="$PATH:$HOME/path/to/folder"


## Section 2: Variables and Shell Expansions
1. Create user-defined variables to save useful info in your scripts
2. Use some common environment variables that bash makes available
3. Use parameter expansion to get data back out of your variables
4. Use somr parameter expansion tricks to modify that data in a variety of
   useful ways
5. Use command substitution to work with the output of commands and save the
   output of inside variables for later use
6. Use arighmetic expansion and the bc command to do simple mathematical
   calculations
7. Use tilde expansion and brace expansion to make working on the command line
    more convenient.


### User-Defined Variables and Parameter Expansion 

