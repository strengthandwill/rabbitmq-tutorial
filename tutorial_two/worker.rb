#!/user/bin/env ruby
require 'bunny'

connection = Bunny.new
connection.start

channel = connection.create_channel
queue = channel.queue('task_queue', durable: true)

channel.prefetch(1)
puts ' [*] Waiting for messages. To exit press CTRL+C'

begin

  queue.subscribe(block: true) do |_delivery_info, _properties, body|
    puts " [x] Received #{body}"
    # imitate some work
    sleep body.count('.').to_i
    puts ' [x] Done'
  end
rescue Interrupt => _
  connection.close
end