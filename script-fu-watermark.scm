;GIMP plugin script
;removes fill from watermark with rgb(166,166,166) grey fill
;processes a single layer at a time
(define (script-fu-remove-watermark image layer)
  (plug-in-exchange 0 image layer 166 166 166 255 255 255 0 0 0)
  (gimp-displays-flush)
)

(script-fu-register
  "script-fu-remove-watermark"
  "<Image>/Edit/Remove Watermark Fill"
  "Removes the grey watermark fill to make PDFs more printer friendly."
  "blastomussa"
  "blastomussa"
  "May 2020"
  "RGB*, GRAY*"
  SF-IMAGE	"Image" 0
  SF-DRAWABLE	"Layer" 0
)
