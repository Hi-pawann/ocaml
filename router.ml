(* router.ml *)

type route = {
  path : string;
  handler : unit -> string;
}

let routes = ref []

let add_route path handler =
  routes := { path; handler } :: !routes

let find_handler path =
  List.fold_left (fun acc route ->
      if acc = None && route.path = path then
        Some (route.handler)
      else
        acc
    ) None !routes
