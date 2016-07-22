#Script Project Readme
***

![Project icon](https://raw.githubusercontent.com/C-L-G/scripts/master/resource/picture/project.png)
        [**GitHub帮助**](https://guides.github.com/activities/hello-world/)<br>
        [**Markdown帮助**](https://help.github.com/articles/getting-started-with-writing-and-formatting-on-github/)<br>
 
 ***
#概览

你可以点击[@Github/C-L-G/Scripts](https://github.com/C-L-G/scripts])进行工程阅览。

| 名称             	|  说明 						|
| ------------------------|--------------------|
| 工程名    			|  Scripts            		|
| 作者           	|  离场悲剧   				|
| 状态            	|  进行中                  	|
| 授权           	|  CPL                   	|
| 其他           	|  参考，包括shell perl tcl等|         

***
#工程目录

***
目录图例 : <br>
**粗体** - 文件夹  <br>
普通   - 普通文件 <br>
*斜体* - 可执行脚本<br>
 ~~删除~~ - 已经被删除或者移动的文件<br>
***

----------------------------------------------------------------
* **----document**
* ~~**----mkdir**~~ 
* ~~----mkdir/svn_director_create.pl~~
* **----perl**
* *----perl/svn_director_create.pl*
* *----perl/cklog*
* **----resource**
* **----resource/picture**
* ----resource/picture/project.png
* **----resource/template**
* ----resource/template/template_verilog.v
* ----README.md
* ----script_header.txt
* **----tool**

----------------------------------------------------------------


<pre>
	C-L-G/FPGA1988/RogerWang
</pre>
>话说我还不知道开源的license是怎么使用的，目前打算使用CPL，难道仅仅只需要在声明一下就可以了么？求指导^_^!<br>
>>另外,发觉Github还挺好玩的...</br>
>>>... 

***
#更新预览
1. 更新文件 : verilog_template.v
```verilog
module verilog_top(
    clk     ,//I    01
    rst_n   ,//I    01
    write   ,//I    01
    din     ,//I    16
    addr    ,//I    08
    dout     //O    32

);

    //**************************************************************************************************** 
    //1.The Input and Output Declaration
    //**************************************************************************************************** 
    
    
    //---------------------------------------------------------------------------------------------------- 
    //1.1 The Input pins
    //---------------------------------------------------------------------------------------------------- 


    input   wire            clk   ;
    input   wire            rst_n ;
    input   wire            write ;
    input   wire  [15:0]    din   ;
    input   wire  [07:0]    addr  ;
    output  wire  [31:0]    dout  ;
    ......    
```
2. 更新了cklog

```perl
	#----------------------------------------------------------------------------------------------------
#2.2 File check and open
#----------------------------------------------------------------------------------------------------
if((!-e "$ENV{prj_name}/digital/verif/log/bt${batnum}_subt.bat"){
	print "\n$ENV{prj_name}/digital/verif/log/bt${batnum}_subt.bat is for checking log file,but Not Exist.\n";
	print "Now please copy bt${batnum}_subt.bat to $ENV{prj_name}/digital/verif/log/ for checking log file.\n";
	exit;
}
open	SUBTBAT,"< $ENV{prj_name}/digital/verif/log/bt${batnum}_subt.bat" or die "Open file subt.bat error : $!\n";
open	FPASS,"> ./bt${batnum}_tc_pass.list" or die "Open file bt${batnum}_tc_pass.list error : $!\n";
open	FFAIL,"> ./bt${batnum}_tc_fail.list" or die "Open file bt${batnum}_tc_fail.list error : $!\n";
$tcpass_cnt = 0;
$tcfail_cnt = 0;
	while($line = <SUBTBAT){
		if($line =~ /runn(\s+)-pt(\w+)(\s+)-cr(\s+)(\w+)(\s+).*-tc(\s+)(.*)/){
			$post 		= $3;
			$clkrate	= $6;
```
3. 更新了Readme中的相关描述
***

#任务记录
***

- [x] 目录创建脚本更新<br>
- [ ] log自动检查脚本更新<br>
- [ ] 其他

***

#其他 
如果有任何问题，可以与我联系 ：
你可以给<303526279@qq.com>发邮件。<br>
当然如果你需要任何帮助，那么你可以点击`帮助`按钮进行相关查询。   
***

![signed](https://raw.githubusercontent.com/C-L-G/scripts/master/resource/picture/signed.png) 
