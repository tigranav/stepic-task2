
def app(environ, start_response):
#	data = b"Hello, World!\n"
#	for key in environ:
#		data=data+"\n"+key
#	data=data+"\n"+environ["QUERY_STRING"]
	data = ''
	q=environ["QUERY_STRING"]
	for kv in q.split('&'):
		data=data+kv+"\n"
	start_response("200 OK", [("Content-Type", "text/plain"), ("Content-Length", str(len(data))) ])
	return iter([data])

