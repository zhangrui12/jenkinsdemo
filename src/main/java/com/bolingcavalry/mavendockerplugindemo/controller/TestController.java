package com.bolingcavalry.mavendockerplugindemo.controller;

import com.bolingcavalry.mavendockerplugindemo.util.FileUtil;
import io.kubernetes.client.ApiClient;
import io.kubernetes.client.ApiException;
import io.kubernetes.client.Configuration;
import io.kubernetes.client.apis.AppsV1Api;
import io.kubernetes.client.apis.CoreV1Api;
import io.kubernetes.client.models.V1Pod;
import io.kubernetes.client.models.V1PodList;
import io.kubernetes.client.util.ClientBuilder;
import io.kubernetes.client.util.Config;
import io.kubernetes.client.util.KubeConfig;
import org.apache.tomcat.util.http.fileupload.FileUtils;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author liaohua1
 * @date 2020/4/14 15:54
 */
@RestController
public class TestController {

    @RequestMapping("/hello1")
    public String hello() throws ApiException, IOException {
        String kubeConfigPath = "config.yml";
        String kubeConfigPath1 = "application.properties";
        //    加载群集内配置，包括：
        //    1.服务帐户CA.
        //    2.service-account bearer-token
        //    3.服务帐户命名空间
        //    4.来自预设环境变量的主端点（ip，端口）
        // InputStream in = Thread.currentThread().getContextClassLoader().getResourceAsStream(kubeConfigPath);
        /*ClassPathResource resource = new ClassPathResource(kubeConfigPath1);
        File file = resource.getFile();*/
        String path1 = Thread.currentThread().getContextClassLoader().getResource("").getPath();

        String path = this.getClass().getClassLoader().getResource("").getPath() + "file/preset_" + "SENSECITY" + ".sql";
        InputStream in = Thread.currentThread().getContextClassLoader().getResourceAsStream(kubeConfigPath);

        System.out.println(path);
        /*InputStream in = resource.getInputStream();*/
        ApiClient client = ClientBuilder
                .kubeconfig(KubeConfig.loadKubeConfig(new FileReader(path)))
                .build();
        //将加载config的client设置为默认的client
        Configuration.setDefaultApiClient(client);

        //创建一个api
        CoreV1Api api = new CoreV1Api();
        AppsV1Api apis = new AppsV1Api();

        //打印所有的pod
        V1PodList list = api.listPodForAllNamespaces(null,null,null,null,null,null,null,
                null,null);

        for (V1Pod item : list.getItems()) {
            System.out.println(item);
        }
        return "";
    }

    public static void main(String[] args) throws Exception{
        ApiClient client = Config.fromUrl("129.204.0.81:2375");
        //将加载config的client设置为默认的client
        Configuration.setDefaultApiClient(client);

        //创建一个api
        CoreV1Api api = new CoreV1Api();
        // AppsV1Api apis = new AppsV1Api();

        //打印所有的pod
        V1PodList list = api.listPodForAllNamespaces(null,null,null,null,null,null,null,
                null,null);

        for (V1Pod item : list.getItems()) {
            System.out.println(item);
        }
    }


}
