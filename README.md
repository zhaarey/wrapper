## Wrapper

No need for an Android emulator to decrypt ALAC files. All files from anonymous.

### Recommended Environment
#### x86_64 only
For best results, it's recommended to use **Windows Subsystem for Linux (WSL)**.

---

### Version 2

#### Usage:
```shell
./wrapper [OPTION]...
  -h, --help               Print help and exit
  -V, --version            Print version and exit
  -H, --host=STRING        (default: `127.0.0.1`)
  -D, --decrypt-port=INT   (default: `10020`)
  -M, --m3u8-port=INT      (default: `20020`)
  -P, --proxy=STRING       (default: `''`)
  -L, --login=STRING       ([username]:[password])
```
#### Installation：
```shell
sudo -i
wget "https://github.com/zhaarey/wrapper/releases/download/linux.V2/wrapper.linux.x86_64.V2.tar.gz"
mkdir wrapper
tar -xzf wrapper.linux.x86_64.V2.tar.gz -C wrapper
cd wrapper
./wrapper
```


---
### Version 1
#### Usage:
`./wrapper [port] ([username] [password])`
#### Installation：
```shell
sudo -i
wget "https://github.com/zhaarey/wrapper/releases/download/linux/wrapper.linux.x86_64.tar.gz"
mkdir wrapper
tar -xzf wrapper.linux.x86_64.tar.gz -C wrapper
cd wrapper
./wrapper
```