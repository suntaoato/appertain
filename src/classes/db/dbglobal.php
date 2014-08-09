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
require_once(__DIR__ . "/../../top.php");

interface DBMS
{
	
	public function sql_connect();
	public function sql_disconnect();
	public function sql_escape($escapestring);
	public function sql_query($query);
	public function sql_fetchfield($fieldname);
	public function sql_isconnected();

}

class dbglobal
{	


	private $conf;
	
	public $host;
	public $port;
	public $user;
	public $pass;
	public $database;
	
	public function __construct()
	{
		$this->conf             = $GLOBALS['config'];
		$GLOBALS['dbms']        = $this->conf->getKey('db_config','type');
		
		$this->host             = $this->conf->getKey('db_config','host');
		$this->port             = $this->conf->getKey('db_config','port');
		$this->user             = $this->conf->getKey('db_config','user');
		$this->pass             = $this->conf->getKey('db_config','pass');
		$this->database         = $this->conf->getKey('db_config','database');		
	}
	
	public function getDBMSClassName($withNS)
	{
		if($withNS)
		{
			return __NAMESPACE__ . "\db_" . $GLOBALS['dbms'];
		}
		else 
		{
			return "db_" . $GLOBALS['dbms'];
		}
	}
}




?>