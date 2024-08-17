package vn.hoidanit.laptopshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.service.UserService;

@Controller
public class UserController {
    private UserService userService;
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/")
    public String getHomePage(Model model) {
        String test = userService.handleHelloWorld();
        model.addAttribute("user", test);
        return "hello";
    }

    @RequestMapping("/admin/user")
    public String user(Model model) {
        model.addAttribute("user", new User());
        return "admin/user/create";
    }

    @RequestMapping("/admin/user/create")
    public String createUser(Model model, @ModelAttribute("user") User newUser) {
        User result = this.userService.handleSaveUser(newUser);
        System.out.println(result.getId());
        return "hello";
    }
}
