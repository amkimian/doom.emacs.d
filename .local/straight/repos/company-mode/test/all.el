;;; all-tests.el --- company-mode tests  -*- lexical-binding: t -*-

;; Copyright (C) 2015, 2018  Free Software Foundation, Inc.

;; Author: Dmitry Gutov

;; This file is part of GNU Emacs.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <https://www.gnu.org/licenses/>.

(defvar company-test-path
  (file-name-directory (or load-file-name buffer-file-name)))

(require 'ert)

(dolist (test-file (directory-files company-test-path t "-tests.el$"))
  (unless (and (= emacs-major-version 24)
               (equal (file-name-base test-file) "capf-tests"))
    (load test-file nil t)))
