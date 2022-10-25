package com.pcrj.ctap.marcacoes;

import java.time.LocalDate;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class IndexController {
	@GetMapping
    public ModelAndView get() {
        return new ModelAndView("outros")
                .addObject("currentDate", LocalDate.now());
    }
}
