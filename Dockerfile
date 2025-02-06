FROM nginx:1.27
WORKDIR /usr/share/nginx/html
# the way to concat instrucctions
RUN apt update && apt install git -y
# if you indicate dir after the clone, it'll clone to the indicated dir
# not to the workdir
# cloning creates dir of the repo inside of the workdir
# that is why we are moving a cloned repo to workdir
RUN git clone https://github.com/josejuansanchez/2048 && \ 
    mv /usr/share/nginx/html/2048/* /usr/share/nginx/html