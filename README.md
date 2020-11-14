# Docker で作る PHP × Nginx × NodeJS × MySQL × phpMyAdmin 環境

![thumbnail](https://user-images.githubusercontent.com/45201545/99015118-90872f00-2597-11eb-9807-5af08ca7a000.png)

## バージョン（2020/11/13 時点)

PHP：7.4.12  
Nginx：1.19.4  
MySQL：8.0.22  
phpMyAdmin：5.0.4  
NodeJS：12.18.4  
npm：6.14.6

## Laravel の Welcome ページを表示するまでの手順

### 補足

<p>利用頻度の高いコマンドは make コマンドで実行できます。<br>コマンド一覧 → <a href="https://github.com/jimbaran5601406/docker_laravel_boilerplate/blob/master/Makefile">コチラ</a><br><br></p>

1. docker_laravel_boilerplate クローン

```bash
$ git clone git@github.com:jimbaran5601406/docker_laravel_boilerplate.git
```

2. ルートディレクトリに src フォルダ作成

```bash
$ mkdir src
```

3. .env.example を.env ファイルとしてルートディレクトリに複製

    例)

    ```bash:.env
    # MySQL データベース名
    DB_NAME=sample_db
    # MySQL ユーザー名
    DB_USER=root
    # MySQL パスワード
    DB_PASS=root
    # タイムゾーン
    TZ=Asia/Tokyo
    ```

4. コンテナ生成

docker-compose.yml が配置してあるディレクトリで次のコマンドを実行

```bash
$ docker-compose up -d
```

5. Laravel の雛形生成

laravel_boilerplate_php コンテナへ入る

```bash
# laravel_boilerplate_php コンテナへ入る
$ docker exec -it laravel_boilerplate_php sh

# ↓に変わればコンテナ内
/var/www/html \#

# Laravel雛形生成
/var/www/html \# composer create-project "laravel/laravel=バージョン指定" .
```

**/var/www/html** ディレクトリはホストマシンの **src** フォルダにマウントしている。

6. Laravel の Welcome ページにアクセス  
   <http://localhost:8080>
   ![localhost_8080_](https://user-images.githubusercontent.com/45201545/99015071-6e8dac80-2597-11eb-9c04-0d7a09285478.png)

<p align="center">
<br>
That's all.<br>
Happy Hacking.
</p>
