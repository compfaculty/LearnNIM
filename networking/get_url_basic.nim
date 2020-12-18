import asyncdispatch, httpclient

proc asyncProc(): Future[string] {.async.} =
  var client = newAsyncHttpClient()
  result = await client.getContent("http://example.com")

echo waitFor asyncProc()