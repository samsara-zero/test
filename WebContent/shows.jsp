<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>首页</title>
        <link rel="stylesheet" type="text/css" href="shows_css.css"/>
    </head>
    <script>

		window.onload = function () {

            var url = "data.json"/*json文件url，本地的就写本地的位置，如果是服务器的就写服务器的路径*/

            var request = new XMLHttpRequest();

            request.open("get", url);/*设置请求方法与路径*/

            request.send(null);/*不发送数据到服务器*/

            request.onload = function () {/*XHR对象获取到返回信息后执行*/

                if (request.status == 200) {/*返回状态为200，即为数据获取成功*/

                    var json = JSON.parse(request.responseText).result;
                    console.log(json);
                    var div1 =document.getElementById('div1');
                    for(var i=0;i<json.length;i++){
                	    //console.log(json[i].img);
                	    var table =document.createElement('table');
                	    table.innerHTML='<table  width="300" frame="below"  align="center">'
                	    +'<tr><td width="220" height="70" colspan="2"><font size="2">'+json[i].title+'</font></td>'
                        +'<td width="80"  rowspan="2" >'
                        +'<img src="'+json[i].img+'" width="80" height="80"  /></td></tr>'
                        +'<tr ><td width="100" height="20"><font size="1">'+json[i].author+'</font></td>'
                        +'<td width="100" height="20"><font size="1">'+json[i].time+'</font></td> </tr>'
                        +'</table>'
                	    div1.append(table);
                   }
               }
            }
		}
	</script>
	
    <style>
        .bor{border-radius:15px}
    </style>
    
    
    <body>
    <table width="300"  border="0" align="center">
        <tr >
            <td width="300" height="130" colspan="4">
                <img  class="bor" src="./img/merry.jpg" width="280" height="110"  />
            </td>
        </tr>
        <tr >
            <td width="75" height="50">
                <img src="./img/opendoor.png" width="35" height="35"  />
            </td>
            <td width="75" height="50">
                <img src="./img/charge.png" width="35" height="35"  />
            </td>
            <td width="75" height="50">
                <img src="./img/cheak.png" width="35" height="35"  />
            </td>
            <td width="75" height="50">
                <img src="./img/tel.png" width="35" height="35"  />
            </td>
        </tr>
        <tr >
            <td width="75" height="20">
                <input type="button"  style="background-color:transparent;border:0;" value="开门 ">
            </td>
            <td width="75" height="20">
                <input type="button"  style="background-color:transparent;border:0;" value="缴费 ">
            </td>
            <td width="75" height="20">
                <input type="button"  style="background-color:transparent;border:0;" value="报修">
            </td>
            <td width="75" height="20">
                <input type="button"  style="background-color:transparent;border:0;" value="投诉">
            </td>
        </tr> 
       
    </table>
    
    <div style="overflow:hidden;height:300px;width:280px;margin:20px auto;">
      <div id="div1"style="overflow-y:auto;overflow-x:hidden;height:100%;width:300px;margin:0 auto;">
         <h5>热门资讯</h5>  
         <hr width="300px">  
      </div>
    </div>
    </body>
</html>