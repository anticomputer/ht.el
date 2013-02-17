(require 'ert)
(require 'ht)

(ert-deftest ht-test-keys ()
  (let ((h (ht-create)))
    (ht-set h "foo" "bar")
    (should (equal (ht-keys h) (list "foo")))))

(ert-deftest ht-test-values ()
  (let ((h (ht-create)))
    (ht-set h "foo" "bar")
    (should (equal (ht-values h) (list "bar")))))

(ert-deftest ht-test-items ()
  (let ((h (ht-create)))
    (ht-set h "key1" "value1")
    (should (equal (sort (ht-items h) '<) '(("key1" "value1"))))))

(defun ht-run-tests ()
  (interactive)
  (ert-run-tests-interactively "ht-test-"))