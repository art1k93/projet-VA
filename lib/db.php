<?php

class db {
	private $pdo;

	public function __construct(PDO $pdo) {
		$this->pdo = $pdo;
	}

	public function all() {
		$result = array();
		while ($row = $this->last->fetch()) $result[] = $row;
		return $result;
	}
	
}