local supported_nids = ec:get_curves_id()

local pub, err = ec:new({public_key = "0x31eC10983998b0c269160b80b8b08B5a72CA0190"})

if not pub then
    ngx.say('new ec err: ', err)
    
    return ngx.exit(500)
end

local flag, err = public:verify("Sign to start streaming.", sig)

if err then
    ngx.say('verify with ec err: ', err)

    return ngx.exit(500)    
end

ngx.say(flag)