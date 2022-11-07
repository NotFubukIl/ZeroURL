import puppy, std/[os, strutils]

echo "URL ?: "
var url: string = readLine(stdin)

proc main(url: string): void =
    var req = Request(
    url: parseUrl("https://cdpt.in/shorten?url=" & encodeUrlComponent(url))
    )

    var res = fetch(req)
    var text = res.body

    echo text

if not url.contains("http"):
    echo "Please, Put A Valid URL"
else: main(url)
