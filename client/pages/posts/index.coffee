Template.posts.helpers
  posts: ->
    Posts.find {}, {sort: {submitted: -1}}

Template.posts.events
Template.posts.rendered = ->