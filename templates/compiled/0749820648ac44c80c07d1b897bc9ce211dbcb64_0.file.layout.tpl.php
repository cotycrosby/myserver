<?php
/* Smarty version 3.1.36, created on 2021-02-13 03:56:33
  from 'C:\laragon\www\myserver\templates\layout.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_60274df1741f23_47177664',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '0749820648ac44c80c07d1b897bc9ce211dbcb64' => 
    array (
      0 => 'C:\\laragon\\www\\myserver\\templates\\layout.tpl',
      1 => 1613188592,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_60274df1741f23_47177664 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, false);
?>
<html lang='en'>
<head>
	<meta charset='UTF-8'>
	<meta http-equiv='X-UA-Compatible' content='IE=edge'>
	<meta name='viewport' content='width=device-width, initial-scale=1.0'>
	<title><?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_202373153260274df173ff65_37284517', 'title');
?>
</title>

		<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;400&display=swap" rel="stylesheet">
	<link rel='stylesheet' href='/build/styles.css'>


	<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_135645920760274df1741130_34539465', 'head');
?>

</head>
<body>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_75601522360274df1741635_64830415', 'body');
?>


<?php echo '<script'; ?>
 src='/build/app.js'><?php echo '</script'; ?>
>
<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_175212198260274df1741af1_07398182', 'scripts');
?>

	
</body>
</html><?php }
/* {block 'title'} */
class Block_202373153260274df173ff65_37284517 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'title' => 
  array (
    0 => 'Block_202373153260274df173ff65_37284517',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>
Cotys Portfolio<?php
}
}
/* {/block 'title'} */
/* {block 'head'} */
class Block_135645920760274df1741130_34539465 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'head' => 
  array (
    0 => 'Block_135645920760274df1741130_34539465',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
}
}
/* {/block 'head'} */
/* {block 'body'} */
class Block_75601522360274df1741635_64830415 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'body' => 
  array (
    0 => 'Block_75601522360274df1741635_64830415',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
}
}
/* {/block 'body'} */
/* {block 'scripts'} */
class Block_175212198260274df1741af1_07398182 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'scripts' => 
  array (
    0 => 'Block_175212198260274df1741af1_07398182',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
}
}
/* {/block 'scripts'} */
}
