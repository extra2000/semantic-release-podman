# semantic-release-podman

| License | Versioning | Build |
| ------- | ---------- | ----- |
| [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) | [![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release) | [![Build status](https://ci.appveyor.com/api/projects/status/drxclkrgxhk341s8/branch/master?svg=true)](https://ci.appveyor.com/project/nikAizuddin/semantic-release-podman/branch/master) |

Semantic Release using Podman.


## How to build image

```
podman build -t extra2000/semantic-release .
```


## Creating configs

Create config based on the given example:
```
cp -v configs/github.txt{.example,}
```

For SELinux platforms, label the config file:
```
chcon -R -v -t container_file_t ./configs
```


## How to run

```
podman run -it --rm --env-file configs/github.txt extra2000/semantic-release
```
