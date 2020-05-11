package com.bolingcavalry.mavendockerplugindemo.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;

/**
 * @author liaohua1
 * @date 2020/4/15 14:50
 */
public class ServerFileUtil {

    private static Logger logger = LoggerFactory.getLogger(ServerFileUtil.class);

    public static boolean exec(  String password,String command) {
        logger.info("exec : {}",command);
        try {
            ShellUtil.exec("/bin/sh", "-c", command);
            return true;
        } catch (IOException e) {
            logger.error(e.getMessage());
            return false;
        }
    }

    public static void main(String[] args) {
        String root = "/usr/local/deployments";
        ServerFileUtil.exec("qboyedison77LH.", String.format("mkdir  %s", root));
    }
}
