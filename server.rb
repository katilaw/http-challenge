require "sinatra"
require "pg"

def db_connection
  begin
    connection = PG.connect(dbname: "todo")
    yield(connection)
  ensure
    connection.close
  end
end

get "/tasks" do
  @tasks = db_connection { |conn| conn.exec("SELECT name FROm tasks") }
  erb :index
end

post "/tasks" do
  task = params["task_name"]
  db_connection do |conn|
    conn.exec_params("INSERT INTO tasks (name) VALUES ($1)", [task])
  end

  redirect "/tasks"
end
