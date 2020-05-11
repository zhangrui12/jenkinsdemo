package com.bolingcavalry.mavendockerplugindemo.util;

import org.apache.commons.lang3.StringUtils;

import java.io.*;

/**
 * @author liaohua1
 * @date 2020/4/15 11:39
 */
public class FileUtil {

    /**
     * 读取file
     * @param file
     * @return
     */
    public static String readFileByLines(String file) {
        if (StringUtils.isEmpty(file)) {
            return null;
        }
        File f = new File(file);
        if (!f.exists()) {
            return null;
        }
        BufferedReader br = null;
        StringBuilder sb = new StringBuilder();
        try {
            br = new BufferedReader(new FileReader(f));
            String tempString;
            while ((tempString = br.readLine()) != null) {
                sb.append(tempString).append("\r\n");
            }
            br.close();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return sb.toString();
    }

    /**
     * 输出指定文件的byte数组
     *
     * @param filePath 文件路径
     * @param os 输出流
     * @return
     */
    public static void writeBytes(String filePath, OutputStream os) throws IOException
    {
        FileInputStream fis = null;
        try
        {
            File file = new File(filePath);
            if (!file.exists())
            {
                throw new FileNotFoundException(filePath);
            }
            fis = new FileInputStream(file);
            byte[] b = new byte[1024];
            int length;
            while ((length = fis.read(b)) > 0)
            {
                os.write(b, 0, length);
            }
        }
        catch (IOException e)
        {
            throw e;
        }
        finally
        {
            if (os != null)
            {
                try
                {
                    os.close();
                }
                catch (IOException e1)
                {
                    e1.printStackTrace();
                }
            }
            if (fis != null)
            {
                try
                {
                    fis.close();
                }
                catch (IOException e1)
                {
                    e1.printStackTrace();
                }
            }
        }
    }

    public static void writeFile(String path, String content) {
        createFile(path);
        BufferedWriter bw = null;
        try {
            File writeFile = new File(path);
            bw = new BufferedWriter(new FileWriter(writeFile));
            bw.write(content);
            bw.close();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (bw != null) {
                try {
                    bw.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static void createFile(String path){
        File f = new File(path);
        if (f.exists()) {
            return;
        }
        try {
            f.createNewFile();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static String readFile(InputStream in) {
        BufferedReader br = null;
        StringBuilder res = new StringBuilder();
        try {
            br = new BufferedReader(new InputStreamReader(in, "UTF-8"));
            String tmpContent = null;
            while ((tmpContent = br.readLine()) != null) {
                res.append(tmpContent);
            }
            br.close();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return res.toString();
    }

    public static void main(String[] args) {
        /*String root = "D:\\deployments\\whale-meta\\application.properties";
        File file = new File(root);
        System.out.println(FileUtil.readFileByLines(root));*/
        // writeFile(this.getClass().getClassLoader().getResource("").getPath()+"config.yml", "abc");
    }
}
