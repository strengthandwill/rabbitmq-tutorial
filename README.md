## RabbitMQ Tutorial

This repository contains tutorial for RabbitMQ at https://www.rabbitmq.com/getstarted.html.

## Running RabbitMQ Server
Bash completion has been installed to:
```
/usr/local/etc/bash_completion.d
```  

To have launchd start rabbitmq:
```
brew services start rabbitmq
```

To have launchd stop rabbitmq:
```
brew services stop rabbitmq
```

To have launchd restart rabbitmq:
```
brew services restart rabbitmq
```

To list existing bindings:
```
rabbitmqctl list_bindings
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