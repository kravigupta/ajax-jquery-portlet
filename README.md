Ajax Jquery Portlet
===================

This portlet is to help users who want to see Ajax working in a Liferay Portlet using JQuery. 

In this portlet I have added three links which on click send a request to get user information and display it on the portal using Ajax. To make it little complex I have used a Java class with a method which is called when link is clicked. The aim was to show users that a java class can be called using jsp like this and in similar manner database can be queried or other complex operations can be performed and used. 

This portlet showcases both jquery post and aui to call data using ajax.

Now with this portlet you can do any type of customization/testing you want with Ajax. For any bug/enhancements you find, please drop a mail to kravi.gupta@gmail.com with detailed description. 


Steps to deploy and use:
========================
This porltet deploys just like other hot deployable plugins of Liferay.<br/>
1. If you have the source code, build it to a war file.<br/>
2. Put the package file in deploy folder of Liferay Portal.<br/>
3. Now add the portlet to a page <br/>
4. There would be two links to click <br/>
4.1 Get User Data using ActionUrl -- brings data using actionUrl<br/>
4.2 Get User Data using ResourceURL and ServeResource -- brings data using resourceUrl<br/>
4.3 Get User Data using ResourceURL and ServeResource Alloy UI -- calls using aui.

Link to blog posts:
===================

1. [Liferay] Ajax with JQuery, AUI with Action URL / Resource URL
http://techdc.blogspot.in/2014/11/liferay-ajax-with-jquery-aui-with.html

2. Ajax Jquery Portlet on Sourceforge for older versions.
http://sourceforge.net/projects/ajaxjqueryportl/
