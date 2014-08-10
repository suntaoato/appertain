<?php
/*
The MIT License (MIT)

Copyright (c) 2014 Howard Beard-Marlowe

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

namespace Classes\Core;
require_once(__DIR__ . '/../../top.php');

class profile
{
	private $profileid;
	private $userid;	
	
	public  $picurl;
	public  $forename;
	public  $surname;
	public  $email;
	public  $nick;
	
	public function __construct($userid)
	{
		$this->userid = $userid;
		
		
	}
	
	public function fetchProfile()
	{
		$GLOBALS['dbms']->sql_connect();
		
		$prepare = $GLOBALS['dbms']->connection->prepare("SELECT `name`, handle, email, path FROM vwEnabledProfiles WHERE userid=?");
		
		if(!$prepare)
		{
			error_log("Prepare failed: (" . $GLOBALS['dbms']->connection->errno . ") " . $GLOBALS['dbms']->connection->error);
		}	
		
		if(!$prepare->bind_param("i", $this->userid))
		{
			error_log("Binding parameters failed: (" . $GLOBALS['dbms']->connection->errno . ") " . $GLOBALS['dbms']->connection->error);
		}
		
		if(!$prepare->execute())
		{
			error_log("Execute failed: (" . $GLOBALS['dbms']->connection->errno . ") " . $GLOBALS['dbms']->connection->error);
		}
		
		$brName = NULL;
		$brHandle = NULL;
		$brEmail = NULL;
		$brPath = NULL;
		
		if(!$prepare->bind_result($brName, $brHandle, $brEmail, $brPath))
		{
			 error_log("Binding output parameters failed: (" . $GLOBALS['dbms']->connection->errno . ") " . $GLOBALS['dbms']->connection->error);
		}	
		
		$prepare->fetch();
		$prepare->close();
				
		if(!is_null($brName))
		{
			$this->forename      = split(" ", $brName)[0];
			$this->surname       = split(" ", $brName)[1];
			$this->email         = $brEmail;
			$this->nick          = $brHandle;
			$this->picurl        = $brPath;
			
			return true;
		}
			

		
		return false;
	}
}