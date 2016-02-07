# simplify
Programs or scripts that help me out

# License
Some things will follow either the BSD or DWTFYW (Do what the fuck you want) license.
Other things will be LGPLv3 so that you're free to use it in your own projects AS IS without having to disclose your own source.
Yet others will be GPL, because fuck you and your proprietary nonsense.
I'm not uniformly religious about these things. Different licenses for different reasons :)
The applicable license will either be embedded into the script code or be in the COPYING file in the directory.

# Shell scripts
## rungem.sh
Running an installed ruby gem requires playing with the PATH. A script would be so much simpler.

## setup_libnpjp_links.sh
When I update java, I do it by downloading the JDK tar.gz from the Sun/Oracle website and extracting it in the ~/bin directory.
This script then sets up the links to libnpjp in the chrome and mozilla directories.

# Qt stuff
## mqclient
MqClient is a class that wraps the mosquittopp class so that it can be used in a Qt program without having to create a separate thread for the mosquitto event loop.
The state machine for the program is included as a dia diagram.
The class will connect to the server at localhost and subscribe to a topic. Whatever is published on that topic will be printed to stdout.
