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
return hwid3
