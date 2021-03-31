-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2021-03-31 10:56:57
-- サーバのバージョン： 10.4.17-MariaDB
-- PHP のバージョン: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `md_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `md_table`
--

CREATE TABLE `md_table` (
  `id` int(11) NOT NULL,
  `u_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `contents` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `md_table`
--

INSERT INTO `md_table` (`id`, `u_id`, `title`, `contents`) VALUES
(25, 'morikawa', 'JSON', '## JSON\r\n* JSのオブジェクト記法を元にしたデータ方式\r\n* 変数では他言語にデータを渡せない→JSON形式の**文字列**に変換することで可能に\r\n\r\n### オブジェクト値の書式\r\n```js\r\n{ \"Name\" : \"JsonData\", \"Desc\" : \"JavaScript Object Notation\", \"UseInt\" :1 , \"UseBool\" : false, \"UseArray\" : [1,2,3,4,5]}\r\n\r\n{\r\n\"Name\" : \"JsonData\",\r\n\"Desc\" : \"JavaScript Object Notation\",\r\n\"UseInt\" : 1,\r\n\"UseBool\" : false,\r\n\"UseArray\" : [\r\n		1,\r\n		2,\r\n		3,\r\n		4,\r\n		5	\r\n	]\r\n}\r\n```\r\n\r\n### それぞれのプログラミング言語で、JSONを扱うための関数\r\n* JavaScript \r\n JSONの生成 : `JSON.stringfiy()`\r\n JSONの読み込み : `JSON.parse()`\r\n * PHP\r\n JSONの生成 : `json_encode()`\r\n JSONの読み込み : `json_decode() `\r\n\r\n```js\r\nconst  a = [];\r\nlet  h1 = { name:  \"taro\", sex:  \"man\" };\r\nlet  h2 = { name:  \"hana\", sex:  \"woman\" };\r\nlet  h3 = { name:  \"kota\", sex:  \"man\" };\r\na.push(h1, h2, h3);\r\n\r\nlet  b = JSON.stringify(a);\r\nconsole.log(b, \"JSON文字列に変換\");\r\n\r\nlet  c = JSON.parse(b);\r\nconsole.log(c, \"オブジェクト変数に変換\");\r\n```\r\n\r\n## getJSON\r\najaxをJSON用に使いやすくした関数\r\n```js\r\n// 他サイトのJSONデータを取得する関数\r\n$.getJSON(\r\n	\"http://hoge.com/hoge.json\",\r\n	function(data){\r\n		console.dir(data);\r\n	}\r\n);\r\n```\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n'),
(26, 'yamazaki', 'yamazaki', 'teasreg'),
(27, 'morikawa', 'PHP_関数', '## `mt_rand(1,5)` : 乱数\r\n```\r\nmt_rand(1,5); //1～5の乱数\r\n```\r\n\r\n## ` isset()` : 変数がセットされているか検査\r\n```\r\n$val = \'hoge\';\r\nif(isset($val) === true){\r\n	echo \'$valに文字列hogeが入っている\'\r\n}\r\n```\r\n\r\n## `str_replace()` : 文字列の置き換え\r\n```\r\nstr_replace(ターゲット文字,置き換え文字,元の文字列);\r\n```\r\n```\r\n$base = \'PHP5_PHP7_PHP8\';\r\n$str = str_replace(\'PHP5\',\'PHP5.5\',$base);\r\necho $str;\r\n//=> PHP5.5_PHP7_PHP8\r\n```\r\n\r\n## `explode()` : 文字列を配列に分割\r\n分割された文字列は**配列として返される**\r\n```\r\nexplode(区切り文字,入力文字)\r\n```\r\n```\r\n$str = \"red/blue/yellow/green\";\r\n$colors = explode(\"/\", $str);\r\nvar_dump($colors);\r\n//=> array(4) { [0]=> string(3) \"red\" [1]=> string(4) \"blue\" [2]=> string(6) \"yellow\" [3]=> string(5) \"green\" }\r\n```\r\n\r\n## `include()` : 外部ファイルを読み込む\r\n```\r\ninclude(‘hoge.html’);\r\n```\r\n\r\n## `date()` : 時間を取得\r\n年`Y`、時`H`のみ大文字で表記\r\n```\r\necho  date(\'Y/m/d H:i:s\');\r\necho  date(\'Y年m月d日 H:i:s\');//日本語を挿入出来る\r\n```\r\nPHPはHTML/CSSを作成出来るので時間単位で表示を変更出来る\r\n```\r\n\r\n$d = date(\'s\');\r\nif($d >= 30){\r\n	echo \'<p style=\"color: red\">30以上</p>\';\r\n}else{\r\n	echo \'<p style=\"color: green\">29以下</p>\';\r\n}\r\necho \'現在\'.$d.\'秒\';\r\n```'),
(28, 'morikawa', '欲しい物', '* MACBOOK\r\n* コーヒー\r\n* サンダル'),
(29, 'morikawa', 'CSS_アニメーション', '## Transition\r\n```\r\n-webkit-transition: all .3s;\r\n-moz-transition: all .3s;\r\ntransition: all .3s;\r\n```\r\n\r\n## 回転\r\n```\r\n-webkit-transform: rotate(-25deg);\r\n-moz-transform: rotate(-25deg);\r\n-ms-transform: rotate(-25deg);\r\ntransform: rotate(-25deg);\r\n```\r\n\r\n## 拡大\r\n```\r\n-webkit-transform: scale(1.2);\r\n-moz-transform: scale(1.2);\r\n-ms-transform: scale(1.2);\r\ntransform: scale(1.2);\r\n```'),
(30, 'tanaka', '正規表現', '\r\n## 正規表現(Regular expression)\r\nいくつかの文字列をパターン化して記号で表現する記法。パターンを指定して、文字列を効率よく検索・置換する。\r\n\r\n### 作成方法\r\n#### 正規表現リテラル\r\n正規表現のパターンを直接指定する「リテラル」を使った方法。JavaScriptでは`/・・・/`と囲むことで、その中身は正規表現として認識される。\r\n```\r\nvar hoge = /^a/;\r\n// 先頭の文字が「ab」から始まるものにマッチ\r\n```\r\n#### RegExpオブジェクトのコンストラクタ関数\r\nRegExpコンストラクタに正規表現のテキストをつけることにより、そのパターンにマッチする正規表現オブジェクトを生成\r\n```\r\nvar reg = new RegExp(\'ab\');\r\n```\r\n\r\n### 特殊文字4つのパターン\r\n特殊文字をどれだけ知っているかで**正規表現を使う幅が広がって**より複雑な設定が可能になる。\r\n\r\n#### ◆特別な意味を表す文字パターン\r\n* `.` : 何らかの1文字  \r\n* `\\w` : 大文字小文字を含む英数字とアンダーバー(`a~z`,`A~Z`,`_`,`0~9`)\r\n	* `\\W` :  上記以外\r\n* `\\d` : 0〜9の数字  \r\n	* `\\D` : 上記以外\r\n* `\\s` : タブ、改行、改ページ、スペース\r\n	* `\\S` : 上記以外\r\n(例)「user01」〜「user99」\r\n```\r\n/user\\d\\d/\r\n```\r\n(例)「Hello Mike」「Hello Jane」\r\n```\r\n/Hellow\\s\\w\\w\\w\\w/\r\n```\r\n(例)「Hello 佐藤さん」「Hello 田中さん」\r\n```\r\n/Hello\\s..さん/\r\n```\r\n\r\n#### ◆繰り返しを表すパターン\r\n* `*` : 0文字以上の繰り返し  \r\n* `+` : 1文字以上の繰り返し  \r\n* `?` : 1文字が「ある」か「ない」か  \r\n* `{}` : 繰り返す回数を指定\r\n\r\n(例)「195」「335452」「24.5」\r\n```\r\n/\\d*/\r\n/\\d+/\r\n```\r\n1文字以上存在しないと検出できないのが「+」の特徴。ユーザーの未入力状態なども検出出来る。\r\n\r\n(例)「user08 user192 user2457」\r\n```\r\n/user\\d{3}/\r\n// user192\r\n```\r\n(例)「1 time」〜「9 times」※末尾に「s」が付くケースと付かないケース\r\n```\r\n/\\d\\stimes?/\r\n```\r\n\r\n#### ◆文字の位置を表すパターン\r\n* `^` : 行の先頭  \r\n* `$` : 行の末尾\r\n\r\n(例)「user1」〜「user9」※間違えて「myuser1」と入力したケース\r\n```\r\n/^user\\d/\r\n```\r\n行頭が「user」で始まる文字のみ抽出するので、「myuser1」だとエラーになり、「user1」であれば検出される。\r\n\r\n(例)「user1」〜「user9」※間違えて「user1abc」と入力したケース\r\n```\r\n/user\\d$/\r\n```\r\n末尾が`\\d`のみ場合のみ検出される。\r\n上記の例を組み合わせるとより正確に検出出来る。\r\n```\r\n/^user\\d$/\r\n```\r\n\r\n#### ◆任意の文字列を表すパターン\r\n* `[]` :  一連の文字セットを表す  \r\n* `()` : 文字パターンをグループ化する\r\n\r\n(例)HTMLの「`<a>`」「`<p>`」どちらかにマッチ\r\n```\r\n/<[ap]>/\r\n```\r\n(例)「`<a>`」「`<p>`」だけでなく「`<div>`」にもマッチするパターン\r\n```\r\n/<(a|p|div)>/\r\n```\r\n\r\n#### ◆エスケープ\r\n* `\\` : 次の文字をエスケープ(単なる文字として認証)する\r\n\r\n正規表現で扱う「特殊文字（`. * + ^ | [ ] ( ) ? $ { }`など）」は、パターンを作成する時に**エスケープ**しなければいけないケースがある。\r\n```\r\nvar url = \"https://www.fabia.com\",\r\n	reg = /https://www\\.fabia\\.com/;\r\n```\r\n\r\n\r\n### パターン例\r\n```\r\n/^\\d{3}-?\\d{4}$/\r\n```\r\n郵便番号の例\r\n「3桁の数値」「-（ハイフン、ない場合もある）」「4桁の数値」\r\n\r\n```\r\nvar postcode = \'123-4567\';\r\nvar result = postcode.match(/^\\d{3}-?\\d{4}$/);\r\n```'),
(31, 'tanaka', 'Cookie', '#### 保存\r\n```\r\n$.cookie(\'message\',\'こんにちは\')\r\n```\r\n\r\n#### 取得\r\n```\r\n$.cookie(\'message\')\r\n```\r\n引数が一つだけの場合はその引数で指定した名前のデータを引っ張ってくる\r\n\r\n#### 有効日数\r\n```\r\n$.cookie(\'massage\',\'こんにちは\',{expires:7});'),
(32, 'morikawa', 'JS_オブジェクト', '## オブジェクト : データのかたまり\r\n他の言語でいうところの連想配列と同じ概念\r\n\r\n### オブジェクトの定義\r\n1. `var obj = new Object();`\r\n2. `var obj = {};`\r\nオブジェクトを作成する式。`new`は演算子の一種で「新たにオブジェクトを作る」という意味。`{}`を使用した定義はオブジェクトリテラル(リテラル式)と呼ばれ、一般的である。\r\n```javascript\r\nvar obj = new Object();\r\nobj.a = \"test\";\r\nobj.b = 123;\r\nalert(obj.a); //test\r\nalert(obj.b); //123\r\n```\r\n`obj.a = \"test\"; obj.b = 123;` : 新しい値を追加。「objの中のaというkeyの値に\"test\"を代入する」というような意味\r\n```javascript\r\nvar obj = {};\r\nobj[\"test\"] = 0;\r\n```\r\n下記の記述で最初からオブジェクトにプロパティを持たせることが出来る。\r\n```javascript\r\nvar obj = {\r\n    \"aaa\": \"test\",\r\n    \"bbb\": 123\r\n};\r\n\r\nalert(obj.aaa); //test\r\nalert(obj.bbb); //123\r\n```\r\n\r\n### プロパティ : オブジェクトが持っている値のこと\r\n```\r\nオブジェクト.プロパティ名\r\n```\r\nオブジェクトとプロパティが`.`(ピリオド)でつながっている。あたらしく変数を付けるわけではないので`var`は付けない\r\n```javascript\r\nobj.aaa = \"test\";\r\n「obj.aaa」は「オブジェクトobjのプロパティaaa」\r\nobj.b = 123;\r\n「obj.b」は「オブジェクトobjのプロパティb」\r\n```\r\n別の書き方も可能\r\n```\r\nオブジェクト名[\"プロパティ名\"]\r\n```\r\n`obj.aaa` → `obj[\"aaa\"]`、`obj.b`→`obj[\"b\"]`と書ける。\r\n\r\n### オブジェクトの性質	\r\nオブジェクトは作成した後から変更可能\r\n```javascript\r\nvar a = {\"aaa\" : 10};\r\nvar b = a;\r\na.aaa = 5;\r\nalert(a.aaa); //5\r\nalert(b.aaa); //5\r\n```\r\n`var  b  =  a;`で`b`には`a`と同じオブジェクトが入ったため、オブジェクトが変更され「b=10」ではなく「b=5」となった。'),
(33, 'morikawa', 'PHP_クラス', '## クラス\r\n変数と関数の集まり\r\n**クラス ＝ 変数 ＋ 関数**\r\n設計書のようなもの\r\n```\r\nclass クラス名 {\r\n  //プロパティの宣言\r\n  public $変数名 = 値;\r\n \r\n  //メソッドの宣言\r\n  public function メソッド名(){\r\n    メソッド内処理...\r\n  }\r\n}\r\n```\r\nデータの保持と処理が可能\r\n\r\n\r\n## クラス内における変数と関数の名称\r\nクラス内に記述した**変数**は**プロパティ**と呼び、**関数**を**メソッド**と呼ぶ\r\n\r\n\r\n## アクセス修飾子\r\nどこからアクセスできるのかを指定する\r\nアクセス修飾子を指定しないと、public扱い\r\n* public どこからでもアクセス可能 \r\n* private クラス内のみからアクセス可能 \r\n* protected クラス内とそのクラスを継承した子クラスからアクセス可能 '),
(34, 'morikawa', 'PYTHON_配列', '### ◆配列(list)に関して\r\n* 要素を並べたデータ型、データのかたまり\r\n* 他言語ではarrayと呼ばれるがPythonではlistと呼ぶ\r\n	* arrayとの主な違いはlistは構成する各要素の型が違っても成り立つという点\r\n---\r\n### ◆`[]`、`list()`による配列の作成\r\n* リストは0個以上の要素をカンマ区切りで[ ]で囲って作成\r\n	* [ ]でリスト作成\r\n	```\r\n	>>> list = [\"iti\",\"ni\",\"san\"]\r\n	>>> a = list[2]\r\n	>>> a\r\n	\'san\'\r\n	```\r\n---\r\n### ◆リストの初期化\r\n```\r\nmylist = []\r\n```\r\n---\r\n### ◆リストの要素の書き換え\r\n```\r\n>>> gengo = [\"c++\",\"java\",\"ruby\"]\r\n>>> gengo[2] = \"python\"\r\n>>> print(gengo)\r\n[\'c++\', \'java\', \'python\']\r\n```\r\n---\r\n### ◆リストのスライス\r\n* 抽出する範囲を指定して要素を抽出するこどが出来る\r\n```\r\n>>> array = [\"a\",\"b\",\"c\",\"d\",\"e\",\"f\"]\r\n>>> array[0:3]\r\n[\'a\', \'b\', \'c\']\r\n>>> array[::2]\r\n[\'a\', \'c\', \'e\']\r\n>>> array[3:4]\r\n[\'d\']\r\n```\r\n---\r\n### ◆`append()` : 末尾に要素を追加\r\n```\r\nリスト変数.append(追加要素)\r\n```\r\n```\r\n>>> add = [1,2,3,4]\r\n>>> add.append(5)\r\n>>> add\r\n[1, 2, 3, 4, 5]\r\n>>> add.append(\'hoge\')\r\n>>> add\r\n[1, 2, 3, 4, 5, \'hoge\']\r\n```\r\n---\r\n### ◆`insert()` : インデックス番号を指定して要素を追加\r\n* append()は末尾に追加しか出来ないが、insert()はどこにでも追加出来る\r\n```\r\nリスト変数.insert(インデックス番号,追加要素)\r\n```\r\n```\r\n>>> animal = [\"dog\",\"cat\",\"mouse\",]\r\n>>> animal.insert(2,\"cow\")\r\n>>> animal\r\n[\'dog\', \'cat\', \'cow\', \'mouse\']\r\n```\r\n---\r\n### ◆`extend()` : 配列を結合\r\n```\r\n繋がられるリスト変数.extend(繋ぐリスト変数)\r\n```\r\n```\r\n>>> a = [1,2,3]\r\n>>> b = [4,5,6]\r\n>>> a.extend(b)\r\n>>> a\r\n[1, 2, 3, 4, 5, 6]\r\n```\r\n* +=を使っても結合可能\r\n```\r\n>>> c = [10,11,12]\r\n>>> d = [13,14,15]\r\n>>> c += d\r\n>>> c\r\n[10, 11, 12, 13, 14, 15]\r\n```\r\n### ◆`del` : インデックス番号を指定して要素を削除\r\n```\r\ndel リスト変数[インデックス番号]\r\n```\r\n```\r\n>>> fashion = [\"dress\",\"shoes\",\"pants\"]\r\n>>> del fashion[1]\r\n>>> print(fashion)\r\n[\'dress\', \'pants\']\r\n```\r\n---\r\n### ◆`remove()` : 直接要素を指定して要素を削除\r\n```\r\n>>> c = [\"c\",\"c++\",\"c#\"]\r\n>>> c.remove(\"c++\")\r\n>>> c\r\n[\'c\', \'c#\']\r\n```\r\n---\r\n### ◆`index()` : 配列内の要素のインデックス番号取得\r\n```\r\n>>> y = [\"pizza\",\"pan\",\"steke\",\"egg\",\"tea\"]\r\n>>> y.index(\"egg\")\r\n3\r\n```\r\n---\r\n### ◆`in` : 要素の存在の有無の確認\r\n```\r\n確認したい要素 in リスト変数\r\n```\r\n```\r\n>>> a = [\"apple\",\"age\",\"auto\"]\r\n>>> \"apple\" in a\r\nTrue\r\n>>> \"acne\" in a\r\nFalse\r\n```\r\n---\r\n### ◆`count()` : 同じ要素の個数計算\r\n```\r\nリスト変数.count(調べたい要素)\r\n```\r\n```\r\n>>> alfabet = [\"a\",\"a\",\"b\",\"b\",\"b\",\"b\",\"c\"]\r\n>>> alfabet.count(\"a\")\r\n2\r\n>>> alfabet.count(\"b\")\r\n4\r\n>>> alfabet.count(\"c\")\r\n1\r\n```\r\n---\r\n### `sort()` : リストをソートする\r\n```\r\n>>> demo = [8,15,4,2,6,10,1]\r\n>>> demo.sort()\r\n>>> demo\r\n[1, 2, 4, 6, 8, 10, 15]\r\n```\r\n* 降順でソートしたい場合`reverse = True`を付ける\r\n```\r\n>>> num = [0,1,2,3,4,5]\r\n>>> num.sort(reverse = True)\r\n>>> num\r\n[5, 4, 3, 2, 1, 0]\r\n```\r\n---\r\n### ◆`sorted()` : ソートされたリストのコピーを渡す\r\n```\r\n>>> a = [85,26,1,96,42,4,77,25,6,11,20]\r\n>>> s = sorted(a)\r\n>>> s\r\n[1, 4, 6, 11, 20, 25, 26, 42, 77, 85, 96]\r\n\r\n>>> b = [\"red\",\"blue\",\"white\",\"black\",\"pink\",\"yellow\"]\r\n>>> l = sorted(b)\r\n>>> l\r\n[\'black\', \'blue\', \'pink\', \'red\', \'white\', \'yellow\']\r\n```\r\n* ソートしたリストに変数を付けているため元のリスト自体はソートされていない\r\n* 要素が数字の場合は昇順で表示\r\n* 要素が文字列の場合はアルファベット順で表示\r\n---\r\n### ◆`len()` : 要素数を数える\r\n```\r\n>>> hoge = [1,2,3,4,5,6,7]\r\n>>> hoge.len()\r\n>>> len(hoge)\r\n7\r\n```\r\n---\r\n### ◆`list()` : リストへの変換\r\n文字列またはタプルをリストに変換することが出来る\r\n```\r\nlist(変数 or 値)\r\n```\r\n```\r\n>>> a = \"javascript\"\r\n>>> list(a)\r\n[\'j\', \'a\', \'v\', \'a\', \'s\', \'c\', \'r\', \'i\', \'p\', \'t\']\r\n\r\n>>> b = \"python\"\r\n>>> list(\"python\")\r\n[\'p\', \'y\', \'t\', \'h\', \'o\', \'n\']\r\n```\r\n```\r\n>>> tp = (1,2,3,4,5,6,7)\r\n>>> list(tp)\r\n[1, 2, 3, 4, 5, 6, 7]\r\n>>> list((\"a\",\"b\",\"c\"))\r\n[\'a\', \'b\', \'c\']\r\n```\r\n---\r\n### ◆`()`タプル\r\nリストと同様に任意の要素を入れた配列。リストとの違いは定義した後、追加・変更・削除といった編集が出来ない。(イミュータブル)\r\n```\r\n>>> x = ()\r\n>>> x\r\n()\r\n>>> y = (1,2,3,4,5,6)\r\n>>> y\r\n(1, 2, 3, 4, 5, 6)\r\n>>> z = \"python\",\r\n>>> z\r\n(\'python\',)\r\n```\r\n* タプルのアンバック : タプルの要素を個々の変数に割り振ること\r\n```\r\n>>> list((\"a\",\"b\",\"c\"))\r\n[\'a\', \'b\', \'c\']\r\n>>> test = (\"neko\",\"inu\",\"kuma\")\r\n>>> a,b,c = test\r\n>>> a\r\n\'neko\'\r\n>>> b\r\n\'inu\'\r\n>>> c\r\n\'kuma\'\r\n```\r\n* `tuple()` : リストと文字列をタプルに変換\r\n```\r\n>>> a = \"monster\"\r\n>>> tuple(a)\r\n(\'m\', \'o\', \'n\', \'s\', \'t\', \'e\', \'r\')\r\n>>> tuple(\'death\')\r\n(\'d\', \'e\', \'a\', \'t\', \'h\')\r\n\r\n>>> b = [1,2,3,4,5]\r\n>>> tuple(b)\r\n(1, 2, 3, 4, 5)\r\n>>> tuple([1,2,3,4])\r\n(1, 2, 3, 4)\r\n```\r\n');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `md_table`
--
ALTER TABLE `md_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `md_table`
--
ALTER TABLE `md_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
