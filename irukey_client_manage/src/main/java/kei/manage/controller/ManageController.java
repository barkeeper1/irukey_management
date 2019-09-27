package kei.manage.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ManageController {
	
	private static final Logger logger = LoggerFactory.getLogger(ManageController.class);
	
	@RequestMapping(value = "/main.pr")
	public String main() {
		return "main";
	}
	
	@RequestMapping(value = "/login.pr")
	public String login() {
		return "login";
	}
	
	@RequestMapping(value = "/joinForm.pr")
	public String join() {
		return "joinForm";
	}
	
	@RequestMapping(value = "/writeNew.pr")
	public String writeNew() {
		return "writeNew";
	}
	
	@RequestMapping(value = "/siteDetail.pr")
	public String siteDetail() {
		return "siteDetail/siteDetail";
	}
	
	@RequestMapping(value = "/managerDetail.pr")
	public String managerDetail() {
		return "manager/managerDetail";
	}
	
	@RequestMapping(value = "/adminPage.pr")
	public String adminPage() {
		return "admin/adminMain";
	}
	
	@RequestMapping(value = "/updateSite.pr")
	public String updateSite() {
		return "updateSite";
	}
	
	@RequestMapping(value = "/maintenanceList.pr")
	public String maintenanceList() {
		return "maintenance/maintenanceList";
	}
	
	@RequestMapping(value = "/maintenanceDetail.pr")
	public String maintenanceDetail() {
		return "maintenance/maintenanceDetail";
	}
	
	@RequestMapping(value = "/addMobile.pr")
	public String mobileList() {
		return "admin/mobileList";
	}
	
	@RequestMapping(value = "/updateMobile.pr")
	public String updateMobile() {
		return "admin/updateMobile";
	}
	
	@RequestMapping(value = "/createUser.pr")
	public String createUser() {
		return "admin/createUserForm";
	}
	
	@RequestMapping(value = "/deleteUser.pr")
	public String deleteUser() {
		return "admin/userList";
	}
}
