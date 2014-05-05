Meteor.publish 'posts', ->
  db.posts.find()

Meteor.publish 'post', (id) ->
  check id, String
  db.posts.find(id)