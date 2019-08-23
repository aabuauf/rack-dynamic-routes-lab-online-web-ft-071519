require 'pry'

class Application
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    price = 0
<<<<<<< HEAD
    item = req.path.split("/items/").last
    if req.path=="/items/" + item
      Item.all.each do |line|
        if item == line.name
          price = line.price
         
        end
      end
      if price == 0 
        resp.write  "Item not found"
        resp.status = 400
      else
         resp.write price
      end
=======
    if req.path.match(/items/)
      item = req.path.split("/items/").last
      Item.all.each do |line|
        if item == line.name
          price = line.price
        end
      end
      if price == 0 
        
>>>>>>> ec68b2aab5426d62079aef3dce783d41e8bfcf15
    else
      resp.write "Route not found"
      resp.status = 404
    end
 
    resp.finish
  end
end