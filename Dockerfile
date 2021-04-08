# Steps to keep in mind while creating a app in dockerfile
# 1 -> It is just like setting an app in local machine
# 2 -> We need to follow all the steps to do so 
# 3 -> in local machine we need a os
#       -> We need os in container also. so we import using FROM
#       -> We need to copy neccessary files into container workspace 
#          so we use COPY
#       -> We need to folder where all the neccesary code will reside
#          so we create a working directory so we use WORKDIR
#       -> We need to install requirements.txt for that we use RUN  
#       -> Finally we need to run our flask application so we use
#          ENTRYPOINT and CMD to execute python app.py command    

FROM python:alpine3.7

COPY requirements.txt /app
COPY ./app /app
WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]      