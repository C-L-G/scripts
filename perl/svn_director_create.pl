#/usr/bin/perl
#---------------------------------------------------------------------------------------------------- 
#------------------Copyright © 2016 C-L-G.FPGA1988.Roger Wang. All rights reserved-------------------
#
#                   --              It to be define                --
#                   --                    ...                      --
#                   --                    ...                      --
#                   --                    ...                      --
#---------------------------------------------------------------------------------------------------- 
#File Information
#---------------------------------------------------------------------------------------------------- 
#File Name      : svn_director_create.pl 
#Project Name   : scripts
#Description    : The perl script which can create a standard svn work director.
#Github Address : https://github.com/C-L-G/scripts/mkdir/svn_director_create.pl
#License        : CPL
#---------------------------------------------------------------------------------------------------- 
#Version Information
#---------------------------------------------------------------------------------------------------- 
#Create Date    : 01-07-2016 17:00(1th Fri,July,2016)
#First Author   : Roger Wang
#Modify Date    : 03-07-2016 14:20(1th Sun,July,2016)
#Last Author    : Roger Wang
#Version Number : 001   
#Last Commit    : 03-07-2016 14:30(1th Sun,July,2016)
#---------------------------------------------------------------------------------------------------- 
#Revison History
#---------------------------------------------------------------------------------------------------- 
#03-07-2016 - Roger Wang - Add os match to use the tree command : Linux and Mac OS have been added.
#03-07-2016 - Roger Wang - Add the project path and verif path parameter.
#02-07-2016 - Roger Wang - Add the tree show operation of the project : linux and mac os.
#02-07-2016 - Roger Wang - Add the file header and do some modification on the mkdir.
#01-07-2016 - Roger Wang - The initial version.
#---------------------------------------------------------------------------------------------------- 

#---------------------------------------------------------------------------------------------------- 
#---------------------------------------------------------------------------------------------------- 
#1. The Global Parameter Define
#---------------------------------------------------------------------------------------------------- 
#---------------------------------------------------------------------------------------------------- 
$os_get = "$^o"; 


#---------------------------------------------------------------------------------------------------- 
#1.1 the test variable
#---------------------------------------------------------------------------------------------------- 
#$os_get = "linux Centos 5.7"; 

print "Now you are run the $os_get os.\n"; 
$project_path = "/Users/bwang/projects";
print "the project path = $project_path\n";
$project_name = "$project_path/asic_project";
$verif_arch   = "{bin,flist,model,tb,tc,wave}";

#---------------------------------------------------------------------------------------------------- 
#---------------------------------------------------------------------------------------------------- 
#2. The Main Code
#---------------------------------------------------------------------------------------------------- 
#---------------------------------------------------------------------------------------------------- 

system "mkdir $project_name";
system "mkdir $project_name/branches";
system "mkdir $project_name/tags";
system "mkdir $project_name/trunk";
system "mkdir $project_name/trunk/doc";
system "mkdir $project_name/trunk/doc/spec";
system "mkdir $project_name/trunk/env";
system "mkdir $project_name/trunk/ic";
system "mkdir $project_name/trunk/ic/apr";
system "mkdir $project_name/trunk/ic/digital";
system "mkdir $project_name/trunk/ic/lib";
system "mkdir $project_name/trunk/ic/fullchip";
system "mkdir $project_name/trunk/ic/typeout";
#---------------------------------------------------------------------------------------------------- 
#2.1 The digital director
#---------------------------------------------------------------------------------------------------- 
system "mkdir $project_name/trunk/ic/digital/formal";
system "mkdir $project_name/trunk/ic/digital/rtl";
system "mkdir $project_name/trunk/ic/digital/sta";
system "mkdir $project_name/trunk/ic/digital/sta/pre_layout";
system "mkdir $project_name/trunk/ic/digital/sta/post_layout";
system "mkdir $project_name/trunk/ic/digital/syn";
system "mkdir $project_name/trunk/ic/digital/syn/reports";
system "mkdir $project_name/trunk/ic/digital/syn/results";
system "mkdir $project_name/trunk/ic/digital/syn/scripts";
#2.1.1 you can use -p to create the director
#system "mkdir $project_name/trunk/ic/digital/verif";
#system "mkdir $project_name/trunk/ic/digital/verif/bin";
#system "mkdir $project_name/trunk/ic/digital/verif/flist";
#system "mkdir $project_name/trunk/ic/digital/verif/tb";
#system "mkdir $project_name/trunk/ic/digital/verif/tc";
#system "mkdir $project_name/trunk/ic/digital/verif/wave";
system "mkdir -p $project_name/trunk/ic/digital/verif/$verif_arch";
system "mkdir $project_name/trunk/ic/digital/power";
#---------------------------------------------------------------------------------------------------- 
#2.2 The fpga director
#---------------------------------------------------------------------------------------------------- 
system "mkdir $project_name/trunk/ic/fpga";
system "mkdir $project_name/trunk/ic/fpga/constraint";
system "mkdir $project_name/trunk/ic/fpga/prj";
system "mkdir $project_name/trunk/ic/fpga/cfg";
system "mkdir $project_name/trunk/ic/fpga/src";
#system "mkdir $project_name/trunk/ic/fpga/verif";
#system "mkdir $project_name/trunk/ic/fpga/verif/bin";
#system "mkdir $project_name/trunk/ic/fpga/verif/flist";
#system "mkdir $project_name/trunk/ic/fpga/verif/tb";
#system "mkdir $project_name/trunk/ic/fpga/verif/tc";
#system "mkdir $project_name/trunk/ic/fpga/verif/wave";
system "mkdir -p $project_name/trunk/ic/fpga/verif/$verif_arch";

#---------------------------------------------------------------------------------------------------- 
#2.3 The tree function
#---------------------------------------------------------------------------------------------------- 

if(($os_get =~ m/(RedHat).*(\d.*\.\d.*).*/) | ($os_get =~m/(Centos).*(\d.*\.\d.*).*/))
  {
    print "You are running a Linux OS of $1-$2.\n";
    system "tree $project_name";
  }
elsif($os_get =~ m/.*(OUT).*/)
  {
    print  "You and running a Mac OS X of $1.\n";
    system "find $project_name -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'";
  }
else
  {
    print "Sorry,I can't recognize the os.\n";
  }
print "Thank you for use the script!\n";


#---------------------------------------------------------------------------------------------------- 
#---------------------------------------------------------------------------------------------------- 
#3. The End
#---------------------------------------------------------------------------------------------------- 
#---------------------------------------------------------------------------------------------------- 
