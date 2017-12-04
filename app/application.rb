class Application
  def call
    resp = Rack::Response.new
    req = Rack::Request.new

    item = Item.new
    path = "items/#{item.name}"

    if req.path.match(path)
      200
    else
      404
    end
  end
end
