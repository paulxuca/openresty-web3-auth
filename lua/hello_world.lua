local signed_message = ngx.req.get_headers()["Signed-Message"];

ngx.say("<p>" .. signed_message .. "</p>");