# frozen_string_literal: true

class Help < SlackRubyBot::Commands::Base
  HELP = <<~EOS
    ```
    Sample bot that uses slack-ruby-bot-server-stripe.

    Commands
    --------

    help               - get this helpful message
    subscription       - get subscription info
    unsubscribe        - unsubscribe

    ```
  EOS
  def self.call(client, data, _match)
    client.say(channel: data.channel, text: [
      HELP,
      client.owner.reload.subscribed? ? nil : client.owner.trial_text
    ].compact.join("\n"))
    client.say(channel: data.channel, gif: 'help')
    logger.info "HELP: #{client.owner}, user=#{data.user}"
  end
end
