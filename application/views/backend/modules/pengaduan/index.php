
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Pengaduan Perilaku Pegawai
        
      </h1> 
    
    </section>
 <!-- Main content -->
    <section class="content container-fluid">
      <div class="row">
        <div class="col-xs-12">
          <div class="box box-success">
            <div class="box-header">
              <h3 class="box-title">Daftar Pengaduan</h3>
               <div class="box-tools pull-right">
              <!--   <?php if($profile )?> -->
              
                   <a href="<?php echo base_url("".$route."/create");?>" class="btn btn-success btn-sm btn-flat">
                          
                          Buat Pengaduan
                    </a>
                 </div>
               
            </div>

            <!-- /.box-header -->
            <div class="box-body">
              <table id="table" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
                <thead>
                  <tr>
                      <th class="text-center">NO.</th>
                      <th class="text-center">Pihak yang dilaporkan</th>
                      <th class="text-center">Waktu kejadian</th>
                      <th class="text-center">Tempat kejadian</th>
                      <th class="text-center">Status aduan</th>
                      <th class="text-center">Action</th>
                  </tr>
                </thead>

                <tbody>
                  <?php $no=1; 

                foreach ($pengaduan as $row) {
                  $date=date_create($row->waktu_kejadian);
                  $en= array("Sunday", "Monday", "Tuesday", "Wednesday","Thursday","Friday", "Saturday",
                  "January","February","March","April", "May","June","July","August","September","October","November","Desember");
                  $id = array("Minggu", "Senin","Selasa","Rabu","Kamis","Jumat","Sabtu",
                  "Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","November","Desember");
                  // str_replace($en, $id, strftime("%d %B %Y", strtotime($date)));
                ?> 
                <tr>
                  <td class="text-center"><?php echo $no++ ?></td>
                  <td class="text-center"><?php echo $row->tersangka; ?></td>
                  <td class="text-center"><?php echo str_replace($en, $id, strftime("%d %B %Y", strtotime($row->waktu_kejadian)));?></td>
                  <td class="text-center"><?php echo $row->tempat_kejadian; ?></td>
                  <?php
                  if(0 ==  $row->status){?> 
                <td class="text-center"><a href="" class="btn btn-info btn-sm btn-flat" >
                          Aduan diterima
                         </a></td>
              
                  <?php }elseif(1 ==  $row->status) {?>
                    <td class="text-center"><a href="" class="btn btn-warning btn-sm btn-flat" >
                          Aduan diteruskan
                         </a></td>
                  <?php } elseif(2 ==  $row->status) {?>
                     <td class="text-center"><a href="" class="btn btn bg-purple btn-sm btn-flat" >
                          Aduan di proses
                         </a></td>
                  <?php }elseif(3 ==  $row->status) { ?>
                  
                     <td class="text-center"><a href="" class="btn btn-success btn-sm btn-flat" >
                          Aduan selesai
                         </a></td>
                  <?php } ?>
                  <td class="text-center" style="width:150px;">
                   <form method="POST" action="<?php echo base_url("backend/".$route."/destroy/$row->id") ?>" accept-charset="UTF-8">
                      <a href="<?php echo base_url("".$route."/edit/$row->id") ?>" class="btn btn-primary btn-sm btn-flat" >
                          Detail Aduan
                         </a>
                      

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
  })
</script>
    