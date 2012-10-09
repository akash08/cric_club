<?php echo $this->Html->docType('html5'); ?>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<head>
<?php echo $this->Html->charset(); ?>

<?php echo $this->Html->meta(array('name' => 'X-UA-Compatible', 'content' => 'IE=edge,chrome=1')); ?>

<title><?php echo $title_for_layout; ?></title>
<!--<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>-->
<?php echo $this->Html->script('libs/jquery-1.7.2.min.js');?>
<script>window.jQuery || document.write('<script src="js/libs/jquery-1.7.2.min.js"><\/script>')</script>
<?php echo $this->Html->meta('keywords',''); ?>
<?php echo $this->Html->meta('description',''); ?>
<?php echo $this->Html->meta(array('name' => 'author', 'content' => 'Hardik Shah')); ?>
<?php echo $this->Html->meta(array('name' => 'viewport', 'content' => 'width=device-width')); ?>
<?php echo $this->Html->css('bootstrap.min.css'); ?>
<?php echo $this->Html->css('rcarousel.css'); ?>
<style>
	body {
	  padding-top: 60px;
	  padding-bottom: 40px;
	}
</style>

<?php echo $this->Html->css('bootstrap-responsive.min.css'); ?>
<?php echo $this->Html->css('style.css'); ?>
<?php echo $this->Html->script('libs/modernizr-2.5.3-respond-1.1.0.min'); ?>
<?php echo $this->Html->script('script.js'); ?>
<?php echo $this->Html->script('libs/jquery.ui.core.js'); ?>
<?php echo $this->Html->script('jquery.bxSlider.js');?>
<?php echo $this->Html->script('libs/jquery.ui.widget.js'); ?>
<?php
	echo $this->fetch('meta');
	echo $this->fetch('css');
?>
</head>
<body>
<!--[if lt IE 7]><p class=chromeframe>Your browser is <em>ancient!</em> <a href="http://browsehappy.com/">Upgrade to a different browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to experience this site.</p><![endif]-->
<div class="navbar navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container">
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			</a>
			<a class="brand" href="#">4rth Umpire</a>
			<div class="nav-collapse">
				<ul class="social_bar nav">
                                     <?php if(!isset($user_set)) { ?>        
					<li class="active login"><a href="#">Login</a></li>
                                     <?php } else { ?>
                                        <li class="active">
                                            <?php echo $this->Html->link('Logout',
                                                        array('controller'=>'Logins',
                                                              'action'=>'logout'
                                                            )
                                                    );?>
                                        </li>
                                     <?php }?>
					<li><a href="#about">Facebook</a></li>
					<li><a href="#contact">Twitter</a></li>
					<li><a href="#contact">Google+</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
</div>
<div class="container">
	<div id="content">

		<?php echo $this->Session->flash(); ?>
                <?php echo $this->element('menu');  ?>
		<?php echo $this->fetch('content'); ?>
            <?php if(!isset($user_set)) { ?>
            <div id="login_dailog" style="display: none;">
                <?php
                        echo $this->Form->create('Login',array('action'=>'verify'));
                        echo $this->Form->input('username', array('placehoder' => 'Username'));
                        echo $this->Form->input('password', array('placehoder' => 'Password'));
                        echo $this->Form->end('submit',array('class'=>'btn'));	
                ?>
            </div>
            <?php }?>
	</div>
	<hr>
	<footer>
	<p>
		Designed & Powered by ...
	</p>
	</footer>
</div>
<!-- /container -->

<?php echo $this->Html->script(array('libs/bootstrap/bootstrap.min','plugins','script')); ?>
<?php echo $this->fetch('script'); ?>
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', '<?php echo Configure::read('ga');?>']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>
</body>
</html>