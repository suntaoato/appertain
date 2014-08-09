<?php

//Include conf class so we can use the functions
include_once(__DIR__ . "/../src/classes/conf/conf.php");

class conf_Test extends PHPUnit_Framework_TestCase
{
	public function testsCanBeRead()
	{
		$conf  = new \Classes\Conf\conf(__DIR__ . "/config.ini");
		$value = $conf->getKey("test","testKey");
	
		print("Value fetched: " 
		. $value 
		. PHP_EOL
		);

		$this->assertEquals("TestValue", $value);		
	}
	
	public function testsMainCanBeRead()
	{
		$conf  = new \Classes\Conf\conf(__DIR__ . "/../src/config.ini");
		$value =  $conf->getKey("db_config","host");
      
		print("Value fetched: " 
		. $value 
		. PHP_EOL
		);

		$this->assertFalse(is_null($value));		 
	}
	
	public function testsGibberishLocationFallback()
	{
		$conf  = new \Classes\Conf\conf("akjgakjhgaf");
		$value =  $conf->getKey("db_config","host");
      
		print("Value fetched despite bad location: " 
		. $value 
		. PHP_EOL
		);

		$this->assertFalse(is_null($value));
	}
	
	public function testsFileExistsButNotConfig()
	{
		$conf  = new \Classes\Conf\conf(__DIR__ . "/conf_Test.php");
		$value =  $conf->getKey("db_config","host");
      
		print("Value fetched despite non-conformist file: " 
		. $value 
		. PHP_EOL
		);

		$this->assertFalse(is_null($value));
	}
}
?>