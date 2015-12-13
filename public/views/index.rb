<!DOCTYPE html>
<html>
  <head>
    <title>Basic HTML Page</title>
    <link rel="stylesheet" href="home.css">
  </head>

  <body>
    <h1>TODO list</h1>

    <ul>
      <% @tasks.each do |task| %>
        <li><a href="/tasks/<%= task["name"] %>"><%= tas["name" %></a></li>
      <% end %>
    </ul>
  </body>
</html>
