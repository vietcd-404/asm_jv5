package com.example.ASM_JAVA5.filter;

import com.example.ASM_JAVA5.entity.Account;
import jakarta.servlet.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Component;

import java.io.IOException;


@Component
public class AuthenticationFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) servletRequest;
        HttpServletResponse httpResponse = (HttpServletResponse) servletResponse;

        HttpSession session = httpRequest.getSession(false);
        String loginURI = httpRequest.getContextPath() + "/login";
        String registerURI = httpRequest.getContextPath() + "/register";
        System.out.println(httpRequest.getRemoteHost());
        System.out.println(httpRequest.getRemotePort());
        System.out.println(httpRequest.getRequestURI());

        boolean loggedIn = session != null && session.getAttribute("account") != null;
        boolean loginRequest = httpRequest.getRequestURI().equals(loginURI);
        boolean registerRequest = httpRequest.getRequestURI().equals(registerURI);



        if (loggedIn || loginRequest || registerRequest) {
            filterChain.doFilter(servletRequest, servletResponse);
        } else {
            httpResponse.sendRedirect(loginURI);
        }

    }

    @Override
    public void destroy() {

    }
}
