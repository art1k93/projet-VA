<?php

class ctrlIndex extends ctrl
{

	public function __construct()
	{
		global $dbo;
		$dbo = parent::construct_emulator();
	}

	function index()
	{
		global $dbo;

		$sql = $dbo->prepare("SELECT * FROM post ORDER BY ctime DESC");
		$sql->execute();
        $this->posts = $sql->fetchAll();

        $this->out('posts.php');
	}


	function login()
	{
        global $dbo;
		if (!empty($_POST)) {

			$sql = $dbo->prepare("SELECT * FROM admin WHERE email = ? AND pass = ?");
			$sql->execute(array($_POST['mail'], md5($_POST['pass'])));
            $user = $sql->fetch(PDO::FETCH_LAZY);

			$_SESSION['mail'] = $_POST['mail'];


			if ($user) {
				$key = md5(microtime() . rand(0, 10000));
				setcookie('uid', $user['id'], time() + 86400 * 30, _SITE_URL_);
				setcookie('key', $key, time() + 86400 * 30, _SITE_URL_);
                $sql = $dbo->prepare("UPDATE admin SET cookie = ? WHERE id = ?");
                $this->user = $sql->execute(array($key, $user['id']));
				header("Location: " . _SITE_URL_);
			} else
				$this->error = 'Неверный e-mail или пароль';

		}
       $this->out('login.php');

	}


    function logout() {
        session_destroy();
        header("Location: " . _SITE_URL_);
    }

	function add()
	{
        global $dbo;
		if (empty($_SESSION['mail'])) return header("Location: ". _SITE_URL_);

		if (!empty($_POST)) {
			$sql = $dbo->prepare("INSERT INTO post(title,post,ctime) VALUES(?,?,?)");
			$sql->execute(array($_POST['title'], $_POST['post'],time()));

			header("Location: ". _SITE_URL_);
		}

		$this->out('add.php');
	}

	function del($id)
	{
        global $dbo;
		if (empty($_SESSION['mail'])) return header("Location: ". _SITE_URL_);

		$sql = $dbo->prepare("DELETE FROM post WHERE id = ?");
		$sql->execute(array($id));

		header("Location: ". _SITE_URL_);

	}

	function contacts() {
		$this->out('contacts.php', true);
	}

}