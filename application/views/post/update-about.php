<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

    <div class="row">
        <div class="col-lg-12">
            <form action="" method="post" enctype="multipart/form-data">
                <input type="hidden" name="id" value="<?= $abouts['id']; ?>">
                <div class="form-group row">
                    <div class="col-sm-2">Picture</div>
                    <div class="col-sm-10">
                        <div class="row">
                            <div class="col-sm-3">
                                <img src="<?= base_url('assets/img/profile/') . $abouts['image'] ?>"
                                    class="img-thumbnail" alt="">
                            </div>
                            <div class="col-sm-9">
                                <div class="custom-file">
                                    <input type="file" class="custom-file-input" id="image" name="image">
                                    <label class="custom-file-label" for="image">Choose file</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class=" form-group row">
                    <div class="col-sm-6 mb-3 mb-sm-0">
                        <label for="name" class="col-sm-2 col-form-label">Fullname</label>
                        <input type="text" class="form-control form-control-user" id="name" name="name"
                            value="<?= $abouts['name'] ?>">
                        <?= form_error('name', '<small class="text-danger pl-3">', '</small>') ?>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="description" class="col-sm-2 col-form-label">Description</label>
                    <div class="col-sm-10">
                        <textarea type="text" class="form-control" id="description" name="description"
                            value=""><?= $abouts['description'] ?></textarea>
                    </div>
                </div>
              

                <div class="form-group row justify-content-end">
                    <div class="col-sm-12">
                        <button type="submit" name="submit" class="btn btn-primary btn-icon-split"><span
                                class="icon text-white-50">
                                <i class="fas fa-fw fa-save"></i>
                            </span>
                            <span class="text">Update</span></button>
                        <a href="<?= base_url('posting/about') ?>" class="btn btn-danger btn-icon-split"><span
                                class="icon text-white-50">
                                <i class="fas fa-fw fa-undo-alt"></i>
                            </span>
                            <span class="text">Back</span></a>
                    </div>
                </div>
            </form>
        </div>
    </div>


</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->