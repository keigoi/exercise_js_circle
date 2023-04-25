open Js_of_ocaml

let start () =
  let canvas = Dom_html.createCanvas Dom_html.document in
  Dom.appendChild Dom_html.window##.document##.body canvas;
  canvas##.width := 300;
  canvas##.height := 300;
  let c = canvas##getContext Dom_html._2d_ in
  c##beginPath;
  c##arc 100. 100. 50. 0. (2. *. 3.14159) Js._false;
  c##stroke;
  ()

let () = 
  Dom_html.window##.onload := Dom_html.handler (fun _ -> 
    start ();
    Js._false
  )

