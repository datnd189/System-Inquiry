<?php
//logout.php

require_once (__DIR__.'/../init.php');

unset($_SESSION['admin_auth']);

header('Location: ./index.php');
