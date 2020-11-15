using Genie.Router, Genie.Requests, Genie.Renderer.Json
using Life

route("/") do
  serve_static_file("welcome.html")
end

route("/life", method = POST) do
  jsonpayload() |> 
  b -> hcat(b...) |> 
  Life.next_board |> 
  json
end


