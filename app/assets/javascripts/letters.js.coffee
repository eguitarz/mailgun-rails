$(document).on 'ready page:change', ()->
	$('#fileupload').fileupload
		dataType: 'json'
		done: (e, data)->
			$.each data.result.file, (index, file)->
				console.log file
				$('.filename').text file.original_filename
				$('body').append file.tempfile

	$('.open-file').click (e)->
		$('#fileupload').click()
		e.preventDefault()
		e.stopPropagation()