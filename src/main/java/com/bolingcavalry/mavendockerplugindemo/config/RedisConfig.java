package com.bolingcavalry.mavendockerplugindemo.config;

import org.springframework.cache.annotation.CachingConfigurerSupport;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Configuration;

/**
 * @author liaohua1
 * @date 2020/4/7 19:28
 */
@Configuration
@EnableCaching
public class RedisConfig extends CachingConfigurerSupport {
}
