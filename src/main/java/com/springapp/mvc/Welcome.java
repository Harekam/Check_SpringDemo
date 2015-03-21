package com.springapp.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by harekam on 03/19/2015.
 */
@Controller
public class Welcome {
    @RequestMapping(value = "/", method = {RequestMethod.GET, RequestMethod.HEAD})
    public ModelAndView getAdmissionForm() {

        ModelAndView model = new ModelAndView("hello");
        model.addObject("message", "Welcome");
        return model;
    }
}
