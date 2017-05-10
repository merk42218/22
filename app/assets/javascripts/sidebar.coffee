ready = ->
  $("#sidebar-toggle").on 'click', ->
    id=$(this).children('.sidebar-toggle').attr 'href'
    $(id).toggleClass 'toggled'
    false
togglef = ->
  $(".with-subitems").on 'click', ->
    $(this).parent().children(".subitems").toggle(300)
    false
$(document).ready ready
$(document).on ready
$(document).on 'page:load', ready
$(document).ready togglef
$(document).on togglef
$(document).on 'page:load', togglef
$(document).on 'turbolinks:load',ready
# =======
# $(document).on 'page:load', ready
# $(document).ready togglef
# $(document).on 'page:load', togglef
# >>>>>>> 4681a207acfef92ab970235c4f96b4c3944db4e7
