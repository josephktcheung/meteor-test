Posts.index = AppController.extend
  template: 'posts'

  waitOn: ->
    Meteor.subscribe 'posts'

  data: ->
    db.posts.find {}, {sort: {submitted: -1}}

  onBeforeAction: ->

  onAfterAction: ->

Posts.new = AppController.extend
  template: 'newPost'

  onBeforeAction: ->

  onAfterAction: ->

Posts.show = AppController.extend
  template: 'showPost'

  waitOn: ->
    Meteor.subscribe 'post', @.params._id

  data: ->
    db.posts.findOne @.params._id

  onBeforeAction: ->

  onAfterAction: ->

Posts.edit = AppController.extend
  template: 'editPost'

  waitOn: ->
    Meteor.subscribe 'post', @.params._id

  data: ->
    db.posts.findOne @.params._id

  onBeforeAction: ->

  onAfterAction: ->

Posts.create = (data, callback) ->
  user = Meteor.user()
  postWithSameLink = db.posts.findOne { url: data.url }

  if !user
    throw new Meteor.Error 401, 'You need to login to post new stories'

  if !data.title
    throw new Meteor.Error 422, 'Please fill in a headline'

  if data.url && postWithSameLink
    throw new Meteor.Error 302, 'This link has already been posted', postWithSameLink._id

  post = _.extend _.pick(data, 'url', 'title', 'message'), {
    userId: user._id
    author: user.username
    submitted: new Date().getTime()
  }

  postId = db.posts.insert post, callback

Posts.update = (id, data, callback) ->
  db.posts.update id, data, callback

Posts.destroy = (data, callback) ->
  console.log 'Fired Destroy Post', data
  Meteor.call 'Posts.destroy', data, callback

