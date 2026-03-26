# kali

Kali Linux rolling base image with core security tools for Apple's native [Containerization](https://github.com/apple/containerization) framework.

## Prerequisites

- macOS 26+ (Tahoe)
- Apple Silicon
- [container](https://github.com/apple/container) CLI installed
- [container-cast](https://github.com/containerfiles/container-cast) (for standalone binaries)

## Usage

### Run as container

```bash
make build          # Build the image
make run            # Spawn ephemeral shell at kali.box
```

### Cast as standalone binary

```bash
make install        # Build, cast, and install to /usr/local/bin
kali                # Launch interactive zsh shell
kali <command>      # Run a single command
```

### All targets

```
make status      Show builder, DNS, images, and containers
make build       Build the container image
make cast        Cast into a standalone binary
make install     Cast and install to /usr/local/bin
make uninstall   Remove from /usr/local/bin
make run         Run the container
make clean       Remove image and prune unused resources
make dns         Configure .box DNS domain (run once, needs sudo)
make nuke        Kill and restart the builder (fixes hangs)
make help        Show all targets
```

## What's Inside

- Kali Linux rolling
- `kali-linux-core` metapackage
- zsh shell

Extend with specific tool packages by adding to the Containerfile:

```dockerfile
RUN apt-get install -y kali-linux-web          # Web application tools
RUN apt-get install -y kali-tools-wireless     # Wireless tools
RUN apt-get install -y kali-tools-exploitation # Exploitation frameworks
```

## License

MIT
