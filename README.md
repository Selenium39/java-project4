# java-project4
基于SSM的网络相册

项目用到的技术:ssm+jqeury
数据库:mysql

目的:熟悉ssm的整合，熟悉crud，学会对于照片文件的处理

出现的问题:
1.eclipse修改了css文件，但是页面并没有变化:
答:是浏览器缓存的原因，解决方法:①.ctrl+f5强制刷新②打开调试模式,禁止缓存
2.eclipse每次都要clean一下项目不然部署不上:
https://blog.csdn.net/IDOshi201109/article/details/51178210(project--->bulidAuto)

缺点:
1.很多细节处没有完善，比如在登录时，如果第一次前端验证没通过，只有通过刷新才能再次登录，因为前端验证我是通过一个Flag的标志进行验证的当第一次验证后如果没能通过，则Flag为False,如果不刷新就永远登录不了了.
2.有的功能未实现，如照片的删除功能，还有对于用户的管理后台，以及用户添加水印的权限(应该只有自己上传的照片才能添加水印)，还有对水印照片的直接访问
3.出现了很多重复的代码，冗余度很高，很多地方直接写死了，项目的扩张性差，就比如其实输出的照片只能输出.jpg的照片(看showImages.jsp代码可以看出)
4.对于验证不应该放置在Controller中，应该使用aop技术(我太菜了),设置全局异常捕获(注意使用全局异常捕获的时候就不能用try catch)
5.照片并没有真正的放入到数据库中，是放在项目中的images目录中的，存入数据库中的其实只是图片的路径，这么做虽然简单一点，但是使得项目过于臃肿.
６.数据库表设计时除了id,其他都设为了String(没有类型装换，比较简单),但是感觉这样不太好，失去了代表的意义．
７．photoType本来想使用枚举类型的，感觉不太会用，又没用了，嘤嘤嘤

进步的地方:
1.这次将js,css与html分离开了，页面结构更加的清晰，思路也更好.
2.学会了对于照片文件的处理(springmvc 配置mutiPartFileViewResvolver ,表单使用　enctype="multipart/form-data",引入commons-io,commons-fileupload,使用MutiPartFile flie)

总结:
因为有了<a href="https://github.com/wantao666/java-project3">java-project3</a>的经验，这次的整合还是比较的轻松，没有遇到什么大的问题，但是这些代码写的太垃圾了，希望可以慢慢进步.
