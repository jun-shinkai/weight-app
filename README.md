 # アプリ名 
 ## weight-app
 
 ## 概要実装機能 
 毎日の体重.身長.BMIを記録できます
 体重は一日ごとに変化をグラフで確認できます
 
 ## 制作背景
 　自分自身がダイエットしているので、簡単に自分自身のBMIや標準体重を計算してくれるアプリを作成しました。また、体重の変化を可視化するためにchart_kickを使用しグラフで表示しています。
## 実装機能
   新規投稿機能
   ユーザー管理機能（gem:devise）
   グラフ機能(chart_kick,groupdate)
   javascriptで自動計算機能(非同期通信)
   bootstrapで見た目を整えました。
   
   ## 本番環境（デプロイ先とテストアカウント＆ID）
- github :https://github.com/jun-shinkai/weight-app/edit/master/README.md
- デプロイ先:https://weight-app-heroku.herokuapp.com/
- テストアカウント: Email: katu@mata / Password: katumata
- basic認証    admin 2222     pass 2222
 ## DEMO
 ##トップ画面
 　　![](https://i.gyazo.com/24dfe836f70c1c3cd4c41d23da4ed865.png)
 　　![](https://i.gyazo.com/20a37dc7c0fd0697ce871b76bf01c6a2.png)
 ##投稿画面
 ![](https://i.gyazo.com/ecd51e363c9d337a6ab828e25d19c5a0.png)
 ##ユーザ登録画面
 ![](https://i.gyazo.com/c862bc2c2e1cd6b2e1c9669d65e607b0.png)
 
 ##動画一覧
 ログイン機能   https://gyazo.com/fbe12ba32b66a8f237a9d1e0e39383e2
   BMI         https://gyazo.com/7f2ade3902d09873a42c92d7febb7a3d
   平均体重     https://gyazo.com/7f2ade3902d09873a42c92d7febb7a3d
   グラフ       https://gyazo.com/81bff9d3e3f8536b0c7b8e496db64912

 ## 工夫したポイント
 javascriptで身長と体重の値を取得し計算するところです。　新しく挑戦した実装であったので取得し表示ができるまで検索を繰り返しました。また、計算したBMI・標準体重を投稿画面の表示の真下に作成することで確認しやすい形にしました。
 chart_kickを利用してグラフを作成しました。工夫した点はデータの取得方法が難しく、これも検索して調べて一歩一歩進めることが出来ました。また、体重の変化を日毎に終えることでモチベーションの維持につながると考えました。
 
## 使用技術（開発環境）
  - 言語：Ruby,javascript,html css
  - フレームワーク：Ruby on Rails
  - DB：mysql
  - サーバー：heroku

## 課題や今後実装したい機能
 - ログインユーザーごとにデータ表示
 - html.cssの改善
　

### User  

|Column   |Type      |Options|
|---------|----------|-----------|
|nickname |string    |null: false|
|email    |string    |null: false|
|password |string    |null: false|

### Association
has_many infos

### Info

|Column   |Type      |Options|
|---------|----------|-----------|
|weight   |float     |null: false|
|height   |float     |null: false|
|bmi      |float  
|ave_wei  |float    
|user     |references|foreign_key: true|

### Association
belongs_to user

  
     
