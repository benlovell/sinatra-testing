require "rubygems"
require "sinatra"

get "/" do
  <<-BODY
    <html>
      <head>
        <title>Home Page</title>
      </head>
      <body>
        <h1>Hello, world!</h1>
      </body>
      </html>
      BODY
end