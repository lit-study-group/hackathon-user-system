$ ->
  $('[data-tuktuk-modal]').click ->
    id = $(this).attr('data-tuktuk-modal')
    $("[data-tuktuk=modal]##{id}").addClass 'active'
    $("##{id} input[type=text]").first().focus()

  $('[data-tuktuk=modal] [data-modal=close]').click ->
    $(this).parents('[data-tuktuk=modal]').removeClass 'active'

