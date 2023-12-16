<?php

namespace app\models;

use yii\db\ActiveRecord;

Class Product extends ActiveRecord
{
   public static function tableName()
	{
		return 'product';
	}

}