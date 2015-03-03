#|
  This file is a part of Verbose
  (c) 2013 Shirakumo http://tymoon.eu (shinmera@tymoon.eu)
  Author: Nicolas Hafner <shinmera@tymoon.eu>
|#

(in-package #:cl-user)
(push :verbose *features*)
(defpackage #:verbose
  (:nicknames #:v #:org.shirakumo.verbose)
  (:use :cl :bordeaux-threads :piping :split-sequence)
  (:shadow #:LOG #:ERROR #:WARN #:DEBUG #:TRACE)
  ;; controller.lisp
  (:export
   #:*global-controller*
   #:*muffled-categories*
   #:controller
   #:with-controller-lock
   #:pass
   #:shared-instance
   #:with-muffled-logging)
  ;; default.lisp
  (:export
   #:make-standard-global-controller
   #:remove-global-controller
   #:restart-global-controller
   #:repl-level
   #:repl-categories
   #:add-repl-category
   #:remove-repl-category
   #:output-here
   #:add-pipe)
  ;; message.lisp
  (:export
   #:*levels*
   #:log-object
   #:message
   #:message-time
   #:message-thread
   #:message-level
   #:message-category
   #:message-categories
   #:message-content
   #:message-visible
   #:log-message
   #:log
   #:FATAL
   #:SEVERE
   #:ERROR
   #:WARN
   #:INFO
   #:DEBUG
   #:TRACE)
  ;; pipes.lisp
  (:export
   #:*repl-faucet-timestamp*
   #:format-message
   #:repl-faucet
   #:make-cron-interval
   #:rotating-log-faucet
   #:time-format
   #:faucet-file
   #:current-file
   #:interval
   #:rotate-log
   #:update-interval
   #:stop-rotation
   #:category-filter
   #:categories
   #:category-tree-filter))
