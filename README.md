 アプリケーション名 weight-app
 アプリケーション概要  毎日の体重.身長.BMIを記録できる
                    体重は一日ごとに変化をグラフで確認できる
 URL  https://weight-app-heroku.herokuapp.com/
 テスト用アカウント id    admin
                 pass  2222
   テストアカウント name katumata 
                 pass katumata
   利用方法       一日に一度体重を測定して入力することで現在のBMIを簡単にわかること
                 グラフで体重の変化がわかること        
  目指した課題解決  自分自身がダイエットをしていたので簡単なアプリケーションを作成すること
                 また、多くの人が利用できるようにログイン機能を搭載した
  洗い出した要件    
   ログイン機能   https://gyazo.com/fbe12ba32b66a8f237a9d1e0e39383e2
   basic認証    admin 2222     pass 2222
   BMI         https://gyazo.com/7f2ade3902d09873a42c92d7febb7a3d
   平均体重     https://gyazo.com/7f2ade3902d09873a42c92d7febb7a3d
   グラフ       https://gyazo.com/81bff9d3e3f8536b0c7b8e496db64912

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

  
     