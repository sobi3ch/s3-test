<?php 
  echo 'Hello World - ' . date('d/m/Y H:i:s') . '<br /><hr />';


  $semafor = fopen("/semafors/mysql-status.txt", "r") or die("Unable to open file!");
  $status = fread($semafor, filesize("/semafors/mysql-status.txt") );
  fclose($semafor);
  
  echo 'MySQL: '. $status;
