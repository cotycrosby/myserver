<?php
/* Smarty version 3.1.36, created on 2021-02-13 05:38:17
  from 'C:\laragon\www\myserver\templates\home.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_602765c96ff0f8_38050805',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '7d02407c4bed3947d45ae1540d5e73455496825c' => 
    array (
      0 => 'C:\\laragon\\www\\myserver\\templates\\home.tpl',
      1 => 1613194696,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_602765c96ff0f8_38050805 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_1818277337602765c96fea87_19604117', 'body');
$_smarty_tpl->inheritance->endChild($_smarty_tpl, "layout.tpl");
}
/* {block 'body'} */
class Block_1818277337602765c96fea87_19604117 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'body' => 
  array (
    0 => 'Block_1818277337602765c96fea87_19604117',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

	<div class='background-image parallax vh-100 hero-image flex f-columns jc-center ai-center ' >
			<h1>Coty Crosby</h1>
			<p class='container-sm text-center'>
				I like to make things.
			</p>
			<a href='#about' class='button mt-1'>Would you like to know more?</a>
	</div>
	
	<div class='bg-black white py-4 vh-100' id='about'>
		<div class='container-md' >
			<div class='flex jc-between'>
				<div>
					<h3>Education</h3>
					<hr><br>

					<img src='/images/bgsu.png' width='250'><br>

				</div>
				<div>
					<h3>Experience</h3>				
					<hr>

					<h5>Satelytics</h5>
					<p>&bull; Web Developer</p>
					<p>&bull; November 2020 - Present Day</p>
					<br>

					<h5>Gifts Compass</h5>
					<p>&bull; Web Developer</p>
					<p>&bull; May 2016 - November 2020</p>
					<br>

					<h5>Owens Corning</h5>
					<p>&bull; Web Developer Intern</p>
					<p>&bull; May 2017 - August 2017</p>
					<br>

					<h5>Americare Home Health</h5>
					<p>&bull; Web Developer</p>
					<p>&bull; May 2014 - August 2015</p>
					<br>

					

				</div>
			</div>
		</div>
	</div>

	<div class='bg-red white py-4 vh-100'>
		<div class='container-md'>
			<h3>Skillset</h3>
			<ul>
				<li>Git</li>
			</ul>
		</div>
	</div>
<?php
}
}
/* {/block 'body'} */
}
