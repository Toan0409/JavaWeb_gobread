package vn.banhmi.gobread.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import vn.banhmi.gobread.domain.User;
import vn.banhmi.gobread.service.UserService;

@Controller
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/")
    public String getHomePage(Model model) {

        return "admin/user/index";
    }

    @RequestMapping("/login")
    public String getLoginPage(Model model) {

        return "pages-login";
    }

    @RequestMapping("/admin/user")
    public String getUserPage(Model model) {
        List<User> users = this.userService.getAllUsers();
        model.addAttribute("users1", users);
        return "admin/user/QLKHACHHANG";
    }

    @RequestMapping("/admin/user/{id}")
    public String getUserDetailPage(@PathVariable long id, Model model) {
        User user = this.userService.getUserById(id);
        model.addAttribute("user", user);
        model.addAttribute("id", id);
        return "admin/user/show";
    }

    @RequestMapping("/admin/user/create")
    public String getRegisterPage(Model model) {

        return "admin/user/pages-register";
    }

    @RequestMapping(value = "/admin/user/create", method = RequestMethod.POST)
    public String createUserPage(Model model, @ModelAttribute("newUser") User hoidanit) {
        this.userService.handleSaveUser(hoidanit);
        return "redirect:/admin/user";
    }

    // @RequestMapping(value = "/admin/order/create", method = RequestMethod.POST)
    // public String createOrderPage(Model model, @ModelAttribute("newOrder") Order
    // order) {
    // this.OrderService.handleSaveOrder(order);
    // return "redirect:/admin/order";
    // }

    @RequestMapping("/admin/order")
    public String getOrderPage(Model model) {
        List<User> users = this.userService.getAllUsers();
        model.addAttribute("users1", users);
        return "admin/user/QLDONHANG";
    }

    @RequestMapping("/admin/product")
    public String getProductPage(Model model) {
        List<User> users = this.userService.getAllUsers();
        model.addAttribute("users1", users);
        return "admin/user/QLSANPHAMTK";
    }
}
