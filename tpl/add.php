<form class="ui form" method="post">
	<label>Title</label>
	<input type="text" name="title" value="<?=@$this->post['title']?>" />
	<div class="field">
		<label>Text</label>
		<textarea name="post"></textarea>
	</div>
	<div><button type="submit">Add</button></div>
</form>
