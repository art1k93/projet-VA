<?php

class ctrl {

	public  $dbo;
	public function construct_emulator() {
        session_start();
		$host = _DB_HOST_;
		$db = _DB_NAME_;
		$dsn = "mysql:host=$host;dbname=$db";
		$opt = array(
			PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
			PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
		);
		$dbo = new PDO($dsn, _DB_USERNAME_, _DB_PASSWORD_, $opt);

		$this->db = new db($dbo);

		if (!empty($_COOKIE['uid']) && !empty($_COOKIE['key'])) {
			$sql = $dbo->prepare("SELECT * FROM admin WHERE id = ? AND cookie = ?");
			$sql->execute(array($_COOKIE['uid'],$_COOKIE['key']));
		} else $this->user = false;

		return $dbo;
	}

	public function out($tplname,$nested=false) {
		if (!$nested) {
			$this->tpl = $tplname;
			include "tpl/main.php";
		} else
			include "tpl/" . $tplname;
	}

}

class app {

	public function __construct($path) {
		// http://sitename.com/?add

		$this->route = explode('/', $path);

		$this->run();
	}

	private function run() {
		$url = array_shift($this->route);
		if (!preg_match('#^[a-zA-Z0-9.,-]*$#', $url))
			throw new Exception('Invalid path');
		$ctrlName = 'ctrl' . ucfirst($url);

		if (file_exists('app/' . $ctrlName.'.php')) {
			$this->runController($ctrlName);
		} else {
			array_unshift($this->route, $url);
			$this->runController('ctrlIndex');
		}
	}

	private function runController($ctrlName) {

		include "app/" . $ctrlName . ".php";

		$ctrl = new $ctrlName();

		if (empty($this->route) || empty($this->route[0])) {
			$ctrl->index();
		} else {
			if (empty($this->route))
				$method = 'index';
			else
				$method = array_shift($this->route);
			if (method_exists($ctrl, $method)) {
				if (empty($this->route))
				    $ctrl->$method();
				else {
					call_user_func_array(array($ctrl,$method), $this->route);}
			} else
				throw new Exception('Error 404');
		}
	}

}