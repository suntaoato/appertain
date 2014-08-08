<?php

include_once("src/classes/mysql/mysql.connection.php");

class mysqlconnection_Test extends PHPUnit_Framework_TestCase
{	
	public function testsCanConnect()
	{
		$mysql = new mysqlconnection(new conf(__DIR__ . "/config.ini"));
			
		print("SQL Connection Created: " . print_r($mysql));
	
		$this->assertTrue(is_null(mysqli_connect_error()));		
	}
}
?>