############################## 
#1 is verilog ,0 is vhdl 
set lang    1  
#test mode :0 ; simulator mode :1 
set mode    1 
set top       fifo_test  
set period    10 
############################## 
 
set path    [pwd] 
set scripts $path 
set dir     [file dirname $path] 
set debussy [file join [file join $dir "debussy"]] 
set work    [file join [file join $dir "work"]] 
if {! [file isdirectory $debussy ]} { 
 file mkdir $debussy 
} 
 
if { ! [file isdirectory $work]} { 
  file mkdir $work 
} 
 
set run     [open [file join $path "run.f"] w] 
set gui_dir [file join $scripts gui] 
set gui     [file join [file join $scripts gui] gui.tcl] 
set sig     [file join $path signal.f] 
set tb      [file join [file dirname [file dirname $dir]] tb] 
 
if {  $lang == 1} { 
  set src     [file join [file join [file dirname [file dirname $dir]] src] verilog] 
  foreach f   [glob -nocomplain [file join $src "*.v"]] {   
     puts $run $f 
  } 
 
  foreach f   [glob -nocomplain [file join $tb "*.v"]] {   
   puts $run $f 
  } 
} else { 
  set src     [file join [file join [file dirname [file dirname $dir]] src] VHDL] 
  foreach f   [glob -nocomplain [file join $src "pkg*CONFIG.vhd"]] { 
      puts $run $f 
  } 
   
  foreach f   [glob -nocomplain [file join $src "pkg*LEVEL.vhd"]] { 
      puts $run $f 
  } 
   
  foreach f   [glob -nocomplain [file join $src "pkg*.vhd"]] { 
      if {![regexp {pkg*LEVEL.vhd} $f]} { 
         puts $run $f 
      } 
  } 
  foreach f   [glob -nocomplain [file join $src "*.Entity.vhd"]] { 
      puts $run $f 
  } 
  foreach f   [glob -nocomplain [file join $src "*Behavior.vhd"]] { 
      puts $run $f 
  } 
  foreach f   [glob -nocomplain [file join $tb "*.vhd"]] {   
   puts $run $f 
  } 
} 
close $run 
puts "Work Directory===========>$work" 
cd  $work 
vlib work 
if { $lang == 1 } { 
 vlog  -f [file join $scripts run.f] 
 puts "compiled verilog files" 
} else { 
 vcom  -f [file join $path run.f] 
 puts "compiled vhdl files" 
} 
vsim $top 
 
if { [file exists $sig] } { 
  puts "Signal file========>$sig" 
  set s [open $sig r] 
  while {![eof $s]} { 
   gets $s signal 
   if { [string compare $signal ""]} { 
     if {! [regexp {#.*} $signal]} { 
       add wave -hex $signal 
       puts "Add signal to Wave Window============>$signal" 
     } 
   } 
  } 
  close $s 
} else { 
 add wave -hex * 
} 
 
 
proc lw {} { 
  global sig 
  if { [file exists $sig] } { 
  puts "Signal file========>$sig" 
  set s [open $sig r] 
  while {![eof $s]} { 
   gets $s signal 
   if { [string compare $signal ""]} { 
     if {! [regexp {#.*} $signal]} { 
       add wave -hex $signal 
       puts "Add signal to Wave Window============>$signal" 
     } 
   } 
  } 
  close $s 
} else { 
 add wave -hex * 
} 
} 
