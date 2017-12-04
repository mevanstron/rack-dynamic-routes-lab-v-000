class Application

  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    #binding.pry
    resource = "/#{@@items.detect{|i| i.name == req.path.split("/").last}}"

    if req.path == resource
      200
    else
      "Route not found"
      404
    end

    resp.finish
  end
end
