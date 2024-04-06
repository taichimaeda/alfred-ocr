import sys

from ocrmac import ocrmac

path = sys.argv[1]
annotations = ocrmac.OCR(path).recognize()

for annotation in annotations:
    print(annotation[0])
