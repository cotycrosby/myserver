<?php

define('ROOT', $_SERVER['DOCUMENT_ROOT']);

require_once( ROOT. '/vendor/autoload.php');

function dump($array) {
	echo '<pre>';
	print_r($array);
	echo '</pre>';
}