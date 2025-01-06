@echo off
:: テストファイルのパスを設定
set TEST_FILE=%~dp0test_file.txt

:: テストファイルを作成
echo This is a test file. > %TEST_FILE%

:: テストファイルの内容を表示
type %TEST_FILE%

:: テストファイルの存在を確認
if exist %TEST_FILE% (
    echo Test file created successfully.
) else (
    echo Failed to create test file.
)

:: 終了
exit