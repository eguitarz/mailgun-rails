$(document).on 'ready page:change', ()->
	$('#fileupload').fileupload
		dataType: 'json'
		done: (e, data)->
			$.each data.result.files, (index, file)->
				console.log file
				$('.filename').text file.name
				$('<p/>').text(file.name).appendTo(document.body)

	$('.open-file').click (e)->
		$('#fileupload').click()
		e.preventDefault()
		e.stopPropagation()