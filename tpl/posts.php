<?php foreach ($this->posts as $key => $el) {?>

    <div class='ui fade reveal'>
        <div class='visible content'><?= $el["news_visible_img"] ?></div>
        <div class='hidden content'><?= $el["news_hidden_img"] ?></div>
    </div>

    <div class='segment'>
        <h2><?=$el['title']?></a></h2>
        <div class='content'>
            <p class='article-content'>
                <?=nl2br($el['post'])?>
            </p>
        </div>
    </div>
    <div><a href="<?= _SITE_URL_ ?>/?del/<?=$el['id']?>" class="ui inverted red button" onclick="return confirm('Are you sure?')">Delete</a></div>


<?php }?>