open Server 
open Router 
let ()= 
add_routes "/" (fun ()-> "<h1> welcome to ocamletta</h1>");
add_route "/about " (fun ()-> "<h1>about ocamlette</h1>");


let port = 8080 in 
Printf.printf "starting ocamletta :%d\n " port ;

Server.start port 
