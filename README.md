Node.js Express App with Docker

This repository contains a simple Node.js application using Express.js, designed to be run inside a Docker container.

--Prerequisites--

Ensure the following are installed on your system:

  1.Docker: Install Docker.

  2.Node.js (optional, only needed for local development without Docker).

--Steps to Run the Application--

1. Build the Docker Image

Use the following command to build the Docker image for the application:

docker build -t back_end_image:v2 .

2. Run the Docker Container

Start the container using the following command:(use your custome port number if it is not 3000)

docker run --name back_end_container-2 -p 3000:3000 --rm -v /app/node_modules -v ${PWD}:/app back_end_image:v2

3. Access the Application(use your custome port number if it is not 3000)

The application will be available at http://localhost:3000.

--Features--

Port Mapping: The application listens on port 3000, mapped to port 3000 on your host.

Live Code Updates: Changes to your local files are reflected in the container using the nodemon watcher.

--Development Tips--

Edit the server.js file locally and see live updates in the container.

Use Ctrl + C to stop the running container since --rm ensures automatic cleanup.

--Notes--

The -v /app/node_modules volume ensures containerized node_modules aren't overwritten by host volumes.

The -L flag in nodemon ensures proper file change detection in Docker environments.
