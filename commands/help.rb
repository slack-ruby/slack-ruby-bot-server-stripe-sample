class Help < SlackRubyBot::Commands::Base
  HELP = <<-EOS.freeze
```
Sample bot that uses slack-ruby-bot-server-stripe.

General
-------

help               - get this helpful message

```
EOS
  def self.call(client, data, _match)
    client.say(channel: data.channel, text: [HELP, SlackRubyBotServer::INFO].join("\n"))
    client.say(channel: data.channel, gif: 'help')
    logger.info "HELP: #{client.owner}, user=#{data.user}"
  end
end
