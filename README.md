Slack Ruby Bot Server Stripe Sample
===================================

[![test](https://github.com/slack-ruby/slack-ruby-bot-server-stripe-example/actions/workflows/test.yml/badge.svg)](https://github.com/slack-ruby/slack-ruby-bot-server-stripe-example/actions/workflows/test.yml)

### What is this?

A sample app based on [slack-ruby-bot-server-sample](https://github.com/slack-ruby/slack-ruby-bot-server-sample) that integrates with [Stripe](https://stripe.com) using [slack-ruby-bot-server-stripe](https://github.com/slack-ruby/slack-ruby-bot-server-stripe).

### Running the Sample

Create `.env` file with the following settings.

```
SLACK_CLIENT_ID=...
SLACK_CLIENT_SECRET=...
SLACK_VERIFICATION_TOKEN=...
SLACK_OAUTH_SCOPE=bot,commands
STRIPE_API_KEY=...
STRIPE_API_PUBLISHABLE_KEY=...
STRIPE_SUBSCRIPTION_PLAN_ID=...
```

Run `bundle install` and `foreman start`.

### Copyright & License

Copyright [Daniel Doubrovkine](http://code.dblock.org), 2020

[MIT License](LICENSE)
