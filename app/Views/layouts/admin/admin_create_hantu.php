<?= $this->extend('layout/admin/admin_layout') ?>

<?= $this->section('nama') ?>

<form action="" method="post" id="text-editor" enctype="multipart/form-data">
    <div class="form-group">
        <label for="title">nama</label>
        <input type="text" name="nama" class="form-control" placeholder="Masukkan Nama Hantu" required>
    </div>
    <div class="form-group">
        <label for="title">jenis</label>
        <input type="text" name="jenis" class="form-control" placeholder="Masukkan jenis Hantu">
    </div>
    <div class="form-group">
        <label for="title">habitat</label>
        <input type="text" name="habitat" class="form-control" placeholder="Masukkan habitat Hantu">
    </div>
    <div class="form-group">
        <label for="title">jam tayang</label>
        <input type="datetime" name="title" class="form-control" placeholder="Masukkan jam tayang Hantu">
    </div>
    <div class="form-group">
        <label for="title">pangkat</label>
        <input type="text" name="pangkat" class="form-control" placeholder="Masukkan pangkat Hantu">
    </div>
    <div class="form-group">
        <label for="title">jobdesk</label>
        <input type="text" name="jobdesk" class="form-control" placeholder="Masukkan jobdesk Hantu">
    </div>
    <div class="form-group">
        <label for="title">suara</label>
        <input type="text" name="suara" class="form-control" placeholder="Masukkan suara Hantu">
    </div>
    <div class="form-group">
        <label for="title">cara bergerak</label>
        <input type="text" name="cara_bergerak" class="form-control" placeholder="Masukkan cara bergerak Hantu">
    </div>

    <div class="form-group">
        <label for="title">foto</label>
        <input type="file" name="foto" class="form-control-file" placeholder="Masukkan foto Hantu">
    </div>
  
    <div class="form-group">
        <button type="submit" name="status" value="published" class="btn btn-primary">Publish</button>
        <button type="submit" name="status" value="draft" class="btn btn-secondary">Save to Draft</button>
    </div>
</form>


<?= $this->endSection() ?>