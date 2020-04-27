# frozen_string_literal: true

SlackRubyBotServer::Stripe.configure do |config|
  config.stripe_api_key ||= ENV['STRIPE_API_KEY']
  config.stripe_api_publishable_key ||= ENV['STRIPE_API_PUBLISHABLE_KEY']
  config.subscription_plan_id ||= 'plan_HAevT5j3xmP7a6'
  config.subscription_plan_amount = 0
  config.trial_duration = 2.weeks
  config.root_url = ENV['URL'] || 'http://localhost:5000'
end
