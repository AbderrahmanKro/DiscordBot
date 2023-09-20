require 'discordrb'
require 'dotenv/load'

token = ENV['DISCORD_TOKEN']

bot = Discordrb::Commands::CommandBot.new token: token, client_id: 1153146227152654437, prefix: '!'

bot.set_user_permission(274625354788896778, 1)

bot.command :random do |event, min, max|
  rand(min.to_i .. max.to_i)
end

bot.run
