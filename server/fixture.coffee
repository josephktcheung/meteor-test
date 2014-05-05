if db.posts.find().count() == 0
  db.posts.insert {
    title: 'Introducing Telescope'
    author: 'Sacha Greif'
    url: 'http://sachagreif.com/introducing-telescope/'
  }
  db.posts.insert {
    title: 'Meteor'
    author: 'Tom Coleman'
    url: 'http://meteor.com'
  }
  db.posts.insert {
    title: 'The Meteor Book'
    author: 'Tom Coleman'
    url: 'http://themeteorbook.com'
  }