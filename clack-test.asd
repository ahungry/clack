#|
  This file is a part of Clack package.
  URL: http://github.com/fukamachi/clack
  Copyright (c) 2011 Eitaro Fukamachi <e.arrows@gmail.com>

  Clack is freely distributable under the LLGPL License.
|#

#|
  Clack.Test - Testing Clack Applications.

  Author: Eitaro Fukamachi (e.arrows@gmail.com)
|#

(in-package :cl-user)
(defpackage clack-test-asd
  (:use :cl :asdf))
(in-package :clack-test-asd)

(defsystem clack-test
  :version "0.1.2"
  :author "Eitaro Fukamachi"
  :license "LLGPL"
  :depends-on (:clack
               :cl-syntax
               :cl-syntax-annot
               :prove
               :flexi-streams
               :dexador)
  :components ((:file "src/contrib/test")
               (:file "src/contrib/test/suite" :depends-on ("src/contrib/test")))
  :description "Testing Clack Applications.")
