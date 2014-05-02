//  Iron Router - for useage see https://github.com/EventedMind/iron-router

Router.configure({
  layoutTemplate: 'layout'
});

Router.map(function () {

  // delete me and replace with your homepage
  this.route('homeTemp', {path: '/'})

  // posts routes
  this.route('posts',    { path: '/posts',          controller: Posts.index });
  this.route('newPost',  { path: '/posts/new',      controller: Posts.new });
  this.route('showPost', { path: '/posts/:id',      controller: Posts.show });
  this.route('editPost', { path: '/posts/edit/:id', controller: Posts.edit });

});//<end-routes>