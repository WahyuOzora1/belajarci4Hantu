<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class AlterHantu extends Migration
{
    public function up()
    {
        $this->forge->addColumn('tb_hantu', [
			'slug VARCHAR(100) UNIQUE'
		]);
    }

    public function down()
    {
        $this->forge->dropColumn('tb_hantu', 'slug');

    }
}
