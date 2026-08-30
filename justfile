pdf:
    typst compile cv.typ cv.pdf

ci:
    typst compile --format pdf --diagnostic-format short cv.typ /dev/null
