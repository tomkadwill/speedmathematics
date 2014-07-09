$(document).on('change','#chapter',function(e){
  var form = $(this).closest('form');
  var value = $(this).val();
  var url = form.attr('action');

  var replaceDataBox = function(response) {
  	var content = $('#content');
    content.replaceWith(response);
  }
  $.get(url, replaceDataBox);
});

$(document).on('click', '#content', function(e){
	var url = 'question/answer';
	var question = $.trim($(this).text());

  var replaceDataBox = function(response) {
  	var content = $('#content');
    content.replaceWith(response);
  }
	$.get(url, {question: question}, replaceDataBox)
});

$(document).on('click', '#contentAnswer', function(e){
  var url = 'question/next';

  var replaceDataBox = function(response) {
    var content = $('#contentAnswer');
    content.replaceWith(response);
  }
  $.get(url, replaceDataBox)
});