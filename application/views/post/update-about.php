<!-- Begin Page Content -->
<div class="container-fluid">
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
    <div class="row">
        <div class="col-lg-12">
            <form action="" method="post" enctype="multipart/form-data">
                <input type="hidden" name="id" value="<?= $abouts['id']; ?>">
                <div class="form-group row">
                    <label for="image" class="col-sm-2 col-form-label">Gambar</label>
                    <div class="col-sm-10">
                        <div class="row">
                            <div class="col-sm-3">
                                <?php if ($abouts['image'] !== '') { ?>
                                <img src="<?= base_url('assets/img/posting/about') . $abouts['image'] ?>"
                                    class="img-thumbnail" alt="">
                                <?php } else { ?>
                                <img src="<?= base_url('assets/img/posting/about/default.jpg') ?>" class="img-thumbnail"
                                    alt="">
                                <?php } ?>
                            </div>
                            <div class="col-sm-9">
                                <div class="custom-file">
                                    <input type="file" class="custom-file-input" id="image" name="image">
                                    <label class="custom-file-label" for="image">Pilih file</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="name" class="col-sm-2 col-form-label">Nama</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="name" name="name"
                            value="<?= $abouts['name'] ?>">
                        <?= form_error('name', '<small class="text-danger">', '</small>'); ?>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="description" class="col-sm-2 col-form-label">Deskripsi</label>
                    <div class="col-sm-10">
                        <textarea class="form-control" id="description" name="description"
                            style="height: 200px;"><?= $abouts['description'] ?></textarea>
                    </div>
                </div>
                <div class="form-group row justify-content-end">
                    <div class="col-sm-12">
                        <button type="submit" name="submit" class="btn btn-primary btn-icon-split">
                            <span class="icon text-white-50">
                                <i class="fas fa-fw fa-save"></i>
                            </span>
                            <span class="text">Update</span>
                        </button>
                        <a href="<?= base_url('posting/about') ?>" class="btn btn-danger btn-icon-split">
                            <span class="icon text-white-50">
                                <i class="fas fa-fw fa-undo-alt"></i>
                            </span>
                            <span class="text">Back</span>
                        </a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- /.container-fluid -->
