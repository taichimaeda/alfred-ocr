# 🎩 Alfred OCR: Native OCR and LaTeX Recognition with Alfred

Alfred OCR is an Alfred workflow that allows you to perform _both_ text and LaTeX recognition from screenshots. It makes use of the following OCR technologies for text and LaTeX:

- Text recognition powered by MacOS's native OCR features: [ocrmac](https://github.com/straussmaximilian/ocrmac)
- LaTeX recognition powered by `pix2tex`, a ViT model for LaTeX: [pix2tex](https://github.com/lukas-blecher/LaTeX-OCR)

Text recognition tends to be pretty quick (usually within a second), while LaTeX recognition can take a bit longer (mostly within 5 seconds). The workflow will notify you when the recognition is complete.

I have considered using other models for LaTeX recognition, such as [nougat](https://github.com/facebookresearch/nougat), but `pix2tex` is by far the most accurate and reliable model I have found so far. If you have any suggestions for other models, please let me know!

## Demo

### Text OCR

https://github.com/taichimaeda/alfred-ocr/assets/28210288/725a5dc8-0670-436d-b66b-a91fe4c8d39c

### LaTeX OCR

https://github.com/taichimaeda/alfred-ocr/assets/28210288/419d27a1-fd18-489b-9761-ea08d48a6afa

## Getting Started

First of all, make sure to:

1. Enable Alfred Workflows in the Alfred Preferences.
2. Enable notifications for Alfred in System Preferences.

Alfred OCR depends on `ocrmac` and `pix2tex` Python packages.
You can either install them using Python installations via Homebrew, `asdf` or `pyenv`:

```bash
pip install -r requirements.txt
```

This may take a while, as `pix2tex` requires a lot of ML dependencies to be installed. Sit back and relax!

1. Download `alfred-ocr.alfredworkflow` from this repository.
2. Navigate to **Alfred Prefrences** > **Workflows**.
3. Drag & drop the workflow you have just downloaded.
4. You're all set!.

If you have installed Python via none of Homebrew, `asdf` or `pyenv`, you will need to setup path manually.

1. Click "Run Script" objecct labelled as `ocr-text.sh` and `ocr-latex.sh`.
2. Prepend script to setup `PATH` and perform other initialisations.

<img width="1792" alt="Screenshot 2024-04-06 at 17 24 22" src="https://github.com/taichimaeda/alfred-ocr/assets/28210288/998704eb-028e-40ad-8156-7f04bf7281ab">
