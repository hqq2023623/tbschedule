package com.taobao.pamirs.schedule.strategy;

/**
 * 每个实例代表一个线程组
 */
public interface IStrategyTask {
    void initialTaskParameter(String strategyName, String taskParameter) throws Exception;

    void stop(String strategyName) throws Exception;
}
