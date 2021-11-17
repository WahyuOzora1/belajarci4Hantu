<?= $this->extend('layout/admin/admin_layout') ?>

<?= $this->section('nama') ?>

<form action="" method="post" id="text-editor">
    <input type="hidden" name="id" value="<?= $hantu['id'] ?>" />
    <div class="form-group">
        <label for="title">nama</label>
        <input type="text" name="nama" class="form-control" placeholder="Masukkan Nama Hantu" value="<?= $hantu['nama'] ?>" required>
    </div>
    <div class="form-group">
        <label for="title">jenis</label>
        <input type="text" name="jenis" class="form-control" placeholder="Masukkan jenis Hantu" value="<?= $hantu['jenis'] ?>">
    </div>
    <div class="form-group">
        <label for="title">habitat</label>
        <input type="text" name="habitat" class="form-control" placeholder="Masukkan habitat Hantu" value="<?= $hantu['habitat'] ?>">
    </div>
    <div class="form-group">
        <label for="title">jam tayang</label>
        <input type="datetime" name="title" class="form-control" placeholder="Masukkan jam tayang Hantu" value="<?= $hantu['jam_tayang'] ?>">
    </div>
    <div class="form-group">
        <label for="title">pangkat</label>
        <input type="text" name="pangkat" class="form-control" placeholder="Masukkan pangkat Hantu" value="<?= $hantu['pangkat'] ?>">
    </div>
    <div class="form-group">
        <label for="title">jobdesk</label>
        <input type="text" name="jobdesk" class="form-control" placeholder="Masukkan jobdesk Hantu" value="<?= $hantu['jobdesk'] ?>">
    </div>
    <div class="form-group">
        <label for="title">suara</label>
        <input type="text" name="suara" class="form-control" placeholder="Masukkan suara Hantu" value="<?= $hantu['suara'] ?>">
    </div>
    <div class="form-group">
        <label for="title">cara bergerak</label>
        <input type="text" name="cara_bergerak" class="form-control" placeholder="Masukkan cara bergerak Hantu" value="<?= $hantu['cara_bergerak'] ?>">
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