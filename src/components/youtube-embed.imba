tag youtube-embed

	prop title = "Modal title"
	prop showModal = false
	prop inline = false	
	prop video

	css iframe w: 100% min-height: 320px max-width: 600px

	def pressedIcon
		showModal = true

	<self[d: flex fld: column]>
		if showModal
			<.modal[d: flex]>
				<.modal-background>
				<.modal-card>
					<header.modal-card-head>
						<p.modal-card-title> title
						<button.delete aria-label="close" @click.{showModal=false}>
					<section.modal-card-body>
						<.is-video>
							<iframe.self-center src=video allowFullScreen="allowFullScreen" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture; fullscreen;">
		elif inline
			<a href=video target="_target"> title
			<button[c: red bg: transparent p: 2] @click.pressedIcon>
				<span.icon>
					<i .fa-2x .fab.fa-youtube>
		else
			<.is-video>
				<iframe.self-center src=video allowFullScreen="allowFullScreen" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture; fullscreen;">