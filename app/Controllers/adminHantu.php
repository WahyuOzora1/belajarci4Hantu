<?php namespace app\Controllers;

use App\Controllers\BaseController;
use \app\Models\hantuModels;
use CodeIgniter\Exceptions\PageNotFoundException;

class adminHantu extends BaseController
{
    public function index()
    {
        $hantu = new hantuModels();
        $data['hantu'] = $hantu->findAll();
        echo view('layouts/admin_list_hantu', $data);
    }


    public function preview($id){
        $hantu = new hantuModels();
        $data['hantu'] = $hantu->where('id', $id)->first();


        if(!$data['hantu']){
            throw PageNotFoundException::forPageNotFound();
        }

        echo view('hantu_details', $data);
    }


    public function create(){
        //Lakukan Validasi

        $validation = \Config\Services::validation();
        $validation->setRules(['jenis'=>'required']);
        $isDataValid = $validation->withRequest($this->request)->run();


        //Jika data valid, maka simpan ke database

        if($isDataValid){
            $hantu = new hantuModels();
            $hantu->insert([
                "nama"=>$this->request->getPost("nama"),
                "jenis"=>$this->request->getPost("jenis"),
                "habitat"=>$this->request->getPost("habitat"),
                "jam_tayang"=>$this->request->getPost("jam_tayang"),
                "pangkat"=>$this->request->getPost("pangkat"),
                "jobdesk"=>$this->request->getPost("jobdesk"),
                "suara"=>$this->request->getPost("suara"),
                "foto"=>$this->request->getPost("foto"),
                "cara_bergerak"=>$this->request->getPost("cara_bergerak"),
            ]); 
            return redirect('admin/hantu');         
        }

        // tampilkan form create
        echo view ('admin_create_hantu');
    }


    // ---------------------------------------------------------------------------------------------

    public function edit($id){
        //ambil artikel yang akan diedit
        $hantu = new hantuModels();
        $data['hantu'] = $hantu->where('id', $id)->first();

        //Lakukan validasi data hantu

        $validation = \Config\Services::validation();
        $validation->setRules([
            'id' => 'required',
            'jenis' => 'required'
        ]);

        $isDataValid = $validation->withRequest($this->request)->run();

        //Jika data valid, maka simpan ke database
        if($isDataValid){
            $hantu->update($id, [
                "nama"=>$this->request->getPost("nama"),
                "jenis"=>$this->request->getPost("jenis"),
                "habitat"=>$this->request->getPost("habitat"),
                "jam_tayang"=>$this->request->getPost("jam_tayang"),
                "pangkat"=>$this->request->getPost("pangkat"),
                "jobdesk"=>$this->request->getPost("jobdesk"),
                "suara"=>$this->request->getPost("suara"),
                "foto"=>$this->request->getPost("foto"),
                "cara_bergerak"=>$this->request->getPost("cara_bergerak"),
                "slug" => url_title($this->request->getPost('nama'), '-', TRUE)
            ]);

            return redirect('admin/hantu');
        }

        //tampilkan form edit
        echo view('admin_edit_hantu');
    }

    //--------------------------------------------------------------------------------------------------

    public function delete($id){
        $hantu = new hantuModels();
        $hantu->delete($id);
        return redirect('admin/hantu');
    }


}