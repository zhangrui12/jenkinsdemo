package com.bolingcavalry.mavendockerplugindemo.util;

import com.alibaba.fastjson.JSON;
import org.apache.commons.exec.CommandLine;
import org.apache.commons.exec.DefaultExecutor;
import org.apache.commons.exec.ExecuteWatchdog;
import org.apache.commons.exec.PumpStreamHandler;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.StringUtils;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

/**
 * @author liaohua1
 * @date 2020/4/15 14:51
 */
public class ShellUtil {

    private static Logger logger = LoggerFactory.getLogger(ShellUtil.class);


    public static int exec(String... cmd) throws IOException {

        logger.info("cmd length: " + cmd.length+"///"+ JSON.toJSONString(cmd,true));
        CommandLine cmdLine = CommandLine.parse(cmd[0]);
        for(int i = 1; i < cmd.length; i++) {
            if(StringUtils.hasText(cmd[i])) {
                cmdLine.addArgument(cmd[i], false);
            } else {
                cmdLine.addArgument("null", false);
            }
        }

        DefaultExecutor executor = new DefaultExecutor();

        // 防止抛出异常
        executor.setExitValues(null);

        // 命令执行的超时时间
        ExecuteWatchdog watchdog = new ExecuteWatchdog(600 * 1000);
        executor.setWatchdog(watchdog);

        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        PumpStreamHandler streamHandler = new PumpStreamHandler(outputStream);
        executor.setStreamHandler(streamHandler);

        int exitValue = executor.execute(cmdLine);
        logger.info(">>>>> execute log: " + outputStream.toString());

        return exitValue;
    }
}
