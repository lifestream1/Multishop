<?php

namespace app\controllers;

use app\models\Product;

class HomeController extends AppController
{
   public function actionIndex()
	{
	   $products = Product::find()->limit(8)->all();

     return $this->render('index', compact('products'));
	}
}