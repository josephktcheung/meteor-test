db.posts = new Meteor.Collection 'posts'

db.posts.allow
  insert: (userId, doc) ->
    !!userId
  update: @ownsDocument
  remove: @ownsDocument

# Meteor.methods
#   post: (postAttributes) ->
#     user = Meteor.user()
#     postWithSameLink = db.posts.findOne { url: postAttributes.url }

#     if !user
#       throw new Meteor.Error 401, 'You need to login to post new stories'

#     if !postAttributes.title
#       throw new Meteor.Error 422, 'Please fill in a headline'

#     if postAttributes.url && postWithSameLink
#       throw new Meteor.Error 302, 'This link has already been posted', postWithSameLink._id

#     post = _.extend _.pick(postAttributes, 'url', 'title', 'message'), {
#       userId: user._id
#       author: user.username
#       submitted: new Date().getTime()
#     }

#     postId = db.posts.insert post
