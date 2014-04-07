$ ->
  $('[data-tuktuk-modal]').click ->
    id = $(this).attr('data-tuktuk-modal')
    $("[data-tuktuk=modal]##{id}").addClass 'active'

  $('[data-tuktuk=modal] [data-modal=close]').click ->
    $(this).parents('[data-tuktuk=modal]').removeClass 'active'

