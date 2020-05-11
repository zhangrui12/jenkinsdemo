package com.bolingcavalry.mavendockerplugindemo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude = DataSourceAutoConfiguration.class)
public class MavendockerplugindemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(MavendockerplugindemoApplication.class, args);
	}
}
