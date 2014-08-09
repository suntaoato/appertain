<?php
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
}
?>