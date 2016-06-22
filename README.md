# A simple docker-compose exercise

In a single line, a ruby api backed by a redis db in a easy-to-scale fashion.



# Usage

To get a rough idea of what you can do with this, just type `make` in the root of this repo.

- give a wild try to `make magic`

- To start simple, `make run` will bring up the stack

- you can also `make benchmark` to launch httperf

# Requirements

- [docker](https://www.docker.com/)

    I've done this is Mac. Just FYI.

- [docker-compose](https://www.docker.com/products/docker-compose)

    Using version 2 for the yaml files.

- httperf

    If you want to run a quick benchmark.

- make

    You probably shouldn't worry about this.

