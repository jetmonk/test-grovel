(eval-when (:load-toplevel :execute)
  (asdf:operate 'load-op 'cffi-grovel))


(asdf:defsystem test-grovel
  :depends-on (cffi-grovel)
  :components
  ((:cffi-wrapper-file "wrappers" :soname "libtest-grovel")
   (:file "main" :depends-on ("wrappers"))))

