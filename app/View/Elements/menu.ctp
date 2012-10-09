	<ul class='menulist'>
		<li>
                    <?php echo $this->Html->link('About Us',array('controller'=>'AboutUs','action'=>'index')); ?>
                </li>
                <li class='hasChild'><span>What's New</span>
			<ul class='isChild'>
				<li>
                                    <?php echo $this->Html->link('News',array('controller'=>'News','action'=>'index')); ?>
                                </li>
				<li>
                                    <?php echo $this->Html->link('History',array('controller'=>'History','action'=>'index')); ?>
                                </li>
				<li>    
                                    <?php echo $this->Html->link('Map',array('controller'=>'Map','action'=>'index')); ?>
                                </li>
			</ul>
		</li>
		<li class='hasChild media'>
                    <span>Media</span>
			<ul class='isChild'>
				<li>
                                    <?php echo $this->Html->link('Photo Galery',array('controller'=>'PhotoGallery','action'=>'index')); ?>
                                </li>
				<li>
                                    <?php echo $this->Html->link('Video Gallery',array('controller'=>'VideoGallery','action'=>'index')); ?>
                                </li>
			</ul>
		</li>
		<li>
                    <?php echo $this->Html->link('Fixtures',array('controller'=>'SquadList','action'=>'index')); ?>
                </li>
		<li>
                    <?php echo $this->Html->link('Result',array('controller'=>'SquadList','action'=>'index')); ?>
                </li>
		<li class='hasChild'><span>Team</span>
			<ul class='isChild team'>
				<li>
                                    <?php echo $this->Html->link('Player Profile',array('controller'=>'PlayerProfile','action'=>'index')); ?>
                                </li>
				<li>
                                    <?php echo $this->Html->link('Squad List',array('controller'=>'SquadList','action'=>'index')); ?>
                                </li>
			</ul>
		</li>
		<li>
                    <?php echo $this->Html->link('Forum',array('controller'=>'SquadList','action'=>'index')); ?>
                </li>
		<li>
                    <?php echo $this->Html->link('Sponsors',array('controller'=>'SquadList','action'=>'index')); ?>
                </li>
		<li>
                    <?php echo $this->Html->link('Contact Us',array('controller'=>'SquadList','action'=>'index'),array('class'=>'cntct')); ?>
                </li>
	</ul>