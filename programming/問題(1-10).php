<?php
echo'-------問1-----------------------------'.PHP_EOL;

echo '▪︎';
echo '▪︎';
echo '▪︎';
echo '▪︎';
echo '▪︎'.PHP_EOL;


echo '▪︎';
echo '▪︎';
echo '▪︎';
echo '▪︎';
echo '▪︎'.PHP_EOL;


echo '▪︎';
echo '▪︎';
echo '▪︎';
echo '▪︎';
echo '▪︎'.PHP_EOL;


echo '▪︎';
echo '▪︎';
echo '▪︎';
echo '▪︎';
echo '▪︎'.PHP_EOL;


echo'-------問2-----------------------------'.PHP_EOL;

for ($j  = 1 ;$j  <  5;  $j++){

       for ($i  = 1 ;$i  <  6;  $i ++){
       
                echo '▪︎';
       }
             echo PHP_EOL;  
}
echo'-------問３-----------------------------'.PHP_EOL;;

for ($j  = 1 ;$j  <  7;  $j++){

       for ($i  = 1 ;$i  <  $j;  $i ++){
       
                echo '▪︎';
       }
             echo PHP_EOL;  
}

echo'-------問4------------------------'.PHP_EOL;

for ($j  = 6 ;$j  >  1;  $j --){

       for ($i  = 1 ;$i  <  $j;  $i ++){
       
                echo '▪︎';
       }
            echo PHP_EOL;  
}

echo'-------問5-----------------------------'.PHP_EOL;

for ($j  = 5 ;$j  >  0;  $j --){
        
    for ($i  = 1 ;$i  <  $j;  $i ++){

         echo'1';
    }
       

    for ($i  = 6;$i  >  $j;  $i --){

         echo '▪︎';
    }
         
      echo PHP_EOL;  
}
echo'-------問6-----------------------------'.PHP_EOL;

for ($j  = 1 ;$j  <  6;  $j++){

    for ($i  = 1 ;$i  <  $j;  $i ++){
       
        echo '1';
    }
  
    for ($i  = 6;$i  >  $j;  $i --){

        echo '▪︎';
    }
     echo PHP_EOL;  
}

echo'-------問7-----------------------------'.PHP_EOL;
$b=0;
for ($j  = 6 ;$j  >  1;  $j --){

  for ($i  = 2 ;$i  <  $j;  $i ++){
       echo '＿';
   }
 
       $b = $b +2;
  
         for ($i  = 1 ;$i  < $b;  $i ++){
       
              echo '▪︎';
       }
  
         for ($i  = 2 ;$i  <  $j;  $i ++){
                
              echo '＿';
        }
        echo PHP_EOL;
}
echo'-------問8----------------------------'.PHP_EOL;

$c =0;

for ($j  = 1 ;$j  <  6;  $j++){
    for ($i  = 1 ;$i  <  $j;  $i ++){
       
         echo '＿';
    }
 
    $c = $c + 2;
  
     
    for ($i  = 11;$i  > $c;  $i--){

        echo '▪︎';
    }
              
  
    for ($i  = 1 ;$i  <  $j;  $i ++){
       
        echo '＿';
    }
     echo PHP_EOL;  
}


     echo PHP_EOL;


echo'-------問9-----------------------------'.PHP_EOL;
$b=0;
for ($j  = 6 ;$j  >  1;  $j --){
 echo PHP_EOL;  


    for ($i  = 2 ;$i  <  $j;  $i ++){
       echo '＿';
   }
 
    $b = $b +2;
    for ($i  = 1 ;$i  < $b;  $i ++){
        echo '▪︎';
   }
    for ($i  = 2 ;$i  <  $j;  $i ++){
                
        echo '＿';
    }
}
    echo PHP_EOL;

$c =0;

for ($j  = 0 ;$j  <  4;  $j++){
    for ($i  = -1 ;$i  <  $j;  $i ++){
       
         echo '＿';
    }
 
    $c = $c + 2;
  
     
    for ($i  = 9;$i  > $c;  $i--){

        echo '▪︎';
    }
              
  
    for ($i  = -1;$i  <  $j;  $i ++){
       
        echo '＿';
    }
     echo PHP_EOL;  
}




echo'-------問10-----------------------------'.PHP_EOL;

//1から10をループ文を作成する。(5種類)

echo '-- 1つ目 --'.PHP_EOL;
// for

for($i=1 ; $i<=100  ; $i++){
  
  echo $i;
echo PHP_EOL;  

  
}

echo '-- 2つ目 --'.PHP_EOL;
// while
$a =0;
while ($a <100){
  
  ++$a;
 
  echo $a;
echo PHP_EOL;  

  
}


echo '-- 3つ目 --'.PHP_EOL;  

  // foreach
  foreach(range(1,100) as $b){
      
       echo $b;
     echo PHP_EOL;  
}

echo '-- 4つ目 --'.PHP_EOL;  
//漸化式と制限演算

class NaturalNumberIterator implements Iterator
{
    private $i = 1;
    function current() { return $this->i; }
    function key()     { return $this->i; }
    function next()    { ++$this->i; }
    function rewind()  { $this->i = 1; }
    function valid()   { return true; }
}

$it = new NaturalNumberIterator;
$it = new LimitIterator($it, 0, 100);

foreach ($it as $i) {
    echo $i, PHP_EOL;
}



echo '-- 5つ目 --'.PHP_EOL;
// range()　を使う
echo implode(PHP_EOL, range(1, 100));

?>