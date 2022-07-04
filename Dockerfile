#Use Node as the base Image
FROM node

# Create a new directory called /home/master/application1
RUN mkdir -p /home/master/application1

# Add all the files/folders to /home/master/application1
ADD . /home/master/application1

# Set this direcotory as WORKDIR where all of our code/installs will be executed
WORKDIR /home/master/application1

# To install packages and its dependenices
RUN npm install

# Where the created container will listen on by default
EXPOSE 3000

# Stat the NodeJS application
CMD npm start
