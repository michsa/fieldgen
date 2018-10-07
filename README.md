# fieldgen

A command-line tool that generates randomized field names from the [*.hack*](https://en.wikipedia.org/wiki/.hack) series of games/anime/manga. Use it for passphrases, placeholder text, or just for fun :slightly_smiling_face:

Keywords lists are taken from the [*.hack* wiki](http://dothack.wikia.com/wiki/Field), so they're likely not entirely accurate.

It uses keywords from the original series by default, but can use R:2 keywords with the `-r2` flag.

## Usage

```console
$ ruby field.rb

Entwined Vindictive Treasure
```

Optionally accepts an integer argument to generate multiple names at once:

```console
$ ruby field.rb 5

Indiscreet Starving Sacrifice 
Fleeting Emerald Walkway 
Solemn Oblivious Scaffold 
Collapsed Bemused Scars 
Breezing Evil-eyed Projection 
```

### Optional flags

#### `-s` or `--server`

Includes the [server](http://dothack.wikia.com/wiki/Server) as a Unicode Greek symbol.

```console
$ ruby field.rb -s

Θ Turbulent Gambler's Footstep
```

#### `-sn` or `--server-name`

Includes the server as ASCII text.

```console
$ ruby field.rb -sn

Omega Great Talisman Arctic
```

#### `-r2`

Uses keywords from the [R:2 reboot](http://dothack.wikia.com/wiki/The_World_R:2) instead.

```console
$ ruby field.rb -r2

Sticking Black Elf Animal
```
