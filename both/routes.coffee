Router.configure {
  layoutTemplate: 'layout'
  loadingTemplate: 'loading'
  waitOn: ->
    Meteor.subscribe 'posts'
}

Router.map ->
  @.route 'posts',      { path: '/',           controller: Posts.index }
  @.route 'showPost',  { path: '/posts/:_id', controller: Posts.show  }
  @.route 'new', { path: '/submit',     controller: Posts.new   }
Router.onBeforeAction 'loading'