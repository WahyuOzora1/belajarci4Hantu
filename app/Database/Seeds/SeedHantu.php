<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class SeedHantu extends Seeder
{
    public function run()
    {
        // membuat data
		$dataHantu = [
			[
				'nama' => 'Jono',
				'pangkat'  => 'Panglima',
				'jobdesk' => 'Memimpin Prajurit.'
			],
			[
				'nama' => 'Joni',
				'pangkat' => 'Komandan Perang',
				'jobdesk' => 'Mengomandani Perang'
			],
			[
				'nama' => 'Janu',
				'pangkat'	=> 'Prajurit',
				'jobdesk' => 'Perang sama musuh..'
			]
		];

		foreach($dataHantu as $data){
			// insert semua data ke tabel
			$this->db->table('tb_hantu')->insert($data);
		}
    }
}
