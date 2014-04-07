# TODO: do this with proper CSS
fixHeight = ->
  $('body > .row > aside').height($('body > .row').height())

$(window).load fixHeight
$ fixHeight
