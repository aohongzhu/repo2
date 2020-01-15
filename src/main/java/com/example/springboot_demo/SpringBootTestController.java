package com.example.springboot_demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author Aohongzhu
 * @date 2020年01月14日
 */
@RestController
public class SpringBootTestController {
    @GetMapping(value = "/hello")
    public String welcome(){
        return "welcome to springboot world!!!!!!!";
    }
}
