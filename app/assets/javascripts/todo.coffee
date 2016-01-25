# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ -> # wait for the DOM to be loaded
  # if (numer of completed > 0)
    # show hideCompletedBtn
  if $('.completed').length > 0
    $('#hideCompletedBtn').show()

  $('#hideCompletedBtn').on 'click', (e) ->
    $('span.completed').closest('div.row').hide()
    $('#hideCompletedBtn').hide()
    $('#showCompletedBtn').show()

  $('#showCompletedBtn').on 'click', (e) ->
    $('span.completed').closest('div.row').show()
    $('#showCompletedBtn').hide()
    $('#hideCompletedBtn').show()



