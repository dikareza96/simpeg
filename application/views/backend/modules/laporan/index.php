
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Laporan Pegawai 

    </h1> 

    <?php if($this->session->flashdata('sukses')){?>
       <div class="alert alert-success  alert-dismissible" id="sukses_popup">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <h4><i class="icon fa fa-ban"></i> Warning</h4>
                    Data sukses terimpan!
                </div>
      <?php }?>
    
  </section>
  <!-- Main content -->
  <section class="content container-fluid">
    <div class="row">
      <div class="col-xs-12">
        <div class="box box-success">
          <div class="box-header">
            <h3 class="box-title">Data Laporan Pegawai</h3>
            <div class="box-tools pull-center-container">

              <a class="btn btn-success btn-sm btn-flat"  > <span> Laporan Diterima &nbsp;</span> <span class="pull-center-container">

                <small class="label pull-right bg-red"><?php echo $masuk; ?></small>
              </span>


            </a>
            <a class="btn btn-success btn-sm btn-flat"  >   Laporan Diproses &nbsp;<span class="pull-center-container">

              <small class="label pull-right bg-red"><?php echo $proses; ?></small>
            </span>


          </a>
          <a class="btn btn-success btn-sm btn-flat"  >   Laporan Selesai &nbsp;<span class="pull-center-container">

            <small class="label pull-right bg-red"><?php echo $selesai; ?></small>
          </span>


        </a>
      </div>

    </div>

    <!-- /.box-header -->
    <div class="box-body">
      <table id="table" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
        <thead>
          <tr>
            <th class="text-center">NO.</th>
            <th class="text-center">Tanggal laporan</th>
            <th class="text-center">Waktu kejadian</th>
            <th class="text-center">Tempat kejadian</th>
            <th class="text-center">Pihak yg dilaporkan</th>
            <th class="text-center">Pelapor</th>
            <th class="text-center">Status Aduan</th>
            <th class="text-center">Action</th>
          </tr>
        </thead>

        <tbody>
          <?php $no=1; 
          foreach ($laporan as $row) {
            $date=date_create($row->waktu_kejadian);
                  $en= array("Sunday", "Monday", "Tuesday", "Wednesday","Thursday","Friday", "Saturday",
                  "January","February","March","April", "May","June","July","August","September","October","November","Desember");
                  $id = array("Minggu", "Senin","Selasa","Rabu","Kamis","Jumat","Sabtu",
                  "Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","November","Desember");
            ?> 
            <tr>
              <td class="text-center"><?php echo $no++ ?></td>
              <td class="text-center"><?php echo str_replace($en, $id, strftime("%d-%B-%Y %H:%M:%S", strtotime($row->created_at)));?></td>
              <td class="text-center"><?php echo str_replace($en, $id, strftime("%d %B %Y", strtotime($row->waktu_kejadian)));?></td>
              <td class="text-center"><?php echo $row->tempat_kejadian; ?></td>
              <th class="text-center"><?php echo $row->tersangka; ?></th>
              <th class="text-center"><?php echo $row->korban; ?></th>
               <?php
                  if(0 ==  $row->status){?> 
                  <td class="text-center"><a href="" class="btn btn-info btn-sm btn-flat" >
                          Aduan diterima
                           </a></td>
                  <?php }elseif(1 ==  $row->status) {?>
                    <td class="text-center"><a href="" class="btn btn-warning btn-sm btn-flat" >
                          Evaluasi 
                         </a></td>
                  <?php } elseif(2 ==  $row->status) {?>
                     <td class="text-center"><a href="" class="btn btn bg-purple btn-sm btn-flat" >
                          Keputusan Karumkit
                         </a></td>
                  <?php }elseif(3 ==  $row->status) { ?>
                     <td class="text-center"><a href="" class="btn btn-success btn-sm btn-flat" >
                          Aduan selesai
                         </a></td>
                  <?php } ?>

              <td class="text-center" style="width:150px;">
               <form method="POST" action="<?php echo base_url("".$route."/destroy/$row->id") ?>" accept-charset="UTF-8">
                <?php 
                              if($this->session->userdata('level')=='komite_medik' || $this->session->userdata('level')=='admin' || $this->session->userdata('level')=='komite_etik' || $this->session->userdata('level')=='komite_tenaga' || $this->session->userdata('level')=='komite_keperawatan' || $this->session->userdata('level')=='spi' || $this->session->userdata('level')=='humas'){
                                ?>
                <a href="<?php echo base_url("".$route."/edit/$row->id") ?>" class="btn btn-primary btn-sm btn-flat" >
                  Detail Laporan
                </a>
                <?php } ?>
                 <?php 
                              if($this->session->userdata('level')=='karumkit' || $this->session->userdata('admin')=='admin'){
                                ?>
                <div class="btn-group">
                <button type="button" class="btn btn-primary">Pilihan</button>
                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                  <span class="caret"></span>
                  <span class="sr-only">Toggle Dropdown</span>
                </button>
                <ul class="dropdown-menu" role="menu">
                  <!-- <li><a href="<?php echo base_url("".$route."/edit/$row->id") ?>">1. Kirim</a></li> -->
                  <li><a href="<?php echo base_url("".$route."/tindak_lanjut/$row->id") ?>">1. Keputusan</a></li>
                  <li><a href="<?php echo base_url("".$route."/tindak_lanjut/$row->id") ?>">2. Tutup kasus</a></li>
                  
                </ul>
              </div>
              <?php } ?>
                     <!--  <input name="_method" type="hidden" value="DELETE">
                      <input name="_token" type="hidden" value="{{ csrf_token() }}">
                      <input type="submit" class="btn btn-danger btn-sm btn-flat" onclick="return confirm('Anda yakin akan menghapus data ini?');" value="Hapus"> -->

                    </form>
                  </td>     
                </tr> 
              <?php } ?>
              
            </tbody>

          </table>
        </div>
        <!-- /.box-body -->
      </div>
      <!-- /.box -->
    </div>
    <!-- /.col -->
  </div>
  <!-- /.row -->
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->


<!-- jQuery 3 -->
<script src="<?php echo base_url(); ?>assets/backend/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<?php echo base_url(); ?>assets/backend/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- DataTables -->
<script src="<?php echo base_url(); ?>assets/backend/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="<?php echo base_url(); ?>assets/backend/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="<?php echo base_url(); ?>assets/backend/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="<?php echo base_url(); ?>assets/backend/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url(); ?>assets/backend/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo base_url(); ?>assets/backend/dist/js/demo.js"></script>
<!-- page script -->
<script>
 $(function () {

  $('#table').DataTable()
});
 setTimeout(function() {
      $('#sukses_popup').hide()
    }, 4000);
</script>
