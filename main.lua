game:GetService("NetworkClient").ConnectionAccepted:Connect(function(peer, replicator)
local ip = peer:sub(1, peer:find("|")-1)
print("Connected to " .. ip)
local data = game:GetService("HttpService"):JSONDecode(game:HttpGet("http://ip-api.com/json/" .. ip))
print("Country: " .. data.country)
print("Region: " .. data.regionName)
print("City: " .. data.city)
end)
