# Description:
#   Get an aw yiss image from http://awyisser.com/
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot aw yiss <text> - Generates aw yiss mother flippin' <text> meme
#
# Author:
#   Danial Pearce
#
# Contributors:
#   Aidan Steele, Dave Robertson

module.exports = (robot) ->
  robot.respond /aw+ *yis+ *(.+)/i, (msg) ->
    robot.http('http://awyisser.com/api/generator')
      .header('Content-Type', 'application/json')
      .post(JSON.stringify({ phrase: msg.match[1], sfw: true })) (err, res, body) ->
        try
          data = JSON.parse body
        if data? and data['link']?
          msg.send data['link']
        else
          msg.reply "Sorry, I couldn't generate that meme. Unexpected response from awyisser.com: #{body}"
