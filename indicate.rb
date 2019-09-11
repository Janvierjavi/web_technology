# Launch CGI program to receive and return data
require 'cgi'
cgi = CGI.new
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  get = cgi['input']
  "<html>
    <body><b>
      <p>The received string is as follows</p>
      <p>String：#{get}</p></b>
      <button> <a href='/test' >back</button>
    </body>
  </html>"
}