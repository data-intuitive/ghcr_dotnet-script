# dotnet-script Docker Image

[![Build status](https://github.com/data-intuitive/ghcr-dotnet-script/workflows/CI/badge.svg)](https://github.com/data-intuitive/ghcr-dotnet-script/actions)

This is a [Docker image](https://github.com/data-intuitive/ghcr-dotnet-script/pkgs/container/dotnet-script) containing the latest version of dotnet-script.


## Running scripts

Example, shows the version of the dotnet script, 1.3.1 at the time of writing:

```shell
docker run --rm -it ghcr.io/data-intuitive/dotnet-script --version

1.3.1
```

Running the script `foo.csx` with one argument:

```shell
docker run --rm -it --volume="$PWD:/scripts:ro" ghcr.io/data-intuitive/dotnet-script foo.csx -- arg1
```

For further information, see [dotnet-script's own readme](https://github.com/filipw/dotnet-script/blob/master/README.md).

## Building the image locally

Standing in this folder, use the following command to build the image locally:

```shell
docker build -t ghcr.io/data-intuitive/dotnet-script:tag .
```

Where `:tag` is an optional version number, like `:1.3.1`.
