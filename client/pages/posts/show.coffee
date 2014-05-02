Template.showPosts.helpers {
  domain: ->
    a = document.createElement 'a'
    a.href = @.url
    a.hostname
}

Template.showPosts.events {

}

Template.showPosts.rendered = ->