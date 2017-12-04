class Application

  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    resource = "/items/#{@@items.detect{|i| i.name == req.path.split("/").last}.name}" if @@items != []
    #binding.pry
    if req.path == resource

      200
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end
end
