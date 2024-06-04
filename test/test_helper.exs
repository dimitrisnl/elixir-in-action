db_settings = Application.fetch_env!(:todo, :database)
db_folder = Path.join(Keyword.fetch!(db_settings, :db_folder), "nonode")

File.rm_rf!(db_folder)
File.mkdir_p!(db_folder)

ExUnit.start()
