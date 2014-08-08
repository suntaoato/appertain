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
namespace Classes\DB;
require_once(__DIR__. '/dbglobal.php');

class db_mysql implements DBMS
{
	private $_dbglobal;
	
	private $connection;
	private $lastresult;
		
	
	public function __construct($dbglobal)	
	{
		$this->_dbglobal = $dbglobal;
	}
	
	public function sql_connect()
	{
		$this->connection = new \mysqli($this->_dbglobal->host,
										 		 $this->_dbglobal->user,
										 		 $this->_dbglobal->pass,
										 		 $this->_dbglobal->database,
										 		 $this->_dbglobal->port);
										 
		if(mysqli_connect_errno());
		{
			return false;
		}
		
		return true;
	}
	
	public function sql_disconnect()
	{
		if($this->sql_isconnected())
		{
			$this->connection->close();
			return true;
		}
		
		return false;
	}
	
	public function sql_escape($escapestring)
	{
		return $this->connection->real_escape_string($escapestring);
	}
	
	public function sql_query($query)
	{
		if($this->sql_isconnected())
		{
			$this->lastresult = $this->connection->query($query);
			return $this->lastresult;
		}
	}
	
	public function sql_fetchfield($fieldname)
	{
		while($obj = $this->lastresult->fetch_object())
		{
			return $obj[$fieldname];
		}
	}
	
	public function sql_isconnected()
	{
		try
		{
			if($this->connection->ping())
			{
				return true;
			}
		} 
		catch (Exception $e)
		{
			return false;
		}
		
		return false;
	}
}

?>