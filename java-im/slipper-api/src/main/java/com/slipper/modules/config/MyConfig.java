package com.slipper.modules.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @author
 * @version 1.0
 * @ClassName MyConfig
 * @Description TODO
 * @createTime 2022/5/9 20:41
 */
@Configuration
public class MyConfig implements WebMvcConfigurer {

    @Value("${file.path}")
    private String filePath;

    /**
     * 外部资源
     * @param registry
     */
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/images/**")
                .addResourceLocations("file:" + filePath);
    }

}
