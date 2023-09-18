require 'discordrb'
require 'dotenv/load'

token = ENV['DISCORD_TOKEN']

bot = Discordrb::Bot.new token: token

bot.message(with_text: "Hey Bot!") do |event|
  event.respond "Hi, #{event.user.name}!"
end

bot.run
