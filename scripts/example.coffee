#   My Bot
#   Crafted by Myself
#   Integrated with Slack

info        = require './info'
help        = require './help'

module.exports = (robot) ->

  robot.respond /hi|hello|sup/i, (msg) ->
    response = "Hello friend :grin: Welcome to MyBot
                Enter `help` to know more about how to operate MyBot"
    msg.send response


  robot.respond /whoami (.*)/i, (msg) ->
    name = escape(msg.match[1])
    response = info[name]
    if response == undefined
       response = "We don't Know you. Please gerrahia!"
    msg.send response

  #Spills out custome typingspeed bot help commands
  robot.respond /help/i, (msg) ->
    emit = help.join "\n"
    msg.send emit
