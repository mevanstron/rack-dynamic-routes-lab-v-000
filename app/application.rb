class Application

  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    binding.pry
    resource = "/#{@@items.detect{|i| i.name == req.path.split("/").last}}"

    if req.path.match(resource)
      200
    else
      404
    end
  end
end
