## How to Use

```shell
usage: dpsctrl.py [-h] -d DEVICE [-s SPEED] [-i] [-V VOLTAGE] [-A CURRENT] [-1 | -0]

controll the DPS5005

options:
  -h, --help            show this help message and exit
  -d DEVICE, --device DEVICE
  -s SPEED, --speed SPEED
  -i, --info
  -V VOLTAGE, --voltage VOLTAGE
  -A CURRENT, --current CURRENT
  -1, --on
  -0, --off
```

### Turn power supply off / on

```shell
# turn on
./dpsctrl.py -d /dev/ttyUSB2 -1

# turn off
./dpsctrl.py -d /dev/ttyUSB2 -0
```

### Set Output Current / Voltage

```shell
# set voltage
./dpsctrl.py -d /dev/ttyUSB2 -V 3.3

# set current
./dpsctrl.py -d /dev/ttyUSB2 -C 0.5
```

## How To Un- / Install the script localy

```shell
# install
make install

# uninstall
make uninstall
```

Afther the installation it can be used in the follwoing manner

```shell
python -m dpsctrl --help
```

## Based On

https://github.com/TheHWcave/DPS5005-control