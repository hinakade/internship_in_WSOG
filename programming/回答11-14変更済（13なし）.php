<?php

// Q11
class Human {
	public $name;
	public $age;
	public $gender;


	public function setName($name) {
		$this->name = $name;
	}

	public function getName() {
		return $this->name;
	}

	public function setAge($age) {
		$this->age = $age;
	}

	public function getAge() {
		return $this->age;
	}

	public function setGender($gender) {
		$this->gender = $gender;
	}

	public function getGender() {
		return $this->gender;
	}
}

// Q12
class Profile extends Human {

}

// Q14
class Human2 extends Human{
	public static $instance;
	public __construct($name, $age, $gender) {
		$this->setName($name);
		$this->setAge($age);
		$this->setGender($gender);
	}

	public static function setName($name) {
		if (!sefl::$instance) {
			self::$instance = new Human();
		}

		self::$instance->setName($name);
	}

	public static function getName() {
		return self::$instance->getName();
	}

}

// Q14
Human2:setname('name');