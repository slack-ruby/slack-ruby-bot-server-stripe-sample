# frozen_string_literal: true

require 'spec_helper'

describe Help do
  let(:app) { SlackRubyBotServer::Server.new(team: team) }
  let(:client) { app.send(:client) }
  let(:message_hook) { SlackRubyBot::Hooks::Message.new }
  context 'unsubscribed' do
    let!(:team) { Fabricate(:team) }
    it 'default' do
      expect(client).to receive(:say).with(channel: 'channel', text: [
        Help::HELP,
        team.trial_text
      ].join("\n"))
      expect(client).to receive(:say).with(channel: 'channel', gif: 'help')
      message_hook.call(client, Hashie::Mash.new(channel: 'channel', text: "#{SlackRubyBot.config.user} help"))
    end
  end
  context 'subscribed' do
    let!(:team) { Fabricate(:team, subscribed: true) }
    it 'does not display trial text' do
      expect(client).to receive(:say).with(channel: 'channel', text: [
        Help::HELP
      ].join("\n"))
      expect(client).to receive(:say).with(channel: 'channel', gif: 'help')
      message_hook.call(client, Hashie::Mash.new(channel: 'channel', text: "#{SlackRubyBot.config.user} help"))
    end
  end
end
