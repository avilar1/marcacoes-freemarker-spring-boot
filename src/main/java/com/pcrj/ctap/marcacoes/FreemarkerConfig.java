package com.pcrj.ctap.marcacoes;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.BeanPostProcessor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;

import no.api.freemarker.java8.Java8ObjectWrapper;

@Configuration
@EnableWebMvc
public class FreemarkerConfig implements BeanPostProcessor, WebMvcConfigurer {
	@Override
	public Object postProcessAfterInitialization(Object bean, String beanName) throws BeansException {
		if (bean instanceof FreeMarkerConfigurer) {
			FreeMarkerConfigurer configurer = (FreeMarkerConfigurer) bean;
			configurer.getConfiguration()
					.setObjectWrapper(new Java8ObjectWrapper(freemarker.template.Configuration.getVersion()));
		}
		return bean;
	}

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/**")
		.addResourceLocations(
				"classpath:/META-INF/resources/",
				"classpath:/resources/",
				"classpath:/static/",
				"/webjars/");
	}
}
