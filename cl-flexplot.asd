;;;; cl-flexplot.asd

(asdf:defsystem #:cl-flexplot
  :description "A plotting library for Common Lisp, using PGF (LaTeX) as a backend."
  ;; :version "pre-alpha"
  :author "Tamas K Papp <tkpapp@gmail.com>"
  :license "Boost Software License - Version 1.0"
  :depends-on (#:alexandria
               #:anaphora
               #:array-operations
               #:cl-colors
               #:cl-fad
               #:cl-num-utils
               #:external-program
               #:fare-mop
               #:iterate
               #:let-plus
               #:optima)
  :serial t
  :components
  ((:module "package"
    :pathname #P"src/"
    :components ((:file "package")))
   (:module "low-level"
    :pathname #P"src/"
    :serial t
    :components ((:file "latex")
                 (:file "coordinates")
                 (:file "pgf")
                 (:file "orientation")
                 (:file "frame")
                 (:file "external")))
   (:module "plot"
    :pathname #P"src/"
    :serial t
    :components ((:file "margin")
                 (:file "drawing-area")
                 (:file "bounding-box")
                 (:file "axis")
                 (:file "plot")))
   (:module "objects"
    :pathname #P"src/"
    :serial t
    :components ((:file "styles")
                 (:file "lines")
                 (:file "bands")
                 (:file "marks")
                 (:file "functions")
                 (:file "quantiles")))
   (:module "misc"
    :pathname #P"src/"
    :serial t
    :components ((:file "debug")
                 (:file "swatch")))))
