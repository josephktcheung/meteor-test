Router.configure {
  layoutTemplate: 'layout'
  loadingTemplate: 'loading'
  waitOn: ->
    Meteor.subscribe 'posts'
}

Router.map ->
  @.route 'posts',    { path: '/',            controller: Posts.index }
  @.route 'showPost', { path: '/posts/:_id',  controller: Posts.show }
  @.route 'new',      { path: '/submit',      controller: Posts.new }

requireLogin = (pause) ->
  if ! Meteor.user()
    if Meteor.loggingIn()
      @.render @.loadingTemplate
    else
      @.render 'accessDenied'
    pause()

Router.onBeforeAction 'loading'
Router.onBeforeAction requireLogin, { only: 'new' }