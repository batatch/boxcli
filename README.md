# boxcli

Build docker image for Box cli.

box/boxcli<br>
https://github.com/box/boxcli


## Usage

Local usage.

```
$ make build
$ source alias.sh

$ mkdir -p ~/.box ~/Downloads ~/Documents
$ box --help
```

Use public image.

```
$ alias box='docker run --rm -v ${HOME}/.box:/home/node/.box -v ${HOME}/Documents:/home/node/Documents -v ${HOME}/Downloads:/home/node/Downloads batatch/boxcli:latest'

$ mkdir -p ~/.box ~/Downloads ~/Documents
$ box --help
```


## Settings

Download setting file from Box console, and save it in ~/Downloads .

```
$ box configure:environments:add Downloads/box_conf.json
Successfully added CLI environment "default"
```


// EOF
