# encoding: utf-8
require 'hipbot'

class MyfreecommBot < Hipbot::Bot
  configure do |c|
    c.name = ENV['HUBOT_HIPCHAT_NAME']
    c.jid = ENV['HUBOT_HIPCHAT_JID']
    c.password = ENV['HUBOT_HIPCHAT_PASSWORD']
  end

  on /^hello.*/ do
    reply('hello!')
  end
end

MyfreecommBot.start!
