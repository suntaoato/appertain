<?php
session_start();

//CHECK FOR THE EXISTENCE OF CONFIG.
require_once(__DIR__ . "/classes/conf/conf.php");
require_once(__DIR__ . "/classes/db/dbglobal.php");

if(!array_key_exists('config', $GLOBALS))
{
	$GLOBALS['config'] = new \Classes\Conf\conf(null);
}

if(!array_key_exists('dbms', $GLOBALS))
{
	$db = new \Classes\DB\dbglobal($GLOBALS['config']);
	$dbnsname = $db->getDBMSClassName(true);

	include_once(__DIR__ . "/classes/db/" . $db->getDBMSClassName(false) . ".php");	
	
	$GLOBALS['dbms'] = new $dbnsname($db);
}

if(!array_key_exists('theme', $GLOBALS))
{
	$conf = new \Classes\Conf\conf(null);
	
	$GLOBALS['theme'] = $conf->getKey('theme','name');
               
	$denytxt = '';
	$dir = __DIR__ . '/themes';
	
	foreach(new DirectoryIterator($dir) as $file)
	{
		if($file->isDir())
		{
			if($file != $GLOBALS['theme'] && !file_exists($dir . '/' . $file . '/index.html'))
			{
				$deny = fopen($dir . '/' . $file . '/index.html', "w");
				fwrite($deny, $denytxt);
				fclose($deny);
			}
		
			if($file == $GLOBALS['theme'] && file_exists($dir . '/' . $file . '/index.html'))
			{
				unlink($dir . '/' . $file . '/index.html');
			}	
		}	
	}
}
?>
