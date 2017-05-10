ready = ->
  $(".growl-msg").each ->
    type=$(this).data('type') || 'info'
    if type == 'danger'
      $.growl $(this).html(),
        type: type
        delay: 0
    else
      $.growl $(this).html(),
        type: type
$(document).ready ready
$(document).on 'page:load', ready
$(document).on 'turbolinks:load', ready
# =======
# $(document).on 'page:load', ready
# >>>>>>> 4681a207acfef92ab970235c4f96b4c3944db4e7
