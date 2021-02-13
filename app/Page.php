<?php


class Page extends SmartyBase
{

	public function __construct() {
		parent::__construct();
		$this->setTemplateDirectory(ROOT. '/templates/');
		$this->setCompileDirectory(ROOT. '/templates/compiled/');
		$this->setCacheDirectory(ROOT. '/templates/cache/');
	}

	public function getData() {
		dump($this->data);
	}


}