<?php

namespace App\Models;

use CodeIgniter\Model;

class hantuModels extends Model
{
    protected $table      = 'tb_hantu';
    protected $primaryKey = 'id';

    protected $useAutoIncrement = true; 
    protected $allowedFields = ['nama', 'jenis', 'habitat', 'jam_tayang', 'pangkat', 'jobdesk', 'suara', 'foto'];
}
