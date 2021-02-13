<?php

class SmartyBase 
{
	private $smartyEngine;

	protected $data = [];
	
	public function __construct() {

		$this->smartyEngine = new \Smarty;

	}

	protected function setTemplateDirectory($dir) {
		$this->smartyEngine->setTemplateDir($dir);
	}

	protected function setCompileDirectory($dir) {
		$this->smartyEngine->setCompileDir($dir);
	}

	protected function setCacheDirectory($dir) {
		$this->smartyEngine->setCacheDir($dir);
	}

	public function assign($key, $value) {
		$this->data[$key] = $value;
	}

	public function display($templateFile) {

		foreach ($this->data as $key => $value) {
			$this->smartyEngine->assign($key, $value);
		}

		$this->smartyEngine->display($templateFile);
	}

}