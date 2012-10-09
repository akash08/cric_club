<div id="page_content">
<?php echo $this->Form->create('AboutUs', array('url'=>array('controller' => 'AboutUs', 'action'=>'index' , 'admin' => true))); ?>
<div class='form-horizontal'>
        <fieldset> 
                <label>Title*</label>
                <?php 
                        echo $this->Form->input('Team.about_us_title', array('error'=>false, 
                                                'div' => false, 
                                                'label'=>false,
                                                'maxlength'=>20,
                                                'class'=>'form_input'
                                                )); ?>
                (maximum 20 characters) 
                <?php if ($this->Form->isFieldError('Team.about_us_title')): ?>
                        <span class="val_error_rightalign_aboutUs">This field can't be empty.</span>
                <?php endif; ?>
        </fieldset>  
        <fieldset>
                <label>Content</label>
                <?php
                        echo $this->Form->input('Team.Description', array('id' => 'AboutUsMessage',
                                                'label'=>false,
                                                'rows' => 7,
                                                'class'=> 'form_input',
                                                'error'=>array('wrap'=>'div', 'class'=>'val_error_rightalign')
                                                 )); ?>
        </fieldset>		
        <fieldset>* Required field</fieldset>
</div>
<!--<div class="clear"></div>-->
<div class="contentFooter">
<?php echo $this->Form->submit('Save', array('class'=>'btn')); ?>
</div>				
<?php echo $this->Form->end(); ?>
</div>