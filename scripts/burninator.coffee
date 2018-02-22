# Description:
#   Burn Centres in Australia
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   burn - Shows link to burn centres
#
# Author:
#   Dave Robertson
#
# Contributors:
#   Aidan Steele, Danial Pearce

burn_units = [
  "http://i.imgur.com/wyW7MJz.jpg"
  "http://en.wikipedia.org/wiki/List_of_burn_centres_in_Australia"
  "http://i.imgur.com/6Xoxk3q.jpg"
  "http://anzba.org.au/"
  "http://i.imgur.com/Gb1iKta.jpg"
]

module.exports = (robot) ->

  robot.hear /oh burn|you got burned|^burn/i, (msg) ->
    msg.send msg.random burn_units
