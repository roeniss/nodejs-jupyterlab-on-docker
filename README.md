# NodeJS JupyterLab on Docker

## What is this ?

This is Dockerfile which deploy a jupyterlab container that have nodeJS (ijavascript) kernel.

![screenshot](https://github.com/roeniss/nodejs-jupyterlab-on-docker/blob/master/screenshot/capture.png?raw=true)

## Why made this ?

There's no specific official docker image for nodejs-jupyter. Contrary, there are some Non-offical projects which are not working, unstable, or currently unmanaged, though.

I made this image based on ubuntu 19.04. If you have trouble with this image, please let me know. I'll fix it as soon as possible.

## How use ?

You can either (1) make your own docker image or (2) use a image I already deployed to DockerHub

- Way 1: Make your own docker image with this Dockerfile.

```sh
$ git clone https://https://github.com/roeniss/nodejs-jupyterlab-on-docker

$ cd nodejs-jupyterlab-on-docker

$ docker build -t {YOUR_NAME}/nodejs-jupyterlab:latest .

# many logs will show here

$ docker run --rm -it -p 8888:8888 -v $(pwd)/jupyter-lab:/root/jupyter-lab {YOUR_NAME}/nodejs-jupyterlab:latest
```

- Way 2: Use existing image.

```sh
$ docker run --rm -it -p 8888:8888 -v $(pwd)/jupyter-lab:/root/jupyter-lab roeniss/nodejs-jupyterlab:latest
```

After `docker run`, you will see logs like this:

```sh
[I 12:29:34.579 LabApp] Writing notebook server cookie secret to /root/.local/share/jupyter/runtime/notebook_cookie_secret
[I 12:29:35.386 LabApp] JupyterLab extension loaded from /usr/local/lib/python3.7/dist-packages/jupyterlab
[I 12:29:35.386 LabApp] JupyterLab application directory is /usr/local/share/jupyter/lab
[I 12:29:35.748 LabApp] Serving notebooks from local directory: /root/jupyter-lab
[I 12:29:35.748 LabApp] The Jupyter Notebook is running at:
[I 12:29:35.748 LabApp] http://8fdb987edc78:8888/?token=e7f1342c990995b1d99a1e837260bbba0b35913a40140e43
[I 12:29:35.749 LabApp]  or http://127.0.0.1:8888/?token=e7f1342c990995b1d99a1e837260bbba0b35913a40140e43
[I 12:29:35.749 LabApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[W 12:29:35.755 LabApp] No web browser found: could not locate runnable browser.
[C 12:29:35.755 LabApp]

    To access the notebook, open this file in a browser:
        file:///root/.local/share/jupyter/runtime/nbserver-7-open.html
    Or copy and paste one of these URLs:
        http://8fdb987edc78:8888/?token=e7f1342c990995b1d99a1e837260bbba0b35913a40140e43
     or http://127.0.0.1:8888/?token=e7f1342c990995b1d99a1e837260bbba0b35913a40140e43
```

You can enter your jupyter with a link on last line.

All of your files and folders on JupyterLab will store in `$(pwd)/jupyter-lab/`.

## Q. There are some bug ! (or just suggestions)

A. Please make some issues for them. I'll quickly respond to you !

All I want to say is that this projet is under management, which I seldom heard on other projects.
