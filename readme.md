Sandbox to play with docker and vue
=================

# Startup

* Build docker image with `docker build -t rym/npm .`
* Change future container name in `bin/ENV`
* Run `bin/init`
* Answer questions about project
* Start server with `bin/server` to check all is done

# Alternative way

* Change future container name in `bin/ENV`
* Remove `project` directory
* Add your empty project repository as submodule ` git submodule add <path_to_repository> project`
* Init submodule `git submodule init`
* Run `bin/init`
* Answer questions about project
* Start server with `bin/server` to check all is done
