# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $("input#course").keyup( ->
    $.get($("#new_query").attr("action"), $("#new_query").serialize(), null, "script");
    false
  )
  $("#subject").change( ->
    $.get($("#new_query").attr("action"), $("#new_query").serialize(), null, "script");
    false
  )
