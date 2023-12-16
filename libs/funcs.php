<?php

function debug($data, $die = false){
	echo "<pre>" .print_r($data, 1). "</pre>";
	If($die){
		die;
	}
}