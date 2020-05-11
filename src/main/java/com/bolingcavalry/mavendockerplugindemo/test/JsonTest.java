package com.bolingcavalry.mavendockerplugindemo.test;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.google.gson.JsonObject;

/**
 * @author liaohua1
 * @date 2020/4/15 15:03
 */
public class JsonTest {
    public static void main(String[] args) {
        String title = "[\n" +
                "    {\n" +
                "        \"code\": \"flink\",\n" +
                "        \"name\": \"flink\",\n" +
                "        \"docker\": \"flink\"        \n" +
                "    },\n" +
                "    {\n" +
                "        \"code\": \"redis\",\n" +
                "        \"name\": \"redis\",\n" +
                "        \"docker\": \"redis\"\n" +
                "    },\n" +
                "    {\n" +
                "        \"code\": \"eshead\",\n" +
                "        \"name\": \"eshead\"\n" +
                "    },\n" +
                "    {\n" +
                "        \"code\": \"elasticsearch\",\n" +
                "        \"name\": \"elasticsearch\",\n" +
                "        \"docker\": \"elasticsearch\",\n" +
                "        \"enable_cust_setting\": \"Y\"\n" +
                "    },\n" +
                "    {\n" +
                "        \"code\": \"fastdfs\",\n" +
                "        \"name\": \"fastdfs\",\n" +
                "        \"docker\": \"fastdfs\"        \n" +
                "    },\n" +
                "    {\n" +
                "        \"code\": \"mysql\",\n" +
                "        \"name\": \"mysql\",\n" +
                "        \"docker\": \"mysql\"\n" +
                "    },\n" +
                "    {\n" +
                "        \"code\": \"storm\",\n" +
                "        \"name\": \"storm\",\n" +
                "        \"docker\": \"storm\",\n" +
                "\t\"enable_cust_setting\": \"Y\"\n" +
                "    },\n" +
                "    {\n" +
                "        \"code\": \"kafka\",\n" +
                "        \"name\": \"kafka\",\n" +
                "        \"docker\": \"kafka\"\n" +
                "    },\n" +
                "    {\n" +
                "        \"code\": \"zookeeper\",\n" +
                "        \"name\": \"zookeeper\",\n" +
                "        \"docker\": \"zookeeper\"\n" +
                "    },\n" +
                "    {\n" +
                "        \"code\": \"zuul\",\n" +
                "        \"name\": \"zuul\"\n" +
                "    },\n" +
                "    {\n" +
                "        \"code\": \"eureka\",\n" +
                "        \"name\": \"eureka\"\n" +
                "    },\n" +
                "    {\n" +
                "        \"code\": \"config\",\n" +
                "        \"name\": \"config\"\n" +
                "    },\n" +
                "    {\n" +
                "        \"code\": \"gitlab\",\n" +
                "        \"name\": \"gitlab\"\n" +
                "    },\n" +
                "    {\n" +
                "        \"code\": \"push\",\n" +
                "        \"name\": \"push\"\n" +
                "    },\n" +
                "    {\n" +
                "        \"code\": \"elk\",\n" +
                "        \"name\": \"elk\",\n" +
                "\t\"exclude\":\"Y\",\n" +
                "        \"dependences\": [\n" +
                "            {\n" +
                "                \"code\": \"filebeat\",\n" +
                "                \"name\": \"filebeat\",\n" +
                "                \"docker\": \"filebeat\"\n" +
                "            },\n" +
                "            {\n" +
                "                \"code\": \"elasticsearch_elk\",\n" +
                "                \"name\": \"elasticsearch_elk\",\n" +
                "                \"docker\": \"elasticsearch_elk\"\n" +
                "            },\n" +
                "            {\n" +
                "                \"code\": \"logstash\",\n" +
                "                \"name\": \"logstash\",\n" +
                "                \"docker\": \"logstash\"\n" +
                "            },\n" +
                "            {\n" +
                "                \"code\": \"kibana\",\n" +
                "                \"name\": \"kibana\",\n" +
                "                \"docker\": \"kibana\"\n" +
                "            }\n" +
                "        ]\n" +
                "    },\n" +
                "    {\n" +
                "        \"code\": \"prometheus\",\n" +
                "        \"name\": \"监控告警\",\n" +
                "        \"docker\": \"prometheus\",\n" +
                "        \"dependences\": [\n" +
                "            {\n" +
                "                \"code\": \"grafana\",\n" +
                "                \"name\": \"grafana\",\n" +
                "                \"docker\": \"grafana\"\n" +
                "            },\n" +
                "            {\n" +
                "                \"code\": \"node-exporter\",\n" +
                "                \"name\": \"node-exporter\",\n" +
                "                \"docker\": \"node-exporter\"\n" +
                "            }\n" +
                "        ]\n" +
                "    }\n" +
                "]";

        String s = "dependences";
        JSONArray json = (JSONArray) JSON.parse(title);
        for (Object item : json) {
            JSONObject object = (JSONObject) item;
            JSONArray array = object.getJSONArray(s);
            if (array != null) {
                for (Object childrem : array) {
                    JSONObject children = (JSONObject) childrem;
                    System.out.println(children);
                }
            }
        }

    }


}
