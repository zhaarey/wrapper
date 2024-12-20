## Wrapper

No need for an Android emulator to decrypt ALAC files. All files from anonymous.

### Recommended Environment
#### Only support Linux x86_64 and arm64.
For best results, it's recommended to use **Windows Subsystem for Linux (WSL)**.

# Special thanks
- Anonymous, for providing the original version of this project and the legacy Frida decryption method.
- chocomint, for providing support for arm64 arch.

---
### Version 2 Docker
Available for x86_64 and arm64. Need to download prebuilt version from releases or actions.

Build image: `docker build --tag wrapper .`

Login: `docker run -v ./rootfs/data:/app/rootfs/data -p 10020:10020 -e args="-L username:password -F -H 0.0.0.0" wrapper`

Run: `docker run -v ./rootfs/data:/app/rootfs/data -p 10020:10020 -e args="-H 0.0.0.0" wrapper`



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
#### Installation x86_64：
```shell
sudo -i
wget "https://github.com/zhaarey/wrapper/releases/download/linux.V2/wrapper.x86_64.tar.gz"
mkdir wrapper
tar -xzf wrapper.x86_64.tar.gz -C wrapper
cd wrapper
./wrapper
```
#### Installation arm64：
```shell
sudo -i
wget "https://github.com/zhaarey/wrapper/releases/download/arm64/wrapper.arm64.tar.gz"
mkdir wrapper
tar -xzf wrapper.arm64.tar.gz -C wrapper
cd wrapper
./wrapper
```



---
### Version 1
#### Usage:
`./wrapper [port] ([username] [password])`
#### Installation only x86_64：
```shell
sudo -i
wget "https://github.com/zhaarey/wrapper/releases/download/linux/wrapper.linux.x86_64.tar.gz"
mkdir wrapper
tar -xzf wrapper.linux.x86_64.tar.gz -C wrapper
cd wrapper
./wrapper
```
