class App
  def call(env)
    ['200', {'Content-Type' => 'text/plain'}, [ENV.fetch("DATABASE_URL")]]
  end
end
