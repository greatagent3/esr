@echo off
git rev-list HEAD >git.txt
python27 makehash.py
python27 sign.py
del /f /s /q git.txt
del /f /s /q *.pyc
del /f /s /q *.pyo
pause
git config --global push.default matching
git config core.autocrlf false
git init
git add --all .
git add -u
git commit -m"bat"
git push https://code.google.com/p/wwqgtxx.autoupdate/ +master
pause