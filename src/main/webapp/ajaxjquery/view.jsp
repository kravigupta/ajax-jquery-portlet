<%--
/**
* Copyright (c) 2000-2010 Liferay, Inc. All rights reserved.
*
* This library is free software; you can redistribute it and/or modify it under
* the terms of the GNU Lesser General Public License as published by the Free
* Software Foundation; either version 2.1 of the License, or (at your option)
* any later version.
*
* This library is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
* FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
* details.
*/
--%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ page import="javax.portlet.*"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet"%>
<%@ page import="com.liferay.portal.kernel.portlet.LiferayWindowState" %>
<portlet:defineObjects />
<%PortletPreferences prefs = renderRequest.getPreferences();%>

<script src="<%=request.getContextPath()%>/js/jquery.js" language="javascript" type="text/javascript"></script>

<%@include file="/css/style.jsp" %>
<script type="text/javascript" language="javascript">
    $(document).ready(function(){
    	$("#dataLink").click(function(){
            var url = '<portlet:actionURL windowState="<%= LiferayWindowState.EXCLUSIVE.toString() %>"><portlet:param name="ajaxAction" value="getData"></portlet:param></portlet:actionURL>';
            $.post(url, {}, function(data){
                $("#userData").html(data);
            })
        });
    	$("#dataLink2").click(function(){
            var url = '<portlet:resourceURL id="getDataResourceURL"></portlet:resourceURL>';
            $.post(url, {username:'ravi'}, function(data){
                $("#userData2").html(data);
            })
        });
    	$("#dataLink3").click(function(){
    		var url = '<portlet:resourceURL id="getDataAUIResourceURL"></portlet:resourceURL>';
    	    AUI().use(
    	              'aui-io-request',
    	              function (Y) {
    	                Y.io.request(
    	                        url,
    	                  {
    	                    on: {
    	                      success: function() {
    	                        var data = this.get('responseData');
    	                        $("#userData3").html(data);
    	                      }
    	                    }
    	                  }
    	                );
    	              }
    	            );
        });
    });
    
    

</script>


<div id="mainCanvas">
    <a href="#" id="dataLink" class="linkBtn">Get User Data using ActionUrl</a>
    <span id="userData"></span>
    <hr />
</div>

<div id="mainCanvas2">
    <a href="#" id="dataLink2" class="linkBtn">Get User Data using ResourceURL and ServeResource</a>
    <span id="userData2"></span>
    <hr />
</div>
<div id="mainCanvas3">
    <a href="#" id="dataLink3" class="linkBtn">Get User Data using ResourceURL and ServeResource Alloy UI</a>
    <span id="userData3"></span>
    <hr />
</div>