<?php

include_once(__DIR__ . "/../src/classes/mysql/mysqlconnection.php");

class mysqlconnection_Test extends PHPUnit_Framework_TestCase
{	
	public function testsCanConnect()
	{
		$mysql = new mysqlconnection(new conf(__DIR__ . "/config.ini"));
			
		print
		("SQL Connection Created: " 
		. PHP_EOL 
		. print_r
		($mysql)
		);
	
		$this->assertTrue(is_null(mysqli_connect_error()));		
	}
}
?>