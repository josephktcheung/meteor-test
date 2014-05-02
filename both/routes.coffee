Router.configure {
  layoutTemplate: 'layout'
  loadingTemplate: 'loading'
  waitOn: ->
    Meteor.subscribe 'posts'
}

Router.map ->
  this.route('posts',    { path: '/',          controller: Posts.index });

Router.onBeforeAction 'loading'