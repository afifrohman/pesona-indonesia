<?= $this->session->flashdata('message'); ?>
<div class="card text-center">
    <div class="card-header">
        <h3><b><?= $title; ?></b></h3>
    </div>
    <div class="card-body">
        <img src="<?= base_url('assets/img/posting/about/') . $about['image']; ?>" class="rounded-circle mb-3"
            alt="Cinque Terre" height="150px" width="150px">
        <h5 class="card-title"><?= $about['name']; ?></h5>
        <p class="card-text"><?= $about['description']; ?></p>
        
        <a href="<?= base_url() ?>posting/editabout/<?= $about['id'] ?>" class="btn btn-warning btn-icon-split">
            <span class="icon text-white-50">
                <i class="fas fa-fw fa-edit"></i>
            </span>
            <span class="text">Change</span> </a>
    </div>
    <div class="card-footer text-muted">
        Updated at <?= date('d F Y', $about['date_created']); ?>
    </div>
</div>