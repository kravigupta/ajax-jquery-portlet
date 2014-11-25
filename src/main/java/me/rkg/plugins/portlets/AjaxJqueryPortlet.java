package me.rkg.plugins.portlets;

import java.io.IOException;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletException;
import javax.portlet.PortletRequestDispatcher;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;
import javax.portlet.ResourceRequest;
import javax.portlet.ResourceResponse;



import me.rkg.model.User;

import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.kernel.util.WebKeys;
import com.liferay.portal.theme.ThemeDisplay;
import com.liferay.util.bridges.mvc.MVCPortlet;

public class AjaxJqueryPortlet extends MVCPortlet {
	String action = "";

	@Override
	public void processAction(ActionRequest request, ActionResponse response)
			throws IOException, PortletException {
		action = request.getParameter("ajaxAction");
		System.out.println("in process action with action : " + action);
	}

	@Override
	public void doView(RenderRequest request, RenderResponse response)
			throws IOException, PortletException {
		response.setContentType("text/html");
		PortletRequestDispatcher dispatcher = null;
		if (action.equals("getData")) {
			User details = new User();
			details.createDummy();
			request.setAttribute("data", details);
			dispatcher = getPortletContext().getRequestDispatcher("/ajaxjquery/showData.jsp");
		} else {
			dispatcher = getPortletContext().getRequestDispatcher("/ajaxjquery/view.jsp");
		}
		action = "";
		dispatcher.include(request, response);
	}

	@Override
	public void serveResource(ResourceRequest resourceRequest,
			ResourceResponse resourceResponse) throws IOException,
			PortletException {
		resourceResponse.setContentType("text/html");
		PortletRequestDispatcher dispatcher = null;
		if(resourceRequest.getResourceID().equalsIgnoreCase("getDataResourceURL")){
			System.out.println("Called using jquery");
			String username = ParamUtil.getString(resourceRequest, "username");
			System.out.println("User name is "+username);
			User details = new User();
			details.createDummy();
			resourceRequest.setAttribute("data", details);
			dispatcher = getPortletContext().getRequestDispatcher("/ajaxjquery/showData.jsp");
		}else if(resourceRequest.getResourceID().equalsIgnoreCase("getDataAUIResourceURL")){
			System.out.println("Called using alloy ui.");
			User details = new User();
			details.createDummy();
			resourceRequest.setAttribute("data", details);
			dispatcher = getPortletContext().getRequestDispatcher("/ajaxjquery/showData.jsp");
		}else {
			dispatcher = getPortletContext().getRequestDispatcher("/ajaxjquery/view.jsp");
		}
		
		dispatcher.include(resourceRequest, resourceResponse);
		
	}
}
