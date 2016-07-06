#Script Project Readme
***

![Project icon](https://raw.githubusercontent.com/C-L-G/scripts/master/resource/picture/project.png)
        [帮助](https://guides.github.com/activities/hello-world/)
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

* ----document
* ----mkdir 
* -----svn_director_create.pl
* ----picture 
* -----project.png
* ----README.md
* ----script_header.txt
* ----tool
* 
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
2. 更新了新的TODO issue #1.

***
#其他 
如果有任何问题，可以与我联系 ：
你可以给<303526279@qq.com>发邮件。<br>
当然如果你需要任何帮助，那么你可以点击`帮助`按钮进行相关查询。   
***
![signed](https://raw.githubusercontent.com/C-L-G/scripts/master/resource/picture/signed.png)
=======
![signed](https://raw.githubusercontent.com/C-L-G/scripts/master/resource/picture/signed.png) 
