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

class user
{
	private $encpassword;	
	
	public  $userid;
	public  $username;
	public  $isAuth = false;
	public  $created = false;

	public function __construct($username, $password, $create = false, $details = NULL)
	{	
		$this->username    = $username;
		$this->encpassword = encryptPassword($password);
		
		if(!$create)
		{		
			$this->fetchUser();
			return;
		}
		else 
		{
			if($this->createUser());
			{
				new profile($this->userid, true, $details);
				$this->created = true;
				
				return;
			}
		}
	}

	public function fetchUser()
	{
		$GLOBALS['dbms']->sql_connect();
		
		$prepare = $GLOBALS['dbms']->connection->prepare("SELECT id, username FROM vwEnabledUsers WHERE username=? AND password=?");
		
		if(!$prepare)
		{
			error_log("Prepare failed: (" . $GLOBALS['dbms']->connection->errno . ") " . $GLOBALS['dbms']->connection->error);
		}	
		
		if(!$prepare->bind_param("ss", $this->username, $this->encpassword))
		{
			error_log("Binding parameters failed: (" . $GLOBALS['dbms']->connection->errno . ") " . $GLOBALS['dbms']->connection->error);
		}
		
		if(!$prepare->execute())
		{
			error_log("Execute failed: (" . $GLOBALS['dbms']->connection->errno . ") " . $GLOBALS['dbms']->connection->error);
		}
		
		$brID = NULL;
		$brUsername = NULL;
		
		if(!$prepare->bind_result($brID, $brUsername))
		{
			 error_log("Binding output parameters failed: (" . $GLOBALS['dbms']->connection->errno . ") " . $GLOBALS['dbms']->connection->error);
		}	
		
		$prepare->fetch();
		$prepare->close();
				
		if(!is_null($brID) && !is_null($brUsername))
		{
			$this->userid      = $brID;
			$this->username    = $brUsername;
			$this->isAuth      = true;
			
			return true;
		}
			
		return false;
	}
	
	public function createUser()
	{
		if(!isDuplicate($this->username))
		{
			$GLOBALS['dbms']->sql_connect();
			
			$prepare = $GLOBALS['dbms']->connection->prepare("INSERT INTO  user (username, password) VALUES (?,?)");
			
			if(!$prepare)
			{
				error_log("Prepare failed: (" . $GLOBALS['dbms']->connection->errno . ") " . $GLOBALS['dbms']->connection->error);
			}	
		
			if(!$prepare->bind_param("ss", $this->username, $this->encpassword))
			{
				error_log("Binding parameters failed: (" . $GLOBALS['dbms']->connection->errno . ") " . $GLOBALS['dbms']->connection->error);
			}
		
			if(!$prepare->execute())
			{
				error_log("Execute failed: (" . $GLOBALS['dbms']->connection->errno . ") " . $GLOBALS['dbms']->connection->error);
			}
			
			$this->userid = $GLOBALS['dbms']->sql_lastid();
			
			return true;	
		}
		
		return false;
	}
	
	public static function isDuplicate($username)
	{
		$GLOBALS['dbms']->sql_connect();
		
		$prepare = $GLOBALS['dbms']->connection->prepare("SELECT id FROM users WHERE username=?");
		
		if(!$prepare)
		{
			error_log("Prepare failed: (" . $GLOBALS['dbms']->connection->errno . ") " . $GLOBALS['dbms']->connection->error);
		}	
		
		if(!$prepare->bind_param("s", $username))
		{
			error_log("Binding parameters failed: (" . $GLOBALS['dbms']->connection->errno . ") " . $GLOBALS['dbms']->connection->error);
		}
		
		if(!$prepare->execute())
		{
			error_log("Execute failed: (" . $GLOBALS['dbms']->connection->errno . ") " . $GLOBALS['dbms']->connection->error);
		}
		
		$brUsername = NULL;
		
		if(!$prepare->bind_result($brUsername))
		{
			 error_log("Binding output parameters failed: (" . $GLOBALS['dbms']->connection->errno . ") " . $GLOBALS['dbms']->connection->error);
		}	
		
		$prepare->fetch();
		$prepare->close();
		
		if(!is_null($brUsername))
		{
			return true;
		}
		
		return false;
	}
	
	private function encryptPassword($password)
	{
		return crypt($password,"you_have_died_of_dysentry");
	}
}
?>