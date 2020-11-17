<?php
/* Smarty version 3.1.29, created on 2020-11-10 08:28:06
  from "C:\UniServerZ\www\APPLE-master\templates\side_tools.html" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_5faa4f16dc6921_51647513',
  'file_dependency' => 
  array (
    'bc4d31cb66934e46d5dcc08f7b8cf5744e98cb1a' => 
    array (
      0 => 'C:\\UniServerZ\\www\\APPLE-master\\templates\\side_tools.html',
      1 => 1604996600,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5faa4f16dc6921_51647513 ($_smarty_tpl) {
?>
<div class="alert alert-success">
  <?php echo $_smarty_tpl->tpl_vars['login_user']->value['user_name'];?>
您好！歡迎光臨<?php echo $_smarty_tpl->tpl_vars['shop_name']->value;?>

</div>
<a href="index.php" class="btn  btn-primary">回首頁</a>
<a href="user.php?op=user_display&user_sn=<?php echo $_smarty_tpl->tpl_vars['login_user']->value['user_sn'];?>
" class="btn  btn-info">我的帳號</a>
<?php if ($_smarty_tpl->tpl_vars['isUser']->value) {?>
    <a href="bill.php" class="btn  btn-warning">我的訂單</a>
<?php }
if ($_smarty_tpl->tpl_vars['isAdmin']->value) {?>
    <a href="tool.php?op=goods_form" class="btn  btn-success">發布商品</a>
<?php }?>
<a href="user.php?op=user_logout" class="btn  btn-danger">登出</a><?php }
}
