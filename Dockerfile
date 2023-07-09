# arm32v6/node:14-alpine is used because hypriot/rpi-node is deprecated
# Alpine is used to keep the size of the image as small as possible
# arm32v6 is used so it works on raspberry pi zero
FROM arm32v6/node:16-alpine

# This is where the garage-pi code will be placed
RUN mkdir /code
WORKDIR /code

# Copy over everything into the container
COPY . /code

# Install
RUN apk add --update bash
RUN npm i

CMD ["sh", "start.sh"]