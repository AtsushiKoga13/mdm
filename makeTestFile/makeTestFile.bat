@echo off
:: 作成するディレクトリのパスを指定
set TARGET_DIR=C:\Users\Atsushi Koga\Documents

:: 作成するテストファイルの名前
set TEST_FILE=testfile.txt

:: ディレクトリが存在するか確認し、存在しない場合は作成
if not exist "%TARGET_DIR%" (
    echo Directory "%TARGET_DIR%" does not exist. Creating it now...
    mkdir "%TARGET_DIR%"
)

:: テストファイルを作成
echo This is a test file. > "%TARGET_DIR%\%TEST_FILE%"

:: 作成結果を出力
if exist "%TARGET_DIR%\%TEST_FILE%" (
    echo Test file "%TEST_FILE%" has been created in "%TARGET_DIR%".
) else (
    echo Failed to create test file in "%TARGET_DIR%".
)

