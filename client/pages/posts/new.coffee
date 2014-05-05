Template.newPost.helpers

Template.newPost.events
  'submit form': (e) ->
    e.preventDefault()
    post =
      url: $(e.target).find('[name=url]').val()
      title: $(e.target).find('[name=title]').val()
      message: $(e.target).find('[name=message]').val()

    Posts.create post, (error, id) ->
      if error
        alert error.reason
      Router.go 'showPost', { _id: id }

Template.newPost.rendered = ->