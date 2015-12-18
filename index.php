<?php

include "lib/db.php";
include "lib/base.php";
include "lib/config.php";

//$this->mysqli = new mysqli("localhost", "blog", "fGM37hbXQ3YMputQ", "blog");

/*echo $_SERVER['REQUEST_URI']; die;*/
new app(substr($_SERVER['REQUEST_URI'],7));

