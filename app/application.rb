class Application

  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    resource = "/#{@@items.detect{|i| i.name == req.path.split("/").last}}"

    if req.path == resource
      binding.pry
      200
    else
      resp.write "Route not found"
      404
    end

    resp.finish
  end
end
