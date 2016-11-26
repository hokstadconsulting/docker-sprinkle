
# Docker container for Sprinkle

[Sprinkle is a simple Ruby-based software deployment tool](https://github.com/sprinkle-tool/sprinkle). 

As a matter of principle, we prefer to package up apps with their dependencies in order to simplify use.
This repository builds a minimal Docker container and a utility script to run it without having to have
the right version of Ruby or the right gems installed.

This docker container is maintained by [Hokstad Consulting](http://hokstadconsulting.com/)

## Usage

If all you want to do is to *use* Sprinkle without installing it, all you need is the "sprinkle"
shell script and Docker. It will run a Docker container with the current working directory in the
path for Sprinkle. It also adds one option: If you provide "--keys [dir]", "[dir]" will be bind-mounted
to /root/.ssh in the container, so you can provide your keys or separate deployment keys for
Sprinkle to use

## Building

Ensure bundle install is run at least once:

    make bundle

Then "make build"

## License

This repository is under the MIT license - see LICENSE. Sprinkle itself is also under the MIT
License.
