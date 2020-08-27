export def upload_path hostname
	if hostname.includes('localhost')
		return "http://localhost:8000/f/upload"
	elif hostname.includes('dev')
		return "/f-dev/upload"
	else
		return "/f/upload"

# the original localhost was 2020 here 
# it worked for the localhost:8000 when I've run docker on 8000:8080