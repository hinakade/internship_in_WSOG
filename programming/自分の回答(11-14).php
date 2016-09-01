
<?php
echo'---------------問1-11------------------------------';
echo PHP_EOL;

class human {

  public $i ='var1';
  public static $j = 'ver2';

//name
  public static function getname($i){

// 引数の値をプロパティ$iに保存する
   $this->_value = $i;
//インスタンスメゾットを作成 問13
   $human_name = new human();
	 $human_name->getname("値の設定の追加(name");

  }
  public function setname(){
     // return $this-> $i;
  }


// age
  public static function getage($i){

     $this->_value = $i;

   $human_name = new human();
   $human_name->getname("値の設定の追加(name)");

  }
  public function setage(){
  	echo('年齢');
  }

// sex
  public static function getsex($i){

     $this->_value = $i;

	   $human_sex = new human();
	   $human_sex ->getsex('値の設定の追加(sex)');

  }
  public function setsex(){
  	 echo('性別');
  }
}

// プリフィールクラス
class Bar extends human{

    public function printItem($string){
        echo '名前は' . $human_name;
    }
}

$fuga = new human();


// エラーにならない理由　public は動的メソッドだから
// setに書いてあるのは成功例
echo human::setname();
echo human::setage();
echo human::setsex();






?>