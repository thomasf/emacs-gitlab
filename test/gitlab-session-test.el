;;; gitlab-session-test.el --- Tests for Gitlab authentification

;; Copyright (C) Nicolas Lamirault <nicolas.lamirault@gmail.com>

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 2
;; of the License, or (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; if not, write to the Free Software
;; Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
;; 02110-1301, USA.

;;; Commentary:

;;; Code:

(require 'gitlab)

(ert-deftest test-open-session ()
  (let ((id (gitlab-login)))
    ;; (message "[gitlab] Session ID: %s" id)
    (should (not (s-blank? id)))
    (should (not (s-blank? gitlab-token-id)))))

(provide 'gitlab-session-test)
;;; gitlab-session-test.el ends here
