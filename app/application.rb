class Application

  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    item = @@items.detect{|i| i.name == req.path.split("/").last}
    resource = "/items/#{item.name}" if @@items != []
    #binding.pry
    if req.path == resource
      resp.write "#{item.price}"
      200
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end
end
