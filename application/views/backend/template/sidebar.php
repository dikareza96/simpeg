
<aside class="main-sidebar">
  <!-- sidebar: style can be found in sidebar.less -->
  <section class="sidebar">
    <!-- Sidebar user panel -->
    <div class="user-panel">
      <div class="pull-left image">
        <img src="<?php echo base_url(); ?>assets/backend/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
      </div>
      <div class="pull-left info">
        <p><?php echo $this->session->userdata('nama_lengkap'); ?></p>
        <!-- <p><?php echo $this->session->userdata('level'); ?></p> -->
        <!-- <a href="#"><i class="fa fa-circle text-success"></i> Onaline</a> -->
      </div>
    </div>
    <!-- search form -->

    <!-- /.search form -->
    <!-- sidebar menu: : style can be found in sidebar.less -->
    <ul class="sidebar-menu" data-widget="tree">
      <?php 
      if($this->session->userdata('level')=='pegawai' || $this->session->userdata('level')=='admin'){
        ?>
      <li class="treeview">
      <a href="#">
        <i class="fa fa-edit"></i> <span>Input</span>
        <span class="pull-right-container">
          <i class="fa fa-angle-left pull-right"></i>
        </span>
      </a>
      <ul class="treeview-menu">
        <li class=""><a href="<?php echo base_url("pengaduan/index");?>"><i class="fa fa-circle-o"></i> Form Pengaduan</a></li>
        
      </ul>
    </li>
    <?php 
     }
        ?>
         <?php 
      if($this->session->userdata('level')=='karumkit' || $this->session->userdata('level')=='admin' || $this->session->userdata('level')=='komite_medik' || $this->session->userdata('level')=='komite_etik' || $this->session->userdata('level')=='spi' || $this->session->userdata('level')=='humas'){
        ?>
    <li class="treeview">
      <a href="#">
        <i class="fa fa-table"></i> <span>Laporan</span>
        <span class="pull-right-container">
          <i class="fa fa-angle-left pull-right"></i>
        </span>
      </a>
      <ul class="treeview-menu">
        <li class=""><a href="<?php echo base_url("laporan/index");?>"><i class="fa fa-circle-o"></i>Laporan Pegawai</a></li>
        
      </ul>
    </li>
     <?php 
     }
        ?>
  </ul>


    </section>
    
  </aside>
<!-- content -->