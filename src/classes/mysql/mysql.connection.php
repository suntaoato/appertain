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


include_once(__DIR__ . "/../conf/conf.php");

class mysqlconnection
{	


	private $conf;
	
	private $host;
	private $port;
	private $user;
	private $pass;
	private $database;
		
	public $mysql_connection;
	
	public function __construct($config)
	{
		$this->conf 	         = $config;
		
		$this->host             = $this->conf->getKey('db_config','host');
		$this->port             = $this->conf->getKey('db_config','port');
		$this->user             = $this->conf->getKey('db_config','user');
		$this->pass             = $this->conf->getKey('db_config','pass');
		$this->database         = $this->conf->getKey('db_config','database');		
		
		$this->mysql_connection = new mysqli($this->host, $this->user, $this->pass, $this->database);		
		
		if(mysqli_connect_error())
		{
			die('Connect Error (' . mysqli_connect_errno() . ') '
			                      . mysqli_connect_error());
		}
	}
	
	public function __destruct()
	{
		$this->mysql_connection->close();
	}
}




?>