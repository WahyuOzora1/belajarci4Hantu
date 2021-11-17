<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Hantu extends Migration
{
    public function up()
    {
        //Membuat kolom/field untuk tabel hantu
        $this->forge->addField(
            [
                'id' => [
                    'type' => 'INT',
                    'constraint' => 5,
                    'unsigned' => true,
                    'auto_increment' => true,
                ],

                'nama' => [
                    'type'           => 'VARCHAR',
                    'constraint'     => '255',
                    'null'           => true,
                ],
                'jenis' => [
                    'type'           => 'VARCHAR',
                    'constraint'     => '255',
                    'null'           => true,
                ],
                'habitat' => [
                    'type'           => 'VARCHAR',
                    'constraint'     => '255',
                    'null'           => true,
                ],

                'jam_tayang' => [
                    'type'           => 'DATETIME',
                    'constraint'     => '6',
                    'null'           => true,
                ],

                'pangkat' => [
                    'type'           => 'VARCHAR',
                    'constraint'     => '255',
                    'null'           => true,
                ],

                'jobdesk' => [
                    'type'           => 'VARCHAR',
                    'constraint'     => '255',
                    'null'           => true,
                ],

                'suara' => [
                    'type'           => 'VARCHAR',
                    'constraint'     => '255',
                    'null'           => true,
                ],


                'foto' => [
                    'type'           => 'VARCHAR',
                    'constraint'     => '255',
                    'null'           => true,
                ],

                'created_at DATETIME DEFAULT CURRENT_TIMESTAMP'

            ],

        );

        //membuat primary key
        $this->forge->addPrimaryKey('id', TRUE);

        //membuat tabel tb_hantu
        $this->forge->createTable('tb_hantu', TRUE);
    }
    public function down()
    {
        //menghapus tabel tb_hantu
        $this->forge->dropTable('tb_hantu');
    }
}
