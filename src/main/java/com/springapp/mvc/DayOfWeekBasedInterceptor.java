package com.springapp.mvc;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Calendar;

/**
 * Created by Abcd on 22-03-2015.
 */
public class DayOfWeekBasedInterceptor extends HandlerInterceptorAdapter {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        Calendar calendar = Calendar.getInstance();
        int dayOfWeek = calendar.get(calendar.DAY_OF_WEEK); //getting the day on which request is made
        if (dayOfWeek == 7) {//1 means sunday, 2 means monday... 7 means Saturday
            response.getWriter().write("The website is down on Sunday; Please try accessing it on some other day of week!");
            return false;
        }
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        System.out.println("HandlerInterceptorAdapter: Spring MVC called post handle for "+request.getRequestURI().toString());
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        System.out.println("HandlerInterceptorAdapter: Spring MVC called after Completion for " + request.getRequestURI().toString());
    }
}
