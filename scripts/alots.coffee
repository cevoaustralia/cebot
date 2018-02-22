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
#   alot - Shows a picture of an alot
#
# Author:
#   tbwIII

images = [
  "http://4.bp.blogspot.com/_D_Z-D2tzi14/S8TRIo4br3I/AAAAAAAACv4/Zh7_GcMlRKo/s400/ALOT.png",
  "http://3.bp.blogspot.com/_D_Z-D2tzi14/S8TTPQCPA6I/AAAAAAAACwA/ZHZH-Bi8OmI/s1600/ALOT2.png",
  "http://2.bp.blogspot.com/_D_Z-D2tzi14/S8TiTtIFjpI/AAAAAAAACxQ/HXLdiZZ0goU/s320/ALOT14.png",
  "http://fc02.deviantart.net/fs70/f/2010/210/1/9/Alot_by_chrispygraphics.jpg",
  "https://i.warosu.org/data/lit/img/0066/71/1433984716662.png",
  "http://archive.garron.us/img/2010/alot_of_happiness.png",
  "http://i.imgur.com/KLeYo.jpg",
  "https://angryxer.files.wordpress.com/2012/07/alot5.png",
  "http://img11.deviantart.net/44c7/i/2012/086/6/5/alot_by_leashe-d4u4g27.jpg",
  "https://pbs.twimg.com/profile_images/1771177754/alot_400x400.png",
  "http://www.arixystix.com/wp-content/uploads/2010/11/alotmonster01-560x373.jpg",
  "http://orig03.deviantart.net/68bd/f/2011/228/b/4/i_love_u_alot_by_sylvacoer-d46t4fh.jpg",
  "http://img00.deviantart.net/3db7/i/2012/102/3/1/somewhat_realistic_alot_by_foxwolf333-d4vxkry.png",
  "http://humandiaries.com/wp-content/uploads/2015/02/alot1.jpg",
  "http://i.imgur.com/q8SPD.jpg",
  "http://thingiverse-production-new.s3.amazonaws.com/renders/05/07/5d/67/43/alot_display_large_preview_featured.jpg"
]

module.exports = (robot) ->
  robot.hear /(^|\W)alot(\z|\W|$)/i, (msg) ->
    msg.send msg.random images
