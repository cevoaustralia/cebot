# Description:
#   Guess the dog breed
#
# Dependencies:
#   None
#
# Commands:
#   i feel like having a dog quiz - starts the quiz
#   is it a labradore? - attempt to guess
#   stahp/stop - give up before working it out
#
# Author:
#   not owning up to this

module.exports = (robot) ->
  robot.hear /dog quiz/i, (msg) ->
    robot.http('https://dog-quiz-api.herokuapp.com/dog').get() (err, res, body) ->
      data = JSON.parse body
      msg.send "Let's get this party started!", "Ok, what do you think this is?", data.url
      robot.brain.set 'dogBreed', data.breed

  robot.hear /.*is it.*/i, (msg) ->
    breed = robot.brain.get 'dogBreed'
    return if breed is null

    guess = msg.match[0]
    if guess.search(new RegExp(breed, "i")) >= 0
      msg.send "You got it! You're good at dogs."
      robot.brain.set 'dogBreed', null
    else
      msg.send "Nope, try again."

  robot.hear /(stahp|stop)/i, (msg) ->
    breed = robot.brain.get 'dogBreed'
    if breed isnt null
      msg.send "Ok, party's over.", "It was a #{breed}, by the way."
      robot.brain.set 'dogBreed', null
