<form class="ui form" method="post">
  <div class="required field">
    <label>E-mail</label>
    <input type="email" name="mail" placeholder="some@gmail.com">
  </div>
  <div class="required field">
    <label>Password</label>
    <input type="password" name="pass" placeholder="Password">
  </div>
  <button class="ui button" type="submit">Log in</button>
  <span><?=@$this->error?></span>
</form>