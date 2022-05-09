FROM ubuntu:20.04

RUN apt update && apt -y install tzdata
ENV TZ=Asia/Tokyo

RUN  apt -y install python3-pip jupyter-notebook
RUN python3 -m pip install janome==0.4.1 \
slackbot==1.0.0 \
slacker==0.14.0 \
smart-open==4.2.0 \
websocket-client==0.44.0 \
sklearn \
bs4 \
requests \
html5lib
CMD ["jupyter", "notebook", "--ip=0.0.0.0","--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token="]
