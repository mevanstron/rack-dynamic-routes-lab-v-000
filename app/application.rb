class Application

  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    #path = "items/#{item.name}"
    
    path = "/#{@@items.detect{|i| i.name == req.path.split("/").last}}"
    
    if req.path.match(path)
      200
    else
      404
    end
  end
end
