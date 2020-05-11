package com.bolingcavalry.mavendockerplugindemo.test;

import com.alibaba.fastjson.JSONObject;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;

/**
 * @author liaohua1
 * @date 2020/4/15 19:34
 */
public class JenkinsTest {
    public static void main(String[] args) throws Exception{
        // 模拟并发远程触发jenkins的pipeline任务
        for(int i = 0; i < 10; i++) {
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("ref", "ref-"+i);
            jsonObject.put("repositoryURL","https://github.com/zq2599/jenkinsdemo.git");
            jsonObject.put("branch", "master");

            CloseableHttpClient httpClient = HttpClients.createDefault();
            HttpPost httpPost = new HttpPost("http://122.51.211.133:8080/generic-webhook-trigger/invoke?token=token-remote-test");
            httpPost.addHeader("Content-Type", "application/json");
            httpPost.setEntity(new StringEntity(jsonObject.toJSONString()));
            CloseableHttpResponse response = httpClient.execute(httpPost);
            response.close();
            httpClient.close();

            System.out.println("response code : " + response.getStatusLine().getStatusCode() + "\n");
        }

    }
}
