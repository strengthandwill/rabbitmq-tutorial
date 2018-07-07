## RabbitMQ Tutorial

This repository contains tutorial for RabbitMQ at https://www.rabbitmq.com/getstarted.html.

## Running RabbitMQ Server
Bash completion has been installed to:
```
/usr/local/etc/bash_completion.d
```  

To have launchd start rabbitmq now and restart at login:
```
brew services start rabbitmq
```
  
Or, if you don't want/need a background service you can just run:
```
rabbitmq-server  
```

## Running app
Now we can run both scripts. In a terminal, run the consumer (receiver):
```
ruby receive.rb
```

then, run the publisher (sender):
```
ruby send.rb
```  