class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new

    item = Item.new
    path = "items/#{item.name}"

    if req.path.match(path)
      
    end
  end
end