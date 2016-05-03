module.exports =

  defineSettings: ->
    "videos.myVideosByDefault":
      defaultValue: false


  run: ->
    utils = require "utils"

    videosLink = $ "#l_vid > a"
    utils.setConditional "videos.myVideosByDefault", videosLink, "href",
      true: "/videos#{window.vk.id}"
