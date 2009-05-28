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

get "/register" do
  <<-BODY
    <html>
      <body>
        <form action="/register" method="post">
          <label>Email <input type="textbox" name="email" /></label>
          <label>Username <input type="textbox" name="username" /></label>
          <label>Password <input type="password" name="password" /></label>
          <input type="submit" value="register" />
        </form>
      </body>
    </html>
  BODY
end

post "/register" do
  "Your account was created"
end
