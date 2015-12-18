<?php include('header.php'); ?>

<!-- Following Menu -->
<div class="ui large top fixed hidden menu">

    <div class="ui container">
        <a href="<?= _SITE_URL_ ?>" class="active item">Accueil</a>
        <a class="item">Logement</a>
        <a class="item">Curiosités</a>
        <a class="item">Galerie</a>
        <a href="<?= _SITE_URL_ ?>/?contacts" class="item">Contacts</a>

        <div class="right menu">

            <?php
            if (empty($_SESSION['mail'])) {?>
                <div class="item">
                    <a class="ui inverted blue button" href="<?= _SITE_URL_ ?>/?login">Log in</a>
                </div>
            <?php }?>
            <?php if (!empty($_SESSION['mail'])) {?>
                <div class="item">
                    <a class="ui inverted blue button" href="<?= _SITE_URL_ ?>/?add">Add post</a>
                </div>
                <div class="item">
                    <a class="ui inverted blue button" href="<?= _SITE_URL_ ?>/?logout">Log out</a>
                </div>
            <?php } ?>
        </div>
    </div>
</div>

<!-- Sidebar Menu -->
<div class="ui vertical inverted sidebar menu">
    <a href="<?= _SITE_URL_ ?>" class="item">Accueil</a>
    <a class="item">Logement</a>
    <a class="item">Curiosités</a>
    <a class="item">Galerie</a>
    <a href="<?= _SITE_URL_ ?>/?contacts" class="item">Contacts</a>
    <a class="item">Login</a>
    <a class="item">Signup</a>
</div>


<!-- Page Contents -->


<div class="pusher">
    <div class="ui inverted vertical masthead center aligned segment">
        <div class="ui container">
            <div class="ui large secondary inverted pointing menu">
                <a class="toc item">
                    <i class="sidebar icon"></i>
                </a>
                <a href="<?= _SITE_URL_ ?>" class="item">Accueil</a>
                <a class="item">Logement</a>
                <a class="item">Curiosités</a>
                <a class="item">Galerie</a>
                <a href="<?= _SITE_URL_ ?>/?contacts" class="item">Contacts</a>
                <div class="right menu">

                    <?php
                    if (empty($_SESSION['mail'])) {?>
                        <div class="item">
                            <a class="ui inverted blue button" href="<?= _SITE_URL_ ?>/?login">Log in</a>
                        </div>
                    <?php }?>
                    <?php if (!empty($_SESSION['mail'])) {?>
                        <div class="item">
                            <a class="ui inverted blue button" href="<?= _SITE_URL_ ?>/?add">Add post</a>
                        </div>
                        <div class="item">
                            <a class="ui inverted blue button" href="<?= _SITE_URL_ ?>/?logout">Log out</a>
                        </div>
                    <?php } ?>
                </div>
            </div>
        </div>

        <div class="ui text container">
            <h1 class="ui inverted header">
                <a href="<?= _SITE_URL_ ?>">Our site main header</a>
            </h1>
            <h2>History starts here. Do whatever you want when you want to.</h2>
            <div class="ui huge primary button">Get Started <i class="right arrow icon"></i></div>
        </div>

    </div>

    <div class="ui grid">
        <div class="sixteen wide column">


        </div>
    </div>


    <?php include('footer.php'); ?>
</div>



</body>

</html>