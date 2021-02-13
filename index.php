<?php

require_once('./globals.php');

$page = new Page();
$page->assign('asdf', 'asdf');
$page->assign('key', 'value');

$page->display('home.tpl');