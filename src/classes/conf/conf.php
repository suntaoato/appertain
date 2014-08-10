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

namespace Classes\Conf;
class conf
{
	//Load configuration file
	protected $_filename; //Location of our wonderful ini config
	protected $_process_sections; //Process sections includes the ini headers in our array
	protected $_config;
	///	
	
	public function __construct($filename)
	{
		//Runs a series of checks and falls back to default location if one supplied
		//Is useless.
		if(file_exists($filename))
		{
			$this->_filename          = $filename;
		}
		else 
		{
			$this->_filename          = __DIR__ . "/../../config.ini";  
		}
		
		if(pathinfo($this->_filename, PATHINFO_EXTENSION) != 'ini')
		{
			$this->_filename          = __DIR__ . "/../../config.ini"; 
		}
		
		$this->_process_sections  = true;
		$this->_config            = parse_ini_file($this->_filename, $this->_process_sections);
	}

	public function getKey($section, $key)
	{
		return $this->_config[$section][$key];
	}
	
}
?>