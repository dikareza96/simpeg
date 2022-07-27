
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Pengaduan Perilaku Pegawai
            <!-- <small>Preview</small> -->
        </h1>
       <!--  <ol class="breadcrumb">
            <li><a href="<?php echo base_url("backend/home/index");?>"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="<?php echo base_url("backend/".$route."/index");?>">Semua Pengaduan </a></li>
            <li class="active">Buat baru </li>
        </ol> -->
    </section>


    <!-- Main content -->
    <section class="content">
        <form role="form" method="POST" enctype="multipart/form-data" action="<?php echo base_url("".$route."/store");?>">

            <div class="row">
                <!-- left column -->
                <div class="col-md-12">
                    <!-- general form elements -->
                    <div class="box box-primary">
                        <!-- <div class="box-header with-border">
              <h3 class="box-title">New Post </h3>
          </div> -->
          <!-- /.box-header -->
          <!-- form start -->


          <div class="box-body">

            <div class="form-group">
                <label for="exampleInputEmail1">Pihak yang dilaporkan</label>
                <input type="text" class="form-control" id="tersangka" name="tersangka" placeholder="">
            </div>
            <div class="form-group">
                <label>Waktu kejadian:</label>
                <div class="input-group date">
                    <div class="input-group-addon">
                        <i class="fa fa-calendar"></i>
                    </div>
                    <input type="text" id="waktu_kejadian" name="waktu_kejadian" class="form-control pull-right">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Tempat kejadian</label>
                    <input type="text" class="form-control" id="tempat_kejadian" name="tempat_kejadian" placeholder="">
                </div>
                <label for="exampleInputEmail1">Detail Laporan</label>
                <div class="box-body pad">
                    <textarea class="form-control" rows="3" name="detail_laporan" id="detail_laporan"></textarea>
                </div>

                <div class="form-group">
                    <label for="exampleInputEmail1">Unggah Foto/video bukti</label>
                    <input type="file" class="form-control" id="image" name="image" >
                </div>




            </div>

            <div class="box-footer">
                <a href="<?php echo base_url("".$route."/index")?>" type="button" class="btn btn-default ">Back</a>
                <button type="submit" class="btn btn-info pull-right">Submit</button>
            </div>
            <!-- /.box-body -->






        </div>
        <!-- /.box -->

    </div>
    <!--/.col (left) -->
    <!-- right column -->

    <!--/.col (right) -->
</div>
<!-- /.row -->
</form>
</section>

<!-- /.content -->
</div>

<!-- jQuery 3 -->
<script src="<?php echo base_url(); ?>assets/backend/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Select2 -->
<script src="<?php echo base_url(); ?>assets/backend/bower_components/select2/dist/js/select2.full.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<?php echo base_url(); ?>assets/backend/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="<?php echo base_url(); ?>assets/backend/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url(); ?>assets/backend/dist/js/adminlte.min.js"></script>
<script src="<?php echo base_url(); ?>assets/backend/plugins/timepicker/bootstrap-timepicker.min.js"></script>
<script src="<?php echo base_url(); ?>assets/backend/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<script src="<?php echo base_url(); ?>assets/backend/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<script src="<?php echo base_url(); ?>assets/backend/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="<?php echo base_url(); ?>assets/backend/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script src="<?php echo base_url(); ?>assets/backend/plugins/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<script src="<?php echo base_url(); ?>assets/backend/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo base_url(); ?>assets/backend/dist/js/demo.js"></script>
<!-- CK Editor -->
<script src="<?php echo base_url(); ?>assets/backend/bower_components/ckeditor/ckeditor.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="<?php echo base_url(); ?>assets/backend/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>


<!-- CK Editor -->

<!-- Bootstrap WYSIHTML5 -->

<script>
  $(function () {
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
    // CKEDITOR.replace('content')
    //bootstrap WYSIHTML5 - text editor
    $('.textarea').wysihtml5()
})
</script>


<script>
  $(function () {
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
    // CKEDITOR.replace('editor2')
    //bootstrap WYSIHTML5 - text editor
    // $('.textarea').wysihtml5()
    //Date picker
    $('#waktu_kejadian').datepicker({
      autoclose: true,
      format: 'yyyy-mm-dd'
    })
})
</script>

