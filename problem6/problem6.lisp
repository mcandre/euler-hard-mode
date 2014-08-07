#!/usr/bin/env sh
#|
exec clisp -q -q $0 $0 ${1+"$@"}
|#

(defun sum-of-squares (n)
	(loop for i from 1 to n summing (* i i)))

(defun square-of-sum (n)
	(let ((sum (loop for i from 1 to n summing i)))
		(* sum sum)))

(defun problem6-main (args)
	(let* ((n 100)
				 (a (sum-of-squares n))
				 (b (square-of-sum n)))

		(format t "~a~%" (- b a)))

	(exit 0))

(let ((args
      #+clisp ext:*args*
      #+sbcl sb-ext:*posix-argv*
      #+clozure (ccl::command-line-arguments)
      #+gcl si:*command-args*
      #+ecl (loop for i from 0 below (si:argc) collect (si:argv i))
      #+cmu extensions:*command-line-strings*
      #+allegro (sys:command-line-arguments)
      #+lispworks sys:*line-arguments-list*
			))

  (if (member (pathname-name *load-truename*)
      args
      :test #'(lambda (x y) (search x y :test #'equalp)))
			(problem6-main args))))
