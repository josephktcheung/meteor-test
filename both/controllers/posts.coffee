Posts.index = AppController.extend
  template: 'posts'

  onBeforeAction: ->

  onAfterAction: ->

Posts.new = AppController.extend
  template: 'newPost'

  onBeforeAction: ->

  onAfterAction: ->

Posts.show = AppController.extend
  template: 'showPost'

  data: ->
    Posts.findOne @.params._id

  onBeforeAction: ->

  onAfterAction: ->

Posts.edit = AppController.extend
  template: 'editPost'

  onBeforeAction: ->

  onAfterAction: ->

Posts.create = (data, callback) ->
  console.log 'Fired Create Post', data
  Meteor.call 'Posts.create', data, callback


Posts.update = (data, callback) ->
  console.log 'Fired Update Post', data
  Meteor.call 'Posts.update', data, callback

Posts.destroy = (data, callback) ->
  console.log 'Fired Destroy Post', data
  Meteor.call 'Posts.destroy', data, callback

