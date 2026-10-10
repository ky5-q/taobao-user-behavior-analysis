-- 淘宝用户行为分析：建库建表脚本
-- 数据来源：阿里天池 UserBehavior 公开数据集（10 万行样本）
-- 执行方式：DBeaver 中逐条执行，或 mysql -uroot -p < create_tables.sql

CREATE DATABASE IF NOT EXISTS taobao_analysis DEFAULT CHARACTER SET utf8mb4;

USE taobao_analysis;

CREATE TABLE IF NOT EXISTS user_behavior (
    user_id       BIGINT      NOT NULL COMMENT '用户ID',
    item_id       BIGINT      NOT NULL COMMENT '商品ID',
    category_id   BIGINT      NOT NULL COMMENT '品类ID',
    behavior_type VARCHAR(10) NOT NULL COMMENT '行为类型: pv浏览/fav收藏/cart加购/buy购买',
    ts            INT         NOT NULL COMMENT '行为时间戳(秒)'
) ENGINE = InnoDB COMMENT '用户行为明细表';
