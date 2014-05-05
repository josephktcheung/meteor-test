db.posts = new Meteor.Collection 'posts'

db.posts.allow
  insert: (userId, doc) ->
    !!userId
  update: @ownsDocument
  remove: @ownsDocument

db.posts.deny
  update: (userId, post, fieldNames) ->
    _.without(fieldNames, 'url', 'title').length > 0