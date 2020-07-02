prompt PL/SQL Developer import file
prompt Created on 2020年6月17日 by Administrator
set feedback off
set define off


prompt Disabling triggers for DM_ALARM_LEVEL...
alter table DM_ALARM_LEVEL disable all triggers;
prompt Disabling triggers for DM_BAY_CAMERA_INFO...
alter table DM_BAY_CAMERA_INFO disable all triggers;
prompt Disabling triggers for DM_CMS_FEATURE...
alter table DM_CMS_FEATURE disable all triggers;
prompt Disabling triggers for DM_CMS_FONT...
alter table DM_CMS_FONT disable all triggers;
prompt Disabling triggers for DM_CMS_IO_STYLE...
alter table DM_CMS_IO_STYLE disable all triggers;
prompt Disabling triggers for DM_CMS_SHOW_STYLE...
alter table DM_CMS_SHOW_STYLE disable all triggers;
prompt Disabling triggers for DM_DATA_EXCHANGER...
alter table DM_DATA_EXCHANGER disable all triggers;
prompt Disabling triggers for DM_DEVICE_IN_POWER...
alter table DM_DEVICE_IN_POWER disable all triggers;
prompt Disabling triggers for DM_DEVICE_IN_SERVER...
alter table DM_DEVICE_IN_SERVER disable all triggers;
prompt Disabling triggers for DM_DEVICE_TYPE...
alter table DM_DEVICE_TYPE disable all triggers;
prompt Disabling triggers for DM_DEVICE_ORDER_TYPE...
alter table DM_DEVICE_ORDER_TYPE disable all triggers;
prompt Disabling triggers for DM_DEVICE_PROTOCAL...
alter table DM_DEVICE_PROTOCAL disable all triggers;
prompt Disabling triggers for DM_DEVICE_STATUS...
alter table DM_DEVICE_STATUS disable all triggers;
prompt Disabling triggers for DM_DIRECTION...
alter table DM_DIRECTION disable all triggers;
prompt Disabling triggers for DM_EM_TYPE...
alter table DM_EM_TYPE disable all triggers;
prompt Disabling triggers for DM_EVENT_TRAFFIC_STATUS...
alter table DM_EVENT_TRAFFIC_STATUS disable all triggers;
prompt Disabling triggers for DM_EVENT_TYPE...
alter table DM_EVENT_TYPE disable all triggers;
prompt Disabling triggers for DM_EVENT_TYPE1...
alter table DM_EVENT_TYPE1 disable all triggers;
prompt Disabling triggers for DM_EVENT_TYPE_PLAN...
alter table DM_EVENT_TYPE_PLAN disable all triggers;
prompt Disabling triggers for DM_FACTORY...
alter table DM_FACTORY disable all triggers;
prompt Disabling triggers for DM_INNER_ORG...
alter table DM_INNER_ORG disable all triggers;
prompt Disabling triggers for DM_OBJ_STATUS...
alter table DM_OBJ_STATUS disable all triggers;
prompt Disabling triggers for DM_ORG...
alter table DM_ORG disable all triggers;
prompt Disabling triggers for DM_ORG_EXPORT...
alter table DM_ORG_EXPORT disable all triggers;
prompt Disabling triggers for DM_ORG_EXT...
alter table DM_ORG_EXT disable all triggers;
prompt Disabling triggers for DM_ORG_TYPE...
alter table DM_ORG_TYPE disable all triggers;
prompt Disabling triggers for DM_PROVINCE_INFO...
alter table DM_PROVINCE_INFO disable all triggers;
prompt Disabling triggers for DM_ROAD...
alter table DM_ROAD disable all triggers;
prompt Disabling triggers for DM_ROAD_CALLCENTER...
alter table DM_ROAD_CALLCENTER disable all triggers;
prompt Disabling triggers for DM_ROAD_CONDITION_TYPE...
alter table DM_ROAD_CONDITION_TYPE disable all triggers;
prompt Disabling triggers for DM_ROAD_DIRECTION...
alter table DM_ROAD_DIRECTION disable all triggers;
prompt Disabling triggers for DM_ROAD_NET...
alter table DM_ROAD_NET disable all triggers;
prompt Disabling triggers for DM_ROAD_TYPE...
alter table DM_ROAD_TYPE disable all triggers;
prompt Disabling triggers for DM_SUB_SERVICESTATION_PROFILE...
alter table DM_SUB_SERVICESTATION_PROFILE disable all triggers;
prompt Disabling triggers for DM_SURFACE_CONDITION...
alter table DM_SURFACE_CONDITION disable all triggers;
prompt Disabling triggers for DM_SYSTEM_ALARM_TYPE...
alter table DM_SYSTEM_ALARM_TYPE disable all triggers;
prompt Disabling triggers for DM_THRESHOLD_FEILD...
alter table DM_THRESHOLD_FEILD disable all triggers;
prompt Disabling triggers for SYSTEM_ALARM_INFO...
alter table SYSTEM_ALARM_INFO disable all triggers;
prompt Disabling triggers for SYS_CCTV_FOR_ROLE...
alter table SYS_CCTV_FOR_ROLE disable all triggers;
prompt Disabling triggers for SYS_DICT...
alter table SYS_DICT disable all triggers;
prompt Disabling triggers for SYS_DICT_TYPE...
alter table SYS_DICT_TYPE disable all triggers;
prompt Disabling triggers for SYS_JOB...
alter table SYS_JOB disable all triggers;
prompt Disabling triggers for SYS_JOB_IN_ORG...
alter table SYS_JOB_IN_ORG disable all triggers;
prompt Disabling triggers for SYS_PARAM...
alter table SYS_PARAM disable all triggers;
prompt Disabling triggers for SYS_PRIVILEGE_FOR_ROLE...
alter table SYS_PRIVILEGE_FOR_ROLE disable all triggers;
prompt Disabling triggers for SYS_RESOURCE...
alter table SYS_RESOURCE disable all triggers;
prompt Disabling triggers for SYS_ROLE...
alter table SYS_ROLE disable all triggers;
prompt Disabling triggers for SYS_TASK...
alter table SYS_TASK disable all triggers;
prompt Disabling triggers for SYS_TASK_EXEC_RECORD...
alter table SYS_TASK_EXEC_RECORD disable all triggers;
prompt Disabling triggers for SYS_TASK_INFO...
alter table SYS_TASK_INFO disable all triggers;
prompt Disabling triggers for SYS_USER...
alter table SYS_USER disable all triggers;
prompt Disabling triggers for SYS_USER_IN_JOB...
alter table SYS_USER_IN_JOB disable all triggers;
prompt Disabling triggers for SYS_USER_IN_ROLE...
alter table SYS_USER_IN_ROLE disable all triggers;
prompt Disabling triggers for SYS_USER_SETTING...
alter table SYS_USER_SETTING disable all triggers;
prompt Disabling triggers for SYS_USER_SHORTCUT...
alter table SYS_USER_SHORTCUT disable all triggers;
prompt Disabling triggers for SYS_USER_UNDER...
alter table SYS_USER_UNDER disable all triggers;
 
 
prompt Loading SYS_CCTV_FOR_ROLE...
prompt Table is empty
prompt Loading SYS_DICT...
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('262a7588a0f14cbab90ab8eb7265f062', 'DM_TRAFFIC_STATUS', '0', '畅通', '畅通', 1, 1, to_date('27-06-2019 11:05:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('05102175c06247feb83fa6da874f02d4', 'CMS_GROUP', '0', '未分组', null, 1, 10, to_date('25-06-2019 15:19:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('ad031d65698544429d086f0f4a2d42c0', 'CMS_GROUP', '5', '支线悬臂显示屏', null, 1, 5, to_date('25-06-2019 14:18:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('d4ecfaca9db5436f9ebd15101257a9f6', 'CMS_GROUP', '4', '支线门架显示屏', null, 1, 4, to_date('25-06-2019 14:18:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('6f10f0af6e1a4c86ba2a2f47190740ca', 'CMS_GROUP', '3', '主线悬臂显示屏', null, 1, 3, to_date('24-06-2019 15:05:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('db60721bad384545b5d2ee1a666c6511', 'CMS_GROUP', '2', '主线门架显示屏', null, 1, 2, to_date('24-06-2019 15:05:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('c71062cd3cb04621b895f7b47efabc4c', 'CMS_GROUP', '1', '站前悬臂显示屏', null, 1, 1, to_date('24-06-2019 15:05:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('9e3244ac898648f5900edd8016e9b3e4', 'CMS_GROUP', '6', '收费站入口显示屏', null, 1, 6, to_date('27-06-2019 11:36:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('7f20db78c4964202a3d40d88eaff23eb', 'VEHICLE_COLOR', 'H', '蓝色', '车身颜色', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('a6050b84ce3c42f2996b23fd47d92fd9', 'VEHICLE_COLOR', 'I', '棕色', '车身颜色', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('d25e7289234a4afb89bc155dcc6c1b89', 'VEHICLE_COLOR', 'L', '青色', '车身颜色', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('f26d1edd89e84f808819f8dfc19a7bd6', 'VEHICLE_COLOR', 'J', '黑色', '车身颜色', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('f6f43adb64c94fd98b70c7a0a40cfa89', 'VEHICLE_COLOR', 'K', '橙色', '车身颜色', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('69be29e9641940d7a8881e102c106b01', 'VEHICLE_COLOR', 'M', '银色', '车身颜色', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('d543a980eb5c4023b1d5a8922564d231', 'VEHICLE_COLOR', 'N', '银白色', '车身颜色', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('8807ce3298a44fb7a1bf5126e95d7610', 'VEHICLE_COLOR', 'Z', '其他', '车身颜色', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('432a4d8de51a46a4a4164a0c5ac211bc', 'EQUIPMENT_TYPE', '01', '电警', '采集类型', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('935c561375bf4b09a1af99ddd7a916fa', 'EQUIPMENT_TYPE', '02', '公路卡口', '采集类型', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('aa685641d2f2475b9bea5cdaa22f54e0', 'EQUIPMENT_TYPE', '03', '固定测速', '采集类型', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('f2430038d2fd4225bd39a575f54a9e3c', 'EQUIPMENT_TYPE', '04', '视频监控', '采集类型', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('1db77284738343ae80d1d3d9b7447e0e', 'EQUIPMENT_TYPE', '05', '移动电子警察', '采集类型', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('0bc54ea0c9a34ef880d76be5356f0a48', 'EQUIPMENT_TYPE', '06', '行车记录仪', '采集类型', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('0ec2b04548df4de08b4733543df19814', 'EQUIPMENT_TYPE', '09', '其他电子监控设备', '采集类型', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('73371ce0911846f3b36879b23d19d432', 'ALARMINFO_REASON', '1', '恶劣天气', '恶劣天气', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('d4636d9019b8434a878bb756f81450d3', 'ALARMINFO_REASON', '2', '交警管制', '交警管制', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('0d9966fc5d8b409c904f44b85f5c5826', 'ALARMINFO_REASON', '3', '事故管制', '事故管制', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('a3c0b90ea49f47b0a9cf1773be520dea', 'ALARMINFO_REASON', '4', '道路施工', '道路施工', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('10929da41a564111a39e0500e8c821e6', 'ALARMINFO_REASON', '5', '车流量大', '车流量大', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('1a6dda590d154408a00b2bb73aa7f875', 'ALARMINFO_REASON', '6', '车辆故障', '车辆故障', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('ed18c556f88a43f3b85fc5bd9463b36f', 'ALARMINFO_REASON', '7', '突发事件', '突发事件', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('13f2b2f74a55437c815a8ae3b522f783', 'ALARMINFO_REASON', '8', '设备故障', '设备故障', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('1f5460e54b384a6bae5791f7ff89bc0c', 'ALARMINFO_REASON', '9', '其他', '其他', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('12e6bcccdf8148d1ae840f7219797a94', 'AUDIT_STATUS', '1', '审核未通过', '路况审核状态', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('d297a95ee36640fcaebf81a2f2bb1699', 'AUDIT_STATUS', '2', '审核不发布', '路况审核状态', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('1b1b0dab35b84f62b8bbe5ce0978b5a4', 'AUDIT_STATUS', '3', '审核已发布', '路况审核状态', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('0f6301c9f6eb4613973b380513155670', 'DEVICE_ERROR_TIME', '1', '12小时', '故障时间超过12小时', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('51db8f8eb7884120804f5acd32e00085', 'DEVICE_ERROR_TIME', '2', '1天', '故障时间超过1天', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('47ba68a898194184b6a25d1bf8fd65f0', 'DEVICE_ERROR_TIME', '3', '1周', '故障时间超过一周', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('6ab52556afec48ef89b21d077b1d69ea', 'AUDIT_STATUS', '0', '待审核', '路况审核状态', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('636ca0ac64e744559055fb8a1b0150d7', 'INFORMATION_TYPE', '1', '交通管制', '信息类型', 1, 1, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('a01619a2faec42b9ad8e1ef71f123678', 'INFORMATION_TYPE', '2', '交通事故', '信息类型', 1, 2, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('4393d47e3970438f82721b78ce436f1b', 'INFORMATION_TYPE', '3', '拥堵信息', '信息类型', 1, 3, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('cbb1fa2ce20045d0ad4779fbd6e7125d', 'INFORMATION_TYPE', '4', '施工信息', '信息类型', 1, 4, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('a33d3e8e5e9a4cd6baf95e2a4c898c27', 'INFORMATION_TYPE', '0', '正常信息', '信息类型', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('2cea219a67884070b63261836c832a01', 'COLLECT_TYPE', '1', '数据交换', '数据采集方式', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('6ee33d79f0b644a38ba84249d4d702fa', 'COLLECT_TYPE', '2', '人工录入', '数据采集方式', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('e1687b6c59df47caafecb249047ed1c0', 'IS_END', '0', '开启', '是否结束', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('dfc4c14df4af49a0afa681532a411ab5', 'IS_END', '1', '结束', '是否结束', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('e53c49ba7fe447f5b9c667de1c49b229', 'SEND_WAY', '0', '短信', '发送方式', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('02f168019b384c6198bfb68477835748', 'SEND_WAY', '1', '外网', '发送方式', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('c91bba9df251499a8c2ca79ba2df55e1', 'SEND_WAY', '2', '呼叫中心', '发送方式', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('9e484b071c57408f8d86560858e15bf9', 'SEND_WAY', '3', '大屏', '发送方式', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('20de1e64388a45688b37511e64c4645a', 'ORDER_STATUS', '0', '待执行', '命令执行状态', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('092b7ea71ad4450e89279414e32696ec', 'ORDER_STATUS', '2', '执行成功', '命令执行状态', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('efa535c9e4674cdb86291b566c024bc8', 'ORDER_STATUS', '3', '执行失败', '命令执行状态', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('797a944421a24bfdb140abb8f5b2e2af', 'SYS_GENDER_STATUS', '3', '未知', '不知道', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('13eaa4b44a8346fca2aae0da251a9cdf', 'ALARMINFO_POS_DETAIL', '1', '附近', '附近', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('71156085e1314e6e89716e83a9d5c6f5', 'ALARMINFO_POS_DETAIL', '2', '上道口', '上道口', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('4c74ee1331554907aa3580ebb059247c', 'ALARMINFO_POS_DETAIL', '3', '下道口', '3', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('bddaa49001204fa3a982ae2e3f2fe437', 'ALARMINFO_POS_DETAIL', '4', '上、下道口', '上、下道口', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('9c613159b9e449d7afb2f8140476e187', 'ALARMINFO_POS_DETAIL', '5', '上道口匝道', '上道口匝道', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('a52eebcb2c7e4c38a100a1d8e9190b9e', 'ALARMINFO_POS_DETAIL', '6', '下道口匝道', '下道口匝道', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('bfe33702cd2d4c24ab8160da5ab7d8cb', 'ALARMINFO_POS_DETAIL', '7', '上、下道口匝道', '上、下道口匝道', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('830ba4c0c40d41a59e38df940693d530', 'ALARMINFO_POS_DETAIL', '8', '上道口内广场', '上道口内广场', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('329f2b0e5d8c465782238b3325f10720', 'ALARMINFO_POS_DETAIL', '9', '下道口内广场', '下道口内广场', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('89177f248f5c4d489d643b03fa4d3906', 'ALARMINFO_POS_DETAIL', '10', '上、下道口内广场', '上、下道口内广场', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('d5166f2919514296a74e99a29191f3ba', 'FOG_LIGHT_FREQUENCY', '0', '关闭', '关闭', 1, 1, to_date('03-08-2018 16:59:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('5DE980E2B111D100E050000D021F5F35', 'TRUCK_TYPES', '16', '超限运输车辆', '超限运输车辆', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('9fd8ca0c0a7943cbb61d0719ab6e9895', 'FOG_LIGHT_FREQUENCY', '1', '常亮', '常亮', 1, 2, to_date('03-08-2018 16:59:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('1bd049495ffb4fc7b33471d4a1f9eda2', 'FOG_LIGHT_FREQUENCY', '2', '30次/分钟', '30次/分钟', 1, 3, to_date('03-08-2018 16:59:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('c8d1587273a644ecae380d62fc5cc26a', 'FOG_LIGHT_FREQUENCY', '3', '60次/分钟', '60次/分钟', 1, 4, to_date('03-08-2018 17:00:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('34c5e022f5ba49ab8a728efde7afd7b8', 'FOG_LIGHT_FREQUENCY', '4', '120次/分钟', '其它值无效', 1, 5, to_date('03-08-2018 17:00:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('9b42a17732ab416aba94539ffe247e7d', 'SYS_PARAM_CONDITION', '0', '无约束', null, 1, 0, to_date('24-05-2019 12:18:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('49bef917dc1a4022a49bb881da9c3dba', 'SYS_PARAM_CONDITION', '1', '取值范围', null, 1, 1, to_date('24-05-2019 12:18:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('7800a03d760a49bfa86a67317de980f4', 'SYS_PARAM_CONDITION', '2', '特殊取值', null, 1, 2, to_date('24-05-2019 12:19:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('61b6d431c292407198f9482d66df4e93', 'DM_SYS_PARAM_TYPE', '1', '字符型', null, 1, 1, to_date('24-05-2019 12:23:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('8ea1ceb9c78846168be25bc58e93b69c', 'DM_SYS_PARAM_TYPE', '2', '整型', null, 1, 2, to_date('24-05-2019 12:23:31', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('68e84bf5442643d3915ba85d080884e2', 'DM_SYS_PARAM_TYPE', '3', '日期型', null, 1, 3, to_date('24-05-2019 12:23:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('1a317d76bc414372ae4496aae5f35bf5', 'DM_SYS_PARAM_TYPE', '4', '浮点型', null, 1, 4, to_date('24-05-2019 12:23:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('3accfb3658bb4c479e26a6deba398f06', 'MESSAGE_TYPE', '4', '故障信息', null, 1, 4, to_date('14-05-2019 09:17:40', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('4790880b84d2413e9461f09c1bdef544', 'TASK_DEST_PATH', 'CreateTkEventJob', '定时生成指定事件', '{"roadSegmentId":"00010018","directionId":1,"eventTypeId":"010330","organizationId":"GL001118","alarmLevelId":4,"position":"无","planId":"TEST-001"}', 1, 3, to_date('08-08-2019 11:21:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('011bb1fe38ce4ee7bf0b9b4092ecb660', 'THRESHOLD_FEILD_VD', 'speed', '速度', '速度', 1, 1, to_date('06-08-2019 09:56:01', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('1b274e495b8d4cf88a10cae457bb996d', 'THRESHOLD_FEILD_WS', 'airTemperature', '气温', null, 1, 2, to_date('26-07-2019 15:54:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('57b61a9c43f0431a9b490abc5ba87ad6', 'THRESHOLD_FEILD_WS', 'rainFall', '降雨量', null, 1, 1, to_date('26-07-2019 15:54:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('4f2033f169524b4881644405421b3cd8', 'THRESHOLD_FEILD_WS', 'vi', '可见度', null, 1, 0, to_date('26-07-2019 15:53:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('3fae555c91e94752a12fd9b03c7c8052', 'SYS_PARAM_GROUP', '4', '任务参数', null, 1, 4, to_date('25-07-2019 11:18:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('e5d4c19f30f84438bbb73fe7e712d098', 'TASK_EXEC_TYPE', '2', 'http/post方式', null, 1, 2, to_date('15-07-2019 18:42:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('5b5e104fa96d4b26821dd0b239a71ef9', 'TASK_EXEC_TYPE', '1', 'http/get方式', null, 1, 1, to_date('15-07-2019 18:42:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('361b25c2fe8b49649a339c38c16af580', 'TASK_EXEC_TYPE', '0', '类反射模式', null, 1, 0, to_date('15-07-2019 18:42:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('6e981516c143428bbff0269ee53fb506', 'TASK_STATUS', '1', '启动中', null, 1, 1, to_date('15-07-2019 18:40:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('d3269f2699b74d369a926cab114b4e8b', 'TASK_STATUS', '0', '暂停中', null, 1, 0, to_date('15-07-2019 18:39:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('f5e7c820286b46db9703db78f584e272', 'TASK_STATUS', '-1', '无效', null, 1, -1, to_date('15-07-2019 18:39:11', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('8CD71AD1F9C5C344E050007F01007BFB', 'CMS_LOCK_TIME', '-3', '凌晨1点自动解锁', '2001', 1, 11, to_date('04-07-2019 15:41:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('8CD71AD1F9C6C344E050007F01007BFB', 'CMS_LOCK_TIME', '2880', '锁定2天', '1200', 1, 10, to_date('04-07-2019 15:41:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('8CD71AD1F9C7C344E050007F01007BFB', 'CMS_LOCK_TIME', '1440', '锁定1天', '1100', 1, 9, to_date('04-07-2019 15:41:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('8CD71AD1F9C8C344E050007F01007BFB', 'CMS_LOCK_TIME', '120', '锁定2小时', '1020', 1, 8, to_date('04-07-2019 15:41:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('8CD71AD1F9C9C344E050007F01007BFB', 'CMS_LOCK_TIME', '60', '锁定1小时', '1010', 1, 7, to_date('04-07-2019 15:41:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('8CD71AD1F9CAC344E050007F01007BFB', 'CMS_LOCK_TIME', '30', '锁定30分钟', '1003', 1, 6, to_date('04-07-2019 15:41:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('8CD71AD1F9CBC344E050007F01007BFB', 'CMS_LOCK_TIME', '20', '锁定20分钟', '1002', 1, 5, to_date('04-07-2019 15:41:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('8CD71AD1F9CCC344E050007F01007BFB', 'CMS_LOCK_TIME', '10', '锁定10分钟', '1001', 1, 4, to_date('04-07-2019 15:41:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('8CD71AD1F9CEC344E050007F01007BFB', 'CMS_LOCK_TIME', '-1', '自定解锁时间', '9000', 1, 2, to_date('04-07-2019 15:41:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('8CD71AD1F9CFC344E050007F01007BFB', 'CMS_LOCK_TIME', '-99', '永久锁定', '1000', 1, 1, to_date('04-07-2019 15:41:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('8CD71AD1F9D0C344E050007F01007BFB', 'CMS_LOCK_TIME', '0', '不锁定', '0000', 1, 0, to_date('04-07-2019 15:41:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('8CD71AD1F9CDC344E050007F01007BFB', 'CMS_LOCK_TIME', '-2', '自定锁定时长', '9001', 1, 3, to_date('04-07-2019 15:41:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('355ed5b36e734f06bce0c256af60aa72', 'TASK_DEST_PATH', 'JobOne', '测试任务', null, 1, -1, to_date('08-08-2019 11:23:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('3d44b697e47d4b2f97b4bed352dcb82a', 'TASK_DEST_PATH', 'DelVdHistoryDataJob', '定时删除车检历史数据', '{"dayNum":30}', 1, 2, to_date('08-08-2019 11:20:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('7349385e1ac945b78f3e0aa91979653c', 'TASK_DEST_PATH', 'CheckCmsLockJob', '定时刷新情报板锁状态', null, 1, 1, to_date('08-08-2019 11:18:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('c2b874e5af42416282ed9ef8c8d48f7e', 'TASK_DEST_PATH', 'JkDevThresholdJob', '设备阀值检测任务', '{"min":10}', 1, 5, to_date('08-08-2019 11:17:05', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('c8d377335c394248881baa339843296e', 'SYS_PARAM_GROUP', '0', '系统设置', 'sys_', 1, 0, to_date('23-05-2019 18:48:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('f72ca09d0d7845c492eb9016e67a8f73', 'SYS_PARAM_GROUP', '1', '地图参数', 'map_', 1, 1, to_date('23-05-2019 18:50:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('d4cc012b97744e7d97885041eb8b0c4e', 'SYS_PARAM_GROUP', '2', '视频参数', 'video_', 1, 2, to_date('23-05-2019 18:51:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('9eb9ce2f333d4fe789b050fecb1d8d0c', 'SYS_PARAM_GROUP', '3', '文件参数', 'file_', 1, 3, to_date('23-05-2019 18:52:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('4ec3c6c4db8c4a4392edb2d0fc634dc4', 'SYS_PARAM_GROUP', '9', '未分类', null, 1, -1, to_date('24-05-2019 10:29:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('68EC4EE3685E68FDE053D3F8020D997B', 'CAR_TYPES', '9', '十九座（含）以下客车', '十九座（含）以下客车', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('68EC4EE3685F68FDE053D3F8020D997B', 'CAR_TYPES', '10', '十九座以上客车', '十九座以上客车', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('68EC4EE3686068FDE053D3F8020D997B', 'CAR_TYPES', '11', '二十座（含）以上客车', '二十座（含）以上客车', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('68EC4EE3686168FDE053D3F8020D997B', 'CAR_TYPES', '12', '二十座以下客车', '二十座以下客车', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('d4884c01c3264863b840bff94c3d1bab', 'direction', '1', '上行', '方向', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('6b0bd0c0825f4c60b78b326aa0cf5452', 'communication', '0', '未知', '通讯方式', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('c50590d51ed846908241222949798398', 'communication', '1', 'TCP', '通讯方式', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('8be4b96a514c4b178ef3348001b80ac2', 'direction', '2', '下行', '方向', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('e0d51875731f4a3faaf6fa678e18836b', 'communication', '2', 'UDP', '通讯方式', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('9868002c50d2407f8184c04381b0764c', 'communication', '3', '串口', '通讯方式', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('2c304e62fea14a30bb45106f6c6edb9b', 'FUNCTION_CODE1', '1', '交通流量调查设备', '设备功能代码首位', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('d81ad862d1e54ff0af28cb4119be4b11', 'FUNCTION_CODE1', '2', '多用途调查设备', '设备功能代码首位', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('4c4e6cd2d3b24f62aff58aa7e0d02478', 'MESSAGE_TYPE', '1', '报警', null, 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('c57eb5fe4f464636aa4667c19f4e0445', 'FUNCTION_CODE2', '1', 'I级设备', '设备功能代码末位', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('e70c497c31ce42afa1db8c95de407c53', 'FUNCTION_CODE2', '2', 'II级设备', '设备功能代码末位', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('efd32c724a0f4ac39792608c8d344829', 'FUNCTION_CODE2', '3', 'III级设备（具备交通密度数据采集功能）', '设备功能代码末位', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('1902972585b941dfad55c97205f30233', 'FUNCTION_CODE2', '4', 'III级设备（不具备交通密度数据采集功能）', '设备功能代码末位', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('48d2b499bbf94d09992aa61ba0616b36', 'MESSAGE_TYPE', '2', '上报信息', null, 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('9436773784e84a5eb158914a0fb23525', 'SYS_VALID_STATUS', '0', '无效', '有效标志', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('ba14b996110149b6b435096d026089f5', 'SYS_VALID_STATUS', '1', '有效', '有效标志', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('5de11622d25248a39b73de53c08663e6', 'SYS_ENABLED_STATUS', '0', '关闭', '是否启用标志', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('36c0de1206c84064a42e0c579964a446', 'SYS_ENABLED_STATUS', '1', '启用', '是否启用标志', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('eae4b52031e84159aabd6ae36555c7cd', 'SYS_GENDER_STATUS', '1', '男', '性别', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('2fcd3ff5aa974600ae53aaba217a581b', 'SYS_GENDER_STATUS', '2', '女', '性别', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('0c183bf88c0446a0aded41b15750cf94', 'SYS_EDUCATION_STATUS', '0', '未知', '教育程度', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('cc52131083874843bbb71a70d22bec88', 'SYS_EDUCATION_STATUS', '1', '初中', '教育程度', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('334393ae714047a785824ac9f795bbc8', 'SYS_EDUCATION_STATUS', '2', '高中', '教育程度', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('2a29d4c963ae46609d3c46040826e696', 'SYS_EDUCATION_STATUS', '3', '中专', '教育程度', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('3c98a71a20a64fae9a15dbcdf5839940', 'SYS_EDUCATION_STATUS', '4', '大专', '教育程度', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('e53d169e13ce4eacbc0dec5edde0f2d8', 'SYS_EDUCATION_STATUS', '5', '本科', '教育程度', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('f47fd1f9fdb7468d9e6054f497912f97', 'SYS_EDUCATION_STATUS', '6', '硕士及以上', '教育程度', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('7f2f07dec2084bb68e98dd92f7e83306', 'SYS_JOB_STATUS', '0', '否', '是否在职', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('7c9403de9c4741f2afbc5ce99eaac4af', 'SYS_JOB_STATUS', '1', '是', '是否在职', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('586c1e2c00604b55839c11699f43140a', 'SYS_ONLINE_STATUS', '0', '不在线', '是否在线', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('107c20637474431d934709c5d2e8b067', 'SYS_ONLINE_STATUS', '1', '在线', '在线状态', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('1b789079cad140d4b51f830a90237ee9', '44', '1', '1', '1', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('42992b3219884ce7b6f1af2ac9da838c', 'SYS_PROCESS_MODE', '2', '整形', '参数类型', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('f619d36c5d554093ab0044dd37f90c0d', 'SYS_PROCESS_MODE', '3', '32', '12', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('9bc7dbe4770b447d9816d862ec07d675', '44', '2', '2', '2', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('5af1267354554438a506e063dbfd8a41', '44', '3', '3', '3', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('29a73cb9a60e4282ab1649f83fa3dc99', 'SYS_PROCESS_MODE', '4', '字符型', '参数类型', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('2c972652ca5b4c518c2938808c05f8fa', 'PRINCIPLE_CODE1', '2', '压电', '设备工作原理代码首位', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('9b0b9bda913c432090b6689ca1d41469', 'PRINCIPLE_CODE1', '3', '视频', '设备工作原理代码首位', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('d222f7a026fe40ef9a673a1295613faa', 'PRINCIPLE_CODE1', '1', '地感线圈', '设备工作原理代码首位', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('76a1c3fdd73a4b1ab264666c95731335', 'PRINCIPLE_CODE1', '4', '无线电雷达', '设备工作原理代码首位', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('29eba2eda5b04c3f858549af002e67ec', 'PRINCIPLE_CODE1', '5', '声波', '设备工作原理代码首位', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('9ca5bafde70b43aab93d212ef173a3cd', 'PRINCIPLE_CODE1', '6', '红外线', '设备工作原理代码首位', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('e3a5531a18a94cdb98784c53fd6c406c', 'PRINCIPLE_CODE1', '7', '激光', '设备工作原理代码首位', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('6d6bd009f24845ff8e526b4f4b64df42', 'PRINCIPLE_CODE1', '8', '其他', '设备工作原理代码首位', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('7f79d7c4d0664b63b46e7f0dddc4e346', 'PRINCIPLE_CODE2', '0', '无辅助工作方式', '设备工作原理代码末位', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('f4107b16a8434efe82d07d941b089b8b', 'PRINCIPLE_CODE2', '1', '地感线圈', '设备工作原理代码末位', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('e32bf89ab7d1497dbe606e128f051e73', 'PRINCIPLE_CODE2', '2', '压电', '设备工作原理代码末位', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('277668d1f2904a239e60ec7bc83cc6ad', 'PRINCIPLE_CODE2', '3', '视频', '设备工作原理代码末位', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('a56a7efad10044c0810f05f987296399', 'PRINCIPLE_CODE2', '4', '无线电雷达', '设备工作原理代码末位', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('23f173045bff4bbba8ab3986a508c555', 'PRINCIPLE_CODE2', '5', '声波', '设备工作原理代码末位', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('4e1090c58c504e63b8ff2733995615e6', 'PRINCIPLE_CODE2', '6', '红外线', '设备工作原理代码末位', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('eef03acdd89a497cb5471c060ef2265e', 'PRINCIPLE_CODE2', '7', '激光', '设备工作原理代码末位', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('614e567ecb9141d5b88611305637bb3b', 'PRINCIPLE_CODE2', '8', '其他', '设备工作原理代码末位', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('c50c54332cf24d769ddb0fd2343435c8', 'DEVICE_LEVEL', '1', 'I级', '设备级别', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('ea653c59d38343b7bb55a3090856ee90', 'TRANSMISSION_CODE', '0', '无数据网络传输功能', '传输方式代码', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('58e71447ccb743e9be599677505d8d3f', 'TRANSMISSION_CODE', '2', '具备数据无线网络传输功能', '传输方式代码', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('c526efb8142a4115ba6152e872bea6cf', 'TRANSMISSION_CODE', '1', '具备数据有线网络传输功能', '传输方式代码', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('7072945c62594e4d99ac841e965ac8ee', 'TRANSMISSION_CODE', '3', '兼有数据有线及无线网络传输功能', '传输方式代码', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('9720b63a3d62458aa08d344ceae9b134', 'DEVICE_LEVEL', '3', 'III级', '设备级别', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('99c253a8c0f2462a92106f28bf4664d3', 'DEVICE_LEVEL', '2', 'II级', '设备级别', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('1712ef37d6174fc581532caaca417929', 'DEVICE_ERROR_TIME', '1', '12小时', '设备故障时间区1', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('88899fbdd68b49dd96998fda99cf7c54', 'DEVICE_ERROR_TIME', '2', '1天', '设备故障时间区2', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('ad0bf60122d74a7ea09740078ebd69b8', 'DEVICE_ERROR_TIME', '3', '7天', '设备故障时间区3', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('b2310f81117e4a058a772ce1242dbfe7', 'SYS_YN_STATUS', '1', '是', '通用是', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('301df64d1c1a4402abc4d405ca6c62c8', 'SYS_YN_STATUS', '0', '否', '通用否', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('5DE980E2B10CD900E050000D021F5F35', 'CAR_TYPES', '1', '客车', '客车', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('5DE980E2B10DD900E050000D021F5F35', 'TRUCK_TYPES', '1', '货车', '货车', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('5eb56598045b4e939ff1ed214135a497', 'SEND_WAY', '9', '审核路况', '审核路况', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('b254d32c75c140e1ae828c024700c547', 'DM_TRAFFIC_STATUS', '2', '拥堵', '拥堵', 1, 3, to_date('27-06-2019 11:06:47', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('3a3cb2b8e4a6402b8802686a5400e32a', 'DM_TRAFFIC_STATUS', '1', '缓行', '缓行', 1, 2, to_date('27-06-2019 11:06:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('5DE980E2B10ED900E050000D021F5F35', 'TRUCK_TYPES', '6', '二轴（含）以上货车', '二轴（含）以上货车', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('5DE980E2B10FD900E050000D021F5F35', 'TRUCK_TYPES', '7', '二轴以上货车', '二轴以上货车', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('5DE980E2B110D900E050000D021F5F35', 'TRUCK_TYPES', '8', '三轴（含）以上货车', '三轴（含）以上货车', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('5DE980E2B111D900E050000D021F5F35', 'TRUCK_TYPES', '9', '三轴以上货车', '三轴以上货车', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('5DE980E2B112D900E050000D021F5F35', 'TRUCK_TYPES', '10', '四轴（含）以上货车', '四轴（含）以上货车', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('5DE980E2B113D900E050000D021F5F35', 'TRUCK_TYPES', '11', '四轴以上货车', '四轴以上货车', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('5DE980E2B114D900E050000D021F5F35', 'TRUCK_TYPES', '12', '五轴（含）以上货车', '五轴（含）以上货车', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('5DE980E2B115D900E050000D021F5F35', 'TRUCK_TYPES', '13', '五轴以上货车', '五轴以上货车', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('5DE980E2B116D900E050000D021F5F35', 'TRUCK_TYPES', '14', '六轴（含）以上货车', '六轴（含）以上货车', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('5DE980E2B117D900E050000D021F5F35', 'TRUCK_TYPES', '15', '六轴以上货车', '六轴以上货车', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('200a07ff0dba4be3bb7193032719f0a4', 'INFORMATION_TYPE', '6', 'ETC信息', 'ETC信息', 1, 5, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('6bd41fd57eb54f82aacb4854c6b25baf', 'ALARMINFO_STUB_TYPE', 'K', 'K', 'K字桩号', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('eadab6152c3347c0902231a310267237', 'ALARMINFO_STUB_TYPE', 'MK', 'MK', 'MK桩号标识', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('755154a49fdb48dd996e26d6c572d5db', 'roadType', '14', '互通', '路段类型-14', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('1bfce6c75a9641f98cd259bad5c8b891', 'flowTrafficStatus', '0', '畅通', '畅通', 1, 1, to_date('05-07-2018 17:25:32', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('0bec1908309b4726bd1445c726867a48', 'flowTrafficStatus', '1', '基本畅通', '基本畅通', 1, 2, to_date('05-07-2018 17:25:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('a70f76d8a1634b939261f642d78a52fd', 'flowTrafficStatus', '2', '轻度拥堵', '轻度拥堵', 1, 3, to_date('05-07-2018 17:26:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('38FE36B38FB54F98B99E46F1252B1808', 'flowTrafficStatus', '3', '中度拥堵', '中度拥堵', 1, 3, to_date('05-07-2018 17:26:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('D8D368FF89184E5FA6DB2385FB318DC1', 'flowTrafficStatus', '4', '重度拥堵', '重度拥堵', 1, 3, to_date('05-07-2018 17:26:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('8f11b3ec8e3a4eb498bca7f4c2e7af56', 'paperCardReason', '1', '车流量大', '车流量大', 1, 1, to_date('19-07-2018 11:14:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('b94aa9fca0454954a0f18807fe0713ba', 'paperCardReason', '2', '通行卡不足', '通行卡不足', 1, 2, to_date('19-07-2018 11:14:32', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('dd6d8ca268e34507a7f499727d569c12', 'paperCardReason', '3', '设备故障', '设备故障', 1, 3, to_date('19-07-2018 11:17:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('980efc5008af4422aa5f64bb3b4d9117', 'paperCardReason', '4', '车流量大、通行卡不足', null, 1, 4, to_date('19-07-2018 11:18:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('e285e6d9f88f46be9aa763c54ddf84ce', 'paperCardReason', '5', '车流量大、设备故障', null, 1, 5, to_date('19-07-2018 11:18:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('e6bf82c082e041ada563f01dcc63614e', 'paperCardReason', '6', '通行卡不足、设备故障', null, 1, 6, to_date('19-07-2018 11:19:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('9029833fb77a4e758b2fc7c3cdf54b7f', 'paperCardReason', '7', '节假日保畅', null, 1, 7, to_date('19-07-2018 11:19:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('7620254110334f448104f469341aa808', 'paperCardReason', '9', '其他', null, 1, 9, to_date('19-07-2018 11:19:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('916c93468b2842a7ae48300508289a88', 'availableStatus', '1', '正常使用', null, 1, 1, to_date('22-08-2018 11:54:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('9a7ffb006a7744afa49a12acafd9d8ab', 'availableStatus', '0', '不可使用', null, 1, 0, to_date('22-08-2018 11:54:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('19450191c06e4ecb8018542762430c3c', 'availableStatus', '9', '无', null, 1, 9, to_date('22-08-2018 11:55:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('cd7e4e51f0e44d08ba2287aaaf5c4ea3', 'roadType', '0', '普通路段', '路段类型-0', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('3A98F9A6527846B88692AB6AB293A707', 'fUploadAlarmType', '4', '短信', '短信', 1, 5, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('A59DAB568E0847689C83FE0C44546570', 'fUploadOrg', '2', '交投', '交投', 1, 3, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('5F3700853DA74FCAAB8ED203236F7B8D', 'fUploadOrg', '1', '路政', '路政', 1, 2, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('D5788F01A8364F14ABBC6E133AA97DC3', 'fUploadOrg', '0', '路段', '路段', 1, 1, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('BD03E2EF750943DAB8844BD3E5250061', 'fUploadAlarmType', '3', '邮件', '邮件', 1, 4, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('CD3E99AA7F1B42C98C555D2C9A204F9C', 'fUploadAlarmType', '2', '传真', '传真', 1, 3, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('4153E7D46F9E4287A54F3AFE9B1157BD', 'fUploadAlarmType', '1', '电话', '电话', 1, 2, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('98AF5E4742404F7C844047648589ED9F', 'fUploadAlarmType', '0', '平台', '平台', 1, 1, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('7E6F70FC512E4A5094C0B7E859E8F1BA', 'fAdministrativeType', '2', '交投', '交投', 1, 3, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('646D29C9A90B4B599E9F545D8EB96176', 'fAdministrativeType', '1', '市局', '市局', 1, 2, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('CA4FDE7E56F3413CBB17D95658DCC80B', 'fAdministrativeType', '0', '高管局', '高管局', 1, 1, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('934bb93e4e984e0e9c244cff141483e4', 'INFORMATION_TYPE', '5', '其他', '信息类型-其他', 1, 9, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('8e210e85798944569c3919f6d5330890', 'auditStatusCommon', '0', '待审核', null, 1, 0, to_date('20-07-2018 14:11:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('9285b059263e467ab787020681b41241', 'auditStatusCommon', '1', '审核未通过', null, 1, 1, to_date('20-07-2018 14:11:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('5925b14ef9cc425aa90abe0da868d826', 'auditStatusCommon', '2', '审核通过', null, 1, 2, to_date('20-07-2018 14:11:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('b579258ebda3458eb1eedb613b12059e', 'MESSAGE_TYPE', '3', '系统信息', '预案的执行信息等', 1, 3, to_date('24-12-2018 11:17:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('3c289ee07e194e779f17e5dde1bf665d', 'roadType', '10', '收费站', '路段类型-10', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('3e51edb19ae040a5b54217376e9e18a6', 'roadType', '21', '服务区', '路段类型-21', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('675dba7ed9bd4af4aab46fe2790aab88', 'CAR_TYPES', '5', '七座（含）以下客车', '七座（含）以下客车', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('b3fa3a4adf044cb1aeb0496cad0460c8', 'CAR_TYPES', '7', '七座（含）以上客车', '七座（含）以上客车', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('3b9d356fad104840a171f6a3bf49e838', 'CAR_TYPES', '8', '七座以下客车', '七座以下客车', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('56984ea63b6545a7a5b0c30edaf1f78d', 'CAR_TYPES', '6', '七座以上客车', '七座以上客车', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('a66fd6bd44b04ebab6e9c4975275a025', 'TRUCK_TYPES', '5', '危险品车辆', '危险品车辆', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('435cfba0b0cc472b85d1dad8e0bb53f9', 'TRUCK_TYPES', '4', '大件运输车辆', '大件运输车辆', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('236c3650abae4bb1a0c8936ff538b1af', 'TRUCK_TYPES', '2', '黄牌货车', '黄牌货车', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('9203db8441a548ef80c3a56598d14692', 'TOLL_STATION_STATUS', '1', '关闭', '收费站关闭', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('058c1d1eb30d4dd79b9f2fe63d5acd09', 'CAR_LIMIT_STATUS', '1', '禁止上道', '禁止上道', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('c7cc1bde6661431f80955a35f70bfa82', 'CAR_TYPES', '2', '黄牌客车', '黄牌客车', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('1a0ac51fff484aa49a2527f28650e350', 'CAR_TYPES', '3', '旅游客车', '旅游客车', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('ff39245c4bc543998b2f16d6e5a19fc1', 'CAR_TYPES', '4', '营运客车', '营运客车', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('32ba242738d344c9bf2186fc6b0fbdac', 'TRUCK_TYPES', '3', '蓝牌货车', '蓝牌货车', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('6370f99f810e424e8fbd2887844a9caa', 'TOLL_STATION_STATUS', '2', '限制', '收费站处于限制状态', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('69cc2fa8d2c9463785c354e46dc665dc', 'CAR_LIMIT_STATUS', '2', '禁止通行', '禁止通行', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('2008fb157bd24227b0dcc466048260d4', 'roadType', '11', '隧道', '路段-隧道', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('c572abc76c784c4cb62497c64427b758', 'TOLL_STATION_STATUS', '99', '正常开启', '收费站处于正常开启状态', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('a48ea5bc1fde4b75ad35fd66c9ec67d7', 'ORDER_STATUS', '1', '正在执行', '正在执行', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('807a92765dc244eca836660abaf4106c', 'PLATE_COLOR', '0', '白色', '号牌颜色', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('23d43052bdd84ecb98d42be7dbb4cb84', 'PLATE_COLOR', '1', '黄色', '号牌颜色', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('cc415f5fddaa4440b5a296cc6f1990d1', 'PLATE_COLOR', '2', '蓝色', '号牌颜色', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('a89d62f57c894a43b383b5c7b79bcb21', 'PLATE_COLOR', '3', '黑色', '号牌颜色', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('b4942c1b7dfe4162ad92debb9bdfc97b', 'PLATE_COLOR', '4', '其他', '号牌颜色', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('a74d38bd49af461fbed1e83b5bf0022e', 'PLATE_COLOR', '5', '绿色', '号牌颜色', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('51cab11ccc77421f95b5f549ed32c07b', 'VEHICLE_COLOR', 'C', '黄色', '车身颜色', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('789755fd5c5944f88cef623251e90fc8', 'VEHICLE_COLOR', 'A', '白色', '车身颜色', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('a3dd926db5524490a6214de057c68210', 'VEHICLE_COLOR', 'B', '灰色', '车身颜色', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('08b402197c6b488daa64f20b8ea06223', 'VEHICLE_COLOR', 'D', '粉色', '车身颜色', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('71816d1e7e524cf99b2fd81c1bca93b0', 'VEHICLE_COLOR', 'E', '红色', '车身颜色', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('2ca23dcdbc15491bbd55349ca576f968', 'VEHICLE_COLOR', 'F', '紫色', '车身颜色', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT (dict_id, dict_type_id, code, name, remark, fixed, sort_no, update_time)
values ('d922453e90234ff99dbae90e8b31f7a4', 'VEHICLE_COLOR', 'G', '绿色', '车身颜色', 1, 0, to_date('11-05-2018 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 268 records loaded
prompt Loading SYS_DICT_TYPE...
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('THRESHOLD_FEILD_VD', '阀值-车检可选字段', '车检', to_date('06-08-2019 09:55:28', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('THRESHOLD_FEILD_WS', '阀值-气象可选字段', '气象', to_date('26-07-2019 15:52:43', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('TASK_EXEC_TYPE', '任务执行类别', '任务执行类别', to_date('15-07-2019 18:41:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('TASK_STATUS', '任务状态', '系统任务的状态', to_date('15-07-2019 18:38:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('CMS_LOCK_TIME', '情报板锁定时长(分钟)', '小于0的为特殊格式', to_date('04-07-2019', 'dd-mm-yyyy'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('TASK_DEST_PATH', '任务目标job路径', '任务类', to_date('08-08-2019 11:15:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('auditStatusCommon', '审核通过与否', '通用', to_date('20-07-2018 14:10:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('direction', '方向', '方向', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('FUNCTION_CODE1', '设备功能代码首位', '设备功能代码', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('communication', '通讯方式', '通讯方式', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('FUNCTION_CODE2', '设备功能代码末位', '设备功能代码', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('PRINCIPLE_CODE1', '设备工作原理代码首位', '设备工作原理代码', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('DEVICE_LEVEL', '设备级别', '交调设备分级', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('DM_SYS_PARAM_TYPE', '参数类型', '系统参数的参数类型', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('44', '1', '1', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('SYS_ONLINE_STATUS', '在线状态', '标识登陆状态', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('SYS_EDUCATION_STATUS', '教育程度', '教育程度', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('SYS_PROCESS_MODE', '处理方式', '处理方式', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('SYS_VALID_STATUS', '有效标志', '数据是否有效的标志', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('SYS_GENDER_STATUS', '性别标志', '性别标志', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('SYS_ENABLED_STATUS', '启用关闭标志', '启用、关闭的标志', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('SYS_JOB_STATUS', '在职状态', '在职状态', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('MESSAGE_TYPE', '消息类型', '提醒消息的消息类型', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('PRINCIPLE_CODE2', '设备工作原理代码末位', '设备工作原理代码', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('TRANSMISSION_CODE', '传输方式代码', '交调设备传输方式代码', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('DEVICE_ERROR_TIME', '故障时间', '设备故障时间区', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('ALARMINFO_STUB_TYPE', '路况用桩号类型', '路况用桩号类型', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('roadType', '路段类型', '路段的类型', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('TRUCK_TYPES', '路况用货车车型', '路况用货车车型', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('TOLL_STATION_STATUS', '收费站状态', '收费站状态', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('CAR_LIMIT_STATUS', '车辆限制状态', '车辆限制状态', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('CAR_TYPES', '路况客车车型', '路况客车车型', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('VEHICLE_COLOR', '车身颜色', '车身颜色', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('ALARMINFO_REASON', '路况原因', '审核路况时路况原因归类', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('SYS_YN_STATUS', '通用是否', '通用是否', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('PLATE_COLOR', '号牌颜色', '车牌颜色', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('EQUIPMENT_TYPE', '采集类型', '卡口相机采集类型', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('INFORMATION_TYPE', '信息类型', '路况信息类型', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('IS_END', '是否结束', '路况上报是否结束', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('COLLECT_TYPE', '数据采集方式', '数据采集录入方式', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('AUDIT_STATUS', '路况审核状态', '审核状态（上传标志）', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('SEND_WAY', '发送方式', '路况信息发送方式', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('ORDER_STATUS', '命令执行状态', '路况命令执行状态', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('ALARMINFO_POS_DETAIL', '详细阻断位置', '阻断位置', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('flowTrafficStatus', '车流量拥挤度', '车流量拥挤度', to_date('05-07-2018 17:22:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('fUploadOrg', '路况上报单位信息', '路况上报单位信息', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('fUploadAlarmType', '路段上报路况方式', '路段上报路况方式', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('fAdministrativeType', '路段归属行政类型', '路段归属行政类型', to_date('11-05-2018 09:09:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('paperCardReason', '纸卡不足原因', '纸卡不足原因', to_date('19-07-2018 11:13:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('availableStatus', '可用状态', '可用状态', to_date('22-08-2018 11:53:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('FOG_LIGHT_FREQUENCY', '雾气灯光频率', '雾气灯光频率', to_date('03-08-2018 16:58:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('DM_TRAFFIC_STATUS', '交通状态', '交通状态', to_date('27-06-2019 11:00:39', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_DICT_TYPE (dict_type_id, name, remark, update_time)
values ('CMS_GROUP', '情报板位置类型', '情报板分组', to_date('24-06-2019 15:04:21', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 53 records loaded
prompt Loading SYS_JOB...
prompt Table is empty
prompt Loading SYS_JOB_IN_ORG...
insert into SYS_JOB_IN_ORG (id, job_id, org_id, user_id, last_update_time)
values ('777a1f8aee9a416eb1077f80926975dd', '3', 'GL001', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('11-07-2018 11:14:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_JOB_IN_ORG (id, job_id, org_id, user_id, last_update_time)
values ('0ed900c772a642caa94578d5d4522575', '1', 'GL001', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('11-07-2018 11:15:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_JOB_IN_ORG (id, job_id, org_id, user_id, last_update_time)
values ('4640c1aa653f4bcabd4a5f42a5561b76', '1', 'GL001102', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('11-07-2018 11:26:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_JOB_IN_ORG (id, job_id, org_id, user_id, last_update_time)
values ('19fde247b63d4d5ebc5adf5fc77b4c07', '3', 'GL001102', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('11-07-2018 11:26:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_JOB_IN_ORG (id, job_id, org_id, user_id, last_update_time)
values ('3a06e49cecc04f068a35a5626853cbb0', '1', 'GL001104', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('11-07-2018 13:36:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_JOB_IN_ORG (id, job_id, org_id, user_id, last_update_time)
values ('a501d6cfbec64758b26de3d01da3f67b', '3', 'GL001104', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('11-07-2018 13:36:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_JOB_IN_ORG (id, job_id, org_id, user_id, last_update_time)
values ('7c782fe39ed14590aef7534bc546e2e3', '1', 'SF001106002005', '1', to_date('08-06-2018 17:37:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_JOB_IN_ORG (id, job_id, org_id, user_id, last_update_time)
values ('1534007dad90402caea7ed49a7a57d3f', '3', 'SF001106002002', '1', to_date('08-06-2018 10:45:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_JOB_IN_ORG (id, job_id, org_id, user_id, last_update_time)
values ('505b24165e344e5caf5caf5109abc004', '1', 'SF001106002', '1', to_date('08-06-2018 15:34:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_JOB_IN_ORG (id, job_id, org_id, user_id, last_update_time)
values ('d4af757c9f204371a4e33403d92c700d', '3', 'SF001106002', '1', to_date('08-06-2018 15:34:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_JOB_IN_ORG (id, job_id, org_id, user_id, last_update_time)
values ('237fb1dd6f634fa49602f10ef46bff6c', '3', 'SF001106002005', '1', to_date('08-06-2018 17:37:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_JOB_IN_ORG (id, job_id, org_id, user_id, last_update_time)
values ('175230da59224c26929642372d25eb20', '1', 'GL001111', '1', to_date('29-08-2018 15:33:28', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_JOB_IN_ORG (id, job_id, org_id, user_id, last_update_time)
values ('b954663d81524560ad7fc271ef76dec5', '3', 'GL001111', '1', to_date('29-08-2018 15:33:28', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_JOB_IN_ORG (id, job_id, org_id, user_id, last_update_time)
values ('68949b8d971044bbbb889a9e32e3b711', '1', 'GL001110', '1', to_date('29-08-2018 15:37:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_JOB_IN_ORG (id, job_id, org_id, user_id, last_update_time)
values ('7c328624651d49bdb158a351f9061a31', '3', 'GL001110', '1', to_date('29-08-2018 15:37:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_JOB_IN_ORG (id, job_id, org_id, user_id, last_update_time)
values ('a9ddcc82c80c48c683d3bcee00424f6e', '1', 'SF001107002', '1', to_date('29-08-2018 15:38:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_JOB_IN_ORG (id, job_id, org_id, user_id, last_update_time)
values ('bfb5748feeee41d4bbd53eff871c06f8', '3', 'SF001107002', '1', to_date('29-08-2018 15:38:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_JOB_IN_ORG (id, job_id, org_id, user_id, last_update_time)
values ('356bd48dc0f64efe8ea2d222dc4698b0', '1', 'GL001187', '1', to_date('02-08-2018 11:35:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_JOB_IN_ORG (id, job_id, org_id, user_id, last_update_time)
values ('ed046324fe4b4480bf8bdec37e3d7414', '1', 'GL001186', '1', to_date('02-08-2018 11:36:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_JOB_IN_ORG (id, job_id, org_id, user_id, last_update_time)
values ('06d28937da7f458f9b237b580fb7a33d', '3', 'GL001186', '1', to_date('02-08-2018 11:36:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_JOB_IN_ORG (id, job_id, org_id, user_id, last_update_time)
values ('68fec842e0784d65ba77811911e81111', '1', 'SF001186002', '1', to_date('02-08-2018 11:40:54', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_JOB_IN_ORG (id, job_id, org_id, user_id, last_update_time)
values ('f9d566da9def4e74ad8abcec70d0399e', '1', 'GL001113', '1', to_date('29-08-2018 09:52:48', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_JOB_IN_ORG (id, job_id, org_id, user_id, last_update_time)
values ('3cd3b22e0dfe40bfbdf68630f0f740ac', '3', 'GL001113', '1', to_date('29-08-2018 09:52:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_JOB_IN_ORG (id, job_id, org_id, user_id, last_update_time)
values ('3be650739bc7401ea546d7b26a2a1726', '1', 'GL001107', '1', to_date('29-08-2018 15:47:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_JOB_IN_ORG (id, job_id, org_id, user_id, last_update_time)
values ('46cd8197bb4041a1b5792ab46963f8c1', '3', 'GL001107', '1', to_date('29-08-2018 15:47:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_JOB_IN_ORG (id, job_id, org_id, user_id, last_update_time)
values ('45d8611786914cabb7c866a9059ecd64', '1', 'SF001107002004', '1', to_date('29-08-2018 15:59:49', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_JOB_IN_ORG (id, job_id, org_id, user_id, last_update_time)
values ('d80825ea983043d09c69f148dc79e9e2', '3', 'SF001107002004', '1', to_date('29-08-2018 15:59:49', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 27 records loaded
prompt Loading SYS_PARAM...
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('efe2055e3e104f8682a35da0e7af93cb', 'sys_default_home_page', '默认主页地址', './index_view/index_shian.jsp', 1, null, 0, 1, 0, to_date('08-08-2019 09:41:32', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('06fbc69509044244a80c61edd0d14341', 'task_service_url', '任务服务url地址', 'http://13.65.0.16:18081/rhytask', 1, null, 0, 1, 4, to_date('08-08-2019 09:41:32', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('8F92352A519672FBE050007F0100312C', 'default_cms_lock_enable', '是否启用情报板锁功能(1:启用  0：不启用)', '1', 2, '1~~0', 2, 1, 9, to_date('08-08-2019 09:45:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('8F92352A519772FBE050007F0100312C', 'default_cms_lock_level', '用户默认拥有的情报板发布级别(分中心建议为5，省中心为9)', '5', 2, null, 0, 1, 9, to_date('08-08-2019 09:50:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('8F92352A519872FBE050007F0100312C', 'default_cms_lock_seq_rule', '情报板锁优先顺序策略：0、先来优先，1、后来优先。', '1', 2, '1~~0', 2, 1, 9, to_date('08-08-2019 09:50:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('8F92352A519972FBE050007F0100312C', 'default_task_level_enable', '是否启用任务级别功能（1:启用  0：不启用）', '1', 2, '1~~0', 2, 1, 9, to_date('08-08-2019 09:50:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('8F92352A519A72FBE050007F0100312C', 'default_task_level', '用户默认拥有的任务级别（根据需要修改，管理员最大为9）', '5', 2, null, 0, 1, 9, to_date('08-08-2019 09:50:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('de02040398fd451b898a2a6d56d53987', 'current_map_id', '默认地图', '0001', 1, null, 0, 2, 1, to_date('08-08-2019 10:53:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('2A929B6612FE49E08E4A6A2EF71D6FD1', 'sys_ename', '平台名称(英文)', 'ShiAn Highway Traffic Integrated Management Platform', 1, ' ', 2, 1, 9, to_date('08-08-2019 10:53:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('6BD130540D6045D7822AAD08708B21B0', 'sys_name', '平台名称(中文)', '河北省高速公路石安管理处综合管理平台', 1, ' ', 2, 1, 9, to_date('08-08-2019 10:53:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('8F6792DC39A345A9AA52B43E19F3303D', 'sys_name_m', '移动终端平台名称(中文)', '河北省高速公路石安管理处交通<br>综合管理平台', 1, ' ', 2, 1, 9, to_date('08-08-2019 10:53:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('B806F1257E614378AB8A753BCC60B847', 'sys_sname', '平台简称', '综合管理系统', 1, ' ', 2, 1, 9, to_date('08-08-2019 10:53:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('5EA168378F98401197497C26CBAFE136', 'video__other_zw_status_url', '摄像机状态', '13.65.0.2:8080', 1, ' ', 2, 3, 9, to_date('08-08-2019 10:53:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('900CCD5F95974B5AA591C7E04D0A13AD', 'video__monitors_layer_len', '视频大屏布局记录行数（整数,请务必以video__monitors_layer_开头,按照从小到大顺序,在最后加上数字标号）', '2', 2, '1~~100', 0, 1, 9, to_date('08-08-2019 10:53:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('C7620491FC1043EA144AF05C7910893C', 'to_call_center_addr', '向呼叫中心发布信息的接口地址', 'http://', 1, ' ', 0, 1, 9, to_date('08-08-2019 10:53:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('40035079F30A47A9918621547618B85D', 'to_call_center_pass', '向呼叫中心发布信息的通行证 MD5 码', '049c871c7aa8315822055e647750071e', 1, ' ', 0, 1, 9, to_date('08-08-2019 10:53:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('AD975F4E084240F5AD311F1D6D0A7457', 'to_call_center_templet_id', '将（事件）信息发布到呼叫中心的信息模版ID', '8d808b823df37ed0013e164ee86315f6', 1, ' ', 0, 1, 9, to_date('08-08-2019 10:53:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('638F04A4F462424696981A16A552AE8B', 'to_call_center_type', '向呼叫中心发布信息的方式', 'form', 1, 'task~~form', 2, 1, 9, to_date('08-08-2019 10:53:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('43C3740EF6408990E050000D021F43FE', 'video__monitors_layer_2', '视频系统大屏布局2', '<tr><td _id="H67">E1</td><td _id="H68">E2</td><td _id="H69">E3</td><td _id="H70">E4</td><td _id="H71">E5</td><td _id="H72">E6</td><td _id="H73">E7</td><td _id="H74">E8</td><td _id="H75">F1</td><td _id="H76">F2</td><td _id="H77">F3</td><td _id="H78">F4</td></tr>' || chr(10) || '<tr><td _id="H79">F5</td><td _id="H80">F6</td></tr>', 1, ' ', 2, 1, 9, to_date('08-08-2019 10:53:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('900CCD5F95974B5AA591C7E04D0A11AD', 'video__monitors_layer_1', '视频系统大屏布局1', '<tr><td _id="H37">B1</td><td _id="H51">B2</td><td _id="H15" rowspan="3">A1</td><td _id="H17" rowspan="3">A2</td><td _id="H19" rowspan="3">A3</td><td _id="H47" rowspan="3">A4''</td><td _id="H43" rowspan="3">A5''</td><td _id="H20" rowspan="3">A6</td><td _id="H11" rowspan="3">A7</td><td _id="H39" rowspan="3">A8''</td><td _id="H23">C1</td><td _id="H35">C2</td></tr>' || chr(10) || '<tr><td _id="H38">B3</td><td _id="H52">B4</td><td _id="H29">C3</td><td _id="H24">C4</td></tr>' || chr(10) || '<tr><td _id="H53">B5</td><td _id="H55">B6</td><td _id="H33">C5</td><td _id="H34">C6</td></tr>' || chr(10) || '<tr><td _id="H54">B7</td><td _id="H56">B8</td><td _id="H45" rowspan="3">A9''</td><td _id="H49" rowspan="3">A10''</td><td _id="H50" rowspan="3">A11</td><td _id="H46" rowspan="3">A12</td><td _id="H44" rowspan="3">A13</td><td _id="H41" rowspan="3">A14''</td><td _id="H12" rowspan="3">A15</td><td _id="H40" rowspan="3">A16</td><td _id="H36">C7</td><td _id="H28">C8</td></tr>' || chr(10) || '<tr><td></td><td></td><td></td><td></td></tr>' || chr(10) || '<tr><td _id="H57">B9</td><td _id="H59">B10</td><td _id="H22">C9</td><td _id="H21">C10</td></tr>' || chr(10) || '<tr><td _id="H58">B11</td><td _id="H60">B12</td><td _id="H14" rowspan="3">A17</td><td _id="H18" rowspan="3">A18</td><td _id="H48" rowspan="3">A19</td><td _id="H16" rowspan="3">A20</td><td _id="H13" rowspan="3">A21</td><td _id="H42" rowspan="3">A22</td><td _id="H10" rowspan="3">A23</td><td _id="H9" rowspan="3">A24</td><td _id="H26">C11</td><td _id="H27">C12</td></tr>' || chr(10) || '<tr><td _id="H65">B13</td><td _id="H66">B14</td><td _id="H31">C13</td><td _id="H25">C14</td></tr>' || chr(10) || '<tr><td _id="H62">B15</td><td _id="H61">B16</td><td _id="H30">C15</td><td _id="H32">C16</td></tr>' || chr(10) || '<tr><td _id="H3" colspan="2">D1</td><td _id="H7" colspan="2">D2</td><td _id="H4" colspan="2">D3</td><td _id="H8" colspan="2">D4</td><td _id="H63" colspan="2">D5</td><td _id="H64" colspan="2">D6</td></tr>', 1, ' ', 2, 1, 9, to_date('08-08-2019 10:53:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('2E9797DA39C1420D9AA75E3E3F1DD0CE', 'video__record_len', '默认录像长度（单位：秒）', '900', 2, '1~7200', 1, 1, 9, to_date('08-08-2019 10:53:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('B499840957B15B1DE040A8C0140043D4', 'current_system_address', '当前系统运行的是省中心还是分中心(1代表省中心,2代表分中心)', '2', 2, '1~~2', 2, 1, 9, to_date('08-08-2019 10:53:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('326B7C66E70C472F8052F42BB204672A', 'bay_record_timeout_time', '进出服务区卡口超时标准（单位：天）', '30', 2, '0~~90', 1, 1, 9, to_date('08-08-2019 10:53:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('FF99A677B35C4E439544D4DDB10D7918', 'map_device_refresh_time', '刷新地图上设备状态的间隔时长（单位：秒）', '30', 2, '0~~1800', 1, 1, 9, to_date('08-08-2019 10:53:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('FF99A677B35C4E439544D4DDB10D7919', 'map_event_refresh_time', '刷新事件信息的间隔时长（单位：秒）', '600', 2, '0~~1800', 1, 1, 9, to_date('08-08-2019 10:53:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('FDFC077ACD8E432B9541AC6BD51D95DD', 'map_gps_rescue_addr', 'GPS救援系统 Web services 服务路径', 'http://219.141.179.201:19206/gpsWebServcies/services/Service1Soap', 1, ' ', 0, 1, 9, to_date('08-08-2019 10:53:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('26B9D73695A1431E88F2E131CA700591', 'map_gps_rescue_login_name', 'GPS救援功能登录名', 'test', 1, ' ', 0, 1, 9, to_date('08-08-2019 10:53:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('90BA9776B51244EB85FCD2E9C6372C3A', 'map_gps_rescue_login_pass', 'GPS救援功能登录密码', 'test', 1, ' ', 0, 1, 9, to_date('08-08-2019 10:53:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('C205EC0D490B4690A78397FB9647536F', 'map_min_zoom', '地图最小级别', '1', 1, '0~~1', 1, 1, 9, to_date('08-08-2019 10:53:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('FF99A677B35C4E439544D4DDB10D7922', 'map_support_edit_road', '是否支持地图编辑线路功能？', '1', 2, '0~~1', 1, 1, 9, to_date('08-08-2019 10:53:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('C37DDC569B614D8AB922713095ED83D9', 'map_support_gps_rescue', '是否支持GPS救援功能？', '1', 2, '0~~1', 1, 1, 9, to_date('08-08-2019 10:53:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('FF99A677B35C4E439544D4DDB10D7923', 'map_support_pos', '是否支持地图定位功能？', '1', 2, '0~~1', 1, 1, 9, to_date('08-08-2019 10:53:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('FF99A677B35C4E439544D4DDB10D7921', 'map_support_traffic_status', '是否支持交通状态展现功能？', '1', 2, '0~~1', 1, 1, 9, to_date('08-08-2019 10:53:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('008E7143F13B47EF9870FC08885100C4', 'map_traffic_dynamic_line_style', '交通状态线动态描绘风格', '0', 2, '0~~4', 1, 1, 9, to_date('08-08-2019 10:53:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('FF99A677B35C4E439544D4DDB10D7920', 'map_traffic_refresh_time', '刷新交通状态的间隔时长（单位：秒）', '600', 2, '0~~99999', 1, 1, 9, to_date('08-08-2019 10:53:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('229BA41E2B114B1C980AB44D4352CE84', 'map_traffic_status_style', '交通状态展现风格：1、动态状态风格；2、固定分段风格', '1', 2, '1~~2', 1, 1, 9, to_date('08-08-2019 10:53:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('944C32F56CCC4E54AF6E2EC30ACF8796', 'to_newsystem_center_addr', '省中心的新平台ip地址及端口', '13.2.248.11:8080/monitor', 1, ' ', 2, 1, 9, to_date('08-08-2019 10:53:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('2BD9EA6EA8554688981E5EBF31B59390', 'default_own_org_ids', '拥有管理路段id（新平台，英文逗号分割）', 'GL001118', 1, ' ', 2, 1, 9, to_date('08-08-2019 10:53:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('1BD9EA6EA8554688981E5EBF31B59390', 'default_own_road_ids', '拥有的路段id（新平台，英文逗号分割）', '00010018,00010097', 1, ' ', 2, 1, 9, to_date('08-08-2019 10:53:16', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_PARAM (sys_param_id, param_name, param_remark, param_value, param_type, constraint_value, constraint_condition, param_attribute, param_group, create_time)
values ('5EA168378F98401197497C27CBAFE136', 'video__other_zw_ip', '中威服务IP', '13.65.0.2', 1, ' ', 2, 3, 9, to_date('08-08-2019 10:53:16', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 40 records loaded
prompt Loading SYS_PRIVILEGE_FOR_ROLE...
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('AAA661CA4E60440397269D8D06BB4CBB', 'b1d8aaa9881c4ef883f99753858e55d3', '7040498cee6a4716b6531f21a6728116', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('06FDBB16DA7441A8BFF57FEFB2A91E65', 'b1d8aaa9881c4ef883f99753858e55d3', 'dfd936672f2e469b99fb4c7f0e4b8a61', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('4D6A37F8567E470CAA52AAAF584A32D1', 'b1d8aaa9881c4ef883f99753858e55d3', '1a185fad87f644b0829effd7d9f97d5c', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B26C906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', '62', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B26D906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', '6fd723822b7b44fc85980591bcf6b9f6', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B26E906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', '3fad6001510f4a3f8b3ca51b7961ffd5', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B26F906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', '87aead81bbdf4cf29f5ffcbf5893f158', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B270906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', '533434ae508d4f03a31116f4c81ca5db', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B271906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', '60b1d2e0a693442e9621361f613441f2', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B272906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', '62f92ec221ac4461b12ed020c5de6698', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('9BF602F89F3C450C8F0DF6F51478E88D', 'b1d8aaa9881c4ef883f99753858e55d3', '6e20edd89f4e48ab8749ac5fab179938', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('F6A3B9485F854F4CAF51287CD5EDF4A6', 'b1d8aaa9881c4ef883f99753858e55d3', 'f50ab1e7927b486f8329597cbb602315', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('BA54FA9989EB45AFA1211853D639838D', 'b1d8aaa9881c4ef883f99753858e55d3', 'b120822f46244b68bd053f395dcdd29a', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('DB9A600F004146FCBB40C2972B4C60AB', 'b1d8aaa9881c4ef883f99753858e55d3', '41', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('F859E5316B4941F2B62431DFF4EA906F', 'b1d8aaa9881c4ef883f99753858e55d3', '42', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('C7D8A78F7F374F2E94C30CB08E7F1E57', 'b1d8aaa9881c4ef883f99753858e55d3', '43', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('D8F13C882B674F3DA4A43A129A996DEF', 'b1d8aaa9881c4ef883f99753858e55d3', '859edacf89914579bbc93aa09440d7ff', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('1BC2300D13E74DDC9FFEE6BB0F4B282D', 'b1d8aaa9881c4ef883f99753858e55d3', '60', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('0760BAE1D753471FBBCA1D33E12111C8', 'b1d8aaa9881c4ef883f99753858e55d3', 'e04642d08399468d9c6a74112b97bec1', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('77757C7A74344F3AAE878557DAD3A31B', 'b1d8aaa9881c4ef883f99753858e55d3', '63', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('DF174455F5A8431FBF14C600AE7264AC', 'b1d8aaa9881c4ef883f99753858e55d3', '61', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('CB740B2ABFF94B6AAF8E57668FC8210B', 'b1d8aaa9881c4ef883f99753858e55d3', '62', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('86DE5D331D6949B6B0764075DAF2A054', 'b1d8aaa9881c4ef883f99753858e55d3', '6fd723822b7b44fc85980591bcf6b9f6', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('9A62D205277B4640AC1D227AE95CA20E', 'b1d8aaa9881c4ef883f99753858e55d3', '3fad6001510f4a3f8b3ca51b7961ffd5', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('27E4116E8DDB4B8091E5750219D68FF2', 'b1d8aaa9881c4ef883f99753858e55d3', '87aead81bbdf4cf29f5ffcbf5893f158', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('7DCEECB703B94D97A9CB1BA73204ACD8', 'b1d8aaa9881c4ef883f99753858e55d3', '533434ae508d4f03a31116f4c81ca5db', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('D21AEF86359C4768B2D4B4EC78063C50', 'b1d8aaa9881c4ef883f99753858e55d3', '60b1d2e0a693442e9621361f613441f2', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('EA0B48520017495DB76213801F79357A', 'b1d8aaa9881c4ef883f99753858e55d3', '62f92ec221ac4461b12ed020c5de6698', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('66EDFD9C2801487A8A8BAD5B5CE40179', 'b1d8aaa9881c4ef883f99753858e55d3', '9d5edee2ab75405cbe31be7417ff33ce', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('29DC56387B8448CEA8C38A5AC27E17EE', 'b1d8aaa9881c4ef883f99753858e55d3', '475cc61ec69842f8a8beca9e7372c396', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('A9A60FABB11A404D8BCE73FB3BA02F0A', 'b1d8aaa9881c4ef883f99753858e55d3', 'db6f0ee52e9c4503bead61c2dc5762fd', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('B1524FA53D7846C58C8FFEB3071AC1B9', 'b1d8aaa9881c4ef883f99753858e55d3', '24d69602aa384d789782d05be42ef5ec', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('162086F508C148FB931A40375C287696', 'b1d8aaa9881c4ef883f99753858e55d3', '6a1cca917e1b44fb999d43413a2b82c3', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('183AC510D3204B8390B6E7B42BE89605', 'b1d8aaa9881c4ef883f99753858e55d3', 'd4fdde054ae24a17af3939899433f320', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('C8F4C5E0FE19453CAA2F48430C623C26', 'b1d8aaa9881c4ef883f99753858e55d3', 'f63181eda1b84a53ba9cd48973e2cee7', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('B963756071CD465681C2EB566260914A', 'b1d8aaa9881c4ef883f99753858e55d3', '50', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('ED78000A5C124FC4BDF62AF0AE4E77A1', 'b1d8aaa9881c4ef883f99753858e55d3', '101', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('AB8EA2DCB0714681B9AFC6F19E1837B6', 'b1d8aaa9881c4ef883f99753858e55d3', '53', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('571AEE284CB2475D88FE316ECC8EC776', 'b1d8aaa9881c4ef883f99753858e55d3', '104', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('AD65FD6EF37D4650808D6E4DC83ECBF7', 'b1d8aaa9881c4ef883f99753858e55d3', '105', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('E5EDBC87EDD34BA5A68DF7DD137EE07B', 'b1d8aaa9881c4ef883f99753858e55d3', '106', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('9393DE2E4D94438E8B8860077DE96303', 'b1d8aaa9881c4ef883f99753858e55d3', '102', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('FA0C72B5B7D44BBBBBFB2BE3D083A17D', 'b1d8aaa9881c4ef883f99753858e55d3', '103', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('79A9BE97F9CE4D1A98EE68F735ED3B75', 'b1d8aaa9881c4ef883f99753858e55d3', '5c1734ea243f46c6a4b97d67573c2476', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('0E0A3DE2A8A2450C92D68A2D7B494CBF', 'b1d8aaa9881c4ef883f99753858e55d3', '53bdc3afa2824079a1b50ef26c80f40a', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('885A5DBF044848989D7EAD5FD9ED7756', 'b1d8aaa9881c4ef883f99753858e55d3', '4c479cc35a4d4b8b879b70d19af9fa20', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('84F31F25B87A48C0BFD0D319865DA090', 'b1d8aaa9881c4ef883f99753858e55d3', 'b841b1f2e025428e82be649ba9eeb9b9', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('ACBC1BA130424929AA8FCCFF7C6F7BCD', 'b1d8aaa9881c4ef883f99753858e55d3', '85c889d2ca154c67888ab8ba6bfdf090', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('0629CFDA0342445199E77FFDC3DEDF5E', 'b1d8aaa9881c4ef883f99753858e55d3', 'e8e27055e39a4eb285c73a14fef0b2e6', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('6BAE6F14313840E891FD9B2B9C51CDE9', 'b1d8aaa9881c4ef883f99753858e55d3', 'c182fb5e6b224b1b8c03b36ea2b88fd7', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('53D408D37B2C4F72961DFF4FA3E09843', 'b1d8aaa9881c4ef883f99753858e55d3', '24cb80ec1d3f415e9ba4831211ece108', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('D55A6489EB8E42FE94BB834B8512811D', 'b1d8aaa9881c4ef883f99753858e55d3', 'b5d7629db4a44f02877c3a11df49ad64', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('C1D344735DD6441C83B6BF052F131A6A', 'b1d8aaa9881c4ef883f99753858e55d3', 'd7fecad17e874ef2906e3f1c5731e4eb', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('DF1F0F210C4A4F698BDDE23236823178', 'b1d8aaa9881c4ef883f99753858e55d3', '95bafd5e5e6b42f2a4c8066f9d5354a8', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('2F217D0C954E466992EA14AC741FDECD', 'b1d8aaa9881c4ef883f99753858e55d3', '44', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('9ABA548811F8492EADC512D41622267F', 'b1d8aaa9881c4ef883f99753858e55d3', '45', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('9854F4E8DB824BB1B7F72329B8A46711', 'b1d8aaa9881c4ef883f99753858e55d3', '21', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('926C3D19E2FB4CDB9CE9EB02670DE44B', 'b1d8aaa9881c4ef883f99753858e55d3', '26', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('03683B29D02C4598975CB9C4EA2F00B8', 'b1d8aaa9881c4ef883f99753858e55d3', '22', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('37A25BD06CD641118E6AECFBBB458960', 'b1d8aaa9881c4ef883f99753858e55d3', '23', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('C83635336B0B45B18272D63ED5453DBB', 'b1d8aaa9881c4ef883f99753858e55d3', '24', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('74491F287F5E4F13BC1253E1D376E479', 'b1d8aaa9881c4ef883f99753858e55d3', '25', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('1A3A1FD0383E4997B334CA43CBC3EB28', 'b1d8aaa9881c4ef883f99753858e55d3', '51', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('B3669EADB2F84888A0A02620CCD24FEB', 'b1d8aaa9881c4ef883f99753858e55d3', '52', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('ACA1194F5BB9449A84AB7F9A3AB0E7D0', 'b1d8aaa9881c4ef883f99753858e55d3', '11', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('A0BE86D7A9474165B4611D05BEB1251D', 'b1d8aaa9881c4ef883f99753858e55d3', '12', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('C07BD0B4543C47778FD7B04F6229D2BC', 'b1d8aaa9881c4ef883f99753858e55d3', '13', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('59D2636DDBAB4D038C5307BF50CBC153', 'b1d8aaa9881c4ef883f99753858e55d3', '14', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5F99FE3EC2B74E7A9F974C8AEF05A9A0', 'b1d8aaa9881c4ef883f99753858e55d3', '15', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('047FEDF1EF86482EA21EEF9A21BAA115', 'b1d8aaa9881c4ef883f99753858e55d3', '54', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('95AFB4D77D7E44839918C1B3C991D149', 'b1d8aaa9881c4ef883f99753858e55d3', '6ce747c3f8064d50973cdfe511de5d5a', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('42175200743B4E1BACDF92F49F493F08', 'b1d8aaa9881c4ef883f99753858e55d3', '9fe1073ebdf3488e82387042a901dc87', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('ABE0B8055CE64788B5F827308C30F7EB', 'b1d8aaa9881c4ef883f99753858e55d3', '6965bd26df9f4b0795f57df98272d1b8', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('174B075FE0F74A9297793AFDC7C72145', 'b1d8aaa9881c4ef883f99753858e55d3', 'a88cbc23ee774ece8d8477fddb095267', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('FBB66081147A4FF48AC72D680B2D84D1', 'b1d8aaa9881c4ef883f99753858e55d3', '7f527094d60c4895939bbf87b8379bba', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('99CEF5B53D4C40E0909D3001F01BA118', 'b1d8aaa9881c4ef883f99753858e55d3', 'e58dbff2abdd44c5ada21f72fef4e54b', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('CC83598376A345588CA00700E57387A6', 'b1d8aaa9881c4ef883f99753858e55d3', '51d1f6a6c4614daa9f73094cd38a2b11', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('80DE83D38AB94C059973A625C8BC37C1', 'b1d8aaa9881c4ef883f99753858e55d3', '9e5f4e9d608449a888a3009159fe02bc', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('2A1B1CC5FF0E409FB79EDD793A7C13F4', 'b1d8aaa9881c4ef883f99753858e55d3', '7c6050978e4746fdbca3da7c4e56657c', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('A34267ABE1994331A4343C948AFA1900', 'b1d8aaa9881c4ef883f99753858e55d3', '5d8f1cee36e34f7cbca3008f300a90f5', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('4EDBC8C852F94D40B075CB140E1DC6E8', 'b1d8aaa9881c4ef883f99753858e55d3', '4856a0fcbad049debd865ab3a54d2fed', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('DC6950E900014740A6DB1992162007D4', 'b1d8aaa9881c4ef883f99753858e55d3', '609b9141af304fa6ae5bfd3ba08a7de6', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('994356D708044F28B8478B5CDE8B5536', '93ee0afd4cec4715ab70f36f7f7abef5', '38297c4b7b004863ab70e9c46148fbb5', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('448894FB5DBC405B90288F52BB54746B', '93ee0afd4cec4715ab70f36f7f7abef5', '0d96ce50c39943eba25790e4e89fa27c', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('804905921AC6429B892AAF9F78F16E52', '93ee0afd4cec4715ab70f36f7f7abef5', 'b2758cf6644b4225810e0254d76bed71', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5AE777875746457299C5794511FE25AD', '93ee0afd4cec4715ab70f36f7f7abef5', '456ca86a4eb348fc80c997567624f1af', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('04C9D9AB9806403F99ACEB96F5D228AD', '93ee0afd4cec4715ab70f36f7f7abef5', '35011ea4ea2b4a2aa7cb3945df8500c0', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('9B253FEE8C3540E5B83A173410A66979', '93ee0afd4cec4715ab70f36f7f7abef5', 'c02ef9e2942a47e391eb8c6e01ca3d66', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('93C840363EB6495BBAA3098216D4A40E', '93ee0afd4cec4715ab70f36f7f7abef5', '53810534a12f45e5b7461009e1d0bf61', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('4DEA16AD26EC4CF3981DC1CCF9EAD23D', '93ee0afd4cec4715ab70f36f7f7abef5', '2b357e2bb45d4b96ac52f5d38db541ca', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('E77E89344401487CBDD91A829CA5174A', '93ee0afd4cec4715ab70f36f7f7abef5', '1f99d575b13f4ede85b35804c04516da', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('1292D957E4D3405CA9560AE1A5BF6636', '93ee0afd4cec4715ab70f36f7f7abef5', 'e87c128096ef445a90bc4e6610f9c5b4', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('E4BB1D9A02624A9E82B99885E23CF633', '93ee0afd4cec4715ab70f36f7f7abef5', '6005e54b15b7433581484f7cea4d5a40', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('14E6D3AE364546A19BBA2474D907A190', '93ee0afd4cec4715ab70f36f7f7abef5', '95e253739f824e03b4a28809c0987353', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('9D7E7BFD446E41DC990E1B6774322CE4', '93ee0afd4cec4715ab70f36f7f7abef5', '5cabe5edd451455aab0210f461366d45', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('BEB886411AA84F20B212323C44E8CB8D', '93ee0afd4cec4715ab70f36f7f7abef5', '157e4368a27646ef8ff828c251dde1d9', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('7C103942EEF6437DB1CAC4012225833A', '93ee0afd4cec4715ab70f36f7f7abef5', '54d5cab097944c5cbbba6754a5c464f5', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('7620A7CF9EBE4DF394DC0015A0901A8D', '93ee0afd4cec4715ab70f36f7f7abef5', 'c5e2fd1bae0647188a7a3b0e2a506e06', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('8BE97F2C5ACD478DA42BC94DA8ECE600', '93ee0afd4cec4715ab70f36f7f7abef5', 'c1ee80478f2e4b3eb8aed12509855c5d', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('6E8EB69112AB4236A22892083CFDC9B4', '93ee0afd4cec4715ab70f36f7f7abef5', 'df92f63cea6146179b180959adfd5f68', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('A490653AEEB840A8AB0BC2BBEA513CC7', '93ee0afd4cec4715ab70f36f7f7abef5', '52516de65ecc40e8805d44634dba2d0a', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('E9C2C7A6426B44B4A617DA17A4425838', '93ee0afd4cec4715ab70f36f7f7abef5', '220982fe254d4f0ba9fdcb79169fc12d', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('CD2315D85632412790F10EE5D52BE94F', '93ee0afd4cec4715ab70f36f7f7abef5', '82859943d03649b385ee8cfbb6cf769e', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5D6151BE8B8246D785A283C118CA51C7', '93ee0afd4cec4715ab70f36f7f7abef5', 'd4e7a1ff15f44b4ea7eb4cd927ad0c3f', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('DF534B9E00AA47B7B745D39EC20B91C4', '93ee0afd4cec4715ab70f36f7f7abef5', 'e800972831344310b6fb54ab1aa68ffc', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('327F89FD686B4E45BF0DFAC9916F8B49', '93ee0afd4cec4715ab70f36f7f7abef5', 'bea80617cc584957bb75edf857e0d0f4', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('01C452DA60A447759FB14C2762E51DDC', '93ee0afd4cec4715ab70f36f7f7abef5', 'affce957a50a4e95b6079bcd979f0601', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('87D32B36776D42649A656AFDA0F2E361', '93ee0afd4cec4715ab70f36f7f7abef5', '2582077526874dc8a3f2243f591da43e', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('920E5FB04D5F4D259D85F7E776CD3EB9', '93ee0afd4cec4715ab70f36f7f7abef5', 'd6f3fb3bc72d4cb7948a58a62746dc10', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5B1CED1C22D54301933EA97D099A8BA2', '93ee0afd4cec4715ab70f36f7f7abef5', 'd71de677a70b42d1a72439ea0753751f', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('8AA1122C898D4289BB4EB7A4EBE7A9E8', '93ee0afd4cec4715ab70f36f7f7abef5', '21deb3dfab1e45ebb5f25c90ca70fea7', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('E4DF67D3F68443DBB1841639B4683171', '93ee0afd4cec4715ab70f36f7f7abef5', '3b257f6df03f4935a67d79da9e0ec042', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('6A6B218FA05A4C6183896BF9E58BD4D6', '93ee0afd4cec4715ab70f36f7f7abef5', '03fc0b8823a249498a8c943b650d4053', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('095ADD7A1827437AAB0DA1304E4F0104', '93ee0afd4cec4715ab70f36f7f7abef5', '8284e0aa26584abc963ceb42c762aa0b', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('C5606632B6EC40D3B50D48599234208D', '93ee0afd4cec4715ab70f36f7f7abef5', '6b615229533f4f5883c8b050349e0eaf', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('45BCA809CC2E4476A7FF75D8B3165EF7', '93ee0afd4cec4715ab70f36f7f7abef5', 'dc7c77a0f80a422c846c20f39274423d', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('BCEF4C3A1295463ABD20B65616E740A4', '93ee0afd4cec4715ab70f36f7f7abef5', 'e34f7798f94643c390639453cc0031b7', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('BE0348A8F05C4E8293AA68AFEFB9A17A', '93ee0afd4cec4715ab70f36f7f7abef5', '9814fd6e6c774519a5a6140933683e27', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('B9E406E4C2B347BEB82DA4A24CD78D3D', '93ee0afd4cec4715ab70f36f7f7abef5', '7f6f71aced8a43029d1079bcfa0ed3c7', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('C25D49D6843E480E95BE62362BAED486', '93ee0afd4cec4715ab70f36f7f7abef5', 'eddac7c6c82a4364a39d781eb5d78f84', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('7EE30AF8DB9941D5B415AEC86B966485', '93ee0afd4cec4715ab70f36f7f7abef5', 'd7034b570d134c9b96d01c8917bbeb44', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('09E4EA5FC4C94CF49788A8A5C13DA30B', '93ee0afd4cec4715ab70f36f7f7abef5', '416f26375cab4df7adde980f37f1ab49', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('03807CFB63F741468FD8C149453FDE37', '93ee0afd4cec4715ab70f36f7f7abef5', '1cdefa3aea6549c2b8caaac5717b1f9e', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('6BBDF7BE096E42038E2E94070E98328A', '93ee0afd4cec4715ab70f36f7f7abef5', '1c3779d0e33f4df0b804439e90bcac05', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('63687286B2ED4A73831B0358B56BF92E', '93ee0afd4cec4715ab70f36f7f7abef5', 'dbb7ad3cd8224f0786dadb5c3e0de2c2', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('75B5C1DC56F74ADFBC59773841FCD5BC', '93ee0afd4cec4715ab70f36f7f7abef5', '6912c41a94a849cd8686d4e93150fa5d', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('B01729ABE650478D8AD54FAF8D6E140E', '93ee0afd4cec4715ab70f36f7f7abef5', '1', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('59DA8A4EA5E94C7AB3153CE743398892', '93ee0afd4cec4715ab70f36f7f7abef5', '41', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('036577D008BB4806A466551F713797F2', '93ee0afd4cec4715ab70f36f7f7abef5', '42', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('A815080E8825478C824BBBA899A07849', '93ee0afd4cec4715ab70f36f7f7abef5', '43', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('9DB32430DABD4C06AD9D9F1C00369976', '93ee0afd4cec4715ab70f36f7f7abef5', '44', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('2E4681C0A505481589C942DCAF5CCED6', '93ee0afd4cec4715ab70f36f7f7abef5', '45', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('7FF310FE208A48E8AD740FD064BC25BD', '93ee0afd4cec4715ab70f36f7f7abef5', '21', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('F8EEB6EC05C24C45BE3CD18923BD1D23', '93ee0afd4cec4715ab70f36f7f7abef5', '26', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('D591E55665964ACA80259C49F6BEBEF9', '93ee0afd4cec4715ab70f36f7f7abef5', '22', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('74A4346D153D4C53884647AFF5836B5E', '93ee0afd4cec4715ab70f36f7f7abef5', '23', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('837FEE9C1A084D3DAAF641D20FCDC1FE', '93ee0afd4cec4715ab70f36f7f7abef5', '25', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('A82F792823F444219508C0F718459A31', '93ee0afd4cec4715ab70f36f7f7abef5', '11', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('D1853E3974C8484A97361CC99FA2222A', '93ee0afd4cec4715ab70f36f7f7abef5', '12', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('B94B050076C848FAAF6738B2EB7093CC', '93ee0afd4cec4715ab70f36f7f7abef5', '13', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('94FD1C01C371486BAAD81B1DE87F7D3C', '93ee0afd4cec4715ab70f36f7f7abef5', '14', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5B392C3C49D247FCB86AF67ECF228AC3', '93ee0afd4cec4715ab70f36f7f7abef5', '15', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('03004ACAC9DF48DBB0694FB7DB700600', '93ee0afd4cec4715ab70f36f7f7abef5', '826ced0ad3e24eeaba7b4512510ad066', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('68539489FFA849F0943B461D35CA596C', '93ee0afd4cec4715ab70f36f7f7abef5', 'd0998bd50806424c938c97ece0072904', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('A0C8746A47F540AC8CC907C16AA649AF', '93ee0afd4cec4715ab70f36f7f7abef5', '51', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('C1721A6178CE47E885BB9279E9487ADC', '93ee0afd4cec4715ab70f36f7f7abef5', '52', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('ACCC144B870A4BC387112FE03F61D36F', '93ee0afd4cec4715ab70f36f7f7abef5', '54', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('FDE02FA29C5A48A89E4D4BE6B84587AB', '93ee0afd4cec4715ab70f36f7f7abef5', '2eaa31c439514382a7129619298305b0', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('EE9DCD755DB140A9BBB0AB9D64537F21', '93ee0afd4cec4715ab70f36f7f7abef5', '6435d6b7598d4c84bac5235e5178ff89', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('236C012A84F64BFB8EEA579488E564C2', '93ee0afd4cec4715ab70f36f7f7abef5', 'ea308de5513f48d0881191f265409fd2', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('98DDFB9233F047539760F7602A3F5B1F', '93ee0afd4cec4715ab70f36f7f7abef5', 'ce4f74a5ffbb4f10ab7f1971ee547d09', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('756FED0E006440CD8744B895679FD38A', '93ee0afd4cec4715ab70f36f7f7abef5', '115921b85eed4451b65124de9d56a8c2', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('7A50267C75FF4E97896FCEAE6DE46F99', '93ee0afd4cec4715ab70f36f7f7abef5', 'c7f4a4bbcf904799b124c455648e2efa', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('80D458714D7546C585653110EA2614AA', '93ee0afd4cec4715ab70f36f7f7abef5', 'dfd936672f2e469b99fb4c7f0e4b8a61', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('A96BD62BE4574BCF90317752D8BA0B91', '93ee0afd4cec4715ab70f36f7f7abef5', '0819e0dbda29439a834a752cfb65a25e', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('780F7AEDAC1A496B81F99506B0EC81B2', '93ee0afd4cec4715ab70f36f7f7abef5', 'e4f6957a42dc4b5ea69215283eedd1db', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('8A6B1DA07F93404DACAC290F694DE020', '93ee0afd4cec4715ab70f36f7f7abef5', '42772da70a0f411599ce7d0698854533', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('85CF68F3A1F8499DB7284C15B221DEC8', '93ee0afd4cec4715ab70f36f7f7abef5', '12c04aeca29c48918109d28e06340dec', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('4521C2A120F2440DBD8383758E29F4E6', '93ee0afd4cec4715ab70f36f7f7abef5', 'fb618104812643a0ac8062508120da9d', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('33227B6BB9B743A1A672CFAFC951BD4E', '93ee0afd4cec4715ab70f36f7f7abef5', '05e12ccabebc4f8fab487f81a19e510b', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5BC374B008D046A2A849AF8B39C42558', '93ee0afd4cec4715ab70f36f7f7abef5', 'ffb865765d14422fa5aaa2fde736e7ca', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('3EF1C9F1ACC8462E925BFB69094F400A', '93ee0afd4cec4715ab70f36f7f7abef5', '98b0b2d011154382b6f942993ec47b05', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('9555F54A9C0E4FAF99F70F26078D1227', '93ee0afd4cec4715ab70f36f7f7abef5', '24', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B268906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', '60', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B269906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', 'f50ab1e7927b486f8329597cbb602315', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B26A906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', '63', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('CDC6BC7ED6FE43F59FD9B1864B59E4C0', 'b1d8aaa9881c4ef883f99753858e55d3', '2eaa31c439514382a7129619298305b0', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('8B4F640BCB954AD29CC4C079F1463A94', 'b1d8aaa9881c4ef883f99753858e55d3', '6435d6b7598d4c84bac5235e5178ff89', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('D06FDA7426654F93BFC289A82B9E199C', 'b1d8aaa9881c4ef883f99753858e55d3', 'ea308de5513f48d0881191f265409fd2', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('A9BB2E1262FF4FF09F4816F9FF506B01', 'b1d8aaa9881c4ef883f99753858e55d3', 'acd8da23040540498502d31dfd4aca93', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('E5BE504E35D94ED7B8A2D39D59580669', 'b1d8aaa9881c4ef883f99753858e55d3', '1', '1', to_date('01-08-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B26B906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', '61', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('4FBCE5F2B33F4CEA8661D17E7A9996FA', '2bfa89493e1640ecad79627ce7824e76', '753548be5f0a41fab6fff6a0ed59729d', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('EED23A18A6C84704B0157AFE46B46AC4', '2bfa89493e1640ecad79627ce7824e76', '1', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('9746E49FA1E94E099CBD138DC3849F4B', '2bfa89493e1640ecad79627ce7824e76', '11', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('C9ABCA13D3E645D5BFAC886BA4EB69CD', '2bfa89493e1640ecad79627ce7824e76', '12', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('A431E6A898A14A28ABDEDDD6F02410D1', '2bfa89493e1640ecad79627ce7824e76', '13', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('95F6D7B3644C41A4A7BDE204F955E287', '2bfa89493e1640ecad79627ce7824e76', '14', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('647B7D1393F841F396DCE4F6DFDACDCF', '2bfa89493e1640ecad79627ce7824e76', '15', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('E8F8B1A3DCAC42FE9D5263800C09EB9F', '2bfa89493e1640ecad79627ce7824e76', '21', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('4B43E60373EB4EB6A1680BB1BCEBF6B8', '2bfa89493e1640ecad79627ce7824e76', '22', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('9346FE675EDA465B904B5FB83FFA875D', '2bfa89493e1640ecad79627ce7824e76', '23', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('EBB8AEB04A3D4661A09984451E750394', '2bfa89493e1640ecad79627ce7824e76', '24', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('B9F9AF4C7B664DCA906D33736853EDE9', '2bfa89493e1640ecad79627ce7824e76', '25', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('C4273C9B980547109E2B3FAFAE55A192', '2bfa89493e1640ecad79627ce7824e76', '26', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('21DBD6AD61494FAAAE976FED2BC0ADD3', '2bfa89493e1640ecad79627ce7824e76', '41', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('3E856E75211B4613BCFFC97552DCD059', '2bfa89493e1640ecad79627ce7824e76', '42', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('FA56ED7908DD467FB031DA1B71AC131A', '2bfa89493e1640ecad79627ce7824e76', '43', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('42318CFDB5F04F498BC6D8A7939CE3A1', '2bfa89493e1640ecad79627ce7824e76', '45', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('DD71C6DCA2874E79A32A0C44187943C0', '2bfa89493e1640ecad79627ce7824e76', '6fd723822b7b44fc85980591bcf6b9f6', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('E2A0F2271E89466F9121E87FE40CFDB8', '2bfa89493e1640ecad79627ce7824e76', '3fad6001510f4a3f8b3ca51b7961ffd5', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('167014ED4BC148C695D98BB430AA2007', '2bfa89493e1640ecad79627ce7824e76', '87aead81bbdf4cf29f5ffcbf5893f158', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('0AB776FAC1524DF78CC06D02FFFD05E9', '2bfa89493e1640ecad79627ce7824e76', '9fdca9b685dc4406862cec874f863f50', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('9B32EB0415A54496ABE61B432CC58F90', '2bfa89493e1640ecad79627ce7824e76', '533434ae508d4f03a31116f4c81ca5db', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('378DF14F593D43D2A570C354E65B7CAB', '2bfa89493e1640ecad79627ce7824e76', '60b1d2e0a693442e9621361f613441f2', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('492B0B0EB3A448C588190DCE58CBC829', '2bfa89493e1640ecad79627ce7824e76', '62f92ec221ac4461b12ed020c5de6698', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('AF299594FDF24EFEB3D68AED83C76469', '2bfa89493e1640ecad79627ce7824e76', '9d5edee2ab75405cbe31be7417ff33ce', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('4453FF55603F49EF8AF186381275F867', '2bfa89493e1640ecad79627ce7824e76', '475cc61ec69842f8a8beca9e7372c396', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('DBB6F879CF1C4F9998DAF6621404E845', '2bfa89493e1640ecad79627ce7824e76', 'db6f0ee52e9c4503bead61c2dc5762fd', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('0D1107BFAAA94892B250F94A93EB39A0', '2bfa89493e1640ecad79627ce7824e76', '6ab9ebf157634834ac786ed6a49eb3a2', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5D69B5F1FFC4403F830228D622631A60', '2bfa89493e1640ecad79627ce7824e76', '6ab9ebf157634834ac786ed6a49eb3b2', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('4E9D18EAE1204FFBBFA6EE57B234EEC6', '2bfa89493e1640ecad79627ce7824e76', 'bae5a19c647948f382d4291116082df1', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('34A6B7B16476467DA9EDC2566B03C655', '2bfa89493e1640ecad79627ce7824e76', '7040498cee6a4716b6531f21a6728116', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5FC20B60D924472B8F1480972C29FBF4', '2bfa89493e1640ecad79627ce7824e76', '36c267516969422a915094c63c6f6765', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('15CB9F7D5DB04A39A90C568998D73C20', '2bfa89493e1640ecad79627ce7824e76', 'e9700af90b5f4502b8438ea9c1d9847f', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('8231CA05B5F84277BC9281B0B0FB8D11', '2bfa89493e1640ecad79627ce7824e76', '563f9896b01e48569dd07a4489ae31e0', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('EFA76CE909A045E08DBF760DA0C208CC', '2bfa89493e1640ecad79627ce7824e76', 'f7c6db44a7ad4e44be21739d2e8a052d', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('374122C1E31F454EBD820771A182464D', '2bfa89493e1640ecad79627ce7824e76', 'b63dcc379d80438cb859a2d9ece6dd05', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('EB1E139C1F3D4B68BBEE95EF2D432ACF', '2bfa89493e1640ecad79627ce7824e76', '83756f828bc943febd7f31a0e344d216', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('0867CE67113E4EAFA1A46352D0D8527A', '2bfa89493e1640ecad79627ce7824e76', '5af7ef8afaed4cd0a0b78e0c3fcfece0', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('3BDF4B77385544D4AB1A38EA073F1F0F', '2bfa89493e1640ecad79627ce7824e76', 'de73af5c2e72474bb747ec4320f4530c', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('80C35F3F719B4EE7878910D3D03C342B', '2bfa89493e1640ecad79627ce7824e76', '1673218ecfae45e4b1c8b54a793a0f26', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('4CF9516E2D9B436E9CE541CB2AB6BE86', '2bfa89493e1640ecad79627ce7824e76', 'a719bd0393d344b19e8a84097777198d', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('93761E3DBDE243E3A279EEDC62F678CC', '2bfa89493e1640ecad79627ce7824e76', '1ca800179afe4897a01274886e0dba59', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('AA18A09988B74BAEB478A96D406DDE2B', '2bfa89493e1640ecad79627ce7824e76', '1a185fad87f644b0829effd7d9f97d5c', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5D4320FFE07D460390C841590882EABB', '2bfa89493e1640ecad79627ce7824e76', '6e20edd89f4e48ab8749ac5fab179938', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('EB1FDB10225042B9852DA817424DD7F9', '2bfa89493e1640ecad79627ce7824e76', '859edacf89914579bbc93aa09440d7ff', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('0AC875CEBE694C48BE5990735E5A8D55', '2bfa89493e1640ecad79627ce7824e76', '6272f24bb95d45dea22cc631c45a7734', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('906974EF670F4CE99043C13F24A54619', '2bfa89493e1640ecad79627ce7824e76', '01bd2831d4d6426aba75fb8dbd706514', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('43CD7100C3AB4A51851765E65B38E1F0', '2bfa89493e1640ecad79627ce7824e76', 'b5e20a4a14264f16a3bbbdd647677f1c', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('983D9BCF85644C5AAF50C9AA1229E1E7', '2bfa89493e1640ecad79627ce7824e76', '9e35f97cb7854909b476905982b4aa1d', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('2ED9BD06FBEC4DA8B75DCCA094031A0C', '2bfa89493e1640ecad79627ce7824e76', '66a68a39387d402683dbece4ff99deb6', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('1AADC3FBB9AD4F9888F3EEF683C5A76F', '2bfa89493e1640ecad79627ce7824e76', '8dd341f4ffb6499caa243561d414ae5c', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B273906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', '9d5edee2ab75405cbe31be7417ff33ce', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B274906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', '475cc61ec69842f8a8beca9e7372c396', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B275906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', 'db6f0ee52e9c4503bead61c2dc5762fd', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B276906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', '24d69602aa384d789782d05be42ef5ec', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B277906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', '6a1cca917e1b44fb999d43413a2b82c3', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B278906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', 'd4fdde054ae24a17af3939899433f320', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B279906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', 'f63181eda1b84a53ba9cd48973e2cee7', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B27A906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', '50', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B27B906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', 'e04642d08399468d9c6a74112b97bec1', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B27C906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', '53', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B27D906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', '104', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B27E906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', '105', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B27F906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', '106', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B280906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', '102', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B281906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', '103', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B282906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', '5c1734ea243f46c6a4b97d67573c2476', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B283906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', '53bdc3afa2824079a1b50ef26c80f40a', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B284906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', '4c479cc35a4d4b8b879b70d19af9fa20', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B285906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', 'b841b1f2e025428e82be649ba9eeb9b9', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B286906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', '85c889d2ca154c67888ab8ba6bfdf090', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B287906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', 'e8e27055e39a4eb285c73a14fef0b2e6', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B288906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', 'c182fb5e6b224b1b8c03b36ea2b88fd7', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B289906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', '24cb80ec1d3f415e9ba4831211ece108', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B28A906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', 'b5d7629db4a44f02877c3a11df49ad64', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B28B906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', 'd7fecad17e874ef2906e3f1c5731e4eb', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B28C906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', '95bafd5e5e6b42f2a4c8066f9d5354a8', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5E892E22B28D906CE050000D021F31A0', '0a6140a740e3491290486bba689ab210', '101', '1', to_date('23-11-2017', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('7903CDC4145F4B42A708F71A1C59E442', '2bfa89493e1640ecad79627ce7824e76', 'd0998bd50806424c938c97ece0072904', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('C4B376AB1A404AEA9F9B710AAB49795E', '2bfa89493e1640ecad79627ce7824e76', 'e04642d08399468d9c6a74112b97bec1', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('80251F7BA9514C16810583032CAE9F51', '2bfa89493e1640ecad79627ce7824e76', '826ced0ad3e24eeaba7b4512510ad066', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5DD1D236FF694BCD825CFC9B1E11FAEE', '2bfa89493e1640ecad79627ce7824e76', '54', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('6D38A53E2C6B40FCAF8573F0FF386BBE', '2bfa89493e1640ecad79627ce7824e76', 'b120822f46244b68bd053f395dcdd29a', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('628158A026C5458CA894516296456AE3', '2bfa89493e1640ecad79627ce7824e76', '60', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5BFC04B0888C48A3BC532A526C34AAFA', '2bfa89493e1640ecad79627ce7824e76', '61', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('B5E815D7E3CF4D76B2A9140C6DA2667B', '2bfa89493e1640ecad79627ce7824e76', '62', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('83D4EC435BA74B3A838D57512ABD3610', '2bfa89493e1640ecad79627ce7824e76', '63', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('ED2B01F9526F4CFCAB027A9A7AFD71A8', '2bfa89493e1640ecad79627ce7824e76', 'dc086c26d200469d890a51fb50ebc864', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('69007481B17643989BB443D5237AA7A0', '93ee0afd4cec4715ab70f36f7f7abef5', '753548be5f0a41fab6fff6a0ed59729d', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('EC593B040E9448CDA50622DCD2C30109', '93ee0afd4cec4715ab70f36f7f7abef5', 'b6ac1aa8c0db46bebdc79a8c36ea0e27', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('76C07BEB2711406D8FFF1BDE689C9ACE', '93ee0afd4cec4715ab70f36f7f7abef5', '970abc25417d4bf08570c48e68f6d6a7', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('988FA35769694655A0D9160F1BDAABEC', '93ee0afd4cec4715ab70f36f7f7abef5', '7040498cee6a4716b6531f21a6728116', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('B1896FC14305444AA58EC1D5032D4D53', '93ee0afd4cec4715ab70f36f7f7abef5', 'dd897a4aa991477ba63a3ad7750a6916', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('F3C05887200C4C63AD0C388FF5F799E2', '93ee0afd4cec4715ab70f36f7f7abef5', '859edacf89914579bbc93aa09440d7ff', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5F35B683C0714D958E3DAFAE3E4F911C', '93ee0afd4cec4715ab70f36f7f7abef5', 'b120822f46244b68bd053f395dcdd29a', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('64663497CE9641DA81D22A40C0E540F1', '93ee0afd4cec4715ab70f36f7f7abef5', '66a68a39387d402683dbece4ff99deb6', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('168085C03A6C4A8B9FADF3402F9D1C22', '93ee0afd4cec4715ab70f36f7f7abef5', '4f695b33f1b24fefa7cba842a2ff8dcf', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('AD84D53D2560463CA544D1643290CB5C', '93ee0afd4cec4715ab70f36f7f7abef5', '60', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('29D30D0C9A9546728A2B818472221778', '93ee0afd4cec4715ab70f36f7f7abef5', 'e04642d08399468d9c6a74112b97bec1', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('24FA047499414E439D2672BD70C16E31', '93ee0afd4cec4715ab70f36f7f7abef5', '7fe0fac31dbd4a429cf8763df32e2dd1', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B7A7BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '7040498cee6a4716b6531f21a6728116', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B7B7BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', 'b69722a101144c609556ae72fb0ad078', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B7C7BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '1a185fad87f644b0829effd7d9f97d5c', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B7D7BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '6e20edd89f4e48ab8749ac5fab179938', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B7E7BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '859edacf89914579bbc93aa09440d7ff', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B7F7BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '60', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B807BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', 'e04642d08399468d9c6a74112b97bec1', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B817BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '63', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B827BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '62', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B837BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '61', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B847BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '6fd723822b7b44fc85980591bcf6b9f6', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B857BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '3fad6001510f4a3f8b3ca51b7961ffd5', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B867BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '87aead81bbdf4cf29f5ffcbf5893f158', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B877BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '9fdca9b685dc4406862cec874f863f50', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B887BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '533434ae508d4f03a31116f4c81ca5db', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B897BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '60b1d2e0a693442e9621361f613441f2', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B8A7BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '62f92ec221ac4461b12ed020c5de6698', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B8B7BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '9d5edee2ab75405cbe31be7417ff33ce', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B8C7BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '475cc61ec69842f8a8beca9e7372c396', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B8D7BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '56b00a3c87cd4ff5ae56a364b40880c7', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B8E7BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '6ab9ebf157634834ac786ed6a49eb3e2', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B8F7BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '24d69602aa384d789782d05be42ef5ec', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B907BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', 'ad1ad08eca6e4ec6b8f3538be9fdfe20', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B917BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '514fc6fe9ed74c66b76df7a6a8167c82', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B927BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '99053ea4fbee4a0ca8cdfe32e719aef5', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B937BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '837e4a6b1d8247eebf0f0da40416bf6b', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B947BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '935ca56ea04843a6931a666405397410', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B957BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', 'b120822f46244b68bd053f395dcdd29a', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B967BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', 'b36796a4c920407b8aca60aab62bf5d1', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B977BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', 'e728ce44c03340b4b7c759df7fea1d04', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B987BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '1259e7257e4c4112ba14c17287b81863', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B997BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '50', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B9A7BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '102', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B9B7BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '103', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B9C7BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '101', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B9D7BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '104', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B9E7BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '105', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806B9F7BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '106', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806BA07BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '53', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806BA17BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '6a1cca917e1b44fb999d43413a2b82c3', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806BA27BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', 'f63181eda1b84a53ba9cd48973e2cee7', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806BA37BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '4594cfb32f924ea5a4726df96256296c', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806BA47BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '0e1f8da77a6940508c58b2321b0bd15c', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806BA57BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '8fcd92119acf4c638d1192402da1f772', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806BA67BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', 'afc9b286edd64ab0b3b2a83eddfd856c', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806BA77BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', 'c182fb5e6b224b1b8c03b36ea2b88fd7', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806BA87BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '24cb80ec1d3f415e9ba4831211ece108', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806BA97BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', 'b5d7629db4a44f02877c3a11df49ad64', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806BAA7BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', 'd7fecad17e874ef2906e3f1c5731e4eb', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806BAB7BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '95bafd5e5e6b42f2a4c8066f9d5354a8', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806BAC7BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', 'f50ab1e7927b486f8329597cbb602315', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806BAD7BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '00bd0260b4f44ed8964c85a612aa4237', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806BAE7BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', 'ace53e78f5ec45fd9d9ea181131e6ad1', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('644D60806BAF7BCAE053D4F8020D30FD', '176e35511fb949d2a3d64b0d3202b1ca', '3fafdb434ae54d6a87bf24cf96fc0809', '1', to_date('03-02-2018', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('CD354B9809CB46328F4FF52A747AA820', '93ee0afd4cec4715ab70f36f7f7abef5', 'db2bcd2a55eb436d8d8af7f577092a32', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('375E38F0691D4CE48B4696450879506C', '93ee0afd4cec4715ab70f36f7f7abef5', '8297d52fb5034b92bfe24c5bcca4ddd8', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('BB2535E868CC4E7EAA72E8CBC449335E', '93ee0afd4cec4715ab70f36f7f7abef5', 'f37362e4c5de432b82d58d16b05feb56', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('49B8CD2BA7994A4CB67E0503EFC09114', '93ee0afd4cec4715ab70f36f7f7abef5', '63', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('7067AC1E31B147738F79360E56FE1DB0', '93ee0afd4cec4715ab70f36f7f7abef5', '61', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('598FAF3F1A8E4B11832145AC8D48F2B5', '93ee0afd4cec4715ab70f36f7f7abef5', '62', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('60ED52D2E1624F2695596EC809E1A4DC', '93ee0afd4cec4715ab70f36f7f7abef5', '6fd723822b7b44fc85980591bcf6b9f6', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('CDA988B7AE284CE9A0ACE6A51C04795C', '93ee0afd4cec4715ab70f36f7f7abef5', '3fad6001510f4a3f8b3ca51b7961ffd5', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('65A4A413DF804D45AA5F11DE7E142820', '93ee0afd4cec4715ab70f36f7f7abef5', '9fdca9b685dc4406862cec874f863f50', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5054AC25CAC14420ABD64A76CCF88488', '93ee0afd4cec4715ab70f36f7f7abef5', '87aead81bbdf4cf29f5ffcbf5893f158', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('7AA0D2C8F43545CE9089FC0067B29206', '93ee0afd4cec4715ab70f36f7f7abef5', '2b1b8c3b7d7e485c9fef98cf225791ce', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('7F87992B61B14BC88433F0AD37F10F3B', '93ee0afd4cec4715ab70f36f7f7abef5', '48040fec0d7d4e33bdc7da13769fa1bc', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('AA89F96060CF4B098BA3F77BD996861C', '93ee0afd4cec4715ab70f36f7f7abef5', '6ab9ebf157634834ac786ed6a49eb3a2', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('872088AC7FFE4A13BE3BE6009739D045', '93ee0afd4cec4715ab70f36f7f7abef5', '6ab9ebf157634834ac786ed6a49eb3b2', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('594C212D7F754E038F9F0742DF784A22', '93ee0afd4cec4715ab70f36f7f7abef5', '24d69602aa384d789782d05be42ef5ec', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('178C95A1B63E4BF087B700E18632D108', '93ee0afd4cec4715ab70f36f7f7abef5', '50', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('8ABF94E5DB9B4875923DFAD711A979F9', '93ee0afd4cec4715ab70f36f7f7abef5', '102', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('2E435B6C8275481C929F8CA9964C19FF', '93ee0afd4cec4715ab70f36f7f7abef5', '103', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('1F1B830C94554BCDB289DD79904C16E1', '93ee0afd4cec4715ab70f36f7f7abef5', '101', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('14BF84D84F9B454DB5EC1FFBB1887337', '93ee0afd4cec4715ab70f36f7f7abef5', '104', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('D08E0FC79B954D9094FF87424B059CAC', '93ee0afd4cec4715ab70f36f7f7abef5', '106', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('0632D63FD2F9458A9A099DE118D92890', '93ee0afd4cec4715ab70f36f7f7abef5', '53', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('0DFEAE622F34489F839A2E9024DEE71A', '93ee0afd4cec4715ab70f36f7f7abef5', '4594cfb32f924ea5a4726df96256296c', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('D806E627FB63439797CE47B5C1883923', '93ee0afd4cec4715ab70f36f7f7abef5', '0e1f8da77a6940508c58b2321b0bd15c', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('85A7629F396143D4B62E233CBFC25674', '93ee0afd4cec4715ab70f36f7f7abef5', '8fcd92119acf4c638d1192402da1f772', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('F58E1F08E7DC437785CB4094402FD998', '93ee0afd4cec4715ab70f36f7f7abef5', 'afc9b286edd64ab0b3b2a83eddfd856c', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('55F299110FCB44F3B98C068F517A3EEB', '93ee0afd4cec4715ab70f36f7f7abef5', '1719504c1e224c73a295687a1116000b', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('71922385EE3A45718495E651C7A1D7CD', '93ee0afd4cec4715ab70f36f7f7abef5', '89f68f35f086490eafd8364e44225d8c', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('B5E6C20251C6467A90BD63069EE6F8B2', '93ee0afd4cec4715ab70f36f7f7abef5', '4622a93c902d492597730137be200f1f', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('A1C97BB401BA4EF3AD17DAF5B2CFB615', '93ee0afd4cec4715ab70f36f7f7abef5', '5af7ef8afaed4cd0a0b78e0c3fcfe123', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('D8CBF82DE2D64C35896AFF8823C56A37', '93ee0afd4cec4715ab70f36f7f7abef5', 'e1742cf9edf64538ab0a96d176b88dd9', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('F236C498B21E4AEDBB8AEB860A737997', '93ee0afd4cec4715ab70f36f7f7abef5', '09e93c84001e4839b03d04d46b1673a5', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('70C4D1B1710D4A65BF34628088B668F5', '93ee0afd4cec4715ab70f36f7f7abef5', '5af7ef8afaed4cd0a0b78e0c3fcfeaa4', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('92C99370F5584E3180E63177E9AC7903', '93ee0afd4cec4715ab70f36f7f7abef5', '5af7ef8afaed4cd0a0b78e0c3fcfeaa5', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('34E9693AAA9348BAAFBD3F41D26814A4', '93ee0afd4cec4715ab70f36f7f7abef5', '5af7ef8afaed4cd0a0b78e0c3fcfeaa6', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('2B455D0E41C4472CA8A797818CC58566', '93ee0afd4cec4715ab70f36f7f7abef5', 'c182fb5e6b224b1b8c03b36ea2b88fd7', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('AAA5E1D5D93941B0A5AEEB49C043B6F8', '93ee0afd4cec4715ab70f36f7f7abef5', '24cb80ec1d3f415e9ba4831211ece108', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('8416423DB2844131AAD71E8E64698522', '93ee0afd4cec4715ab70f36f7f7abef5', 'b5d7629db4a44f02877c3a11df49ad64', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('B3A950FD13254F089B05735BAD1C3C7A', '93ee0afd4cec4715ab70f36f7f7abef5', 'd7fecad17e874ef2906e3f1c5731e4eb', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('C68F4822CEB54C1DA7D73E6A37C77E8A', '93ee0afd4cec4715ab70f36f7f7abef5', '95bafd5e5e6b42f2a4c8066f9d5354a8', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('ABFF226528CB49A5AE160B94462259B0', '93ee0afd4cec4715ab70f36f7f7abef5', 'f50ab1e7927b486f8329597cbb602315', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('2445247B143648AC9B50938A7247471D', '93ee0afd4cec4715ab70f36f7f7abef5', '30569b62fc98493295f601fbe983647c', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('8C976748AA834EE6A3D3326D9CCC239A', '93ee0afd4cec4715ab70f36f7f7abef5', 'bae5a19c647948f382d4291116082df1', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('89ABECADF23342778C6FE33BBC8DC09E', '93ee0afd4cec4715ab70f36f7f7abef5', 'dc086c26d200469d890a51fb50ebc864', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('15850B33415C40AFB5EA2AD5497ED737', '93ee0afd4cec4715ab70f36f7f7abef5', '36c267516969422a915094c63c6f6765', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('9246739A408D49F69DC1C312B579A5F2', '93ee0afd4cec4715ab70f36f7f7abef5', 'e9700af90b5f4502b8438ea9c1d9847f', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('6BC3BB9B7E064C1CB9728BFCF4B32EBA', '93ee0afd4cec4715ab70f36f7f7abef5', '563f9896b01e48569dd07a4489ae31e0', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('3E8BEC1DA135401CAC2F624D6C8DA947', '93ee0afd4cec4715ab70f36f7f7abef5', 'f7c6db44a7ad4e44be21739d2e8a052d', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('29E493D0F0F044F3924CD7E9588B9C3C', '93ee0afd4cec4715ab70f36f7f7abef5', 'b63dcc379d80438cb859a2d9ece6dd05', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('B30DAC9CA132469BA79853FA0264A7B5', '93ee0afd4cec4715ab70f36f7f7abef5', 'f90079548c05457ab44df257fcfd509a', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('4384C2AF4DF14D88ACE10290122BFF9C', '93ee0afd4cec4715ab70f36f7f7abef5', '83756f828bc943febd7f31a0e344d216', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('C4EA59D23BEC41FC8A51B01940B30069', '93ee0afd4cec4715ab70f36f7f7abef5', '5af7ef8afaed4cd0a0b78e0c3fcfece0', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('9ACF4FB385D34510827D333559D242C3', '93ee0afd4cec4715ab70f36f7f7abef5', 'de73af5c2e72474bb747ec4320f4530c', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5155A9902E0D4DDBAF346F0058CDC35C', '93ee0afd4cec4715ab70f36f7f7abef5', '1673218ecfae45e4b1c8b54a793a0f26', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('A138C340F2FB4ADD82916B42995A5CD8', '93ee0afd4cec4715ab70f36f7f7abef5', '113f9e963d9a4638bb03dd03b5b4dd06', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('4CE1B4630489430B97E542C16E870C8B', '93ee0afd4cec4715ab70f36f7f7abef5', 'a719bd0393d344b19e8a84097777198d', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('3E53FB1A0CA849ABA5A8D7B8FEC585C2', '93ee0afd4cec4715ab70f36f7f7abef5', '1ca800179afe4897a01274886e0dba59', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('20D64B26EE1F4D0AAC4AE7428F203DC9', '93ee0afd4cec4715ab70f36f7f7abef5', '00bd0260b4f44ed8964c85a612aa4237', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('24F54B4AD3CB4B53BEABF2CDAD0F7682', '93ee0afd4cec4715ab70f36f7f7abef5', 'ace53e78f5ec45fd9d9ea181131e6ad1', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('3B9FC9FAD6BD420FA214DB69AF14195B', '93ee0afd4cec4715ab70f36f7f7abef5', 'b69722a101144c609556ae72fb0ad078', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('067D7B22879B4CF2AA82655BC0706A22', '93ee0afd4cec4715ab70f36f7f7abef5', 'a217cbc9f67344eb980492d11a8b08d1', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('9D982333F71C43B580FCD3C995C145C1', '93ee0afd4cec4715ab70f36f7f7abef5', 'a25f8bb8496e418ea36d2fdc9744afd8', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('C32DB85CDC6640AEBAD76EC73EBC3614', '93ee0afd4cec4715ab70f36f7f7abef5', '5d58727f0274463588e23e031640e7cb', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('A94E70F4A657401FB441B4540502E59C', '93ee0afd4cec4715ab70f36f7f7abef5', '2f1189781e6949c8836c8871938b8022', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('4100C5471FCE41C9AB864DAC93B343A8', '93ee0afd4cec4715ab70f36f7f7abef5', '0a3a898059fe4f8797daad491a858be0', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('A4E8840EB4584C94BE7A63221CF60907', '93ee0afd4cec4715ab70f36f7f7abef5', '2601913c7ebd4c55bc38fa5fbddbad73', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('4A5DB36C3C0D4C5F9E2AFFCEE22135CB', '93ee0afd4cec4715ab70f36f7f7abef5', 'ff2c8bfc3c9942fd9d89f1ede7d65bc4', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('7DFB05640A8446C48D0F061A712B571E', '5e813bb7e3fb4fac9cabf69f527a168b', '753548be5f0a41fab6fff6a0ed59729d', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('0D79092205954C198FEDA887C79DCD0D', '5e813bb7e3fb4fac9cabf69f527a168b', 'bffc63afc3194fdda5e0caf1774bcb9c', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('8E4FBDDA8A6A4B8F8795A0E728609BC2', '5e813bb7e3fb4fac9cabf69f527a168b', '970abc25417d4bf08570c48e68f6d6a7', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('3BD241DD57814AB79E3E6C65F5FBAF4F', '5e813bb7e3fb4fac9cabf69f527a168b', '7040498cee6a4716b6531f21a6728116', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('80B3D452D2A04A6E86046F2699EA7CBE', '5e813bb7e3fb4fac9cabf69f527a168b', 'dd897a4aa991477ba63a3ad7750a6916', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('63DDA939BF344589BDC03550CDB1154E', '5e813bb7e3fb4fac9cabf69f527a168b', '859edacf89914579bbc93aa09440d7ff', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('C31A51782C0E4B2CA010EAA6BAE28C80', '5e813bb7e3fb4fac9cabf69f527a168b', 'b120822f46244b68bd053f395dcdd29a', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('D333515592EE454E963734483C197483', '5e813bb7e3fb4fac9cabf69f527a168b', '66a68a39387d402683dbece4ff99deb6', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('E2C28BF68CF64E6C8792AA364DDC04E3', '5e813bb7e3fb4fac9cabf69f527a168b', '4f695b33f1b24fefa7cba842a2ff8dcf', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('E3FC0898BB5A4B3FB1E683DFC6EFCEDE', '5e813bb7e3fb4fac9cabf69f527a168b', '60', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('48B7E17B9ADA44A0B685DCFE14ADF66A', '5e813bb7e3fb4fac9cabf69f527a168b', 'e04642d08399468d9c6a74112b97bec1', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('14F3D8BB7E3646C4AFE98D6E92B69845', '5e813bb7e3fb4fac9cabf69f527a168b', '53', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('8BCFF1B7BE994ADEBF98EB238421A40B', '5e813bb7e3fb4fac9cabf69f527a168b', '61', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('0070550E683346E08F8B7991141E2682', '5e813bb7e3fb4fac9cabf69f527a168b', '62', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('0F4B9D4607B5480EA826DD2DBAF5ADF3', '5e813bb7e3fb4fac9cabf69f527a168b', '63', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('169FE069C8EF49BDB58DED4845BAEF01', '5e813bb7e3fb4fac9cabf69f527a168b', '6fd723822b7b44fc85980591bcf6b9f6', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('C2D064C70A5E496486779DD6CCFA51FC', '5e813bb7e3fb4fac9cabf69f527a168b', '3fad6001510f4a3f8b3ca51b7961ffd5', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('7A2C5E9FE9984C40B9A6EDB6EE86FFA1', '5e813bb7e3fb4fac9cabf69f527a168b', '9fdca9b685dc4406862cec874f863f50', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('452904D51A82459DBA1AC52FD9E0B940', '5e813bb7e3fb4fac9cabf69f527a168b', '87aead81bbdf4cf29f5ffcbf5893f158', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('20B17B3F35CD4813A97C699197B9135E', '5e813bb7e3fb4fac9cabf69f527a168b', '6ab9ebf157634834ac786ed6a49eb3a2', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('EDD5708DEAC14EC493BC329BCE78D2AD', '5e813bb7e3fb4fac9cabf69f527a168b', '6ab9ebf157634834ac786ed6a49eb3b2', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('2A08CE878B5749B9ABBE1A1928290EC4', '5e813bb7e3fb4fac9cabf69f527a168b', '24d69602aa384d789782d05be42ef5ec', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('BEEBCC3FED384A268A2FEAA727841CA3', '5e813bb7e3fb4fac9cabf69f527a168b', '50', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('AA9B7CF665204B098BDBA94A21459513', '5e813bb7e3fb4fac9cabf69f527a168b', '101', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('337F94AD754F4EE7A63C1E38E3ED30FD', '5e813bb7e3fb4fac9cabf69f527a168b', '102', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('7AF4E26C74FE44F9AB05EDC0A05F612A', '5e813bb7e3fb4fac9cabf69f527a168b', '103', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('F904E08863A84EC3BE955A4B7192F503', '5e813bb7e3fb4fac9cabf69f527a168b', '104', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('320F7FD374034A0A87B5B086FF6FD91E', '5e813bb7e3fb4fac9cabf69f527a168b', '106', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('3F672AC3E86542C7AE9D4D684125BA1F', '5e813bb7e3fb4fac9cabf69f527a168b', '4594cfb32f924ea5a4726df96256296c', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('6FA952B68B864CF8A33CA8B5D19D981D', '5e813bb7e3fb4fac9cabf69f527a168b', '0e1f8da77a6940508c58b2321b0bd15c', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('25B7FE8B56224A219BFA1F844F972AAB', '5e813bb7e3fb4fac9cabf69f527a168b', '8fcd92119acf4c638d1192402da1f772', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5723355832464388887D557BB737E7AE', '5e813bb7e3fb4fac9cabf69f527a168b', 'afc9b286edd64ab0b3b2a83eddfd856c', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('9D331150D2E64578BA0C9636569AC4B9', '5e813bb7e3fb4fac9cabf69f527a168b', '1719504c1e224c73a295687a1116000b', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('D28F0F4623E841698176B035350D3D01', '5e813bb7e3fb4fac9cabf69f527a168b', '89f68f35f086490eafd8364e44225d8c', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5705B1BE850542F393219456549D54B6', '5e813bb7e3fb4fac9cabf69f527a168b', '4622a93c902d492597730137be200f1f', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('47F1EFF7F54542978A87D85AE071FCBA', '5e813bb7e3fb4fac9cabf69f527a168b', '5af7ef8afaed4cd0a0b78e0c3fcfe123', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('49BDC6BAA4DD46C4AFF83D60EC873FEE', '5e813bb7e3fb4fac9cabf69f527a168b', 'e1742cf9edf64538ab0a96d176b88dd9', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('DC1C34022A2F413A9B9B909DB96A02AB', '5e813bb7e3fb4fac9cabf69f527a168b', '09e93c84001e4839b03d04d46b1673a5', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('2088B9668D374AF7859B60712A1F6459', '5e813bb7e3fb4fac9cabf69f527a168b', '5af7ef8afaed4cd0a0b78e0c3fcfeaa4', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('7BA8F44F38AF45C7B04CD4D98209D3BB', '5e813bb7e3fb4fac9cabf69f527a168b', '5af7ef8afaed4cd0a0b78e0c3fcfeaa5', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('97DE12056EBA41738D369AE5695DF587', '5e813bb7e3fb4fac9cabf69f527a168b', '5af7ef8afaed4cd0a0b78e0c3fcfeaa6', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('0053C2C507EB4A3FB65F6587338D4935', '5e813bb7e3fb4fac9cabf69f527a168b', 'c182fb5e6b224b1b8c03b36ea2b88fd7', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('2A99C3B166574FB9A17265DC115BA8B5', '5e813bb7e3fb4fac9cabf69f527a168b', '24cb80ec1d3f415e9ba4831211ece108', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('68F4BC3997A64CD6B8C05E3ACA9B5173', '5e813bb7e3fb4fac9cabf69f527a168b', 'b5d7629db4a44f02877c3a11df49ad64', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('B6DB7F6CC66F4409990D5D15A592D560', '5e813bb7e3fb4fac9cabf69f527a168b', 'd7fecad17e874ef2906e3f1c5731e4eb', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('19D82FF8637243F1BC3757FA0152A103', '5e813bb7e3fb4fac9cabf69f527a168b', '95bafd5e5e6b42f2a4c8066f9d5354a8', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('A1E83916F6BB41F4981CF78C53C20CCA', '5e813bb7e3fb4fac9cabf69f527a168b', 'f50ab1e7927b486f8329597cbb602315', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('49B1760FC4F54AE4A2FF96BBCB70D77C', '5e813bb7e3fb4fac9cabf69f527a168b', '30569b62fc98493295f601fbe983647c', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('6C7729E665C741DAA4356208EFD5966B', '5e813bb7e3fb4fac9cabf69f527a168b', 'bae5a19c647948f382d4291116082df1', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('6662C3994592470DB0B1642856EB55AC', '5e813bb7e3fb4fac9cabf69f527a168b', 'dc086c26d200469d890a51fb50ebc864', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('24B472FE2B454063A32D5DC347168E5E', '5e813bb7e3fb4fac9cabf69f527a168b', '36c267516969422a915094c63c6f6765', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('6B665FC23F5142EC80ECAF4B50DBC129', '5e813bb7e3fb4fac9cabf69f527a168b', 'e9700af90b5f4502b8438ea9c1d9847f', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('471A0528DE7247A3A46E71DFFCC1BAE0', '5e813bb7e3fb4fac9cabf69f527a168b', '563f9896b01e48569dd07a4489ae31e0', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('1683B297D96C43EAB66566E973941EEC', '5e813bb7e3fb4fac9cabf69f527a168b', 'f7c6db44a7ad4e44be21739d2e8a052d', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('6604D2B75FE042D79B476AC25C6B0606', '5e813bb7e3fb4fac9cabf69f527a168b', 'b63dcc379d80438cb859a2d9ece6dd05', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('2D452985E7BC4137810CDFDC006DE96B', '5e813bb7e3fb4fac9cabf69f527a168b', 'f90079548c05457ab44df257fcfd509a', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('F1C69AF73B374F588364FDD158BAB5DD', '5e813bb7e3fb4fac9cabf69f527a168b', '83756f828bc943febd7f31a0e344d216', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('50E0688F548345F39A23AC0CA1C96149', '5e813bb7e3fb4fac9cabf69f527a168b', '5af7ef8afaed4cd0a0b78e0c3fcfece0', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('0C15F45E0FFA4842808FBC3E9B29DCC2', '5e813bb7e3fb4fac9cabf69f527a168b', 'de73af5c2e72474bb747ec4320f4530c', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('12E1923CE4B74E70A5EF600AED6BB658', '5e813bb7e3fb4fac9cabf69f527a168b', '1673218ecfae45e4b1c8b54a793a0f26', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('6AB444650E074ECE95BD7EBE7C753865', '5e813bb7e3fb4fac9cabf69f527a168b', '113f9e963d9a4638bb03dd03b5b4dd06', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('1E1DFE0163834BBEAD7074FCFF3F3283', '5e813bb7e3fb4fac9cabf69f527a168b', 'a719bd0393d344b19e8a84097777198d', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('3AF2E987E64E4B26A43F9150EEB8418A', '5e813bb7e3fb4fac9cabf69f527a168b', '1ca800179afe4897a01274886e0dba59', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('A13E04F49BB240908C424A27C0FB4609', '5e813bb7e3fb4fac9cabf69f527a168b', '00bd0260b4f44ed8964c85a612aa4237', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('BFF21D53FDC44E708A39DFA31E8BAA10', '5e813bb7e3fb4fac9cabf69f527a168b', 'ace53e78f5ec45fd9d9ea181131e6ad1', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('E94394CA009849C4BD86B8116AACB31B', '5e813bb7e3fb4fac9cabf69f527a168b', 'b69722a101144c609556ae72fb0ad078', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('F31C41EE1076452094E11717ECB91548', '5e813bb7e3fb4fac9cabf69f527a168b', 'a217cbc9f67344eb980492d11a8b08d1', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('67FAFEA94DE540B488C1805F01AFE0B8', '5e813bb7e3fb4fac9cabf69f527a168b', '2f1189781e6949c8836c8871938b8022', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('34642695871449078D2AD6744755E92D', '5e813bb7e3fb4fac9cabf69f527a168b', '0a3a898059fe4f8797daad491a858be0', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('E4726EE581B24C2FA582540DC603ED18', '5e813bb7e3fb4fac9cabf69f527a168b', '2601913c7ebd4c55bc38fa5fbddbad73', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('E5553C99C2E8420A8001495FF6DC9011', '5e813bb7e3fb4fac9cabf69f527a168b', 'ff2c8bfc3c9942fd9d89f1ede7d65bc4', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('D8EA6F40D2D24AADB65F2DA36F614607', '5e813bb7e3fb4fac9cabf69f527a168b', 'd6d17baa627742058c2f54193000f093', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('F4AA214D308A4648B39ED11E9B2126ED', '5e813bb7e3fb4fac9cabf69f527a168b', '1a7390e58a6a4aa19f53deb451f1c5c6', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('BA131E05E7E344DCB4E1C60625BD7579', '5e813bb7e3fb4fac9cabf69f527a168b', '3173813d37ac4062979c72d8e036d486', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('4340773CB0954B61A991462F8D04F3C0', '5e813bb7e3fb4fac9cabf69f527a168b', '75c5c1a71b4e401aba1292e5f2d4a324', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('F0FB770ACE8D4E47B6A425CF325E7255', '5e813bb7e3fb4fac9cabf69f527a168b', '6fa743b14f524a3a93e2555fdba3e29b', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('F320588327364C129CF21483F9CA0291', '5e813bb7e3fb4fac9cabf69f527a168b', 'd4233b882756476cacb2476660246791', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('DC8F8C7352004339B5B7F4D655393BB8', '5e813bb7e3fb4fac9cabf69f527a168b', '8d5ec595fb0b4aed8228dbcc6dfe54b2', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('C518E25210194B5288F2B30FB6353FDA', '5e813bb7e3fb4fac9cabf69f527a168b', '98b0b2d011154382b6f942993ec47b05', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('C4B14A14C59D4706AF9A5746BB30513B', '5e813bb7e3fb4fac9cabf69f527a168b', 'f358aa232e79409a9768ce59ed1a7f31', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('818CBB64343E465099E2F4F18514813C', '5e813bb7e3fb4fac9cabf69f527a168b', '963a91e467c24e54aec2bf72567aef9e', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('4BB92821B0AB4FFDA1CD45406C84CC98', '5e813bb7e3fb4fac9cabf69f527a168b', 'ff6c101612ce4be5be30965dd69eedcc', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('DC55374083BA4B508397AA73273DD38E', '5e813bb7e3fb4fac9cabf69f527a168b', '6f58bce363e94c1f833f4669f8a52374', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('F9E2D80D4EF04C21B899180C911BE7BD', '5e813bb7e3fb4fac9cabf69f527a168b', '38297c4b7b004863ab70e9c46148fbb5', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('959FA135BABD455FA8B6A33B17055CA2', '5e813bb7e3fb4fac9cabf69f527a168b', '0d96ce50c39943eba25790e4e89fa27c', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('3E3860C9F4D2437F937390B105FAB48E', '5e813bb7e3fb4fac9cabf69f527a168b', 'b2758cf6644b4225810e0254d76bed71', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('A049FBEB92A948288420D738B28FC401', '5e813bb7e3fb4fac9cabf69f527a168b', '456ca86a4eb348fc80c997567624f1af', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('3781D64F04D34AFABA779D628EB21DF0', '5e813bb7e3fb4fac9cabf69f527a168b', '35011ea4ea2b4a2aa7cb3945df8500c0', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('94CFC448C7AA42328B57E50CFC0C2CE0', '5e813bb7e3fb4fac9cabf69f527a168b', 'c02ef9e2942a47e391eb8c6e01ca3d66', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('D1032523A9E14201B62AE6CBC313B5BC', '5e813bb7e3fb4fac9cabf69f527a168b', '53810534a12f45e5b7461009e1d0bf61', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('77E1040889F44E6D891CAAFB7A4C3B6E', '5e813bb7e3fb4fac9cabf69f527a168b', '2b357e2bb45d4b96ac52f5d38db541ca', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('F2F3EBA786204E0E8B74D3E777517FBA', '5e813bb7e3fb4fac9cabf69f527a168b', '1f99d575b13f4ede85b35804c04516da', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('E54950474F824A8AA81D3217445E0D62', '5e813bb7e3fb4fac9cabf69f527a168b', 'e87c128096ef445a90bc4e6610f9c5b4', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('1DAA1A0BDA974702A590C2E5D8EF60EC', '5e813bb7e3fb4fac9cabf69f527a168b', '6005e54b15b7433581484f7cea4d5a40', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('D9233B58E9CA480F8F53C9B8C4A6F350', '5e813bb7e3fb4fac9cabf69f527a168b', '95e253739f824e03b4a28809c0987353', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('1D0566C1353C4491A58BD9CF95F69480', '5e813bb7e3fb4fac9cabf69f527a168b', '5cabe5edd451455aab0210f461366d45', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('15C3D2B9D07742E98490CA7945CFA1FE', '5e813bb7e3fb4fac9cabf69f527a168b', '157e4368a27646ef8ff828c251dde1d9', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('23A21D4E82604E7CB9DD26DFF36E00B7', '5e813bb7e3fb4fac9cabf69f527a168b', '54d5cab097944c5cbbba6754a5c464f5', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('CAF28D0294664F7792CCBF740F0BD636', '5e813bb7e3fb4fac9cabf69f527a168b', 'c5e2fd1bae0647188a7a3b0e2a506e06', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('7E9A1C0255D34569BF76DE224BACAC31', '5e813bb7e3fb4fac9cabf69f527a168b', '5f3135422e9e4778978c28eeccb2d43f', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('124F066D9CE34641B97386967061579E', '5e813bb7e3fb4fac9cabf69f527a168b', 'ba0c7d2a35e6431f973e49bc552b02ee', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('2AA76278D5C34FD98C0A2E82583BF8AA', '5e813bb7e3fb4fac9cabf69f527a168b', '36382cb1df654910b74032b9bf147c20', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('435D9005BF6E407B9B8A85736E13F4C5', '5e813bb7e3fb4fac9cabf69f527a168b', '359d84592def4faf9ee04c51e3ea666f', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('EB8ACDEDB4494171A8EF8B07ED3DAB12', '5e813bb7e3fb4fac9cabf69f527a168b', '58c98cb823be4964ba2c6bc3ccecfd10', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('E884456873E540AF8538E7C228D85975', '5e813bb7e3fb4fac9cabf69f527a168b', '8fb84ac7e02941e498f7f9799822416c', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('2AD0DEA127F64FD6BAD78899EA1894AE', '5e813bb7e3fb4fac9cabf69f527a168b', '58abd59d19864761942716f82dd04234', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('C33AB4EB0D8043F6B2A394AB28A55365', '5e813bb7e3fb4fac9cabf69f527a168b', 'b24e101df7124330b381e094433c6314', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('1A0DEE26BDF7409AA12ED7580FF56981', '5e813bb7e3fb4fac9cabf69f527a168b', 'c1ee80478f2e4b3eb8aed12509855c5d', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('28D8543785844817ADE75A811ACD7C76', '5e813bb7e3fb4fac9cabf69f527a168b', 'df92f63cea6146179b180959adfd5f68', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('2751EE1859C04A0E9FEC1662B1F919B7', '5e813bb7e3fb4fac9cabf69f527a168b', '52516de65ecc40e8805d44634dba2d0a', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('09FBECBA6D4A44288A0516197DAD951E', '5e813bb7e3fb4fac9cabf69f527a168b', '220982fe254d4f0ba9fdcb79169fc12d', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('775FD032984040A1B9F7B77145317BB0', '5e813bb7e3fb4fac9cabf69f527a168b', '82859943d03649b385ee8cfbb6cf769e', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('6D502BBD03604E5E902E0A42604F061A', '5e813bb7e3fb4fac9cabf69f527a168b', 'd4e7a1ff15f44b4ea7eb4cd927ad0c3f', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('84EB62FA17364684A63FCBF2182AD89F', '5e813bb7e3fb4fac9cabf69f527a168b', 'e800972831344310b6fb54ab1aa68ffc', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('A961BEC66A9643E5AE3073ECAA600F74', '5e813bb7e3fb4fac9cabf69f527a168b', 'bea80617cc584957bb75edf857e0d0f4', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('81ED85A10D504BE5A94618D538237103', '5e813bb7e3fb4fac9cabf69f527a168b', 'affce957a50a4e95b6079bcd979f0601', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('AAC6EA3368314A6892AD128FA10FFC13', '5e813bb7e3fb4fac9cabf69f527a168b', '2582077526874dc8a3f2243f591da43e', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('3382653465464DF8B48C35F1A74E889C', '5e813bb7e3fb4fac9cabf69f527a168b', 'd6f3fb3bc72d4cb7948a58a62746dc10', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('A7F5C29771BF4599B02EE175A256E482', '5e813bb7e3fb4fac9cabf69f527a168b', 'd71de677a70b42d1a72439ea0753751f', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('AC5A57068FA84EA7BD69E697E49F27A1', '5e813bb7e3fb4fac9cabf69f527a168b', '21deb3dfab1e45ebb5f25c90ca70fea7', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('68724D3976534A0386EBB6A3820BD9D0', '5e813bb7e3fb4fac9cabf69f527a168b', '3b257f6df03f4935a67d79da9e0ec042', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('A8D0F5A494DD4F49824C72D68D87957E', '5e813bb7e3fb4fac9cabf69f527a168b', '03fc0b8823a249498a8c943b650d4053', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5B957A8B1B224E479C260A9F3D7A0CB6', '5e813bb7e3fb4fac9cabf69f527a168b', '8284e0aa26584abc963ceb42c762aa0b', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('CBD3D49ACBE24C5BA802360F99A29C9B', '5e813bb7e3fb4fac9cabf69f527a168b', '1ea0648a0e494daf9e93e5196e921235', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('92328D4D6B6D4E0CA4C675167F27F858', '5e813bb7e3fb4fac9cabf69f527a168b', '5716ff32081e4843aaefe6162391a80d', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('91946E26C7444CA1A123B4FD1455C24F', '5e813bb7e3fb4fac9cabf69f527a168b', '03471481b5194045a42dd2df69d705a7', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('69E246C3F70E4B35B40C363F9F5A7BF8', '5e813bb7e3fb4fac9cabf69f527a168b', 'bebadb5dcb2444d0a75331854256beeb', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('8C0BE90369904EECA464DD077EF6EAA5', '5e813bb7e3fb4fac9cabf69f527a168b', '0a0e69d83df5406b938a5636be744389', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5CF09A7665DA461D85D2305FF44E7061', '5e813bb7e3fb4fac9cabf69f527a168b', 'c4ecb3c49c864958bb3300ec30e8f0bb', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('E8E49F6732544F3390FACAE77B9113AD', '5e813bb7e3fb4fac9cabf69f527a168b', '5623c880665c4f90bd8bfc5c49da9e85', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('D2568D782A0A40409226CAB307902A43', '5e813bb7e3fb4fac9cabf69f527a168b', '88c8d86d55f74f1fb7a02e60c06492aa', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('A0C991F114DD4833B4BB6FE993875280', '5e813bb7e3fb4fac9cabf69f527a168b', '6b615229533f4f5883c8b050349e0eaf', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('4B4E196A805244F890B8F66FF49954DA', '5e813bb7e3fb4fac9cabf69f527a168b', 'dc7c77a0f80a422c846c20f39274423d', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5AC0BFD923BA407988A0CD6CBB5BF938', '5e813bb7e3fb4fac9cabf69f527a168b', 'e34f7798f94643c390639453cc0031b7', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('8C034B2032B84056B366B307A209DDF1', '5e813bb7e3fb4fac9cabf69f527a168b', '9814fd6e6c774519a5a6140933683e27', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('59E13A45E73D4B51A9C985D5E8374021', '5e813bb7e3fb4fac9cabf69f527a168b', '7f6f71aced8a43029d1079bcfa0ed3c7', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('8F7B8D28F8C745E1A488812336CDC1A2', '5e813bb7e3fb4fac9cabf69f527a168b', 'eddac7c6c82a4364a39d781eb5d78f84', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('850C258CACD5427BB640825EBBC4C8CD', '5e813bb7e3fb4fac9cabf69f527a168b', 'd7034b570d134c9b96d01c8917bbeb44', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('44E08D3FC42E49AFBB1B9D091078D6FD', '5e813bb7e3fb4fac9cabf69f527a168b', '416f26375cab4df7adde980f37f1ab49', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('FA565E39E126491294A59AC35640DD8B', '5e813bb7e3fb4fac9cabf69f527a168b', '1cdefa3aea6549c2b8caaac5717b1f9e', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('C8DFA27A227E44259B35B15129CB5F51', '5e813bb7e3fb4fac9cabf69f527a168b', '1c3779d0e33f4df0b804439e90bcac05', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('4B6730F9E7E64EEDAE9ED2E0E57D8563', '5e813bb7e3fb4fac9cabf69f527a168b', 'dbb7ad3cd8224f0786dadb5c3e0de2c2', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('55BBE62117744AC6B95690846BBAF031', '5e813bb7e3fb4fac9cabf69f527a168b', '6912c41a94a849cd8686d4e93150fa5d', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('55D8DD95ADA649F3A6F1A27C83A978AD', '5e813bb7e3fb4fac9cabf69f527a168b', '0f6a91052b654908ba1e0ae3eb366c4f', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('D6E6EFC0A9944893859E368AC8F4C8D2', '5e813bb7e3fb4fac9cabf69f527a168b', 'b8b7660a3ed5418da4566dda2d92e5fc', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('692500E784BA4907B327D6686BF33529', '57961d6e24ed43a1b82c9992026c7dfe', '753548be5f0a41fab6fff6a0ed59729d', '1', to_date('08-07-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('A616CD4CE62B42489924BCD8F378565C', '57961d6e24ed43a1b82c9992026c7dfe', 'bffc63afc3194fdda5e0caf1774bcb9c', '1', to_date('08-07-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('7A29154A8AA3404B8AFF1AC2E5DBF593', '57961d6e24ed43a1b82c9992026c7dfe', '970abc25417d4bf08570c48e68f6d6a7', '1', to_date('08-07-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('39236F0DB4FD4B9F892E3B5ED6784617', '57961d6e24ed43a1b82c9992026c7dfe', '7040498cee6a4716b6531f21a6728116', '1', to_date('08-07-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('EE5838849EC6484A8EDD2767AEE4CA02', '57961d6e24ed43a1b82c9992026c7dfe', 'dd897a4aa991477ba63a3ad7750a6916', '1', to_date('08-07-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('1E339F0A3C374CB0851C265C13ACDD43', '57961d6e24ed43a1b82c9992026c7dfe', '859edacf89914579bbc93aa09440d7ff', '1', to_date('08-07-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('E02D7A1AE42D49E0A15C0BEB26A0C4CD', '57961d6e24ed43a1b82c9992026c7dfe', '66a68a39387d402683dbece4ff99deb6', '1', to_date('08-07-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('0235C965F3A84339A0FECA127F61C3F7', '57961d6e24ed43a1b82c9992026c7dfe', '4f695b33f1b24fefa7cba842a2ff8dcf', '1', to_date('08-07-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('105A179450254F2EA65420BCEB2AA1E0', '57961d6e24ed43a1b82c9992026c7dfe', '60', '1', to_date('08-07-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('CAEBF84D30E84BC59079902036A9CCA6', '57961d6e24ed43a1b82c9992026c7dfe', 'e04642d08399468d9c6a74112b97bec1', '1', to_date('08-07-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('88EF62D26BF0421D90D416DF5AF83598', '57961d6e24ed43a1b82c9992026c7dfe', '61', '1', to_date('08-07-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('66F40E04121244ED860A5B8CBD4D3390', '57961d6e24ed43a1b82c9992026c7dfe', '62', '1', to_date('08-07-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5D4BAB5398DD4D01942F13151E6F8D5E', '57961d6e24ed43a1b82c9992026c7dfe', '63', '1', to_date('08-07-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('5B84203AD0B944DA89B3A39EEDBBDDD6', '57961d6e24ed43a1b82c9992026c7dfe', '6fd723822b7b44fc85980591bcf6b9f6', '1', to_date('08-07-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('772E18F8F3134A7899B4165940D14B29', '57961d6e24ed43a1b82c9992026c7dfe', '3fad6001510f4a3f8b3ca51b7961ffd5', '1', to_date('08-07-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('9B25D445D371458D9D89A5334347863E', '57961d6e24ed43a1b82c9992026c7dfe', '9fdca9b685dc4406862cec874f863f50', '1', to_date('08-07-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('A4EC62CF132A460B82C862B459FA2AA3', '57961d6e24ed43a1b82c9992026c7dfe', '87aead81bbdf4cf29f5ffcbf5893f158', '1', to_date('08-07-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('99113CAACCEC4246BE68204AD03F511B', '93ee0afd4cec4715ab70f36f7f7abef5', 'd6d17baa627742058c2f54193000f093', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('94B4CBE9F37A4280965F170A6FA27996', '93ee0afd4cec4715ab70f36f7f7abef5', '1a7390e58a6a4aa19f53deb451f1c5c6', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('6EAC3276C7894B8FAEFC82B7C98F1B9D', '93ee0afd4cec4715ab70f36f7f7abef5', '3173813d37ac4062979c72d8e036d486', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('1CB8F65B5DD04C9EBE71E969405B2B82', '93ee0afd4cec4715ab70f36f7f7abef5', '75c5c1a71b4e401aba1292e5f2d4a324', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('EA2D0F5B4F6443D99EB7AD1609342197', '93ee0afd4cec4715ab70f36f7f7abef5', '6fa743b14f524a3a93e2555fdba3e29b', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('3F640BC559004E2989AB5875E57A1EAF', '93ee0afd4cec4715ab70f36f7f7abef5', 'd4233b882756476cacb2476660246791', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('EB87C223DE1B43D891C6EA7198F0D16F', '93ee0afd4cec4715ab70f36f7f7abef5', '8d5ec595fb0b4aed8228dbcc6dfe54b2', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('C4676EB8B0B84B6295BCC08E8367D07C', '93ee0afd4cec4715ab70f36f7f7abef5', 'bffc63afc3194fdda5e0caf1774bcb9c', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('11524B9ECD9F45B8BE082D92782A3C36', '93ee0afd4cec4715ab70f36f7f7abef5', 'f358aa232e79409a9768ce59ed1a7f31', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('D79ECAA920C147B399E249A6C0FFFE75', '93ee0afd4cec4715ab70f36f7f7abef5', '963a91e467c24e54aec2bf72567aef9e', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('C99ABC68E8A3419F813906709C4F9A9B', '93ee0afd4cec4715ab70f36f7f7abef5', 'ff6c101612ce4be5be30965dd69eedcc', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('32613A4144914B7AA3B297242126EC63', '93ee0afd4cec4715ab70f36f7f7abef5', '6f58bce363e94c1f833f4669f8a52374', '1', to_date('08-08-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('864932ED795D4AD881F87677A3035B76', '5e813bb7e3fb4fac9cabf69f527a168b', '1', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('A567B40D4FC04EFC944FE54ACE586D25', '5e813bb7e3fb4fac9cabf69f527a168b', '21', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('35B0AC3801BD45E3A19BB852AD5110D1', '5e813bb7e3fb4fac9cabf69f527a168b', '22', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('F4A3A2276BF64F4BBC33C0453BB56E65', '5e813bb7e3fb4fac9cabf69f527a168b', '26', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('2AE92AD6FF0C4F0FBB4F8FB26CEACFEE', '5e813bb7e3fb4fac9cabf69f527a168b', '41', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('A52DF6F0D80A4C258B90F10EF0B50825', '5e813bb7e3fb4fac9cabf69f527a168b', '45', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('FA96DC164DBF4E3B81067BE6C6276327', '5e813bb7e3fb4fac9cabf69f527a168b', '51', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('A91C180E09F245D49C555BCC46703C5F', '5e813bb7e3fb4fac9cabf69f527a168b', '52', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('89F4C2C339D44D30849C7C1D432AB7EA', '5e813bb7e3fb4fac9cabf69f527a168b', '54', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('A334A15ABECC47469B8D787DE583A826', '5e813bb7e3fb4fac9cabf69f527a168b', '2eaa31c439514382a7129619298305b0', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('1C492AC82618410F9C37CEA2C0E1CD90', '5e813bb7e3fb4fac9cabf69f527a168b', 'ea308de5513f48d0881191f265409fd2', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('1DB3C898E15948988B626FE023E3DE59', '5e813bb7e3fb4fac9cabf69f527a168b', 'ce4f74a5ffbb4f10ab7f1971ee547d09', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
insert into SYS_PRIVILEGE_FOR_ROLE (privilege_for_role_id, role_id, resource_id, deal_user_id, last_update_time)
values ('493DB658ADF84C52B751794F13111BCB', '5e813bb7e3fb4fac9cabf69f527a168b', '115921b85eed4451b65124de9d56a8c2', '1', to_date('27-06-2019', 'dd-mm-yyyy'));
commit;
prompt 580 records loaded
prompt Loading SYS_RESOURCE...
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('220982fe254d4f0ba9fdcb79169fc12d', '动作删除', 0, null, 'glyphicon glyphicon-trash', null, 0, 1, 'c1ee80478f2e4b3eb8aed12509855c5d', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 3, 'emergency:action:cms:delete', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('a2a0fcc8c4bf4fecbf5a2be8b9c3fbe8', '路况概要列表', 1, '/alarm/outlineLogList', null, null, 1, 1, '60', '1', to_date('18-04-2018', 'dd-mm-yyyy'), 6, 'alarm:outlineLogList', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('1433768dcaee4923ac43ea6a39445fe8', '路况评分', 1, '/alarm/grade/list', null, null, 1, 1, '60', '1', to_date('09-05-2018', 'dd-mm-yyyy'), 9, 'alarm:grade', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('5f3135422e9e4778978c28eeccb2d43f', '向呼叫中心、出行网站发布信息', 1, '/plan/action/issue', null, null, 1, 1, '6f58bce363e94c1f833f4669f8a52374', '1', to_date('28-05-2018', 'dd-mm-yyyy'), 3, 'emergency:action:issues', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('8d5ec595fb0b4aed8228dbcc6dfe54b2', '预案步骤查看', 0, null, 'glyphicon glyphicon-zoom-in', null, 0, 1, 'd4233b882756476cacb2476660246791', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 1, 'emergency:plan:planManagement:setstep:view', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('9814fd6e6c774519a5a6140933683e27', '模板新增', 0, null, 'glyphicon glyphicon-plus', null, 0, 1, 'e34f7798f94643c390639453cc0031b7', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 1, 'emergency:tpl:create', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('7f6f71aced8a43029d1079bcfa0ed3c7', '模板修改', 0, null, 'glyphicon glyphicon-pencil', null, 0, 1, 'e34f7798f94643c390639453cc0031b7', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 2, 'emergency:tpl:update', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('eddac7c6c82a4364a39d781eb5d78f84', '模板删除', 0, null, 'glyphicon glyphicon-trash', null, 0, 1, 'e34f7798f94643c390639453cc0031b7', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 3, 'emergency:tpl:delete', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('d7034b570d134c9b96d01c8917bbeb44', '模板查看', 0, null, 'glyphicon glyphicon-zoom-in', null, 0, 1, 'e34f7798f94643c390639453cc0031b7', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 4, 'emergency:tpl:search', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('416f26375cab4df7adde980f37f1ab49', '模板查找', 0, null, 'glyphicon glyphicon-zoom-in', null, 0, 1, 'e34f7798f94643c390639453cc0031b7', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 5, 'emergency:tpl:view', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('1cdefa3aea6549c2b8caaac5717b1f9e', '模板导出', 0, null, 'glyphicon glyphicon-share', null, 0, 1, 'e34f7798f94643c390639453cc0031b7', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 6, 'emergency:tpl:export', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('dc7c77a0f80a422c846c20f39274423d', '投放大屏', 1, '/plan/action/scr', null, null, 1, 1, '6f58bce363e94c1f833f4669f8a52374', '1', to_date('27-08-2018', 'dd-mm-yyyy'), 8, 'emergency:action:scr:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('dc086c26d200469d890a51fb50ebc864', '服务区信息管理', 0, '/jkMsg/serviceZone', null, null, 1, 1, 'bae5a19c647948f382d4291116082df1', '1', to_date('27-08-2018', 'dd-mm-yyyy'), 1, 'jkMsg:serviceZone:view', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('f7c6db44a7ad4e44be21739d2e8a052d', '纸卡量信息管理', 0, '/jkMsg/paperCard', null, null, 1, 1, 'bae5a19c647948f382d4291116082df1', '1', to_date('27-08-2018', 'dd-mm-yyyy'), 1, 'jkMsg:paperCard:view', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('de73af5c2e72474bb747ec4320f4530c', '车流量信息管理', 0, '/jkMsg/flow', null, null, 1, 1, 'bae5a19c647948f382d4291116082df1', '1', to_date('27-08-2018', 'dd-mm-yyyy'), 2, 'jkMsg:flow:view', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('66a68a39387d402683dbece4ff99deb6', 'zw视频(每个角色选一个)', 0, null, null, null, 0, 1, '7040498cee6a4716b6531f21a6728116', '1', to_date('26-10-2018', 'dd-mm-yyyy'), 10, 'feature:zw:video', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('8dd341f4ffb6499caa243561d414ae5c', 'zw承赤', 0, 'zw::admin:123456', null, null, 0, 1, '66a68a39387d402683dbece4ff99deb6', '1', to_date('26-10-2018', 'dd-mm-yyyy'), 1, 'feature:zw:video1', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('746526dcd0cb479f90cfa6d5048f37a7', 'zw黄石', 0, 'zw::zwsh:userzw22', null, null, 0, 1, '66a68a39387d402683dbece4ff99deb6', '1', to_date('26-10-2018', 'dd-mm-yyyy'), 2, 'feature:zw:video2', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('1719504c1e224c73a295687a1116000b', '车辆出入口记录', 0, '/bay/serviceArea/normal', null, null, 1, 1, '4594cfb32f924ea5a4726df96256296c', '1', to_date('29-11-2018', 'dd-mm-yyyy'), 4, 'bay:serviceArea:normal:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('6d233a7b7fec4731937e224ffe22850c', '实时路况审核', 0, null, null, null, 0, 1, '6ab9ebf157634834ac786ed6a49eb3e2', '1', to_date('03-12-2018', 'dd-mm-yyyy'), 1, 'alarm:audit:deal', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('f2b9a89fcf6648f7b1926022dbeb1fd8', '路况短信', 0, null, null, null, 0, 1, '6ab9ebf157634834ac786ed6a49eb3e2', '1', to_date('03-12-2018', 'dd-mm-yyyy'), 2, 'alarm:audit:sms', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('9e9070e66a044a5daf264580dadf2a9d', '路况新增', 0, null, null, null, 0, 1, '6ab9ebf157634834ac786ed6a49eb3e2', '1', to_date('03-12-2018', 'dd-mm-yyyy'), 3, 'alarm:upload:create', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('89f68f35f086490eafd8364e44225d8c', '服务区停留车辆信息', 0, '/bay/serviceArea/stay', null, null, 1, 1, '4594cfb32f924ea5a4726df96256296c', '1', to_date('30-11-2018', 'dd-mm-yyyy'), 5, 'bay:serviceArea:stay:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('4622a93c902d492597730137be200f1f', '服务区异常车辆信息', 0, '/bay/serviceArea/abnormal', null, null, 1, 1, '4594cfb32f924ea5a4726df96256296c', '1', to_date('30-11-2018', 'dd-mm-yyyy'), 6, 'bay:serviceArea:abnormal:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('00a328e8f9354c4193979cd27336698a', '审核状态重置', 0, null, null, null, 0, 1, '6ab9ebf157634834ac786ed6a49eb3e2', '1', to_date('03-12-2018', 'dd-mm-yyyy'), 4, 'alarm:audit:dealReset', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('1', '系统管理', 1, null, 'glyphicon glyphicon-asterisk', null, 1, 1, '0', '1', to_date('22-03-2017', 'dd-mm-yyyy'), 12, 'feature:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('21', '用户管理', 1, '/user', 'glyphicon glyphicon-user', null, 1, 1, '1', '1', to_date('22-03-2017', 'dd-mm-yyyy'), 1, 'feature:user:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('22', '用户新增', 0, null, 'glyphicon glyphicon-plus', null, 0, 1, '21', '1', to_date('22-03-2017', 'dd-mm-yyyy'), 1, 'feature:user:create', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('23', '用户修改', 0, null, 'glyphicon glyphicon-pencil', null, 0, 1, '21', '1', to_date('22-03-2017', 'dd-mm-yyyy'), 1, 'feature:user:update', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('24', '用户删除', 0, null, 'glyphicon glyphicon-trash', null, 0, 1, '21', '1', to_date('22-03-2017', 'dd-mm-yyyy'), 1, 'feature:user:delete', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('25', '用户查看', 0, null, 'glyphicon glyphicon-zoom-in', null, 0, 1, '21', '1', to_date('22-03-2017', 'dd-mm-yyyy'), 1, 'feature:user:view', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('753548be5f0a41fab6fff6a0ed59729d', '路网监视', 0, null, 'glyphicon glyphicon-th', null, 1, 1, '0', '1', to_date('04-05-2017', 'dd-mm-yyyy'), 0, 'map:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('42', '角色新增', 0, null, 'glyphicon glyphicon-plus', null, 0, 1, '41', '1', to_date('22-03-2017', 'dd-mm-yyyy'), 1, 'feature:role:create', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('43', '角色修改', 0, null, 'glyphicon glyphicon-pencil', null, 0, 1, '41', '1', to_date('22-03-2017', 'dd-mm-yyyy'), 1, 'feature:role:update', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('44', '角色删除', 0, null, 'glyphicon glyphicon-trash', null, 0, 1, '41', '1', to_date('22-03-2017', 'dd-mm-yyyy'), 1, 'feature:role:delete', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('45', '角色查看', 0, null, 'glyphicon glyphicon-zoom-in', null, 0, 1, '41', '1', to_date('22-03-2017', 'dd-mm-yyyy'), 1, 'feature:role:view', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('11', '组织机构管理', 1, '/org', 'glyphicon glyphicon-list', '0/1/', 1, 1, '1', '1', to_date('22-03-2017', 'dd-mm-yyyy'), 3, 'feature:org:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('12', '组织机构新增', 0, null, 'glyphicon glyphicon-plus', '0/1/11/', 0, 1, '11', '1', to_date('22-03-2017', 'dd-mm-yyyy'), 1, 'feature:org:create', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('13', '组织机构修改', 0, null, 'glyphicon glyphicon-pencil', '0/1/11/', 0, 1, '11', '1', to_date('22-03-2017', 'dd-mm-yyyy'), 1, 'feature:org:update', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('14', '组织机构删除', 0, null, 'glyphicon glyphicon-trash', '0/1/11/', 0, 1, '11', '1', to_date('22-03-2017', 'dd-mm-yyyy'), 1, 'feature:org:delete', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('15', '组织机构查看', 0, null, 'glyphicon glyphicon-zoom-in', '0/1/11/', 0, 1, '11', '1', to_date('22-03-2017', 'dd-mm-yyyy'), 1, 'feature:org:view', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('51', '职务管理', 1, '/job', 'glyphicon glyphicon-tasks', null, 1, 1, '1', '1', to_date('22-03-2017', 'dd-mm-yyyy'), 3, 'feature:job:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('52', '职务列表', 0, null, 'glyphicon glyphicon-align-justify', null, 0, 1, '51', '1', to_date('22-03-2017', 'dd-mm-yyyy'), 0, 'feature:job:view', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('102', '车检实时状态', 1, '/report/vd/realList', 'fa fa-truck', null, 1, 1, '50', '1', to_date('11-04-2017', 'dd-mm-yyyy'), 1, 'microwave:real:status', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('103', '车检历史状态', 1, '/report/vd/historyList', 'glyphicon glyphicon-tasks', null, 1, 1, '50', '1', to_date('11-04-2017', 'dd-mm-yyyy'), 2, 'microwave:history:status', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('104', '车检历史数据', 1, '/report/vd/historyData', 'glyphicon glyphicon-list', null, 1, 1, '50', '1', to_date('22-03-2017', 'dd-mm-yyyy'), 4, 'report:vd:historydata', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('105', '路况动态监测', 1, '/bayroad', 'fa fa-search-plus', null, 1, 1, '50', '1', to_date('22-03-2017', 'dd-mm-yyyy'), 5, 'bayroad:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('106', '断面交通流报表', 1, '/report/vd/vdSum', 'glyphicon glyphicon-indent-right', null, 1, 1, '50', '1', to_date('22-03-2017', 'dd-mm-yyyy'), 6, 'report:vd:vdSum', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('62', '情报板总览', 1, '/cms/viewAll', 'glyphicon glyphicon-check', null, 1, 1, 'e04642d08399468d9c6a74112b97bec1', '1', to_date('11-04-2017', 'dd-mm-yyyy'), 2, 'cms:viewAll', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('db6f0ee52e9c4503bead61c2dc5762fd', '广播', 1, null, 'glyphicon glyphicon-volume-up', null, 1, 1, '60', '1', to_date('04-05-2017', 'dd-mm-yyyy'), 3, 'radio:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('e04642d08399468d9c6a74112b97bec1', '情报板', 1, null, 'glyphicon glyphicon-edit', null, 1, 1, '60', '1', to_date('04-05-2017', 'dd-mm-yyyy'), 1, 'cms:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('533434ae508d4f03a31116f4c81ca5db', '短信', 1, null, 'glyphicon glyphicon-envelope', null, 1, 1, '60', '1', to_date('04-05-2017', 'dd-mm-yyyy'), 2, 'sms:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('7040498cee6a4716b6531f21a6728116', '视频管理', 1, null, 'glyphicon glyphicon-facetime-video', null, 1, 1, '0', '1', to_date('04-05-2017', 'dd-mm-yyyy'), 1, 'feature:video:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('00bd0260b4f44ed8964c85a612aa4237', '事件监控', 1, null, 'glyphicon glyphicon-random', null, 1, 1, '0', '1', to_date('04-05-2017', 'dd-mm-yyyy'), 8, 'eventVideo:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('c182fb5e6b224b1b8c03b36ea2b88fd7', '气象信息', 1, null, 'wi-storm-showers', null, 1, 1, '0', '1', to_date('04-05-2017', 'dd-mm-yyyy'), 5, 'ws:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('bae5a19c647948f382d4291116082df1', '信息报送', 0, null, 'glyphicon glyphicon-qrcode', null, 1, 1, '0', '1', to_date('04-05-2017', 'dd-mm-yyyy'), 6, 'feature:video:event:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('2f1189781e6949c8836c8871938b8022', '应急处置', 1, null, 'glyphicon glyphicon-plus', null, 1, 1, '0', '1', to_date('04-05-2017', 'dd-mm-yyyy'), 9, 'emergency:dispose', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('0a3a898059fe4f8797daad491a858be0', '预案管理', 1, '/plan/planManagement', 'glyphicon glyphicon-plus-sign', null, 1, 1, '2f1189781e6949c8836c8871938b8022', '1', to_date('04-05-2017', 'dd-mm-yyyy'), 1, 'emergency:plan:planManagements', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('976465c160fa4011893e0753374abb99', '应急调度', 0, null, 'glyphicon glyphicon-minus-sign', null, 1, 1, '2f1189781e6949c8836c8871938b8022', '1', to_date('04-05-2017', 'dd-mm-yyyy'), 1, 'emergency:dispatch', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('b79a4ca850aa400bbd6b82c385403886', '应急资源', 0, null, 'glyphicon glyphicon-ok-sign', null, 1, 1, '2f1189781e6949c8836c8871938b8022', '1', to_date('04-05-2017', 'dd-mm-yyyy'), 1, 'emergency:resource', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('4213e722a20240be9c6bbc3cd618c69b', '应急演练', 0, null, 'glyphicon glyphicon-info-sign', null, 1, 1, '2f1189781e6949c8836c8871938b8022', '1', to_date('04-05-2017', 'dd-mm-yyyy'), 1, 'emergency:skits', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('24d69602aa384d789782d05be42ef5ec', '交通流量', 1, null, 'glyphicon glyphicon-signal', null, 1, 1, '0', '1', to_date('04-05-2017', 'dd-mm-yyyy'), 3, 'flowMonitor:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('6a1cca917e1b44fb999d43413a2b82c3', '收费站流量', 0, null, 'fa fa-rss', null, 1, 1, '24d69602aa384d789782d05be42ef5ec', '1', to_date('04-05-2017', 'dd-mm-yyyy'), 1, 'chargeFlow:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('f63181eda1b84a53ba9cd48973e2cee7', '收费识别点流量', 0, null, 'glyphicon glyphicon-stats', null, 1, 1, '24d69602aa384d789782d05be42ef5ec', '1', to_date('04-05-2017', 'dd-mm-yyyy'), 1, 'chargeFlow:identification', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('0f6a91052b654908ba1e0ae3eb366c4f', '统计分析', 0, null, 'glyphicon glyphicon-th', null, 1, 1, '0', '1', to_date('04-05-2017', 'dd-mm-yyyy'), 10, 'reportAnalyze:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('b8b7660a3ed5418da4566dda2d92e5fc', '隧道', 0, null, 'glyphicon glyphicon-warning-sign', null, 1, 1, '0', '1', to_date('04-05-2017', 'dd-mm-yyyy'), 11, 'subway:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('9e5f4e9d608449a888a3009159fe02bc', '树状管理', 0, '/road/tree', null, null, 1, 1, 'e58dbff2abdd44c5ada21f72fef4e54b', '1', to_date('25-05-2017', 'dd-mm-yyyy'), 2, 'feature:roadNet:view', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('b69722a101144c609556ae72fb0ad078', '系统报警', 1, '/sysAlarm', null, null, 1, 1, '00bd0260b4f44ed8964c85a612aa4237', '1', to_date('13-06-2017', 'dd-mm-yyyy'), 2, 'feature:sysAlarm:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('51d1f6a6c4614daa9f73094cd38a2b11', '列表管理', 0, '/road', null, null, 1, 1, 'e58dbff2abdd44c5ada21f72fef4e54b', '1', to_date('25-05-2017', 'dd-mm-yyyy'), 1, 'feature:roadNet:view', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('60b1d2e0a693442e9621361f613441f2', '组成员管理', 0, '/sms/userGroup', null, null, 1, 1, '533434ae508d4f03a31116f4c81ca5db', '1', to_date('08-06-2017', 'dd-mm-yyyy'), 1, 'sms:userGroup', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('62f92ec221ac4461b12ed020c5de6698', '分组管理', 0, '/sms/group', null, null, 1, 1, '533434ae508d4f03a31116f4c81ca5db', '1', to_date('08-06-2017', 'dd-mm-yyyy'), 2, 'sms:group', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('475cc61ec69842f8a8beca9e7372c396', '发送短信', 0, '/sms/order/create', null, null, 1, 1, '533434ae508d4f03a31116f4c81ca5db', '1', to_date('21-06-2017', 'dd-mm-yyyy'), 4, 'sms:create', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('5c1734ea243f46c6a4b97d67573c2476', '交调', 1, null, 'glyphicon glyphicon-th-large', null, 1, 1, '0', '1', to_date('18-07-2017', 'dd-mm-yyyy'), 4, 'rd:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('53bdc3afa2824079a1b50ef26c80f40a', '交调设备基本信息', 0, '/rd/device', null, null, 1, 1, '5c1734ea243f46c6a4b97d67573c2476', '1', to_date('18-07-2017', 'dd-mm-yyyy'), 1, 'rd:profile', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('56b00a3c87cd4ff5ae56a364b40880c7', '路况管理信息', 0, '/alarm', 'fa fa-road', null, 1, 1, '60', '1', to_date('05-09-2017', 'dd-mm-yyyy'), 4, 'alarm:list', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('6ab9ebf157634834ac786ed6a49eb3e2', '实时路况', 0, '/alarm/listView', null, null, 1, 1, '60', '1', to_date('07-09-2017', 'dd-mm-yyyy'), 5, 'alarm:listView', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('826ced0ad3e24eeaba7b4512510ad066', '组织机构列表管理', 0, '/org/list', null, null, 1, 1, '11', '1', to_date('15-08-2017', 'dd-mm-yyyy'), 1, 'feature:org:list:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('9fdca9b685dc4406862cec874f863f50', '情报板历史数据', 0, '/cms/history', null, null, 1, 1, 'e04642d08399468d9c6a74112b97bec1', '1', to_date('25-08-2017', 'dd-mm-yyyy'), 6, 'cms:historydata', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('d0998bd50806424c938c97ece0072904', '组织机构树状管理', 0, '/org', null, null, 1, 1, '11', '1', to_date('15-08-2017', 'dd-mm-yyyy'), 1, 'feature:org:tree', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('4594cfb32f924ea5a4726df96256296c', '服务区车牌识别', 1, null, 'fa fa-rss-square', null, 1, 1, '24d69602aa384d789782d05be42ef5ec', '1', to_date('01-09-2017', 'dd-mm-yyyy'), 2, 'bay:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('8fcd92119acf4c638d1192402da1f772', '车牌识别实时抓拍信息', 0, '/bayFlow', 'fa fa-rss-square', null, 1, 1, '4594cfb32f924ea5a4726df96256296c', '1', to_date('01-09-2017', 'dd-mm-yyyy'), 2, 'bay:real:flow', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('0e1f8da77a6940508c58b2321b0bd15c', '车牌识别设备基本信息', 0, '/bay/profile', 'glyphicon glyphicon-th', null, 1, 1, '4594cfb32f924ea5a4726df96256296c', '1', to_date('01-09-2017', 'dd-mm-yyyy'), 1, 'bay:profile', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('6272f24bb95d45dea22cc631c45a7734', '位置信息', 0, '/video/position', null, null, 1, 1, '7040498cee6a4716b6531f21a6728116', '1', to_date('01-11-2017', 'dd-mm-yyyy'), 5, 'feature:video:profile:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('ad1ad08eca6e4ec6b8f3538be9fdfe20', '大屏数据展示', 0, null, 'glyphicon glyphicon-stats', null, 1, 1, '24d69602aa384d789782d05be42ef5ec', '1', to_date('26-01-2018', 'dd-mm-yyyy'), 1, 'dataExpression:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('935ca56ea04843a6931a666405397410', '高速流量数据总览', 1, 'http://13.0.0.222:8080/screen/static/page1.html', null, null, 1, 1, 'ad1ad08eca6e4ec6b8f3538be9fdfe20', '1', to_date('26-01-2018', 'dd-mm-yyyy'), 1, 'dataExpression:Highwayflow', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('837e4a6b1d8247eebf0f0da40416bf6b', '省际流量监控', 1, 'http://13.0.0.222:8080/screen/static/page4.html', null, null, 1, 1, 'ad1ad08eca6e4ec6b8f3538be9fdfe20', '1', to_date('26-01-2018', 'dd-mm-yyyy'), 1, 'dataExpression:Provincialflow', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('99053ea4fbee4a0ca8cdfe32e719aef5', '省内迁徙图', 1, 'http://13.0.0.222:8080/screen/static/page5.html', null, null, 1, 1, 'ad1ad08eca6e4ec6b8f3538be9fdfe20', '1', to_date('26-01-2018', 'dd-mm-yyyy'), 1, 'dataExpression:ProvMigrate', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('514fc6fe9ed74c66b76df7a6a8167c82', '高速收费数据总览', 1, 'http://13.0.0.222:8080/screen/static/page6.html', null, null, 1, 1, 'ad1ad08eca6e4ec6b8f3538be9fdfe20', '1', to_date('26-01-2018', 'dd-mm-yyyy'), 1, 'dataExpression:charge', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('b36796a4c920407b8aca60aab62bf5d1', '全省收费站热力图', 1, 'http://13.0.0.222:8080/screen/static/page7.html', null, null, 1, 1, 'ad1ad08eca6e4ec6b8f3538be9fdfe20', '1', to_date('26-01-2018', 'dd-mm-yyyy'), 1, 'dataExpression:chargeHeatingPower', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('1259e7257e4c4112ba14c17287b81863', '车流量与收费金额', 1, 'http://13.0.0.222:8080/screen/static/page8.html', null, null, 1, 1, 'ad1ad08eca6e4ec6b8f3538be9fdfe20', '1', to_date('26-01-2018', 'dd-mm-yyyy'), 3, 'dataExpression:flowTotal', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('3fafdb434ae54d6a87bf24cf96fc0809', '出行网信息', 1, 'http://13.0.0.222:8080/screen/static/page10.html', null, null, 1, 1, 'ad1ad08eca6e4ec6b8f3538be9fdfe20', '1', to_date('26-01-2018', 'dd-mm-yyyy'), 1, 'dataExpression:tripMessage', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('afc9b286edd64ab0b3b2a83eddfd856c', '车牌识别统计报表', 0, '/bayFlow/getCharts', null, null, 1, 1, '4594cfb32f924ea5a4726df96256296c', '1', to_date('01-02-2018', 'dd-mm-yyyy'), 3, 'bay:baySum', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('e728ce44c03340b4b7c759df7fea1d04', '96122出行服务', 1, 'http://13.0.0.222:8080/screen/static/page9.html', null, null, 1, 1, 'ad1ad08eca6e4ec6b8f3538be9fdfe20', '1', to_date('26-01-2018', 'dd-mm-yyyy'), 2, 'dataExpression:tripService', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('38297c4b7b004863ab70e9c46148fbb5', '向雾区诱导单元发送控制信息', 1, '/plan/action/fog', 'glyphicon glyphicon-plus-sign', null, 1, 1, '6f58bce363e94c1f833f4669f8a52374', '1', to_date('22-05-2018', 'dd-mm-yyyy'), 1, 'emergency:action:fogs', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('6f58bce363e94c1f833f4669f8a52374', '动作管理', 1, null, null, null, 1, 1, '2f1189781e6949c8836c8871938b8022', '1', to_date('22-05-2018', 'dd-mm-yyyy'), 5, 'emergency:actions', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('1f99d575b13f4ede85b35804c04516da', '向服务区发布信息', 1, '/plan/action/servicesta', null, null, 1, 1, '6f58bce363e94c1f833f4669f8a52374', '1', to_date('23-05-2018', 'dd-mm-yyyy'), 2, 'emergency:action:servicestas', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('c1ee80478f2e4b3eb8aed12509855c5d', '通过情报板发布交通控制信息', 1, '/plan/action/cms', null, null, 1, 1, '6f58bce363e94c1f833f4669f8a52374', '1', to_date('28-05-2018', 'dd-mm-yyyy'), 4, 'emergency:action:cmss', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('b5e20a4a14264f16a3bbbdd647677f1c', '轮询管理', 1, '/video/plan', null, null, 1, 1, '7040498cee6a4716b6531f21a6728116', '1', to_date('29-05-2018', 'dd-mm-yyyy'), 7, 'feature:video:plan', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('affce957a50a4e95b6079bcd979f0601', '向收费站发布车道控制信息', 1, '/plan/action/toll', null, null, 1, 1, '6f58bce363e94c1f833f4669f8a52374', '1', to_date('29-05-2018', 'dd-mm-yyyy'), 5, 'emergency:action:tolls', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('e34f7798f94643c390639453cc0031b7', '事件信息模板管理', 1, '/plan/tpl', null, null, 1, 1, '2f1189781e6949c8836c8871938b8022', '1', to_date('31-05-2018', 'dd-mm-yyyy'), 6, 'emergency:tpls', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('2601913c7ebd4c55bc38fa5fbddbad73', '预案新增', 0, null, 'glyphicon glyphicon-plus', null, 0, 1, '0a3a898059fe4f8797daad491a858be0', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 1, 'emergency:plan:planManagement:create', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('ff2c8bfc3c9942fd9d89f1ede7d65bc4', '预案修改', 0, null, 'glyphicon glyphicon-pencil', null, 0, 1, '0a3a898059fe4f8797daad491a858be0', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 2, 'emergency:plan:planManagement:update', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('d6d17baa627742058c2f54193000f093', '预案删除', 0, null, 'glyphicon glyphicon-trash', null, 0, 1, '0a3a898059fe4f8797daad491a858be0', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 3, 'emergency:plan:planManagement:delete', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('1a7390e58a6a4aa19f53deb451f1c5c6', '预案查看', 0, null, 'glyphicon glyphicon-zoom-in', null, 0, 1, '0a3a898059fe4f8797daad491a858be0', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 4, 'emergency:plan:planManagement:search', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('3173813d37ac4062979c72d8e036d486', '预案查找', 0, null, 'glyphicon glyphicon-zoom-in', null, 0, 1, '0a3a898059fe4f8797daad491a858be0', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 5, 'emergency:plan:planManagement:view', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('d4233b882756476cacb2476660246791', '预案步骤管理', 0, null, 'glyphicon glyphicon-asterisk', null, 0, 1, '0a3a898059fe4f8797daad491a858be0', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 8, 'emergency:plan:planManagement:setsteps', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('f358aa232e79409a9768ce59ed1a7f31', '预案步骤修改', 0, null, 'glyphicon glyphicon-pencil', null, 0, 1, 'd4233b882756476cacb2476660246791', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 3, 'emergency:plan:planManagement:setstep:update', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('c7f4a4bbcf904799b124c455648e2efa', '刷新参数', 0, null, null, null, 0, 1, 'ea308de5513f48d0881191f265409fd2', '1', to_date('13-05-2019 15:48:00', 'dd-mm-yyyy hh24:mi:ss'), 9, 'sysparam:refresh', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('98b0b2d011154382b6f942993ec47b05', '预案步骤新增', 0, null, 'glyphicon glyphicon-asterisk', null, 0, 1, 'd4233b882756476cacb2476660246791', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 2, 'emergency:plan:planManagement:setstep:creat', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('ff6c101612ce4be5be30965dd69eedcc', '预案步骤动作设置', 0, null, 'glyphicon glyphicon-asterisk', null, 0, 1, 'd4233b882756476cacb2476660246791', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 5, 'emergency:plan:planManagement:setstep:action', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('963a91e467c24e54aec2bf72567aef9e', '预案步骤删除', 0, null, 'glyphicon glyphicon-trash', null, 0, 1, 'd4233b882756476cacb2476660246791', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 4, 'emergency:plan:planManagement:setstep:delete', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('0d96ce50c39943eba25790e4e89fa27c', '动作新增', 0, null, 'glyphicon glyphicon-plus', null, 0, 1, '38297c4b7b004863ab70e9c46148fbb5', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 1, 'emergency:action:fog:create', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('b2758cf6644b4225810e0254d76bed71', '动作修改', 0, null, 'glyphicon glyphicon-pencil', null, 0, 1, '38297c4b7b004863ab70e9c46148fbb5', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 2, 'emergency:action:fog:update', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('456ca86a4eb348fc80c997567624f1af', '动作删除', 0, null, 'glyphicon glyphicon-trash', null, 0, 1, '38297c4b7b004863ab70e9c46148fbb5', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 3, 'emergency:action:fog:delete', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('35011ea4ea2b4a2aa7cb3945df8500c0', '动作查看', 0, null, 'glyphicon glyphicon-zoom-in', null, 0, 1, '38297c4b7b004863ab70e9c46148fbb5', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 4, 'emergency:action:fog:search', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('c02ef9e2942a47e391eb8c6e01ca3d66', '动作查找', 0, null, 'glyphicon glyphicon-zoom-in', null, 0, 1, '38297c4b7b004863ab70e9c46148fbb5', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 5, 'emergency:action:fog:view', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('53810534a12f45e5b7461009e1d0bf61', '动作导出', 0, null, 'glyphicon glyphicon-share', null, 0, 1, '38297c4b7b004863ab70e9c46148fbb5', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 6, 'emergency:action:fog:export', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('e87c128096ef445a90bc4e6610f9c5b4', '动作新增', 0, null, 'glyphicon glyphicon-plus', null, 0, 1, '1f99d575b13f4ede85b35804c04516da', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 1, 'emergency:action:servicesta:create', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('6005e54b15b7433581484f7cea4d5a40', '动作修改', 0, null, 'glyphicon glyphicon-pencil', null, 0, 1, '1f99d575b13f4ede85b35804c04516da', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 2, 'emergency:action:servicesta:update', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('95e253739f824e03b4a28809c0987353', '动作删除', 0, null, 'glyphicon glyphicon-trash', null, 0, 1, '1f99d575b13f4ede85b35804c04516da', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 3, 'emergency:action:servicesta:delete', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('5cabe5edd451455aab0210f461366d45', '动作查看', 0, null, 'glyphicon glyphicon-zoom-in', null, 0, 1, '1f99d575b13f4ede85b35804c04516da', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 4, 'emergency:action:servicesta:search', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('157e4368a27646ef8ff828c251dde1d9', '动作查找', 0, null, 'glyphicon glyphicon-zoom-in', null, 0, 1, '1f99d575b13f4ede85b35804c04516da', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 5, 'emergency:action:servicesta:view', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('54d5cab097944c5cbbba6754a5c464f5', '动作导出', 0, null, 'glyphicon glyphicon-share', null, 0, 1, '1f99d575b13f4ede85b35804c04516da', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 6, 'emergency:action:servicesta:export', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('ba0c7d2a35e6431f973e49bc552b02ee', '动作新增', 0, null, 'glyphicon glyphicon-plus', null, 0, 1, '5f3135422e9e4778978c28eeccb2d43f', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 1, 'emergency:action:issue:create', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('36382cb1df654910b74032b9bf147c20', '动作修改', 0, null, 'glyphicon glyphicon-pencil', null, 0, 1, '5f3135422e9e4778978c28eeccb2d43f', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 2, 'emergency:action:issue:update', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('359d84592def4faf9ee04c51e3ea666f', '动作删除', 0, null, 'glyphicon glyphicon-trash', null, 0, 1, '5f3135422e9e4778978c28eeccb2d43f', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 3, 'emergency:action:issue:delete', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('58c98cb823be4964ba2c6bc3ccecfd10', '动作查看', 0, null, 'glyphicon glyphicon-zoom-in', null, 0, 1, '5f3135422e9e4778978c28eeccb2d43f', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 4, 'emergency:action:issue:search', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('8fb84ac7e02941e498f7f9799822416c', '动作查找', 0, null, 'glyphicon glyphicon-zoom-in', null, 0, 1, '5f3135422e9e4778978c28eeccb2d43f', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 5, 'emergency:action:issue:view', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('58abd59d19864761942716f82dd04234', '动作导出', 0, null, 'glyphicon glyphicon-share', null, 0, 1, '5f3135422e9e4778978c28eeccb2d43f', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 6, 'emergency:action:issue:export', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('df92f63cea6146179b180959adfd5f68', '动作新增', 0, null, 'glyphicon glyphicon-plus', null, 0, 1, 'c1ee80478f2e4b3eb8aed12509855c5d', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 1, 'emergency:action:cms:create', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('52516de65ecc40e8805d44634dba2d0a', '动作修改', 0, null, 'glyphicon glyphicon-pencil', null, 0, 1, 'c1ee80478f2e4b3eb8aed12509855c5d', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 2, 'emergency:action:cms:update', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('4f695b33f1b24fefa7cba842a2ff8dcf', 'zw石安', 0, 'zw::admin:123456', null, null, 1, 1, '66a68a39387d402683dbece4ff99deb6', '1', to_date('31-05-2019 11:00:28', 'dd-mm-yyyy hh24:mi:ss'), 3, 'feature:zw:video3', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('104be70ab4004884afa8c604ada48f6d', '提醒窗口-系统信息', 2, '3', null, null, 0, 1, 'ea308de5513f48d0881191f265409fd2', '1', to_date('22-06-2017', 'dd-mm-yyyy'), 3, 'feature:msgRemind:3', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('feee145c60ff415f92099996441fddca', '提醒新增', 1, '/msgRemind/create', null, null, 0, 1, 'ea308de5513f48d0881191f265409fd2', '1', to_date('22-06-2017', 'dd-mm-yyyy'), 4, 'feature:msgRemind:create', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('aa9b1829a90644df8da14cbd2361eed0', '提醒修改', 1, '/msgRemind/update', null, null, 0, 1, 'ea308de5513f48d0881191f265409fd2', '1', to_date('22-06-2017', 'dd-mm-yyyy'), 5, 'feature:msgRemind:delete', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('9d8fe4e4f2c44d65b95400131b0f9112', '提醒删除', 1, '/msgRemind/delete', null, null, 0, 1, 'ea308de5513f48d0881191f265409fd2', '1', to_date('22-06-2017', 'dd-mm-yyyy'), 6, 'feature:msgRemind:delete', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('708251050f6e4b90b7c88d05c0567993', '提醒查看', 1, '/msgRemind', null, null, 0, 1, 'ea308de5513f48d0881191f265409fd2', '1', to_date('22-06-2017', 'dd-mm-yyyy'), 7, 'feature:msgRemind:view', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('ce4f74a5ffbb4f10ab7f1971ee547d09', '提醒窗口-事件报警', 2, '1', null, null, 0, 1, 'ea308de5513f48d0881191f265409fd2', '1', to_date('19-06-2017', 'dd-mm-yyyy'), 1, 'feature:msgRemind:1', '设备报警、分析报警等');
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('c0d9f880736146e6957e46adb5d5f360', '提醒窗口-上报信息', 2, '2', null, null, 0, 1, 'ea308de5513f48d0881191f265409fd2', '1', to_date('19-06-2017', 'dd-mm-yyyy'), 2, 'feature:msgRemind:2', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('115921b85eed4451b65124de9d56a8c2', '提醒窗口-故障信息', 2, '4', null, null, 0, 1, 'ea308de5513f48d0881191f265409fd2', '1', to_date('14-05-2019 17:44:14', 'dd-mm-yyyy hh24:mi:ss'), 2, 'feature:msgRemind:4', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('e1742cf9edf64538ab0a96d176b88dd9', '雾区诱导实时数据', 0, '/fog/realData', null, null, 1, 1, '5af7ef8afaed4cd0a0b78e0c3fcfe123', '1', to_date('31-05-2019 16:34:52', 'dd-mm-yyyy hh24:mi:ss'), 1, 'fog:realData:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('09e93c84001e4839b03d04d46b1673a5', '雾区诱导历史数据', 1, '/fog/historyData', null, null, 1, 1, '5af7ef8afaed4cd0a0b78e0c3fcfe123', '1', to_date('31-05-2019 16:35:59', 'dd-mm-yyyy hh24:mi:ss'), 2, 'fog:hisData:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('5af7ef8afaed4cd0a0b78e0c3fcfe123', '雾区诱导单元', 1, null, 'wi-fog', null, 1, 1, '0', '1', to_date('31-05-2019', 'dd-mm-yyyy'), 4, 'fog:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('a217cbc9f67344eb980492d11a8b08d1', '故障信息', 0, '/jkDevFault/realData', 'fa fa-times-circle', null, 1, 1, '00bd0260b4f44ed8964c85a612aa4237', '1', to_date('10-06-2019 15:50:57', 'dd-mm-yyyy hh24:mi:ss'), 3, 'device:fault:list', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('5af7ef8afaed4cd0a0b78e0c3fcfeaa4', '设备管理', 1, null, 'glyphicon glyphicon-briefcase', null, 1, 1, '0', '1', to_date('12-06-2019', 'dd-mm-yyyy'), 4, 'device:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('5af7ef8afaed4cd0a0b78e0c3fcfeaa5', '设备实时状态', 1, '/device/real/status', null, null, 1, 1, '5af7ef8afaed4cd0a0b78e0c3fcfeaa4', '1', to_date('12-06-2019', 'dd-mm-yyyy'), 1, 'device:realStatus:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('5af7ef8afaed4cd0a0b78e0c3fcfeaa6', '设备实时在线率', 1, '/device/real/online', null, null, 1, 1, '5af7ef8afaed4cd0a0b78e0c3fcfeaa4', '1', to_date('12-06-2019', 'dd-mm-yyyy'), 2, 'device:realOnline:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('b6ac1aa8c0db46bebdc79a8c36ea0e27', '9级', 0, 'res:taskLevel=9', null, null, 0, 1, '12c04aeca29c48918109d28e06340dec', '1', to_date('23-07-2019 15:33:59', 'dd-mm-yyyy hh24:mi:ss'), 9, 'res:taskLevel:9', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('ffb865765d14422fa5aaa2fde736e7ca', '5级', 0, 'res:taskLevel=5', null, null, 0, 1, '12c04aeca29c48918109d28e06340dec', '1', to_date('23-07-2019 15:33:23', 'dd-mm-yyyy hh24:mi:ss'), 5, 'res:taskLevel:1', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('05e12ccabebc4f8fab487f81a19e510b', '2级', 0, 'res:taskLevel=2', null, null, 0, 1, '12c04aeca29c48918109d28e06340dec', '1', to_date('23-07-2019 15:32:54', 'dd-mm-yyyy hh24:mi:ss'), 2, 'res:taskLevel:2', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('fb618104812643a0ac8062508120da9d', '1级', 0, 'res:taskLevel=1', null, null, 0, 1, '12c04aeca29c48918109d28e06340dec', '1', to_date('23-07-2019 15:32:28', 'dd-mm-yyyy hh24:mi:ss'), 1, 'res:taskLevel:1', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('12c04aeca29c48918109d28e06340dec', '任务级别', 0, null, null, null, 0, 1, '0819e0dbda29439a834a752cfb65a25e', '1', to_date('23-07-2019 15:30:34', 'dd-mm-yyyy hh24:mi:ss'), 3, 'sys:taskInfo:level', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('0819e0dbda29439a834a752cfb65a25e', '任务信息', 0, '/sys-taskInfo', 'fa fa-list-ol', null, 1, 1, '1', '1', to_date('23-07-2019 15:00:04', 'dd-mm-yyyy hh24:mi:ss'), 15, 'sys:taskInfo:dir', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('42772da70a0f411599ce7d0698854533', '任务执行情况', 0, '/sys/taskInfo/recordList', 'fa fa-list-ol', null, 1, 1, '0819e0dbda29439a834a752cfb65a25e', '1', to_date('21-07-2019 00:29:50', 'dd-mm-yyyy hh24:mi:ss'), 1, 'sys:taskInfo:recordList', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('a25f8bb8496e418ea36d2fdc9744afd8', '故障信息处理方式统计', 0, '/jkDevFaultSumData/chart', null, null, 1, 1, '00bd0260b4f44ed8964c85a612aa4237', '1', to_date('17-07-2019 15:24:06', 'dd-mm-yyyy hh24:mi:ss'), 4, 'device:fault:chart', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('e4f6957a42dc4b5ea69215283eedd1db', '任务计划', 0, '/sys/taskInfo', 'fa fa-tasks', null, 1, 1, '0819e0dbda29439a834a752cfb65a25e', '1', to_date('16-07-2019 13:41:25', 'dd-mm-yyyy hh24:mi:ss'), 0, 'sys:taskInfo', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('48040fec0d7d4e33bdc7da13769fa1bc', '情报板指令状态', 0, '/cms/ctrl/list', null, null, 1, 1, 'e04642d08399468d9c6a74112b97bec1', '1', to_date('09-07-2019 14:12:56', 'dd-mm-yyyy hh24:mi:ss'), 10, 'cms:ctrl', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('935ca56ea04843a6931a666405397421', '高速外省车辆分布图', 1, 'http://192.168.47.63:8088/monitor/tkevent/tkevent.htm', null, null, 1, 1, 'ad1ad08eca6e4ec6b8f3538be9fdfe20', '1', to_date('26-01-2018', 'dd-mm-yyyy'), 1, 'dataExpression:ProvCar', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('99053ea4fbee4a0ca8cdfe32e719aee5', '高速线路流量图', 1, 'http://13.0.0.222:8080/screen/static/page5.html', null, null, 1, 1, 'ad1ad08eca6e4ec6b8f3538be9fdfe20', '1', to_date('26-01-2018', 'dd-mm-yyyy'), 1, 'dataExpression:Lineflow', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('514fc6fe9ed74c66b76df7a6a8167d82', '收费数据分析', 1, 'http://13.0.0.222:8080/screen/static/page6.html', null, null, 1, 1, 'ad1ad08eca6e4ec6b8f3538be9fdfe20', '1', to_date('26-01-2018', 'dd-mm-yyyy'), 1, 'dataExpression:dataAlay', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('01bd2831d4d6426aba75fb8dbd706514', '查询录像', 0, '/static/szx_login.html', null, null, 1, 1, '7040498cee6a4716b6531f21a6728116', '1', to_date('02-04-2018', 'dd-mm-yyyy'), 6, 'feature:video:event:play', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('101', '车检实时数据', 1, '/report/vd/realData', 'glyphicon glyphicon-th-list', null, 1, 1, '50', '1', to_date('22-03-2017', 'dd-mm-yyyy'), 3, 'report:vd:realdata', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('26', '用户导出', 0, null, 'glyphicon glyphicon-ban-circle', null, 0, 1, '21', '1', to_date('22-03-2017', 'dd-mm-yyyy'), 1, 'feature:user:export', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('53', '微波车检基本信息', 1, '/microwave', 'glyphicon glyphicon-th', null, 1, 1, '50', '1', to_date('11-04-2017', 'dd-mm-yyyy'), 7, 'microwave:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('60', '信息发布', 1, null, 'fa fa-edit', null, 1, 1, '0', '1', to_date('11-04-2017', 'dd-mm-yyyy'), 2, 'cms:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('61', '情报板基本信息', 1, '/cms', 'glyphicon glyphicon-th', null, 1, 1, 'e04642d08399468d9c6a74112b97bec1', '1', to_date('11-04-2017', 'dd-mm-yyyy'), 2, 'cms:profile', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('6fd723822b7b44fc85980591bcf6b9f6', '预置条目', 0, '/cms/pre', 'fa fa-list-alt', null, 1, 1, 'e04642d08399468d9c6a74112b97bec1', '1', to_date('08-05-2017', 'dd-mm-yyyy'), 4, 'feature:cms:pre:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('3fad6001510f4a3f8b3ca51b7961ffd5', '预置条目组', 0, '/cms/pre/group', 'fa fa-indent', null, 1, 1, 'e04642d08399468d9c6a74112b97bec1', '1', to_date('11-05-2017', 'dd-mm-yyyy'), 5, 'cms:pre:group:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('ace53e78f5ec45fd9d9ea181131e6ad1', '视频事件', 0, '/video/event', null, null, 1, 1, '00bd0260b4f44ed8964c85a612aa4237', '1', to_date('22-05-2017', 'dd-mm-yyyy'), 1, 'feature:video:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('a88cbc23ee774ece8d8477fddb095267', '路网修改', 0, null, null, null, 0, 1, '6ce747c3f8064d50973cdfe511de5d5a', '1', to_date('22-05-2017', 'dd-mm-yyyy'), 2, 'feature:roadNet:update', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('7f527094d60c4895939bbf87b8379bba', '路网删除', 0, null, null, null, 0, 1, '6ce747c3f8064d50973cdfe511de5d5a', '1', to_date('22-05-2017', 'dd-mm-yyyy'), 3, 'feature:roadNet:delete', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('9d5edee2ab75405cbe31be7417ff33ce', '短信发送记录', 0, '/sms/order', null, null, 1, 1, '533434ae508d4f03a31116f4c81ca5db', '1', to_date('14-06-2017', 'dd-mm-yyyy'), 3, 'sms:order', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('dfd936672f2e469b99fb4c7f0e4b8a61', '字典表', 0, '/sys/dict', null, null, 1, 1, '1', '1', to_date('03-07-2017', 'dd-mm-yyyy'), 11, 'sys:dict', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('4c479cc35a4d4b8b879b70d19af9fa20', '交调实时数据', 0, '/rd/realData', null, null, 1, 1, '5c1734ea243f46c6a4b97d67573c2476', '1', to_date('18-07-2017', 'dd-mm-yyyy'), 2, 'rd:real:realdata', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('b841b1f2e025428e82be649ba9eeb9b9', '交调历史数据', 0, '/rd/historyData', null, null, 1, 1, '5c1734ea243f46c6a4b97d67573c2476', '1', to_date('18-07-2017', 'dd-mm-yyyy'), 3, 'rd:history:historydata', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('50', '车检', 1, null, 'glyphicon glyphicon-th-large', null, 1, 1, '24d69602aa384d789782d05be42ef5ec', '1', to_date('11-04-2017', 'dd-mm-yyyy'), 1, 'microwave:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('b120822f46244b68bd053f395dcdd29a', '摄像机基本资料', 0, '/video/profile', null, null, 1, 1, '7040498cee6a4716b6531f21a6728116', '1', to_date('23-05-2017', 'dd-mm-yyyy'), 3, 'feature:video:profile:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('e58dbff2abdd44c5ada21f72fef4e54b', '高速路段管理', 1, '/road', null, null, 1, 1, '1', '1', to_date('23-05-2017', 'dd-mm-yyyy'), 6, 'feature:road:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('609b9141af304fa6ae5bfd3ba08a7de6', '路段查看', 0, null, null, null, 0, 1, 'e58dbff2abdd44c5ada21f72fef4e54b', '1', to_date('23-05-2017', 'dd-mm-yyyy'), 99, 'feature:road:view', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('7c6050978e4746fdbca3da7c4e56657c', '路段新增', 0, null, null, null, 0, 1, 'e58dbff2abdd44c5ada21f72fef4e54b', '1', to_date('23-05-2017', 'dd-mm-yyyy'), 99, 'feature:road:create', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('5d8f1cee36e34f7cbca3008f300a90f5', '路段修改', 0, null, null, null, 0, 1, 'e58dbff2abdd44c5ada21f72fef4e54b', '1', to_date('23-05-2017', 'dd-mm-yyyy'), 99, 'feature:road:update', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('4856a0fcbad049debd865ab3a54d2fed', '路段删除', 0, null, null, null, 0, 1, 'e58dbff2abdd44c5ada21f72fef4e54b', '1', to_date('23-05-2017', 'dd-mm-yyyy'), 99, 'feature:road:delete', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('24cb80ec1d3f415e9ba4831211ece108', '气象设备基本资料', 0, '/weather/init', null, null, 1, 1, 'c182fb5e6b224b1b8c03b36ea2b88fd7', '1', to_date('25-05-2017', 'dd-mm-yyyy'), 1, 'ws:profile', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('1a185fad87f644b0829effd7d9f97d5c', '视频事件基本资料', 0, '/video/event/profile', null, null, 1, 1, '7040498cee6a4716b6531f21a6728116', '1', to_date('01-06-2017', 'dd-mm-yyyy'), 4, 'feature:video:event:profile', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('ea308de5513f48d0881191f265409fd2', '提醒设置', 1, '/msgRemind', null, null, 1, 1, '1', '1', to_date('14-06-2017', 'dd-mm-yyyy'), 9, 'feature:msgRemind:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('859edacf89914579bbc93aa09440d7ff', '录像管理', 1, '/video/play/zkzs/record', null, null, 1, 1, '7040498cee6a4716b6531f21a6728116', '1', to_date('12-07-2017', 'dd-mm-yyyy'), 2, 'feature:video:event:play', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('3', '图表', 1, null, 'glyphicon glyphicon-list-alt', null, 1, 1, '0', '1', to_date('05-04-2017', 'dd-mm-yyyy'), 7, 'charts:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('31', '今日流量', 1, '/support/charts', 'glyphicon glyphicon-sound-dolby', null, 1, 1, '3', '1', to_date('05-04-2017', 'dd-mm-yyyy'), 1, 'charts:lk', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('32', '今日事件', 1, '/support/event/charts', 'glyphicon glyphicon-sound-stereo', null, 1, 1, '3', '1', to_date('05-04-2017', 'dd-mm-yyyy'), 1, 'charts:event', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('6ce747c3f8064d50973cdfe511de5d5a', '高速路网管理', 1, '/roadNet', null, null, 1, 1, '1', '1', to_date('22-05-2017', 'dd-mm-yyyy'), 5, 'feature:roadNet:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('63', '情报板发布', 1, '/cms/linkPub', 'glyphicon glyphicon-share', null, 1, 1, 'e04642d08399468d9c6a74112b97bec1', '1', to_date('11-04-2017', 'dd-mm-yyyy'), 1, 'cms:linkPub', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('9fe1073ebdf3488e82387042a901dc87', '路网新增', 0, null, null, null, 0, 1, '6ce747c3f8064d50973cdfe511de5d5a', '1', to_date('22-05-2017', 'dd-mm-yyyy'), 1, 'feature:roadNet:create', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('6965bd26df9f4b0795f57df98272d1b8', '路网查看', 0, null, null, null, 0, 1, '6ce747c3f8064d50973cdfe511de5d5a', '1', to_date('22-05-2017', 'dd-mm-yyyy'), 2, 'feature:roadNet:view', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('b5d7629db4a44f02877c3a11df49ad64', '气象实时数据', 0, '/weather/weatherRealData/init', null, null, 1, 1, 'c182fb5e6b224b1b8c03b36ea2b88fd7', '1', to_date('25-05-2017', 'dd-mm-yyyy'), 2, 'ws:realdata', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('d7fecad17e874ef2906e3f1c5731e4eb', '气象历史数据', 0, '/weather/weatherHisData/init', null, null, 1, 1, 'c182fb5e6b224b1b8c03b36ea2b88fd7', '1', to_date('25-05-2017', 'dd-mm-yyyy'), 3, 'ws:historydata', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('95bafd5e5e6b42f2a4c8066f9d5354a8', '气象实时状态', 0, '/weather/weatherRealStatus/init', null, null, 1, 1, 'c182fb5e6b224b1b8c03b36ea2b88fd7', '1', to_date('25-05-2017', 'dd-mm-yyyy'), 4, 'ws:real:status', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('f50ab1e7927b486f8329597cbb602315', '气象历史状态', 0, '/weather/weatherHisStatus/init', null, null, 1, 1, 'c182fb5e6b224b1b8c03b36ea2b88fd7', '1', to_date('25-05-2017', 'dd-mm-yyyy'), 5, 'ws:history:status', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('87aead81bbdf4cf29f5ffcbf5893f158', '情报板实时数据', 0, '/cms/real/dataz/init', null, null, 1, 1, 'e04642d08399468d9c6a74112b97bec1', '1', to_date('01-06-2017', 'dd-mm-yyyy'), 6, 'cms:realdata', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('2eaa31c439514382a7129619298305b0', '系统参数管理', 0, '/sys/param', null, null, 1, 1, '1', '1', to_date('05-06-2017', 'dd-mm-yyyy'), 7, 'sys:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('acd8da23040540498502d31dfd4aca93', '厂商信息', 0, '/factory', null, null, 1, 1, '1', '1', to_date('30-06-2017', 'dd-mm-yyyy'), 10, 'factory:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('85c889d2ca154c67888ab8ba6bfdf090', '交调实时状态', 0, '/rd/realStatus', null, null, 1, 1, '5c1734ea243f46c6a4b97d67573c2476', '1', to_date('18-07-2017', 'dd-mm-yyyy'), 4, 'rd:real:status', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('e8e27055e39a4eb285c73a14fef0b2e6', '交调历史状态', 0, '/rd/historyStatus', null, null, 1, 1, '5c1734ea243f46c6a4b97d67573c2476', '1', to_date('18-07-2017', 'dd-mm-yyyy'), 5, 'rd:history:status', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('1c3ea1285e6c433f8d6bc6408b4a3aec', '交通状态', 1, '/support/status/charts', 'glyphicon glyphicon-sound-stereo', null, 1, 1, '3', '1', to_date('01-08-2017', 'dd-mm-yyyy'), 3, 'flowMonitor:status', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('54', '资源管理', 1, '/resource', 'glyphicon glyphicon-tasks', null, 1, 1, '1', '1', to_date('22-03-2017', 'dd-mm-yyyy'), 4, 'feature:resource:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('41', '角色管理', 1, '/role', 'glyphicon glyphicon-tasks', null, 1, 1, '1', '1', to_date('22-03-2017', 'dd-mm-yyyy'), 1, 'feature:role:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('6e20edd89f4e48ab8749ac5fab179938', '实时视频', 1, '/video/play', null, null, 1, 1, '7040498cee6a4716b6531f21a6728116', '1', to_date('28-06-2017', 'dd-mm-yyyy'), 3, 'feature:video:play:view', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('82859943d03649b385ee8cfbb6cf769e', '动作查看', 0, null, 'glyphicon glyphicon-zoom-in', null, 0, 1, 'c1ee80478f2e4b3eb8aed12509855c5d', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 4, 'emergency:action:cms:search', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('d4e7a1ff15f44b4ea7eb4cd927ad0c3f', '动作查找', 0, null, 'glyphicon glyphicon-zoom-in', null, 0, 1, 'c1ee80478f2e4b3eb8aed12509855c5d', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 5, 'emergency:action:cms:view', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('e800972831344310b6fb54ab1aa68ffc', '动作导出', 0, null, 'glyphicon glyphicon-share', null, 0, 1, 'c1ee80478f2e4b3eb8aed12509855c5d', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 6, 'emergency:action:cms:export', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('2582077526874dc8a3f2243f591da43e', '动作新增', 0, null, 'glyphicon glyphicon-plus', null, 0, 1, 'affce957a50a4e95b6079bcd979f0601', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 1, 'emergency:action:toll:create', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('d6f3fb3bc72d4cb7948a58a62746dc10', '动作修改', 0, null, 'glyphicon glyphicon-pencil', null, 0, 1, 'affce957a50a4e95b6079bcd979f0601', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 2, 'emergency:action:toll:update', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('d71de677a70b42d1a72439ea0753751f', '动作删除', 0, null, 'glyphicon glyphicon-trash', null, 0, 1, 'affce957a50a4e95b6079bcd979f0601', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 3, 'emergency:action:toll:delete', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('21deb3dfab1e45ebb5f25c90ca70fea7', '动作查看', 0, null, 'glyphicon glyphicon-zoom-in', null, 0, 1, 'affce957a50a4e95b6079bcd979f0601', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 4, 'emergency:action:toll:search', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('3b257f6df03f4935a67d79da9e0ec042', '动作查找', 0, null, 'glyphicon glyphicon-zoom-in', null, 0, 1, 'affce957a50a4e95b6079bcd979f0601', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 5, 'emergency:action:toll:view', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('03fc0b8823a249498a8c943b650d4053', '动作导出', 0, null, 'glyphicon glyphicon-share', null, 0, 1, 'affce957a50a4e95b6079bcd979f0601', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 6, 'emergency:action:toll:export', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('75c5c1a71b4e401aba1292e5f2d4a324', '预案导出', 0, null, 'glyphicon glyphicon-share', null, 0, 1, '0a3a898059fe4f8797daad491a858be0', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 6, 'emergency:plan:planManagement:export', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('6fa743b14f524a3a93e2555fdba3e29b', '预案打印', 0, null, null, null, 0, 1, '0a3a898059fe4f8797daad491a858be0', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 7, 'emergency:plan:planManagement:print', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('1c3779d0e33f4df0b804439e90bcac05', '模板打印', 0, null, null, null, 0, 1, 'e34f7798f94643c390639453cc0031b7', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 7, 'emergency:tpl:print', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('2b357e2bb45d4b96ac52f5d38db541ca', '动作打印', 0, null, null, null, 0, 1, '38297c4b7b004863ab70e9c46148fbb5', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 7, 'emergency:action:fog:print', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('c5e2fd1bae0647188a7a3b0e2a506e06', '动作打印', 0, null, null, null, 0, 1, '1f99d575b13f4ede85b35804c04516da', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 7, 'emergency:action:servicesta:print', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('b24e101df7124330b381e094433c6314', '动作打印', 0, null, null, null, 0, 1, '5f3135422e9e4778978c28eeccb2d43f', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 7, 'emergency:action:issue:print', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('bea80617cc584957bb75edf857e0d0f4', '动作打印', 0, null, null, null, 0, 1, 'c1ee80478f2e4b3eb8aed12509855c5d', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 7, 'emergency:action:cms:print', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('8284e0aa26584abc963ceb42c762aa0b', '动作打印', 0, null, null, null, 0, 1, 'affce957a50a4e95b6079bcd979f0601', '1', to_date('04-06-2018', 'dd-mm-yyyy'), 7, 'emergency:action:toll:print', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('1ea0648a0e494daf9e93e5196e921235', '向责任人发布信息', 1, '/plan/action/man', null, null, 1, 1, '6f58bce363e94c1f833f4669f8a52374', '1', to_date('07-06-2018', 'dd-mm-yyyy'), 6, 'emergency:action:mans', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('5716ff32081e4843aaefe6162391a80d', '动作新增', 0, null, 'glyphicon glyphicon-plus', null, 0, 1, '1ea0648a0e494daf9e93e5196e921235', '1', to_date('07-06-2018', 'dd-mm-yyyy'), 1, 'emergency:action:man:create', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('03471481b5194045a42dd2df69d705a7', '动作修改', 0, null, 'glyphicon glyphicon-pencil', null, 0, 1, '1ea0648a0e494daf9e93e5196e921235', '1', to_date('07-06-2018', 'dd-mm-yyyy'), 2, 'emergency:action:man:update', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('bebadb5dcb2444d0a75331854256beeb', '动作删除', 0, null, 'glyphicon glyphicon-trash', null, 0, 1, '1ea0648a0e494daf9e93e5196e921235', '1', to_date('07-06-2018', 'dd-mm-yyyy'), 3, 'emergency:action:man:delete', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('0a0e69d83df5406b938a5636be744389', '动作查看', 0, null, 'glyphicon glyphicon-zoom-in', null, 0, 1, '1ea0648a0e494daf9e93e5196e921235', '1', to_date('07-06-2018', 'dd-mm-yyyy'), 4, 'emergency:action:man:search', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('c4ecb3c49c864958bb3300ec30e8f0bb', '动作查找', 0, null, 'glyphicon glyphicon-zoom-in', null, 0, 1, '1ea0648a0e494daf9e93e5196e921235', '1', to_date('07-06-2018', 'dd-mm-yyyy'), 5, 'emergency:action:man:view', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('5623c880665c4f90bd8bfc5c49da9e85', '动作导出', 0, null, 'glyphicon glyphicon-share', null, 0, 1, '1ea0648a0e494daf9e93e5196e921235', '1', to_date('07-06-2018', 'dd-mm-yyyy'), 6, 'emergency:action:man:export', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('88c8d86d55f74f1fb7a02e60c06492aa', '动作打印', 0, null, null, null, 0, 1, '1ea0648a0e494daf9e93e5196e921235', '1', to_date('07-06-2018', 'dd-mm-yyyy'), 7, 'emergency:action:man:print', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('9e35f97cb7854909b476905982b4aa1d', '视频直播', 0, '/video/live', null, null, 1, 1, '7040498cee6a4716b6531f21a6728116', '1', to_date('08-06-2018', 'dd-mm-yyyy'), 8, 'feature:video:live:view', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('dbb7ad3cd8224f0786dadb5c3e0de2c2', '事件信息', 1, '/plan/event', null, null, 1, 1, '2f1189781e6949c8836c8871938b8022', '1', to_date('11-06-2018', 'dd-mm-yyyy'), 7, 'emergency:event:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('1ca800179afe4897a01274886e0dba59', '车流量信息查看', 1, '/jkMsg/flow', null, null, 0, 1, 'de73af5c2e72474bb747ec4320f4530c', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('20-07-2018', 'dd-mm-yyyy'), 3, 'jkMsg:flow:view', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('1673218ecfae45e4b1c8b54a793a0f26', '车流量信息管理-新增', 0, '/jkMsg/flow/create', null, null, 0, 1, 'de73af5c2e72474bb747ec4320f4530c', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('20-07-2018', 'dd-mm-yyyy'), 0, 'jkMsg:flow:create', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('a719bd0393d344b19e8a84097777198d', '车流量信息管理-修改', 0, '/jkMsg/flow/update', null, null, 0, 1, 'de73af5c2e72474bb747ec4320f4530c', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('20-07-2018', 'dd-mm-yyyy'), 2, 'jkMsg:flow:update', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('113f9e963d9a4638bb03dd03b5b4dd06', '车流量信息管理-删除', 0, '/jkMsg/flow/delete', null, null, 0, 1, 'de73af5c2e72474bb747ec4320f4530c', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('20-07-2018', 'dd-mm-yyyy'), 1, 'jkMsg:flow:delete', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('5af7ef8afaed4cd0a0b78e0c3fcfece0', '纸卡信息查看', 1, '/jkMsg/paperCard', null, null, 0, 1, 'f7c6db44a7ad4e44be21739d2e8a052d', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('20-07-2018', 'dd-mm-yyyy'), 3, 'jkMsg:paperCard:view', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('b63dcc379d80438cb859a2d9ece6dd05', '纸卡量信息管理-新增', 0, '/jkMsg/paperCard/create', null, null, 0, 1, 'f7c6db44a7ad4e44be21739d2e8a052d', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('20-07-2018', 'dd-mm-yyyy'), 0, 'jkMsg:paperCard:create', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('83756f828bc943febd7f31a0e344d216', '纸卡量信息管理-修改', 0, '/jkMsg/paperCard/update', null, null, 0, 1, 'f7c6db44a7ad4e44be21739d2e8a052d', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('20-07-2018', 'dd-mm-yyyy'), 2, 'jkMsg:paperCard:update', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('f90079548c05457ab44df257fcfd509a', '纸卡量信息-删除', 0, '/jkMsg/paperCard/delete', null, null, 0, 1, 'f7c6db44a7ad4e44be21739d2e8a052d', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('20-07-2018', 'dd-mm-yyyy'), 1, 'jkMsg:paperCardg:delete', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('6b615229533f4f5883c8b050349e0eaf', '声光报警', 1, '/plan/action/light', null, null, 1, 1, '6f58bce363e94c1f833f4669f8a52374', '1', to_date('23-08-2018', 'dd-mm-yyyy'), 7, 'emergency:action:light:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('6912c41a94a849cd8686d4e93150fa5d', '事件类型与预案', 1, '/plan/eventTypePlan', null, null, 1, 1, '2f1189781e6949c8836c8871938b8022', '1', to_date('13-08-2018', 'dd-mm-yyyy'), 8, 'emergency:eventTypePlan:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('36c267516969422a915094c63c6f6765', '服务区信息管理-上报', 0, '/jkMsg/serviceZone/create', null, null, 0, 1, 'dc086c26d200469d890a51fb50ebc864', '1', to_date('27-08-2018', 'dd-mm-yyyy'), 1, 'jkMsg:serviceZone:create', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('e9700af90b5f4502b8438ea9c1d9847f', '服务区信息管理-审核', 0, '/jkMsg/serviceZone/update', null, null, 0, 1, 'dc086c26d200469d890a51fb50ebc864', '1', to_date('27-08-2018', 'dd-mm-yyyy'), 3, 'jkMsg:serviceZone:update', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('563f9896b01e48569dd07a4489ae31e0', '服务区信息管理-查看', 0, '/jkMsg/serviceZone', null, null, 0, 1, 'dc086c26d200469d890a51fb50ebc864', '1', to_date('27-08-2018', 'dd-mm-yyyy'), 4, 'jkMsg:serviceZone:view', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('bffc63afc3194fdda5e0caf1774bcb9c', '地图管理', 1, '/map/default', null, null, 1, 1, '753548be5f0a41fab6fff6a0ed59729d', '1', to_date('29-08-2018', 'dd-mm-yyyy'), 1, 'map:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('970abc25417d4bf08570c48e68f6d6a7', '查询设备信息', 0, '/dev/data', null, null, 0, 1, '753548be5f0a41fab6fff6a0ed59729d', '1', to_date('29-08-2018', 'dd-mm-yyyy'), 2, 'dev:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('30569b62fc98493295f601fbe983647c', '气象阀值', 0, '/weather/weatherThreshold', null, null, 1, 1, 'c182fb5e6b224b1b8c03b36ea2b88fd7', '1', to_date('10-09-2018', 'dd-mm-yyyy'), 6, 'ws:threshold', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('6ab9ebf157634834ac786ed6a49eb3a2', '分中心路况管理信息', 0, '/alarm/branch', 'fa fa-road', null, 1, 1, '60', '1', to_date('07-09-2018', 'dd-mm-yyyy'), 4, 'alarm:branch:list', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('6ab9ebf157634834ac786ed6a49eb3b2', '分中心实时路况', 0, '/alarm/branch/listView', null, null, 1, 1, '60', '1', to_date('07-09-2018', 'dd-mm-yyyy'), 5, 'alarm:branch:listView', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('dd897a4aa991477ba63a3ad7750a6916', '实时视频', 0, '/video/play/zw/video', null, null, 1, 1, '7040498cee6a4716b6531f21a6728116', '1', to_date('20-09-2018', 'dd-mm-yyyy'), 1, 'feature:video:play:view', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('6435d6b7598d4c84bac5235e5178ff89', '服务信息', 0, '/serviceNode', null, null, 1, 1, '1', '1', to_date('29-06-2017', 'dd-mm-yyyy'), 8, 'service:*', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('2b1b8c3b7d7e485c9fef98cf225791ce', '情报板锁管理', 0, '/cms/lock/list', null, null, 1, 1, 'e04642d08399468d9c6a74112b97bec1', '1', to_date('09-07-2019 14:09:40', 'dd-mm-yyyy hh24:mi:ss'), 9, '/cms:lock', '情报板锁管理');
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('f37362e4c5de432b82d58d16b05feb56', '5级', 0, 'res:lockLimit=5', null, null, 0, 1, '7fe0fac31dbd4a429cf8763df32e2dd1', '1', to_date('04-07-2019 18:36:27', 'dd-mm-yyyy hh24:mi:ss'), 5, 'cms:res:lockLimit:5', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('8297d52fb5034b92bfe24c5bcca4ddd8', '2级', 0, 'res:lockLimi=2', null, null, 0, 1, '7fe0fac31dbd4a429cf8763df32e2dd1', '1', to_date('04-07-2019 18:35:44', 'dd-mm-yyyy hh24:mi:ss'), 2, 'cms:res:lockLimi:2', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('db2bcd2a55eb436d8d8af7f577092a32', '1级', 0, 'res:lockLimit=1', null, null, 0, 1, '7fe0fac31dbd4a429cf8763df32e2dd1', '1', to_date('04-07-2019 18:35:13', 'dd-mm-yyyy hh24:mi:ss'), 1, 'cms:res:lockLimit:1', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('7fe0fac31dbd4a429cf8763df32e2dd1', '情报板发锁级别', 0, null, null, null, 0, 1, 'e04642d08399468d9c6a74112b97bec1', '1', to_date('04-07-2019 18:19:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cms:lockLimit', null);
insert into SYS_RESOURCE (resource_id, resource_name, resource_type, resource_path, img, url_target, show_menu, valid, parent_id, deal_user_id, last_update_time, sort_no, permission, remark)
values ('5d58727f0274463588e23e031640e7cb', '设备阀值设定', 0, '/jkDev/threshold', 'fa fa-stack-overflow', null, 1, 1, '00bd0260b4f44ed8964c85a612aa4237', '1', to_date('08-08-2019 11:51:09', 'dd-mm-yyyy hh24:mi:ss'), 5, 'jkDev:threshold', null);
commit;
prompt 259 records loaded
prompt Loading SYS_ROLE...
insert into SYS_ROLE (role_id, role_name, role_desc, deal_user_id, last_update_time, can_del, can_edit, status)
values ('2bfa89493e1640ecad79627ce7846e76', '新视频权限', 'zw::admin:123456', '1', to_date('26-10-2018', 'dd-mm-yyyy'), 0, 0, 1);
insert into SYS_ROLE (role_id, role_name, role_desc, deal_user_id, last_update_time, can_del, can_edit, status)
values ('5e813bb7e3fb4fac9cabf69f527a168b', '监控员', '3', '1', to_date('27-06-2019', 'dd-mm-yyyy'), 1, 1, 1);
insert into SYS_ROLE (role_id, role_name, role_desc, deal_user_id, last_update_time, can_del, can_edit, status)
values ('b1d8aaa9881c4ef883f99753858e55d3', '稽查用户', '11', '1', to_date('01-08-2017', 'dd-mm-yyyy'), 1, 1, 1);
insert into SYS_ROLE (role_id, role_name, role_desc, deal_user_id, last_update_time, can_del, can_edit, status)
values ('93ee0afd4cec4715ab70f36f7f7abef5', '管理员', '用于观看视频', '1', to_date('08-08-2019', 'dd-mm-yyyy'), 1, 1, 1);
insert into SYS_ROLE (role_id, role_name, role_desc, deal_user_id, last_update_time, can_del, can_edit, status)
values ('0a6140a740e3491290486bba689ab210', '中心收费', '用于观看视频', '1', to_date('23-11-2017', 'dd-mm-yyyy'), 1, 1, 1);
insert into SYS_ROLE (role_id, role_name, role_desc, deal_user_id, last_update_time, can_del, can_edit, status)
values ('176e35511fb949d2a3d64b0d3202b1ca', '大屏展现用户', '大屏展现用户', '1', to_date('03-02-2018', 'dd-mm-yyyy'), 0, 1, 1);
insert into SYS_ROLE (role_id, role_name, role_desc, deal_user_id, last_update_time, can_del, can_edit, status)
values ('2bfa89493e1640ecad79627ce7824e76', '测试123', '测试', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('26-10-2018', 'dd-mm-yyyy'), 0, 0, 1);
insert into SYS_ROLE (role_id, role_name, role_desc, deal_user_id, last_update_time, can_del, can_edit, status)
values ('57961d6e24ed43a1b82c9992026c7dfe', '石安高速', '查看视频，发送情报板', '1', to_date('08-07-2019', 'dd-mm-yyyy'), 0, 0, 1);
commit;
prompt 8 records loaded
prompt Loading SYS_TASK...
prompt Table is empty
prompt Loading SYS_TASK_EXEC_RECORD...
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('de85bb556ad04608b88c1bf0b9658e67', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('09-08-2019', 'dd-mm-yyyy'), to_date('09-08-2019', 'dd-mm-yyyy'), to_date('09-08-2019', 'dd-mm-yyyy'), '错误描述:null', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('4a0b207d9b7040e8a988c5403ea1cb70', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('29-08-2019', 'dd-mm-yyyy'), to_date('29-08-2019', 'dd-mm-yyyy'), to_date('29-08-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('60b725da86a941948e4899daea0f06d7', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('30-08-2019 02:22:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-08-2019', 'dd-mm-yyyy'), to_date('30-08-2019 02:22:34', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('d3b937205cff4b90a2bfd0afd032117b', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('31-08-2019', 'dd-mm-yyyy'), to_date('31-08-2019', 'dd-mm-yyyy'), to_date('31-08-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('3cbde2a615a741578867d976932dc8b3', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('01-09-2019 02:29:43', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-09-2019', 'dd-mm-yyyy'), to_date('01-09-2019 02:29:43', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('0c87828411e34ebcb5699008720bd3fb', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('02-09-2019', 'dd-mm-yyyy'), to_date('02-09-2019', 'dd-mm-yyyy'), to_date('02-09-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('eaeeb5c257a64a17952ce20c17d5fae7', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('02-09-2019 02:26:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-09-2019', 'dd-mm-yyyy'), to_date('02-09-2019 02:26:58', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('f6ba897df7434392ae5a472747c145c8', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('03-09-2019 03:08:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-09-2019', 'dd-mm-yyyy'), to_date('03-09-2019 03:08:08', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('3e8e11fe3219460ab870408e889e38b9', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('04-09-2019', 'dd-mm-yyyy'), to_date('04-09-2019', 'dd-mm-yyyy'), to_date('04-09-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('f58c5f015ec64c23ad619f0724ff4a31', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('04-09-2019 02:23:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-09-2019', 'dd-mm-yyyy'), to_date('04-09-2019 02:23:22', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('afd2eacc75f0416ba2246524566b8cbd', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('05-09-2019', 'dd-mm-yyyy'), to_date('05-09-2019', 'dd-mm-yyyy'), to_date('05-09-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('9ebbac8a726a4531bb8d47f05f555396', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('06-09-2019', 'dd-mm-yyyy'), to_date('06-09-2019', 'dd-mm-yyyy'), to_date('06-09-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('36b46a14363e48ca8f0b2faa87cb4066', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('07-09-2019 02:28:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('07-09-2019', 'dd-mm-yyyy'), to_date('07-09-2019 02:28:25', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('f8c84fc5c82a43478d39dae5b8bf6883', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('08-09-2019 02:34:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-09-2019', 'dd-mm-yyyy'), to_date('08-09-2019 02:34:44', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('f92bbf74c2844edbb79ef247acec3a7e', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('09-09-2019 02:34:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-09-2019', 'dd-mm-yyyy'), to_date('09-09-2019 02:34:04', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('0e2aa9e3bf4442ac966575ea7029928d', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('11-09-2019', 'dd-mm-yyyy'), to_date('11-09-2019', 'dd-mm-yyyy'), to_date('11-09-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('2d81041be9444177ad83ea96977f3c07', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('11-09-2019 02:29:30', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-09-2019', 'dd-mm-yyyy'), to_date('11-09-2019 02:29:30', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('e50a4af096a24051bac489f32df6da50', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('12-09-2019', 'dd-mm-yyyy'), to_date('12-09-2019', 'dd-mm-yyyy'), to_date('12-09-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('35f7a63bb74b4ab293809c979452080d', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('15-09-2019 02:44:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('15-09-2019', 'dd-mm-yyyy'), to_date('15-09-2019 02:44:19', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('535ec851f0b942a5938eabd1783a79a6', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('18-09-2019', 'dd-mm-yyyy'), to_date('18-09-2019', 'dd-mm-yyyy'), to_date('18-09-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('51e32bc4fb904295816506bc009beeff', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('19-09-2019 02:50:32', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-09-2019', 'dd-mm-yyyy'), to_date('19-09-2019 02:50:32', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('19b1eaf91f454544b10f162f244befc3', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('26-08-2019 09:53:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-08-2019 09:53:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-08-2019 09:53:03', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 1, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('87447377c28f4bf1bdc2143f93e3e4d8', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('26-08-2019 11:55:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-08-2019 09:53:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-08-2019 11:55:15', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 1, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('265fd5c6d7e74aeea61e60e828b14152', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('26-08-2019 14:12:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-08-2019 11:55:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-08-2019 14:12:46', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 1, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('9df1a67932cc4a20aa0487d38026f3da', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('27-08-2019', 'dd-mm-yyyy'), to_date('27-08-2019', 'dd-mm-yyyy'), to_date('27-08-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('b59e1e7e2e1b420591706f91076fb949', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('31-08-2019 02:26:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('31-08-2019', 'dd-mm-yyyy'), to_date('31-08-2019 02:26:29', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('fb16dcfc6b414353953e0863707c92ad', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('03-09-2019', 'dd-mm-yyyy'), to_date('03-09-2019', 'dd-mm-yyyy'), to_date('03-09-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('3ba547dfea294d3680d9eb9f18f7a8e2', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('05-09-2019 02:23:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-09-2019', 'dd-mm-yyyy'), to_date('05-09-2019 02:23:25', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('ea10be8d67b34e3e8d482687b02e40fd', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('06-09-2019 02:23:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-09-2019', 'dd-mm-yyyy'), to_date('06-09-2019 02:23:44', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('a75558db12724e439592ae901eaec8ac', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('09-09-2019', 'dd-mm-yyyy'), to_date('09-09-2019', 'dd-mm-yyyy'), to_date('09-09-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('848d218f706f4497bd6f12b74e54e9c4', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('13-09-2019', 'dd-mm-yyyy'), to_date('13-09-2019', 'dd-mm-yyyy'), to_date('13-09-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('ffe20430e2bd48899c974e281d2e6a4b', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('14-09-2019 02:37:35', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-09-2019', 'dd-mm-yyyy'), to_date('14-09-2019 02:37:35', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('c9a8f1e221214e62895735f5d92ab8ef', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('15-09-2019', 'dd-mm-yyyy'), to_date('15-09-2019', 'dd-mm-yyyy'), to_date('15-09-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('d9543ca04fcc48019aa8ea603711be8e', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('18-09-2019 02:47:30', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-09-2019', 'dd-mm-yyyy'), to_date('18-09-2019 02:47:30', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('64b29b141c284b3f82337d1e80880894', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('20-09-2019 02:48:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('20-09-2019', 'dd-mm-yyyy'), to_date('20-09-2019 02:48:58', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('7db983cb170440489ed1dc3670ec2ae6', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('21-09-2019', 'dd-mm-yyyy'), to_date('21-09-2019', 'dd-mm-yyyy'), to_date('21-09-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('a18be4a60b74414fbdd3e1d6db0d725b', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('22-09-2019', 'dd-mm-yyyy'), to_date('22-09-2019', 'dd-mm-yyyy'), to_date('22-09-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('b40a33862ec343bf9abc24a046846f9a', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('22-09-2019 02:53:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-09-2019', 'dd-mm-yyyy'), to_date('22-09-2019 02:53:50', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('5b210b6f016b4151808617fa3fa036f2', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('23-09-2019 02:47:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-09-2019', 'dd-mm-yyyy'), to_date('23-09-2019 02:47:55', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('a2b3de3673a44930bb64908299f2c19d', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('24-09-2019 02:46:17', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-09-2019', 'dd-mm-yyyy'), to_date('24-09-2019 02:46:17', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('1397512fa7204dd6bb9c1d7b602f745a', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('25-09-2019', 'dd-mm-yyyy'), to_date('25-09-2019', 'dd-mm-yyyy'), to_date('25-09-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('40423a0de4eb40a580495e0091a64c18', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('09-08-2019', 'dd-mm-yyyy'), to_date('09-08-2019', 'dd-mm-yyyy'), to_date('09-08-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('fc7901645d884c9aa2b80e97821ad200', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('10-09-2019', 'dd-mm-yyyy'), to_date('10-09-2019', 'dd-mm-yyyy'), to_date('10-09-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('cddb6c19bfa44289a7af02c965fa7614', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('14-09-2019', 'dd-mm-yyyy'), to_date('14-09-2019', 'dd-mm-yyyy'), to_date('14-09-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('8508bba5b8474e1ab7ad9bee9b81619d', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('16-09-2019 02:49:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('16-09-2019', 'dd-mm-yyyy'), to_date('16-09-2019 02:49:26', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('938814a358104396b06418b911eb3878', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('17-09-2019', 'dd-mm-yyyy'), to_date('17-09-2019', 'dd-mm-yyyy'), to_date('17-09-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('e3852faeaeca4643b6086024073faafb', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('19-09-2019', 'dd-mm-yyyy'), to_date('19-09-2019', 'dd-mm-yyyy'), to_date('19-09-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('ce341958543c43948a88692a7fb59dcd', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('21-09-2019 02:48:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-09-2019', 'dd-mm-yyyy'), to_date('21-09-2019 02:48:24', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('a109a0465b38450d8af0b7a960233c4e', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('25-09-2019 02:44:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-09-2019', 'dd-mm-yyyy'), to_date('25-09-2019 02:44:22', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('85ba9542dd4c4f57bebb27e3c6626a0a', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('26-09-2019', 'dd-mm-yyyy'), to_date('26-09-2019', 'dd-mm-yyyy'), to_date('26-09-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('2765a921a591420890905c98037a311b', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('26-09-2019 02:51:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-09-2019', 'dd-mm-yyyy'), to_date('26-09-2019 02:51:40', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('96bc6f99165a4fafba2932c5e3a79f39', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('27-09-2019', 'dd-mm-yyyy'), to_date('27-09-2019', 'dd-mm-yyyy'), to_date('27-09-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('fc13be0ca7cb459985744ae9bf5662bb', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('27-09-2019 02:45:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-09-2019', 'dd-mm-yyyy'), to_date('27-09-2019 02:45:29', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('425eee9de1b74ce395922f0c6d72962f', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('28-09-2019', 'dd-mm-yyyy'), to_date('28-09-2019', 'dd-mm-yyyy'), to_date('28-09-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('14b3ea288cc749d5b9d3730ec498d110', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('29-09-2019 02:48:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-09-2019', 'dd-mm-yyyy'), to_date('29-09-2019 02:48:20', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('fa4c40e3c835428781a1bf1b8858fbf2', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('30-09-2019', 'dd-mm-yyyy'), to_date('30-09-2019', 'dd-mm-yyyy'), to_date('30-09-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('468605ffd9a94fc9a2595a58d049a2d5', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('01-10-2019', 'dd-mm-yyyy'), to_date('01-10-2019', 'dd-mm-yyyy'), to_date('01-10-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('3b7c48b4aab54d86b6f343163088636e', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('01-10-2019 02:46:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-10-2019', 'dd-mm-yyyy'), to_date('01-10-2019 02:46:14', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('2c59d7722fb945b7bf71a98a5aed321e', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('02-10-2019', 'dd-mm-yyyy'), to_date('02-10-2019', 'dd-mm-yyyy'), to_date('02-10-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('b807d600a48447dc9f7a6a76d4d7a30b', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('02-10-2019 02:37:36', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-10-2019', 'dd-mm-yyyy'), to_date('02-10-2019 02:37:36', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('2327c25068654c3794da9be6c95d349b', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('03-10-2019', 'dd-mm-yyyy'), to_date('03-10-2019', 'dd-mm-yyyy'), to_date('03-10-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('6338e19ee8994601884efeeea9f6b7c6', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('04-10-2019', 'dd-mm-yyyy'), to_date('04-10-2019', 'dd-mm-yyyy'), to_date('04-10-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('43cb16dc5ee140c2962d0e7e36f35c5a', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('04-10-2019 03:11:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-10-2019', 'dd-mm-yyyy'), to_date('04-10-2019 03:11:05', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('6bcbd38e116041ff95ad6c6fb0105ab8', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('05-10-2019', 'dd-mm-yyyy'), to_date('05-10-2019', 'dd-mm-yyyy'), to_date('05-10-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('c99bb155352445129bffb4149b61821f', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('28-08-2019', 'dd-mm-yyyy'), to_date('28-08-2019', 'dd-mm-yyyy'), to_date('28-08-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('d07f98f38f1b4ce79e4822eb79d8a4e1', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('29-08-2019 02:22:50', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-08-2019', 'dd-mm-yyyy'), to_date('29-08-2019 02:22:50', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('00a08eb61d5442169306a5bdf3734d86', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('30-08-2019', 'dd-mm-yyyy'), to_date('30-08-2019', 'dd-mm-yyyy'), to_date('30-08-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('dca99eec6b4e4c51aeccedf9bacf37f6', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('01-09-2019', 'dd-mm-yyyy'), to_date('01-09-2019', 'dd-mm-yyyy'), to_date('01-09-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('b709d6a6fc004b8dad3380b941b4aacd', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('07-09-2019', 'dd-mm-yyyy'), to_date('07-09-2019', 'dd-mm-yyyy'), to_date('07-09-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('128cf8f1fe3f4ed4bce3952f9c7966d5', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('08-09-2019', 'dd-mm-yyyy'), to_date('08-09-2019', 'dd-mm-yyyy'), to_date('08-09-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('adca88c4e4cf45a2b354779cf9c41301', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('10-09-2019 02:31:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-09-2019', 'dd-mm-yyyy'), to_date('10-09-2019 02:31:08', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('ec9b2d970d2c4ca298cb4a69c9331e55', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('12-09-2019 02:33:35', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-09-2019', 'dd-mm-yyyy'), to_date('12-09-2019 02:33:35', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('f9b7e3b0f63e47009a76854744d8010a', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('13-09-2019 02:36:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-09-2019', 'dd-mm-yyyy'), to_date('13-09-2019 02:36:19', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('c8ce81cf03204b60a0feb127f742071a', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('16-09-2019', 'dd-mm-yyyy'), to_date('16-09-2019', 'dd-mm-yyyy'), to_date('16-09-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('2b537756b5934109a3825bfa320c8da7', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('17-09-2019 02:49:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-09-2019', 'dd-mm-yyyy'), to_date('17-09-2019 02:49:40', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('1c259211a83d46ca9d8ce1b3fab5ed3f', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('20-09-2019', 'dd-mm-yyyy'), to_date('20-09-2019', 'dd-mm-yyyy'), to_date('20-09-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('19eee0b88c4b4a63a905430651d5ccda', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('23-09-2019', 'dd-mm-yyyy'), to_date('23-09-2019', 'dd-mm-yyyy'), to_date('23-09-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('81533dfffbe442db8d7b8aa96975d61a', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('24-09-2019', 'dd-mm-yyyy'), to_date('24-09-2019', 'dd-mm-yyyy'), to_date('24-09-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('8722fb33b64d4518993873cc41347165', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('28-09-2019 02:45:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-09-2019', 'dd-mm-yyyy'), to_date('28-09-2019 02:45:11', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('ed78e11553484e7fad6a00076e0fa2ea', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('29-09-2019', 'dd-mm-yyyy'), to_date('29-09-2019', 'dd-mm-yyyy'), to_date('29-09-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('a74b03c98d7b4fe1835e4151d86f850a', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('30-09-2019 02:55:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-09-2019', 'dd-mm-yyyy'), to_date('30-09-2019 02:55:27', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('4c81bab8db4c4771be9dd866e79d35d5', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('03-10-2019 02:25:35', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-10-2019', 'dd-mm-yyyy'), to_date('03-10-2019 02:25:35', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('8377a6a9964d4bff83535102860c462a', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('05-10-2019 02:37:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-10-2019', 'dd-mm-yyyy'), to_date('05-10-2019 02:37:02', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('b162c295763c4be8acaee4613e379257', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('06-10-2019', 'dd-mm-yyyy'), to_date('06-10-2019', 'dd-mm-yyyy'), to_date('06-10-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('6a7074c6cb9b4757ad5dffb1e01cefdb', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('06-10-2019 02:41:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-10-2019', 'dd-mm-yyyy'), to_date('06-10-2019 02:41:02', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('aaf03dbcf5a34d25ae5e840dd8c99493', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('07-10-2019', 'dd-mm-yyyy'), to_date('07-10-2019', 'dd-mm-yyyy'), to_date('07-10-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('4802c78e26ca4549a0d0f18ddb1a88c4', '7223f8f3fa6f406087a87bd2e8f89755', '* * * * * ?', to_date('08-08-2019 14:33:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:04', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:null', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('3b63d2915db7404e93da50285312bd52', '7223f8f3fa6f406087a87bd2e8f89755', '* * * * * ?', to_date('08-08-2019 14:33:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:05', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:null', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('0d04777f3e7646da9cef139dfa1fe3e6', '7223f8f3fa6f406087a87bd2e8f89755', '* * * * * ?', to_date('08-08-2019 14:33:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:06', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:null', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('25e2882b2ef1484a80d03bd220ae1439', '7223f8f3fa6f406087a87bd2e8f89755', '* * * * * ?', to_date('08-08-2019 14:33:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:07', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:null', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('f246cb2f7e1a40d780db75580ca40467', '7223f8f3fa6f406087a87bd2e8f89755', '* * * * * ?', to_date('08-08-2019 14:33:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:08', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:null', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('31c931784fea4c68b8be37035ca566d2', '7223f8f3fa6f406087a87bd2e8f89755', '* * * * * ?', to_date('08-08-2019 14:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:09', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:null', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('e783ac2a8f2b4e33a997a628850d68eb', '7223f8f3fa6f406087a87bd2e8f89755', '* * * * * ?', to_date('08-08-2019 14:33:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:10', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:null', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('13a87f63161041e4b4bc4fd9ecd2ae3a', '7223f8f3fa6f406087a87bd2e8f89755', '* * * * * ?', to_date('08-08-2019 14:33:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:11', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:null', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('146a7f31fd5a4d6294e0a3695b8ce6e3', '7223f8f3fa6f406087a87bd2e8f89755', '* * * * * ?', to_date('08-08-2019 14:33:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:12', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:null', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('ee1295cec19244069ff4df973a0f3b65', '7223f8f3fa6f406087a87bd2e8f89755', '* * * * * ?', to_date('08-08-2019 14:33:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:13', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:null', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('9fc3dd3c59cb488a95972366add4393d', '7223f8f3fa6f406087a87bd2e8f89755', '* * * * * ?', to_date('08-08-2019 14:33:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:14', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:null', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('cc13f4320a6f43998dd4c49bb472f441', '7223f8f3fa6f406087a87bd2e8f89755', '* * * * * ?', to_date('08-08-2019 14:33:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:15', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:null', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('abe81685c27d497f9fbd53dc07e8d184', '7223f8f3fa6f406087a87bd2e8f89755', '* * * * * ?', to_date('08-08-2019 14:33:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:16', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:null', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('b78db0ae90fc458abf3aa92780d12575', '7223f8f3fa6f406087a87bd2e8f89755', '* * * * * ?', to_date('08-08-2019 14:33:17', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:17', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:17', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:null', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('da6772e277c04795ad891e588c8b06cf', '7223f8f3fa6f406087a87bd2e8f89755', '* * * * * ?', to_date('08-08-2019 14:33:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:18', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:null', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('834671eef63a4a0d8d5bb113f86949df', '7223f8f3fa6f406087a87bd2e8f89755', '* * * * * ?', to_date('08-08-2019 14:33:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:19', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:null', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('73b61514b91844ad9ddb3535c424bbb3', '7223f8f3fa6f406087a87bd2e8f89755', '* * * * * ?', to_date('08-08-2019 14:33:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:20', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:null', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('e33a1d8f87b2484a85d75d737aac6131', '7223f8f3fa6f406087a87bd2e8f89755', '* * * * * ?', to_date('08-08-2019 14:33:21', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:21', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:21', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:null', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('ab03a1f450e44a84a597b08eb005d660', '7223f8f3fa6f406087a87bd2e8f89755', '* * * * * ?', to_date('08-08-2019 14:33:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:22', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:null', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('81b2475bfaf34c46a6b13d4720d87abb', '7223f8f3fa6f406087a87bd2e8f89755', '* * * * * ?', to_date('08-08-2019 14:33:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:23', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:null', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('38557a29fcab4c95ab4e96620dbe32f6', '7223f8f3fa6f406087a87bd2e8f89755', '* * * * * ?', to_date('08-08-2019 14:33:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:24', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:null', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('bdda63f9074b4845894d54d098135abb', '7223f8f3fa6f406087a87bd2e8f89755', '* * * * * ?', to_date('08-08-2019 14:33:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:25', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:null', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('cf71f752a7e044cba0f0379026305cc5', '7223f8f3fa6f406087a87bd2e8f89755', '* * * * * ?', to_date('08-08-2019 14:33:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:26', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:null', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('b1f554d481d245bca3e12b3cd885a86b', '7223f8f3fa6f406087a87bd2e8f89755', '* * * * * ?', to_date('08-08-2019 14:33:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:27', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:null', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('8bd793fa46a3446e8a40444fc20b4b28', '7223f8f3fa6f406087a87bd2e8f89755', '* * * * * ?', to_date('08-08-2019 14:33:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:28', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:null', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('7231a2caa25e4767bd5d5552bb303d35', '7223f8f3fa6f406087a87bd2e8f89755', '* * * * * ?', to_date('08-08-2019 14:33:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:33:29', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:null', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('08e7cd56a0da4767a3bedcab9a12e7fd', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('27-08-2019 02:22:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-08-2019', 'dd-mm-yyyy'), to_date('27-08-2019 02:22:54', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('1025a2fc2245420abd85833408366dc4', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('28-08-2019 02:24:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-08-2019', 'dd-mm-yyyy'), to_date('28-08-2019 02:24:41', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('6ed397e4e1d847efa075e48167f3cc50', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('10-10-2019 02:32:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-10-2019', 'dd-mm-yyyy'), to_date('10-10-2019 02:32:13', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('e835dfec292c45dd8919037394a962c1', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('11-10-2019 02:28:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-10-2019', 'dd-mm-yyyy'), to_date('11-10-2019 02:28:00', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('0a6d412a4efe4ba5b39ce304530de314', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('12-10-2019 02:37:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-10-2019', 'dd-mm-yyyy'), to_date('12-10-2019 02:37:55', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('124b86ae6675438a854a5fa0bec1e382', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('14-10-2019 02:30:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-10-2019', 'dd-mm-yyyy'), to_date('14-10-2019 02:30:11', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('1d6055dfca6e4ae38bfedeef562bfe15', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('16-10-2019', 'dd-mm-yyyy'), to_date('16-10-2019', 'dd-mm-yyyy'), to_date('16-10-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('6c823b8e99f24113b6bd0a6b68a0946e', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('17-10-2019 02:26:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-10-2019', 'dd-mm-yyyy'), to_date('17-10-2019 02:26:19', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('c40b8c74b8c54778b6f73b437f28b2b5', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('21-10-2019 02:31:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-10-2019', 'dd-mm-yyyy'), to_date('21-10-2019 02:31:24', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('0a0266697cf44e799eb1dfa15d8c25a5', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('24-10-2019', 'dd-mm-yyyy'), to_date('24-10-2019', 'dd-mm-yyyy'), to_date('24-10-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('e68f3bf61877485f899e46b396f421c1', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('26-10-2019', 'dd-mm-yyyy'), to_date('26-10-2019', 'dd-mm-yyyy'), to_date('26-10-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('45e0a5d81f554c85a4f8570f38a3dfba', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('30-10-2019 02:40:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-10-2019', 'dd-mm-yyyy'), to_date('30-10-2019 02:40:19', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('e0b803cec4e9478bac6c208fb8b4b199', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('31-10-2019', 'dd-mm-yyyy'), to_date('31-10-2019', 'dd-mm-yyyy'), to_date('31-10-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('50b7beb28b774ec4b204a5f54941ff7a', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('03-11-2019 02:23:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-11-2019', 'dd-mm-yyyy'), to_date('03-11-2019 02:23:15', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('8dc1dba789724c0cb937dd9762aad93e', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('07-11-2019 02:27:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('07-11-2019', 'dd-mm-yyyy'), to_date('07-11-2019 02:27:24', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('a31fb277a583407bab8241dad4b4de01', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('21-11-2019 02:37:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-11-2019', 'dd-mm-yyyy'), to_date('21-11-2019 02:37:33', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('3ed649627b0f4e34ba59ab100a93288b', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('25-11-2019 02:41:36', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-11-2019', 'dd-mm-yyyy'), to_date('25-11-2019 02:41:36', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('fd89866ab81c4c9a9b58b6cf037ed422', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('29-11-2019', 'dd-mm-yyyy'), to_date('29-11-2019', 'dd-mm-yyyy'), to_date('29-11-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('915d543378654a369a8ebf87cffa0700', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('30-11-2019', 'dd-mm-yyyy'), to_date('30-11-2019', 'dd-mm-yyyy'), to_date('30-11-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('a0929b0b68c340a89d269e80165169bc', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('04-12-2019', 'dd-mm-yyyy'), to_date('04-12-2019', 'dd-mm-yyyy'), to_date('04-12-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('20b0ed8bd4a046bea9ca6c02835d180e', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('06-12-2019', 'dd-mm-yyyy'), to_date('06-12-2019', 'dd-mm-yyyy'), to_date('06-12-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('c27b5055de0a4abe9b06497242310bb3', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('07-12-2019 03:58:36', 'dd-mm-yyyy hh24:mi:ss'), to_date('07-12-2019', 'dd-mm-yyyy'), to_date('07-12-2019 03:58:36', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('30bfee8d50534c248a850d82d61a5599', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('09-10-2019 02:27:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-10-2019', 'dd-mm-yyyy'), to_date('09-10-2019 02:27:12', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('10003d222e184d2caf353763cee28fdd', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('13-10-2019 02:31:17', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-10-2019', 'dd-mm-yyyy'), to_date('13-10-2019 02:31:17', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('8b35adf06f2d4821be1aeacd69893d99', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('21-10-2019', 'dd-mm-yyyy'), to_date('21-10-2019', 'dd-mm-yyyy'), to_date('21-10-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('063480b26ccb46e4a0ab1de50fe5ea44', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('24-10-2019 02:33:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-10-2019', 'dd-mm-yyyy'), to_date('24-10-2019 02:33:59', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('d5b96d7e8a0b4a78a30d7eaa9cbf6413', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('27-10-2019', 'dd-mm-yyyy'), to_date('27-10-2019', 'dd-mm-yyyy'), to_date('27-10-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('cf28c5c3a30241bf8b6b1368edf9b502', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('31-10-2019 02:33:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('31-10-2019', 'dd-mm-yyyy'), to_date('31-10-2019 02:33:58', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('2c38874c31174ea08f5d8c978515109a', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('01-11-2019 02:34:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-11-2019', 'dd-mm-yyyy'), to_date('01-11-2019 02:34:49', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('7eb371772e014790923f92ddb64d9765', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('04-11-2019 02:04:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-11-2019', 'dd-mm-yyyy'), to_date('04-11-2019 02:04:45', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('5d336c3cf414480b9aa7c0d49950416d', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('05-11-2019 03:21:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-11-2019', 'dd-mm-yyyy'), to_date('05-11-2019 03:21:57', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('9978623a59304bd69711737738eda02b', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('06-11-2019 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-11-2019', 'dd-mm-yyyy'), to_date('06-11-2019 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('925fd80ec2354642967ec1500d7a4c8d', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('07-11-2019', 'dd-mm-yyyy'), to_date('07-11-2019', 'dd-mm-yyyy'), to_date('07-11-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('239b35623fb44fbebed57193b8e6bebb', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('11-11-2019 02:39:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-11-2019', 'dd-mm-yyyy'), to_date('11-11-2019 02:39:04', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('995d8a8e97b2425d89d9cda09ba7029d', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('13-11-2019', 'dd-mm-yyyy'), to_date('13-11-2019', 'dd-mm-yyyy'), to_date('13-11-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('060ea4ea36494a149dea0f7220ea81c7', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('13-11-2019 02:34:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-11-2019', 'dd-mm-yyyy'), to_date('13-11-2019 02:34:37', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('4ea8680c0fe4444abf17da3121bc5f82', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('18-11-2019', 'dd-mm-yyyy'), to_date('18-11-2019', 'dd-mm-yyyy'), to_date('18-11-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('4defafdf87d147c5ae93e6b7206a9e33', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('21-11-2019 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-11-2019', 'dd-mm-yyyy'), to_date('21-11-2019 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('8f41f3bc7c414edf8b40d31fdee2a3d8', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('23-11-2019', 'dd-mm-yyyy'), to_date('23-11-2019', 'dd-mm-yyyy'), to_date('23-11-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('a9d9509a934244919892e97c90729a68', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('27-11-2019', 'dd-mm-yyyy'), to_date('27-11-2019', 'dd-mm-yyyy'), to_date('27-11-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('f283e7436e9d4b6f8cfb6aabb23aaf84', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('30-11-2019 02:29:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-11-2019', 'dd-mm-yyyy'), to_date('30-11-2019 02:29:33', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('b5af01239dd9425b89cfe9ff41ad8bce', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('03-12-2019 02:12:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-12-2019', 'dd-mm-yyyy'), to_date('03-12-2019 02:12:06', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('f4ea54e19a2746b7ada21a53d8efdb7a', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('11-12-2019', 'dd-mm-yyyy'), to_date('11-12-2019', 'dd-mm-yyyy'), to_date('11-12-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('0fb8f27f3f5142329d6aa4cdca53aec5', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('08-10-2019 02:32:36', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-10-2019', 'dd-mm-yyyy'), to_date('08-10-2019 02:32:36', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('30918e0bc6ee407ba89bebd2343f358b', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('17-10-2019', 'dd-mm-yyyy'), to_date('17-10-2019', 'dd-mm-yyyy'), to_date('17-10-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('73c4be8639c74f73aad17f158c7ed822', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('18-10-2019 02:35:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-10-2019', 'dd-mm-yyyy'), to_date('18-10-2019 02:35:41', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('1b2aad7889004b81b6113087805dcb3b', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('20-10-2019', 'dd-mm-yyyy'), to_date('20-10-2019', 'dd-mm-yyyy'), to_date('20-10-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('c19dc5504ee54c04b5572b99f72817aa', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('22-10-2019', 'dd-mm-yyyy'), to_date('22-10-2019', 'dd-mm-yyyy'), to_date('22-10-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('9504869f2c594578b53145d8a22b116e', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('23-10-2019 02:28:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-10-2019', 'dd-mm-yyyy'), to_date('23-10-2019 02:28:01', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('f7738945a7e34106ae1a4621e594c55e', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('26-10-2019 02:35:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-10-2019', 'dd-mm-yyyy'), to_date('26-10-2019 02:35:05', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('5b6f76f8be994757b3c87d7c8cde92bf', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('28-10-2019 02:44:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-10-2019', 'dd-mm-yyyy'), to_date('28-10-2019 02:44:40', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('46020abbcc8e411a8f76042914d7d0b8', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('01-11-2019', 'dd-mm-yyyy'), to_date('01-11-2019', 'dd-mm-yyyy'), to_date('01-11-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('2156d31ac83f451f8a83300a1aad1fc0', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('10-11-2019', 'dd-mm-yyyy'), to_date('10-11-2019', 'dd-mm-yyyy'), to_date('10-11-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('d84af0a909424b0ca4b2c2ef26bbcca2', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('11-11-2019 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-11-2019', 'dd-mm-yyyy'), to_date('11-11-2019 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('ca56e20fdd9a42a88286b1ba962daf21', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('12-11-2019 02:31:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-11-2019', 'dd-mm-yyyy'), to_date('12-11-2019 02:31:51', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('d3ca3ce7b3e344bb94199523aec4072f', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('18-11-2019 02:43:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-11-2019', 'dd-mm-yyyy'), to_date('18-11-2019 02:43:45', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('d4be7621101642b78219dd846383836c', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('23-11-2019 02:37:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-11-2019', 'dd-mm-yyyy'), to_date('23-11-2019 02:37:56', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('e49bc381266a4e7cb43ce3c2cfe788b2', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('24-11-2019', 'dd-mm-yyyy'), to_date('24-11-2019', 'dd-mm-yyyy'), to_date('24-11-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('4fc4b508a33e4a18ad4f31e12f94e8a2', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('25-11-2019', 'dd-mm-yyyy'), to_date('25-11-2019', 'dd-mm-yyyy'), to_date('25-11-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('0a16bd22ea28472da5cc8c934eee7f77', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('28-11-2019 02:37:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-11-2019', 'dd-mm-yyyy'), to_date('28-11-2019 02:37:37', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('6df5c11bc4f940a78b9307a0af5d7196', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('29-11-2019 02:37:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-11-2019', 'dd-mm-yyyy'), to_date('29-11-2019 02:37:44', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('1e39a0ad6a514911b2d1b46bb69659c0', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('01-12-2019 02:38:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-12-2019', 'dd-mm-yyyy'), to_date('01-12-2019 02:38:52', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('22f0384d962a44d9a5a1499156b195ae', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('08-12-2019', 'dd-mm-yyyy'), to_date('08-12-2019', 'dd-mm-yyyy'), to_date('08-12-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('879e3b13ff5345fb952b545416943591', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('07-10-2019 02:47:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('07-10-2019', 'dd-mm-yyyy'), to_date('07-10-2019 02:47:51', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('ceed637de3bf4cd99d16cf9828f169df', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('13-10-2019', 'dd-mm-yyyy'), to_date('13-10-2019', 'dd-mm-yyyy'), to_date('13-10-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('ec0f58237a924f4b998f128da9dd5d87', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('15-10-2019 02:26:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('15-10-2019', 'dd-mm-yyyy'), to_date('15-10-2019 02:26:46', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('71ad8a3ea17a450a9b67f34fb1c509e5', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('22-10-2019 02:30:17', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-10-2019', 'dd-mm-yyyy'), to_date('22-10-2019 02:30:17', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('62e38eae4c724b2daadf9f73943d08f4', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('23-10-2019', 'dd-mm-yyyy'), to_date('23-10-2019', 'dd-mm-yyyy'), to_date('23-10-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('c06cbabd3009416ab2ff578877d18202', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('27-10-2019 02:46:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-10-2019', 'dd-mm-yyyy'), to_date('27-10-2019 02:46:37', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('90eb9009cce74f7eb960982b732cff55', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('28-10-2019 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-10-2019', 'dd-mm-yyyy'), to_date('28-10-2019 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('c8de414d27f346b181f2f3bb226bc245', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('29-10-2019', 'dd-mm-yyyy'), to_date('29-10-2019', 'dd-mm-yyyy'), to_date('29-10-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('a284e397178c4ce59304a1daf03ec520', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('05-11-2019', 'dd-mm-yyyy'), to_date('05-11-2019', 'dd-mm-yyyy'), to_date('05-11-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('2f5d168be2ed45d7b91db056786114fe', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('09-11-2019 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-11-2019', 'dd-mm-yyyy'), to_date('09-11-2019 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('0260c9181a6b45c0b206043285bd11c4', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('10-11-2019 02:37:35', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-11-2019', 'dd-mm-yyyy'), to_date('10-11-2019 02:37:35', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('af243813704444c0ac55260aefe3577e', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('12-11-2019', 'dd-mm-yyyy'), to_date('12-11-2019', 'dd-mm-yyyy'), to_date('12-11-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('89d44100752848219e2a25aacf2b41a0', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('16-11-2019 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('16-11-2019', 'dd-mm-yyyy'), to_date('16-11-2019 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('1764f250d0274b88940145ce5771b1af', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('19-11-2019', 'dd-mm-yyyy'), to_date('19-11-2019', 'dd-mm-yyyy'), to_date('19-11-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('92cd5700d1e4498d9e27d73a954a3900', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('20-11-2019', 'dd-mm-yyyy'), to_date('20-11-2019', 'dd-mm-yyyy'), to_date('20-11-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('ebb56cd55a2b4232a8fa296e2d649e4d', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('22-11-2019', 'dd-mm-yyyy'), to_date('22-11-2019', 'dd-mm-yyyy'), to_date('22-11-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('ff197878eff145ad9bdbb9f6e714aef8', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('03-12-2019', 'dd-mm-yyyy'), to_date('03-12-2019', 'dd-mm-yyyy'), to_date('03-12-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('d9f9b4a90dd84498aee8b5043f1e0aa2', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('08-12-2019 02:35:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-12-2019', 'dd-mm-yyyy'), to_date('08-12-2019 02:35:41', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('1490d5c897b449dcafd8d46c165b4e98', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('11-12-2019 02:30:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-12-2019', 'dd-mm-yyyy'), to_date('11-12-2019 02:30:15', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('f37a404013094174a69b1eef94fa22e2', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('12-12-2019', 'dd-mm-yyyy'), to_date('12-12-2019', 'dd-mm-yyyy'), to_date('12-12-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('1c8f9002acb449f7b3c607e6b3461f5e', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('14-12-2019 02:33:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-12-2019', 'dd-mm-yyyy'), to_date('14-12-2019 02:33:18', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('50a24df8f68b4d2e97ce8ab7c9ccb94c', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('15-12-2019 02:39:14', 'dd-mm-yyyy hh24:mi:ss'), to_date('15-12-2019', 'dd-mm-yyyy'), to_date('15-12-2019 02:39:14', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('241a228830fa4e2fbe30a481bdfac191', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('17-12-2019', 'dd-mm-yyyy'), to_date('17-12-2019', 'dd-mm-yyyy'), to_date('17-12-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('6e7eaa80f28145c0a033c14b0ccd66bf', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('09-10-2019', 'dd-mm-yyyy'), to_date('09-10-2019', 'dd-mm-yyyy'), to_date('09-10-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('281c3228b96440bb82c6de89394b437f', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('15-10-2019', 'dd-mm-yyyy'), to_date('15-10-2019', 'dd-mm-yyyy'), to_date('15-10-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('b27c8155eb8b4b43bfb88dd97d4f670d', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('19-10-2019', 'dd-mm-yyyy'), to_date('19-10-2019', 'dd-mm-yyyy'), to_date('19-10-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('f8397bc3ee8944b1ac4df4ea0a5a84ba', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('25-10-2019', 'dd-mm-yyyy'), to_date('25-10-2019', 'dd-mm-yyyy'), to_date('25-10-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('ba2d1fe2cfc3429c910bf6ff310cda5d', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('29-10-2019 02:41:32', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-10-2019', 'dd-mm-yyyy'), to_date('29-10-2019 02:41:32', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('0f0ccc1ae0984972b99ca40ee016b156', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('30-10-2019', 'dd-mm-yyyy'), to_date('30-10-2019', 'dd-mm-yyyy'), to_date('30-10-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('f68d0bdbe7664a508b77cb6a727733ca', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('02-11-2019', 'dd-mm-yyyy'), to_date('02-11-2019', 'dd-mm-yyyy'), to_date('02-11-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('e131502eca6e49cc9c3ad9072acff83e', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('03-11-2019', 'dd-mm-yyyy'), to_date('03-11-2019', 'dd-mm-yyyy'), to_date('03-11-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('98e3ca61658149a184b1e7ade9423524', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('04-11-2019', 'dd-mm-yyyy'), to_date('04-11-2019', 'dd-mm-yyyy'), to_date('04-11-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('97192055d57d4dc7b8341f13f1625d44', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('09-11-2019 02:31:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-11-2019', 'dd-mm-yyyy'), to_date('09-11-2019 02:31:44', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('4957f8930ea940889aeb7635efdc2340', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('14-11-2019', 'dd-mm-yyyy'), to_date('14-11-2019', 'dd-mm-yyyy'), to_date('14-11-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('f679444c5d46464c8cbb6a4f3a44a0f3', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('15-11-2019', 'dd-mm-yyyy'), to_date('15-11-2019', 'dd-mm-yyyy'), to_date('15-11-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('b37b71509b7d42b1b9bb94369d62e26e', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('19-11-2019 02:36:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-11-2019', 'dd-mm-yyyy'), to_date('19-11-2019 02:36:59', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('69ab3b6ea6be4c09a7d34d178d7ea290', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('26-11-2019', 'dd-mm-yyyy'), to_date('26-11-2019', 'dd-mm-yyyy'), to_date('26-11-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('57cc670cfe864cb399966e71418ab405', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('01-12-2019', 'dd-mm-yyyy'), to_date('01-12-2019', 'dd-mm-yyyy'), to_date('01-12-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('5218c36bfa9d4a7e95b2885b3fc31f84', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('02-12-2019 02:34:28', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-12-2019', 'dd-mm-yyyy'), to_date('02-12-2019 02:34:28', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('84c8dd9f1805478188bb9ee5cd0ce7c7', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('04-12-2019 02:11:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-12-2019', 'dd-mm-yyyy'), to_date('04-12-2019 02:11:48', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('e449c505b86842998fcc8260c69c60a7', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('05-12-2019 02:21:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-12-2019', 'dd-mm-yyyy'), to_date('05-12-2019 02:21:15', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('747a2ad26f884f76834b2dce3361ea5b', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('09-12-2019 02:35:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('09-12-2019', 'dd-mm-yyyy'), to_date('09-12-2019 02:35:22', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('6d5b6719550a4fce94e598dd6f83e808', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('10-12-2019 02:27:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-12-2019', 'dd-mm-yyyy'), to_date('10-12-2019 02:27:04', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('c98de74125a84a58a67b139ca1d5541b', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('12-12-2019 02:35:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-12-2019', 'dd-mm-yyyy'), to_date('12-12-2019 02:35:01', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('5f499c9ce0034b6ba0a65a79df421b7e', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('17-12-2019 02:35:17', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-12-2019', 'dd-mm-yyyy'), to_date('17-12-2019 02:35:17', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('5c5f3fd80a254efd8678ca9bd784ab85', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('16-11-2019 02:36:39', 'dd-mm-yyyy hh24:mi:ss'), to_date('16-11-2019', 'dd-mm-yyyy'), to_date('16-11-2019 02:36:39', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('8515aa4e60e246d2b3dd97241303a6fe', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('22-11-2019 02:41:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-11-2019', 'dd-mm-yyyy'), to_date('22-11-2019 02:41:25', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('2543e7b61739402080b8f30c038d2d05', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('26-11-2019 02:37:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-11-2019', 'dd-mm-yyyy'), to_date('26-11-2019 02:37:12', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('84be46a041df40d2a6f613735aec30c4', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('02-12-2019 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-12-2019', 'dd-mm-yyyy'), to_date('02-12-2019 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('574e0f65919642faaa72a3fb37fc1281', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('06-12-2019 02:16:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-12-2019', 'dd-mm-yyyy'), to_date('06-12-2019 02:16:13', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('1d88722f0747483eafc1ccb925a449b8', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('07-12-2019', 'dd-mm-yyyy'), to_date('07-12-2019', 'dd-mm-yyyy'), to_date('07-12-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('4a76d793de8e4ef4b15f3321d9175a49', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('09-12-2019', 'dd-mm-yyyy'), to_date('09-12-2019', 'dd-mm-yyyy'), to_date('09-12-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('e9a6414ed9cb42c48e219e96e7fcc0ce', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('13-12-2019', 'dd-mm-yyyy'), to_date('13-12-2019', 'dd-mm-yyyy'), to_date('13-12-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('da296de287744056bf0dd15b46ecd00d', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('18-12-2019', 'dd-mm-yyyy'), to_date('18-12-2019', 'dd-mm-yyyy'), to_date('18-12-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('fe9c03e9c1484f81b873ce1be4a49620', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('18-12-2019 02:35:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-12-2019', 'dd-mm-yyyy'), to_date('18-12-2019 02:35:59', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('8d01f91bc6e94d7a9ae90d7c039b57f0', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('19-12-2019 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2019', 'dd-mm-yyyy'), to_date('19-12-2019 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('d610f47b3abf42ca88bb9d78e6534d6e', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('20-12-2019 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('20-12-2019', 'dd-mm-yyyy'), to_date('20-12-2019 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('6adc0405c281412ca6f5869bec578fa8', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('20-12-2019 02:38:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('20-12-2019', 'dd-mm-yyyy'), to_date('20-12-2019 02:38:24', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('adb5c6c97ab34141b3793f4d407ac5f5', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('21-12-2019 02:35:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-12-2019', 'dd-mm-yyyy'), to_date('21-12-2019 02:35:57', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('0afc770c9401404bb152779e930b4953', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('22-12-2019 00:00:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-12-2019', 'dd-mm-yyyy'), to_date('22-12-2019 00:00:05', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('1e2e3fa2cfaa46899c9b6da2bc7160ec', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('22-12-2019 02:42:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-12-2019', 'dd-mm-yyyy'), to_date('22-12-2019 02:42:26', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('e8361d1bc8304b46b519a7d1a0251c38', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('23-12-2019 02:39:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-12-2019', 'dd-mm-yyyy'), to_date('23-12-2019 02:39:53', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('0d5720cfaa414e5d889368f8c9eec8aa', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('24-12-2019', 'dd-mm-yyyy'), to_date('24-12-2019', 'dd-mm-yyyy'), to_date('24-12-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('841bbd47539d4bb3b5f8835d5790ea50', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('24-12-2019 02:36:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-12-2019', 'dd-mm-yyyy'), to_date('24-12-2019 02:36:48', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('3e12c16961c74d74bc4585af32381a78', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('25-12-2019', 'dd-mm-yyyy'), to_date('25-12-2019', 'dd-mm-yyyy'), to_date('25-12-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('29dd26aef826436e8367e66161d72f28', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('25-12-2019 02:29:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-12-2019', 'dd-mm-yyyy'), to_date('25-12-2019 02:29:15', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('b3962529bda34aaa98500fb334e37de5', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('08-10-2019', 'dd-mm-yyyy'), to_date('08-10-2019', 'dd-mm-yyyy'), to_date('08-10-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('e625ed0f7b964911a30e6bc72c20ed13', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('19-10-2019 02:28:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-10-2019', 'dd-mm-yyyy'), to_date('19-10-2019 02:28:27', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('f6014253cf1c47ceaa0edfe80b946bff', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('05-12-2019', 'dd-mm-yyyy'), to_date('05-12-2019', 'dd-mm-yyyy'), to_date('05-12-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('b387e512e07641b6ba5bd06cccda3c03', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('10-12-2019', 'dd-mm-yyyy'), to_date('10-12-2019', 'dd-mm-yyyy'), to_date('10-12-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('708cc37c06eb4231b2ad43bc19e9f1a3', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('13-12-2019 02:35:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('13-12-2019', 'dd-mm-yyyy'), to_date('13-12-2019 02:35:48', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('a3b174e17c17486488100c0104ceda91', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('14-12-2019', 'dd-mm-yyyy'), to_date('14-12-2019', 'dd-mm-yyyy'), to_date('14-12-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('9333c7353dff42cca062b78750601dfb', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('15-12-2019', 'dd-mm-yyyy'), to_date('15-12-2019', 'dd-mm-yyyy'), to_date('15-12-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('e921fa9e0bb54a689845aaecd20d9576', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('16-12-2019', 'dd-mm-yyyy'), to_date('16-12-2019', 'dd-mm-yyyy'), to_date('16-12-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('2d03384e83f24a228284f7913813f0d4', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('16-12-2019 02:39:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('16-12-2019', 'dd-mm-yyyy'), to_date('16-12-2019 02:39:13', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('b0c3431034cd43308f98ae284ff88ded', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('19-12-2019 02:36:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-12-2019', 'dd-mm-yyyy'), to_date('19-12-2019 02:36:41', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('2554aa7bc9c94303a747be80b2c1c013', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('21-12-2019', 'dd-mm-yyyy'), to_date('21-12-2019', 'dd-mm-yyyy'), to_date('21-12-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('6b315491e37a4eea897a822cdd6aa49a', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('23-12-2019', 'dd-mm-yyyy'), to_date('23-12-2019', 'dd-mm-yyyy'), to_date('23-12-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('e7a5bd6ac6f94a76b36af2e5f65f6183', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('26-12-2019', 'dd-mm-yyyy'), to_date('26-12-2019', 'dd-mm-yyyy'), to_date('26-12-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('c5ec9c34d1ce4dc19407c44c8786b526', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('26-12-2019 02:33:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-12-2019', 'dd-mm-yyyy'), to_date('26-12-2019 02:33:23', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('5c1adef80b534f7a8f72e7eb74770724', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('10-10-2019', 'dd-mm-yyyy'), to_date('10-10-2019', 'dd-mm-yyyy'), to_date('10-10-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('09bea50dcdf243199f553dcf5872b8ba', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('11-10-2019', 'dd-mm-yyyy'), to_date('11-10-2019', 'dd-mm-yyyy'), to_date('11-10-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('de12a44627f941c290a2dcd8fa22b94c', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('12-10-2019', 'dd-mm-yyyy'), to_date('12-10-2019', 'dd-mm-yyyy'), to_date('12-10-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('f1b307648481477e835b93dc5ef144d2', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('14-10-2019', 'dd-mm-yyyy'), to_date('14-10-2019', 'dd-mm-yyyy'), to_date('14-10-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('4882e269279a43ad963bb0cd819bb2a7', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('16-10-2019 02:28:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('16-10-2019', 'dd-mm-yyyy'), to_date('16-10-2019 02:28:05', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('3209df073a96463fa9053df818d53912', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('18-10-2019', 'dd-mm-yyyy'), to_date('18-10-2019', 'dd-mm-yyyy'), to_date('18-10-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('c780f3f9985941eb847d2764b0e539e6', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('20-10-2019 02:31:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('20-10-2019', 'dd-mm-yyyy'), to_date('20-10-2019 02:31:26', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('966674ca247c4c4aade12b30f0854c91', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('25-10-2019 02:37:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-10-2019', 'dd-mm-yyyy'), to_date('25-10-2019 02:37:15', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('b36e657d184445f9bdc49dc2f63fc150', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('02-11-2019 02:33:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-11-2019', 'dd-mm-yyyy'), to_date('02-11-2019 02:33:02', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('297a88fbb071408db2cc98f75d957668', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('06-11-2019 02:31:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-11-2019', 'dd-mm-yyyy'), to_date('06-11-2019 02:31:33', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('e4ba80cdd2b64e12abf051bf405b7298', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('08-11-2019', 'dd-mm-yyyy'), to_date('08-11-2019', 'dd-mm-yyyy'), to_date('08-11-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('d2bee3e4820a4f0c93f7bc7aca4fec8f', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('08-11-2019 02:29:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2019', 'dd-mm-yyyy'), to_date('08-11-2019 02:29:10', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('71abafc53d0a4a5a8125f43763beed31', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('14-11-2019 02:37:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-11-2019', 'dd-mm-yyyy'), to_date('14-11-2019 02:37:10', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('26365b58bd4d4f4d955c0fa31009968f', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('15-11-2019 02:36:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('15-11-2019', 'dd-mm-yyyy'), to_date('15-11-2019 02:36:07', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('4bb3921025134a109388bf8e16b50cfe', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('17-11-2019', 'dd-mm-yyyy'), to_date('17-11-2019', 'dd-mm-yyyy'), to_date('17-11-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('9b6fe0f62cb647f5a2dc8483262795f7', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('17-11-2019 02:42:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-11-2019', 'dd-mm-yyyy'), to_date('17-11-2019 02:42:34', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('5813a5608a85436b8aa00bcb84d456e7', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('20-11-2019 02:39:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('20-11-2019', 'dd-mm-yyyy'), to_date('20-11-2019 02:39:41', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('611a60c6d2a34fcebf708b88c0818027', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('24-11-2019 02:45:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-11-2019', 'dd-mm-yyyy'), to_date('24-11-2019 02:45:00', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('4f6f862396f44dcca9eedb21274ec820', '7223f8f3fa6f406087a87bd2e8f89755', '0 0 0 * * ?', to_date('27-11-2019 02:37:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-11-2019', 'dd-mm-yyyy'), to_date('27-11-2019 02:37:16', 'dd-mm-yyyy hh24:mi:ss'), '错误描述:' || chr(13) || '' || chr(10) || '### Error updating database.  Cause: java.sql.SQLException: ORA-01013: 用户请求取消当前的操作' || chr(10) || '' || chr(13) || '' || chr(10) || '### The error may involve cn.rhytech.monitor.dao.BaseMapper.baseAct-Inline' || chr(13) || '' || chr(10) || '### The error occurred while set', null, 'taskSystem:定时删除车检历史数据(cn.rhytech.monitor.job.DelVdHistoryDataJob.execute)', 0, null, 1, '定时删除车检的数据保存量', 3);
insert into SYS_TASK_EXEC_RECORD (record_id, task_id, cron, create_time, start_time, end_time, err_msg, cfg, memo, run_once, task_ver, task_level, task_name, exec_status)
values ('759a02160f914a10a57eb72b6395894e', '4d16a5e8b3f54ca199da5c24dd63a97f', '0 0 0 1/1 * ?', to_date('28-11-2019', 'dd-mm-yyyy'), to_date('28-11-2019', 'dd-mm-yyyy'), to_date('28-11-2019', 'dd-mm-yyyy'), null, null, 'taskSystem:设备阀值检测任务(cn.rhytech.monitor.job.JkDevThresholdJob.execute)', 0, null, 1, '测试定时执行任务的使用', 2);
commit;
prompt 275 records loaded
prompt Loading SYS_TASK_INFO...
insert into SYS_TASK_INFO (id, version, task_name, cron, status, update_user_id, update_user_name, create_time, update_time, task_level, exec_type, exec_path, cfg, memo, cfg_example)
values ('7223f8f3fa6f406087a87bd2e8f89755', 0, '定时删除车检的数据保存量', '0 0 0 * * ?', 1, '1', '管理员', to_date('08-08-2019 14:32:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-08-2019 09:55:27', 'dd-mm-yyyy hh24:mi:ss'), 1, 0, 'cn.rhytech.monitor.job.DelVdHistoryDataJob', '{"dayNum":30}', null, null);
insert into SYS_TASK_INFO (id, version, task_name, cron, status, update_user_id, update_user_name, create_time, update_time, task_level, exec_type, exec_path, cfg, memo, cfg_example)
values ('dfd24b9d5967405596b85758e9b6f058', 0, '测试任务', '0 0 0 1 1 ?', 1, '1', '管理员', to_date('08-08-2019 11:54:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 12:05:30', 'dd-mm-yyyy hh24:mi:ss'), 1, 0, 'cn.rhytech.monitor.job.JobOne', null, null, null);
insert into SYS_TASK_INFO (id, version, task_name, cron, status, update_user_id, update_user_name, create_time, update_time, task_level, exec_type, exec_path, cfg, memo, cfg_example)
values ('4d16a5e8b3f54ca199da5c24dd63a97f', 0, '测试定时执行任务的使用', '0 0 0 1/1 * ?', 1, '1', '管理员', to_date('08-08-2019 14:30:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 14:30:58', 'dd-mm-yyyy hh24:mi:ss'), 1, 0, 'cn.rhytech.monitor.job.JkDevThresholdJob', null, null, null);
commit;
prompt 3 records loaded
prompt Loading SYS_USER...
insert into SYS_USER (user_id, login_name, password, reg_time, full_name, gender, birthday, educational_status, work_phone, home_phone, cell_phone, email, on_job, leave_job_time, user_status, deal_user_id, last_update_time, salt, locked)
values ('7f419419464a4d3aad9d9d9393c9488f', 'shianjiankong', '6335a8479312293c427dc5977dcc8e2d', to_date('27-06-2019', 'dd-mm-yyyy'), '监控员', 1, to_date('27-06-2019', 'dd-mm-yyyy'), 2, '133333333333', '133333333333', '133333333333', '1414141414.qq.com', 1, null, 1, '1', to_date('27-06-2019', 'dd-mm-yyyy'), '00075c0f7f978af59743f8a4ba74134f', 0);
insert into SYS_USER (user_id, login_name, password, reg_time, full_name, gender, birthday, educational_status, work_phone, home_phone, cell_phone, email, on_job, leave_job_time, user_status, deal_user_id, last_update_time, salt, locked)
values ('2b596a23356c4d3794bf76ca78c618a0', 'system', '8ed67981611d51b1879384fde5f39d13', to_date('04-06-2019', 'dd-mm-yyyy'), '内置用户', 0, to_date('04-06-2019', 'dd-mm-yyyy'), 0, '010-59330011', '13012341234', '13012341234', '1111@126.com', 1, null, 1, '1', to_date('04-06-2019', 'dd-mm-yyyy'), '7e5ef99de6c1de4e0e85d20abc48d8b7', 0);
insert into SYS_USER (user_id, login_name, password, reg_time, full_name, gender, birthday, educational_status, work_phone, home_phone, cell_phone, email, on_job, leave_job_time, user_status, deal_user_id, last_update_time, salt, locked)
values ('e0d7646032e745e48883201701057bc0', 'qhy', 'f1c05c4754cbfeec1dd7de0bd151f052', to_date('06-06-2019', 'dd-mm-yyyy'), 'qhy', 1, null, 0, null, null, '15533379692', null, 1, null, 1, '1', to_date('06-06-2019', 'dd-mm-yyyy'), 'eb33dc91befbf702bbaddce37a07d9b2', 0);
insert into SYS_USER (user_id, login_name, password, reg_time, full_name, gender, birthday, educational_status, work_phone, home_phone, cell_phone, email, on_job, leave_job_time, user_status, deal_user_id, last_update_time, salt, locked)
values ('1', 'admin', 'bf05e629db3656c6a386f2affdf935d7', to_date('22-03-2017', 'dd-mm-yyyy'), '管理员', 1, to_date('20-07-2017', 'dd-mm-yyyy'), 0, '12', '11111111', '13731465871', '11111@163.com', 0, null, 1, '1', to_date('03-08-2017', 'dd-mm-yyyy'), 'f7c4f2e7db1fcdfba38f09c176398a36', 0);
insert into SYS_USER (user_id, login_name, password, reg_time, full_name, gender, birthday, educational_status, work_phone, home_phone, cell_phone, email, on_job, leave_job_time, user_status, deal_user_id, last_update_time, salt, locked)
values ('ed809a11071841939f9b4cc7465c75d3', 'sags', '59fb84b8e5016d5e45be3470ce8c6602', to_date('08-07-2019', 'dd-mm-yyyy'), '石安高速', 1, to_date('08-07-2019', 'dd-mm-yyyy'), 5, '13333333333', '13333333333', '13333333333', null, 1, null, 1, '1', to_date('08-07-2019', 'dd-mm-yyyy'), '661bb6333ccd387e29db52c4320ea2d4', 0);
commit;
prompt 5 records loaded
prompt Loading SYS_USER_IN_JOB...
insert into SYS_USER_IN_JOB (id, user_id, org_id, org_name, job_id, primary_org, charge, job_name)
values ('53ACAD3B08C84375A71D2ADD0ECA41BB', '5A3CC85138672A5EE050000D031F5745', 'LZ001501080', '错错错test', '1', null, null, null);
insert into SYS_USER_IN_JOB (id, user_id, org_id, org_name, job_id, primary_org, charge, job_name)
values ('684FA3199C004FE492D300EF005FC260', '1', 'GL001', '高速管理局', '1', null, null, 'AAAcAlAAHAAACwMAAB');
insert into SYS_USER_IN_JOB (id, user_id, org_id, org_name, job_id, primary_org, charge, job_name)
values ('412AFA17D1C6443A9EB8083466D13F66', 'fccf2fddba1b4b2a92351eb06023f2b7', 'GL001102', '衡大管理处', '3', null, null, '喽啰9909');
insert into SYS_USER_IN_JOB (id, user_id, org_id, org_name, job_id, primary_org, charge, job_name)
values ('07B9BB22A57846A29E98D1E37B1DD8F3', 'fccf2fddba1b4b2a92351eb06023f2b7', 'GL001104', '石黄管理处', '3', null, null, '喽啰9909');
insert into SYS_USER_IN_JOB (id, user_id, org_id, org_name, job_id, primary_org, charge, job_name)
values ('2372FA5FA5864B9CA8DC3CFB9BBADEAB', '5A3CC85138602A5EE050000D031F5745', 'GL001113', '京秦管理处', '1', null, null, '正+');
insert into SYS_USER_IN_JOB (id, user_id, org_id, org_name, job_id, primary_org, charge, job_name)
values ('57191A2CAD894078A5ECC6496A01F68B', '5A3CC85138602A5EE050000D031F5745', 'GL001111', '保津公司', '1', null, null, '正+');
insert into SYS_USER_IN_JOB (id, user_id, org_id, org_name, job_id, primary_org, charge, job_name)
values ('732E65131725469FAB40D83AD765EB5C', '5A3CC85138602A5EE050000D031F5745', 'GL001110', '京衡管理处', '1', null, null, '正+');
insert into SYS_USER_IN_JOB (id, user_id, org_id, org_name, job_id, primary_org, charge, job_name)
values ('FABEE32BD55E42699980AE713145976C', '5A3CC851385F2A5EE050000D031F5745', 'SF001107002', '京张收费科', '1', null, null, '正+');
insert into SYS_USER_IN_JOB (id, user_id, org_id, org_name, job_id, primary_org, charge, job_name)
values ('16F8B147E9F94A4A92043CB691576BC1', '5A3CC85138602A5EE050000D031F5745', 'SF001106002002', '高官庄站', '1', null, null, 'AAAcAlAAHAAACwOAAA');
insert into SYS_USER_IN_JOB (id, user_id, org_id, org_name, job_id, primary_org, charge, job_name)
values ('CE82FF41109B4C5C9B6F11251EA03562', '5A3CC851386A2A5EE050000D031F5745', 'LZ001501010003', '固安路政支队', '1', null, null, 'AAAcAlAAHAAACwOAAB');
insert into SYS_USER_IN_JOB (id, user_id, org_id, org_name, job_id, primary_org, charge, job_name)
values ('D239E2B130B04339BB57F82A7D2C3E9B', '5A3CC851385F2A5EE050000D031F5745', 'SF001106002002', '高官庄站', '1', null, null, 'AAAcAlAAHAAACwOAAC');
insert into SYS_USER_IN_JOB (id, user_id, org_id, org_name, job_id, primary_org, charge, job_name)
values ('4E8C830AE468424C9DD5A88521D07177', '5A3CC851385F2A5EE050000D031F5745', 'GL001187', '邯大高速管理处', '1', null, null, '正+');
insert into SYS_USER_IN_JOB (id, user_id, org_id, org_name, job_id, primary_org, charge, job_name)
values ('9B3D0380106047268B2016588C6F79D5', '5A3CC85138662A5EE050000D031F5745', 'GL001187', '邯大高速管理处', '1', null, null, '正+');
insert into SYS_USER_IN_JOB (id, user_id, org_id, org_name, job_id, primary_org, charge, job_name)
values ('E54224C45880484CAD415E37A5359AE5', '5A3CC85138622A5EE050000D031F5745', 'GL001186', '河北省高速公路荣乌管理处', '1', null, null, '正+');
insert into SYS_USER_IN_JOB (id, user_id, org_id, org_name, job_id, primary_org, charge, job_name)
values ('48EA2E3CD3E4488FAC24E5F17DB14F78', '5A3CC85138602A5EE050000D031F5745', 'GL001186', '河北省高速公路荣乌管理处', '1', null, null, '正+');
insert into SYS_USER_IN_JOB (id, user_id, org_id, org_name, job_id, primary_org, charge, job_name)
values ('55027BD7F53B49FAA44D567DA15A610B', '5A3CC85138602A5EE050000D031F5745', 'SF001107002004', '鸡鸣驿站', '1', null, null, '正+');
insert into SYS_USER_IN_JOB (id, user_id, org_id, org_name, job_id, primary_org, charge, job_name)
values ('B0B16C3BB39E4703922E57CEDB4EE495', '5A3CC85138602A5EE050000D031F5745', 'GL001107', '京张公司', '1', null, null, '正+');
insert into SYS_USER_IN_JOB (id, user_id, org_id, org_name, job_id, primary_org, charge, job_name)
values ('2F8783F584B84500BC1AF5FCEC3594D2', '5A3CC851385F2A5EE050000D031F5745', 'SF001107002004', '鸡鸣驿站', '1', null, null, '正+');
insert into SYS_USER_IN_JOB (id, user_id, org_id, org_name, job_id, primary_org, charge, job_name)
values ('254D56C3E51E4FC6846E9BEB6A30A983', '5A3CC85138602A5EE050000D031F5745', 'SF001107002', '京张收费科', '1', null, null, '正+');
insert into SYS_USER_IN_JOB (id, user_id, org_id, org_name, job_id, primary_org, charge, job_name)
values ('FC8E8140F8C940F2B0C3C617B80C6F9E', '5A3CC85138612A5EE050000D031F5745', 'SF001107002004', '鸡鸣驿站', '1', null, null, '正+');
insert into SYS_USER_IN_JOB (id, user_id, org_id, org_name, job_id, primary_org, charge, job_name)
values ('A2263ED128CB47139EC4D770B45E5EAC', '0c916a2e482f421da83fa399a6071f23', 'GL001', '河北省高速公路管理局', '3', null, null, '喽啰9909');
insert into SYS_USER_IN_JOB (id, user_id, org_id, org_name, job_id, primary_org, charge, job_name)
values ('0560A94BC32A4722AC13E681D1AC8021', '5A3CC85138642A5EE050000D031F5745', 'SF001106002003', '东湾站', '1', null, null, 'AAAcAlAAHAAACwPAAF');
insert into SYS_USER_IN_JOB (id, user_id, org_id, org_name, job_id, primary_org, charge, job_name)
values ('E882D405EADD4F8BB84557D40EFE1AEC', '5A3CC85138652A5EE050000D031F5745', 'SF001106002003', '东湾站', '1', null, null, 'AAAcAlAAHAAACwPAAG');
insert into SYS_USER_IN_JOB (id, user_id, org_id, org_name, job_id, primary_org, charge, job_name)
values ('BE704A1E811D49C79CE25F3A49E51686', '5A3CC85138662A5EE050000D031F5745', 'SF001106002003', '东湾站', '1', null, null, 'AAAcAlAAHAAACwPAAH');
insert into SYS_USER_IN_JOB (id, user_id, org_id, org_name, job_id, primary_org, charge, job_name)
values ('B233807124D14BB985F35F8377AF46CE', '5A3CC85138672A5EE050000D031F5745', 'SF001106002003', '东湾站', '1', null, null, 'AAAcAlAAHAAACwPAAI');
insert into SYS_USER_IN_JOB (id, user_id, org_id, org_name, job_id, primary_org, charge, job_name)
values ('F8F0F06FAB5D46B1917FF801DC8F0E92', '5A3CC85138682A5EE050000D031F5745', 'SF001106002003', '东湾站', '1', null, null, 'AAAcAlAAHAAACwPAAJ');
insert into SYS_USER_IN_JOB (id, user_id, org_id, org_name, job_id, primary_org, charge, job_name)
values ('9FE2C8A103A94B28A24CF8EEF61C3D18', '5A3CC85138662A5EE050000D031F5745', 'SF001106002', '廊涿收费科', '1', null, null, 'AAAcAlAAHAAACwPAAR');
insert into SYS_USER_IN_JOB (id, user_id, org_id, org_name, job_id, primary_org, charge, job_name)
values ('81ABD904462E4F8A8D02CF8A4CD48C05', '5A3CC85138672A5EE050000D031F5745', 'SF001106002', '廊涿收费科', '1', null, null, 'AAAcAlAAHAAACwPAAS');
insert into SYS_USER_IN_JOB (id, user_id, org_id, org_name, job_id, primary_org, charge, job_name)
values ('B1E24E60A8894AF79CFFB9F49FE732C2', '5A3CC85138682A5EE050000D031F5745', 'SF001106002', '廊涿收费科', '1', null, null, 'AAAcAlAAHAAACwPAAT');
insert into SYS_USER_IN_JOB (id, user_id, org_id, org_name, job_id, primary_org, charge, job_name)
values ('99AB8D216E414C76A59D377828704CA9', '5A3CC85138692A5EE050000D031F5745', 'SF001106002', '廊涿收费科', '1', null, null, 'AAAcAlAAHAAACwPAAU');
insert into SYS_USER_IN_JOB (id, user_id, org_id, org_name, job_id, primary_org, charge, job_name)
values ('176E4DCD30A44D2A91301111F3E70177', '5A3CC851386A2A5EE050000D031F5745', 'SF001106002', '廊涿收费科', '1', null, null, 'AAAcAlAAHAAACwPAAV');
insert into SYS_USER_IN_JOB (id, user_id, org_id, org_name, job_id, primary_org, charge, job_name)
values ('5586D461A8734E8887AA64F3B9DBAA50', '5A3CC85138672A5EE050000D031F5745', 'SF001106002002', '高官庄站', '3', null, null, 'AAAcAlAAHAAACwPAAW');
insert into SYS_USER_IN_JOB (id, user_id, org_id, org_name, job_id, primary_org, charge, job_name)
values ('37F89DE4F17F45B3802796F423DAB2E4', '5A3CC85138682A5EE050000D031F5745', 'SF001106002002', '高官庄站', '3', null, null, 'AAAcAlAAHAAACwPAAX');
commit;
prompt 33 records loaded
prompt Loading SYS_USER_IN_ROLE...
insert into SYS_USER_IN_ROLE (user_id, role_id, deal_user_id, last_update_time, user_role_id)
values ('1', '2bfa89493e1640ecad79627ce7846e76', '1', to_date('30-05-2019', 'dd-mm-yyyy'), '119AB9C369C64D2DBE47806C94B132EA');
insert into SYS_USER_IN_ROLE (user_id, role_id, deal_user_id, last_update_time, user_role_id)
values ('7f419419464a4d3aad9d9d9393c9488f', '2bfa89493e1640ecad79627ce7846e76', '1', to_date('27-06-2019', 'dd-mm-yyyy'), 'DD79D7EA816D472F9F21297C1DA6974B');
insert into SYS_USER_IN_ROLE (user_id, role_id, deal_user_id, last_update_time, user_role_id)
values ('7f419419464a4d3aad9d9d9393c9488f', '5e813bb7e3fb4fac9cabf69f527a168b', '1', to_date('27-06-2019', 'dd-mm-yyyy'), 'D4EE5D2C96A1466A94BF5281205A35AC');
insert into SYS_USER_IN_ROLE (user_id, role_id, deal_user_id, last_update_time, user_role_id)
values ('ed809a11071841939f9b4cc7465c75d3', '57961d6e24ed43a1b82c9992026c7dfe', '1', to_date('08-07-2019', 'dd-mm-yyyy'), 'F987DF6F4A0B425B988C8432F04AB23F');
insert into SYS_USER_IN_ROLE (user_id, role_id, deal_user_id, last_update_time, user_role_id)
values ('5', '1', '1', to_date('26-06-2017', 'dd-mm-yyyy'), '119AB9C369C64D2DBE47806C94B1C2EA');
insert into SYS_USER_IN_ROLE (user_id, role_id, deal_user_id, last_update_time, user_role_id)
values ('5', '8d216dc08c454963bb946e28416078c7', '1', to_date('26-06-2017', 'dd-mm-yyyy'), '79768F2FFE6348A6BCE8D58D665DB75F');
insert into SYS_USER_IN_ROLE (user_id, role_id, deal_user_id, last_update_time, user_role_id)
values ('5', '431ba2fde66b4464be96df99af5f459c', '1', to_date('26-06-2017', 'dd-mm-yyyy'), '8F87B6C3942F4D3DA067ED5153580DE9');
insert into SYS_USER_IN_ROLE (user_id, role_id, deal_user_id, last_update_time, user_role_id)
values ('1', '93ee0afd4cec4715ab70f36f7f7abef5', '1', to_date('03-08-2017', 'dd-mm-yyyy'), '73CFD629A01E435E9901E286AF985336');
insert into SYS_USER_IN_ROLE (user_id, role_id, deal_user_id, last_update_time, user_role_id)
values ('5d5f6982242f4f1c9484d5b8ef881841', 'dbfed8f8c68640ae96780aff97a7aab8', '1', to_date('01-08-2017', 'dd-mm-yyyy'), '941E18B2C29F4D0EB54DA982D0E93933');
insert into SYS_USER_IN_ROLE (user_id, role_id, deal_user_id, last_update_time, user_role_id)
values ('89095d23ab124852851467d517a416c3', '176e35511fb949d2a3d64b0d3202b1ca', '1', to_date('03-02-2018', 'dd-mm-yyyy'), '644C42FC20456E39E053D4F8020D3AC9');
insert into SYS_USER_IN_ROLE (user_id, role_id, deal_user_id, last_update_time, user_role_id)
values ('5', '642cbf9c585a458283a16c73c0e9365b', '1', to_date('26-06-2017', 'dd-mm-yyyy'), '1C417EA941274D4F90BBEB1A7D4C7E6F');
insert into SYS_USER_IN_ROLE (user_id, role_id, deal_user_id, last_update_time, user_role_id)
values ('92b168da4ff3464686ebc2568dff7890', '93ee0afd4cec4715ab70f36f7f7abef5', '1', to_date('22-08-2018', 'dd-mm-yyyy'), '94616DB46764441E89CFEC1DCD8CEEC5');
insert into SYS_USER_IN_ROLE (user_id, role_id, deal_user_id, last_update_time, user_role_id)
values ('0c916a2e482f421da83fa399a6071f23', '5e813bb7e3fb4fac9cabf69f527a168b', '1', to_date('03-12-2018', 'dd-mm-yyyy'), 'B806B4AE431C46A79BCD8EDC32D1AD87');
insert into SYS_USER_IN_ROLE (user_id, role_id, deal_user_id, last_update_time, user_role_id)
values ('0c916a2e482f421da83fa399a6071f23', '93ee0afd4cec4715ab70f36f7f7abef5', '1', to_date('03-12-2018', 'dd-mm-yyyy'), '63BE8CD0A3F24902B24F4D0A9ACAC958');
insert into SYS_USER_IN_ROLE (user_id, role_id, deal_user_id, last_update_time, user_role_id)
values ('fccf2fddba1b4b2a92351eb06023f2b7', '2bfa89493e1640ecad79627ce7824e76', 'fccf2fddba1b4b2a92351eb06023f2b7', to_date('20-07-2018', 'dd-mm-yyyy'), '6CC21D1D16A946D4A0D755076C0523DB');
insert into SYS_USER_IN_ROLE (user_id, role_id, deal_user_id, last_update_time, user_role_id)
values ('e0d7646032e745e48883201701057bc0', '2bfa89493e1640ecad79627ce7846e76', '1', to_date('06-06-2019', 'dd-mm-yyyy'), 'A930398E71B94106B345E2252647647A');
insert into SYS_USER_IN_ROLE (user_id, role_id, deal_user_id, last_update_time, user_role_id)
values ('e0d7646032e745e48883201701057bc0', '93ee0afd4cec4715ab70f36f7f7abef5', '1', to_date('06-06-2019', 'dd-mm-yyyy'), 'BD953BC6CCF94D969D3AC04174A832A5');
commit;
prompt 17 records loaded
prompt Loading SYS_USER_SETTING...
insert into SYS_USER_SETTING (id, user_id, act_type, act_name, act_value, atc_desc, deal_user_id, last_update_time)
values ('09c4d6eafdc448d3997195ab7832ee5b', '1', null, 'remindCanShow', '1', null, '1', to_date('20-06-2019 10:58:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_USER_SETTING (id, user_id, act_type, act_name, act_value, atc_desc, deal_user_id, last_update_time)
values ('f801768eb37149cfbeb29b39951065a2', '1', null, 'remindAlertWinPos', '1', null, '1', to_date('20-06-2019 10:58:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_USER_SETTING (id, user_id, act_type, act_name, act_value, atc_desc, deal_user_id, last_update_time)
values ('80f2f53745a5422ca0db59c2a3e287fe', '1', null, 'remindAlertWinSize', '1', null, '1', to_date('20-06-2019 10:58:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_USER_SETTING (id, user_id, act_type, act_name, act_value, atc_desc, deal_user_id, last_update_time)
values ('f2875c04e70f420d8b8c455b28fb24d9', '1', null, 'remindCanAlertRemind', '0', null, '1', to_date('20-06-2019 10:58:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_USER_SETTING (id, user_id, act_type, act_name, act_value, atc_desc, deal_user_id, last_update_time)
values ('00adfc1bd4334a66b811d3883bdea92d', '1', null, 'scrEventInfoServiceRemind', '99,22,11,23,12,13,14,15,19,-99,1,2,3,4,5,6,7,8,9,20,21,10', null, '1', to_date('20-06-2019 10:58:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_USER_SETTING (id, user_id, act_type, act_name, act_value, atc_desc, deal_user_id, last_update_time)
values ('0ad513d37cf5414f8829044641d7d3d2', '1', null, 'remindCanVoiceRemind', '1', null, '1', to_date('20-06-2019 10:58:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_USER_SETTING (id, user_id, act_type, act_name, act_value, atc_desc, deal_user_id, last_update_time)
values ('ca760e41f7854f1ab306d7511f0b4f55', '1', null, 'systemAlarmServiceRemind', '00020001,20004,00020003,00020002,00010003,30004,30003,10009,00030002,0002,00030001,0003,00010002,30011,0001,30010,30009,30006,30005,30008,10006,30007', null, '1', to_date('20-06-2019 10:58:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_USER_SETTING (id, user_id, act_type, act_name, act_value, atc_desc, deal_user_id, last_update_time)
values ('1bb6b727269049de9c1e0e89af2392c9', 'e0d7646032e745e48883201701057bc0', null, 'remindCanShow', '1', null, 'e0d7646032e745e48883201701057bc0', to_date('21-08-2019 15:20:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_USER_SETTING (id, user_id, act_type, act_name, act_value, atc_desc, deal_user_id, last_update_time)
values ('2c872a6ce8cc487ebd7dc96f99c69e48', 'e0d7646032e745e48883201701057bc0', null, 'remindAlertWinPos', '0', null, 'e0d7646032e745e48883201701057bc0', to_date('21-08-2019 15:20:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_USER_SETTING (id, user_id, act_type, act_name, act_value, atc_desc, deal_user_id, last_update_time)
values ('1c1cc4fd29e640cb853af34e098d7cee', 'e0d7646032e745e48883201701057bc0', null, 'remindAlertWinSize', '0', null, 'e0d7646032e745e48883201701057bc0', to_date('21-08-2019 15:20:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_USER_SETTING (id, user_id, act_type, act_name, act_value, atc_desc, deal_user_id, last_update_time)
values ('3150536b89184f939e163ae029763c41', 'e0d7646032e745e48883201701057bc0', null, 'remindCanAlertRemind', '0', null, 'e0d7646032e745e48883201701057bc0', to_date('21-08-2019 15:20:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_USER_SETTING (id, user_id, act_type, act_name, act_value, atc_desc, deal_user_id, last_update_time)
values ('0325ae46485b49b094211cd8a7f339fd', 'e0d7646032e745e48883201701057bc0', null, 'scrEventInfoServiceRemind', '99,22,11,23,12,13,14,15,19,-99,1,2,3,4,5,6,7,8,9,20,21,10', null, 'e0d7646032e745e48883201701057bc0', to_date('21-08-2019 15:20:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_USER_SETTING (id, user_id, act_type, act_name, act_value, atc_desc, deal_user_id, last_update_time)
values ('9aaed15918ee455f94ecf8e4a235e05a', 'e0d7646032e745e48883201701057bc0', null, 'remindCanVoiceRemind', '1', null, 'e0d7646032e745e48883201701057bc0', to_date('21-08-2019 15:20:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_USER_SETTING (id, user_id, act_type, act_name, act_value, atc_desc, deal_user_id, last_update_time)
values ('012dd8644a28411fb1bfb0688e0ea256', 'e0d7646032e745e48883201701057bc0', null, 'systemAlarmServiceRemind', '00020001,20004,00020003,00020002,00010003,30004,30003,10009,00030002,0002,00030001,0003,00010002,30011,0001,30010,30009,30006,30005,30008,10006,30007', null, 'e0d7646032e745e48883201701057bc0', to_date('21-08-2019 15:20:44', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 14 records loaded
prompt Loading SYS_USER_SHORTCUT...
prompt Table is empty
prompt Loading SYS_USER_UNDER...
prompt Table is empty
 
prompt Enabling triggers for DM_ALARM_LEVEL...
alter table DM_ALARM_LEVEL enable all triggers;
prompt Enabling triggers for DM_BAY_CAMERA_INFO...
alter table DM_BAY_CAMERA_INFO enable all triggers;
prompt Enabling triggers for DM_CMS_FEATURE...
alter table DM_CMS_FEATURE enable all triggers;
prompt Enabling triggers for DM_CMS_FONT...
alter table DM_CMS_FONT enable all triggers;
prompt Enabling triggers for DM_CMS_IO_STYLE...
alter table DM_CMS_IO_STYLE enable all triggers;
prompt Enabling triggers for DM_CMS_SHOW_STYLE...
alter table DM_CMS_SHOW_STYLE enable all triggers;
prompt Enabling triggers for DM_DATA_EXCHANGER...
alter table DM_DATA_EXCHANGER enable all triggers;
prompt Enabling triggers for DM_DEVICE_IN_POWER...
alter table DM_DEVICE_IN_POWER enable all triggers;
prompt Enabling triggers for DM_DEVICE_IN_SERVER...
alter table DM_DEVICE_IN_SERVER enable all triggers;
prompt Enabling triggers for DM_DEVICE_TYPE...
alter table DM_DEVICE_TYPE enable all triggers;
prompt Enabling triggers for DM_DEVICE_ORDER_TYPE...
alter table DM_DEVICE_ORDER_TYPE enable all triggers;
prompt Enabling triggers for DM_DEVICE_PROTOCAL...
alter table DM_DEVICE_PROTOCAL enable all triggers;
prompt Enabling triggers for DM_DEVICE_STATUS...
alter table DM_DEVICE_STATUS enable all triggers;
prompt Enabling triggers for DM_DIRECTION...
alter table DM_DIRECTION enable all triggers;
prompt Enabling triggers for DM_EM_TYPE...
alter table DM_EM_TYPE enable all triggers;
prompt Enabling triggers for DM_EVENT_TRAFFIC_STATUS...
alter table DM_EVENT_TRAFFIC_STATUS enable all triggers;
prompt Enabling triggers for DM_EVENT_TYPE...
alter table DM_EVENT_TYPE enable all triggers;
prompt Enabling triggers for DM_EVENT_TYPE1...
alter table DM_EVENT_TYPE1 enable all triggers;
prompt Enabling triggers for DM_EVENT_TYPE_PLAN...
alter table DM_EVENT_TYPE_PLAN enable all triggers;
prompt Enabling triggers for DM_FACTORY...
alter table DM_FACTORY enable all triggers;
prompt Enabling triggers for DM_INNER_ORG...
alter table DM_INNER_ORG enable all triggers;
prompt Enabling triggers for DM_OBJ_STATUS...
alter table DM_OBJ_STATUS enable all triggers;
prompt Enabling triggers for DM_ORG...
alter table DM_ORG enable all triggers;
prompt Enabling triggers for DM_ORG_EXPORT...
alter table DM_ORG_EXPORT enable all triggers;
prompt Enabling triggers for DM_ORG_EXT...
alter table DM_ORG_EXT enable all triggers;
prompt Enabling triggers for DM_ORG_TYPE...
alter table DM_ORG_TYPE enable all triggers;
prompt Enabling triggers for DM_PROVINCE_INFO...
alter table DM_PROVINCE_INFO enable all triggers;
prompt Enabling triggers for DM_ROAD...
alter table DM_ROAD enable all triggers;
prompt Enabling triggers for DM_ROAD_CALLCENTER...
alter table DM_ROAD_CALLCENTER enable all triggers;
prompt Enabling triggers for DM_ROAD_CONDITION_TYPE...
alter table DM_ROAD_CONDITION_TYPE enable all triggers;
prompt Enabling triggers for DM_ROAD_DIRECTION...
alter table DM_ROAD_DIRECTION enable all triggers;
prompt Enabling triggers for DM_ROAD_NET...
alter table DM_ROAD_NET enable all triggers;
prompt Enabling triggers for DM_ROAD_TYPE...
alter table DM_ROAD_TYPE enable all triggers;
prompt Enabling triggers for DM_SUB_SERVICESTATION_PROFILE...
alter table DM_SUB_SERVICESTATION_PROFILE enable all triggers;
prompt Enabling triggers for DM_SURFACE_CONDITION...
alter table DM_SURFACE_CONDITION enable all triggers;
prompt Enabling triggers for DM_SYSTEM_ALARM_TYPE...
alter table DM_SYSTEM_ALARM_TYPE enable all triggers;
prompt Enabling triggers for DM_THRESHOLD_FEILD...
alter table DM_THRESHOLD_FEILD enable all triggers;
prompt Enabling triggers for SYSTEM_ALARM_INFO...
alter table SYSTEM_ALARM_INFO enable all triggers;
prompt Enabling triggers for SYS_CCTV_FOR_ROLE...
alter table SYS_CCTV_FOR_ROLE enable all triggers;
prompt Enabling triggers for SYS_DICT...
alter table SYS_DICT enable all triggers;
prompt Enabling triggers for SYS_DICT_TYPE...
alter table SYS_DICT_TYPE enable all triggers;
prompt Enabling triggers for SYS_JOB...
alter table SYS_JOB enable all triggers;
prompt Enabling triggers for SYS_JOB_IN_ORG...
alter table SYS_JOB_IN_ORG enable all triggers;
prompt Enabling triggers for SYS_PARAM...
alter table SYS_PARAM enable all triggers;
prompt Enabling triggers for SYS_PRIVILEGE_FOR_ROLE...
alter table SYS_PRIVILEGE_FOR_ROLE enable all triggers;
prompt Enabling triggers for SYS_RESOURCE...
alter table SYS_RESOURCE enable all triggers;
prompt Enabling triggers for SYS_ROLE...
alter table SYS_ROLE enable all triggers;
prompt Enabling triggers for SYS_TASK...
alter table SYS_TASK enable all triggers;
prompt Enabling triggers for SYS_TASK_EXEC_RECORD...
alter table SYS_TASK_EXEC_RECORD enable all triggers;
prompt Enabling triggers for SYS_TASK_INFO...
alter table SYS_TASK_INFO enable all triggers;
prompt Enabling triggers for SYS_USER...
alter table SYS_USER enable all triggers;
prompt Enabling triggers for SYS_USER_IN_JOB...
alter table SYS_USER_IN_JOB enable all triggers;
prompt Enabling triggers for SYS_USER_IN_ROLE...
alter table SYS_USER_IN_ROLE enable all triggers;
prompt Enabling triggers for SYS_USER_SETTING...
alter table SYS_USER_SETTING enable all triggers;
prompt Enabling triggers for SYS_USER_SHORTCUT...
alter table SYS_USER_SHORTCUT enable all triggers;
prompt Enabling triggers for SYS_USER_UNDER...
alter table SYS_USER_UNDER enable all triggers;
set feedback on
set define on
prompt Done.
