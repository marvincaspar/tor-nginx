# Tor Nginx Docker

This is a small docker image which starts a tor and nginx service. This might be the easiest way to deploy your first sote on the dark web.

## Usage

You just need to run `docker-compose up -d` and the nginx and tor services will start. 
This will also create a `hidden_service` directory. 
In there you find a hostanme file, which cointains your .onion domain. 
Copy and open the domain in your tor browser and you will see `Hello from the dark web :)`.

You can run this everywhere, also on a raspberry pi at home.


You can modify the page within the `html` folder. 
The tor and nginx config is located in the `etc` directory.