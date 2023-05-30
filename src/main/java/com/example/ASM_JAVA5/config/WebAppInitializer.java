package com.example.ASM_JAVA5.config;

import com.example.ASM_JAVA5.filter.AuthenticationFilter;
import jakarta.servlet.FilterRegistration;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.WebApplicationInitializer;

@Configuration
public class WebAppInitializer implements WebApplicationInitializer {
    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {
        FilterRegistration.Dynamic filterRegistration = servletContext.addFilter("authenticationFilter", new AuthenticationFilter());
//        filterRegistration.addMappingForUrlPatterns(null, false, "/*");
        filterRegistration.addMappingForUrlPatterns(null, false, "/admin/**");
        filterRegistration.addMappingForUrlPatterns(null, false, "/user/**");
//        filterRegistration.addMappingForUrlPatterns(null, false, "/user/*");

       // Ánh xạ tất cả cho các URL
    }
}
