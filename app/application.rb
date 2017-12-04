class Application

  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    path = "items/#{item.name}"
    binding.pry
    if req.path.match(path)
      200
    else
      404
    end
  end
end
