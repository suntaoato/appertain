<?php

//Include conf class so we can use the functions
include_once(__DIR__ . "/../src/classes/conf/conf.php");

class conf_Test extends PHPUnit_Framework_TestCase
{
	public function testsCanBeRead()
	{
		$conf  = new Conf(__DIR__ . "/config.ini");
		$value = $conf->getKey("test","testKey");
	
		print("Value fetched: " 
		. $value 
		. PHP_EOL
		);

		$this->assertEquals("TestValue", $value);		
	}
	
	public function testsMainCanBeRead()
	{
		$conf  = new Conf(__DIR__ . "/../src/config.ini");
		$value =  $conf->getKey("db_config","host");
      
		print("Value fetched: " 
		. $value 
		. PHP_EOL
		);

		$this->assertFalse(is_null($value));		 
	}
}
?>