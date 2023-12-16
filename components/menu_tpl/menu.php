
<?php if(isset($category['children'])) echo '<div class="nav-item dropdown dropright">' ?>
<a href="<?= \yii\helpers\Url::to(['category/view', 'id' => $category['id']]) ?>" 
<?php if(isset($category['children'])) echo 'class="nav-link dropdown-toggle" data-toggle="dropdown">';
elseif($category['parent_id']) echo 'class="dropdown-item">';
else echo 'class="nav-item nav-link">'?>
	   <?= $category['title'] ?>
		<?php if(isset($category['children'])) echo '<i class="fa fa-angle-right float-right mt-1"></i>' ?>
	</a>
<?php if(isset($category['children'])): ?>
	   <div class="dropdown-menu position-absolute rounded-0 border-0 m-0">
		   <?= $this->getMenuHtml($category['children']) ?>
		</div>
		</div>
<?php endif; ?>

