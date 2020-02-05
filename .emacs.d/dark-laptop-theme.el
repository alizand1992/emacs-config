(deftheme dark-laptop
  "Created 2016-09-16.")

(custom-theme-set-faces
 'dark-laptop
 '(mouse ((t (:foreground "sienna1"))))
 '(cursor ((t (:background "yellow"))))
 '(border ((t (:foreground "black"))))
 '(bold ((t (:bold t))))
 '(bold-italic ((t (:italic t :bold t))))
 '(font-lock-builtin-face ((t (:foreground "LightSteelBlue"))))
 '(font-lock-comment-face ((t (:foreground "OrangeRed"))))
 '(font-lock-constant-face ((t (:foreground "Aquamarine"))))
 '(font-lock-function-name-face ((t (:foreground "LightSkyBlue"))))
 '(font-lock-keyword-face ((t (:foreground "Cyan"))))
 '(font-lock-preprocessor-face ((t (:foreground "Aquamarine"))))
 '(font-lock-string-face ((t (:foreground "LightSalmon"))))
 '(font-lock-type-face ((t (:foreground "PaleGreen"))))
 '(font-lock-variable-name-face ((t (:foreground "LightGoldenrod"))))
 '(font-lock-warning-face ((t (:bold t :foreground "Pink"))))
 '(highlight ((t (:background "darkolivegreen"))))
 '(italic ((t (:italic t))))
 '(mode-line-buffer-id ((t (:background "white" :foreground "black"))))
 '(region ((t (:background "blue"))))
 '(isearch ((t (:background "blue"))))
 '(secondary-selection ((t (:background "darkslateblue"))))
 '(underline ((t (:underline t))))
 '(widget-button ((t (:bold t))))
 '(widget-button-pressed ((t (:foreground "red"))))
 '(widget-documentation ((t (:foreground "lime green"))))
 '(widget-field ((t (:background "dim gray"))))
 '(widget-inactive ((t (:foreground "light gray"))))
 '(widget-single-line-field ((t (:background "dim gray"))))
 '(default ((t (:background "black" :foreground "white")))))

(provide-theme 'dark-laptop)