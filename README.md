### Clone sample-plugin  
~~~
git clone https://github.com/Kong/kong-plugin.git sample-plugin
~~~
Note: In rockspec, modify local git_checkout to set value to "master"

### Build image  
~~~
docker build . --tag luasucks
~~~

### Run image

#### First build the single image
~~~
docker run --rm -it -v $(pwd)/sample-plugin:/var/lua/sample-plugin luasucks
~~~

#### In the interactive shell, run
~~~
luarocks pack kong-plugin-myplugin-0.1.0-1.rockspec
~~~
