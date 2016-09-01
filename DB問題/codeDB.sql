-- DB問題　 コード

-- テーブル名 user
-- create database "user”;　テーブル作成

-- \q

-- $ psql -d user

--User Tableーーーーーーーーーby usertable.sql
create table "user" (
 user_id serial primary key, 
 name varchar(50) NOT NULL, 
 age smallint default 0, 
 gender boolean default false
 ); 
ーーーーーーーーーーーーーーーーーーーーーーーーーーー

変更するたびに dropするとこと！
drop table 名前;
\i .sql  もう一度読み込む
\dt テーブル一覧
\d テーブルの中身を見れる
\c - myuser  ユーザ変更
DBオーナーの変更
alter table "user" owner to myuser;
-----------------------------------------------


--accounttable.sqlーーーーーーーーーーーーーーーー

CREATE TABLE "account"(
        account_id serial primary key,
        login_id varchar(16) NOT NULL UNIQUE,
        password varchar(16) NOT NULL,
        user_id integer NOT NULL, 
      CONSTRAINT "num_user"
        FOREIGN KEY (user_id) 
          REFERENCES "user" ("user_id")
          );


  -- FOREIGN KEY の指定できな方のでコマンドで後から追加しました。
  -- ALTER TABLE account ADD CONSTRAINT "num_user" FOREIGN KEY("user_id")
  --結果　：　

--ALTER TABLE account ADD CONSTRAINT "num_user" FOREIGN KEY("user_id")
--REFERENCES "user"("user_id");

-------------------------------------------------


-----外部キー--------------------------------------------

ALTER TABLE account ADD CONSTRAINT "num_user" FOREIGN KEY("user_id") REFERENCES "user"("user_id");

---------------------------------------------------------------------------


--問2-3 userテーブルに値を入れる  （１行）—————————
--1つ目 error
--nsert into (“user”,account) (name,age,gender) values ('テスト太郎','30','false','test1','test1');

--user
insert into "user"("user_id","name","age","gender") values (DEFAULT,'テスト太郎','30','false');

--account
insert into "account"("account_id","login_id","password","user_id") values (DEFAULT,'test1','test1',DEFAULT);


--2の４-------------------------------------------------------------------------

      ---------------------------------------------------
      --userの順番    user_id name age gender
      --accountの順番 account_id login_id password user_id
      -------------------------------------------------


--user
INSERT INTO "user"(user_id,name,age,gender) VALUES
	     (1,'テスト花子','32','1')
      ,(2,'テスト二郎','25',DEFAULT)
      ,(3,'テスト一郎','50',DEFAULT)
      ,(4,'センス春子','20','1')
      ,(5,'センス夏子','20','1')
      ,(6,'センス秋子','25','1')
      ,(7,'センス冬子','33','1');

 --account
 INSERT INTO "account"(account_id,login_id,password,user_id) VALUES
 		 (2,'test2','test2',2)
 		,(3,'test3','test3',3)
 		,(4,'test4','test4',4)
 		,(5,'test5','test5',5)
 		,(6,'test6','test6',6)
 		,(7,'test7','test7',7)
 		,(8,'test8','test8',8);

 --2の５-----------------
 UPDATE BLOG SET タイトル = 'hogehoge' WHERE  ID = 2; 

--user
UPDATE "user" SET "name" = 'hoge太郎',"age"='30',"gender"= DEFAULT WHERE user_id = 1;
--account
UPDATE "account" SET "login_id" = 'test1',"password"= 'test1' WHERE user_id = 1;



--2-6 JOIN 内部統合 [ LIKE JOIN ]http://www.cgis.biz/others/postgresql/8/
--name　の中のテストを取ってくる
 --抽出のみ()
 　　--SELECT*FROM "user" WHERE "name" LIKE '%テスト%';

 --2-6 統合して　テスト　　のデータを抽出する

 SELECT * FROM "user" NATURAL JOIN "account" WHERE "name" LIKE '%テスト%';




---------------------------------------------------------------------------------------
--2-7 user 年齢が最大　[login_id password]を抽出　※最大値は関数を使用すること。------


  --ageの最大値取得
  SELECT max(age) from "user";

  --login_id とpasswordを抽出
 　　--error -- SELECT*FROM "user" NATURAL JOIN "account" WHERE "login_id" AND "password";
      SELECT*FROM "account" WHERE ("account") in ("login_id","password");
        
      --2つの値を取得したい。
      SELECT max(age) from 
      -- (SELECT "age" as from "user" UNION SELECT "password" from "accont") ; 

      SELECT MAX(age) FROM "user" GROP BY "password";
            
 ----------------------------------------------------
　--MAX(age) を使って１列全て表示したい   SELECT MAX  JOIN

  
 SELECT * FROM "user" NATURAL JOIN "account" WHERE "age" = (SELECT MAX(age)FROM "user") ;

 --参考文献 : WHERE 文にMAXを書く方法
  --http://www.atmarkit.co.jp/bbs/phpBB/viewtopic.php?topic=25704&forum=7

--2-8------------------------------------------------------------------------
  
  書く年代別の平均値が最大のデータをログインIDとパスワードを含めたデータを抽出。
  
   年齢の平均の求め方。
   SELECT AVG(age) FROM "user";
  
    使うであろう単語 GROUP BY  div 10

   SELECT * FROM "user" NATURAL JOIN "account" WHERE "age" = (SELECT AVG(age)FROM "user" GROUP BY ("age"<30,"age"<40));
  
  

   年代10ごとに区切りでだすことができた。 age 　表示結果：　ageのみ
   SELECT AVG(age) FROM "user" GROUP BY "age"/10;
--------------------------------------------------------------------------

  2-4(INTOを複数行で追加した問題)で追加した「テスト二郎(No3)」のデータを削除する。
  ただし、userテーブルにあるデータを削除すると、accountテーブルも自動で削除できるようにする。

   ------------------------------------------------------
    準備するもの(vim .sql)バックアップのファイル 
       user_test userのコピー
       account_test accountのコピー
      名前　test_account.sql      test_user.sql
   ---------------------------------------------------------


    手順
     1外部キー制約を消す
     2データを消す　(account user)
     3もう一度付け直す(外部キー制約)   


  全てのデータを確認する。
     SELECT * FROM "user" NATURAL JOIN "account";
     SELECT * FROM "account";


ALTER TABLE "account" DROP CONSTRAINT "num_user";


DELETE FROM "user" WHERE user_id = 3;


ALTER TABLE "account" ADD CONSTRAINT "num_user" FOREIGN KEY (user_id) REFERENCES "user" (user_id) ON DELETE CASCADE  ON UPDATE CASCADE;


----------------ラストコメント
 --インサート文なんだけど user_idはシーケンス設定しているから (name, age, gender) values (‘test’, 30, 1) でOK そして、
 --数値(int)系は’や”で囲ったらダメ！
 --囲うと文字列だから！







