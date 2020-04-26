# frozen_string_literal: true

class Team
  before_trial_expiring do
    inform!(text: trial_text)
  end

  after_subscribed do
    inform!(text: subscribed_text)
  end

  after_unsubscribed do
    inform!(text: unsubscribed_text)
  end

  after_subscription_expired do
    inform!(text: subscription_expired_text)
  end

  after_subscription_past_due do
    inform!(text: subscription_past_due_text)
  end

  private

  def inform!(message)
    slack_channels.each do |channel|
      message_with_channel = message.merge(channel: channel['id'], as_user: true)
      slack_client.chat_postMessage(message_with_channel)
    end
  end
end
