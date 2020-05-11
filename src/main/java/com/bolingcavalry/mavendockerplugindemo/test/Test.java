package com.bolingcavalry.mavendockerplugindemo.test;

import org.gitlab4j.api.utils.FileUtils;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

/**
 * @author liaohua1
 * @date 2020/4/9 15:24
 */
public class Test {

    public static void main(String[] args) throws IOException {
        /*String dst = "D:";
        String dst1 = "D:\\delpoyments";
        String root = "D:\\tmp\\ngnix-deployment.yml";
        genDeployment(root, dst);*/
        /*String root = "D:\\deployments\\whale-meta\\application.properties";
        readFile(root);*/
        /*String root = "D:\\deployments\\whale-meta\\applications.properties";*/
        String root = "D:\\file\\preset_SENSECITY.sql";
        File file = new File(root);
        System.out.println(file.getAbsolutePath());
        if (!file.exists()) {
            System.out.println("失败");
        } else {
            System.out.println("成功");
        }
    }

    /**
     * root是模板文件，dst是要替换的文件所在文件夹
     * window版本
     */
    private static void genDeployment(String root, String dst) throws IOException {
        // 要生成文件所在文件夹，先创建
        dst = dst + "\\deployments";
        File file1 = new File(dst);
        if (!file1.exists()) {
            file1.mkdir();
        }

        // 从模板文件读取内容
        File tmp = new File(root);
        String content = FileUtils.readFileContents(tmp);

        // 将模板内容的占位符替换
        File file = new File(dst, "nginx.yml");
        content = content.replace("${application-name}", "abcdocker")
                .replace("${version}", "1.9.3");

        // 写入目标文件中
        FileWriter fw = new FileWriter(file);
        fw.write(content);
        fw.close();
    }

    private static void readFile(String root) throws IOException {
        File file = new File(root);
        String content = FileUtils.readFileContents(file);
        // System.out.println(content);
        if (content.contains("registry")) {
            System.out.println("ok");
        }
        String[] contents = content.split(" ");
        for (int i = 0; i < contents.length; i++) {
            System.out.println(contents[i]);
        }
        if (contents[0].contains("registry")) {
            System.out.println("成功");
        }
    }
}
