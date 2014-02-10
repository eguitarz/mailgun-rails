$(document).on 'ready page:change', ()->
	$('#fileupload').fileupload
		dataType: 'json'
		done: (e, data)->
			$.each data.result.file, (index, file)->
				window.f = file
				$('.filename').text file.original_filename
				$('.mail-body').text file.tempfile.join('')

	$('.open-file').click (e)->
		$('#fileupload').click()
		e.preventDefault()
		e.stopPropagation()