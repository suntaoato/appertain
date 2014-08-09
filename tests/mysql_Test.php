<?php

require(__DIR__ . "/../src/classes/db/dbglobal.php");

class mysql_Test extends PHPUnit_Framework_TestCase
{	
	public function testsCanConnect()
	{
		$dbglobal = new \Classes\DB\dbglobal(new \Classes\Conf\conf(__DIR__ . "/config.ini"));
		
		
		require_once(__DIR__ . "/../src/classes/db/" . $dbglobal->getDBMSClassName(false) . ".php");
		
		$dbnamens =	$dbglobal->getDBMSClassName(true);		
		$dbms = new $dbnamens($dbglobal);		
			
		print
		("SQL Connection Created: " 
		. PHP_EOL 
		. print_r
		($dbms->sql_connect())
		);
	
		$this->assertTrue($dbms->sql_isconnected() && $dbms->sql_disconnect());		
	}
}
?>