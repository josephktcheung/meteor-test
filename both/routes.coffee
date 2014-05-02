Router.configure {
  layoutTemplate: 'layout'
}

Router.map ->
  this.route('posts',    { path: '/',          controller: Posts.index });