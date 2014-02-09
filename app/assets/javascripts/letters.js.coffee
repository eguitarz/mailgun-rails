$(document).on 'ready page:change', ()->
	$('#fileupload').fileupload
		dataType: 'json'
		done: (e, data)->
			$.each data.result.file, (index, file)->
				$('.filename').text file.original_filename
				$('mail-body').text file.tempfile

	$('.open-file').click (e)->
		$('#fileupload').click()
		e.preventDefault()
		e.stopPropagation()