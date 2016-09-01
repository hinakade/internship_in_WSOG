<?php

class Test {
	public $test = 'test';
	public static $test2 = 'test2';

	public function testMethod() {
		return $this->test;
	}

	public static function test2Method() {
		return self::$test;
	}

	public static function test3Method() {
		return self::$test2;
	}

	public static function test4Method() {
		return $this->test2;
	}
}

$a = new Test();

// static  ::
//public   ->



// エラーになる
//echo Test::$test;
// エラーにならない
echo $a->test;

// エラーにならない
//echo Test::$test2;
// エラーになる
echo $a->test2;

// エラーになる
//echo Test::testMethod();
// エラーにならない
echo $a->testMethod();

// エラーになる
//echo Test::test2Method();
// エラーになる
echo $a->test2Method();

// エラーにならない
echo Test::test3Method();

// エラーになる
//echo Test::test4Method();

