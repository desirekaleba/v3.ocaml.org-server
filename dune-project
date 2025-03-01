(lang dune 2.8)

(name ocamlorg)

(documentation "https://ocaml.github.io/v3.ocaml.org-server/")

(source
 (github ocaml/v3.ocaml.org-server))

(license ISC)

(authors
 "Thibaut Mattio"
 "Lucas Pluvinage"
 "Patrick Ferris"
 "Ashish Agarwal"
 "Kanishka Azimi"
 "Richard Davison")

(maintainers "Thibaut Mattio" "Patrick Ferris")

(generate_opam_files true)

(using mdx 0.1)

(package
 (name ocamlorg-data)
 (synopsis "OCaml.org data library")
 (description
  "The ocamlorg-data library defines types for the different data types we store in this repository. It aims to be as platform agnostic as possible, that means just types no dependencies that could prevent someone from using the library.")
 (depends
  (mdx
   (and
    (>= 1.10.0)
    :with-test))))

(package
 (name ocamlorg)
 (synopsis "Server-side of the next version of the ocaml.org website")
 (description
  "ocamlorg is a Dream-based server for the next version of the ocaml.org website.\nIt serves the OCaml packages pages and their documentation by using the data available at https://docs-data.ocaml.org/ and serves the static files generated from the NextJS application at https://github.com/ocaml/v3.ocaml.org.")
 (depends
  (ocaml
   (>= 4.08.0))
  dune
  (ocamlorg-data
   (= :version))
  cohttp
  cohttp-lwt-unix
  bos
  crunch
  dream
  dream-cli
  dream-accept
  dream-encoding
  fpath
  fmt
  logs
  omd
  opam-format
  timedesc
  yojson
  lwt
  brr
  rpclib
  rpclib-lwt
  ppx_deriving_rpc
  (js_of_ocaml
   (>= 3.11.0))
  (js_of_ocaml-ppx
   (>= 3.11.0))
  (js_of_ocaml-compiler
   (>= 3.11.0))
  (js_of_ocaml-tyxml
   (>= 3.11.0))
  (js_of_ocaml-toplevel
   (>= 3.11.0))
  (alcotest :with-test)))
