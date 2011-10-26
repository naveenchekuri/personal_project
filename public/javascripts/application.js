$(function() {
  $("#books th a, #books .pagination a").live("click", function() {
    $.getScript(this.href);
    return false;
  });
  $("#books_search input").keyup(function() {
    $.get($("#books_search").attr("action"), $("#books_search").serialize(), null, "script");
    return false;
  });
});
