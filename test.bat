@echo off
:: 特定のディレクトリを設定
set TARGET_DIR=C:¥Users

:: テストファイルのパスを設定
set TEST_FILE=%TARGET_DIR%\test_file.txt

:: ディレクトリが存在するか確認し、存在しない場合は作成
if not exist %TARGET_DIR% (
    mkdir %TARGET_DIR%
)

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