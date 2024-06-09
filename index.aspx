<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8" />
        <title>かんたんグルチャ</title>
        <link rel="icon" type="image/png" sizes="16x16" href="favicons/favicon-16x16.png" />
        <link rel="stylesheet" href="style.css" />
    </head>
    <body>
        <div class="header-area">
            <img src="pictures/dj_party_happy.png" id="img" alt="Image" />
            <h1>かんたんグルチャ</h1>
        </div>

        <div class="control-area">
            <div class="flexbox-container">
                <aside class="leftSide">チャット名つけない<br /></aside>
                <label class="switch">
                    <input type="checkbox" id="toggleChatNameBtn" onclick="toggleChatName()" />
                    <span class="slider"></span>
                </label>
                <aside class="rightSide">チャット名つける<br /></aside>
            </div>
            <br />
            <div class="flexbox-container">
                <aside class="leftSide">@tmc.twfr～ 付き<br /></aside>
                <label class="switch">
                    <input type="checkbox" id="toggleDelimiterBtn" onclick="toggleDelimiter()" />
                    <span class="slider"></span>
                </label>
                <aside class="rightSide">従業員コードのみ<br /></aside>
            </div>
        </div>

        <div class="input-area">
            <div class="input-group">
                <label for="chatName" style="display: none">チャット名</label>
                <input
                    type="text"
                    class="chatName"
                    id="chatName"
                    placeholder="チャット名は？"
                    style="display: none"
                />
            </div>
            <div class="input-group">
                <textarea
                    id="pasteArea"
                    class="pasteArea"
                    placeholder="・エクセルのリストから簡単にグルチャを作れます&#13;・任意の一列を shift + ctrl + v で値貼り付けしてね"
                ></textarea>
            </div>
            <div class="button-group">
                <button id="output_btn" onclick="processTable();">リンク生成</button>
                <button class="clear-button" id="clear_btn" onclick="clearPasteArea();">
                    クリア
                </button>
            </div>
        </div>

        <div class="output-area">
            <div id="output">
                <a href="#" id="generatedLink" class="button-link" style="display: none"></a>
            </div>
        </div>

        <script src="script.js"></script>
    </body>
</html>

