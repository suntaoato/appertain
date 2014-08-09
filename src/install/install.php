<?php

include_once(__DIR__ . '/../top.php');

$GLOBALS['dbms']->sql_connect();
run_sql_file();

function run_sql_file(){
    //load file
    $commands = file_get_contents(__DIR__ . '/db.sql');

    //delete comments
    $lines = explode("\n",$commands);
    $commands = '';
    foreach($lines as $line){
        $line = trim($line);
        if( $line && !startsWith($line,'--') ){
            $commands .= $line . "\n";
        }
    }

    //convert to array
    $commands = explode(";", $commands);

    //run commands
    $total = $success = 0;
    foreach($commands as $command){
        if(trim($command)){
            $success += ($GLOBALS['dbms']->sql_query($command)==false ? 0 : 1);
            $total += 1;
        }
    }

    //return number of successful queries and total number of queries found
    return array(
        "success" => $success,
        "total" => $total
    );
}

function startsWith($haystack, $needle)
{
	return $needle === "" || strpos($haystack, $needle) === 0;
}

?>