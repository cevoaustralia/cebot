# Description:
#   None
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#
# Author:
#   ajc

module.exports = (robot) ->

  robot.hear /(^|\W)(xyzzy|plugh)(\z|\W|$)/i, (msg) ->
    msg.reply "Nothing happens."
