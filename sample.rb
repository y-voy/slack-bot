require "slack-notify"
require 'clockwork'
require 'active_support/time'

include Clockwork

module Clockwork

  client = SlackNotify::Client.new(webhook_url: ENV['WEBHOOK_URL'])
  every(10.seconds, "Hello Slack-Notify!!") do
    client.notify("Hello Slack-Notify!!")
  end

end
