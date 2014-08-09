<?php

require(__DIR__ . "/../src/classes/db/dbglobal.php");

class mysql_Test extends PHPUnit_Framework_TestCase
{	
	public function testsCanConnect()
	{
		$dbglobal = new dbglobal(new conf(__DIR__ . "/config.ini"));
		$dbname   = $dbglobal->getDBMSClassName();
		
		require_once(__DIR__ . "/../src/classes/db/" . $dbname . ".php");
		$dbms = new $dbname($dbglobal);		
			
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