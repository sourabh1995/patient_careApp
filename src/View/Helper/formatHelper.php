<?php
namespace App\View\Helper;

use Cake\View\Helper;
use Cake\ORM\TableRegistry;
class formatHelper extends Helper
{
	public function getName($id, $resources){
		$records = TableRegistry::get($resources);
		$query = $records->find()->where(["id" => $id]);
		return $query->first()->name;
	}
}