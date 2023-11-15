FROM cypress/base:latest

WORKDIR /home/cypress

RUN apt-get update

COPY . /home/cypress/

VOLUME [ "/home/cypress/mochawesome-report"]

RUN npm install

RUN npx cypress install

CMD ["npm", "run", "test:mochawesome"]