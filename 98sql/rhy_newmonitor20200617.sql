prompt PL/SQL Developer import file
prompt Created on 2020年6月17日 by Administrator
set feedback off
set define off
prompt Creating ALARM_INFO...
create table ALARM_INFO
(
  alarm_info_id        VARCHAR2(32) default sys_guid() not null,
  parent_id            VARCHAR2(32) default -1 not null,
  road_segment_id      VARCHAR2(20) not null,
  organization_id      VARCHAR2(20),
  new_direction_ids    VARCHAR2(20),
  position             VARCHAR2(500) not null,
  start_stub           NUMBER(10,3),
  end_stub             NUMBER(10,3),
  stub                 VARCHAR2(100),
  district_id          CHAR(6),
  event_type_id        VARCHAR2(8) not null,
  person               VARCHAR2(50) not null,
  discovery_time       DATE not null,
  calculate_time       NUMBER(4,1),
  reality_recover_time DATE,
  queue_length         NUMBER(3,1) default 0,
  lane_no              NUMBER(1),
  enter_user_id        VARCHAR2(50),
  telephone            VARCHAR2(20),
  accident_des         VARCHAR2(500),
  old_accident_des     VARCHAR2(500),
  collect_type         NUMBER(1) default 2 not null,
  data_exchanger_id    VARCHAR2(22),
  create_time          DATE default sysdate not null,
  information_type     VARCHAR2(10),
  information_reason   VARCHAR2(10),
  is_other_provinces   NUMBER(1) default 0 not null,
  audit_status         NUMBER(1) default 0 not null,
  audit_desc           VARCHAR2(100),
  audit_time           DATE,
  audit_user_name      VARCHAR2(20),
  audit_user_id        VARCHAR2(32),
  dealing_desc         VARCHAR2(2000),
  roadbed_loss_num     NUMBER(6),
  roadbed_loss_mon     NUMBER(5),
  surface_loss_num     NUMBER(6),
  surface_loss_mon     NUMBER(5),
  bridge_loss_num      NUMBER(6),
  bridge_loss_mon      NUMBER(5),
  culvert_loss_num     NUMBER(6),
  culvert_loss_mon     NUMBER(5),
  security_loss_num    NUMBER(6),
  security_loss_mon    NUMBER(5),
  other_loss_num       NUMBER(6),
  other_loss_mon       NUMBER(5),
  sum_loss_mon         NUMBER(6),
  injuries_num         NUMBER(3),
  death_num            NUMBER(3),
  crowds_num           NUMBER(3),
  car_destroy_num      NUMBER(3),
  car_detention_num    NUMBER(3),
  is_end               NUMBER(1) default 0 not null,
  audit_cost           NUMBER(6),
  child_num            NUMBER(3) default 1 not null,
  open_count           NUMBER(3) default 0 not null,
  upload_cost          NUMBER(6),
  format_type          VARCHAR2(5),
  accident_remark      VARCHAR2(500),
  longtime_flag        NUMBER(1) default 0,
  recover_msg          VARCHAR2(500),
  administrative_type  NUMBER(1) default 0 not null,
  event_name           VARCHAR2(30),
  dissent              VARCHAR2(300),
  insert_db_time       DATE
)
;
comment on table ALARM_INFO
  is '报警（事故）信息表';
comment on column ALARM_INFO.alarm_info_id
  is '记录ID';
comment on column ALARM_INFO.parent_id
  is '衍生路况ID(当路况有衍生才有意义)';
comment on column ALARM_INFO.road_segment_id
  is '路段编号';
comment on column ALARM_INFO.organization_id
  is '管理单位。要求所有的管理机构都应设置为“路段管理处”等管理机构';
comment on column ALARM_INFO.new_direction_ids
  is '新方向id集合，用逗号分割';
comment on column ALARM_INFO.position
  is '阻断（事件）位置：阻断（事件）发生的具体路段名、桥名、隧道名或附近有命名编号的主要设施名称，如“宜章段曹田桥”、“宜章收费站”';
comment on column ALARM_INFO.start_stub
  is '起始桩号';
comment on column ALARM_INFO.end_stub
  is '终止桩号';
comment on column ALARM_INFO.stub
  is '桩号范围：可输入多段桩号范围';
comment on column ALARM_INFO.district_id
  is '行政区划编码：阻断（事故）发生路段所在市、区（县）最新行政区划代码';
comment on column ALARM_INFO.event_type_id
  is '路况类型id';
comment on column ALARM_INFO.person
  is '填报人';
comment on column ALARM_INFO.discovery_time
  is '发现时间';
comment on column ALARM_INFO.calculate_time
  is '单位：小时。预计恢复时间';
comment on column ALARM_INFO.reality_recover_time
  is '实际恢复通车事件';
comment on column ALARM_INFO.queue_length
  is '排队长度,单位为：公里';
comment on column ALARM_INFO.lane_no
  is '事故车道：从同方向最左侧车道（超车道）以1开始编号，若为 0 则不分车道；';
comment on column ALARM_INFO.enter_user_id
  is '人工录入用户';
comment on column ALARM_INFO.telephone
  is '联系电话';
comment on column ALARM_INFO.accident_des
  is '现场情况描述：包括阻断（事件）发生时间、发生过程、影响范围、发展趋势。';
comment on column ALARM_INFO.old_accident_des
  is '路段上报原稿';
comment on column ALARM_INFO.collect_type
  is '1:数据交换2：人工录入';
comment on column ALARM_INFO.data_exchanger_id
  is '数据交换参与者代码';
comment on column ALARM_INFO.create_time
  is '入库时间';
comment on column ALARM_INFO.information_type
  is '信息类型：1，交通管制 2，交通事故 3，拥堵信息 4，施工信息 0，正常信息';
comment on column ALARM_INFO.information_reason
  is '路况原因：(当INFORMATION_TYPE=1或3时有意义)1，恶劣天气 2，交警管制 3，事故管制 4，道路施工 5，车流量大 6，车辆故障 7，突发事件 8，设备故障';
comment on column ALARM_INFO.is_other_provinces
  is '是否为外省所致：0，否 1，是';
comment on column ALARM_INFO.audit_status
  is '上传标志。0：待审核；1：审核未通过；2：审核通过不发布；3：审核通过已发布；';
comment on column ALARM_INFO.audit_desc
  is '审核描述';
comment on column ALARM_INFO.audit_time
  is '审核时间';
comment on column ALARM_INFO.dealing_desc
  is '处置措施：包括抢通方案、疏散方案、绕行方案三方面，由于计划性事件引起的交通阻断，只填写绕行方案；由于突发性事件致使公路设施毁坏引起的交通阻断，必须填写抢通方案和绕行方案；事发现场出现大量车辆或人员积聚，或因危险品泄漏等原因会给经过车辆和人员造成危险的，必须填写疏散方案。';
comment on column ALARM_INFO.roadbed_loss_num
  is '路基损失数量：单位：m3/Km';
comment on column ALARM_INFO.roadbed_loss_mon
  is '路基损失金额：单位：万元';
comment on column ALARM_INFO.surface_loss_num
  is '路面损失数量：单位：m2/Km';
comment on column ALARM_INFO.surface_loss_mon
  is '路面损失金额：单位：万元';
comment on column ALARM_INFO.bridge_loss_num
  is '桥梁损失数量：单位：延米/座';
comment on column ALARM_INFO.bridge_loss_mon
  is '桥梁损失金额：单位：万元';
comment on column ALARM_INFO.culvert_loss_num
  is '涵洞损失数量：单位：道';
comment on column ALARM_INFO.culvert_loss_mon
  is '涵洞损失金额：单位：万元';
comment on column ALARM_INFO.security_loss_num
  is '防护工程损失数量：单位：m3';
comment on column ALARM_INFO.security_loss_mon
  is '防护工程损失金额：单位：万元';
comment on column ALARM_INFO.other_loss_num
  is '其它路产损失数量';
comment on column ALARM_INFO.other_loss_mon
  is '其它路产损失金额：单位：万元';
comment on column ALARM_INFO.sum_loss_mon
  is '累计损失金额：单位：万元';
comment on column ALARM_INFO.injuries_num
  is '受伤人数：人';
comment on column ALARM_INFO.death_num
  is '死亡人数：人';
comment on column ALARM_INFO.crowds_num
  is '聚众人数：人';
comment on column ALARM_INFO.car_destroy_num
  is '毁坏车辆数：辆';
comment on column ALARM_INFO.car_detention_num
  is '滞留车辆数：辆';
comment on column ALARM_INFO.is_end
  is '是否结束：0：开启状态，1：结束状态';
comment on column ALARM_INFO.audit_cost
  is '审核用时，单位：秒';
comment on column ALARM_INFO.child_num
  is '包含子路况的数量';
comment on column ALARM_INFO.open_count
  is '开启的次数';
comment on column ALARM_INFO.upload_cost
  is '上报用时';
comment on column ALARM_INFO.format_type
  is '格式化类型';
comment on column ALARM_INFO.accident_remark
  is '上报信息的备注（恢复路况时作为保留恢复内容使用，主路况上报时，作为辅助说明使用）';
comment on column ALARM_INFO.longtime_flag
  is '0:非长期信息 1:长期信息';
comment on column ALARM_INFO.recover_msg
  is '恢复内容';
comment on column ALARM_INFO.administrative_type
  is '冗余：所属路段行政类型';
comment on column ALARM_INFO.event_name
  is '路况类型';
comment on column ALARM_INFO.dissent
  is '异议描述';
create index IDX_PARENT_ID on ALARM_INFO (PARENT_ID)
 ;
alter table ALARM_INFO
  add constraint PK_ALARM_INFO primary key (ALARM_INFO_ID)
  ;

prompt Creating ALARM_INFO_GRADE...
create table ALARM_INFO_GRADE
(
  alarm_info_id      VARCHAR2(32) not null,
  road_id            VARCHAR2(20),
  road_ownership     NUMBER(2),
  information_type   VARCHAR2(10),
  information_reason VARCHAR2(10),
  is_other_provinces NUMBER(1),
  org_id             VARCHAR2(32),
  upload_type        NUMBER(1),
  space_time         NUMBER(5),
  goal_up_type       NUMBER(3),
  goal_space_time    NUMBER(3),
  goal_msg_info      NUMBER(3),
  goal_all           NUMBER(3),
  error_reason       VARCHAR2(2048),
  up_perser_name     VARCHAR2(10),
  auditer_name       VARCHAR2(10),
  remark             VARCHAR2(2048),
  update_time        DATE
)
;
comment on table ALARM_INFO_GRADE
  is '省中心审核路况评分表';
comment on column ALARM_INFO_GRADE.alarm_info_id
  is '路况表id';
comment on column ALARM_INFO_GRADE.road_id
  is '路段id';
comment on column ALARM_INFO_GRADE.road_ownership
  is '路段归属类型 同路段表ADMINISTRATIVE_TYPE';
comment on column ALARM_INFO_GRADE.information_type
  is '信息类型';
comment on column ALARM_INFO_GRADE.information_reason
  is '信息原因';
comment on column ALARM_INFO_GRADE.is_other_provinces
  is '是否外省所致';
comment on column ALARM_INFO_GRADE.org_id
  is '上报单位';
comment on column ALARM_INFO_GRADE.upload_type
  is '上报方式';
comment on column ALARM_INFO_GRADE.space_time
  is '上报时效（上报-发现,舍去小数）';
comment on column ALARM_INFO_GRADE.goal_up_type
  is '上报形式评分';
comment on column ALARM_INFO_GRADE.goal_space_time
  is '上报及时性评分';
comment on column ALARM_INFO_GRADE.goal_msg_info
  is '上报准确性评分';
comment on column ALARM_INFO_GRADE.goal_all
  is '总分';
comment on column ALARM_INFO_GRADE.error_reason
  is '扣分原因';
comment on column ALARM_INFO_GRADE.up_perser_name
  is '发布人';
comment on column ALARM_INFO_GRADE.auditer_name
  is '审核人';
comment on column ALARM_INFO_GRADE.remark
  is '备注';
alter table ALARM_INFO_GRADE
  add constraint PK_ALARM_INFO_GRADE primary key (ALARM_INFO_ID)
  ;

prompt Creating ALARM_INFO_OUTLINE...
create table ALARM_INFO_OUTLINE
(
  alarm_info_id    VARCHAR2(32) default sys_guid() not null,
  parent_alarm_id  VARCHAR2(32) not null,
  create_time      DATE default sysdate not null,
  outline_msg      VARCHAR2(500),
  road_id          VARCHAR2(20),
  occur_time       DATE,
  audit_status     NUMBER(1) default 0 not null,
  information_type VARCHAR2(10)
)
;
comment on table ALARM_INFO_OUTLINE
  is '路况概要内容表';
comment on column ALARM_INFO_OUTLINE.alarm_info_id
  is '记录ID';
comment on column ALARM_INFO_OUTLINE.create_time
  is '入库时间';
comment on column ALARM_INFO_OUTLINE.outline_msg
  is '概要内容';
comment on column ALARM_INFO_OUTLINE.road_id
  is '路段id';
comment on column ALARM_INFO_OUTLINE.occur_time
  is '发生时间（上报或者恢复时间）';
comment on column ALARM_INFO_OUTLINE.information_type
  is '冗余alarm表的字段';
alter table ALARM_INFO_OUTLINE
  add constraint PK_ALARM_INFO_OUTLINE primary key (ALARM_INFO_ID)
  ;

prompt Creating ALARM_INFO_PUBLISH_RECORD...
create table ALARM_INFO_PUBLISH_RECORD
(
  record_id    VARCHAR2(32) not null,
  alarm_id     VARCHAR2(32) not null,
  msg          VARCHAR2(1500) not null,
  send_way     NUMBER(1) not null,
  send_time    DATE default sysdate not null,
  send_user    VARCHAR2(32) not null,
  send_user_id VARCHAR2(32) not null,
  result_time  DATE,
  status       NUMBER(1),
  road_id      VARCHAR2(20),
  sort_no      NUMBER(1) default 0 not null,
  result_msg   VARCHAR2(200)
)
;
comment on column ALARM_INFO_PUBLISH_RECORD.record_id
  is '记录ID';
comment on column ALARM_INFO_PUBLISH_RECORD.alarm_id
  is '路况ID';
comment on column ALARM_INFO_PUBLISH_RECORD.msg
  is '发送内容';
comment on column ALARM_INFO_PUBLISH_RECORD.send_way
  is '发送方式 0:短信 1：外网  2：呼叫中心  3：大屏 4:服务区  9：审核状态更改';
comment on column ALARM_INFO_PUBLISH_RECORD.send_time
  is '发送时间';
comment on column ALARM_INFO_PUBLISH_RECORD.send_user
  is '发送人';
comment on column ALARM_INFO_PUBLISH_RECORD.send_user_id
  is '发送人ID';
comment on column ALARM_INFO_PUBLISH_RECORD.result_time
  is '命令执行时间';
comment on column ALARM_INFO_PUBLISH_RECORD.status
  is '命令执行状态，  0：创建未执行 1：执行中 2：执行成功   3：执行失败';
comment on column ALARM_INFO_PUBLISH_RECORD.road_id
  is '发送记录关联的路段id';
create index IDX_ALARM_INFO_ALARM_ID on ALARM_INFO_PUBLISH_RECORD (ALARM_ID)
 ;
alter table ALARM_INFO_PUBLISH_RECORD
  add constraint PK_ALARM_INFO_PUBLISH_RECORD primary key (RECORD_ID)
  ;

prompt Creating APP_CAMERA_PROFILE...
create table APP_CAMERA_PROFILE
(
  id               VARCHAR2(32) default SYS_GUID() not null,
  name             VARCHAR2(50) not null,
  type_id          VARCHAR2(10) not null,
  parent_id        VARCHAR2(40),
  is_controlled    NUMBER(1) not null,
  camera_id        VARCHAR2(200),
  obj_id           VARCHAR2(40),
  cctv_server_id   VARCHAR2(40),
  show_order       NUMBER default 0 not null,
  camera_type      NUMBER(1),
  flag             NUMBER(1) default 0,
  video_type       VARCHAR2(5),
  record_server_id VARCHAR2(40),
  server_type      NUMBER(5),
  platform_id      VARCHAR2(32)
)
;
comment on table APP_CAMERA_PROFILE
  is '盒子树';
comment on column APP_CAMERA_PROFILE.id
  is 'ID.为保证最终能生成一棵树，通常要保留一条ID为0000的记录';
comment on column APP_CAMERA_PROFILE.name
  is '名称';
comment on column APP_CAMERA_PROFILE.type_id
  is '类型。前2位含义：00-其它；01-设备；09-机构；';
comment on column APP_CAMERA_PROFILE.parent_id
  is '父组件ID。为-1时表明为根节点';
comment on column APP_CAMERA_PROFILE.is_controlled
  is '是否可控：0：不可控  1：可控，指云台摄像机';
comment on column APP_CAMERA_PROFILE.camera_id
  is '摄像机编号：指摄像机在相应视频系统中的编号';
comment on column APP_CAMERA_PROFILE.obj_id
  is '组件ID';
comment on column APP_CAMERA_PROFILE.cctv_server_id
  is '8所属视频服务器';
comment on column APP_CAMERA_PROFILE.show_order
  is '用于在生成设备树时定义同一层次结点的显示顺序，数值越小显示位置越靠前';
comment on column APP_CAMERA_PROFILE.camera_type
  is '摄像机编码类型：1:亚邦、2:中威、3:互信互通';
comment on column APP_CAMERA_PROFILE.flag
  is '有效标志。1：有效；0：无效';
comment on column APP_CAMERA_PROFILE.video_type
  is '视频信息类型。参照DM_VIDEO_TYPE表。';
comment on column APP_CAMERA_PROFILE.record_server_id
  is '视频录像服务器.当为叶结点时有意义，用于录像';
comment on column APP_CAMERA_PROFILE.server_type
  is '视频服务器平台标识';
comment on column APP_CAMERA_PROFILE.platform_id
  is '所直属视频平台的ID';
alter table APP_CAMERA_PROFILE
  add constraint PK_APP_CAMERA_PROFILE primary key (ID)
  ;

prompt Creating APP_CCTV_COLLECTION...
create table APP_CCTV_COLLECTION
(
  device_id        VARCHAR2(32) not null,
  road_id          VARCHAR2(32) not null,
  name             VARCHAR2(50) not null,
  sort_no          NUMBER default 0 not null,
  pic_url          VARCHAR2(500),
  last_update_time DATE not null,
  user_id          VARCHAR2(12) not null
)
;
comment on table APP_CCTV_COLLECTION
  is '收藏视频';
comment on column APP_CCTV_COLLECTION.device_id
  is '主键';
comment on column APP_CCTV_COLLECTION.road_id
  is '所属路段';
comment on column APP_CCTV_COLLECTION.name
  is '名称';
comment on column APP_CCTV_COLLECTION.sort_no
  is '显示顺序，数值越小显示位置越靠前';
comment on column APP_CCTV_COLLECTION.pic_url
  is '图片路径';
comment on column APP_CCTV_COLLECTION.last_update_time
  is '最近修改时间';
comment on column APP_CCTV_COLLECTION.user_id
  is '最近修改人';
alter table APP_CCTV_COLLECTION
  add constraint PK_APP_CCTV_COLLECTION primary key (DEVICE_ID)
  ;

prompt Creating APP_CCTV_EMERGENCY...
create table APP_CCTV_EMERGENCY
(
  id               VARCHAR2(32) default SYS_GUID() not null,
  name             VARCHAR2(50) not null,
  cctv_desc        VARCHAR2(500),
  pic_url          VARCHAR2(500),
  sort_no          NUMBER default 0 not null,
  flag             NUMBER(1) default 0,
  last_update_time DATE not null,
  user_id          VARCHAR2(12) not null,
  cctv_url         VARCHAR2(500)
)
;
comment on table APP_CCTV_EMERGENCY
  is '应急演练';
comment on column APP_CCTV_EMERGENCY.id
  is 'ID.为保证最终能生成一棵树，通常要保留一条ID为0000的记录';
comment on column APP_CCTV_EMERGENCY.name
  is '名称';
comment on column APP_CCTV_EMERGENCY.cctv_desc
  is '描述';
comment on column APP_CCTV_EMERGENCY.pic_url
  is '图片路径';
comment on column APP_CCTV_EMERGENCY.sort_no
  is '显示顺序，数值越小显示位置越靠前';
comment on column APP_CCTV_EMERGENCY.flag
  is '有效标志。1：有效；0：无效';
comment on column APP_CCTV_EMERGENCY.last_update_time
  is '最近修改时间';
comment on column APP_CCTV_EMERGENCY.user_id
  is '最近修改人';
comment on column APP_CCTV_EMERGENCY.cctv_url
  is '视频播放地址';
alter table APP_CCTV_EMERGENCY
  add constraint PK_APP_CCTV_EMERGENCY primary key (ID)
  ;

prompt Creating APP_CCTV_IN_ROLE...
create table APP_CCTV_IN_ROLE
(
  id               VARCHAR2(32) default SYS_GUID() not null,
  role_id          VARCHAR2(32) not null,
  cctvs            VARCHAR2(32) default 0 not null,
  last_update_time DATE not null,
  user_id          VARCHAR2(12) not null
)
;
comment on column APP_CCTV_IN_ROLE.id
  is '主键';
comment on column APP_CCTV_IN_ROLE.role_id
  is '角色ID';
comment on column APP_CCTV_IN_ROLE.cctvs
  is '目录ID';
comment on column APP_CCTV_IN_ROLE.last_update_time
  is '最近修改时间';
comment on column APP_CCTV_IN_ROLE.user_id
  is '最近修改人';
alter table APP_CCTV_IN_ROLE
  add constraint PK_APP_CCTV_IN_ROLE primary key (ID)
  ;

prompt Creating APP_CCTV_ROAD...
create table APP_CCTV_ROAD
(
  id               VARCHAR2(32) default SYS_GUID() not null,
  name             VARCHAR2(50) not null,
  sort_no          NUMBER default 0 not null,
  flag             NUMBER(1) default 0 not null,
  pic_url          VARCHAR2(500) not null,
  last_update_time DATE not null,
  user_id          VARCHAR2(12) not null
)
;
comment on table APP_CCTV_ROAD
  is '视频路段';
comment on column APP_CCTV_ROAD.id
  is 'ID.为保证最终能生成一棵树，通常要保留一条ID为0000的记录';
comment on column APP_CCTV_ROAD.name
  is '名称';
comment on column APP_CCTV_ROAD.sort_no
  is '显示顺序，数值越小显示位置越靠前';
comment on column APP_CCTV_ROAD.flag
  is '有效标志。1：有效；0：无效';
comment on column APP_CCTV_ROAD.pic_url
  is '图片路径';
comment on column APP_CCTV_ROAD.last_update_time
  is '最近修改时间';
comment on column APP_CCTV_ROAD.user_id
  is '最近修改人';
alter table APP_CCTV_ROAD
  add constraint PK_APP_CCTV_ROAD primary key (ID)
  ;

prompt Creating CCTV_CAMERA_LIVE...
create table CCTV_CAMERA_LIVE
(
  obj_id   VARCHAR2(40) not null,
  live_url VARCHAR2(32) not null,
  channel  NUMBER(5)
)
;
comment on table CCTV_CAMERA_LIVE
  is '直播';
comment on column CCTV_CAMERA_LIVE.obj_id
  is '组件ID';
comment on column CCTV_CAMERA_LIVE.live_url
  is '直播地址';
alter table CCTV_CAMERA_LIVE
  add constraint PK_CCTV_CAMERA_LIVE primary key (OBJ_ID)
  ;

prompt Creating CCTV_CAMERA_PROFILE...
create table CCTV_CAMERA_PROFILE
(
  id               VARCHAR2(32) default SYS_GUID() not null,
  name             VARCHAR2(50) not null,
  type_id          VARCHAR2(10) not null,
  parent_id        VARCHAR2(40),
  is_controlled    NUMBER(1) not null,
  camera_id        VARCHAR2(200),
  obj_id           VARCHAR2(40),
  cctv_server_id   VARCHAR2(40),
  show_order       NUMBER default 0 not null,
  camera_type      NUMBER(1),
  flag             NUMBER(1) default 0,
  video_type       VARCHAR2(5),
  record_server_id VARCHAR2(40),
  server_type      NUMBER(5),
  platform_id      VARCHAR2(32)
)
;
comment on table CCTV_CAMERA_PROFILE
  is '摄像机基础资料表';
comment on column CCTV_CAMERA_PROFILE.id
  is 'ID.为保证最终能生成一棵树，通常要保留一条ID为0000的记录';
comment on column CCTV_CAMERA_PROFILE.name
  is '名称';
comment on column CCTV_CAMERA_PROFILE.type_id
  is '类型。前2位含义：00-其它；01-设备；09-机构；';
comment on column CCTV_CAMERA_PROFILE.parent_id
  is '父组件ID。为-1时表明为根节点';
comment on column CCTV_CAMERA_PROFILE.is_controlled
  is '是否可控：0：不可控  1：可控，指云台摄像机';
comment on column CCTV_CAMERA_PROFILE.camera_id
  is '摄像机编号：指摄像机在相应视频系统中的编号';
comment on column CCTV_CAMERA_PROFILE.obj_id
  is '组件ID';
comment on column CCTV_CAMERA_PROFILE.cctv_server_id
  is '8所属视频服务器';
comment on column CCTV_CAMERA_PROFILE.show_order
  is '用于在生成设备树时定义同一层次结点的显示顺序，数值越小显示位置越靠前';
comment on column CCTV_CAMERA_PROFILE.camera_type
  is '摄像机编码类型：1:亚邦、2:中威、3:互信互通';
comment on column CCTV_CAMERA_PROFILE.flag
  is '有效标志。1：有效；0：无效';
comment on column CCTV_CAMERA_PROFILE.video_type
  is '视频信息类型。参照DM_VIDEO_TYPE表。';
comment on column CCTV_CAMERA_PROFILE.record_server_id
  is '视频录像服务器.当为叶结点时有意义，用于录像';
comment on column CCTV_CAMERA_PROFILE.server_type
  is '视频服务器平台标识';
comment on column CCTV_CAMERA_PROFILE.platform_id
  is '平台ID';
alter table CCTV_CAMERA_PROFILE
  add constraint PK_CCTV_CAMERA_PROFILE primary key (ID)
;

prompt Creating CCTV_CAMERA_SWITCH_MAPPING...
create table CCTV_CAMERA_SWITCH_MAPPING
(
  id            VARCHAR2(32) default SYS_GUID() not null,
  task_id       VARCHAR2(32) not null,
  area_group_id VARCHAR2(10) not null,
  obj_id        VARCHAR2(32),
  obj_type      NUMBER(1) default 1 not null,
  sort_no       NUMBER(6) default 0,
  valid         NUMBER(1) default 1 not null,
  cctv_id       VARCHAR2(32)
)
;
comment on table CCTV_CAMERA_SWITCH_MAPPING
  is '视频切换映射表';
comment on column CCTV_CAMERA_SWITCH_MAPPING.id
  is '主键';
comment on column CCTV_CAMERA_SWITCH_MAPPING.task_id
  is '切换任务ID';
comment on column CCTV_CAMERA_SWITCH_MAPPING.area_group_id
  is '区域组编号';
comment on column CCTV_CAMERA_SWITCH_MAPPING.obj_id
  is '对象编号：摄像机设备ID或屏幕区域编号';
comment on column CCTV_CAMERA_SWITCH_MAPPING.obj_type
  is '对象类型：0-大屏、1-摄像机';
comment on column CCTV_CAMERA_SWITCH_MAPPING.sort_no
  is '顺序';
comment on column CCTV_CAMERA_SWITCH_MAPPING.valid
  is '有效性：0-无效、1-有效';
comment on column CCTV_CAMERA_SWITCH_MAPPING.cctv_id
  is '对应cctv表的id';
alter table CCTV_CAMERA_SWITCH_MAPPING
  add constraint CCTV_CAMERA_SWITCH_MAPPING_PK primary key (ID)
;

prompt Creating CCTV_CAMERA_SWITCH_TASK...
create table CCTV_CAMERA_SWITCH_TASK
(
  id              VARCHAR2(32) not null,
  name            VARCHAR2(50) not null,
  type            NUMBER(1) default 1 not null,
  auto_start      NUMBER(1) default 1 not null,
  switch_interval NUMBER(6) default 30 not null,
  start_time      DATE,
  end_time        DATE,
  loop_type       NUMBER(3) default 0,
  valid           NUMBER(1) default 1 not null,
  user_id         VARCHAR2(12) not null,
  update_time     DATE default sysdate not null,
  max_split_num   NUMBER(2) default 0 not null
)
;
comment on table CCTV_CAMERA_SWITCH_TASK
  is '视频切换任务表';
comment on column CCTV_CAMERA_SWITCH_TASK.id
  is '任务ID';
comment on column CCTV_CAMERA_SWITCH_TASK.name
  is '任务名';
comment on column CCTV_CAMERA_SWITCH_TASK.type
  is '任务类型：0-其它、1-大屏切换、2-软解轮切';
comment on column CCTV_CAMERA_SWITCH_TASK.auto_start
  is '自动启动：0-手工、1-自动';
comment on column CCTV_CAMERA_SWITCH_TASK.switch_interval
  is '轮询间隔（单位：秒）';
comment on column CCTV_CAMERA_SWITCH_TASK.start_time
  is '启动时间';
comment on column CCTV_CAMERA_SWITCH_TASK.end_time
  is '结束时间';
comment on column CCTV_CAMERA_SWITCH_TASK.loop_type
  is '循环频度类型：0-无限循环、1到99-1到99次、901-每天、902-每2天、903-每3天、951-每周、952-每两周、961-每月、962-每两月、963-每季度';
comment on column CCTV_CAMERA_SWITCH_TASK.valid
  is '有效性：0-无效、1-有效';
comment on column CCTV_CAMERA_SWITCH_TASK.user_id
  is '记录修改人';
comment on column CCTV_CAMERA_SWITCH_TASK.update_time
  is '最近修改时间';
comment on column CCTV_CAMERA_SWITCH_TASK.max_split_num
  is '最大分屏数';
alter table CCTV_CAMERA_SWITCH_TASK
  add constraint CCTV_CAMERA_SWITCH_PK primary key (ID)
  ;

prompt Creating CCTV_DECODER_AREA_MAPPING...
create table CCTV_DECODER_AREA_MAPPING
(
  device_id    VARCHAR2(40) not null,
  area_id      VARCHAR2(10) not null,
  server_name  VARCHAR2(30),
  channel      VARCHAR2(5) not null,
  monitor_id   NUMBER(3),
  monitor_name VARCHAR2(20)
)
;
comment on table CCTV_DECODER_AREA_MAPPING
  is '解码器和大屏映射关系';
comment on column CCTV_DECODER_AREA_MAPPING.device_id
  is '解码器编码';
comment on column CCTV_DECODER_AREA_MAPPING.area_id
  is '区域编号';
comment on column CCTV_DECODER_AREA_MAPPING.server_name
  is '屏幕位置标识';
comment on column CCTV_DECODER_AREA_MAPPING.channel
  is '通道号';
comment on column CCTV_DECODER_AREA_MAPPING.monitor_id
  is '监视器编号';
comment on column CCTV_DECODER_AREA_MAPPING.monitor_name
  is '监视器名称';
alter table CCTV_DECODER_AREA_MAPPING
  add constraint AREA_ID_PK primary key (AREA_ID)
  ;

prompt Creating CCTV_DECODER_PROFILE...
create table CCTV_DECODER_PROFILE
(
  device_id      VARCHAR2(40) not null,
  device_desc    VARCHAR2(50) not null,
  decoder_id     VARCHAR2(200),
  cctv_server_id VARCHAR2(40),
  ip             VARCHAR2(20),
  decoder_type   NUMBER(1)
)
;
comment on table CCTV_DECODER_PROFILE
  is '解码器信息';
comment on column CCTV_DECODER_PROFILE.device_id
  is '解码器编码';
comment on column CCTV_DECODER_PROFILE.device_desc
  is '设备名称';
comment on column CCTV_DECODER_PROFILE.decoder_id
  is '解码器编号：实际上就是通道号';
comment on column CCTV_DECODER_PROFILE.cctv_server_id
  is '所属视频服务器';
comment on column CCTV_DECODER_PROFILE.ip
  is '解码器地址';
comment on column CCTV_DECODER_PROFILE.decoder_type
  is '解码器类型：1:亚邦、2:中威、3:互信互通、4：中兴智能';
alter table CCTV_DECODER_PROFILE
  add constraint PKID primary key (DEVICE_ID)
  ;

prompt Creating CCTV_SERVER_PROFILE...
create table CCTV_SERVER_PROFILE
(
  id               VARCHAR2(32) default sys_guid() not null,
  cctv_server_id   VARCHAR2(40) not null,
  cctv_server_type NUMBER(5) not null,
  cctv_server_addr VARCHAR2(50) not null,
  cctv_server_port NUMBER(6) not null,
  cctv_server_user VARCHAR2(50) not null,
  cctv_server_pwd  VARCHAR2(50) not null,
  cctv_limit       NUMBER(2) default 9 not null
)
;
comment on table CCTV_SERVER_PROFILE
  is '视频服务器基础资料表';
comment on column CCTV_SERVER_PROFILE.id
  is '记录ID';
comment on column CCTV_SERVER_PROFILE.cctv_server_id
  is '视频服务器ID,指在设备基础资料中的设备ID';
comment on column CCTV_SERVER_PROFILE.cctv_server_type
  is '视频服务器类型。1-亚邦（华3），2-中威（海康威视），3-互信互通
';
comment on column CCTV_SERVER_PROFILE.cctv_server_addr
  is '服务器地址';
comment on column CCTV_SERVER_PROFILE.cctv_server_port
  is '服务器端口';
comment on column CCTV_SERVER_PROFILE.cctv_server_user
  is '登录服务器用户名';
comment on column CCTV_SERVER_PROFILE.cctv_server_pwd
  is '登录服务器口令';
comment on column CCTV_SERVER_PROFILE.cctv_limit
  is '查看视频的限值，默认为9';
alter table CCTV_SERVER_PROFILE
  add constraint PK_CCTV_SERVER_PROFILE primary key (ID)
  ;

prompt Creating DEPTREE...
create table DEPTREE
(
  depid     NUMBER(10) default 0 not null,
  depname   VARCHAR2(40) not null,
  parentid  NUMBER(10) default 0 not null,
  fullpath  VARCHAR2(64),
  dbcode    VARCHAR2(32) default '000000',
  memo      VARCHAR2(40),
  nodeorder NUMBER default 0 not null,
  customid  NUMBER(18) default 0 not null
)
;
alter table DEPTREE
  add primary key (DEPID)
  ;

prompt Creating DEVICE_HISTORY_ERRSTATU...
create table DEVICE_HISTORY_ERRSTATU
(
  device_history_errstatu_id VARCHAR2(32) default Sys_guid() not null,
  device_id                  VARCHAR2(40),
  device_type_id             VARCHAR2(4),
  device_status_id           NUMBER(1),
  error_message              VARCHAR2(100),
  collect_time               DATE,
  error_time                 DATE,
  flag                       NUMBER(1)
)
;
comment on column DEVICE_HISTORY_ERRSTATU.device_history_errstatu_id
  is '记录编号';
comment on column DEVICE_HISTORY_ERRSTATU.device_id
  is '设备编码';
comment on column DEVICE_HISTORY_ERRSTATU.device_type_id
  is '设备类型';
comment on column DEVICE_HISTORY_ERRSTATU.device_status_id
  is '设备状态';
comment on column DEVICE_HISTORY_ERRSTATU.error_message
  is '设备故障';
comment on column DEVICE_HISTORY_ERRSTATU.collect_time
  is '采集时间';
comment on column DEVICE_HISTORY_ERRSTATU.error_time
  is '故障时间:故障发生时间';
comment on column DEVICE_HISTORY_ERRSTATU.flag
  is '删除标志:0或1，当设备故障时为0，当设备故障消除为1；';
alter table DEVICE_HISTORY_ERRSTATU
  add constraint PK_DEVICE_HISTORY_ERRSTATU_ID primary key (DEVICE_HISTORY_ERRSTATU_ID)
  ;

prompt Creating DEVICE_MATCH_CAM...
create table DEVICE_MATCH_CAM
(
  device_id VARCHAR2(32) not null,
  cam_id    VARCHAR2(32) not null
)
 ;
comment on table DEVICE_MATCH_CAM
  is '需要监控的单个设备与摄像机对应关系表';
comment on column DEVICE_MATCH_CAM.device_id
  is '设备id（非摄像机设备）';
comment on column DEVICE_MATCH_CAM.cam_id
  is '可监控到当前设备效果最佳的摄像机id';
alter table DEVICE_MATCH_CAM
  add constraint PK_DEVICE_MATCH_CAM primary key (DEVICE_ID)
;

prompt Creating DEVICE_PROFILE...
create table DEVICE_PROFILE
(
  device_id       VARCHAR2(40) not null,
  device_desc     VARCHAR2(80) not null,
  device_type_id  VARCHAR2(4) not null,
  em_type_id      CHAR(3) not null,
  road_segment_id VARCHAR2(12) not null,
  organization_id VARCHAR2(20) not null,
  direction_id    NUMBER(2) not null,
  dec_stub        NUMBER(10,3) not null,
  char_stub       VARCHAR2(20),
  user_id         VARCHAR2(12),
  collect_time    DATE default sysdate not null,
  flag            NUMBER(1) default 0
)
;
comment on table DEVICE_PROFILE
  is '设备基本资料表';
comment on column DEVICE_PROFILE.device_id
  is '设备ID';
comment on column DEVICE_PROFILE.device_desc
  is '设备名称或设备描述';
comment on column DEVICE_PROFILE.device_type_id
  is '设备类型';
comment on column DEVICE_PROFILE.em_type_id
  is '所属机电系统';
comment on column DEVICE_PROFILE.road_segment_id
  is '所属路段';
comment on column DEVICE_PROFILE.organization_id
  is '所属管理机构。要求所有设备的管理机构都应设置为“路段管理处”等管理机构';
comment on column DEVICE_PROFILE.direction_id
  is '设备所在方向（或位置）';
comment on column DEVICE_PROFILE.dec_stub
  is '数字桩号';
comment on column DEVICE_PROFILE.char_stub
  is '字符桩号';
comment on column DEVICE_PROFILE.user_id
  is '最近更新时的用户：仅适用于人工录入方式';
comment on column DEVICE_PROFILE.collect_time
  is '最近更新时间';
alter table DEVICE_PROFILE
  add constraint PK_DEVICE_PROFILE primary key (DEVICE_ID)
  ;
 

prompt Creating DEVICE_REAL_DATA...
create table DEVICE_REAL_DATA
(
  device_id            VARCHAR2(40) not null,
  device_status_id     NUMBER(1) not null,
  device_obj_status_id VARCHAR2(10),
  message              VARCHAR2(500),
  error_message        VARCHAR2(100),
  collect_time         DATE default sysdate not null
)
;
comment on table DEVICE_REAL_DATA
  is '设备实时数据表';
comment on column DEVICE_REAL_DATA.device_id
  is '设备编码';
comment on column DEVICE_REAL_DATA.device_status_id
  is '设备状态';
comment on column DEVICE_REAL_DATA.device_obj_status_id
  is '设备组件状态';
comment on column DEVICE_REAL_DATA.message
  is '描述信息';
comment on column DEVICE_REAL_DATA.error_message
  is '设备故障';
comment on column DEVICE_REAL_DATA.collect_time
  is '采集时间';
alter table DEVICE_REAL_DATA
  add constraint PK_DEVICEID primary key (DEVICE_ID)
  ;
grant select, insert, update, delete, references, alter, index on DEVICE_REAL_DATA to PUBLIC;

prompt Creating DEVICE_REAL_ERRSTATU...
create table DEVICE_REAL_ERRSTATU
(
  device_id        VARCHAR2(40) not null,
  device_type_id   VARCHAR2(4) not null,
  device_status_id NUMBER(1) not null,
  error_message    VARCHAR2(100),
  collect_time     DATE not null,
  error_time       DATE,
  flag             NUMBER(1) default 0 not null
)
;
comment on column DEVICE_REAL_ERRSTATU.device_id
  is '设备编码';
comment on column DEVICE_REAL_ERRSTATU.device_type_id
  is '设备类型';
comment on column DEVICE_REAL_ERRSTATU.device_status_id
  is '设备状态';
comment on column DEVICE_REAL_ERRSTATU.error_message
  is '设备故障';
comment on column DEVICE_REAL_ERRSTATU.collect_time
  is '采集时间';
comment on column DEVICE_REAL_ERRSTATU.error_time
  is '故障时间:故障发生时间';
comment on column DEVICE_REAL_ERRSTATU.flag
  is '删除标志:0或1，当设备故障时为0，当设备故障消除为1；';
alter table DEVICE_REAL_ERRSTATU
  add constraint PK_DEVICE_REAL_ERRSTATU primary key (DEVICE_ID)
  ;

prompt Creating HANBANG_ALARM...
create table HANBANG_ALARM
(
  alarm_id   NVARCHAR2(32) default sys_guid() not null,
  alarm_time DATE not null,
  alarm_type VARCHAR2(10),
  bounds     VARCHAR2(20),
  imagepath  VARCHAR2(255),
  videopath  VARCHAR2(255),
  videocode  VARCHAR2(20)
)
 ;
comment on table HANBANG_ALARM
  is '事件报警表';
comment on column HANBANG_ALARM.alarm_id
  is '事件编号';
comment on column HANBANG_ALARM.alarm_time
  is '报警时间';
comment on column HANBANG_ALARM.alarm_type
  is '报警事件类型 TS_CLTS 停驶 ITS_CS 超速 ITS_SG 事故 ITS_MX 慢行 ITS_XN 行人 ITS_NX 逆行 ITS_YW 烟雾 ITS_PSW 抛洒物';
comment on column HANBANG_ALARM.bounds
  is '报警目标框坐标 左上X:左上Y：右下X：右下Y';
comment on column HANBANG_ALARM.imagepath
  is '报警图片路径';
comment on column HANBANG_ALARM.videopath
  is '报警录像文件路径';
comment on column HANBANG_ALARM.videocode
  is '报警摄像机编号';
create index IDX_TALARM_ALARMTEIM on HANBANG_ALARM (ALARM_TIME)
 ;
alter table HANBANG_ALARM
  add constraint PK_HANBANG_ALARM primary key (ALARM_ID)
  ;
grant select, insert, update, delete on HANBANG_ALARM to HB_USER;

prompt Creating HANBANG_EVERT_MAPING...
create table HANBANG_EVERT_MAPING
(
  hb_alarm_id  VARCHAR2(32) not null,
  rhy_alarm_id VARCHAR2(32) not null
)
 ;
comment on table HANBANG_EVERT_MAPING
  is '汉邦事件监测对应表';
comment on column HANBANG_EVERT_MAPING.hb_alarm_id
  is '汉邦ID';
comment on column HANBANG_EVERT_MAPING.rhy_alarm_id
  is '瑞华赢ID';

prompt Creating JK_BAY_ACCESS_RECORD...
create table JK_BAY_ACCESS_RECORD
(
  id               VARCHAR2(32) default SYS_GUID() not null,
  carplate         VARCHAR2(32) not null,
  direction_id     NUMBER(1) not null,
  org_id           VARCHAR2(32) default '0' not null,
  in_passtime      DATE,
  in_platecolor    VARCHAR2(2),
  in_vehiclecolor  VARCHAR2(2),
  in_collect_time  DATE,
  in_id            VARCHAR2(40),
  out_passtime     DATE,
  out_platecolor   VARCHAR2(2),
  out_vehiclecolor VARCHAR2(2),
  out_collect_time DATE,
  out_id           VARCHAR2(40),
  last_update_time DATE not null,
  user_id          VARCHAR2(32),
  record_status    NUMBER(2) default 0 not null
)
;
comment on table JK_BAY_ACCESS_RECORD
  is '出入记录';
comment on column JK_BAY_ACCESS_RECORD.id
  is '主键ID';
comment on column JK_BAY_ACCESS_RECORD.carplate
  is '车牌号';
comment on column JK_BAY_ACCESS_RECORD.direction_id
  is '方向：1上行，2下行';
comment on column JK_BAY_ACCESS_RECORD.org_id
  is '机构ID';
comment on column JK_BAY_ACCESS_RECORD.in_passtime
  is '入口经过时刻';
comment on column JK_BAY_ACCESS_RECORD.in_platecolor
  is '号牌颜色 0-白色1-黄色 2-蓝色 3-黑色 4-其他 5—绿色。';
comment on column JK_BAY_ACCESS_RECORD.in_vehiclecolor
  is '车身颜色 A：白，B：灰，C：黄，D：粉，E：红，F：紫，G：绿，H：蓝，I：棕，J：黑，K：橙,
L：青，M：银，N：银白，Z：其他';
comment on column JK_BAY_ACCESS_RECORD.in_collect_time
  is '入口记录采集时间';
comment on column JK_BAY_ACCESS_RECORD.in_id
  is '入口记录ID';
comment on column JK_BAY_ACCESS_RECORD.out_passtime
  is '出口经过时刻';
comment on column JK_BAY_ACCESS_RECORD.out_platecolor
  is '号牌颜色 0-白色1-黄色 2-蓝色 3-黑色 4-其他 5—绿色。';
comment on column JK_BAY_ACCESS_RECORD.out_vehiclecolor
  is '车身颜色 A：白，B：灰，C：黄，D：粉，E：红，F：紫，G：绿，H：蓝，I：棕，J：黑，K：橙,
L：青，M：银，N：银白，Z：其他';
comment on column JK_BAY_ACCESS_RECORD.out_collect_time
  is '出口记录采集时间';
comment on column JK_BAY_ACCESS_RECORD.out_id
  is '出口记录ID';
comment on column JK_BAY_ACCESS_RECORD.last_update_time
  is '最近修改时间';
comment on column JK_BAY_ACCESS_RECORD.user_id
  is '最近修改人';
comment on column JK_BAY_ACCESS_RECORD.record_status
  is '记录状态：0：只有入口记录，1：出入口都有记录，-1：异常数据';
create index JKBAY_A_CARPLATE_IDX on JK_BAY_ACCESS_RECORD (CARPLATE)
 ;
create index JK_BAY_ACCESS_RECORD_DIR on JK_BAY_ACCESS_RECORD (DIRECTION_ID)
 ;
create index JK_BAY_ACCESS_RECORD_IN_TIME on JK_BAY_ACCESS_RECORD (IN_PASSTIME)
 ;
create index JK_BAY_ACCESS_RECORD_ORG on JK_BAY_ACCESS_RECORD (ORG_ID)
 ;
create index JK_BAY_ACCESS_RECORD_STA on JK_BAY_ACCESS_RECORD (RECORD_STATUS)
  ;
create index JK_BAY_A_LAST_UPDATE_TIME on JK_BAY_ACCESS_RECORD (LAST_UPDATE_TIME)
 ;
alter table JK_BAY_ACCESS_RECORD
  add constraint PK_JK_BAY_ACCESS_RECORD primary key (ID)
  ;

prompt Creating JK_BAY_DEVICE_POSITION...
create table JK_BAY_DEVICE_POSITION
(
  device_id        VARCHAR2(32) default SYS_GUID() not null,
  direction_id     NUMBER(1) not null,
  pos_type         NUMBER(1) not null,
  org_id           VARCHAR2(32) default '0' not null,
  last_update_time DATE not null,
  user_id          VARCHAR2(12) not null
)
;
comment on table JK_BAY_DEVICE_POSITION
  is '卡口设备位置';
comment on column JK_BAY_DEVICE_POSITION.device_id
  is '设备ID';
comment on column JK_BAY_DEVICE_POSITION.direction_id
  is '方向：1上行，2下行';
comment on column JK_BAY_DEVICE_POSITION.pos_type
  is '位置类型：0：入口，1：出口';
comment on column JK_BAY_DEVICE_POSITION.org_id
  is '机构ID';
comment on column JK_BAY_DEVICE_POSITION.last_update_time
  is '最近修改时间';
comment on column JK_BAY_DEVICE_POSITION.user_id
  is '最近修改人';
create index JK_BAY_DEVICE_POSITION_DIR on JK_BAY_DEVICE_POSITION (DIRECTION_ID)
 ;
create index JK_BAY_DEVICE_POSITION_ORG on JK_BAY_DEVICE_POSITION (ORG_ID)
 ;
alter table JK_BAY_DEVICE_POSITION
  add constraint PK_JK_BAY_DEVICE_POSITION primary key (DEVICE_ID)
  ;

prompt Creating JK_BAY_DEVICE_PROFILE...
create table JK_BAY_DEVICE_PROFILE
(
  device_id       VARCHAR2(40) not null,
  device_desc     VARCHAR2(50) not null,
  device_type_id  VARCHAR2(4) not null,
  em_type_id      CHAR(3) not null,
  road_segment_id VARCHAR2(20) not null,
  organization_id VARCHAR2(20) not null,
  direction_id    NUMBER(1) not null,
  dec_stub        NUMBER(10,3) not null,
  char_stub       VARCHAR2(20),
  price           NUMBER(12,2) default 0,
  manufacturer    VARCHAR2(50),
  product_model   VARCHAR2(50),
  installer       VARCHAR2(50),
  install_time    DATE,
  camid           VARCHAR2(60),
  equipmenttype   VARCHAR2(3),
  panoramaflag    VARCHAR2(2) default 1,
  laneid          VARCHAR2(2),
  lanetype        VARCHAR2(2),
  communication   NUMBER(1) not null,
  ip              VARCHAR2(20),
  port            NUMBER(5),
  bot             NUMBER(7),
  valid           NUMBER(1) default 0 not null,
  other           VARCHAR2(50),
  dal             VARCHAR2(50),
  manufactor_name VARCHAR2(50),
  flag            NUMBER(1) default 1 not null,
  create_time     DATE default sysdate not null,
  update_time     DATE default sysdate not null,
  collect_type    NUMBER(1),
  user_id         VARCHAR2(12)
)
;
comment on table JK_BAY_DEVICE_PROFILE
  is '卡口设备资料表';
comment on column JK_BAY_DEVICE_PROFILE.device_id
  is '设备ID';
comment on column JK_BAY_DEVICE_PROFILE.device_desc
  is '设备名称或设备描述';
comment on column JK_BAY_DEVICE_PROFILE.device_type_id
  is '设备类型';
comment on column JK_BAY_DEVICE_PROFILE.em_type_id
  is '所属机电系统';
comment on column JK_BAY_DEVICE_PROFILE.road_segment_id
  is '所属路段';
comment on column JK_BAY_DEVICE_PROFILE.organization_id
  is '所属管理机构';
comment on column JK_BAY_DEVICE_PROFILE.direction_id
  is '设备所在方向（或位置）';
comment on column JK_BAY_DEVICE_PROFILE.dec_stub
  is '数字桩号';
comment on column JK_BAY_DEVICE_PROFILE.char_stub
  is '字符桩号';
comment on column JK_BAY_DEVICE_PROFILE.price
  is '价格 单位：元';
comment on column JK_BAY_DEVICE_PROFILE.manufacturer
  is '生产厂家';
comment on column JK_BAY_DEVICE_PROFILE.product_model
  is '产品型号';
comment on column JK_BAY_DEVICE_PROFILE.installer
  is '安装厂商';
comment on column JK_BAY_DEVICE_PROFILE.install_time
  is '安装时间';
comment on column JK_BAY_DEVICE_PROFILE.camid
  is '卡口相机编号（设备厂商提供）';
comment on column JK_BAY_DEVICE_PROFILE.equipmenttype
  is '采集类型 01-电警，02-公路卡口，03-固定测速，04-视频监控，05-移动电子警察，06-行车记录仪，09-其他电子监控设备';
comment on column JK_BAY_DEVICE_PROFILE.panoramaflag
  is '全景标志';
comment on column JK_BAY_DEVICE_PROFILE.laneid
  is '车道编号 从1开始。车辆行驶方向最左车道为1，由左向右顺序编号。';
comment on column JK_BAY_DEVICE_PROFILE.lanetype
  is '车道类型0-机动车道，1-非机动车道';
comment on column JK_BAY_DEVICE_PROFILE.communication
  is '通信方式';
comment on column JK_BAY_DEVICE_PROFILE.ip
  is 'IP地址';
comment on column JK_BAY_DEVICE_PROFILE.port
  is '端口/串口号';
comment on column JK_BAY_DEVICE_PROFILE.bot
  is '串口配置';
comment on column JK_BAY_DEVICE_PROFILE.valid
  is '是否启用标志0：关闭；1启用';
comment on column JK_BAY_DEVICE_PROFILE.other
  is '其他内容';
comment on column JK_BAY_DEVICE_PROFILE.dal
  is '业务类名称';
comment on column JK_BAY_DEVICE_PROFILE.manufactor_name
  is '厂家名称';
comment on column JK_BAY_DEVICE_PROFILE.flag
  is '删除标志0：无效；1有效';
comment on column JK_BAY_DEVICE_PROFILE.create_time
  is '创建时间';
comment on column JK_BAY_DEVICE_PROFILE.update_time
  is '修改时间';
comment on column JK_BAY_DEVICE_PROFILE.collect_type
  is '数据采集方式1:数据交换  2:人工录入';
comment on column JK_BAY_DEVICE_PROFILE.user_id
  is '最近更新时的用户';
alter table JK_BAY_DEVICE_PROFILE
  add constraint PK_JK_BAY_DEVICE_PROFILE primary key (DEVICE_ID)
  ;

prompt Creating JK_BAY_HISTORY_DATA1...
create table JK_BAY_HISTORY_DATA1
(
  jk_bay_history_data_id VARCHAR2(40) not null,
  camid                  VARCHAR2(32),
  device_id              VARCHAR2(60),
  equipmenttype          VARCHAR2(7),
  panoramaflag           VARCHAR2(7),
  recordid               VARCHAR2(16),
  tollgateid             VARCHAR2(32),
  tollgatename           VARCHAR2(64),
  passtime               DATE,
  placecode              VARCHAR2(32),
  placename              VARCHAR2(256),
  laneid                 VARCHAR2(2),
  lanetype               VARCHAR2(2),
  direction              VARCHAR2(2),
  directionname          VARCHAR2(64),
  carplate               VARCHAR2(32),
  plateconfidence        NUMBER(4),
  platetype              VARCHAR2(2),
  platecolor             VARCHAR2(2),
  platenumber            NUMBER(2),
  platecoincide          VARCHAR2(2),
  rearvehicleplateid     VARCHAR2(32),
  rearplateconfidence    NUMBER(4),
  rearplatecolor         VARCHAR2(2),
  rearplatetype          VARCHAR2(2),
  picnumber              NUMBER(2),
  vehiclespeed           NUMBER(4),
  limitedspeed           NUMBER(4),
  markedspeed            NUMBER(4),
  drivestatus            VARCHAR2(4),
  vehiclebrand           VARCHAR2(2),
  vehiclebody            VARCHAR2(2),
  vehicletype            VARCHAR2(2),
  vehiclelength          NUMBER(4),
  vehiclecolor           VARCHAR2(2),
  vehiclecolordept       VARCHAR2(2),
  dresscolor             VARCHAR2(2),
  redlighttime           NUMBER(16),
  dealtag                VARCHAR2(2),
  identifystatus         VARCHAR2(2),
  identifytime           NUMBER(4),
  applicationtype        NUMBER(4),
  globalcomposeflag      NUMBER(4),
  hdpicture              VARCHAR2(256),
  platephoto             VARCHAR2(256),
  otherphotos            VARCHAR2(256),
  sendflag               NUMBER(1) default 0,
  sendsn                 VARCHAR2(32),
  modifysn               VARCHAR2(32),
  collecttime            DATE,
  syncflag               NUMBER(1) default 0,
  inserttime             DATE default sysdate not null
)
 ;
comment on column JK_BAY_HISTORY_DATA1.jk_bay_history_data_id
  is '记录编号使用GUID作为主键';
comment on column JK_BAY_HISTORY_DATA1.camid
  is '"卡口相机编号 卡口相机编码。不可空。
由省公安厅统一编码。
"';
comment on column JK_BAY_HISTORY_DATA1.device_id
  is '设备编号 设备编码。 可空。 ';
comment on column JK_BAY_HISTORY_DATA1.equipmenttype
  is '"采集类型 可选字段。
描述设备的采集类型。 参考值：
01-电警，02-公路卡口，03-固定测速，04-视频监控，05-移动电子警察，06-行车记录仪，09-其他电子监控设备
"';
comment on column JK_BAY_HISTORY_DATA1.panoramaflag
  is '"全景标志 可选字段。
全景标志。 参考值：
00- 全景相机，01-特写相机
默认01"';
comment on column JK_BAY_HISTORY_DATA1.recordid
  is '记录ID号 由1开始自动增长';
comment on column JK_BAY_HISTORY_DATA1.tollgateid
  is '卡口编号 产生该信息的卡口代码。 (需要与宇视平台一致)';
comment on column JK_BAY_HISTORY_DATA1.tollgatename
  is '卡口名称 可选字段。';
comment on column JK_BAY_HISTORY_DATA1.passtime
  is '"经过时刻 YYYYMMDDHHMMSSMMM,
时间按24小时制。
"';
comment on column JK_BAY_HISTORY_DATA1.placecode
  is '地点编号 移动测速设备在多个地点工作，对应的违章数据地点也会有多个。 移动测速设备默认采用PlaceCode标识设备测速点， 当PlaceCode没有值， 则使用的卡口信息来标识设备测速点。 ';
comment on column JK_BAY_HISTORY_DATA1.placename
  is '地点名称';
comment on column JK_BAY_HISTORY_DATA1.laneid
  is '"车道编号 从1开始。车辆行驶方向最左车道为1，由左向右顺序编号。
(需要与宇视平台一致)
"';
comment on column JK_BAY_HISTORY_DATA1.lanetype
  is '车道类型 0-机动车道，1-非机动车道';
comment on column JK_BAY_HISTORY_DATA1.direction
  is '方向编号 1-东向西，2-西向东，3-南向北，4-北向南，5-东南向西北，6-西北向东南，7-东北向西南，8-西南向东北 ';
comment on column JK_BAY_HISTORY_DATA1.directionname
  is '方向名称 可选字段。 ';
comment on column JK_BAY_HISTORY_DATA1.carplate
  is '号牌号码 不能自动识别的用“-”表示';
comment on column JK_BAY_HISTORY_DATA1.plateconfidence
  is '"号牌置信度，数值越大，可信度越高。
取值范围0-100。
"';
comment on column JK_BAY_HISTORY_DATA1.platetype
  is '按GA24.7编码。 ';
comment on column JK_BAY_HISTORY_DATA1.platecolor
  is '号牌颜色 0-白色1-黄色 2-蓝色 3-黑色 4-其他 5—绿色。 ';
comment on column JK_BAY_HISTORY_DATA1.platenumber
  is '号牌数量 ';
comment on column JK_BAY_HISTORY_DATA1.platecoincide
  is '号牌一致 0—车头和车尾号牌号码不一致，1—车头和车尾号牌号码完全一致，2—车头号牌号码无法自动识别，3—车尾号牌号码无法自动识别，4—车头和车尾号牌号码均无法自动识别。';
comment on column JK_BAY_HISTORY_DATA1.rearvehicleplateid
  is '"被查控车辆车尾号牌号码，允许车辆尾部号牌号码不全。不能自动识别的用“-”表示。
扩展字段。在支持前后车牌的情况下使用。
在单车牌情况下，该字段不填写，车牌信息填写在前面的字段。
"';
comment on column JK_BAY_HISTORY_DATA1.rearplateconfidence
  is '"尾部号牌置信度 号牌置信度，数值越大，可信度越高。
取值范围0-100。

"';
comment on column JK_BAY_HISTORY_DATA1.rearplatecolor
  is '"尾部号牌颜色 0—白色 1—黄色 2—蓝色 3—黑色 4—其它颜色 5—绿色。
扩展字段。
"';
comment on column JK_BAY_HISTORY_DATA1.rearplatetype
  is '尾部号牌种类 按GA24.7编码。 ';
comment on column JK_BAY_HISTORY_DATA1.picnumber
  is '图像数量 采集的图像数量';
comment on column JK_BAY_HISTORY_DATA1.vehiclespeed
  is '车辆速度 单位km/h，0—无测速功能。 ';
comment on column JK_BAY_HISTORY_DATA1.limitedspeed
  is '执法限速   车辆执法限速。单位km/h';
comment on column JK_BAY_HISTORY_DATA1.markedspeed
  is '标识限速 驾驶员可以看到的限速。推荐使用本限速值， 可减少争议。单位km/h ';
comment on column JK_BAY_HISTORY_DATA1.drivestatus
  is '"行驶状态 0—正常，1—嫌疑，
按GA408.1编码，
1301-逆行，1302-不按交通信号灯通行
4602—在高速公路上逆行的，1603—机动车行驶超过规定时速50%的，等等。
"';
comment on column JK_BAY_HISTORY_DATA1.vehiclebrand
  is '车辆品牌 车辆厂牌编码（自行编码）。 ';
comment on column JK_BAY_HISTORY_DATA1.vehiclebody
  is '车辆外型 车辆外形编码（自行编码）。 ';
comment on column JK_BAY_HISTORY_DATA1.vehicletype
  is '车辆类型 0-未知，1-小型车，2-中型车，3-大型车，4-其他';
comment on column JK_BAY_HISTORY_DATA1.vehiclelength
  is '车外廓长 以厘米为单位';
comment on column JK_BAY_HISTORY_DATA1.vehiclecolor
  is '"车身颜色 A：白，B：灰，C：黄，D：粉，E：红，F：紫，G：绿，H：蓝，I：棕，J：黑，K：橙,
L：青，M：银，N：银白，Z：其他
"';
comment on column JK_BAY_HISTORY_DATA1.vehiclecolordept
  is '车身颜色深浅 0-未知，1-浅，2-深 ';
comment on column JK_BAY_HISTORY_DATA1.dresscolor
  is '行人衣着颜色 ';
comment on column JK_BAY_HISTORY_DATA1.redlighttime
  is '红灯时间 ';
comment on column JK_BAY_HISTORY_DATA1.dealtag
  is '"处理标记 0—未处理，1—已处理。
0—初始状态未校对，1—已校对和保存，2—无效信息，3—已处理和保存.
"';
comment on column JK_BAY_HISTORY_DATA1.identifystatus
  is '0－识别成功 1－不成功 2－不完整 3-未识别';
comment on column JK_BAY_HISTORY_DATA1.identifytime
  is '识别时间 单位毫秒 ';
comment on column JK_BAY_HISTORY_DATA1.applicationtype
  is '"应用类型 0－车辆卡口
1－ 电警
2－ 人员卡口
3－ 泛卡口
"';
comment on column JK_BAY_HISTORY_DATA1.globalcomposeflag
  is '全局合成标志 0－不需要合成
1－自适应（图片数量2张及以上）
2－第1张提取特写（图片数量2～4张），合成后第1张原图丢弃
3－第1张提取特写（图片数量1～3张），合成后第1张原图不丢弃
';
comment on column JK_BAY_HISTORY_DATA1.hdpicture
  is '车辆高清图片地址';
comment on column JK_BAY_HISTORY_DATA1.platephoto
  is '车牌小图地址';
comment on column JK_BAY_HISTORY_DATA1.otherphotos
  is '其他图片地址【拓展使用】';
comment on column JK_BAY_HISTORY_DATA1.sendflag
  is '0:未发送 1:用于发送标识 2:发送结束标识';
comment on column JK_BAY_HISTORY_DATA1.sendsn
  is '请求数据的sn号';
comment on column JK_BAY_HISTORY_DATA1.modifysn
  is '完成交互数据的sn号';
comment on column JK_BAY_HISTORY_DATA1.collecttime
  is '采集时间';
comment on column JK_BAY_HISTORY_DATA1.syncflag
  is '同步标志：0未同步；1已同步';
comment on column JK_BAY_HISTORY_DATA1.inserttime
  is '入库时间';
create index IDX_JK_BAY_HISTORY_DATA_1 on JK_BAY_HISTORY_DATA1 (PASSTIME)
 ;
create index IDX_JK_BAY_HISTORY_DATA_2 on JK_BAY_HISTORY_DATA1 (COLLECTTIME)
 ;
create index IDX_JK_BAY_HISTORY_DATA_3 on JK_BAY_HISTORY_DATA1 (INSERTTIME)
 ;
create index IDX_JK_BAY_HISTORY_DATA_4 on JK_BAY_HISTORY_DATA1 (DIRECTION)
 ;
create index IDX_JK_BAY_HISTORY_DATA_5 on JK_BAY_HISTORY_DATA1 (DEVICE_ID)
  ;
create bitmap index IDX_JK_BAY_HISTORY_DATA_6 on JK_BAY_HISTORY_DATA1 (SYNCFLAG)
  ;

prompt Creating JK_BAY_HISTORY_DATAZ...
create table JK_BAY_HISTORY_DATAZ
(
  jk_bay_history_dataz_id VARCHAR2(32) default Sys_guid() not null,
  device_id               VARCHAR2(40) not null,
  device_status_id        NUMBER(1) not null,
  error_message           VARCHAR2(100),
  collect_time            DATE not null
)
;
comment on column JK_BAY_HISTORY_DATAZ.jk_bay_history_dataz_id
  is '记录ID';
comment on column JK_BAY_HISTORY_DATAZ.device_id
  is '设备编码';
comment on column JK_BAY_HISTORY_DATAZ.device_status_id
  is '设备状态';
comment on column JK_BAY_HISTORY_DATAZ.error_message
  is '设备故障';
comment on column JK_BAY_HISTORY_DATAZ.collect_time
  is '采集时间';

prompt Creating JK_BAY_REAL_DATAZ...
create table JK_BAY_REAL_DATAZ
(
  device_id        VARCHAR2(40) not null,
  device_status_id NUMBER(1) not null,
  error_message    VARCHAR2(100),
  collect_time     DATE not null
)
;
comment on column JK_BAY_REAL_DATAZ.device_id
  is '设备ID';
comment on column JK_BAY_REAL_DATAZ.device_status_id
  is '设备状态';
comment on column JK_BAY_REAL_DATAZ.error_message
  is '设备故障';
comment on column JK_BAY_REAL_DATAZ.collect_time
  is '采集时间';

prompt Creating JK_BAY_ROAD_CITY...
create table JK_BAY_ROAD_CITY
(
  id          VARCHAR2(32) not null,
  road_net_id CHAR(4) not null,
  road_id     VARCHAR2(20) not null,
  name        VARCHAR2(40) not null,
  dec_stub    NUMBER(10,3) not null,
  char_stub   VARCHAR2(20) not null,
  valid       NUMBER(1) default 1 not null
)
;
comment on table JK_BAY_ROAD_CITY
  is '路段上重要城市表';
comment on column JK_BAY_ROAD_CITY.id
  is '主键';
comment on column JK_BAY_ROAD_CITY.road_net_id
  is '路网ID';
comment on column JK_BAY_ROAD_CITY.road_id
  is '路段ID';
comment on column JK_BAY_ROAD_CITY.name
  is '城市名称';
comment on column JK_BAY_ROAD_CITY.dec_stub
  is '桩号';
comment on column JK_BAY_ROAD_CITY.char_stub
  is '桩号';
comment on column JK_BAY_ROAD_CITY.valid
  is '有效性：0无效，1有效';
alter table JK_BAY_ROAD_CITY
  add constraint PK_JK_BAY_ROAD_CITY primary key (ID)
  ;

prompt Creating JK_BAY_SUM_DATA...
create table JK_BAY_SUM_DATA
(
  id          VARCHAR2(32) default sys_guid() not null,
  org_id      VARCHAR2(20),
  date_type   NUMBER(1),
  car_type    NUMBER(1),
  car_belong  VARCHAR2(10),
  num         NUMBER(8),
  create_time DATE default sysdate,
  sum_date    DATE
)
;
comment on table JK_BAY_SUM_DATA
  is '卡口数据统计表';
comment on column JK_BAY_SUM_DATA.date_type
  is '日期格式  1.天 2.周 3.月 4.季 5.年';
comment on column JK_BAY_SUM_DATA.car_type
  is '数据格式  1.小型车 2.中型车 3 大型车 4.特大型车  为0时为所有类型';
comment on column JK_BAY_SUM_DATA.car_belong
  is '归属地名称 参照province_info表      为0时为所有类型';
comment on column JK_BAY_SUM_DATA.num
  is '统计数量';
comment on column JK_BAY_SUM_DATA.sum_date
  is '统计日期';
create index JK_BAY_SUM_INDEX1 on JK_BAY_SUM_DATA (SUM_DATE, DATE_TYPE)
 ;
alter table JK_BAY_SUM_DATA
  add constraint JK_BAY_SUM_DATA_PK primary key (ID)
  ;

prompt Creating JK_CALLCENTER_REAL_DATA...
create table JK_CALLCENTER_REAL_DATA
(
  ivr_id      VARCHAR2(32) not null,
  text        VARCHAR2(3998),
  update_time DATE default sysdate not null,
  publish_id  VARCHAR2(32),
  status      NUMBER(1) default 0 not null
)
;
comment on table JK_CALLCENTER_REAL_DATA
  is '呼叫中心实时数据表';
comment on column JK_CALLCENTER_REAL_DATA.ivr_id
  is '路段关联的呼叫中心发送id';
comment on column JK_CALLCENTER_REAL_DATA.text
  is '当前发送id包含实时内容，在向呼叫中心成功发送数据后，更新该字段。';
comment on column JK_CALLCENTER_REAL_DATA.publish_id
  is '发布表的主键id';
comment on column JK_CALLCENTER_REAL_DATA.status
  is '同发布表的状态';
alter table JK_CALLCENTER_REAL_DATA
  add constraint PK_CALLCENTER_REAL_DATA_ID primary key (IVR_ID)
  ;

prompt Creating JK_CD_HISTORY_DATA...
create table JK_CD_HISTORY_DATA
(
  jk_cd_history_data_id VARCHAR2(32) default sys_guid() not null,
  device_id             VARCHAR2(40) not null,
  device_status_id      NUMBER(1) not null,
  error_message         VARCHAR2(100),
  cd_status             NUMBER(1) not null,
  temperature           NUMBER(8,2) not null,
  collect_time          DATE not null
)
;
comment on table JK_CD_HISTORY_DATA
  is '火灾手报按钮流水数据表';
comment on column JK_CD_HISTORY_DATA.jk_cd_history_data_id
  is '记录ID';
comment on column JK_CD_HISTORY_DATA.device_id
  is '设备编码';
comment on column JK_CD_HISTORY_DATA.device_status_id
  is '设备状态';
comment on column JK_CD_HISTORY_DATA.error_message
  is '设备故障';
comment on column JK_CD_HISTORY_DATA.cd_status
  is '火警状态。0：正常；1：报警';
comment on column JK_CD_HISTORY_DATA.temperature
  is '温度';
comment on column JK_CD_HISTORY_DATA.collect_time
  is '采集时间';
alter table JK_CD_HISTORY_DATA
  add constraint PK_JK_CD_HISTORY_DATA primary key (JK_CD_HISTORY_DATA_ID)
  ;

prompt Creating JK_CD_REAL_DATA...
create table JK_CD_REAL_DATA
(
  device_id        VARCHAR2(40) not null,
  device_status_id NUMBER(1) not null,
  error_message    VARCHAR2(100),
  cd_status        NUMBER(1) not null,
  temperature      NUMBER(8,2) not null,
  collect_time     DATE not null
)
;
comment on table JK_CD_REAL_DATA
  is '感温光纤实时数据表';
comment on column JK_CD_REAL_DATA.device_id
  is '设备编码';
comment on column JK_CD_REAL_DATA.device_status_id
  is '设备状态';
comment on column JK_CD_REAL_DATA.error_message
  is '设备故障';
comment on column JK_CD_REAL_DATA.cd_status
  is '火警状态。0：正常；1：报警';
comment on column JK_CD_REAL_DATA.temperature
  is '温度';
comment on column JK_CD_REAL_DATA.collect_time
  is '采集时间';
alter table JK_CD_REAL_DATA
  add constraint PK_JK_CD_REAL_DATA primary key (DEVICE_ID)
  ;

prompt Creating JK_CMS_CONTROL...
create table JK_CMS_CONTROL
(
  jk_cms_control_id VARCHAR2(32) not null,
  device_id         VARCHAR2(40) not null,
  order_type        NUMBER(1) not null,
  red_level         NUMBER(3),
  green_level       NUMBER(3),
  blue_level        NUMBER(3),
  user_id           VARCHAR2(32) not null,
  create_time       DATE not null,
  order_status      NUMBER(1) not null,
  order_result      NUMBER(1),
  error_message     VARCHAR2(100),
  begin_time        DATE,
  end_time          DATE,
  audit_user        VARCHAR2(50),
  lock_level        VARCHAR2(1),
  lock_end_time     DATE,
  js_cms_control_id VARCHAR2(32),
  unlock_user_id    VARCHAR2(12),
  unlock_time       DATE,
  unlock_memo       VARCHAR2(200),
  event_id          VARCHAR2(32),
  synchronism       NUMBER(1) default 1,
  syncflag          NUMBER(1) default 0
)
;
comment on table JK_CMS_CONTROL
  is '情报板控制指令表';
comment on column JK_CMS_CONTROL.jk_cms_control_id
  is '记录ID。使用UUID作为主键。';
comment on column JK_CMS_CONTROL.device_id
  is '被控设备编码';
comment on column JK_CMS_CONTROL.order_type
  is '命令类型.1:播放命令；2：自动调整亮度命令；3：手动调整亮度命令';
comment on column JK_CMS_CONTROL.red_level
  is '红基色亮度。ORDER_TYPE=3时有意义，指将要手工设置的红基色亮度级别';
comment on column JK_CMS_CONTROL.green_level
  is '绿基色亮度。ORDER_TYPE=3时有意义，指将要手工设置的绿基色亮度级别';
comment on column JK_CMS_CONTROL.blue_level
  is '蓝基色亮度。ORDER_TYPE=3时有意义，指将要手工设置的蓝基色亮度级别';
comment on column JK_CMS_CONTROL.user_id
  is '命令创建人';
comment on column JK_CMS_CONTROL.create_time
  is '命令创建时间';
comment on column JK_CMS_CONTROL.order_status
  is '命令执行状态。0：命令创建状态；1：待执行状态；2：正在执行状态；3：执行结束状态';
comment on column JK_CMS_CONTROL.order_result
  is '命令执行结果。当ORDER_STATUS=3时有意义。1：执行成功；2：执行失败';
comment on column JK_CMS_CONTROL.error_message
  is '执行失败原因';
comment on column JK_CMS_CONTROL.begin_time
  is '命令开始执行时间';
comment on column JK_CMS_CONTROL.end_time
  is '命令执行结束时间';
comment on column JK_CMS_CONTROL.audit_user
  is '审核人';
comment on column JK_CMS_CONTROL.lock_level
  is '锁定优先级';
comment on column JK_CMS_CONTROL.lock_end_time
  is '锁定自动结束时间';
comment on column JK_CMS_CONTROL.js_cms_control_id
  is '解锁指令ID';
comment on column JK_CMS_CONTROL.unlock_user_id
  is '解锁用户';
comment on column JK_CMS_CONTROL.unlock_time
  is '解锁时间';
comment on column JK_CMS_CONTROL.unlock_memo
  is '解锁说明';
comment on column JK_CMS_CONTROL.event_id
  is '事件ID。关联TK_EVENT表的主键ID';
comment on column JK_CMS_CONTROL.synchronism
  is '记录来源。1：原生记录；2：同步记录';
alter table JK_CMS_CONTROL
  add constraint PK_JK_CMS_CONTROL primary key (JK_CMS_CONTROL_ID)
  ;

prompt Creating JK_CMS_HISTORY_CONTENTS...
create table JK_CMS_HISTORY_CONTENTS
(
  id            VARCHAR2(32) default sys_guid() not null,
  device_id     VARCHAR2(50),
  begin_time    DATE,
  end_time      DATE,
  order_status  NUMBER(1) default 0,
  play_text     VARCHAR2(500),
  create_time   DATE,
  user_id       VARCHAR2(32),
  order_result  NUMBER(1),
  error_message VARCHAR2(100)
)
;
comment on table JK_CMS_HISTORY_CONTENTS
  is '情报板历史发送内容表';
comment on column JK_CMS_HISTORY_CONTENTS.id
  is '主键id';
comment on column JK_CMS_HISTORY_CONTENTS.device_id
  is '情报板设备id';
comment on column JK_CMS_HISTORY_CONTENTS.begin_time
  is '开始执行时间';
comment on column JK_CMS_HISTORY_CONTENTS.end_time
  is '结束执行时间';
comment on column JK_CMS_HISTORY_CONTENTS.order_status
  is '命令执行状态。0：命令创建状态；1：待执行状态；2：正在执行状态；3：执行结束状态';
comment on column JK_CMS_HISTORY_CONTENTS.play_text
  is '发布内容';
comment on column JK_CMS_HISTORY_CONTENTS.create_time
  is '创建时间';
comment on column JK_CMS_HISTORY_CONTENTS.user_id
  is '创建人';
alter table JK_CMS_HISTORY_CONTENTS
  add constraint PK_JK_CMS_HISTORY_CONTENTS primary key (ID)
  ;

prompt Creating JK_CMS_HISTORY_REAL_ITEMF...
create table JK_CMS_HISTORY_REAL_ITEMF
(
  jk_cms_real_itemf_id VARCHAR2(32) not null,
  jk_cms_real_itemz_id VARCHAR2(32) not null,
  record_type          NUMBER(1) not null,
  position_x           NUMBER(5) not null,
  position_y           NUMBER(5) not null,
  bmp_number           VARCHAR2(6),
  font_color           NUMBER(10),
  back_color           NUMBER(10),
  shadow_color         NUMBER(10),
  word_space           NUMBER(3),
  cms_font_id          NUMBER(2),
  word_width           NUMBER(3),
  word_height          NUMBER(3),
  play_text            VARCHAR2(100)
)
;
comment on table JK_CMS_HISTORY_REAL_ITEMF
  is '情报板当前播放内容副表';
comment on column JK_CMS_HISTORY_REAL_ITEMF.jk_cms_real_itemf_id
  is '记录ID';
comment on column JK_CMS_HISTORY_REAL_ITEMF.jk_cms_real_itemz_id
  is '主表记录ID';
comment on column JK_CMS_HISTORY_REAL_ITEMF.record_type
  is '记录类型';
comment on column JK_CMS_HISTORY_REAL_ITEMF.position_x
  is '显示起始位置X';
comment on column JK_CMS_HISTORY_REAL_ITEMF.position_y
  is '显示起始位置Y';
comment on column JK_CMS_HISTORY_REAL_ITEMF.bmp_number
  is '图片编号';
comment on column JK_CMS_HISTORY_REAL_ITEMF.font_color
  is '字符颜色';
comment on column JK_CMS_HISTORY_REAL_ITEMF.back_color
  is '背景颜色';
comment on column JK_CMS_HISTORY_REAL_ITEMF.shadow_color
  is '阴影颜色';
comment on column JK_CMS_HISTORY_REAL_ITEMF.word_space
  is '字间距';
comment on column JK_CMS_HISTORY_REAL_ITEMF.cms_font_id
  is '字体代码';
comment on column JK_CMS_HISTORY_REAL_ITEMF.word_width
  is '字宽度';
comment on column JK_CMS_HISTORY_REAL_ITEMF.word_height
  is '字高度';
comment on column JK_CMS_HISTORY_REAL_ITEMF.play_text
  is '显示文字';
alter table JK_CMS_HISTORY_REAL_ITEMF
  add constraint PK_JK_CMS_HISTORY_REAL_ITEMF primary key (JK_CMS_REAL_ITEMF_ID)
  ;

prompt Creating JK_CMS_HISTORY_REAL_ITEMZ...
create table JK_CMS_HISTORY_REAL_ITEMZ
(
  jk_cms_real_itemz_id VARCHAR2(32) default sys_guid() not null,
  device_id            VARCHAR2(40) not null,
  play_order           NUMBER(2) not null,
  item_name            VARCHAR2(100),
  in_style             NUMBER(2),
  out_style            NUMBER(2),
  io_speed             NUMBER(6),
  stay_time            NUMBER(6),
  is_blinking          NUMBER(1),
  blinking_number      NUMBER(3),
  blinking_speed       NUMBER(3),
  group_id             VARCHAR2(32),
  create_time          DATE default sysdate not null
)
;
comment on table JK_CMS_HISTORY_REAL_ITEMZ
  is '当前播放内容主表';
comment on column JK_CMS_HISTORY_REAL_ITEMZ.jk_cms_real_itemz_id
  is '记录ID';
comment on column JK_CMS_HISTORY_REAL_ITEMZ.device_id
  is '设备编码';
comment on column JK_CMS_HISTORY_REAL_ITEMZ.play_order
  is '播放序号';
comment on column JK_CMS_HISTORY_REAL_ITEMZ.item_name
  is '播放条目名称';
comment on column JK_CMS_HISTORY_REAL_ITEMZ.in_style
  is '入屏方式';
comment on column JK_CMS_HISTORY_REAL_ITEMZ.out_style
  is '出屏方式';
comment on column JK_CMS_HISTORY_REAL_ITEMZ.io_speed
  is '出入屏速度';
comment on column JK_CMS_HISTORY_REAL_ITEMZ.stay_time
  is '停留时间';
comment on column JK_CMS_HISTORY_REAL_ITEMZ.is_blinking
  is '是否闪烁';
comment on column JK_CMS_HISTORY_REAL_ITEMZ.blinking_number
  is '闪烁次数';
comment on column JK_CMS_HISTORY_REAL_ITEMZ.blinking_speed
  is '闪烁速度';
comment on column JK_CMS_HISTORY_REAL_ITEMZ.group_id
  is '每一组实时信息具有同一个组id';

prompt Creating JK_CMS_LOCK...
create table JK_CMS_LOCK
(
  device_id    VARCHAR2(32) not null,
  lock_level   NUMBER(1),
  lock_info_id VARCHAR2(32),
  lock_time    DATE
)
 ;
comment on table JK_CMS_LOCK
  is '情报板锁实时状态表';
comment on column JK_CMS_LOCK.device_id
  is '设备ID';
comment on column JK_CMS_LOCK.lock_level
  is '锁定优先级';
comment on column JK_CMS_LOCK.lock_info_id
  is '锁定信息';
comment on column JK_CMS_LOCK.lock_time
  is '锁定时间';
alter table JK_CMS_LOCK
  add constraint PK_JK_CMS_LOCK_ID primary key (DEVICE_ID)
;

prompt Creating JK_CMS_LOCK_HISTORY...
create table JK_CMS_LOCK_HISTORY
(
  id               VARCHAR2(32) not null,
  device_id        VARCHAR2(32) not null,
  lock_level       NUMBER(1),
  lock_user_id     VARCHAR2(32),
  lock_start_time  DATE,
  lock_end_time    DATE,
  unlock_user_id   VARCHAR2(32),
  synchronism      NUMBER(1) default 1,
  lock_user_name   VARCHAR2(50),
  unlock_user_name VARCHAR2(50),
  unlock_time      DATE
)
 ;
comment on table JK_CMS_LOCK_HISTORY
  is '情报板锁状态历史表';
comment on column JK_CMS_LOCK_HISTORY.id
  is '主键id';
comment on column JK_CMS_LOCK_HISTORY.device_id
  is '设备ID';
comment on column JK_CMS_LOCK_HISTORY.lock_level
  is '锁定优先级';
comment on column JK_CMS_LOCK_HISTORY.lock_user_id
  is '锁定用户';
comment on column JK_CMS_LOCK_HISTORY.lock_start_time
  is '锁定开始时间';
comment on column JK_CMS_LOCK_HISTORY.lock_end_time
  is '锁定设定结束时间';
comment on column JK_CMS_LOCK_HISTORY.unlock_user_id
  is '解锁用户';
comment on column JK_CMS_LOCK_HISTORY.synchronism
  is '记录来源。1：原生记录
2：同步记录
';
comment on column JK_CMS_LOCK_HISTORY.unlock_time
  is '实际解锁时间';
alter table JK_CMS_LOCK_HISTORY
  add constraint PK_JK_CMS_LOCK_HISTORY_ID primary key (ID)
;

prompt Creating JK_CMS_PLAY_ITEMF...
create table JK_CMS_PLAY_ITEMF
(
  jk_cms_play_itemf_id VARCHAR2(32) not null,
  jk_cms_play_itemz_id VARCHAR2(32) not null,
  record_type          NUMBER(1) not null,
  position_x           NUMBER(5) not null,
  position_y           NUMBER(5) not null,
  bmp_number           VARCHAR2(6),
  fore_color           NUMBER(10),
  back_color           NUMBER(10),
  shadow_color         NUMBER(10),
  word_space           NUMBER(3),
  cms_font_id          NUMBER(2),
  word_width           NUMBER(3),
  word_height          NUMBER(3),
  play_text            VARCHAR2(100),
  create_time          DATE default sysdate not null,
  jk_cms_control_id    VARCHAR2(32),
  syncflag             NUMBER(1) default 0
)
;
comment on table JK_CMS_PLAY_ITEMF
  is '情报板播放指令副表';
comment on column JK_CMS_PLAY_ITEMF.jk_cms_play_itemz_id
  is '主表记录ID';
comment on column JK_CMS_PLAY_ITEMF.record_type
  is '记录类型。1：文字；2：图片';
comment on column JK_CMS_PLAY_ITEMF.position_x
  is '显示起始位置X';
comment on column JK_CMS_PLAY_ITEMF.position_y
  is '显示起始位置Y';
comment on column JK_CMS_PLAY_ITEMF.bmp_number
  is '图片编号。当RECORD_TYPE=2时有效';
comment on column JK_CMS_PLAY_ITEMF.fore_color
  is '字符颜色。RRRGGGBBB，RRR、GGG、BBB 分别表示红、绿、蓝色范围的亮度，各范围均为 0-255。';
comment on column JK_CMS_PLAY_ITEMF.back_color
  is '背景颜色';
comment on column JK_CMS_PLAY_ITEMF.shadow_color
  is '阴影颜色';
comment on column JK_CMS_PLAY_ITEMF.word_space
  is '字间距';
comment on column JK_CMS_PLAY_ITEMF.cms_font_id
  is '字体代码';
comment on column JK_CMS_PLAY_ITEMF.word_width
  is '字宽度';
comment on column JK_CMS_PLAY_ITEMF.word_height
  is '字高度';
comment on column JK_CMS_PLAY_ITEMF.play_text
  is '显示文字';
comment on column JK_CMS_PLAY_ITEMF.jk_cms_control_id
  is '控制表id';
alter table JK_CMS_PLAY_ITEMF
  add constraint JK_CMS_PLAY_ITEMF primary key (JK_CMS_PLAY_ITEMF_ID)
  ;

prompt Creating JK_CMS_PLAY_ITEMZ...
create table JK_CMS_PLAY_ITEMZ
(
  jk_cms_play_itemz_id VARCHAR2(32) not null,
  jk_cms_control_id    VARCHAR2(32) not null,
  play_order           NUMBER(2) not null,
  item_name            VARCHAR2(100),
  in_style             NUMBER(2),
  out_style            NUMBER(2),
  io_speed             NUMBER(6),
  stay_time            NUMBER(6),
  is_blinking          NUMBER(1),
  blinking_number      NUMBER(3),
  blinking_speed       NUMBER(3),
  create_time          DATE default sysdate not null,
  syncflag             NUMBER(1) default 0
)
;
comment on table JK_CMS_PLAY_ITEMZ
  is '情报板播放指令主表';
comment on column JK_CMS_PLAY_ITEMZ.jk_cms_play_itemz_id
  is '记录ID';
comment on column JK_CMS_PLAY_ITEMZ.jk_cms_control_id
  is '情报板控制指令表记录ID';
comment on column JK_CMS_PLAY_ITEMZ.play_order
  is '播放序号';
comment on column JK_CMS_PLAY_ITEMZ.item_name
  is '播放条目名称';
comment on column JK_CMS_PLAY_ITEMZ.in_style
  is '入屏方式：使用统一的出入屏方式编码';
comment on column JK_CMS_PLAY_ITEMZ.out_style
  is '出屏方式';
comment on column JK_CMS_PLAY_ITEMZ.io_speed
  is '出入屏速度：以百分之一秒为单位，设备在支持精度内，四舍五入进行展现。';
comment on column JK_CMS_PLAY_ITEMZ.stay_time
  is '停留时间：以秒为单位';
comment on column JK_CMS_PLAY_ITEMZ.is_blinking
  is '是否闪烁:0-不闪烁；1-闪烁';
comment on column JK_CMS_PLAY_ITEMZ.blinking_number
  is '闪烁次数。当IS_BLINKING=1时有意义';
comment on column JK_CMS_PLAY_ITEMZ.blinking_speed
  is '闪烁速度。当IS_BLINKING=1时有意义，以百分之一秒为单位';
alter table JK_CMS_PLAY_ITEMZ
  add constraint PK_JK_CMS_PLAY_IETMZ primary key (JK_CMS_PLAY_ITEMZ_ID)
  ;

prompt Creating JK_CMS_PRE_GROUPF...
create table JK_CMS_PRE_GROUPF
(
  jk_cms_pre_groupf_id VARCHAR2(32) default sys_guid() not null,
  jk_cms_pre_groupz_id VARCHAR2(32) not null,
  play_order           NUMBER(2) not null,
  jk_cms_pre_itemz_id  VARCHAR2(32) not null
)
;
comment on table JK_CMS_PRE_GROUPF
  is '预置播放条目组副表';
comment on column JK_CMS_PRE_GROUPF.jk_cms_pre_groupf_id
  is '记录ID';
comment on column JK_CMS_PRE_GROUPF.jk_cms_pre_groupz_id
  is '记录主表ID';
comment on column JK_CMS_PRE_GROUPF.play_order
  is '播放序号';
comment on column JK_CMS_PRE_GROUPF.jk_cms_pre_itemz_id
  is '预置条目记录ID';
alter table JK_CMS_PRE_GROUPF
  add constraint PK_JK_CMS_PRE_GROUPF primary key (JK_CMS_PRE_GROUPF_ID)
  ;

prompt Creating JK_CMS_PRE_GROUPZ...
create table JK_CMS_PRE_GROUPZ
(
  jk_cms_pre_groupz_id VARCHAR2(32) not null,
  group_name           VARCHAR2(100) not null,
  group_memo           VARCHAR2(500),
  user_id              VARCHAR2(12) not null,
  update_time          DATE not null,
  special              CHAR(1),
  effect               VARCHAR2(8),
  screen_height        NUMBER(5),
  screen_width         NUMBER(5)
)
;
comment on table JK_CMS_PRE_GROUPZ
  is '预置播放条目组主表';
comment on column JK_CMS_PRE_GROUPZ.jk_cms_pre_groupz_id
  is '记录ID';
comment on column JK_CMS_PRE_GROUPZ.group_name
  is '组名称';
comment on column JK_CMS_PRE_GROUPZ.group_memo
  is '组说明';
comment on column JK_CMS_PRE_GROUPZ.user_id
  is '最近更新用户';
comment on column JK_CMS_PRE_GROUPZ.update_time
  is '更新时间';
comment on column JK_CMS_PRE_GROUPZ.special
  is '是否是特殊条目组（模板条目组）。1代表是，0代表否（普通条目组）';
comment on column JK_CMS_PRE_GROUPZ.effect
  is '本条目组的实际作用。00：事件恢复使用信息、01：封站信息、02：分流信息、03：限速信息、04：事件警告信息区域性事件、05：全副阻断或大规模拥堵、06：中等规模拥堵、07：事故但对交通影响不大、八位编码：特定事件类型';
comment on column JK_CMS_PRE_GROUPZ.screen_height
  is '屏高';
comment on column JK_CMS_PRE_GROUPZ.screen_width
  is '屏宽';
alter table JK_CMS_PRE_GROUPZ
  add constraint JK_CMS_PRE_GROUPZ primary key (JK_CMS_PRE_GROUPZ_ID)
  ;

prompt Creating JK_CMS_PRE_ITEMF...
create table JK_CMS_PRE_ITEMF
(
  jk_cms_pre_itemf_id VARCHAR2(32) default sys_guid() not null,
  jk_cms_pre_itemz_id VARCHAR2(32) not null,
  record_type         NUMBER(1) default 1 not null,
  position_x          NUMBER(5) not null,
  position_y          NUMBER(5) not null,
  bmp_number          VARCHAR2(6),
  back_color          NUMBER(10),
  shadow_color        NUMBER(10),
  word_space          NUMBER(3),
  cms_font_id         NUMBER(2),
  word_width          NUMBER(3),
  word_height         NUMBER(3),
  play_text           VARCHAR2(100),
  style               VARCHAR2(10),
  fore_color          NUMBER(10)
)
;
comment on table JK_CMS_PRE_ITEMF
  is '预置播放条目副表';
comment on column JK_CMS_PRE_ITEMF.jk_cms_pre_itemf_id
  is '记录ID';
comment on column JK_CMS_PRE_ITEMF.jk_cms_pre_itemz_id
  is '主表记录ID';
comment on column JK_CMS_PRE_ITEMF.record_type
  is '记录类型。1：文字；2：图片';
comment on column JK_CMS_PRE_ITEMF.position_x
  is '显示起始位置X';
comment on column JK_CMS_PRE_ITEMF.position_y
  is '显示起始位置Y';
comment on column JK_CMS_PRE_ITEMF.bmp_number
  is '图片编号。当RECORD_TYPE=2时有效';
comment on column JK_CMS_PRE_ITEMF.back_color
  is '背景颜色';
comment on column JK_CMS_PRE_ITEMF.shadow_color
  is '阴影颜色';
comment on column JK_CMS_PRE_ITEMF.word_space
  is '字间距';
comment on column JK_CMS_PRE_ITEMF.cms_font_id
  is '字体代码';
comment on column JK_CMS_PRE_ITEMF.word_width
  is '字宽度';
comment on column JK_CMS_PRE_ITEMF.word_height
  is '字高度';
comment on column JK_CMS_PRE_ITEMF.play_text
  is '显示文字';
comment on column JK_CMS_PRE_ITEMF.style
  is '风格特性：每位为一种特性，可有多种特性，1、新行。';
alter table JK_CMS_PRE_ITEMF
  add constraint PK_JK_CMS_PRE_ITEMF primary key (JK_CMS_PRE_ITEMF_ID)
;

prompt Creating JK_CMS_PRE_ITEMZ...
create table JK_CMS_PRE_ITEMZ
(
  jk_cms_pre_itemz_id VARCHAR2(32) default sys_guid() not null,
  base_id             VARCHAR2(32),
  cms_feature_id      NUMBER(2),
  screen_height       NUMBER(5) not null,
  screen_width        NUMBER(5) not null,
  item_name           VARCHAR2(100) not null,
  in_style            NUMBER(2),
  out_style           NUMBER(2),
  io_speed            NUMBER(6),
  stay_time           NUMBER(6),
  is_blinking         NUMBER(1),
  blinking_number     NUMBER(3),
  blinking_speed      NUMBER(3),
  item_memo           VARCHAR2(500),
  user_id             VARCHAR2(12) not null,
  update_time         DATE not null,
  valid               NUMBER(1) default 0 not null,
  style               VARCHAR2(10),
  is_common           NUMBER(1) default 0 not null
)
;
comment on table JK_CMS_PRE_ITEMZ
  is '预置播放条目主表';
comment on column JK_CMS_PRE_ITEMZ.jk_cms_pre_itemz_id
  is '记录ID。使用UUID作为主键';
comment on column JK_CMS_PRE_ITEMZ.base_id
  is '基础条目ID：基础条目ID：本条目基于的基础条目模板，若基础条目就是本条目，则为空。';
comment on column JK_CMS_PRE_ITEMZ.cms_feature_id
  is '特性类型代码：若本代码为NULL，则表明是通用条目模板。不区分厂商及设备特性类型';
comment on column JK_CMS_PRE_ITEMZ.screen_height
  is '屏高：对于通用模板，填写通用设计的屏高，否则，为实际设备屏高。';
comment on column JK_CMS_PRE_ITEMZ.screen_width
  is '屏宽：对于通用模板，填写通用设计的屏宽，否则为实际设备屏宽。';
comment on column JK_CMS_PRE_ITEMZ.item_name
  is '播放条目名称';
comment on column JK_CMS_PRE_ITEMZ.in_style
  is '入屏方式：使用统一的出入屏方式编码';
comment on column JK_CMS_PRE_ITEMZ.out_style
  is '出屏方式';
comment on column JK_CMS_PRE_ITEMZ.io_speed
  is '出入屏速度：以百分之一秒为单位，设备在支持精度内，四舍五入进行展现。';
comment on column JK_CMS_PRE_ITEMZ.stay_time
  is '停留时间：以秒为单位';
comment on column JK_CMS_PRE_ITEMZ.is_blinking
  is '是否闪烁:0-不闪烁；1-闪烁';
comment on column JK_CMS_PRE_ITEMZ.blinking_number
  is '闪烁次数。当IS_BLINKING=1时有意义';
comment on column JK_CMS_PRE_ITEMZ.blinking_speed
  is '闪烁速度。当IS_BLINKING=1时有意义，以百分之一秒为单位';
comment on column JK_CMS_PRE_ITEMZ.item_memo
  is '条目说明';
comment on column JK_CMS_PRE_ITEMZ.user_id
  is '最近更新用户';
comment on column JK_CMS_PRE_ITEMZ.update_time
  is '更新时间';
comment on column JK_CMS_PRE_ITEMZ.valid
  is '有效性。0：无效；1：有效';
comment on column JK_CMS_PRE_ITEMZ.style
  is '风格特性：每位为一种特性，可有多种特性，1、整体居中。';
comment on column JK_CMS_PRE_ITEMZ.is_common
  is '是否补过通用特性。0：不通用；1：通用';
alter table JK_CMS_PRE_ITEMZ
  add constraint PK_JK_CMS_PRE_ITEMZ primary key (JK_CMS_PRE_ITEMZ_ID)
;

prompt Creating JK_CMS_PROFILE...
create table JK_CMS_PROFILE
(
  device_id       VARCHAR2(40) not null,
  device_desc     VARCHAR2(80) not null,
  device_type_id  VARCHAR2(4) not null,
  em_type_id      CHAR(3) not null,
  road_segment_id VARCHAR2(20) not null,
  organization_id VARCHAR2(20) not null,
  direction_id    NUMBER(2) not null,
  dec_stub        NUMBER(10,3) not null,
  char_stub       VARCHAR2(20),
  price           NUMBER(12,2) default 0,
  manufacturer    VARCHAR2(50),
  product_model   VARCHAR2(50),
  quantity        NUMBER(5) default 1,
  installer       VARCHAR2(50),
  install_time    DATE,
  collect_type    NUMBER(1),
  user_id         VARCHAR2(12),
  collect_time    DATE default sysdate not null,
  flag            NUMBER(1) default 1 not null,
  update_time     DATE default sysdate not null,
  communication   NUMBER(1) not null,
  ip              VARCHAR2(20),
  port            NUMBER(5),
  bot             NUMBER(7),
  valid           NUMBER(1) default 1 not null,
  other           VARCHAR2(50),
  dal             VARCHAR2(50),
  manufactor_name VARCHAR2(50),
  screen_height   NUMBER(5) not null,
  screen_width    NUMBER(5) not null,
  cms_type        NUMBER(1) default 0 not null,
  cms_feature_id  NUMBER(2),
  syncflag        NUMBER(1) default 0
)
;
comment on column JK_CMS_PROFILE.screen_height
  is '屏高';
comment on column JK_CMS_PROFILE.screen_width
  is '屏宽';
comment on column JK_CMS_PROFILE.cms_type
  is '情报板分组类型: 1、站前悬臂, 2、主线门架, 3、主线悬臂, 4、支线门架, 5、支线悬臂 0未分组';
comment on column JK_CMS_PROFILE.cms_feature_id
  is '类型代码';
alter table JK_CMS_PROFILE
  add constraint PK_JK_CMS_PROFILE primary key (DEVICE_ID)
  ;

prompt Creating JK_CMS_REAL_DATAZ...
create table JK_CMS_REAL_DATAZ
(
  device_id         VARCHAR2(40) not null,
  device_status_id  NUMBER(1) not null,
  error_message     VARCHAR2(100),
  collect_time      DATE not null,
  illumination_mode NUMBER(1) not null,
  red_level         NUMBER(3),
  green_level       NUMBER(3),
  blue_level        NUMBER(3),
  syncflag          NUMBER(1) default 0
)
;
comment on table JK_CMS_REAL_DATAZ
  is '情报板实时数据主表';
comment on column JK_CMS_REAL_DATAZ.device_id
  is '设备编码';
comment on column JK_CMS_REAL_DATAZ.device_status_id
  is '设备状态';
comment on column JK_CMS_REAL_DATAZ.error_message
  is '设备故障';
comment on column JK_CMS_REAL_DATAZ.collect_time
  is '数据采集时间';
comment on column JK_CMS_REAL_DATAZ.illumination_mode
  is '亮度调节。0：自动调节；1：手动调节';
comment on column JK_CMS_REAL_DATAZ.red_level
  is '红基色亮度';
comment on column JK_CMS_REAL_DATAZ.green_level
  is '绿基色亮度';
comment on column JK_CMS_REAL_DATAZ.blue_level
  is '蓝基色亮度';
alter table JK_CMS_REAL_DATAZ
  add constraint PK_JK_CMS_REAL_DATAZ primary key (DEVICE_ID)
  ;

prompt Creating JK_CMS_REAL_ITEMF...
create table JK_CMS_REAL_ITEMF
(
  jk_cms_real_itemf_id VARCHAR2(32) not null,
  jk_cms_real_itemz_id VARCHAR2(32) not null,
  record_type          NUMBER(1) not null,
  position_x           NUMBER(5) not null,
  position_y           NUMBER(5) not null,
  bmp_number           VARCHAR2(6),
  back_color           NUMBER(10),
  shadow_color         NUMBER(10),
  word_space           NUMBER(3),
  cms_font_id          NUMBER(2),
  word_width           NUMBER(3),
  word_height          NUMBER(3),
  play_text            VARCHAR2(100),
  syncflag             NUMBER(1) default 0,
  fore_color           NUMBER(10)
)
;
comment on table JK_CMS_REAL_ITEMF
  is '情报板当前播放内容副表';
comment on column JK_CMS_REAL_ITEMF.jk_cms_real_itemf_id
  is '记录ID';
comment on column JK_CMS_REAL_ITEMF.jk_cms_real_itemz_id
  is '主表记录ID';
comment on column JK_CMS_REAL_ITEMF.record_type
  is '记录类型';
comment on column JK_CMS_REAL_ITEMF.position_x
  is '显示起始位置X';
comment on column JK_CMS_REAL_ITEMF.position_y
  is '显示起始位置Y';
comment on column JK_CMS_REAL_ITEMF.bmp_number
  is '图片编号';
comment on column JK_CMS_REAL_ITEMF.back_color
  is '背景颜色';
comment on column JK_CMS_REAL_ITEMF.shadow_color
  is '阴影颜色';
comment on column JK_CMS_REAL_ITEMF.word_space
  is '字间距';
comment on column JK_CMS_REAL_ITEMF.cms_font_id
  is '字体代码';
comment on column JK_CMS_REAL_ITEMF.word_width
  is '字宽度';
comment on column JK_CMS_REAL_ITEMF.word_height
  is '字高度';
comment on column JK_CMS_REAL_ITEMF.play_text
  is '显示文字';
alter table JK_CMS_REAL_ITEMF
  add constraint PK_JK_CMS_REAL_ITEMF primary key (JK_CMS_REAL_ITEMF_ID)
  ;

prompt Creating JK_CMS_REAL_ITEMZ...
create table JK_CMS_REAL_ITEMZ
(
  jk_cms_real_itemz_id VARCHAR2(32) not null,
  device_id            VARCHAR2(40) not null,
  play_order           NUMBER(2) not null,
  item_name            VARCHAR2(100),
  in_style             NUMBER(2),
  out_style            NUMBER(2),
  io_speed             NUMBER(6),
  stay_time            NUMBER(6),
  is_blinking          NUMBER(1),
  blinking_number      NUMBER(3),
  blinking_speed       NUMBER(3),
  syncflag             NUMBER(1) default 0
)
;
comment on table JK_CMS_REAL_ITEMZ
  is '当前播放内容主表';
comment on column JK_CMS_REAL_ITEMZ.jk_cms_real_itemz_id
  is '记录ID';
comment on column JK_CMS_REAL_ITEMZ.device_id
  is '设备编码';
comment on column JK_CMS_REAL_ITEMZ.play_order
  is '播放序号';
comment on column JK_CMS_REAL_ITEMZ.item_name
  is '播放条目名称';
comment on column JK_CMS_REAL_ITEMZ.in_style
  is '入屏方式';
comment on column JK_CMS_REAL_ITEMZ.out_style
  is '出屏方式';
comment on column JK_CMS_REAL_ITEMZ.io_speed
  is '出入屏速度';
comment on column JK_CMS_REAL_ITEMZ.stay_time
  is '停留时间';
comment on column JK_CMS_REAL_ITEMZ.is_blinking
  is '是否闪烁';
comment on column JK_CMS_REAL_ITEMZ.blinking_number
  is '闪烁次数';
comment on column JK_CMS_REAL_ITEMZ.blinking_speed
  is '闪烁速度';
alter table JK_CMS_REAL_ITEMZ
  add constraint PK_JK_CMS_REAL_ITEMZ primary key (JK_CMS_REAL_ITEMZ_ID)
;

prompt Creating JK_CMS_SUM_DATA...
create table JK_CMS_SUM_DATA
(
  id          VARCHAR2(32) default sys_guid() not null,
  org_id      VARCHAR2(32),
  device_id   VARCHAR2(40),
  memory_type NUMBER(1),
  date_type   NUMBER(1),
  num         NUMBER(8),
  create_time DATE default sysdate not null,
  sum_date    DATE
)
 ;
comment on table JK_CMS_SUM_DATA
  is '情报板发布汇总数据';
comment on column JK_CMS_SUM_DATA.id
  is 'ID';
comment on column JK_CMS_SUM_DATA.org_id
  is '管理机构ID  当MEMORY_TYPE=1时有意义';
comment on column JK_CMS_SUM_DATA.device_id
  is '设备ID  当MEMORY_TYPE=2时有意义';
comment on column JK_CMS_SUM_DATA.memory_type
  is '记录类型  1.机构 2设备';
comment on column JK_CMS_SUM_DATA.date_type
  is '日期格式  1.天 2.周 3.月 4.季 5.年';
comment on column JK_CMS_SUM_DATA.num
  is '统计数量';
comment on column JK_CMS_SUM_DATA.create_time
  is '创建时间';
comment on column JK_CMS_SUM_DATA.sum_date
  is '统计日期';
alter table JK_CMS_SUM_DATA
  add constraint JK_CMS_SUM_DATA primary key (ID)
;

prompt Creating JK_COVI_HISTORY_DATA...
create table JK_COVI_HISTORY_DATA
(
  jk_covi_history_data_id VARCHAR2(32) default sys_guid() not null,
  device_id               VARCHAR2(40) not null,
  device_status_id        NUMBER(1) not null,
  error_message           VARCHAR2(100),
  co_value                NUMBER(10,3) not null,
  vi_value                NUMBER(10,3) not null,
  collect_time            DATE not null,
  no_value                NUMBER(10,3)
)
;
comment on table JK_COVI_HISTORY_DATA
  is 'COVI流水数据表';
comment on column JK_COVI_HISTORY_DATA.jk_covi_history_data_id
  is '记录ID：使用UUID作为主键';
comment on column JK_COVI_HISTORY_DATA.device_id
  is '设备编码';
comment on column JK_COVI_HISTORY_DATA.device_status_id
  is '设备状态';
comment on column JK_COVI_HISTORY_DATA.error_message
  is '设备故障';
comment on column JK_COVI_HISTORY_DATA.co_value
  is 'CO值：单位：ppm';
comment on column JK_COVI_HISTORY_DATA.vi_value
  is 'VI值：单位：m-1';
comment on column JK_COVI_HISTORY_DATA.collect_time
  is '采集时间：当前采集周期的起始时间';
comment on column JK_COVI_HISTORY_DATA.no_value
  is 'NO值：单位：ppm';
alter table JK_COVI_HISTORY_DATA
  add constraint PK_JK_COVI_HISTORY_DATA primary key (JK_COVI_HISTORY_DATA_ID)
  ;

prompt Creating JK_COVI_REAL_DATA...
create table JK_COVI_REAL_DATA
(
  device_id        VARCHAR2(40) not null,
  device_status_id NUMBER(1) not null,
  error_message    VARCHAR2(100),
  co_value         NUMBER(10,3) not null,
  vi_value         NUMBER(10,3) not null,
  collect_time     DATE not null,
  no_value         NUMBER(10,3)
)
;
comment on table JK_COVI_REAL_DATA
  is 'COVI实时数据表';
comment on column JK_COVI_REAL_DATA.device_id
  is '设备编码';
comment on column JK_COVI_REAL_DATA.device_status_id
  is '设备状态';
comment on column JK_COVI_REAL_DATA.error_message
  is '设备故障';
comment on column JK_COVI_REAL_DATA.co_value
  is 'CO值：单位：ppm';
comment on column JK_COVI_REAL_DATA.vi_value
  is 'VI值：单位：m-1';
comment on column JK_COVI_REAL_DATA.collect_time
  is '采集时间：当前采集周期的起始时间';
comment on column JK_COVI_REAL_DATA.no_value
  is 'NO值：单位：ppm';
alter table JK_COVI_REAL_DATA
  add constraint PK_JK_COVI_REAL_DATA primary key (DEVICE_ID)
  ;

prompt Creating JK_COVI_SUM_DATA...
create table JK_COVI_SUM_DATA
(
  jk_covi_sum_data_id VARCHAR2(32) default sys_guid() not null,
  device_id           VARCHAR2(40) not null,
  record_type         NUMBER(1) not null,
  record_time         DATE not null,
  create_time         DATE default SYSDATE not null,
  co_value            NUMBER(10,3) not null,
  vi_value            NUMBER(10,3) not null,
  no_value            NUMBER(10,3)
)
;
comment on table JK_COVI_SUM_DATA
  is 'COVI汇总数据表';
comment on column JK_COVI_SUM_DATA.jk_covi_sum_data_id
  is '记录ID：使用UUID作为主键';
comment on column JK_COVI_SUM_DATA.device_id
  is '设备编码';
comment on column JK_COVI_SUM_DATA.record_type
  is '记录类型';
comment on column JK_COVI_SUM_DATA.record_time
  is '记录所属时间';
comment on column JK_COVI_SUM_DATA.create_time
  is '生成时间';
comment on column JK_COVI_SUM_DATA.co_value
  is 'CO值：单位：ppm';
comment on column JK_COVI_SUM_DATA.vi_value
  is 'VI值：单位：m-1';
comment on column JK_COVI_SUM_DATA.no_value
  is 'NO值：单位：ppm';
alter table JK_COVI_SUM_DATA
  add constraint PK_JK_COVI_SUM_DATA primary key (JK_COVI_SUM_DATA_ID)
  ;

prompt Creating JK_DBSY_TRANSPORT_TASK...
create table JK_DBSY_TRANSPORT_TASK
(
  jk_dbsy_transport_task_id VARCHAR2(40) default Sys_guid() not null,
  data_type                 VARCHAR2(20) not null,
  table_name                VARCHAR2(100) not null,
  table_structure           VARCHAR2(1000),
  destination_address       VARCHAR2(100) not null,
  cycle                     NUMBER(3) not null,
  data_processing           NUMBER(1) not null,
  priority                  NUMBER(1),
  keywords                  VARCHAR2(200),
  flag                      NUMBER(1) default 0
)
;
comment on column JK_DBSY_TRANSPORT_TASK.jk_dbsy_transport_task_id
  is '任务编号';
comment on column JK_DBSY_TRANSPORT_TASK.data_type
  is '数据库类别';
comment on column JK_DBSY_TRANSPORT_TASK.table_name
  is '表名';
comment on column JK_DBSY_TRANSPORT_TASK.table_structure
  is '表结构：为空则默认全部字段；不为空的字段已英文字符‘,’分割';
comment on column JK_DBSY_TRANSPORT_TASK.destination_address
  is '目标地址：传输目标地址（以：为间隔）';
comment on column JK_DBSY_TRANSPORT_TASK.cycle
  is '周期：同步周期(分)';
comment on column JK_DBSY_TRANSPORT_TASK.data_processing
  is '数据处理方式：1：插入
2：更新
3：控制相关
';
comment on column JK_DBSY_TRANSPORT_TASK.priority
  is '队列优先级：1~7级
；0、不分级
';
comment on column JK_DBSY_TRANSPORT_TASK.keywords
  is '关键字：为空时，则代表没有主键；以英文字符‘，’做分隔符；作为更新时的判断条件 ，插入失败时的删除条件';
comment on column JK_DBSY_TRANSPORT_TASK.flag
  is '标识符：任务开启标识符
0：开启
1：关闭
';
alter table JK_DBSY_TRANSPORT_TASK
  add constraint JK_DBSY_TRANSPORT_TASK_ID_PK primary key (JK_DBSY_TRANSPORT_TASK_ID)
  ;

prompt Creating JK_DEVICE_FAULT...
create table JK_DEVICE_FAULT
(
  jk_device_fault_id        VARCHAR2(32) default sys_guid() not null,
  device_id                 VARCHAR2(40) not null,
  device_status_id          NUMBER(1) not null,
  error_message             VARCHAR2(100),
  fault_time                DATE not null,
  release_mark              NUMBER(1) not null,
  release_time              DATE,
  collect_type              NUMBER(1) not null,
  user_id                   VARCHAR2(12),
  collect_time              DATE not null,
  description               VARCHAR2(300),
  jk_device_fault_report_id VARCHAR2(32),
  manual_deal_mode          NUMBER(1) default 0 not null,
  manual_deal_time          DATE,
  manual_deal_user          VARCHAR2(32),
  manual_deal_memo          VARCHAR2(200)
)
;
comment on table JK_DEVICE_FAULT
  is '设备故障信息表';
comment on column JK_DEVICE_FAULT.jk_device_fault_id
  is '记录ID：使用UUID作为主键';
comment on column JK_DEVICE_FAULT.device_id
  is '设备编码';
comment on column JK_DEVICE_FAULT.device_status_id
  is '设备状态';
comment on column JK_DEVICE_FAULT.error_message
  is '设备故障';
comment on column JK_DEVICE_FAULT.fault_time
  is '故障发生时间';
comment on column JK_DEVICE_FAULT.release_mark
  is '故障解除标志：取值：  0：未解除  1：已解除  说明：对于新增的设备故障记录，本字段设置为0；当收到故障解除信息时，置为1';
comment on column JK_DEVICE_FAULT.release_time
  is '故障解除时间';
comment on column JK_DEVICE_FAULT.collect_type
  is '数据采集方式：1:数据交换  2:人工录入';
comment on column JK_DEVICE_FAULT.user_id
  is '最近更新时的用户：仅适用于人工录入方式';
comment on column JK_DEVICE_FAULT.collect_time
  is '采集时间';
comment on column JK_DEVICE_FAULT.description
  is '处理描述';
comment on column JK_DEVICE_FAULT.jk_device_fault_report_id
  is '设备报修单ID';
comment on column JK_DEVICE_FAULT.manual_deal_mode
  is '人工处理方式：0、待处理；1、误报；2、重复；3、不必处理；4、故障处理';
comment on column JK_DEVICE_FAULT.manual_deal_time
  is '处理时间。当“人工处理方式”不为0时有意义';
comment on column JK_DEVICE_FAULT.manual_deal_user
  is '处理人。当“人工处理方式”不为0时有意义';
comment on column JK_DEVICE_FAULT.manual_deal_memo
  is '处理说明。当“人工处理方式”不为0时有意义';
alter table JK_DEVICE_FAULT
  add constraint PK_JK_DEVICE_FAULT primary key (JK_DEVICE_FAULT_ID)
  ;

prompt Creating JK_DEVICE_FAULT_REPORT...
create table JK_DEVICE_FAULT_REPORT
(
  jk_device_fault_report_id VARCHAR2(32) default sys_guid() not null,
  report_id                 VARCHAR2(20) not null,
  create_mode               NUMBER(1) not null,
  device_id                 VARCHAR2(40),
  device_name               VARCHAR2(100) not null,
  device_type_id            VARCHAR2(4) not null,
  fault_description         VARCHAR2(500) not null,
  organization_id           VARCHAR2(20) not null,
  report_user_id            VARCHAR2(32) not null,
  report_time               DATE not null,
  report_status             NUMBER(1) not null,
  maintain_organization     VARCHAR2(100),
  maintainer                VARCHAR2(20),
  maintain_content          VARCHAR2(500),
  maintain_time             DATE,
  close_user_id             VARCHAR2(32),
  close_time                DATE
)
 ;
comment on table JK_DEVICE_FAULT_REPORT
  is '设备故障报修表';
comment on column JK_DEVICE_FAULT_REPORT.jk_device_fault_report_id
  is '记录ID :使用UUID作为主键';
comment on column JK_DEVICE_FAULT_REPORT.report_id
  is '报修单编号 :年月日+4位序号，如：201208270001';
comment on column JK_DEVICE_FAULT_REPORT.create_mode
  is '创建模式 :1:根据设备故障报警填写; 2:手工填写';
comment on column JK_DEVICE_FAULT_REPORT.device_id
  is '设备ID :为保证没有在“设备基本资料表”中描述的设备也能使用本表，特允许本字段可为空';
comment on column JK_DEVICE_FAULT_REPORT.device_name
  is '设备名称';
comment on column JK_DEVICE_FAULT_REPORT.device_type_id
  is '设备类型';
comment on column JK_DEVICE_FAULT_REPORT.fault_description
  is '故障现象及原因';
comment on column JK_DEVICE_FAULT_REPORT.organization_id
  is '报修单位';
comment on column JK_DEVICE_FAULT_REPORT.report_user_id
  is '报修人';
comment on column JK_DEVICE_FAULT_REPORT.report_time
  is '报修时间';
comment on column JK_DEVICE_FAULT_REPORT.report_status
  is '报修单状态: 1:报修状态; 2：维修结束状态';
comment on column JK_DEVICE_FAULT_REPORT.maintain_organization
  is '维修单位';
comment on column JK_DEVICE_FAULT_REPORT.maintainer
  is '维修人';
comment on column JK_DEVICE_FAULT_REPORT.maintain_content
  is '维修内容';
comment on column JK_DEVICE_FAULT_REPORT.maintain_time
  is '维修时间';
comment on column JK_DEVICE_FAULT_REPORT.close_user_id
  is '维修信息录入人';
comment on column JK_DEVICE_FAULT_REPORT.close_time
  is '维修信息录入时间';
alter table JK_DEVICE_FAULT_REPORT
  add constraint JK_DEVICE_FAULT_REPORT primary key (JK_DEVICE_FAULT_REPORT_ID)
;
alter table JK_DEVICE_FAULT_REPORT
  add constraint JK_DEVICE_FAULT_REPORT1 unique (REPORT_ID)
;

prompt Creating JK_DEVICE_FAULT_SUM_DATA...
create table JK_DEVICE_FAULT_SUM_DATA
(
  id             VARCHAR2(32) default sys_guid() not null,
  device_type_id VARCHAR2(4),
  date_type      NUMBER(1),
  deal_mode      NUMBER(1),
  deal_num       NUMBER(8),
  create_time    DATE default sysdate not null,
  sum_date       DATE
)
;
comment on table JK_DEVICE_FAULT_SUM_DATA
  is '设备故障处理方式汇总表';
comment on column JK_DEVICE_FAULT_SUM_DATA.id
  is 'ID';
comment on column JK_DEVICE_FAULT_SUM_DATA.device_type_id
  is '设备类型';
comment on column JK_DEVICE_FAULT_SUM_DATA.date_type
  is '日期格式  1.天 2.周 3.月 4.季 5.年';
comment on column JK_DEVICE_FAULT_SUM_DATA.deal_mode
  is '处理方式';
comment on column JK_DEVICE_FAULT_SUM_DATA.deal_num
  is '处理数量';
comment on column JK_DEVICE_FAULT_SUM_DATA.create_time
  is '创建时间';
comment on column JK_DEVICE_FAULT_SUM_DATA.sum_date
  is '统计日期';
alter table JK_DEVICE_FAULT_SUM_DATA
  add constraint JK_DEVICE_FAULT_SUM_DATA primary key (ID)
;

prompt Creating JK_DEVICE_THRESHOLD...
create table JK_DEVICE_THRESHOLD
(
  jk_device_threshold_id VARCHAR2(32) default SYS_GUID() not null,
  device_id              VARCHAR2(40) not null,
  event_type_id          VARCHAR2(8),
  threshold_feild_id     NUMBER(2),
  threshold_subtype      NUMBER(5) not null,
  value                  NUMBER(10,3),
  last_update_time       DATE not null,
  user_id                VARCHAR2(12) not null
)
;
comment on table JK_DEVICE_THRESHOLD
  is '设备阈值表';
comment on column JK_DEVICE_THRESHOLD.jk_device_threshold_id
  is '记录ID';
comment on column JK_DEVICE_THRESHOLD.device_id
  is '设备编码';
comment on column JK_DEVICE_THRESHOLD.event_type_id
  is '事件类型ID';
comment on column JK_DEVICE_THRESHOLD.threshold_feild_id
  is '字段标识';
comment on column JK_DEVICE_THRESHOLD.threshold_subtype
  is '阈值子类型。取值：
1：上限阈值（>=），当设定的参数超过阈值时报警，
2：下限阈值（<=），当设定的参数低于阈值报警，
9：发生阈值，当设定的参数发生时报警
';
comment on column JK_DEVICE_THRESHOLD.value
  is '阈值';
comment on column JK_DEVICE_THRESHOLD.last_update_time
  is '最近修改时间';
comment on column JK_DEVICE_THRESHOLD.user_id
  is '最近修改人';
alter table JK_DEVICE_THRESHOLD
  add constraint PK_JK_DEVICE_THRESHOLD primary key (JK_DEVICE_THRESHOLD_ID)
  ;

prompt Creating JK_DEV_THRESHOLD...
create table JK_DEV_THRESHOLD
(
  jk_dev_threshold_id VARCHAR2(32) default SYS_GUID() not null,
  obj_id              VARCHAR2(40) not null,
  obj_type            NUMBER(1),
  valid_range         VARCHAR2(200),
  invalid_range       VARCHAR2(40),
  invalid_expression  VARCHAR2(200),
  last_update_time    DATE not null,
  user_id             VARCHAR2(12),
  event_type_id       VARCHAR2(32),
  obj_name            VARCHAR2(100),
  device_type_id      VARCHAR2(12),
  name                VARCHAR2(100),
  descp               VARCHAR2(200)
)
;

prompt Creating JK_DEV_THRESHOLD_F...
create table JK_DEV_THRESHOLD_F
(
  jk_dev_threshold_id VARCHAR2(32) default SYS_GUID(),
  feild_name          VARCHAR2(40) not null,
  valid_range         VARCHAR2(40),
  invalid_range       VARCHAR2(40),
  invalid_expression  VARCHAR2(200),
  create_time         DATE not null,
  f_id                VARCHAR2(32) default SYS_GUID() not null
)
;

prompt Creating JK_ET_HISTORY_DATA...
create table JK_ET_HISTORY_DATA
(
  jk_et_history_data_id VARCHAR2(32) default sys_guid() not null,
  device_id             VARCHAR2(40) not null,
  device_status_id      NUMBER(1) not null,
  error_message         VARCHAR2(100),
  et_status             NUMBER(1) not null,
  collect_time          DATE not null
)
;
comment on table JK_ET_HISTORY_DATA
  is '紧急电话流水数据表';
comment on column JK_ET_HISTORY_DATA.jk_et_history_data_id
  is '记录ID：使用UUID作为主键';
comment on column JK_ET_HISTORY_DATA.device_id
  is '设备编码';
comment on column JK_ET_HISTORY_DATA.device_status_id
  is '设备状态';
comment on column JK_ET_HISTORY_DATA.error_message
  is '设备故障';
comment on column JK_ET_HISTORY_DATA.et_status
  is '紧急电话状态：0：待机  1：呼叫  2：通话';
comment on column JK_ET_HISTORY_DATA.collect_time
  is '采集时间：当前采集周期的起始时间';
alter table JK_ET_HISTORY_DATA
  add constraint PK_JK_ET_HISTORY_DATA primary key (JK_ET_HISTORY_DATA_ID)
  ;

prompt Creating JK_ET_REAL_DATA...
create table JK_ET_REAL_DATA
(
  device_id        VARCHAR2(40) not null,
  device_status_id NUMBER(1) not null,
  error_message    VARCHAR2(100),
  et_status        NUMBER(1) not null,
  collect_time     DATE not null
)
;
comment on table JK_ET_REAL_DATA
  is '紧急电话实时数据表';
comment on column JK_ET_REAL_DATA.device_id
  is '设备编码';
comment on column JK_ET_REAL_DATA.device_status_id
  is '设备状态';
comment on column JK_ET_REAL_DATA.error_message
  is '设备故障';
comment on column JK_ET_REAL_DATA.et_status
  is '紧急电话状态：0：待机  1：呼叫  2：通话';
comment on column JK_ET_REAL_DATA.collect_time
  is '采集时间：当前采集周期的起始时间';
alter table JK_ET_REAL_DATA
  add constraint PK_JK_ET_REAL_DATA primary key (DEVICE_ID)
  ;

prompt Creating JK_EXP_ROAD...
create table JK_EXP_ROAD
(
  road_name VARCHAR2(50) not null,
  sort_no   NUMBER(3) not null,
  road_id   VARCHAR2(32) not null
)
;
alter table JK_EXP_ROAD
  add constraint PK_JK_EXP_ROAD primary key (ROAD_ID)
;

prompt Creating JK_FB_CALLCENTER...
create table JK_FB_CALLCENTER
(
  jk_fb_callcenter_id        VARCHAR2(32) default sys_guid() not null,
  user_id                    VARCHAR2(12) not null,
  description                VARCHAR2(300),
  public_issue_plan_order_id VARCHAR2(32) not null
)
;
comment on table JK_FB_CALLCENTER
  is '日常呼叫中心发布信息表';
comment on column JK_FB_CALLCENTER.jk_fb_callcenter_id
  is '记录ID';
comment on column JK_FB_CALLCENTER.user_id
  is '用户  执行呼叫中心信息发布的用户ID';
comment on column JK_FB_CALLCENTER.description
  is '发布原因';
comment on column JK_FB_CALLCENTER.public_issue_plan_order_id
  is '父表ID';
alter table JK_FB_CALLCENTER
  add constraint JK_FB_CALLCENTER primary key (JK_FB_CALLCENTER_ID)
  ;

prompt Creating JK_FB_HISTORY_DATA...
create table JK_FB_HISTORY_DATA
(
  jk_fb_history_data_id VARCHAR2(32) default sys_guid() not null,
  device_id             VARCHAR2(40) not null,
  device_status_id      NUMBER(1) not null,
  error_message         VARCHAR2(100),
  fb_status             NUMBER(1) not null,
  collect_time          DATE not null
)
;
comment on table JK_FB_HISTORY_DATA
  is '火灾手报按钮流水数据表';
comment on column JK_FB_HISTORY_DATA.jk_fb_history_data_id
  is '记录ID';
comment on column JK_FB_HISTORY_DATA.device_id
  is '设备编码';
comment on column JK_FB_HISTORY_DATA.device_status_id
  is '设备状态';
comment on column JK_FB_HISTORY_DATA.error_message
  is '设备故障';
comment on column JK_FB_HISTORY_DATA.fb_status
  is '火警状态：0：正常；1：报警';
comment on column JK_FB_HISTORY_DATA.collect_time
  is '采集时间';
alter table JK_FB_HISTORY_DATA
  add constraint PK_JK_FB_HISTORY_DATA primary key (JK_FB_HISTORY_DATA_ID)
  ;

prompt Creating JK_FB_REAL_DATA...
create table JK_FB_REAL_DATA
(
  device_id        VARCHAR2(40) not null,
  device_status_id NUMBER(1) not null,
  error_message    VARCHAR2(100),
  fb_status        NUMBER(1) not null,
  collect_time     DATE default SYSDATE not null
)
;
comment on table JK_FB_REAL_DATA
  is '火灾手报按钮实时数据表';
comment on column JK_FB_REAL_DATA.device_id
  is '设备编码';
comment on column JK_FB_REAL_DATA.device_status_id
  is '设备状态';
comment on column JK_FB_REAL_DATA.error_message
  is '设备故障';
comment on column JK_FB_REAL_DATA.fb_status
  is '火警状态：0：正常、1：报警';
comment on column JK_FB_REAL_DATA.collect_time
  is '采集时间';
alter table JK_FB_REAL_DATA
  add constraint PK_JK_FB_REAL_DATA primary key (DEVICE_ID)
  ;

prompt Creating JK_FB_SHORTMESSAGE...
create table JK_FB_SHORTMESSAGE
(
  jk_fb_shortmessage_id VARCHAR2(32) default sys_guid() not null,
  user_id               VARCHAR2(12) not null,
  content               VARCHAR2(300) not null,
  description           VARCHAR2(300) not null,
  create_time           DATE not null,
  isissued              NUMBER(1) not null,
  issue_time            DATE
)
;
comment on table JK_FB_SHORTMESSAGE
  is '日常短信发布表';
comment on column JK_FB_SHORTMESSAGE.jk_fb_shortmessage_id
  is '记录ID';
comment on column JK_FB_SHORTMESSAGE.user_id
  is '用户  执行短信发布行为的用户ID';
comment on column JK_FB_SHORTMESSAGE.content
  is '短信内容';
comment on column JK_FB_SHORTMESSAGE.description
  is '发布原因';
comment on column JK_FB_SHORTMESSAGE.create_time
  is '发布命令创建时间';
comment on column JK_FB_SHORTMESSAGE.isissued
  is '命令执行标志  0:未执行
1:已执行';
comment on column JK_FB_SHORTMESSAGE.issue_time
  is '发布命令执行时间';
alter table JK_FB_SHORTMESSAGE
  add constraint JK_FB_SHORTMESSAGE1 primary key (JK_FB_SHORTMESSAGE_ID)
  ;

prompt Creating JK_FILE_DATA_RELATION...
create table JK_FILE_DATA_RELATION
(
  relation_id   VARCHAR2(32) not null,
  src_data_id   VARCHAR2(32),
  file_id       VARCHAR2(32),
  create_time   DATE default sysdate not null,
  sort_no       NUMBER(2) default 0 not null,
  descp         VARCHAR2(100),
  file_map_path VARCHAR2(200)
)
;
alter table JK_FILE_DATA_RELATION
  add constraint PK_JK_FILE_DATA primary key (RELATION_ID)
;

prompt Creating JK_FILE_UPLOAD...
create table JK_FILE_UPLOAD
(
  id             VARCHAR2(32) not null,
  name           VARCHAR2(50) not null,
  path           VARCHAR2(100) not null,
  type           NUMBER(1) default 0 not null,
  size_kb        NUMBER(8) default 0 not null,
  create_time    DATE default sysdate not null,
  create_user_id VARCHAR2(32),
  descp          VARCHAR2(100)
)
;
alter table JK_FILE_UPLOAD
  add constraint PK_JK_FILE_UPLOAD primary key (ID)
;

prompt Creating JK_FOG_DEVICE_PROFILE...
create table JK_FOG_DEVICE_PROFILE
(
  device_id       VARCHAR2(40) not null,
  device_desc     VARCHAR2(80) not null,
  device_type_id  VARCHAR2(4) not null,
  em_type_id      CHAR(3) not null,
  road_segment_id VARCHAR2(20) not null,
  organization_id VARCHAR2(20) not null,
  direction_id    NUMBER(2) not null,
  dec_stub        NUMBER(10,3) not null,
  char_stub       VARCHAR2(20),
  price           NUMBER(12,2) default 0,
  manufacturer    VARCHAR2(50),
  product_model   VARCHAR2(50),
  quantity        NUMBER(5) default 1,
  installer       VARCHAR2(50),
  install_time    DATE,
  collect_type    NUMBER(1),
  user_id         VARCHAR2(12),
  collect_time    DATE default sysdate not null,
  flag            NUMBER(1) default 1 not null,
  update_time     DATE default sysdate not null,
  communication   NUMBER(1) not null,
  ip              VARCHAR2(20),
  port            VARCHAR2(10),
  bot             NUMBER(7),
  valid           NUMBER(1) default 0 not null,
  other           VARCHAR2(50),
  dal             VARCHAR2(50),
  manufactor_name VARCHAR2(50)
)
;
comment on table JK_FOG_DEVICE_PROFILE
  is '设备基本资料表';
comment on column JK_FOG_DEVICE_PROFILE.device_id
  is '设备ID';
comment on column JK_FOG_DEVICE_PROFILE.device_desc
  is '设备名称或设备描述';
comment on column JK_FOG_DEVICE_PROFILE.device_type_id
  is '设备类型';
comment on column JK_FOG_DEVICE_PROFILE.em_type_id
  is '所属机电系统';
comment on column JK_FOG_DEVICE_PROFILE.road_segment_id
  is '所属路段';
comment on column JK_FOG_DEVICE_PROFILE.organization_id
  is '所属管理机构。要求所有设备的管理机构都应设置为“路段管理处”等管理机构';
comment on column JK_FOG_DEVICE_PROFILE.direction_id
  is '设备所在方向（或位置）';
comment on column JK_FOG_DEVICE_PROFILE.dec_stub
  is '数字桩号';
comment on column JK_FOG_DEVICE_PROFILE.char_stub
  is '字符桩号';
comment on column JK_FOG_DEVICE_PROFILE.price
  is '价格：单位：元';
comment on column JK_FOG_DEVICE_PROFILE.manufacturer
  is '生产厂家';
comment on column JK_FOG_DEVICE_PROFILE.product_model
  is '产品型号';
comment on column JK_FOG_DEVICE_PROFILE.quantity
  is '数量';
comment on column JK_FOG_DEVICE_PROFILE.installer
  is '安装厂商';
comment on column JK_FOG_DEVICE_PROFILE.install_time
  is '安装时间';
comment on column JK_FOG_DEVICE_PROFILE.collect_type
  is '数据采集方式：1:数据交换  2:人工录入';
comment on column JK_FOG_DEVICE_PROFILE.user_id
  is '最近更新时的用户';
comment on column JK_FOG_DEVICE_PROFILE.collect_time
  is '创建时间';
comment on column JK_FOG_DEVICE_PROFILE.flag
  is '删除标志:0：无效；1有效';
comment on column JK_FOG_DEVICE_PROFILE.update_time
  is '修改时间';
comment on column JK_FOG_DEVICE_PROFILE.communication
  is '通信方式:通讯方式必填
0:未知 1TCP 2udp 3串口';
comment on column JK_FOG_DEVICE_PROFILE.ip
  is 'IP地址:串口模式时，填写串口服务器Ip；网络模式时，填写设备ip';
comment on column JK_FOG_DEVICE_PROFILE.port
  is '端口/串口号:串口模式时，填写串口号；网络模式时，填写端口号';
comment on column JK_FOG_DEVICE_PROFILE.bot
  is '串口配置';
comment on column JK_FOG_DEVICE_PROFILE.valid
  is '是否启用标志:设备采集功能是否启用
0：关闭；1启用';
comment on column JK_FOG_DEVICE_PROFILE.other
  is '其他内容';
comment on column JK_FOG_DEVICE_PROFILE.dal
  is '业务类名称';
comment on column JK_FOG_DEVICE_PROFILE.manufactor_name
  is '厂家名称';
alter table JK_FOG_DEVICE_PROFILE
  add constraint PK_JK_FOG_DEVICE_PROFILE primary key (DEVICE_ID)
  ;

prompt Creating JK_FOG_HISTORY_DATA...
create table JK_FOG_HISTORY_DATA
(
  jk_fog_history_data_id  VARCHAR2(32) default sys_guid() not null,
  device_id               VARCHAR2(40) not null,
  device_status_id        NUMBER(1) not null,
  error_message           VARCHAR2(100),
  yellow_light_frequency  NUMBER(1),
  yellow_light_brightness NUMBER(2),
  red_light_frequency     NUMBER(1),
  red_light_brightness    NUMBER(2),
  sensor_status           NUMBER(1),
  collect_time            DATE not null
)
;
alter table JK_FOG_HISTORY_DATA
  add constraint PK_JK_FOG_HISTORY_DATA primary key (JK_FOG_HISTORY_DATA_ID)
;
 

prompt Creating JK_FOG_REAL_DATA...
create table JK_FOG_REAL_DATA
(
  device_id               VARCHAR2(40) not null,
  device_status_id        NUMBER(1) not null,
  error_message           VARCHAR2(100),
  yellow_light_frequency  NUMBER(1),
  yellow_light_brightness NUMBER(2),
  red_light_frequency     NUMBER(1),
  red_light_brightness    NUMBER(2),
  sensor_status           NUMBER(1),
  collect_time            DATE not null,
  synchronism             NUMBER(1) default 1,
  syncflag                NUMBER(1) default 0
)
;
comment on table JK_FOG_REAL_DATA
  is '雾气实时数据表';
comment on column JK_FOG_REAL_DATA.device_id
  is '设备编码';
comment on column JK_FOG_REAL_DATA.device_status_id
  is '设备状态';
comment on column JK_FOG_REAL_DATA.error_message
  is '设备故障';
comment on column JK_FOG_REAL_DATA.yellow_light_frequency
  is '黄灯频率, 0: 关闭，1: 常亮，2: 30次/分钟，3: 60次/分钟，4: 120次/分钟，其它值无效';
comment on column JK_FOG_REAL_DATA.yellow_light_brightness
  is '黄灯亮度:1—10';
comment on column JK_FOG_REAL_DATA.red_light_frequency
  is '红灯频率 ,0: 关闭，1: 常亮，2: 30次/分钟，3: 60次/分钟，4: 120次/分钟，其它值无效';
comment on column JK_FOG_REAL_DATA.red_light_brightness
  is '红灯亮度:1—10';
comment on column JK_FOG_REAL_DATA.sensor_status
  is '车检器状态,0：关闭，1：开启';
comment on column JK_FOG_REAL_DATA.collect_time
  is '采集时间：当前采集周期的起始时间';
comment on column JK_FOG_REAL_DATA.synchronism
  is '记录来源。1：原生记录；2：同步记录';
alter table JK_FOG_REAL_DATA
  add constraint PK_JK_FOG_REAL_DATA primary key (DEVICE_ID)
 ;
 

prompt Creating JK_HT_HISTORY_DATA...
create table JK_HT_HISTORY_DATA
(
  jk_ht_history_data_id VARCHAR2(32) default sys_guid() not null,
  device_id             VARCHAR2(40) not null,
  device_status_id      NUMBER(1) not null,
  error_message         VARCHAR2(100),
  ht_status             NUMBER(1) not null,
  collect_time          DATE not null
)
;
comment on table JK_HT_HISTORY_DATA
  is '防火门流水数据表';
comment on column JK_HT_HISTORY_DATA.jk_ht_history_data_id
  is '记录ID：使用UUID作为主键';
comment on column JK_HT_HISTORY_DATA.device_id
  is '设备编码';
comment on column JK_HT_HISTORY_DATA.device_status_id
  is '设备状态';
comment on column JK_HT_HISTORY_DATA.error_message
  is '设备故障';
comment on column JK_HT_HISTORY_DATA.ht_status
  is '防火门状态反馈：0：关  1：开';
comment on column JK_HT_HISTORY_DATA.collect_time
  is '采集时间：当前采集周期的起始时间';
alter table JK_HT_HISTORY_DATA
  add constraint PK_JK_HT_HISTORY_DATA primary key (JK_HT_HISTORY_DATA_ID)
  ;

prompt Creating JK_HT_REAL_DATA...
create table JK_HT_REAL_DATA
(
  device_id        VARCHAR2(40) not null,
  device_status_id NUMBER(1) not null,
  error_message    VARCHAR2(100),
  ht_status        NUMBER(1) not null,
  collect_time     DATE not null
)
;
comment on table JK_HT_REAL_DATA
  is '防火门实时数据表';
comment on column JK_HT_REAL_DATA.device_id
  is '设备编码';
comment on column JK_HT_REAL_DATA.device_status_id
  is '设备状态';
comment on column JK_HT_REAL_DATA.error_message
  is '设备故障';
comment on column JK_HT_REAL_DATA.ht_status
  is '防火门状态反馈：0：关  1：开';
comment on column JK_HT_REAL_DATA.collect_time
  is '采集时间：当前采集周期的起始时间';
alter table JK_HT_REAL_DATA
  add constraint PK_JK_HT_REAL_DATA primary key (DEVICE_ID)
  ;

prompt Creating JK_JET_HISTORY_DATA...
create table JK_JET_HISTORY_DATA
(
  jk_jet_history_data_id VARCHAR2(32) default sys_guid() not null,
  device_id              VARCHAR2(40) not null,
  device_status_id       NUMBER(1) not null,
  error_message          VARCHAR2(100),
  jet_status             NUMBER(1) not null,
  collect_time           DATE not null
)
;
comment on table JK_JET_HISTORY_DATA
  is '风机流水数据表';
comment on column JK_JET_HISTORY_DATA.jk_jet_history_data_id
  is '记录ID：使用UUID作为主键';
comment on column JK_JET_HISTORY_DATA.device_id
  is '设备编码';
comment on column JK_JET_HISTORY_DATA.device_status_id
  is '设备状态';
comment on column JK_JET_HISTORY_DATA.error_message
  is '设备故障';
comment on column JK_JET_HISTORY_DATA.jet_status
  is '风机状态反馈：0：停止  1：正转  2：反转';
comment on column JK_JET_HISTORY_DATA.collect_time
  is '采集时间：当前采集周期的起始时间';
alter table JK_JET_HISTORY_DATA
  add constraint PK_JK_JET_HISTORY_DATA primary key (JK_JET_HISTORY_DATA_ID)
  ;

prompt Creating JK_JET_REAL_DATA...
create table JK_JET_REAL_DATA
(
  device_id        VARCHAR2(40) not null,
  device_status_id NUMBER(1) not null,
  error_message    VARCHAR2(100),
  jet_status       NUMBER(1) not null,
  collect_time     DATE not null
)
;
comment on table JK_JET_REAL_DATA
  is '风机实时数据表';
comment on column JK_JET_REAL_DATA.device_id
  is '设备编码';
comment on column JK_JET_REAL_DATA.device_status_id
  is '设备状态';
comment on column JK_JET_REAL_DATA.error_message
  is '设备故障';
comment on column JK_JET_REAL_DATA.jet_status
  is '风机状态反馈：0：停止  1：正转  2：反转';
comment on column JK_JET_REAL_DATA.collect_time
  is '采集时间：当前采集周期的起始时间';
alter table JK_JET_REAL_DATA
  add constraint PK_JK_JET_REAL_DATA primary key (DEVICE_ID)
  ;

prompt Creating JK_LS_HISTORY_DATA...
create table JK_LS_HISTORY_DATA
(
  jk_ls_history_data_id VARCHAR2(40) not null,
  device_id             VARCHAR2(40) not null,
  device_status_id      NUMBER(1),
  error_message         VARCHAR2(100),
  turn_status           NUMBER(1),
  collect_time          DATE
)
;
comment on table JK_LS_HISTORY_DATA
  is '转向指示器流水数据表';
comment on column JK_LS_HISTORY_DATA.jk_ls_history_data_id
  is '记录ID：使用UUID作为主键';
comment on column JK_LS_HISTORY_DATA.device_id
  is '设备编码';
comment on column JK_LS_HISTORY_DATA.device_status_id
  is '设备状态';
comment on column JK_LS_HISTORY_DATA.error_message
  is '设备故障';
comment on column JK_LS_HISTORY_DATA.turn_status
  is '转向指示器状态反馈：1：亮  0：灭';
comment on column JK_LS_HISTORY_DATA.collect_time
  is '采集时间：当前采集周期的起始时间';
alter table JK_LS_HISTORY_DATA
  add constraint PK_JK_LS_HISTORY_DATA primary key (JK_LS_HISTORY_DATA_ID)
  ;

prompt Creating JK_LS_REAL_DATA...
create table JK_LS_REAL_DATA
(
  device_id        VARCHAR2(40) not null,
  device_status_id NUMBER(1) not null,
  error_message    VARCHAR2(100),
  turn_status      NUMBER(1) not null,
  collect_time     DATE not null
)
;
comment on table JK_LS_REAL_DATA
  is '转向指示器';
comment on column JK_LS_REAL_DATA.device_id
  is '设备编码';
comment on column JK_LS_REAL_DATA.device_status_id
  is '设备状态';
comment on column JK_LS_REAL_DATA.error_message
  is '设备故障';
comment on column JK_LS_REAL_DATA.turn_status
  is '转向指示器状态反馈：1：亮  0：灭';
comment on column JK_LS_REAL_DATA.collect_time
  is '采集时间：当前采集周期的起始时间';
alter table JK_LS_REAL_DATA
  add constraint PK_JK_LS_REAL_DATA primary key (DEVICE_ID)
  ;

prompt Creating JK_LT_HISTORY_DATA...
create table JK_LT_HISTORY_DATA
(
  jk_lt_history_data_id VARCHAR2(32) default sys_guid() not null,
  device_id             VARCHAR2(40) not null,
  device_status_id      NUMBER(1) not null,
  error_message         VARCHAR2(100),
  light_status          NUMBER(1) not null,
  collect_time          DATE not null
)
;
comment on table JK_LT_HISTORY_DATA
  is '照明回路流水数据表';
comment on column JK_LT_HISTORY_DATA.jk_lt_history_data_id
  is '记录ID：使用UUID作为主键';
comment on column JK_LT_HISTORY_DATA.device_id
  is '设备编码';
comment on column JK_LT_HISTORY_DATA.device_status_id
  is '设备状态';
comment on column JK_LT_HISTORY_DATA.error_message
  is '设备故障';
comment on column JK_LT_HISTORY_DATA.light_status
  is '照明状态反馈：0：灭  1：亮';
comment on column JK_LT_HISTORY_DATA.collect_time
  is '采集时间：当前采集周期的起始时间';
alter table JK_LT_HISTORY_DATA
  add constraint PK_JK_LT_HISTORY_DATA primary key (JK_LT_HISTORY_DATA_ID)
  ;

prompt Creating JK_LT_REAL_DATA...
create table JK_LT_REAL_DATA
(
  device_id        VARCHAR2(40) not null,
  device_status_id NUMBER(1) not null,
  error_message    VARCHAR2(100),
  light_status     NUMBER(1) not null,
  collect_time     DATE not null
)
;
comment on table JK_LT_REAL_DATA
  is '照明回路实时数据表';
comment on column JK_LT_REAL_DATA.device_id
  is '设备编码';
comment on column JK_LT_REAL_DATA.device_status_id
  is '设备状态';
comment on column JK_LT_REAL_DATA.error_message
  is '设备故障';
comment on column JK_LT_REAL_DATA.light_status
  is '照明状态反馈：0：灭  1：亮';
comment on column JK_LT_REAL_DATA.collect_time
  is '采集时间：当前采集周期的起始时间';
alter table JK_LT_REAL_DATA
  add constraint PK_JK_LT_REAL_DATA primary key (DEVICE_ID)
  ;

prompt Creating JK_LUX_DEVICE_PROFILE...
create table JK_LUX_DEVICE_PROFILE
(
  device_id       VARCHAR2(40) not null,
  device_desc     VARCHAR2(50) not null,
  device_type_id  VARCHAR2(4) not null,
  em_type_id      CHAR(3) not null,
  road_segment_id VARCHAR2(20) not null,
  organization_id VARCHAR2(20) not null,
  direction_id    NUMBER(1) not null,
  dec_stub        NUMBER(10,3) not null,
  char_stub       VARCHAR2(20),
  price           NUMBER(12,2) default 0,
  manufacturer    VARCHAR2(50),
  product_model   VARCHAR2(50),
  installer       VARCHAR2(50),
  install_time    DATE,
  camid           VARCHAR2(60),
  equipmenttype   VARCHAR2(3),
  panoramaflag    VARCHAR2(2) default 1,
  laneid          VARCHAR2(2),
  lanetype        VARCHAR2(2),
  communication   NUMBER(1) not null,
  ip              VARCHAR2(20),
  port            NUMBER(5),
  bot             NUMBER(7),
  valid           NUMBER(1) default 0 not null,
  other           VARCHAR2(50),
  dal             VARCHAR2(50),
  manufactor_name VARCHAR2(50),
  flag            NUMBER(1) default 1 not null,
  create_time     DATE default sysdate not null,
  update_time     DATE default sysdate not null,
  collect_type    NUMBER(1),
  user_id         VARCHAR2(12)
)
;
comment on table JK_LUX_DEVICE_PROFILE
  is '照度设备资料表';
comment on column JK_LUX_DEVICE_PROFILE.device_id
  is '设备ID';
comment on column JK_LUX_DEVICE_PROFILE.device_desc
  is '设备名称或设备描述';
comment on column JK_LUX_DEVICE_PROFILE.device_type_id
  is '设备类型';
comment on column JK_LUX_DEVICE_PROFILE.em_type_id
  is '所属机电系统';
comment on column JK_LUX_DEVICE_PROFILE.road_segment_id
  is '所属路段';
comment on column JK_LUX_DEVICE_PROFILE.organization_id
  is '所属管理机构';
comment on column JK_LUX_DEVICE_PROFILE.direction_id
  is '设备所在方向（或位置）';
comment on column JK_LUX_DEVICE_PROFILE.dec_stub
  is '数字桩号';
comment on column JK_LUX_DEVICE_PROFILE.char_stub
  is '字符桩号';
comment on column JK_LUX_DEVICE_PROFILE.price
  is '价格 单位：元';
comment on column JK_LUX_DEVICE_PROFILE.manufacturer
  is '生产厂家';
comment on column JK_LUX_DEVICE_PROFILE.product_model
  is '产品型号';
comment on column JK_LUX_DEVICE_PROFILE.installer
  is '安装厂商';
comment on column JK_LUX_DEVICE_PROFILE.install_time
  is '安装时间';
comment on column JK_LUX_DEVICE_PROFILE.camid
  is '卡口相机编号（设备厂商提供）';
comment on column JK_LUX_DEVICE_PROFILE.equipmenttype
  is '采集类型 01-电警，02-公路卡口，03-固定测速，04-视频监控，05-移动电子警察，06-行车记录仪，09-其他电子监控设备';
comment on column JK_LUX_DEVICE_PROFILE.panoramaflag
  is '全景标志';
comment on column JK_LUX_DEVICE_PROFILE.laneid
  is '车道编号 从1开始。车辆行驶方向最左车道为1，由左向右顺序编号。';
comment on column JK_LUX_DEVICE_PROFILE.lanetype
  is '车道类型0-机动车道，1-非机动车道';
comment on column JK_LUX_DEVICE_PROFILE.communication
  is '通信方式';
comment on column JK_LUX_DEVICE_PROFILE.ip
  is 'IP地址';
comment on column JK_LUX_DEVICE_PROFILE.port
  is '端口/串口号';
comment on column JK_LUX_DEVICE_PROFILE.bot
  is '串口配置';
comment on column JK_LUX_DEVICE_PROFILE.valid
  is '是否启用标志0：关闭；1启用';
comment on column JK_LUX_DEVICE_PROFILE.other
  is '其他内容';
comment on column JK_LUX_DEVICE_PROFILE.dal
  is '业务类名称';
comment on column JK_LUX_DEVICE_PROFILE.manufactor_name
  is '厂家名称';
comment on column JK_LUX_DEVICE_PROFILE.flag
  is '删除标志0：无效；1有效';
comment on column JK_LUX_DEVICE_PROFILE.create_time
  is '创建时间';
comment on column JK_LUX_DEVICE_PROFILE.update_time
  is '修改时间';
comment on column JK_LUX_DEVICE_PROFILE.collect_type
  is '数据采集方式1:数据交换  2:人工录入';
comment on column JK_LUX_DEVICE_PROFILE.user_id
  is '最近更新时的用户';
alter table JK_LUX_DEVICE_PROFILE
  add constraint PK_JK_LUX_DEVICE_PROFILE primary key (DEVICE_ID)
  ;

prompt Creating JK_LUX_HISTORY_DATA...
create table JK_LUX_HISTORY_DATA
(
  jk_lux_history_data_id VARCHAR2(32) default sys_guid() not null,
  device_id              VARCHAR2(40) not null,
  device_status_id       NUMBER(1) not null,
  error_message          VARCHAR2(100),
  lux_value              NUMBER(10,3) not null,
  collect_time           DATE not null
)
;
comment on table JK_LUX_HISTORY_DATA
  is '照度仪流水数据表';
comment on column JK_LUX_HISTORY_DATA.jk_lux_history_data_id
  is '记录ID：使用UUID作为主键';
comment on column JK_LUX_HISTORY_DATA.device_id
  is '设备编码';
comment on column JK_LUX_HISTORY_DATA.device_status_id
  is '设备状态';
comment on column JK_LUX_HISTORY_DATA.error_message
  is '设备故障';
comment on column JK_LUX_HISTORY_DATA.lux_value
  is '照度值';
comment on column JK_LUX_HISTORY_DATA.collect_time
  is '采集时间：当前采集周期的起始时间';
alter table JK_LUX_HISTORY_DATA
  add constraint PK_JK_LUX_HISTORY_DATA primary key (JK_LUX_HISTORY_DATA_ID)
  ;

prompt Creating JK_LUX_REAL_DATA...
create table JK_LUX_REAL_DATA
(
  device_id        VARCHAR2(40) not null,
  device_status_id NUMBER(1) not null,
  error_message    VARCHAR2(100),
  lux_value        NUMBER(10,3) not null,
  collect_time     DATE not null
)
;
comment on table JK_LUX_REAL_DATA
  is '照度仪实时数据表';
comment on column JK_LUX_REAL_DATA.device_id
  is '设备编码';
comment on column JK_LUX_REAL_DATA.device_status_id
  is '设备状态';
comment on column JK_LUX_REAL_DATA.error_message
  is '设备故障';
comment on column JK_LUX_REAL_DATA.lux_value
  is '照度值';
comment on column JK_LUX_REAL_DATA.collect_time
  is '采集时间：当前采集周期的起始时间';
alter table JK_LUX_REAL_DATA
  add constraint PK_JK_LUX_REAL_DATA primary key (DEVICE_ID)
  ;

prompt Creating JK_MESSAGE_FLOW...
create table JK_MESSAGE_FLOW
(
  jk_message_flow_id VARCHAR2(32) default sys_guid() not null,
  road_id            VARCHAR2(21) not null,
  direction_id       NUMBER(1) not null,
  dec_stub           NUMBER(10,3),
  collect_date       DATE not null,
  period_id          NUMBER(2),
  traffic_status_id  NUMBER(1) not null,
  speed              NUMBER(6,2) not null,
  occupancy          NUMBER(5,2) not null,
  flow               NUMBER(8) not null,
  flow_truck         NUMBER(8) not null,
  flow_car           NUMBER(8) not null,
  flow_corrected     NUMBER(8),
  description        VARCHAR2(500),
  enter_user_id      VARCHAR2(33),
  informant          VARCHAR2(20) not null,
  phone              VARCHAR2(20),
  insert_time        DATE default sysdate not null,
  audit_mark         NUMBER(1) default 0 not null,
  audit_time         DATE,
  audit_user_id      VARCHAR2(32),
  auditor            VARCHAR2(20),
  char_stub          VARCHAR2(10),
  data_origin        NUMBER(1) default 0 not null,
  audit_remark       VARCHAR2(2000)
)
 ;
comment on table JK_MESSAGE_FLOW
  is '车流量信息报送表';
comment on column JK_MESSAGE_FLOW.jk_message_flow_id
  is '记录ID';
comment on column JK_MESSAGE_FLOW.road_id
  is '路段编码';
comment on column JK_MESSAGE_FLOW.direction_id
  is '方向:1 上行、2 下行';
comment on column JK_MESSAGE_FLOW.dec_stub
  is '断面桩号';
comment on column JK_MESSAGE_FLOW.collect_date
  is '统计日期:精确到年月日';
comment on column JK_MESSAGE_FLOW.period_id
  is '统计周期:按小时统计，1、0~1时；2、1~2时 …… 23、23~24时';
comment on column JK_MESSAGE_FLOW.traffic_status_id
  is '拥挤度类型:0、畅通（绿色）；1、基本畅通（蓝色）；2、轻度拥堵（黄色）；3、中度拥堵（橙色）；4、重度拥堵（红色）';
comment on column JK_MESSAGE_FLOW.speed
  is '平均速度';
comment on column JK_MESSAGE_FLOW.occupancy
  is '平均占有率:单位 %';
comment on column JK_MESSAGE_FLOW.flow
  is '车流量合计';
comment on column JK_MESSAGE_FLOW.flow_truck
  is '大车数量';
comment on column JK_MESSAGE_FLOW.flow_car
  is '小客车数量';
comment on column JK_MESSAGE_FLOW.flow_corrected
  is '折算车流量';
comment on column JK_MESSAGE_FLOW.description
  is '备注';
comment on column JK_MESSAGE_FLOW.enter_user_id
  is '填报用户ID';
comment on column JK_MESSAGE_FLOW.informant
  is '填报人';
comment on column JK_MESSAGE_FLOW.phone
  is '联系电话';
comment on column JK_MESSAGE_FLOW.insert_time
  is '填报时间';
comment on column JK_MESSAGE_FLOW.audit_mark
  is '审核标志:0、未审核；1、审核未通过；2、审核发布；3、审核不发布';
comment on column JK_MESSAGE_FLOW.audit_time
  is '审核时间';
comment on column JK_MESSAGE_FLOW.audit_user_id
  is '审核人代码';
comment on column JK_MESSAGE_FLOW.auditor
  is '审核人姓名';
comment on column JK_MESSAGE_FLOW.char_stub
  is '字符桩号';
comment on column JK_MESSAGE_FLOW.data_origin
  is '数据来源:0、分中心监控系统；1、外网信息报送系统';
alter table JK_MESSAGE_FLOW
  add constraint PK_JK_MESSAGE_FLOW primary key (JK_MESSAGE_FLOW_ID)
;

prompt Creating JK_MESSAGE_PAPERCARD...
create table JK_MESSAGE_PAPERCARD
(
  jk_message_papercard_id VARCHAR2(32) default sys_guid() not null,
  road_id                 VARCHAR2(20) not null,
  org_id                  VARCHAR2(20) not null,
  use_date                DATE not null,
  enter_user_id           VARCHAR2(32),
  informant               VARCHAR2(20) not null,
  reason_id               NUMBER(1) not null,
  reason_description      VARCHAR2(200),
  quantity                NUMBER(6) not null,
  description             VARCHAR2(500),
  insert_time             DATE default sysdate not null,
  data_origin             NUMBER(1) default 0 not null,
  audit_mark              NUMBER(1) default 0 not null,
  audit_time              DATE,
  audit_user_id           VARCHAR2(32),
  auditor                 VARCHAR2(20),
  use_time                VARCHAR2(200),
  audit_remark            VARCHAR2(2000)
)
 ;
comment on table JK_MESSAGE_PAPERCARD
  is '保存纸卡量报送的信息';
comment on column JK_MESSAGE_PAPERCARD.jk_message_papercard_id
  is '记录ID';
comment on column JK_MESSAGE_PAPERCARD.road_id
  is '路段编码';
comment on column JK_MESSAGE_PAPERCARD.org_id
  is '服务区编码';
comment on column JK_MESSAGE_PAPERCARD.use_date
  is '使用日期:精确到年月日';
comment on column JK_MESSAGE_PAPERCARD.enter_user_id
  is '填报用户ID';
comment on column JK_MESSAGE_PAPERCARD.informant
  is '填报人';
comment on column JK_MESSAGE_PAPERCARD.reason_id
  is '使用原因代码:1、车流量大；2、通行卡不足；3、设备故障；4、车流量大且设备故障；9、其他';
comment on column JK_MESSAGE_PAPERCARD.reason_description
  is '使用原因说明';
comment on column JK_MESSAGE_PAPERCARD.quantity
  is '合计数量';
comment on column JK_MESSAGE_PAPERCARD.description
  is '备注';
comment on column JK_MESSAGE_PAPERCARD.insert_time
  is '填报时间';
comment on column JK_MESSAGE_PAPERCARD.data_origin
  is '数据来源:0:本地上报 1:31.6db 2:外网报送';
comment on column JK_MESSAGE_PAPERCARD.audit_mark
  is '审核标志:0、未审核；1、审核未通过 2、审核通过';
comment on column JK_MESSAGE_PAPERCARD.audit_time
  is '审核时间';
comment on column JK_MESSAGE_PAPERCARD.audit_user_id
  is '审核人代码';
comment on column JK_MESSAGE_PAPERCARD.auditor
  is '审核人姓名';
comment on column JK_MESSAGE_PAPERCARD.use_time
  is '使用时间段，顿号分割';
alter table JK_MESSAGE_PAPERCARD
  add constraint PK_JK_MESSAGE_PAPERCARD primary key (JK_MESSAGE_PAPERCARD_ID)
 ;

prompt Creating JK_MESSAGE_PAPERCARD_DATE...
create table JK_MESSAGE_PAPERCARD_DATE
(
  jk_message_papercard_date_id VARCHAR2(32) default sys_guid() not null,
  jk_message_papercard_id      VARCHAR2(32) not null,
  start_time                   DATE not null,
  end_time                     DATE not null
)
 ;
comment on table JK_MESSAGE_PAPERCARD_DATE
  is '纸卡量信息报送时间段子表';
comment on column JK_MESSAGE_PAPERCARD_DATE.jk_message_papercard_date_id
  is '记录ID';
comment on column JK_MESSAGE_PAPERCARD_DATE.jk_message_papercard_id
  is '主表主键';
comment on column JK_MESSAGE_PAPERCARD_DATE.start_time
  is '起始时间';
comment on column JK_MESSAGE_PAPERCARD_DATE.end_time
  is '终止时间';
alter table JK_MESSAGE_PAPERCARD_DATE
  add constraint PK_JK_MESSAGE_PAPERCARD_DATE primary key (JK_MESSAGE_PAPERCARD_DATE_ID)
 ;

prompt Creating JK_MESSAGE_PAPERCARD_NUMBER...
create table JK_MESSAGE_PAPERCARD_NUMBER
(
  jk_message_papercard_number_id VARCHAR2(32) default sys_guid() not null,
  jk_message_papercard_date_id   VARCHAR2(32) not null,
  start_number                   VARCHAR2(32) not null,
  end_number                     VARCHAR2(32) not null,
  jk_message_papercard_id        VARCHAR2(32)
)
 ;
comment on table JK_MESSAGE_PAPERCARD_NUMBER
  is '纸卡量信息报送号段子表';
comment on column JK_MESSAGE_PAPERCARD_NUMBER.jk_message_papercard_number_id
  is '记录ID';
comment on column JK_MESSAGE_PAPERCARD_NUMBER.jk_message_papercard_date_id
  is '时间段子表主键';
comment on column JK_MESSAGE_PAPERCARD_NUMBER.start_number
  is '起始号码';
comment on column JK_MESSAGE_PAPERCARD_NUMBER.end_number
  is '终止号码';
alter table JK_MESSAGE_PAPERCARD_NUMBER
  add constraint PK_JK_MESSAGE_PAPERCARD_NUMBER primary key (JK_MESSAGE_PAPERCARD_NUMBER_ID)
 ;

prompt Creating JK_MESSAGE_SERVICEZONE...
create table JK_MESSAGE_SERVICEZONE
(
  jk_message_servicezone_id VARCHAR2(32) default sys_guid() not null,
  road_id                   VARCHAR2(12) not null,
  org_id                    VARCHAR2(20) not null,
  current_status            NUMBER(1),
  diningroom_status         NUMBER(1),
  guestroom_status          NUMBER(1),
  repairfactory_status      NUMBER(1),
  gasstation_status         NUMBER(1),
  description               VARCHAR2(1000),
  discovery_time            DATE not null,
  being_recovered_time      DATE,
  recovered_time            DATE,
  enter_user_id             VARCHAR2(50),
  informant                 VARCHAR2(32) not null,
  insert_time               DATE default sysdate not null,
  data_origin               NUMBER(1),
  audit_mark                NUMBER(1) default 0 not null,
  audit_time                DATE,
  audit_user_id             VARCHAR2(50),
  auditor                   VARCHAR2(32),
  audit_synchro_mark        NUMBER(1) default 0 not null,
  audit_synchro_time        DATE,
  publish_synchro_mark      NUMBER(1) default 0 not null,
  publish_synchro_time      DATE,
  telephone                 VARCHAR2(20),
  direction_id              NUMBER(2),
  wifi_status               NUMBER(1) default 0,
  washroom_status           NUMBER(1) default 0,
  park_num                  NUMBER(3) default 0,
  create_time               DATE,
  sep_no                    NUMBER(10) default 0,
  audit_remark              VARCHAR2(2000),
  park_num_all              NUMBER(3) default 0
)
;
comment on table JK_MESSAGE_SERVICEZONE
  is '服务区信息报送表';
comment on column JK_MESSAGE_SERVICEZONE.jk_message_servicezone_id
  is '记录ID';
comment on column JK_MESSAGE_SERVICEZONE.road_id
  is '路段编码';
comment on column JK_MESSAGE_SERVICEZONE.org_id
  is '服务区编码';
comment on column JK_MESSAGE_SERVICEZONE.current_status
  is '目前状态:0、关闭；1、开启';
comment on column JK_MESSAGE_SERVICEZONE.diningroom_status
  is '餐厅情况:0、不能就餐；1、能就餐；9、无餐厅';
comment on column JK_MESSAGE_SERVICEZONE.guestroom_status
  is '客房情况:0、不可住宿；1、可住宿；9、无';
comment on column JK_MESSAGE_SERVICEZONE.repairfactory_status
  is '修理厂情况:0、已停用、1、正常使用；9、无修理厂';
comment on column JK_MESSAGE_SERVICEZONE.gasstation_status
  is '加油站情况:0、已停用；1、正常使用；9、无加油站';
comment on column JK_MESSAGE_SERVICEZONE.description
  is '情况描述';
comment on column JK_MESSAGE_SERVICEZONE.discovery_time
  is '发现时间';
comment on column JK_MESSAGE_SERVICEZONE.being_recovered_time
  is '预计恢复时间';
comment on column JK_MESSAGE_SERVICEZONE.recovered_time
  is '实际恢复时间';
comment on column JK_MESSAGE_SERVICEZONE.enter_user_id
  is '填报用户ID';
comment on column JK_MESSAGE_SERVICEZONE.informant
  is '填报人';
comment on column JK_MESSAGE_SERVICEZONE.insert_time
  is '填报时间';
comment on column JK_MESSAGE_SERVICEZONE.data_origin
  is '数据来源:0:本地上报 1:31.6db 2:外网报送 3:卡口数据匹配服务生成';
comment on column JK_MESSAGE_SERVICEZONE.audit_mark
  is '审核标志:0、未审核；1、审核未通过；2、审核通过';
comment on column JK_MESSAGE_SERVICEZONE.audit_time
  is '审核时间';
comment on column JK_MESSAGE_SERVICEZONE.audit_user_id
  is '审核人代码';
comment on column JK_MESSAGE_SERVICEZONE.auditor
  is '审核人姓名';
comment on column JK_MESSAGE_SERVICEZONE.audit_synchro_mark
  is '审核同步标志:分中心（0、未被读取；1、已被读取；2、已回写）；省中心（0、未回写；已回写）；前置机（0、未被读取；1、已被读取）';
comment on column JK_MESSAGE_SERVICEZONE.audit_synchro_time
  is '审核同步时间';
comment on column JK_MESSAGE_SERVICEZONE.publish_synchro_mark
  is '发布同步标志:0、未发布；1、已发布';
comment on column JK_MESSAGE_SERVICEZONE.publish_synchro_time
  is '发布同步时间';
comment on column JK_MESSAGE_SERVICEZONE.telephone
  is '联系电话
';
comment on column JK_MESSAGE_SERVICEZONE.direction_id
  is '方向';
comment on column JK_MESSAGE_SERVICEZONE.wifi_status
  is 'WIFI情况:0、已停用；1、正常使用；9、无WIFI';
comment on column JK_MESSAGE_SERVICEZONE.washroom_status
  is '卫生间情况:0、已停用；1、正常使用；9、无卫生间';
comment on column JK_MESSAGE_SERVICEZONE.park_num
  is '车位数量';
comment on column JK_MESSAGE_SERVICEZONE.create_time
  is '接收时间';
comment on column JK_MESSAGE_SERVICEZONE.sep_no
  is '序列号';
comment on column JK_MESSAGE_SERVICEZONE.park_num_all
  is '总车位数';
alter table JK_MESSAGE_SERVICEZONE
  add constraint PK_JK_MESSAGE_SERVICEZONE primary key (JK_MESSAGE_SERVICEZONE_ID)
  ;

prompt Creating JK_MESSAGE_SERVICEZONE_UPLOAD...
create table JK_MESSAGE_SERVICEZONE_UPLOAD
(
  jk_message_servicezone_id VARCHAR2(32) default sys_guid() not null,
  road_id                   VARCHAR2(12) not null,
  org_id                    VARCHAR2(20) not null,
  current_status            NUMBER(1),
  diningroom_status         NUMBER(1),
  guestroom_status          NUMBER(1),
  repairfactory_status      NUMBER(1),
  gasstation_status         NUMBER(1),
  description               VARCHAR2(500),
  discovery_time            DATE not null,
  being_recovered_time      DATE,
  recovered_time            DATE,
  enter_user_id             VARCHAR2(50),
  informant                 VARCHAR2(32) not null,
  insert_time               DATE default sysdate not null,
  data_origin               NUMBER(1),
  telephone                 VARCHAR2(20),
  direction_id              NUMBER(2),
  wifi_status               NUMBER(1) default 0,
  washroom_status           NUMBER(1) default 0,
  park_num                  NUMBER(3) default 0,
  create_time               DATE,
  sep_no                    NUMBER(10) default 0,
  park_num_all              NUMBER(3) default 0
)
;
comment on table JK_MESSAGE_SERVICEZONE_UPLOAD
  is '服务区信息报送表';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.jk_message_servicezone_id
  is '记录ID';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.road_id
  is '路段编码';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.org_id
  is '服务区编码';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.current_status
  is '目前状态:0、关闭；1、开启';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.diningroom_status
  is '餐厅情况:0、不能就餐；1、能就餐；9、无餐厅';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.guestroom_status
  is '客房情况:0、不可住宿；1、可住宿；9、无';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.repairfactory_status
  is '修理厂情况:0、已停用、1、正常使用；9、无修理厂';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.gasstation_status
  is '加油站情况:0、已停用；1、正常使用；9、无加油站';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.description
  is '情况描述';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.discovery_time
  is '发现时间';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.being_recovered_time
  is '预计恢复时间';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.recovered_time
  is '实际恢复时间';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.enter_user_id
  is '填报用户ID';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.informant
  is '填报人';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.insert_time
  is '填报时间';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.data_origin
  is '数据来源:0:本地上报 1:31.6db 2:外网报送';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.telephone
  is '联系电话';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.direction_id
  is '方向';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.wifi_status
  is 'WIFI情况:0、已停用；1、正常使用；9、无WIFI';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.washroom_status
  is '卫生间情况:0、已停用；1、正常使用；9、无卫生间';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.park_num
  is '车位数量';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.create_time
  is '接收时间';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.sep_no
  is '序列号';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.park_num_all
  is '总车位数';
alter table JK_MESSAGE_SERVICEZONE_UPLOAD
  add constraint PK_JK_MSG_SRVZONE_UPLOAD primary key (JK_MESSAGE_SERVICEZONE_ID)
  ;

prompt Creating JK_MSG_ASK_FOR...
create table JK_MSG_ASK_FOR
(
  jk_msg_ask_for_id VARCHAR2(32) default sys_guid() not null,
  road_id           VARCHAR2(12) not null,
  org_id            VARCHAR2(20),
  descp             VARCHAR2(1024),
  discovery_time    DATE not null,
  create_user_id    VARCHAR2(50),
  create_user       VARCHAR2(32),
  create_time       DATE,
  data_origin       NUMBER(1),
  audit_status      NUMBER(1) default 0 not null,
  audit_time        DATE,
  audit_user_id     VARCHAR2(32),
  auditor           VARCHAR2(32),
  has_pic           NUMBER(2) default 0 not null,
  telephone         VARCHAR2(20),
  audit_desc        VARCHAR2(1024),
  prepare_col       VARCHAR2(200)
)
;
alter table JK_MSG_ASK_FOR
  add constraint PK_JK_MSG_ASK primary key (JK_MSG_ASK_FOR_ID)
;

prompt Creating JK_ORG_HIS2...
create table JK_ORG_HIS2
(
  id           VARCHAR2(32) not null,
  org_id       VARCHAR2(20),
  direction_id NUMBER(1),
  action       NUMBER(3),
  limit_type   NUMBER(1),
  limit_cars   VARCHAR2(20),
  create_time  DATE not null,
  reason       VARCHAR2(500),
  src_id       VARCHAR2(32),
  road_id      VARCHAR2(20),
  enable_time  DATE,
  parent_id    VARCHAR2(32)
)
;

prompt Creating JK_ORG_STATUS_INFO...
create table JK_ORG_STATUS_INFO
(
  org_id            VARCHAR2(20) not null,
  up_status         NUMBER(2),
  up_src_id         VARCHAR2(32),
  up_time           DATE default SYSDATE not null,
  down_status       NUMBER(2),
  down_src_id       VARCHAR2(32),
  down_time         DATE default SYSDATE,
  up_car            NUMBER(2) default 9 not null,
  up_truck          NUMBER(2) default 9 not null,
  up_car_detail     VARCHAR2(40),
  up_truck_detail   VARCHAR2(40),
  down_car          NUMBER(2) default 9 not null,
  down_truck        NUMBER(2) default 9 not null,
  down_car_detail   VARCHAR2(40),
  down_truck_detail VARCHAR2(40),
  other_msg         VARCHAR2(100)
)
;
comment on table JK_ORG_STATUS_INFO
  is '各机构实时信息表';
comment on column JK_ORG_STATUS_INFO.up_status
  is '关闭或限制标记  1:关闭 2:限制 99正常开启';
comment on column JK_ORG_STATUS_INFO.up_src_id
  is '来源id';
comment on column JK_ORG_STATUS_INFO.up_time
  is '最近修改时间';
comment on column JK_ORG_STATUS_INFO.down_status
  is '关闭或限制标记  1:关闭 2:限制 99正常开启';
comment on column JK_ORG_STATUS_INFO.down_time
  is '最近修改时间';
comment on column JK_ORG_STATUS_INFO.up_car
  is '客车状态   ';
comment on column JK_ORG_STATUS_INFO.up_truck
  is '货车状态';
comment on column JK_ORG_STATUS_INFO.up_car_detail
  is '7座（含）以下  1:禁止上道 2.禁止通行';
comment on column JK_ORG_STATUS_INFO.up_truck_detail
  is '7座（含）以上';
comment on column JK_ORG_STATUS_INFO.down_car
  is '客车状态   ';
comment on column JK_ORG_STATUS_INFO.down_truck
  is '货车状态';
comment on column JK_ORG_STATUS_INFO.other_msg
  is '其他信息';
alter table JK_ORG_STATUS_INFO
  add constraint PK_JK_ORG_STATUS_INFO primary key (ORG_ID)
  ;

prompt Creating JK_ORG_STATUS_PUBLISH...
create table JK_ORG_STATUS_PUBLISH
(
  id           VARCHAR2(32) default sys_guid() not null,
  org_id       VARCHAR2(20),
  direction_id NUMBER(2),
  action       NUMBER(3),
  limit_type   NUMBER(1),
  limit_cars   VARCHAR2(20),
  create_time  DATE default sysdate not null,
  reason       VARCHAR2(500),
  src_id       VARCHAR2(32),
  road_id      VARCHAR2(20),
  enable_time  DATE,
  parent_id    VARCHAR2(32)
)
;
comment on table JK_ORG_STATUS_PUBLISH
  is '每次路况发布的收费站的状态';
comment on column JK_ORG_STATUS_PUBLISH.org_id
  is '机构id';
comment on column JK_ORG_STATUS_PUBLISH.direction_id
  is '方向id';
comment on column JK_ORG_STATUS_PUBLISH.action
  is '动作 1.关闭  2禁止';
comment on column JK_ORG_STATUS_PUBLISH.limit_type
  is '禁止的项目';
comment on column JK_ORG_STATUS_PUBLISH.limit_cars
  is '禁止车型';
comment on column JK_ORG_STATUS_PUBLISH.reason
  is '来源原因';
comment on column JK_ORG_STATUS_PUBLISH.src_id
  is '路况来源id';
comment on column JK_ORG_STATUS_PUBLISH.enable_time
  is '生效日期';
comment on column JK_ORG_STATUS_PUBLISH.parent_id
  is '历史表用';
alter table JK_ORG_STATUS_PUBLISH
  add constraint PK_JK_ORG_STATUS_PUBLISH primary key (ID)
  ;

prompt Creating JK_ORG_STATUS_PUBLISH_HIS...
create table JK_ORG_STATUS_PUBLISH_HIS
(
  id           VARCHAR2(32) default sys_guid() not null,
  org_id       VARCHAR2(20),
  direction_id NUMBER(2),
  action       NUMBER(3),
  limit_type   NUMBER(1),
  limit_cars   VARCHAR2(20),
  create_time  DATE default sysdate not null,
  reason       VARCHAR2(500),
  src_id       VARCHAR2(32),
  road_id      VARCHAR2(20),
  enable_time  DATE,
  parent_id    VARCHAR2(32)
)
;
comment on column JK_ORG_STATUS_PUBLISH_HIS.src_id
  is '路况来源id';
comment on column JK_ORG_STATUS_PUBLISH_HIS.parent_id
  is '父id';
alter table JK_ORG_STATUS_PUBLISH_HIS
  add constraint PK_JK_ORG_STATUS_PUBLISH_HIS primary key (ID)
  ;

prompt Creating JK_PLCLOAD_DEVICE_PROFILE...
create table JK_PLCLOAD_DEVICE_PROFILE
(
  device_id       VARCHAR2(40) not null,
  device_desc     VARCHAR2(80) not null,
  device_type_id  VARCHAR2(4) not null,
  em_type_id      CHAR(3) default 300,
  road_segment_id VARCHAR2(20) not null,
  organization_id VARCHAR2(20) not null,
  direction_id    NUMBER(2) not null,
  dec_stub        NUMBER(10,3) not null,
  char_stub       VARCHAR2(20),
  user_id         VARCHAR2(12),
  collect_time    DATE default sysdate not null,
  flag            NUMBER(1) default 1,
  lane_number     NUMBER(1) default 0 not null
)
;
alter table JK_PLCLOAD_DEVICE_PROFILE
  add constraint PK_PLCLOAD_DEVICE_PROFILE primary key (DEVICE_ID)
;

prompt Creating JK_POOL_HISTORY_DATA...
create table JK_POOL_HISTORY_DATA
(
  jk_pool_history_data_id VARCHAR2(32) default sys_guid() not null,
  device_id               VARCHAR2(40) not null,
  device_status_id        NUMBER(1) not null,
  error_message           VARCHAR2(100),
  h_value                 NUMBER(10,3) not null,
  l_value                 NUMBER(10,3) not null,
  collect_time            DATE not null
)
;
comment on table JK_POOL_HISTORY_DATA
  is '消防水池流水数据表';
comment on column JK_POOL_HISTORY_DATA.jk_pool_history_data_id
  is '记录ID：使用UUID作为主键';
comment on column JK_POOL_HISTORY_DATA.device_id
  is '设备编码';
comment on column JK_POOL_HISTORY_DATA.device_status_id
  is '设备状态';
comment on column JK_POOL_HISTORY_DATA.error_message
  is '设备故障';
comment on column JK_POOL_HISTORY_DATA.h_value
  is '高水位：单位：m';
comment on column JK_POOL_HISTORY_DATA.l_value
  is '低水位';
comment on column JK_POOL_HISTORY_DATA.collect_time
  is '采集时间：当前采集周期的起始时间';
alter table JK_POOL_HISTORY_DATA
  add constraint PK_JK_POOL_HISTORY_DATA primary key (JK_POOL_HISTORY_DATA_ID)
  ;

prompt Creating JK_POOL_REAL_DATA...
create table JK_POOL_REAL_DATA
(
  device_id        VARCHAR2(40) not null,
  device_status_id NUMBER(1) not null,
  error_message    VARCHAR2(100),
  h_value          NUMBER(10,3) not null,
  l_value          NUMBER(10,3) not null,
  collect_time     DATE not null
)
;
comment on table JK_POOL_REAL_DATA
  is '消防水池实时数据表';
comment on column JK_POOL_REAL_DATA.device_id
  is '设备编码';
comment on column JK_POOL_REAL_DATA.device_status_id
  is '设备状态';
comment on column JK_POOL_REAL_DATA.error_message
  is '设备故障';
comment on column JK_POOL_REAL_DATA.h_value
  is '高水位：单位：m';
comment on column JK_POOL_REAL_DATA.l_value
  is '低水位';
comment on column JK_POOL_REAL_DATA.collect_time
  is '采集时间：当前采集周期的起始时间';
alter table JK_POOL_REAL_DATA
  add constraint PK_JK_POOL_REAL_DATA primary key (DEVICE_ID)
  ;

prompt Creating JK_PUMP_HISTORY_DATA...
create table JK_PUMP_HISTORY_DATA
(
  jk_pump_history_data_id VARCHAR2(32) default sys_guid() not null,
  device_id               VARCHAR2(40) not null,
  device_status_id        NUMBER(1) not null,
  error_message           VARCHAR2(100),
  status                  NUMBER(1) not null,
  collect_time            DATE not null
)
;
comment on table JK_PUMP_HISTORY_DATA
  is '消防水泵流水数据表';
comment on column JK_PUMP_HISTORY_DATA.jk_pump_history_data_id
  is '记录ID：使用UUID作为主键';
comment on column JK_PUMP_HISTORY_DATA.device_id
  is '设备编码';
comment on column JK_PUMP_HISTORY_DATA.device_status_id
  is '设备状态';
comment on column JK_PUMP_HISTORY_DATA.error_message
  is '设备故障';
comment on column JK_PUMP_HISTORY_DATA.status
  is '开启状态：0:关  1:开';
comment on column JK_PUMP_HISTORY_DATA.collect_time
  is '采集时间：当前采集周期的起始时间';
alter table JK_PUMP_HISTORY_DATA
  add constraint PK_JK_PUMP_HISTORY_DATA primary key (JK_PUMP_HISTORY_DATA_ID)
  ;

prompt Creating JK_PUMP_REAL_DATA...
create table JK_PUMP_REAL_DATA
(
  device_id        VARCHAR2(40) not null,
  device_status_id NUMBER(1) not null,
  error_message    VARCHAR2(100),
  status           NUMBER(1) not null,
  collect_time     DATE not null
)
;
comment on table JK_PUMP_REAL_DATA
  is '消防水泵实时数据表';
comment on column JK_PUMP_REAL_DATA.device_id
  is '设备编码';
comment on column JK_PUMP_REAL_DATA.device_status_id
  is '设备状态';
comment on column JK_PUMP_REAL_DATA.error_message
  is '设备故障';
comment on column JK_PUMP_REAL_DATA.status
  is '开启状态：0:关  1:开';
comment on column JK_PUMP_REAL_DATA.collect_time
  is '采集时间：当前采集周期的起始时间';
alter table JK_PUMP_REAL_DATA
  add constraint PK_JK_PUMP_REAL_DATA primary key (DEVICE_ID)
  ;

prompt Creating JK_RAC_HISTORY_DATA...
create table JK_RAC_HISTORY_DATA
(
  jk_rac_history_data_id VARCHAR2(32) default sys_guid() not null,
  device_id              VARCHAR2(40) not null,
  device_status_id       NUMBER(1) not null,
  error_message          VARCHAR2(100),
  status                 NUMBER(1) not null,
  in_temperature         NUMBER(5,2),
  out_temperature        NUMBER(5,2),
  air_temperature        NUMBER(5,2),
  set_temperature        NUMBER(2),
  wind_speed             NUMBER(5,2),
  set_speed              NUMBER(2),
  work_mode              NUMBER(2),
  collect_time           DATE
)
;
comment on table JK_RAC_HISTORY_DATA
  is '空调流水数据表';
comment on column JK_RAC_HISTORY_DATA.jk_rac_history_data_id
  is '记录ID：使用UUID作为主键';
comment on column JK_RAC_HISTORY_DATA.device_id
  is '设备编码';
comment on column JK_RAC_HISTORY_DATA.device_status_id
  is '设备状态';
comment on column JK_RAC_HISTORY_DATA.error_message
  is '故障信息';
comment on column JK_RAC_HISTORY_DATA.status
  is '运行状态';
comment on column JK_RAC_HISTORY_DATA.in_temperature
  is '进风口温度';
comment on column JK_RAC_HISTORY_DATA.out_temperature
  is '出风口温度';
comment on column JK_RAC_HISTORY_DATA.air_temperature
  is '室内温度';
comment on column JK_RAC_HISTORY_DATA.set_temperature
  is '设定温度';
comment on column JK_RAC_HISTORY_DATA.wind_speed
  is '进出口风速：M/s';
comment on column JK_RAC_HISTORY_DATA.set_speed
  is '设定风速等级：1月6日';
comment on column JK_RAC_HISTORY_DATA.work_mode
  is '工作模式：1=制冷/2=制热';
comment on column JK_RAC_HISTORY_DATA.collect_time
  is '数据采集时间';
alter table JK_RAC_HISTORY_DATA
  add constraint PK_JK_RAC_HISTORY_DATA primary key (JK_RAC_HISTORY_DATA_ID)
  ;

prompt Creating JK_RAC_REAL_DATA...
create table JK_RAC_REAL_DATA
(
  device_id        VARCHAR2(40) not null,
  device_status_id NUMBER(1) not null,
  error_message    VARCHAR2(100),
  status           NUMBER(1) not null,
  in_temperature   NUMBER(5,2),
  out_temperature  NUMBER(5,2),
  air_temperature  NUMBER(5,2),
  set_temperature  NUMBER(2),
  wind_speed       NUMBER(5,2),
  set_speed        NUMBER(2),
  work_mode        NUMBER(2),
  collect_time     DATE
)
;
comment on table JK_RAC_REAL_DATA
  is '空调实时数据表';
comment on column JK_RAC_REAL_DATA.device_id
  is '设备编码';
comment on column JK_RAC_REAL_DATA.device_status_id
  is '设备状态';
comment on column JK_RAC_REAL_DATA.error_message
  is '故障信息';
comment on column JK_RAC_REAL_DATA.status
  is '运行状态';
comment on column JK_RAC_REAL_DATA.in_temperature
  is '进风口温度';
comment on column JK_RAC_REAL_DATA.out_temperature
  is '出风口温度';
comment on column JK_RAC_REAL_DATA.air_temperature
  is '室内温度';
comment on column JK_RAC_REAL_DATA.set_temperature
  is '设定温度';
comment on column JK_RAC_REAL_DATA.wind_speed
  is '进出口风速：M/s';
comment on column JK_RAC_REAL_DATA.set_speed
  is '设定风速等级：1月6日';
comment on column JK_RAC_REAL_DATA.work_mode
  is '工作模式：1=制冷/2=制热';
comment on column JK_RAC_REAL_DATA.collect_time
  is '数据采集时间';
alter table JK_RAC_REAL_DATA
  add constraint PK_JK_RAC_REAL_DATA primary key (DEVICE_ID)
  ;

prompt Creating JK_RD_DEVICE_PROFILE...
create table JK_RD_DEVICE_PROFILE
(
  device_id         VARCHAR2(40) not null,
  device_desc       VARCHAR2(80) not null,
  station_code      VARCHAR2(12),
  device_type_id    VARCHAR2(4) not null,
  em_type_id        CHAR(3) not null,
  road_segment_id   VARCHAR2(20) not null,
  organization_id   VARCHAR2(20) not null,
  direction_id      NUMBER(2) not null,
  dec_stub          NUMBER(10,3) not null,
  char_stub         VARCHAR2(20),
  price             NUMBER(12,2) default 0,
  code              VARCHAR2(20),
  vendor_code       VARCHAR2(3),
  function_code     VARCHAR2(2),
  principle_code    VARCHAR2(2),
  transmission_code VARCHAR2(1),
  serial_number     VARCHAR2(8),
  installer         VARCHAR2(50),
  install_time      DATE,
  communication     NUMBER(1) not null,
  ip                VARCHAR2(20) not null,
  port              NUMBER(5) not null,
  bot               NUMBER(7),
  sign              NUMBER(1) default 0 not null,
  other             VARCHAR2(50),
  dal               VARCHAR2(50),
  manufactor_name   VARCHAR2(50)
)
;
comment on table JK_RD_DEVICE_PROFILE
  is '交调设备基本资料表';
comment on column JK_RD_DEVICE_PROFILE.device_id
  is '设备ID';
comment on column JK_RD_DEVICE_PROFILE.device_desc
  is '设备名称或设备描述';
comment on column JK_RD_DEVICE_PROFILE.station_code
  is '站点编号';
comment on column JK_RD_DEVICE_PROFILE.device_type_id
  is '设备类型';
comment on column JK_RD_DEVICE_PROFILE.em_type_id
  is '所属机电系统';
comment on column JK_RD_DEVICE_PROFILE.road_segment_id
  is '所属路段';
comment on column JK_RD_DEVICE_PROFILE.organization_id
  is '所属管理机构。要求所有设备的管理机构都应设置为“路段管理处”等管理机构';
comment on column JK_RD_DEVICE_PROFILE.direction_id
  is '设备所在方向（或位置）';
comment on column JK_RD_DEVICE_PROFILE.dec_stub
  is '数字桩号';
comment on column JK_RD_DEVICE_PROFILE.char_stub
  is '字符桩号';
comment on column JK_RD_DEVICE_PROFILE.price
  is '价格：单位：元';
comment on column JK_RD_DEVICE_PROFILE.code
  is '设备身份识别码';
comment on column JK_RD_DEVICE_PROFILE.vendor_code
  is '设备生产厂商代码 ';
comment on column JK_RD_DEVICE_PROFILE.function_code
  is '设备功能代码';
comment on column JK_RD_DEVICE_PROFILE.principle_code
  is '工作原理代码';
comment on column JK_RD_DEVICE_PROFILE.transmission_code
  is '传输方式代码';
comment on column JK_RD_DEVICE_PROFILE.serial_number
  is '生产序列号';
comment on column JK_RD_DEVICE_PROFILE.installer
  is '安装厂商';
comment on column JK_RD_DEVICE_PROFILE.install_time
  is '安装时间';
comment on column JK_RD_DEVICE_PROFILE.communication
  is '"通信方式:通讯方式必填
0:未知 1TCP 2udp 3串口"';
comment on column JK_RD_DEVICE_PROFILE.ip
  is 'IP地址:串口模式时，填写串口服务器Ip；网络模式时，填写设备ip';
comment on column JK_RD_DEVICE_PROFILE.port
  is '端口/串口号:串口模式时，填写串口号；网络模式时，填写端口号';
comment on column JK_RD_DEVICE_PROFILE.bot
  is '串口配置';
comment on column JK_RD_DEVICE_PROFILE.sign
  is '"是否启用标志:设备采集功能是否启用
0：关闭；1启用"';
comment on column JK_RD_DEVICE_PROFILE.other
  is '其他内容';
comment on column JK_RD_DEVICE_PROFILE.dal
  is '业务类名称';
comment on column JK_RD_DEVICE_PROFILE.manufactor_name
  is '厂家名称';
alter table JK_RD_DEVICE_PROFILE
  add constraint PK_JK_DP_DEVICE_PROFILE primary key (DEVICE_ID)
  ;

prompt Creating JK_RD_HISTORY_DATAF...
create table JK_RD_HISTORY_DATAF
(
  jk_rd_history_dataf_id VARCHAR2(32) default Sys_guid() not null,
  device_id              VARCHAR2(40) not null,
  start_time             DATE not null,
  end_time               DATE,
  collect_time           DATE not null,
  serial_number          NUMBER(20) not null,
  direction_id           NUMBER(1) not null,
  lane_number            NUMBER(2) not null,
  car_follow             NUMBER(8,3) not null,
  avg_space              NUMBER(8,3) not null,
  data_occupancy         NUMBER(8,3) not null,
  grade                  NUMBER(1) not null,
  flow                   NUMBER(8) not null,
  speed                  NUMBER(5) not null,
  flow_1                 NUMBER(8),
  flow_1_avgspeed        NUMBER(5),
  flow_2                 NUMBER(8),
  flow_2_avgspeed        NUMBER(5),
  flow_3                 NUMBER(8),
  flow_3_avgspeed        NUMBER(5),
  flow_4                 NUMBER(8),
  flow_4_avgspeed        NUMBER(5),
  flow_5                 NUMBER(8),
  flow_5_avgspeed        NUMBER(5),
  flow_6                 NUMBER(8),
  flow_6_avgspeed        NUMBER(5),
  flow_7                 NUMBER(8),
  flow_7_avgspeed        NUMBER(5),
  flow_8                 NUMBER(8),
  flow_8_avgspeed        NUMBER(5),
  flow_9                 NUMBER(8),
  flow_9_avgspeed        NUMBER(5),
  flow_10                NUMBER(8),
  flow_10_avgspeed       NUMBER(5),
  flow_11                NUMBER(8),
  flow_11_avgspeed       NUMBER(5),
  flow_12                NUMBER(8),
  flow_12_avgspeed       NUMBER(5),
  flow_13                NUMBER(8),
  flow_13_avgspeed       NUMBER(5),
  flow_14                NUMBER(8),
  flow_14_avgspeed       NUMBER(5),
  device_status_id       NUMBER(1),
  error_message          VARCHAR2(100),
  syncflag               NUMBER(1) default 0
)
;
comment on table JK_RD_HISTORY_DATAF
  is '交调站流水数据表';
comment on column JK_RD_HISTORY_DATAF.jk_rd_history_dataf_id
  is '记录ID';
comment on column JK_RD_HISTORY_DATAF.device_id
  is '设备编码';
comment on column JK_RD_HISTORY_DATAF.start_time
  is '检测周期起始时间';
comment on column JK_RD_HISTORY_DATAF.end_time
  is '检测周期终止时间';
comment on column JK_RD_HISTORY_DATAF.collect_time
  is '采集时间';
comment on column JK_RD_HISTORY_DATAF.serial_number
  is '数据序号';
comment on column JK_RD_HISTORY_DATAF.direction_id
  is '根据车道编号获得';
comment on column JK_RD_HISTORY_DATAF.lane_number
  is '车道编号';
comment on column JK_RD_HISTORY_DATAF.car_follow
  is '跟车百分比';
comment on column JK_RD_HISTORY_DATAF.avg_space
  is '平均车头间距';
comment on column JK_RD_HISTORY_DATAF.data_occupancy
  is '时间占有率';
comment on column JK_RD_HISTORY_DATAF.grade
  is '数据分级';
comment on column JK_RD_HISTORY_DATAF.flow
  is '绝对交通量：指当前设备在当前采集时间段内、当前方向的所有车型的交通量合计';
comment on column JK_RD_HISTORY_DATAF.speed
  is '平均车速：指当前设备在当前采集时间段内、当前方向的平均速度';
comment on column JK_RD_HISTORY_DATAF.flow_1
  is '中小客车交通量';
comment on column JK_RD_HISTORY_DATAF.flow_1_avgspeed
  is '中小客车平均地点车速';
comment on column JK_RD_HISTORY_DATAF.flow_2
  is '小型货车交通量';
comment on column JK_RD_HISTORY_DATAF.flow_2_avgspeed
  is '小型货车平均地点车速';
comment on column JK_RD_HISTORY_DATAF.flow_3
  is '大客车交通量';
comment on column JK_RD_HISTORY_DATAF.flow_3_avgspeed
  is '大客车车平均地点车速';
comment on column JK_RD_HISTORY_DATAF.flow_4
  is '中型货车交通量';
comment on column JK_RD_HISTORY_DATAF.flow_4_avgspeed
  is '中型货车平均地点车速';
comment on column JK_RD_HISTORY_DATAF.flow_5
  is '大型货车交通量';
comment on column JK_RD_HISTORY_DATAF.flow_5_avgspeed
  is '大型货车平均地点车速';
comment on column JK_RD_HISTORY_DATAF.flow_6
  is '特大型货车交通量';
comment on column JK_RD_HISTORY_DATAF.flow_6_avgspeed
  is '特大型货车平均地点车速';
comment on column JK_RD_HISTORY_DATAF.flow_7
  is '集装箱车交通量';
comment on column JK_RD_HISTORY_DATAF.flow_7_avgspeed
  is '集装箱车平均地点车速';
comment on column JK_RD_HISTORY_DATAF.flow_8
  is '拖拉机交通量';
comment on column JK_RD_HISTORY_DATAF.flow_8_avgspeed
  is '拖拉机平均地点车速';
comment on column JK_RD_HISTORY_DATAF.flow_9
  is '摩托车交通量';
comment on column JK_RD_HISTORY_DATAF.flow_9_avgspeed
  is '摩托车平均地点车速';
comment on column JK_RD_HISTORY_DATAF.flow_10
  is '小型车交通量';
comment on column JK_RD_HISTORY_DATAF.flow_10_avgspeed
  is '小型车平均地点车速';
comment on column JK_RD_HISTORY_DATAF.flow_11
  is '中型车交通量';
comment on column JK_RD_HISTORY_DATAF.flow_11_avgspeed
  is '中型车平均地点车速';
comment on column JK_RD_HISTORY_DATAF.flow_12
  is '大型车交通量';
comment on column JK_RD_HISTORY_DATAF.flow_12_avgspeed
  is '大型车平均地点车速';
comment on column JK_RD_HISTORY_DATAF.flow_13
  is '特大型车交通量';
comment on column JK_RD_HISTORY_DATAF.flow_13_avgspeed
  is '特大型车平均地点车速';
comment on column JK_RD_HISTORY_DATAF.flow_14
  is '一般机动车（不含摩托车）交通量';
comment on column JK_RD_HISTORY_DATAF.flow_14_avgspeed
  is '一般机动车（不含摩托车）平均地点车速';
comment on column JK_RD_HISTORY_DATAF.device_status_id
  is '设备状态';
comment on column JK_RD_HISTORY_DATAF.error_message
  is '设备故障';
comment on column JK_RD_HISTORY_DATAF.syncflag
  is '同步标志：0未同步，1已同步';
alter table JK_RD_HISTORY_DATAF
  add constraint JK_RD_HISTORY_DATAF_PK primary key (JK_RD_HISTORY_DATAF_ID)
  ;
 

prompt Creating JK_RD_HISTORY_DATAZ...
create table JK_RD_HISTORY_DATAZ
(
  device_id              VARCHAR2(40) not null,
  device_status_id       NUMBER(1) not null,
  error_message          VARCHAR2(100),
  collect_time           DATE not null,
  jk_rd_history_dataz_id VARCHAR2(32) default Sys_guid() not null,
  syncflag               NUMBER(1) default 0
)
;
comment on table JK_RD_HISTORY_DATAZ
  is '交调站实时数据主表';
comment on column JK_RD_HISTORY_DATAZ.device_id
  is '设备编码';
comment on column JK_RD_HISTORY_DATAZ.device_status_id
  is '设备状态';
comment on column JK_RD_HISTORY_DATAZ.error_message
  is '设备故障';
comment on column JK_RD_HISTORY_DATAZ.collect_time
  is '采集时间,当前采集周期的起始时间';
comment on column JK_RD_HISTORY_DATAZ.jk_rd_history_dataz_id
  is 'uuid';
comment on column JK_RD_HISTORY_DATAZ.syncflag
  is '同步标志：0未同步，1已同步';
alter table JK_RD_HISTORY_DATAZ
  add constraint JK_RD_HISTORY_DATAZ_PK primary key (JK_RD_HISTORY_DATAZ_ID)
  ;

prompt Creating JK_RD_REAL_DATAF...
create table JK_RD_REAL_DATAF
(
  jk_rd_real_dataf_id VARCHAR2(32) default Sys_guid() not null,
  device_id           VARCHAR2(40) not null,
  start_time          DATE not null,
  end_time            DATE,
  collect_time        DATE not null,
  serial_number       NUMBER(20) not null,
  direction_id        NUMBER(1) not null,
  lane_number         NUMBER(2) not null,
  car_follow          NUMBER(8,3) not null,
  avg_space           NUMBER(8,3) not null,
  data_occupancy      NUMBER(8,3) not null,
  grade               NUMBER(1) not null,
  flow                NUMBER(8) not null,
  speed               NUMBER(5) not null,
  flow_1              NUMBER(8),
  flow_1_avgspeed     NUMBER(5),
  flow_2              NUMBER(8),
  flow_2_avgspeed     NUMBER(5),
  flow_3              NUMBER(8),
  flow_3_avgspeed     NUMBER(5),
  flow_4              NUMBER(8),
  flow_4_avgspeed     NUMBER(5),
  flow_5              NUMBER(8),
  flow_5_avgspeed     NUMBER(5),
  flow_6              NUMBER(8),
  flow_6_avgspeed     NUMBER(5),
  flow_7              NUMBER(8),
  flow_7_avgspeed     NUMBER(5),
  flow_8              NUMBER(8),
  flow_8_avgspeed     NUMBER(5),
  flow_9              NUMBER(8),
  flow_9_avgspeed     NUMBER(5),
  flow_10             NUMBER(8),
  flow_10_avgspeed    NUMBER(5),
  flow_11             NUMBER(8),
  flow_11_avgspeed    NUMBER(5),
  flow_12             NUMBER(8),
  flow_12_avgspeed    NUMBER(5),
  flow_13             NUMBER(8),
  flow_13_avgspeed    NUMBER(5),
  flow_14             NUMBER(8),
  flow_14_avgspeed    NUMBER(5),
  device_status_id    NUMBER(1),
  error_message       VARCHAR2(100),
  syncflag            NUMBER(1) default 0
)
;
comment on table JK_RD_REAL_DATAF
  is '交调站流水数据表';
comment on column JK_RD_REAL_DATAF.jk_rd_real_dataf_id
  is '记录ID';
comment on column JK_RD_REAL_DATAF.device_id
  is '设备编码';
comment on column JK_RD_REAL_DATAF.start_time
  is '检测周期起始时间';
comment on column JK_RD_REAL_DATAF.end_time
  is '检测周期终止时间';
comment on column JK_RD_REAL_DATAF.collect_time
  is '采集时间';
comment on column JK_RD_REAL_DATAF.serial_number
  is '数据序号(约束条件文档定义为VARCHAR2（10），出问题，临时改为number)';
comment on column JK_RD_REAL_DATAF.direction_id
  is '根据车道编号获得';
comment on column JK_RD_REAL_DATAF.lane_number
  is '车道编号';
comment on column JK_RD_REAL_DATAF.car_follow
  is '跟车百分比';
comment on column JK_RD_REAL_DATAF.avg_space
  is '平均车头间距';
comment on column JK_RD_REAL_DATAF.data_occupancy
  is '时间占有率';
comment on column JK_RD_REAL_DATAF.grade
  is '数据分级';
comment on column JK_RD_REAL_DATAF.flow
  is '绝对交通量：指当前设备在当前采集时间段内、当前方向的所有车型的交通量合计';
comment on column JK_RD_REAL_DATAF.speed
  is '平均车速：指当前设备在当前采集时间段内、当前方向的平均速度';
comment on column JK_RD_REAL_DATAF.flow_1
  is '中小客车交通量';
comment on column JK_RD_REAL_DATAF.flow_1_avgspeed
  is '中小客车平均地点车速';
comment on column JK_RD_REAL_DATAF.flow_2
  is '小型货车交通量';
comment on column JK_RD_REAL_DATAF.flow_2_avgspeed
  is '小型货车平均地点车速';
comment on column JK_RD_REAL_DATAF.flow_3
  is '大客车交通量';
comment on column JK_RD_REAL_DATAF.flow_3_avgspeed
  is '大客车车平均地点车速';
comment on column JK_RD_REAL_DATAF.flow_4
  is '中型货车交通量';
comment on column JK_RD_REAL_DATAF.flow_4_avgspeed
  is '中型货车平均地点车速';
comment on column JK_RD_REAL_DATAF.flow_5
  is '大型货车交通量';
comment on column JK_RD_REAL_DATAF.flow_5_avgspeed
  is '大型货车平均地点车速';
comment on column JK_RD_REAL_DATAF.flow_6
  is '特大型货车交通量';
comment on column JK_RD_REAL_DATAF.flow_6_avgspeed
  is '特大型货车平均地点车速';
comment on column JK_RD_REAL_DATAF.flow_7
  is '集装箱车交通量';
comment on column JK_RD_REAL_DATAF.flow_7_avgspeed
  is '集装箱车平均地点车速';
comment on column JK_RD_REAL_DATAF.flow_8
  is '拖拉机交通量';
comment on column JK_RD_REAL_DATAF.flow_8_avgspeed
  is '拖拉机平均地点车速';
comment on column JK_RD_REAL_DATAF.flow_9
  is '摩托车交通量';
comment on column JK_RD_REAL_DATAF.flow_9_avgspeed
  is '摩托车平均地点车速';
comment on column JK_RD_REAL_DATAF.flow_10
  is '小型车交通量';
comment on column JK_RD_REAL_DATAF.flow_10_avgspeed
  is '小型车平均地点车速';
comment on column JK_RD_REAL_DATAF.flow_11
  is '中型车交通量';
comment on column JK_RD_REAL_DATAF.flow_11_avgspeed
  is '中型车平均地点车速';
comment on column JK_RD_REAL_DATAF.flow_12
  is '大型车交通量';
comment on column JK_RD_REAL_DATAF.flow_12_avgspeed
  is '大型车平均地点车速';
comment on column JK_RD_REAL_DATAF.flow_13
  is '特大型车交通量';
comment on column JK_RD_REAL_DATAF.flow_13_avgspeed
  is '特大型车平均地点车速';
comment on column JK_RD_REAL_DATAF.flow_14
  is '一般机动车（不含摩托车）交通量';
comment on column JK_RD_REAL_DATAF.flow_14_avgspeed
  is '一般机动车（不含摩托车）平均地点车速';
comment on column JK_RD_REAL_DATAF.device_status_id
  is '设备状态';
comment on column JK_RD_REAL_DATAF.error_message
  is '设备故障';
comment on column JK_RD_REAL_DATAF.syncflag
  is '同步标志：0未同步，1已同步';
alter table JK_RD_REAL_DATAF
  add constraint JK_RD_REAL_DATAF_PK primary key (JK_RD_REAL_DATAF_ID)
  ;
 

prompt Creating JK_RD_REAL_DATAZ...
create table JK_RD_REAL_DATAZ
(
  device_id        VARCHAR2(40) not null,
  device_status_id NUMBER(1) not null,
  error_message    VARCHAR2(100),
  collect_time     DATE not null,
  syncflag         NUMBER(1) default 0
)
;
comment on table JK_RD_REAL_DATAZ
  is '交调站实时数据主表';
comment on column JK_RD_REAL_DATAZ.device_id
  is '设备编码';
comment on column JK_RD_REAL_DATAZ.device_status_id
  is '设备状态';
comment on column JK_RD_REAL_DATAZ.error_message
  is '设备故障';
comment on column JK_RD_REAL_DATAZ.collect_time
  is '采集时间,当前采集周期的起始时间';
comment on column JK_RD_REAL_DATAZ.syncflag
  is '同步标志：0未同步，1已同步';
alter table JK_RD_REAL_DATAZ
  add constraint JK_RD_REAL_DATAZ_PK primary key (DEVICE_ID)
  ;
 

prompt Creating JK_RD_SUM_DATA...
create table JK_RD_SUM_DATA
(
  jk_rd_sum_data_id VARCHAR2(32) default sys_guid() not null,
  grade             NUMBER(1) not null,
  device_id         VARCHAR2(40) not null,
  direction_id      NUMBER(1) not null,
  record_type       NUMBER(1) not null,
  record_time       DATE not null,
  create_time       DATE default sysdate not null,
  flow              NUMBER(32) not null,
  speed             NUMBER(32,3),
  data_occupancy    NUMBER(32,3),
  car_follow        NUMBER(32,3),
  avg_space         NUMBER(32,3),
  flow_1            NUMBER(32),
  flow_2            NUMBER(32),
  flow_3            NUMBER(32),
  flow_4            NUMBER(32),
  flow_5            NUMBER(32),
  flow_6            NUMBER(32),
  flow_7            NUMBER(32),
  flow_8            NUMBER(32),
  flow_9            NUMBER(32),
  flow_10           NUMBER(32),
  flow_11           NUMBER(32),
  flow_12           NUMBER(32),
  flow_13           NUMBER(32),
  flow_14           NUMBER(32),
  flow_1_avgspeed   NUMBER(32,2),
  flow_2_avgspeed   NUMBER(32,2),
  flow_3_avgspeed   NUMBER(32,2),
  flow_4_avgspeed   NUMBER(32,2),
  flow_5_avgspeed   NUMBER(32,2),
  flow_6_avgspeed   NUMBER(32,2),
  flow_7_avgspeed   NUMBER(32,2),
  flow_8_avgspeed   NUMBER(32,2),
  flow_9_avgspeed   NUMBER(32,2),
  flow_10_avgspeed  NUMBER(32,2),
  flow_11_avgspeed  NUMBER(32,2),
  flow_12_avgspeed  NUMBER(32,2),
  flow_13_avgspeed  NUMBER(32,2),
  flow_14_avgspeed  NUMBER(32,2),
  show_time         NUMBER(10)
)
;
comment on table JK_RD_SUM_DATA
  is '交通量汇总数据表';
comment on column JK_RD_SUM_DATA.jk_rd_sum_data_id
  is '记录ID';
comment on column JK_RD_SUM_DATA.grade
  is '数据分级';
comment on column JK_RD_SUM_DATA.device_id
  is '设备编号';
comment on column JK_RD_SUM_DATA.direction_id
  is '方向';
comment on column JK_RD_SUM_DATA.record_type
  is '报表类型';
comment on column JK_RD_SUM_DATA.record_time
  is '检测周期起始时间';
comment on column JK_RD_SUM_DATA.create_time
  is '记录时间';
comment on column JK_RD_SUM_DATA.flow
  is ' 绝对交通量';
comment on column JK_RD_SUM_DATA.speed
  is '平均速度';
comment on column JK_RD_SUM_DATA.data_occupancy
  is '平均占有率';
comment on column JK_RD_SUM_DATA.car_follow
  is '跟车百分比';
comment on column JK_RD_SUM_DATA.avg_space
  is '平均车头间距';
comment on column JK_RD_SUM_DATA.flow_1
  is '中小客车交通量';
comment on column JK_RD_SUM_DATA.flow_2
  is '小型车交通量';
comment on column JK_RD_SUM_DATA.flow_3
  is '指大客车交通量';
comment on column JK_RD_SUM_DATA.flow_4
  is ' 指中型货车交通量';
comment on column JK_RD_SUM_DATA.flow_5
  is '指大型货车交通量';
comment on column JK_RD_SUM_DATA.flow_6
  is '指特大型货车交通量';
comment on column JK_RD_SUM_DATA.flow_7
  is ' 集 装 箱 车交通量';
comment on column JK_RD_SUM_DATA.flow_8
  is '指拖拉机交通量';
comment on column JK_RD_SUM_DATA.flow_9
  is '摩托车交通量';
comment on column JK_RD_SUM_DATA.flow_10
  is '指小型车交通量';
comment on column JK_RD_SUM_DATA.flow_11
  is '中型车交通量';
comment on column JK_RD_SUM_DATA.flow_12
  is '大型车交通量';
comment on column JK_RD_SUM_DATA.flow_13
  is ' 指特大型车交通量';
comment on column JK_RD_SUM_DATA.flow_14
  is '般机动车车交通量';
alter table JK_RD_SUM_DATA
  add constraint JK_RD_SUM_DATA_PK1 primary key (JK_RD_SUM_DATA_ID)
  ;
 

prompt Creating JK_TL_HISTORY_DATA...
create table JK_TL_HISTORY_DATA
(
  jk_tl_history_data_id VARCHAR2(32) default sys_guid() not null,
  device_id             VARCHAR2(40) not null,
  device_status_id      NUMBER(1) not null,
  error_message         VARCHAR2(100),
  green_status          NUMBER(1) not null,
  red_status            NUMBER(1) not null,
  yellow_status         NUMBER(1) not null,
  turn_status           NUMBER(1) not null,
  collect_time          DATE not null
)
;
comment on table JK_TL_HISTORY_DATA
  is '交通信号灯流水数据表';
comment on column JK_TL_HISTORY_DATA.jk_tl_history_data_id
  is '记录ID：使用UUID作为主键';
comment on column JK_TL_HISTORY_DATA.device_id
  is '设备编码';
comment on column JK_TL_HISTORY_DATA.device_status_id
  is '设备状态';
comment on column JK_TL_HISTORY_DATA.error_message
  is '设备故障';
comment on column JK_TL_HISTORY_DATA.green_status
  is '绿灯状态反馈：0：灭  1：亮';
comment on column JK_TL_HISTORY_DATA.red_status
  is '红灯状态反馈：0：灭  1：亮';
comment on column JK_TL_HISTORY_DATA.yellow_status
  is '黄灯状态反馈：0：灭  1：亮';
comment on column JK_TL_HISTORY_DATA.turn_status
  is '转向灯状态反馈：0：灭  1：亮';
comment on column JK_TL_HISTORY_DATA.collect_time
  is '采集时间：当前采集周期的起始时间';
alter table JK_TL_HISTORY_DATA
  add constraint PK_JK_TL_HISTORY_DATA primary key (JK_TL_HISTORY_DATA_ID)
  ;

prompt Creating JK_TL_REAL_DATA...
create table JK_TL_REAL_DATA
(
  device_id        VARCHAR2(40) not null,
  device_status_id NUMBER(1) not null,
  error_message    VARCHAR2(100),
  green_status     NUMBER(1) not null,
  red_status       NUMBER(1) not null,
  yellow_status    NUMBER(1) not null,
  turn_status      NUMBER(1) not null,
  collect_time     DATE not null
)
;
comment on table JK_TL_REAL_DATA
  is '交通信号灯实时数据表';
comment on column JK_TL_REAL_DATA.device_id
  is '设备编码';
comment on column JK_TL_REAL_DATA.device_status_id
  is '设备状态';
comment on column JK_TL_REAL_DATA.error_message
  is '设备故障';
comment on column JK_TL_REAL_DATA.green_status
  is '绿灯状态反馈：0：灭  1：亮';
comment on column JK_TL_REAL_DATA.red_status
  is '红灯状态反馈：0：灭  1：亮';
comment on column JK_TL_REAL_DATA.yellow_status
  is '黄灯状态反馈：0：灭  1：亮';
comment on column JK_TL_REAL_DATA.turn_status
  is '转向灯状态反馈：0：灭  1：亮';
comment on column JK_TL_REAL_DATA.collect_time
  is '采集时间：当前采集周期的起始时间';
alter table JK_TL_REAL_DATA
  add constraint PK_JK_TL_REAL_DATA primary key (DEVICE_ID)
  ;

prompt Creating JK_TS_HISTORY_DATA...
create table JK_TS_HISTORY_DATA
(
  jk_ts_history_data_id VARCHAR2(32) default sys_guid() not null,
  device_id             VARCHAR2(40) not null,
  device_status_id      NUMBER(1) not null,
  error_message         VARCHAR2(100),
  back_arrow_status     NUMBER(1) not null,
  back_x_status         NUMBER(1) not null,
  front_arrow_status    NUMBER(1) not null,
  front_x_status        NUMBER(1) not null,
  collect_time          DATE not null
)
;
comment on table JK_TS_HISTORY_DATA
  is '车道指示器流水数据表';
comment on column JK_TS_HISTORY_DATA.jk_ts_history_data_id
  is '记录ID：使用UUID作为主键';
comment on column JK_TS_HISTORY_DATA.device_id
  is '设备编码';
comment on column JK_TS_HISTORY_DATA.device_status_id
  is '设备状态';
comment on column JK_TS_HISTORY_DATA.error_message
  is '设备故障';
comment on column JK_TS_HISTORY_DATA.back_arrow_status
  is '背面绿箭状态反馈：0：灭  1：亮';
comment on column JK_TS_HISTORY_DATA.back_x_status
  is '背面红叉状态反馈：0：灭  1：亮';
comment on column JK_TS_HISTORY_DATA.front_arrow_status
  is '正面绿箭状态反馈：0：灭  1：亮';
comment on column JK_TS_HISTORY_DATA.front_x_status
  is '正面红叉状态反馈：0：灭  1：亮';
comment on column JK_TS_HISTORY_DATA.collect_time
  is '采集时间：当前采集周期的起始时间';
alter table JK_TS_HISTORY_DATA
  add constraint PK_JK_TS_HISTORY_DATA primary key (JK_TS_HISTORY_DATA_ID)
  ;

prompt Creating JK_TS_REAL_DATA...
create table JK_TS_REAL_DATA
(
  device_id          VARCHAR2(40) not null,
  device_status_id   NUMBER(1) not null,
  error_message      VARCHAR2(100),
  back_arrow_status  NUMBER(1) not null,
  back_x_status      NUMBER(1) not null,
  front_arrow_status NUMBER(1) not null,
  front_x_status     NUMBER(1) not null,
  collect_time       DATE not null
)
;
comment on table JK_TS_REAL_DATA
  is '车道指示器实时数据表';
comment on column JK_TS_REAL_DATA.device_id
  is '设备编码';
comment on column JK_TS_REAL_DATA.device_status_id
  is '设备状态';
comment on column JK_TS_REAL_DATA.error_message
  is '设备故障';
comment on column JK_TS_REAL_DATA.back_arrow_status
  is '背面绿箭状态反馈：0：灭  1：亮';
comment on column JK_TS_REAL_DATA.back_x_status
  is '背面红叉状态反馈：0：灭  1：亮';
comment on column JK_TS_REAL_DATA.front_arrow_status
  is '正面绿箭状态反馈：0：灭  1：亮';
comment on column JK_TS_REAL_DATA.front_x_status
  is '正面红叉状态反馈：0：灭  1：亮';
comment on column JK_TS_REAL_DATA.collect_time
  is '采集时间：当前采集周期的起始时间';
alter table JK_TS_REAL_DATA
  add constraint PK_JK_TS_REAL_DATA primary key (DEVICE_ID)
  ;

prompt Creating JK_TW_HISTORY_DATA...
create table JK_TW_HISTORY_DATA
(
  jk_tw_history_data_id VARCHAR2(32) default sys_guid() not null,
  device_id             VARCHAR2(40) not null,
  device_status_id      NUMBER(1) not null,
  error_message         VARCHAR2(100),
  wind_speed            NUMBER(10,3) not null,
  wind_orientation      NUMBER(1),
  collect_time          DATE not null
)
;
comment on table JK_TW_HISTORY_DATA
  is '风速风向检测器流水数据表';
comment on column JK_TW_HISTORY_DATA.jk_tw_history_data_id
  is '记录ID：使用UUID作为主键';
comment on column JK_TW_HISTORY_DATA.device_id
  is '设备编码';
comment on column JK_TW_HISTORY_DATA.device_status_id
  is '设备状态';
comment on column JK_TW_HISTORY_DATA.error_message
  is '设备故障';
comment on column JK_TW_HISTORY_DATA.wind_speed
  is '风速值';
comment on column JK_TW_HISTORY_DATA.wind_orientation
  is '风向：0、行车方向；1、逆行车方向；2、横风';
comment on column JK_TW_HISTORY_DATA.collect_time
  is '采集时间';
alter table JK_TW_HISTORY_DATA
  add constraint PK_JK_TW_HISTORY_DATA primary key (JK_TW_HISTORY_DATA_ID)
  ;

prompt Creating JK_TW_REAL_DATA...
create table JK_TW_REAL_DATA
(
  device_id        VARCHAR2(40) not null,
  device_status_id NUMBER(1) not null,
  error_message    VARCHAR2(100),
  wind_speed       NUMBER(10,3) not null,
  wind_orientation NUMBER(1),
  collect_time     DATE not null
)
;
comment on table JK_TW_REAL_DATA
  is '风速风向检测器实时数据表';
comment on column JK_TW_REAL_DATA.device_id
  is '设备编码';
comment on column JK_TW_REAL_DATA.device_status_id
  is '设备状态';
comment on column JK_TW_REAL_DATA.error_message
  is '设备故障';
comment on column JK_TW_REAL_DATA.wind_speed
  is '风速值';
comment on column JK_TW_REAL_DATA.wind_orientation
  is '风向：0、行车方向；1、逆行车方向；2、横风';
comment on column JK_TW_REAL_DATA.collect_time
  is '采集时间';
alter table JK_TW_REAL_DATA
  add constraint PK_JK_TW_REAL_DATA primary key (DEVICE_ID)
  ;

prompt Creating JK_VD_CHARTS...
create table JK_VD_CHARTS
(
  road_segment_id VARCHAR2(20)
)
;

prompt Creating JK_VD_DEVICE_PROFILE...
create table JK_VD_DEVICE_PROFILE
(
  device_id       VARCHAR2(40) not null,
  device_desc     VARCHAR2(80) not null,
  device_type_id  VARCHAR2(4) not null,
  em_type_id      CHAR(3) not null,
  road_segment_id VARCHAR2(20) not null,
  organization_id VARCHAR2(20) not null,
  direction_id    NUMBER(2) not null,
  dec_stub        NUMBER(10,3) not null,
  char_stub       VARCHAR2(20),
  price           NUMBER(12,2) default 0,
  manufacturer    VARCHAR2(50),
  product_model   VARCHAR2(50),
  quantity        NUMBER(5) default 1,
  installer       VARCHAR2(50),
  install_time    DATE,
  collect_type    NUMBER(1),
  user_id         VARCHAR2(12),
  collect_time    DATE default sysdate not null,
  flag            NUMBER(1) default 1 not null,
  update_time     DATE default sysdate not null,
  communication   NUMBER(1) not null,
  ip              VARCHAR2(20),
  port            VARCHAR2(10),
  bot             NUMBER(7),
  valid           NUMBER(1) default 0 not null,
  other           VARCHAR2(50),
  dal             VARCHAR2(50),
  manufactor_name VARCHAR2(50)
)
;
comment on table JK_VD_DEVICE_PROFILE
  is '设备基本资料表';
comment on column JK_VD_DEVICE_PROFILE.device_id
  is '设备ID';
comment on column JK_VD_DEVICE_PROFILE.device_desc
  is '设备名称或设备描述';
comment on column JK_VD_DEVICE_PROFILE.device_type_id
  is '设备类型';
comment on column JK_VD_DEVICE_PROFILE.em_type_id
  is '所属机电系统';
comment on column JK_VD_DEVICE_PROFILE.road_segment_id
  is '所属路段';
comment on column JK_VD_DEVICE_PROFILE.organization_id
  is '所属管理机构。要求所有设备的管理机构都应设置为“路段管理处”等管理机构';
comment on column JK_VD_DEVICE_PROFILE.direction_id
  is '设备所在方向（或位置）';
comment on column JK_VD_DEVICE_PROFILE.dec_stub
  is '数字桩号';
comment on column JK_VD_DEVICE_PROFILE.char_stub
  is '字符桩号';
comment on column JK_VD_DEVICE_PROFILE.price
  is '价格：单位：元';
comment on column JK_VD_DEVICE_PROFILE.manufacturer
  is '生产厂家';
comment on column JK_VD_DEVICE_PROFILE.product_model
  is '产品型号';
comment on column JK_VD_DEVICE_PROFILE.quantity
  is '数量';
comment on column JK_VD_DEVICE_PROFILE.installer
  is '安装厂商';
comment on column JK_VD_DEVICE_PROFILE.install_time
  is '安装时间';
comment on column JK_VD_DEVICE_PROFILE.collect_type
  is '数据采集方式：1:数据交换  2:人工录入';
comment on column JK_VD_DEVICE_PROFILE.user_id
  is '最近更新时的用户';
comment on column JK_VD_DEVICE_PROFILE.collect_time
  is '创建时间';
comment on column JK_VD_DEVICE_PROFILE.flag
  is '删除标志:0：无效；1有效';
comment on column JK_VD_DEVICE_PROFILE.update_time
  is '修改时间';
comment on column JK_VD_DEVICE_PROFILE.communication
  is '通信方式:通讯方式必填
0:未知 1TCP 2udp 3串口';
comment on column JK_VD_DEVICE_PROFILE.ip
  is 'IP地址:串口模式时，填写串口服务器Ip；网络模式时，填写设备ip';
comment on column JK_VD_DEVICE_PROFILE.port
  is '端口/串口号:串口模式时，填写串口号；网络模式时，填写端口号';
comment on column JK_VD_DEVICE_PROFILE.bot
  is '串口配置';
comment on column JK_VD_DEVICE_PROFILE.valid
  is '是否启用标志:设备采集功能是否启用
0：关闭；1启用';
comment on column JK_VD_DEVICE_PROFILE.other
  is '其他内容';
comment on column JK_VD_DEVICE_PROFILE.dal
  is '业务类名称';
comment on column JK_VD_DEVICE_PROFILE.manufactor_name
  is '厂家名称';
alter table JK_VD_DEVICE_PROFILE
  add constraint PK_JK_VD_DEVICE_PROFILE primary key (DEVICE_ID)
  ;

prompt Creating JK_VD_HISTORY_DATA1...
create table JK_VD_HISTORY_DATA1
(
  jk_vd_history_data_id VARCHAR2(32) default sys_guid() not null,
  device_id             VARCHAR2(40) not null,
  start_time            DATE not null,
  end_time              DATE not null,
  collect_time          DATE not null,
  direction_id          NUMBER(1) not null,
  lane_number           NUMBER(1) not null,
  flow                  NUMBER(8) not null,
  flow_1                NUMBER(8) default 0,
  flow_2                NUMBER(8) default 0,
  flow_3                NUMBER(8) default 0,
  flow_4                NUMBER(8) default 0,
  flow_5                NUMBER(8) default 0,
  flow_6                NUMBER(8) default 0,
  flow_dl               NUMBER(8) not null,
  speed                 NUMBER(5,2) not null,
  occupancy             NUMBER(5,2) not null,
  traffic_status        NUMBER(1),
  traffic_status_next   NUMBER(1),
  speed_next            NUMBER(5,2)
)
;
comment on table JK_VD_HISTORY_DATA1
  is '车辆检测器流水数据表';
comment on column JK_VD_HISTORY_DATA1.jk_vd_history_data_id
  is '记录ID';
comment on column JK_VD_HISTORY_DATA1.device_id
  is '设备ID';
comment on column JK_VD_HISTORY_DATA1.start_time
  is '检测周期起始时间';
comment on column JK_VD_HISTORY_DATA1.end_time
  is '检测周期终止时间';
comment on column JK_VD_HISTORY_DATA1.collect_time
  is '采集时间';
comment on column JK_VD_HISTORY_DATA1.direction_id
  is '方向';
comment on column JK_VD_HISTORY_DATA1.lane_number
  is '车道编号';
comment on column JK_VD_HISTORY_DATA1.flow
  is '绝对交通量';
comment on column JK_VD_HISTORY_DATA1.flow_1
  is '车型1交通量';
comment on column JK_VD_HISTORY_DATA1.flow_2
  is '车型2交通量';
comment on column JK_VD_HISTORY_DATA1.flow_3
  is '车型3交通量';
comment on column JK_VD_HISTORY_DATA1.flow_4
  is '车型4交通量';
comment on column JK_VD_HISTORY_DATA1.flow_5
  is '车型5交通量';
comment on column JK_VD_HISTORY_DATA1.flow_6
  is '车型6交通量';
comment on column JK_VD_HISTORY_DATA1.flow_dl
  is '当量交通量';
comment on column JK_VD_HISTORY_DATA1.speed
  is '平均速度';
comment on column JK_VD_HISTORY_DATA1.occupancy
  is '平均占有率';
comment on column JK_VD_HISTORY_DATA1.traffic_status
  is '实时交通状态';
comment on column JK_VD_HISTORY_DATA1.traffic_status_next
  is '下一周期预测交通状态';
comment on column JK_VD_HISTORY_DATA1.speed_next
  is '下一周期预测速度';
alter table JK_VD_HISTORY_DATA1
  add constraint JK_VD_HISTORY_DATA_PK primary key (JK_VD_HISTORY_DATA_ID)
  ;

prompt Creating JK_VD_SUM_DATA...
create table JK_VD_SUM_DATA
(
  jk_vd_sum_data_id VARCHAR2(32) default sys_guid() not null,
  device_id         VARCHAR2(40) not null,
  direction_id      NUMBER(1) not null,
  record_type       NUMBER(1) not null,
  record_time       DATE not null,
  create_time       DATE default sysdate not null,
  flow              NUMBER(8) not null,
  flow_1            NUMBER(8) default 0,
  flow_2            NUMBER(8) default 0,
  flow_3            NUMBER(8) default 0,
  flow_4            NUMBER(8) default 0,
  flow_5            NUMBER(8) default 0,
  flow_6            NUMBER(8) default 0,
  flow_dl           NUMBER(8) not null,
  speed             NUMBER(5,2) not null,
  occupancy         NUMBER(5,2) not null,
  syncflag          NUMBER(1)
)
;
comment on table JK_VD_SUM_DATA
  is '车辆检测器汇总数据表';
comment on column JK_VD_SUM_DATA.jk_vd_sum_data_id
  is '记录ID';
comment on column JK_VD_SUM_DATA.device_id
  is '设备ID';
comment on column JK_VD_SUM_DATA.direction_id
  is '方向';
comment on column JK_VD_SUM_DATA.record_type
  is '记录类型';
comment on column JK_VD_SUM_DATA.record_time
  is '记录所属时间';
comment on column JK_VD_SUM_DATA.create_time
  is '生成时间';
comment on column JK_VD_SUM_DATA.flow
  is '绝对交通量';
comment on column JK_VD_SUM_DATA.flow_1
  is '车型1交通量';
comment on column JK_VD_SUM_DATA.flow_2
  is '车型2交通量';
comment on column JK_VD_SUM_DATA.flow_3
  is '车型3交通量';
comment on column JK_VD_SUM_DATA.flow_4
  is '车型4交通量';
comment on column JK_VD_SUM_DATA.flow_5
  is '车型5交通量';
comment on column JK_VD_SUM_DATA.flow_6
  is '车型6交通量';
comment on column JK_VD_SUM_DATA.flow_dl
  is '当量交通量';
comment on column JK_VD_SUM_DATA.speed
  is '平均速度';
comment on column JK_VD_SUM_DATA.occupancy
  is '平均占有率';
alter table JK_VD_SUM_DATA
  add constraint JK_VD_SUM_DATA_PK primary key (JK_VD_SUM_DATA_ID)
  ;

prompt Creating JK_WS_DEVICE_PROFILE...
create table JK_WS_DEVICE_PROFILE
(
  device_id       VARCHAR2(40) not null,
  device_desc     VARCHAR2(80) not null,
  device_type_id  VARCHAR2(4) not null,
  em_type_id      CHAR(3) not null,
  road_segment_id VARCHAR2(20) not null,
  organization_id VARCHAR2(20) not null,
  direction_id    NUMBER(2) not null,
  dec_stub        NUMBER(10,3) not null,
  char_stub       VARCHAR2(20),
  price           NUMBER(12,2) default 0,
  manufacturer    VARCHAR2(50),
  product_model   VARCHAR2(50),
  quantity        NUMBER(5) default 1,
  installer       VARCHAR2(50),
  install_time    DATE,
  collect_type    NUMBER(1),
  user_id         VARCHAR2(12),
  collect_time    DATE default sysdate not null,
  flag            NUMBER(1) default 1 not null,
  update_time     DATE default sysdate not null,
  communication   NUMBER(1) not null,
  ip              VARCHAR2(20),
  port            NUMBER(5),
  bot             NUMBER(7),
  valid           NUMBER(1) default 0 not null,
  other           VARCHAR2(50),
  protocal_id     VARCHAR2(50),
  service_id      VARCHAR2(40) not null
)
;
comment on table JK_WS_DEVICE_PROFILE
  is '气象设备基本资料表';
comment on column JK_WS_DEVICE_PROFILE.device_id
  is '设备ID';
comment on column JK_WS_DEVICE_PROFILE.device_desc
  is '设备名称或设备描述';
comment on column JK_WS_DEVICE_PROFILE.device_type_id
  is '设备类型';
comment on column JK_WS_DEVICE_PROFILE.em_type_id
  is '所属机电系统';
comment on column JK_WS_DEVICE_PROFILE.road_segment_id
  is '所属路段';
comment on column JK_WS_DEVICE_PROFILE.organization_id
  is '所属管理机构。要求所有设备的管理机构都应设置为“路段管理处”等管理机构';
comment on column JK_WS_DEVICE_PROFILE.direction_id
  is '设备所在方向（或位置）';
comment on column JK_WS_DEVICE_PROFILE.dec_stub
  is '数字桩号';
comment on column JK_WS_DEVICE_PROFILE.char_stub
  is '字符桩号';
comment on column JK_WS_DEVICE_PROFILE.price
  is '价格：单位：元';
comment on column JK_WS_DEVICE_PROFILE.manufacturer
  is '生产厂家';
comment on column JK_WS_DEVICE_PROFILE.product_model
  is '产品型号';
comment on column JK_WS_DEVICE_PROFILE.quantity
  is '数量';
comment on column JK_WS_DEVICE_PROFILE.installer
  is '安装厂商';
comment on column JK_WS_DEVICE_PROFILE.install_time
  is '安装时间';
comment on column JK_WS_DEVICE_PROFILE.collect_type
  is '数据采集方式：1:数据交换  2:人工录入';
comment on column JK_WS_DEVICE_PROFILE.user_id
  is '最近更新时的用户';
comment on column JK_WS_DEVICE_PROFILE.collect_time
  is '创建时间';
comment on column JK_WS_DEVICE_PROFILE.flag
  is '删除标志:0：无效；1有效';
comment on column JK_WS_DEVICE_PROFILE.update_time
  is '修改时间';
comment on column JK_WS_DEVICE_PROFILE.communication
  is '通信方式:通讯方式必填
0:未知 1TCP 2udp 3串口';
comment on column JK_WS_DEVICE_PROFILE.ip
  is 'IP地址:串口模式时，填写串口服务器Ip；网络模式时，填写设备ip';
comment on column JK_WS_DEVICE_PROFILE.port
  is '端口/串口号:串口模式时，填写串口号；网络模式时，填写端口号';
comment on column JK_WS_DEVICE_PROFILE.bot
  is '串口配置';
comment on column JK_WS_DEVICE_PROFILE.valid
  is '是否启用标志:设备采集功能是否启用
0：关闭；1启用';
comment on column JK_WS_DEVICE_PROFILE.other
  is '其他内容';
comment on column JK_WS_DEVICE_PROFILE.protocal_id
  is '基于协议的id';
comment on column JK_WS_DEVICE_PROFILE.service_id
  is '服务id';
alter table JK_WS_DEVICE_PROFILE
  add constraint PK_JK_WS_DEVICE_PROFILE primary key (DEVICE_ID)
  ;

prompt Creating JK_WS_HISTORY_DATA...
create table JK_WS_HISTORY_DATA
(
  jk_ws_history_data_id VARCHAR2(32) default sys_guid() not null,
  device_id             VARCHAR2(40) not null,
  device_status_id      NUMBER(1) not null,
  error_message         VARCHAR2(100),
  vi                    NUMBER(8,2),
  surface_temperature   NUMBER(5,2),
  surface_condition_id  NUMBER(2),
  air_temperature       NUMBER(5,2),
  relative_humidity     NUMBER(5,2),
  wind_speed            NUMBER(5,2),
  wind_orientation      NUMBER(5,2),
  collect_time          DATE not null,
  rain_fall             NUMBER(5,2),
  dew_point             NUMBER(6,1),
  coverage_thickness    NUMBER(4,2),
  level_grip            NUMBER(3,2),
  amout_water           NUMBER(4,2),
  amout_ice             NUMBER(4,2),
  amout_snow            NUMBER(4,2),
  air_pressure          NUMBER(6,2),
  freezing_temperature  NUMBER(5,2),
  surface_salinity      NUMBER(5,2)
)
;
comment on table JK_WS_HISTORY_DATA
  is '气象工作站流水数据主表';
comment on column JK_WS_HISTORY_DATA.jk_ws_history_data_id
  is '记录ID：使用UUID作为主键';
comment on column JK_WS_HISTORY_DATA.device_id
  is '设备编码';
comment on column JK_WS_HISTORY_DATA.device_status_id
  is '设备状态';
comment on column JK_WS_HISTORY_DATA.error_message
  is '设备故障';
comment on column JK_WS_HISTORY_DATA.vi
  is '能见度：单位：米';
comment on column JK_WS_HISTORY_DATA.surface_temperature
  is '路面温度：单位：℃';
comment on column JK_WS_HISTORY_DATA.surface_condition_id
  is '路面状态';
comment on column JK_WS_HISTORY_DATA.air_temperature
  is '大气温度：单位：℃';
comment on column JK_WS_HISTORY_DATA.relative_humidity
  is '大气湿度：单位：%';
comment on column JK_WS_HISTORY_DATA.wind_speed
  is '风速：单位：m/s';
comment on column JK_WS_HISTORY_DATA.wind_orientation
  is '风向：取值0~360度';
comment on column JK_WS_HISTORY_DATA.collect_time
  is '采集时间：当前采集周期的起始时间';
comment on column JK_WS_HISTORY_DATA.rain_fall
  is '降雨量';
comment on column JK_WS_HISTORY_DATA.dew_point
  is '露点(TD1)';
comment on column JK_WS_HISTORY_DATA.coverage_thickness
  is '覆盖厚度(WT1)';
comment on column JK_WS_HISTORY_DATA.level_grip
  is '湿滑程度(GR3)';
comment on column JK_WS_HISTORY_DATA.amout_water
  is '水积累量';
comment on column JK_WS_HISTORY_DATA.amout_ice
  is '冰积累量';
comment on column JK_WS_HISTORY_DATA.amout_snow
  is '雪积累量';
comment on column JK_WS_HISTORY_DATA.air_pressure
  is '气压值';
comment on column JK_WS_HISTORY_DATA.freezing_temperature
  is '冰点温度';
comment on column JK_WS_HISTORY_DATA.surface_salinity
  is '路面盐度';
alter table JK_WS_HISTORY_DATA
  add constraint PK_JK_WS_HISTORY_DATA primary key (JK_WS_HISTORY_DATA_ID)
  ;

prompt Creating JK_WS_HISTORY_STATUS...
create table JK_WS_HISTORY_STATUS
(
  jk_ws_history_status_id VARCHAR2(32) default sys_guid() not null,
  device_id               VARCHAR2(40) not null,
  device_status_id        NUMBER(1) not null,
  error_message           VARCHAR2(100),
  collect_time            DATE not null
)
;
comment on table JK_WS_HISTORY_STATUS
  is '气象工作站流水数据主表';
comment on column JK_WS_HISTORY_STATUS.jk_ws_history_status_id
  is '记录ID：使用UUID作为主键';
comment on column JK_WS_HISTORY_STATUS.device_id
  is '设备编码';
comment on column JK_WS_HISTORY_STATUS.device_status_id
  is '设备状态';
comment on column JK_WS_HISTORY_STATUS.error_message
  is '设备故障';
comment on column JK_WS_HISTORY_STATUS.collect_time
  is '采集时间：当前采集周期的起始时间';
create index IDX_JK_WS_HISTORY_STATUS1 on JK_WS_HISTORY_STATUS (COLLECT_TIME)
 ;
alter table JK_WS_HISTORY_STATUS
  add constraint PK_JK_WS_HISTORY_STATUS primary key (JK_WS_HISTORY_STATUS_ID)
  ;

prompt Creating JK_WS_REAL_DATA...
create table JK_WS_REAL_DATA
(
  device_id            VARCHAR2(40) not null,
  device_status_id     NUMBER(1) not null,
  error_message        VARCHAR2(100),
  vi                   NUMBER(8,2),
  surface_temperature  NUMBER(5,2),
  surface_condition_id NUMBER(2),
  air_temperature      NUMBER(5,2),
  relative_humidity    NUMBER(5,2),
  wind_speed           NUMBER(5,2),
  wind_orientation     NUMBER(5,2),
  collect_time         DATE default SYSDATE not null,
  rain_fall            NUMBER(5,2),
  dew_point            NUMBER(6,1) default 0.0,
  coverage_thickness   NUMBER(4,2) default 0.00,
  level_grip           NUMBER(3,2) default 0.00,
  amout_water          NUMBER(4,2) default 0.00,
  amout_ice            NUMBER(4,2) default 0.00,
  amout_snow           NUMBER(4,2) default 0.00,
  air_pressure         NUMBER(6,2) default 0.00,
  freezing_temperature NUMBER(5,2),
  surface_salinity     NUMBER(5,2)
)
;
comment on table JK_WS_REAL_DATA
  is '气象工作站实时数据主表';
comment on column JK_WS_REAL_DATA.device_id
  is '设备编码';
comment on column JK_WS_REAL_DATA.device_status_id
  is '设备状态';
comment on column JK_WS_REAL_DATA.error_message
  is '设备故障';
comment on column JK_WS_REAL_DATA.vi
  is '能见度：单位：米';
comment on column JK_WS_REAL_DATA.surface_temperature
  is '路面温度：单位：℃';
comment on column JK_WS_REAL_DATA.surface_condition_id
  is '路面状态';
comment on column JK_WS_REAL_DATA.air_temperature
  is '大气温度：单位：℃';
comment on column JK_WS_REAL_DATA.relative_humidity
  is '大气湿度：单位：%';
comment on column JK_WS_REAL_DATA.wind_speed
  is '风速：单位：m/s';
comment on column JK_WS_REAL_DATA.wind_orientation
  is '风向：取值0~360度';
comment on column JK_WS_REAL_DATA.collect_time
  is '采集时间：当前采集周期的起始时间';
comment on column JK_WS_REAL_DATA.rain_fall
  is '降雨量';
comment on column JK_WS_REAL_DATA.dew_point
  is '露点(TD1)';
comment on column JK_WS_REAL_DATA.coverage_thickness
  is '覆盖厚度(WT1)';
comment on column JK_WS_REAL_DATA.level_grip
  is '湿滑程度(GR3)';
comment on column JK_WS_REAL_DATA.amout_water
  is '水积累量';
comment on column JK_WS_REAL_DATA.amout_ice
  is '冰积累量';
comment on column JK_WS_REAL_DATA.amout_snow
  is '雪积累量';
comment on column JK_WS_REAL_DATA.air_pressure
  is '气压值';
comment on column JK_WS_REAL_DATA.freezing_temperature
  is '冰点温度';
comment on column JK_WS_REAL_DATA.surface_salinity
  is '路面盐度';
alter table JK_WS_REAL_DATA
  add constraint PK_JK_WS_REAL_DATA primary key (DEVICE_ID)
  ;

prompt Creating JK_WS_REAL_STATUS...
create table JK_WS_REAL_STATUS
(
  device_id        VARCHAR2(40) not null,
  device_status_id NUMBER(1) default 0 not null,
  error_message    VARCHAR2(100),
  collect_time     DATE default sysdate not null
)
;
comment on table JK_WS_REAL_STATUS
  is '气象工作站实时数据主表';
comment on column JK_WS_REAL_STATUS.device_id
  is '设备编码';
comment on column JK_WS_REAL_STATUS.device_status_id
  is '设备状态';
comment on column JK_WS_REAL_STATUS.error_message
  is '设备故障';
comment on column JK_WS_REAL_STATUS.collect_time
  is '采集时间：当前采集周期的起始时间';
create index IDX_JK_WS_REAL_STATUS on JK_WS_REAL_STATUS (DEVICE_ID, COLLECT_TIME)
 ;
alter table JK_WS_REAL_STATUS
  add constraint PK_JK_WS_REAL_STATUS primary key (DEVICE_ID);

prompt Creating MESSAGE_REMIND...
create table MESSAGE_REMIND
(
  remind_id        VARCHAR2(32) not null,
  remind_no        VARCHAR2(32) not null,
  message_type     NUMBER(1) not null,
  remind_way       NUMBER(1) default 0,
  voice_id         VARCHAR2(32),
  deal_user_id     VARCHAR2(12) not null,
  last_update_time DATE not null,
  category         VARCHAR2(1024),
  message_name     VARCHAR2(32),
  deal_url         VARCHAR2(200),
  no_deal_url      VARCHAR2(200),
  sort_no          NUMBER(2)
)
;
comment on table MESSAGE_REMIND
  is '消息提醒表';
comment on column MESSAGE_REMIND.remind_id
  is '主键';
comment on column MESSAGE_REMIND.remind_no
  is '提醒编号';
comment on column MESSAGE_REMIND.message_type
  is '消息类型 1、报警消息，2、路况消息';
comment on column MESSAGE_REMIND.remind_way
  is '提示音类型 0-无提示音、1-提醒一次，-1、一直提醒';
comment on column MESSAGE_REMIND.voice_id
  is '声音文件ID';
comment on column MESSAGE_REMIND.deal_user_id
  is '记录修改人';
comment on column MESSAGE_REMIND.last_update_time
  is '最近修改时间';
comment on column MESSAGE_REMIND.category
  is '消息类型下的子类别';
comment on column MESSAGE_REMIND.message_name
  is '消息选项卡显示名称';
comment on column MESSAGE_REMIND.deal_url
  is '处理操作的url地址';
comment on column MESSAGE_REMIND.no_deal_url
  is '不予处理操作的url地址';
comment on column MESSAGE_REMIND.sort_no
  is '序号';
alter table MESSAGE_REMIND
  add constraint PK_MESSAGE_REMIND primary key (REMIND_ID)
  ;

prompt Creating M_MAP...
create table M_MAP
(
  id              VARCHAR2(32) default sys_guid() not null,
  name            VARCHAR2(100) not null,
  path            VARCHAR2(100) not null,
  levels          NUMBER(2) default 5,
  default_level   NUMBER(2) default 2,
  img_type        NUMBER(1) default 0,
  origin_type     NUMBER(2) default -1,
  type            NUMBER(1) default 0,
  organization_id VARCHAR2(20),
  valid           NUMBER(1) default 1,
  right           NUMBER(14,6) not null,
  bottom          NUMBER(14,6) not null,
  left            NUMBER(14,6) default 0,
  top             NUMBER(14,6) default 0,
  default_x       NUMBER(14,6),
  default_y       NUMBER(14,6),
  resolution      NUMBER(14,6),
  sort_no         NUMBER(3)
)
;
comment on table M_MAP
  is '地图信息表';
comment on column M_MAP.id
  is '地图号：使用UUID作为主键';
comment on column M_MAP.name
  is '地图名称';
comment on column M_MAP.path
  is '地图路径';
comment on column M_MAP.levels
  is '缩放级别';
comment on column M_MAP.default_level
  is '默认级别';
comment on column M_MAP.img_type
  is '图源类型：0、简单单图，1、瓦片式图源，2、ArcGIS图源，3、GOOGLE缓存瓦片式';
comment on column M_MAP.origin_type
  is '坐标系类型：（原点位置）：0、中央点，-1、左上角，1、左下角';
comment on column M_MAP.type
  is '地图类型：0、主图，1、局部地图（隧道）';
comment on column M_MAP.organization_id
  is '所属管理机构';
comment on column M_MAP.valid
  is '有效性：0、无效，1、有效';
comment on column M_MAP.right
  is '右X坐标：单图为宽度';
comment on column M_MAP.bottom
  is '底Y坐标：单图为高度';
comment on column M_MAP.left
  is '左X坐标';
comment on column M_MAP.top
  is '顶Y坐标';
comment on column M_MAP.default_x
  is '默认定位X坐标';
comment on column M_MAP.default_y
  is '默认定位Y坐标';
comment on column M_MAP.resolution
  is '地图精度';
comment on column M_MAP.sort_no
  is '顺序：设置各路段在路段菜单中的顺序';
alter table M_MAP
  add constraint PK_M_MAP primary key (ID)
  ;

prompt Creating M_OBJ...
create table M_OBJ
(
  id      VARCHAR2(32) default sys_guid() not null,
  map_id  VARCHAR2(32) not null,
  type    VARCHAR2(2) not null,
  obj_id  VARCHAR2(40),
  x       NUMBER(14,6) not null,
  y       NUMBER(14,6) not null,
  width   NUMBER(10,2),
  height  NUMBER(10,2),
  valid   NUMBER(1) default 1,
  sort_no NUMBER(7)
)
;
comment on table M_OBJ
  is '地图对象信息表';
comment on column M_OBJ.id
  is '标识号：使用UUID作为主键';
comment on column M_OBJ.map_id
  is '地图号';
comment on column M_OBJ.type
  is '组件类型：01、设备组件，90、子地图';
comment on column M_OBJ.obj_id
  is '组件ID：若对象类型为子地图，则为地图号 M_Map.ID；  若为设备组件，则为 DeviceProfile.DeviceID';
comment on column M_OBJ.x
  is 'X坐标';
comment on column M_OBJ.y
  is 'Y坐标';
comment on column M_OBJ.width
  is '宽';
comment on column M_OBJ.height
  is '高';
comment on column M_OBJ.valid
  is '有效性：0、无效，1、有效';
comment on column M_OBJ.sort_no
  is '顺序';
alter table M_OBJ
  add constraint PK_M_OBJ primary key (ID)
;
 

prompt Creating OM_DCI_SERVICE_LOG...
create table OM_DCI_SERVICE_LOG
(
  om_dci_service_log_id VARCHAR2(32) default sys_guid() not null,
  service_id            VARCHAR2(50) not null,
  server_name           VARCHAR2(100) not null,
  log_time              DATE not null,
  log_type              NUMBER(1) not null,
  log_message           VARCHAR2(4000),
  insert_time           DATE default sysdate not null,
  numbers               NUMBER(10)
)
;
comment on table OM_DCI_SERVICE_LOG
  is '数据平台服务日志表';
comment on column OM_DCI_SERVICE_LOG.om_dci_service_log_id
  is '记录序号：使用UUID作为主键';
comment on column OM_DCI_SERVICE_LOG.service_id
  is '服务ID';
comment on column OM_DCI_SERVICE_LOG.server_name
  is '服务器名称';
comment on column OM_DCI_SERVICE_LOG.log_time
  is '日志时间';
comment on column OM_DCI_SERVICE_LOG.log_type
  is '日志类型：srvLogDebug = 1  srvLogInfo = 2  srvLogWarning = 3  srvLogError = 4';
comment on column OM_DCI_SERVICE_LOG.log_message
  is '日志信息';
comment on column OM_DCI_SERVICE_LOG.insert_time
  is '记录写入时间';
comment on column OM_DCI_SERVICE_LOG.numbers
  is '记录序号：用于记录排序';
create index IDX_OM_DCI_SERVICE_LOG on OM_DCI_SERVICE_LOG (SERVICE_ID, LOG_TIME)
 ;
alter table OM_DCI_SERVICE_LOG
  add constraint PK_OM_DCI_SERVICE_LOG primary key (OM_DCI_SERVICE_LOG_ID)
 ;

prompt Creating OM_DCI_SYSTEM_LOG...
create table OM_DCI_SYSTEM_LOG
(
  om_dci_system_log_id VARCHAR2(32) default sys_guid() not null,
  log_time             DATE not null,
  log_message          VARCHAR2(2000) not null,
  insert_time          DATE default sysdate not null
)
;
comment on table OM_DCI_SYSTEM_LOG
  is '数据平台系统日志表';
comment on column OM_DCI_SYSTEM_LOG.om_dci_system_log_id
  is '记录序号：使用UUID作为主键';
comment on column OM_DCI_SYSTEM_LOG.log_time
  is '日志时间';
comment on column OM_DCI_SYSTEM_LOG.log_message
  is '日志信息';
comment on column OM_DCI_SYSTEM_LOG.insert_time
  is '记录写入时间';
alter table OM_DCI_SYSTEM_LOG
  add constraint PK_OM_DCI_SYSTEM_LOG primary key (OM_DCI_SYSTEM_LOG_ID)
 ;

prompt Creating SCR_EVENT_INFO1...
create table SCR_EVENT_INFO1
(
  id                   VARCHAR2(32) default sys_guid() not null,
  camera_id            VARCHAR2(40) not null,
  event_type_id        NUMBER(3) not null,
  event_time           DATE not null,
  collect_time         DATE default sysdate not null,
  is_screen            NUMBER(1) default 0 not null,
  is_record            NUMBER(1) default 0,
  recorded_filename    VARCHAR2(400),
  rcv_ip               VARCHAR2(16),
  rcv_port             VARCHAR2(10),
  opt_status           NUMBER(1) default 0,
  chgdate              DATE default sysdate,
  event_id             VARCHAR2(32),
  record_len           NUMBER(6) default 900,
  memo                 VARCHAR2(2000),
  manual_deal_mode     NUMBER(1) default 0,
  manual_deal_time     DATE,
  manual_deal_user     VARCHAR2(32),
  manual_deal_memo     VARCHAR2(200),
  manual_deal_event_id VARCHAR2(32),
  is_notify            NUMBER(1) default 0 not null,
  event_pic            VARCHAR2(200)
)
;
comment on table SCR_EVENT_INFO1
  is '视频事件及录像信息表';
comment on column SCR_EVENT_INFO1.id
  is '作为主键';
comment on column SCR_EVENT_INFO1.camera_id
  is '指哪一路摄像机上传了报警数据';
comment on column SCR_EVENT_INFO1.event_type_id
  is '上传的报警事件类型';
comment on column SCR_EVENT_INFO1.event_time
  is '事件发生的时间';
comment on column SCR_EVENT_INFO1.collect_time
  is '数据上传的时间';
comment on column SCR_EVENT_INFO1.is_screen
  is '是否投放到大屏幕上面 0：没有投放 1：已经投放 2:准备投放 3:投放录像';
comment on column SCR_EVENT_INFO1.is_record
  is '是否录像 0:尚未录像 1:已经录像成功 2:录像失败 ';
comment on column SCR_EVENT_INFO1.recorded_filename
  is '录像文件名';
comment on column SCR_EVENT_INFO1.rcv_ip
  is '收流ip';
comment on column SCR_EVENT_INFO1.rcv_port
  is '收流端口';
comment on column SCR_EVENT_INFO1.opt_status
  is '操作状态 0：无操作  1：操作成功 2：操作失败 3：准备回放 4：准备停止';
comment on column SCR_EVENT_INFO1.chgdate
  is '更新时间';
comment on column SCR_EVENT_INFO1.event_id
  is '关联的事件ID';
comment on column SCR_EVENT_INFO1.record_len
  is '录像时长（秒）';
comment on column SCR_EVENT_INFO1.memo
  is '说明';
comment on column SCR_EVENT_INFO1.manual_deal_mode
  is '人工处理方式：0、待处理；1、误报；2、重复；3、不必处理；9、转人工事件处理';
comment on column SCR_EVENT_INFO1.manual_deal_time
  is '处理时间。当“人工处理方式”不为0时有意义';
comment on column SCR_EVENT_INFO1.manual_deal_user
  is '处理人。当“人工处理方式”不为0时有意义';
comment on column SCR_EVENT_INFO1.manual_deal_memo
  is '处理说明。当“人工处理方式”不为0时有意义';
comment on column SCR_EVENT_INFO1.manual_deal_event_id
  is '人工事件ID';
comment on column SCR_EVENT_INFO1.is_notify
  is '是否已经在页面通知给用户   0否 1是';
comment on column SCR_EVENT_INFO1.event_pic
  is '视频事件的抓拍图片';
create index IND_SCR_EVENT_INFO_CAMERA on SCR_EVENT_INFO1 (CAMERA_ID)
 ;
create index IND_SCR_EVENT_INFO_EVENT on SCR_EVENT_INFO1 (EVENT_TYPE_ID)
 ;
create index IND_SCR_EVENT_INFO_NOTIFYFLAG on SCR_EVENT_INFO1 (IS_NOTIFY)
 ;
create index IND_SCR_EVENT_INFO_OPTSTATUS on SCR_EVENT_INFO1 (OPT_STATUS, CHGDATE)
 ;
alter table SCR_EVENT_INFO1
  add constraint PK_SCR_EVENT_INFO primary key (ID)
  ;

prompt Creating SCR_EVENT_TYPE...
create table SCR_EVENT_TYPE
(
  event_type_id        NUMBER(3) not null,
  event_desc           VARCHAR2(50) not null,
  manual_event_type_id VARCHAR2(8)
)
;
comment on table SCR_EVENT_TYPE
  is '视频报警事件类型表';
comment on column SCR_EVENT_TYPE.event_type_id
  is '指每种事件类型在系统中的编号，一般用来与其他的表相关联，作为主键';
comment on column SCR_EVENT_TYPE.event_desc
  is '对所发生的事件的描述';
comment on column SCR_EVENT_TYPE.manual_event_type_id
  is '人工事件类型';
alter table SCR_EVENT_TYPE
  add constraint PK_SCR_EVENT_TYPE primary key (EVENT_TYPE_ID)
  ;

prompt Creating SERVICE_NODE...
create table SERVICE_NODE
(
  service_id          VARCHAR2(32) not null,
  service_name        VARCHAR2(200) not null,
  status              NUMBER(1) default 0,
  last_update_time    DATE not null,
  last_update_user_id VARCHAR2(32) not null
)
;
comment on table SERVICE_NODE
  is '服务表';
comment on column SERVICE_NODE.service_id
  is '服务ID';
comment on column SERVICE_NODE.service_name
  is '服务名称';
comment on column SERVICE_NODE.status
  is '服务状态：0不在线，1在线';
comment on column SERVICE_NODE.last_update_time
  is '最后更新时间';
comment on column SERVICE_NODE.last_update_user_id
  is '修改人';
alter table SERVICE_NODE
  add constraint PK_SERVICE_NODE primary key (SERVICE_ID)
  ;

prompt Creating SMS_GROUP...
create table SMS_GROUP
(
  group_id            VARCHAR2(32) default sys_guid() not null,
  group_name          VARCHAR2(32) not null,
  sort_no             NUMBER(3) not null,
  last_update_time    DATE not null,
  last_update_user_id VARCHAR2(32) not null
)
;
comment on table SMS_GROUP
  is '用户组';
comment on column SMS_GROUP.group_id
  is '组ID';
comment on column SMS_GROUP.group_name
  is '组名称';
comment on column SMS_GROUP.last_update_time
  is '最近修改时间';
comment on column SMS_GROUP.last_update_user_id
  is '最近修改人';
alter table SMS_GROUP
  add constraint PK_SMS_GROUP primary key (GROUP_ID)
  ;

prompt Creating SMS_ORDER...
create table SMS_ORDER
(
  sms_order_id        VARCHAR2(32) default sys_guid() not null,
  message_content     VARCHAR2(1024) not null,
  user_id             VARCHAR2(32),
  full_name           VARCHAR2(20) not null,
  cell_phone          VARCHAR2(20) not null,
  create_time         DATE default sysdate not null,
  status              NUMBER(1) not null,
  issue_time          DATE,
  result_time         DATE,
  last_update_user_id VARCHAR2(32) not null,
  error_msg           VARCHAR2(500),
  src_id              VARCHAR2(32)
)
;
comment on table SMS_ORDER
  is '向责任人发布信息命令表';
comment on column SMS_ORDER.sms_order_id
  is '记录ID：使用UUID作为主键';
comment on column SMS_ORDER.message_content
  is '信息内容';
comment on column SMS_ORDER.user_id
  is '接收者ID';
comment on column SMS_ORDER.full_name
  is '接收者姓名';
comment on column SMS_ORDER.cell_phone
  is '移动电话';
comment on column SMS_ORDER.create_time
  is '命令创建时间';
comment on column SMS_ORDER.status
  is '命令执行状态，  0：创建未执行 1：执行中 2：执行成功   3：执行失败 ';
comment on column SMS_ORDER.issue_time
  is '命令执行时间';
comment on column SMS_ORDER.result_time
  is '收到执行结果时间';
comment on column SMS_ORDER.last_update_user_id
  is '最近修改人';
comment on column SMS_ORDER.error_msg
  is '执行失败原因';
comment on column SMS_ORDER.src_id
  is '来源ID';
alter table SMS_ORDER
  add constraint PK_SMS_ORDER primary key (SMS_ORDER_ID)
  ;

prompt Creating SMS_ORDER_2...
create table SMS_ORDER_2
(
  sms_order_id        VARCHAR2(32) not null,
  message_content     VARCHAR2(500) not null,
  user_id             VARCHAR2(32),
  full_name           VARCHAR2(20) not null,
  cell_phone          VARCHAR2(20) not null,
  create_time         DATE default sysdate not null,
  status              NUMBER(1) not null,
  issue_time          DATE,
  result_time         DATE,
  last_update_user_id VARCHAR2(32),
  error_msg           VARCHAR2(500),
  src_id              VARCHAR2(32)
)
;

prompt Creating SMS_USER_GROUP...
create table SMS_USER_GROUP
(
  user_group_id       VARCHAR2(32) default sys_guid() not null,
  group_id            VARCHAR2(32) not null,
  user_id             VARCHAR2(32) not null,
  last_update_time    DATE not null,
  last_update_user_id VARCHAR2(32) not null
)
;
comment on table SMS_USER_GROUP
  is '短信用户组表';
comment on column SMS_USER_GROUP.user_group_id
  is '用户短信组ID';
comment on column SMS_USER_GROUP.group_id
  is '短信组ID';
comment on column SMS_USER_GROUP.user_id
  is '用户ID';
comment on column SMS_USER_GROUP.last_update_time
  is '最近修改时间';
comment on column SMS_USER_GROUP.last_update_user_id
  is '最近修改人';
alter table SMS_USER_GROUP
  add constraint PK_SMS_USER_GROUP primary key (USER_GROUP_ID)
  ;

prompt Creating TA_SEGMENT...
create table TA_SEGMENT
(
  ta_segment_id   VARCHAR2(20) not null,
  ta_segment_name VARCHAR2(60) not null,
  road_segment_id VARCHAR2(12) not null,
  start_stub      NUMBER(10,3) not null,
  end_stub        NUMBER(10,3) not null,
  speed_limit     NUMBER(3) not null,
  threshold_1     NUMBER(3) not null,
  threshold_2     NUMBER(3) not null
)
;
comment on table TA_SEGMENT
  is '交通状态评价路段表';
comment on column TA_SEGMENT.ta_segment_id
  is '交通状态评价路段ID';
comment on column TA_SEGMENT.ta_segment_name
  is '交通状态评价路段名称';
comment on column TA_SEGMENT.road_segment_id
  is '所属路段';
comment on column TA_SEGMENT.start_stub
  is '起点桩号';
comment on column TA_SEGMENT.end_stub
  is '终点桩号';
comment on column TA_SEGMENT.speed_limit
  is '限制速度：单位：km/h，比如：120，80，60';
comment on column TA_SEGMENT.threshold_1
  is '畅通缓行门限：单位：km/h，比如： 65';
comment on column TA_SEGMENT.threshold_2
  is '缓行拥挤门限：单位：km/h，比如： 30';
alter table TA_SEGMENT
  add constraint TA_SEGMENT_PK primary key (TA_SEGMENT_ID)
  ;

prompt Creating TA_SEGMENT1...
create table TA_SEGMENT1
(
  ta_segment_id   VARCHAR2(20) not null,
  ta_segment_name VARCHAR2(60) not null,
  road_segment_id VARCHAR2(12) not null,
  start_stub      NUMBER(10,3) not null,
  end_stub        NUMBER(10,3) not null,
  speed_limit     NUMBER(3) not null,
  threshold_1     NUMBER(3) not null,
  threshold_2     NUMBER(3) not null
)
;

prompt Creating TA_SEGMENT_HISTORY_DATA...
create table TA_SEGMENT_HISTORY_DATA
(
  ta_segment_history_data_id VARCHAR2(32) default sys_guid() not null,
  ta_segment_id              VARCHAR2(20) not null,
  direction_id               NUMBER(1) not null,
  start_time                 DATE not null,
  end_time                   DATE not null,
  create_time                DATE not null,
  flow                       NUMBER(8) not null,
  speed                      NUMBER(5,2) not null,
  occupancy                  NUMBER(5,2) not null,
  traffic_status             NUMBER(1) not null,
  traffic_status_next        NUMBER(1),
  speed_next                 NUMBER(5,2)
)
;
comment on table TA_SEGMENT_HISTORY_DATA
  is '路段交通数据历史表';
comment on column TA_SEGMENT_HISTORY_DATA.ta_segment_history_data_id
  is '记录ID';
comment on column TA_SEGMENT_HISTORY_DATA.ta_segment_id
  is '交通状态评价路段ID';
comment on column TA_SEGMENT_HISTORY_DATA.direction_id
  is '方向';
comment on column TA_SEGMENT_HISTORY_DATA.start_time
  is '检测周期起始时间';
comment on column TA_SEGMENT_HISTORY_DATA.end_time
  is '检测周期终止时间';
comment on column TA_SEGMENT_HISTORY_DATA.create_time
  is '生成时间';
comment on column TA_SEGMENT_HISTORY_DATA.flow
  is '交通量';
comment on column TA_SEGMENT_HISTORY_DATA.speed
  is '平均速度';
comment on column TA_SEGMENT_HISTORY_DATA.occupancy
  is '占有率';
comment on column TA_SEGMENT_HISTORY_DATA.traffic_status
  is '实时交通状态';
comment on column TA_SEGMENT_HISTORY_DATA.traffic_status_next
  is '下一周期预测交通状态';
comment on column TA_SEGMENT_HISTORY_DATA.speed_next
  is '下一周期预测速度';
alter table TA_SEGMENT_HISTORY_DATA
  add constraint TA_SEGMENT_HISTORY_DATA_PK primary key (TA_SEGMENT_HISTORY_DATA_ID)
;

prompt Creating TA_SEGMENT_REAL_DATA...
create table TA_SEGMENT_REAL_DATA
(
  ta_segment_id           VARCHAR2(20) not null,
  direction_id            NUMBER(1) not null,
  start_time              DATE not null,
  end_time                DATE not null,
  create_time             DATE not null,
  flow                    NUMBER(8) not null,
  speed                   NUMBER(5,2) not null,
  occupancy               NUMBER(5,2) not null,
  traffic_status          NUMBER(1) not null,
  traffic_status_next     NUMBER(1),
  speed_next              NUMBER(5,2),
  ta_segment_real_data_id VARCHAR2(32) default sys_guid() not null
)
;
comment on table TA_SEGMENT_REAL_DATA
  is '路段交通数据实时表';
comment on column TA_SEGMENT_REAL_DATA.ta_segment_id
  is '交通状态评价路段ID';
comment on column TA_SEGMENT_REAL_DATA.direction_id
  is '方向';
comment on column TA_SEGMENT_REAL_DATA.start_time
  is '检测周期起始时间';
comment on column TA_SEGMENT_REAL_DATA.end_time
  is '检测周期终止时间';
comment on column TA_SEGMENT_REAL_DATA.create_time
  is '生成时间';
comment on column TA_SEGMENT_REAL_DATA.flow
  is '交通量';
comment on column TA_SEGMENT_REAL_DATA.speed
  is '平均速度';
comment on column TA_SEGMENT_REAL_DATA.occupancy
  is '占有率';
comment on column TA_SEGMENT_REAL_DATA.traffic_status
  is '实时交通状态';
comment on column TA_SEGMENT_REAL_DATA.traffic_status_next
  is '下一周期预测交通状态';
comment on column TA_SEGMENT_REAL_DATA.speed_next
  is '下一周期预测速度';
comment on column TA_SEGMENT_REAL_DATA.ta_segment_real_data_id
  is '记录ID';
alter table TA_SEGMENT_REAL_DATA
  add constraint TA_SEGMENT_REAL_DATA_PK primary key (TA_SEGMENT_REAL_DATA_ID)
  ;

prompt Creating TC_DEVICE_CONTROLZ...
create table TC_DEVICE_CONTROLZ
(
  tc_device_controlz_id VARCHAR2(32) default SYS_GUID() not null,
  order_type            NUMBER(1),
  user_id               VARCHAR2(32),
  create_time           DATE,
  order_status          NUMBER(1),
  order_result          NUMBER(1),
  begin_time            DATE,
  end_time              DATE,
  error_message         VARCHAR2(100)
)
;
comment on table TC_DEVICE_CONTROLZ
  is '隧道设备控制指令主表';
comment on column TC_DEVICE_CONTROLZ.tc_device_controlz_id
  is '记录ID';
comment on column TC_DEVICE_CONTROLZ.order_type
  is '指令类型:0、单设备';
comment on column TC_DEVICE_CONTROLZ.user_id
  is '命令创建人';
comment on column TC_DEVICE_CONTROLZ.create_time
  is '命令创建时间';
comment on column TC_DEVICE_CONTROLZ.order_status
  is '命令执行状态:0、命令创建状态；1、待执行状态；2、正在执行状态；3、执行结束状态';
comment on column TC_DEVICE_CONTROLZ.order_result
  is '命令执行结果';
comment on column TC_DEVICE_CONTROLZ.begin_time
  is '命令开始执行时间';
comment on column TC_DEVICE_CONTROLZ.end_time
  is '命令执行结束时间';
comment on column TC_DEVICE_CONTROLZ.error_message
  is '执行失败原因';
alter table TC_DEVICE_CONTROLZ
  add constraint PK_TC_DEVICE_CONTROLZ primary key (TC_DEVICE_CONTROLZ_ID)
  ;
 
prompt Creating TC_DEVICE_CONTROLF...
create table TC_DEVICE_CONTROLF
(
  tc_device_controlf_id VARCHAR2(32) default SYS_GUID() not null,
  tc_device_controlz_id VARCHAR2(32) not null,
  device_id             VARCHAR2(40) not null,
  order_type_id         VARCHAR2(10) not null,
  order_sequence        NUMBER(4) not null
)
;
comment on table TC_DEVICE_CONTROLF
  is '隧道设备控制指令副表';
comment on column TC_DEVICE_CONTROLF.tc_device_controlf_id
  is '记录ID';
comment on column TC_DEVICE_CONTROLF.tc_device_controlz_id
  is '主表记录ID';
comment on column TC_DEVICE_CONTROLF.device_id
  is '设备ID';
comment on column TC_DEVICE_CONTROLF.order_type_id
  is '设备指令';
comment on column TC_DEVICE_CONTROLF.order_sequence
  is '指令执行顺序号';
alter table TC_DEVICE_CONTROLF
  add constraint PK_TC_DEVICE_CONTROLF primary key (TC_DEVICE_CONTROLF_ID)
  ;
 

prompt Creating TK_CMS_CONTROL_SCOPE_TYPE...
create table TK_CMS_CONTROL_SCOPE_TYPE
(
  cms_control_scope_type_id   NUMBER(2) not null,
  cms_control_scope_type_desc VARCHAR2(80) not null
)
;
comment on table TK_CMS_CONTROL_SCOPE_TYPE
  is '情报板控制范围类型表';
comment on column TK_CMS_CONTROL_SCOPE_TYPE.cms_control_scope_type_id
  is '情报板控制范围类型代码';
comment on column TK_CMS_CONTROL_SCOPE_TYPE.cms_control_scope_type_desc
  is '情报板控制范围类型描述';
alter table TK_CMS_CONTROL_SCOPE_TYPE
  add constraint PK_TK_CMS_CONTROL_SCOPE_TYPE primary key (CMS_CONTROL_SCOPE_TYPE_ID)
  ;

prompt Creating TK_CMS_ISSUE_PLAN_ACTION...
create table TK_CMS_ISSUE_PLAN_ACTION
(
  cms_issue_plan_action_id  VARCHAR2(32) default sys_guid() not null,
  action_desc               VARCHAR2(500),
  plan_action_type_id       CHAR(3),
  record_type               NUMBER(1) not null,
  control_type              NUMBER(1) not null,
  cms_control_scope_type_id NUMBER(2),
  rel_control_scope_n       NUMBER(3),
  jk_cms_pre_groupz_id      VARCHAR2(32),
  last_update_time          DATE not null,
  user_id                   VARCHAR2(32) not null,
  road_id                   VARCHAR2(20),
  lock_level                NUMBER(1),
  lock_type                 NUMBER(1) default 0 not null,
  lock_time_long            NUMBER(3),
  lock_time_type            NUMBER(1),
  unlock_time               DATE
)
;
comment on table TK_CMS_ISSUE_PLAN_ACTION
  is '通过情报板发布信息预案动作表';
comment on column TK_CMS_ISSUE_PLAN_ACTION.cms_issue_plan_action_id
  is '记录ID：使用UUID作为主键';
comment on column TK_CMS_ISSUE_PLAN_ACTION.action_desc
  is '描述';
comment on column TK_CMS_ISSUE_PLAN_ACTION.plan_action_type_id
  is '动作类型ID';
comment on column TK_CMS_ISSUE_PLAN_ACTION.record_type
  is '记录类型：1：通过情报板发布交通控制信息  2：通过情报板发布交通诱导信息';
comment on column TK_CMS_ISSUE_PLAN_ACTION.control_type
  is '控制类型：1：绝对控制，直接指定情报板的设备编号  2：相对控制，指定情报板与事件点的相对关系';
comment on column TK_CMS_ISSUE_PLAN_ACTION.cms_control_scope_type_id
  is '情报板控制范围类型代码';
comment on column TK_CMS_ISSUE_PLAN_ACTION.rel_control_scope_n
  is '相对控制范围中的N值。当CONTROL_TYPE=2时有效';
comment on column TK_CMS_ISSUE_PLAN_ACTION.jk_cms_pre_groupz_id
  is '预置播放条目组ID';
comment on column TK_CMS_ISSUE_PLAN_ACTION.last_update_time
  is '最近修改时间';
comment on column TK_CMS_ISSUE_PLAN_ACTION.user_id
  is '最近修改人';
comment on column TK_CMS_ISSUE_PLAN_ACTION.road_id
  is '适用路段';
alter table TK_CMS_ISSUE_PLAN_ACTION
  add constraint PK_TK_CMS_ISSUE_PLAN_ACTION primary key (CMS_ISSUE_PLAN_ACTION_ID)
  ;

prompt Creating TK_CMS_ISSUE_PLAN_ACTIONF...
create table TK_CMS_ISSUE_PLAN_ACTIONF
(
  cms_issue_plan_actionf_id VARCHAR2(32) default sys_guid() not null,
  cms_issue_plan_action_id  VARCHAR2(32) default sys_guid() not null,
  action_desc               VARCHAR2(500),
  plan_action_type_id       CHAR(3),
  device_id                 VARCHAR2(40),
  jk_cms_pre_groupz_id      VARCHAR2(32),
  last_update_time          DATE not null,
  user_id                   VARCHAR2(32)
)
;
comment on table TK_CMS_ISSUE_PLAN_ACTIONF
  is '通过情报板发布信息预案动作表';
comment on column TK_CMS_ISSUE_PLAN_ACTIONF.cms_issue_plan_actionf_id
  is '记录ID：使用UUID作为主键';
comment on column TK_CMS_ISSUE_PLAN_ACTIONF.action_desc
  is '描述';
comment on column TK_CMS_ISSUE_PLAN_ACTIONF.plan_action_type_id
  is '动作类型ID';
comment on column TK_CMS_ISSUE_PLAN_ACTIONF.device_id
  is '情报部的设备编号。当CONTROL_TYPE=1时有效';
comment on column TK_CMS_ISSUE_PLAN_ACTIONF.jk_cms_pre_groupz_id
  is '预置播放条目组ID';
comment on column TK_CMS_ISSUE_PLAN_ACTIONF.last_update_time
  is '最近修改时间';
comment on column TK_CMS_ISSUE_PLAN_ACTIONF.user_id
  is '最近修改人';
alter table TK_CMS_ISSUE_PLAN_ACTIONF
  add constraint PK_TK_CMS_ISSUE_PLAN_ACTIONF primary key (CMS_ISSUE_PLAN_ACTIONF_ID)
  ;

prompt Creating TK_CMS_ISSUE_PLAN_ORDER...
create table TK_CMS_ISSUE_PLAN_ORDER
(
  cms_issue_plan_order_id VARCHAR2(32) default sys_guid() not null,
  deal_plan_order_unit_id VARCHAR2(32) not null,
  device_id               VARCHAR2(40) not null,
  message_content         VARCHAR2(500) not null,
  create_time             DATE not null,
  status                  NUMBER(1) not null,
  issue_time              DATE,
  result_time             DATE,
  jk_cms_pre_groupz_id    VARCHAR2(32),
  jk_cms_control_id       VARCHAR2(32),
  lock_level              NUMBER(1),
  lock_type               NUMBER(1) default 0 not null,
  lock_time_long          NUMBER(3),
  lock_time_type          NUMBER(1),
  unlock_time             DATE
)
;
comment on table TK_CMS_ISSUE_PLAN_ORDER
  is '向情报板发布信息命令表';
comment on column TK_CMS_ISSUE_PLAN_ORDER.cms_issue_plan_order_id
  is '记录ID：使用UUID作为主键';
comment on column TK_CMS_ISSUE_PLAN_ORDER.deal_plan_order_unit_id
  is '处置方案命令单元ID';
comment on column TK_CMS_ISSUE_PLAN_ORDER.device_id
  is '情报板设备编号';
comment on column TK_CMS_ISSUE_PLAN_ORDER.message_content
  is '信息内容';
comment on column TK_CMS_ISSUE_PLAN_ORDER.create_time
  is '命令创建时间';
comment on column TK_CMS_ISSUE_PLAN_ORDER.status
  is '执行状态：0：未执行  1：命令已执行，但未收到执行结果  2：执行成功  3：执行失败';
comment on column TK_CMS_ISSUE_PLAN_ORDER.issue_time
  is '命令执行时间';
comment on column TK_CMS_ISSUE_PLAN_ORDER.result_time
  is '收到执行结果时间';
comment on column TK_CMS_ISSUE_PLAN_ORDER.jk_cms_pre_groupz_id
  is '关联条目组ID';
comment on column TK_CMS_ISSUE_PLAN_ORDER.jk_cms_control_id
  is '关联播放指令表ID';
alter table TK_CMS_ISSUE_PLAN_ORDER
  add constraint PK_TK_CMS_ISSUE_PLAN_ORDER primary key (CMS_ISSUE_PLAN_ORDER_ID)
  ;

prompt Creating TK_DEAL_PLAN...
create table TK_DEAL_PLAN
(
  deal_plan_id     VARCHAR2(32) default sys_guid() not null,
  plan_id          VARCHAR2(20),
  event_id         VARCHAR2(32) default sys_guid() not null,
  last_update_time DATE not null,
  user_id          VARCHAR2(32)
)
;
comment on table TK_DEAL_PLAN
  is '处置方案主表';
comment on column TK_DEAL_PLAN.deal_plan_id
  is '处置方案ID：使用UUID作为主键';
comment on column TK_DEAL_PLAN.plan_id
  is '所处理的预案ID';
comment on column TK_DEAL_PLAN.event_id
  is '记录ID';
comment on column TK_DEAL_PLAN.last_update_time
  is '最近修改时间';
comment on column TK_DEAL_PLAN.user_id
  is '最近修改人';
alter table TK_DEAL_PLAN
  add constraint PK_TK_DEAL_PLAN primary key (DEAL_PLAN_ID)
  ;

prompt Creating TK_DEAL_PLAN_ORDER_UNIT...
create table TK_DEAL_PLAN_ORDER_UNIT
(
  deal_plan_order_unit_id VARCHAR2(32) default sys_guid() not null,
  deal_plan_step_id       VARCHAR2(32) not null,
  deal_plan_id            VARCHAR2(32) not null,
  action_id               VARCHAR2(32),
  action_no               NUMBER(3),
  action_desc             VARCHAR2(500),
  plan_action_type_id     CHAR(3) not null,
  order_status            NUMBER(1),
  last_update_time        DATE not null,
  user_id                 VARCHAR2(32)
)
;
comment on table TK_DEAL_PLAN_ORDER_UNIT
  is '处置方案命令单元表';
comment on column TK_DEAL_PLAN_ORDER_UNIT.deal_plan_order_unit_id
  is '处置方案命令单元ID：使用UUID作为主键';
comment on column TK_DEAL_PLAN_ORDER_UNIT.deal_plan_step_id
  is '处置方案步骤ID';
comment on column TK_DEAL_PLAN_ORDER_UNIT.deal_plan_id
  is '处置方案ID';
comment on column TK_DEAL_PLAN_ORDER_UNIT.action_id
  is '处置方案步骤ID';
comment on column TK_DEAL_PLAN_ORDER_UNIT.action_no
  is '步骤号：1，2，3，……';
comment on column TK_DEAL_PLAN_ORDER_UNIT.action_desc
  is '处置方案命令单元描述';
comment on column TK_DEAL_PLAN_ORDER_UNIT.plan_action_type_id
  is '预案动作类型';
comment on column TK_DEAL_PLAN_ORDER_UNIT.order_status
  is '命令执行状态：0：未执行  1：命令已执行，但未收到执行结果  2：执行成功  3：执行失败';
comment on column TK_DEAL_PLAN_ORDER_UNIT.last_update_time
  is '最近修改时间';
comment on column TK_DEAL_PLAN_ORDER_UNIT.user_id
  is '最近修改人';
alter table TK_DEAL_PLAN_ORDER_UNIT
  add constraint PK_TK_DEAL_PLAN_ORDER_UNIT primary key (DEAL_PLAN_ORDER_UNIT_ID)
  ;

prompt Creating TK_DEAL_PLAN_STEP...
create table TK_DEAL_PLAN_STEP
(
  deal_plan_step_id   VARCHAR2(32) default sys_guid() not null,
  deal_plan_id        VARCHAR2(32) not null,
  plan_step_id        VARCHAR2(32),
  step_no             NUMBER(3) not null,
  step_desc           VARCHAR2(500) not null,
  step_status         NUMBER(1) not null,
  plan_action_type_id CHAR(3) not null,
  last_update_time    DATE not null,
  user_id             VARCHAR2(32)
)
;
comment on table TK_DEAL_PLAN_STEP
  is '处置方案步骤表';
comment on column TK_DEAL_PLAN_STEP.deal_plan_step_id
  is '处置方案步骤ID：使用UUID作为主键';
comment on column TK_DEAL_PLAN_STEP.deal_plan_id
  is '处置方案ID';
comment on column TK_DEAL_PLAN_STEP.plan_step_id
  is '对应的预案步骤ID';
comment on column TK_DEAL_PLAN_STEP.step_no
  is '步骤号：1，2，3，……';
comment on column TK_DEAL_PLAN_STEP.step_desc
  is '步骤描述';
comment on column TK_DEAL_PLAN_STEP.step_status
  is '步骤执行状态  0：未执行
1：已执行';
comment on column TK_DEAL_PLAN_STEP.plan_action_type_id
  is '预案动作类型';
comment on column TK_DEAL_PLAN_STEP.last_update_time
  is '最近修改时间';
comment on column TK_DEAL_PLAN_STEP.user_id
  is '最近修改人';
alter table TK_DEAL_PLAN_STEP
  add constraint PK_TK_DEAL_PLAN_STEP primary key (DEAL_PLAN_STEP_ID)
  ;

prompt Creating TK_EVENT...
create table TK_EVENT
(
  event_id                     VARCHAR2(32) default sys_guid() not null,
  road_segment_id              VARCHAR2(12),
  position                     VARCHAR2(500) not null,
  start_stub                   NUMBER(10,3),
  end_stub                     NUMBER(10,3),
  district_id                  CHAR(6),
  organization_id              VARCHAR2(20),
  person                       VARCHAR2(50) not null,
  telephone                    VARCHAR2(20),
  discovery_time               DATE not null,
  calculate_time               NUMBER(4,1),
  accident_des                 VARCHAR2(500),
  event_type_id                VARCHAR2(8) not null,
  dealing_desc                 VARCHAR2(2000),
  roadbed_loss_num             NUMBER(6),
  roadbed_loss_mon             NUMBER(5),
  surface_loss_num             NUMBER(6),
  surface_loss_mon             NUMBER(5),
  bridge_loss_num              NUMBER(6),
  bridge_loss_mon              NUMBER(5),
  culvert_loss_num             NUMBER(6),
  culvert_loss_mon             NUMBER(5),
  security_loss_num            NUMBER(6),
  security_loss_mon            NUMBER(5),
  other_loss_num               NUMBER(6),
  other_loss_mon               NUMBER(5),
  sum_loss_mon                 NUMBER(6),
  injuries_num                 NUMBER(3),
  death_num                    NUMBER(3),
  crowds_num                   NUMBER(3),
  car_destroy_num              NUMBER(3),
  car_detention_num            NUMBER(3),
  reality_recover_time         DATE,
  direction_id                 NUMBER(2) not null,
  collect_type                 NUMBER(1) not null,
  enter_user_id                VARCHAR2(50),
  create_time                  DATE default SYSDATE,
  alarm_level_id               NUMBER(1),
  data_exchanger_id            VARCHAR2(22),
  queue_length                 NUMBER(3,1) default 0,
  event_traffic_status_id      NUMBER(1),
  fire_level                   NUMBER(1),
  dangerous_leakage_level      NUMBER(1),
  queue_level                  NUMBER(1),
  backbone_structure_des_leve  NUMBER(1),
  accessory_device_des_level   NUMBER(1),
  accessory_pipeline_des_level NUMBER(1),
  casualty_level               NUMBER(1),
  special_position             NUMBER(1) default 0,
  order_status                 NUMBER(1) default 0,
  order_time                   DATE,
  stub                         VARCHAR2(100),
  audit_time                   DATE,
  information_type             VARCHAR2(10),
  information_reason           VARCHAR2(10),
  old_accident_des             VARCHAR2(500),
  is_other_provinces           NUMBER(1),
  lane_no                      NUMBER(1),
  detail_id                    VARCHAR2(32),
  detail_type                  NUMBER(1),
  current_status               NUMBER(1) default 0 not null,
  deal_user_id                 VARCHAR2(32),
  start_deal_time              DATE,
  end_deal_time                DATE,
  summarize                    VARCHAR2(500),
  plan_id                      VARCHAR2(20)
)
;
comment on table TK_EVENT
  is '报警（事故）信息表';
comment on column TK_EVENT.event_id
  is '记录ID';
comment on column TK_EVENT.road_segment_id
  is '路段编号';
comment on column TK_EVENT.position
  is '阻断（事件）位置：阻断（事件）发生的具体路段名、桥名、隧道名或附近有命名编号的主要设施名称，如“宜章段曹田桥”、“宜章收费站”';
comment on column TK_EVENT.start_stub
  is '起始桩号';
comment on column TK_EVENT.end_stub
  is '终止桩号';
comment on column TK_EVENT.district_id
  is '行政区划编码：阻断（事故）发生路段所在市、区（县）最新行政区划代码';
comment on column TK_EVENT.organization_id
  is '管理单位。要求所有的管理机构都应设置为“路段管理处”等管理机构';
comment on column TK_EVENT.person
  is '填报人';
comment on column TK_EVENT.telephone
  is '联系电话';
comment on column TK_EVENT.discovery_time
  is '发现时间';
comment on column TK_EVENT.calculate_time
  is '单位：小时。预计恢复时间';
comment on column TK_EVENT.accident_des
  is '现场情况描述：包括阻断（事件）发生时间、发生过程、影响范围、发展趋势。';
comment on column TK_EVENT.event_type_id
  is '事故类型';
comment on column TK_EVENT.dealing_desc
  is '处置措施：包括抢通方案、疏散方案、绕行方案三方面，由于计划性事件引起的交通阻断，只填写绕行方案；由于突发性事件致使公路设施毁坏引起的交通阻断，必须填写抢通方案和绕行方案；事发现场出现大量车辆或人员积聚，或因危险品泄漏等原因会给经过车辆和人员造成危险的，必须填写疏散方案。';
comment on column TK_EVENT.roadbed_loss_num
  is '路基损失数量：单位：m3/Km';
comment on column TK_EVENT.roadbed_loss_mon
  is '路基损失金额：单位：万元';
comment on column TK_EVENT.surface_loss_num
  is '路面损失数量：单位：m2/Km';
comment on column TK_EVENT.surface_loss_mon
  is '路面损失金额：单位：万元';
comment on column TK_EVENT.bridge_loss_num
  is '桥梁损失数量：单位：延米/座';
comment on column TK_EVENT.bridge_loss_mon
  is '桥梁损失金额：单位：万元';
comment on column TK_EVENT.culvert_loss_num
  is '涵洞损失数量：单位：道';
comment on column TK_EVENT.culvert_loss_mon
  is '涵洞损失金额：单位：万元';
comment on column TK_EVENT.security_loss_num
  is '防护工程损失数量：单位：m3';
comment on column TK_EVENT.security_loss_mon
  is '防护工程损失金额：单位：万元';
comment on column TK_EVENT.other_loss_num
  is '其它路产损失数量';
comment on column TK_EVENT.other_loss_mon
  is '其它路产损失金额：单位：万元';
comment on column TK_EVENT.sum_loss_mon
  is '累计损失金额：单位：万元';
comment on column TK_EVENT.injuries_num
  is '受伤人数：人';
comment on column TK_EVENT.death_num
  is '死亡人数：人';
comment on column TK_EVENT.crowds_num
  is '聚众人数：人';
comment on column TK_EVENT.car_destroy_num
  is '毁坏车辆数：辆';
comment on column TK_EVENT.car_detention_num
  is '滞留车辆数：辆';
comment on column TK_EVENT.reality_recover_time
  is '实际恢复通车事件';
comment on column TK_EVENT.direction_id
  is '事故发生方向';
comment on column TK_EVENT.collect_type
  is '1:数据交换2：人工录入';
comment on column TK_EVENT.enter_user_id
  is '人工录入用户';
comment on column TK_EVENT.create_time
  is '数据更新时间';
comment on column TK_EVENT.alarm_level_id
  is '报警（事故）级别';
comment on column TK_EVENT.data_exchanger_id
  is '数据交换参与者代码';
comment on column TK_EVENT.queue_length
  is '排队长度,单位为：公里';
comment on column TK_EVENT.event_traffic_status_id
  is '阻断情况';
comment on column TK_EVENT.fire_level
  is '火灾级别';
comment on column TK_EVENT.dangerous_leakage_level
  is '危险品泄漏级别';
comment on column TK_EVENT.queue_level
  is '排队级别';
comment on column TK_EVENT.backbone_structure_des_leve
  is '道路主体机构损坏级别';
comment on column TK_EVENT.accessory_device_des_level
  is '附属设施损坏级别';
comment on column TK_EVENT.accessory_pipeline_des_level
  is '附属管线损坏级别';
comment on column TK_EVENT.casualty_level
  is '人员伤亡级别';
comment on column TK_EVENT.special_position
  is '扩展信息类型（是否特殊位置？）：0、无扩展信息（非特殊位置，指在主线上）；>=1、有扩展信息。具体含义：1、特殊位置；2、区域性事件，影响范围为多路段。';
comment on column TK_EVENT.order_status
  is '上传标志。0：未上传；1：正在上传；2：上传成功；3：上传失败；9：准备上传';
comment on column TK_EVENT.order_time
  is '上传时间';
comment on column TK_EVENT.stub
  is '桩号范围：可输入多段桩号范围';
comment on column TK_EVENT.audit_time
  is '审核时间';
comment on column TK_EVENT.information_type
  is '信息类型：1，交通管制 2，交通事故 3，拥堵信息 4，施工信息 0，正常信息';
comment on column TK_EVENT.information_reason
  is '路况原因：(当INFORMATION_TYPE=1或3时有意义)1，恶劣天气 2，交警管制 3，事故管制 4，道路施工 5，车流量大 6，车辆故障 7，突发事件 8，设备故障';
comment on column TK_EVENT.old_accident_des
  is '路段上报原稿';
comment on column TK_EVENT.is_other_provinces
  is '是否为外省所致：0，否 1，是';
comment on column TK_EVENT.lane_no
  is '事故车道：从同方向最左侧车道（超车道）以1开始编号，若为 0 则不分车道；';
comment on column TK_EVENT.detail_id
  is '关联的实际事件ID';
comment on column TK_EVENT.detail_type
  is '关联的实际事件类型';
comment on column TK_EVENT.current_status
  is '当前状态：取值：  0:尚未处理  1:正在处理  2:处理结束';
comment on column TK_EVENT.deal_user_id
  is '事件处理用户';
comment on column TK_EVENT.start_deal_time
  is '事件处理开始时间';
comment on column TK_EVENT.end_deal_time
  is '事件处理结束时间';
comment on column TK_EVENT.summarize
  is '处理总结';
comment on column TK_EVENT.plan_id
  is '预案ID';
create index IND_ALARM_DISCOVERY_TIME on TK_EVENT (DISCOVERY_TIME)
 ;
create index IND_ALARM_EVENT on TK_EVENT (EVENT_TYPE_ID)
 ;
create index IND_ALARM_ROAD_SEGMENT_ID on TK_EVENT (ROAD_SEGMENT_ID)
 ;
alter table TK_EVENT
  add constraint PK_TK_EVENT primary key (EVENT_ID)
  ;

prompt Creating TK_EVENT_F...
create table TK_EVENT_F
(
  event_f_id            VARCHAR2(32) default sys_guid() not null,
  event_id              VARCHAR2(32) not null,
  special_position_type NUMBER(2) default 1 not null,
  position_id           VARCHAR2(20) not null
)
;
comment on table TK_EVENT_F
  is '报警（事故）信息副表';
comment on column TK_EVENT_F.event_f_id
  is '记录ID';
comment on column TK_EVENT_F.event_id
  is '主表ID';
comment on column TK_EVENT_F.special_position_type
  is '信息类型：1、特殊位置为机构；2、路段。';
comment on column TK_EVENT_F.position_id
  is '位置ID：special_position_type为1时，为机构代码，关联dm_organization表；为2时，为路段代码，关联dm_road_segment表。';
alter table TK_EVENT_F
  add constraint PK_TK_EVENT_F primary key (EVENT_F_ID)
  ;

prompt Creating TK_EVENT_INFO_TPL...
create table TK_EVENT_INFO_TPL
(
  event_info_tpl_id   VARCHAR2(32) default sys_guid() not null,
  event_info_tpl      VARCHAR2(500) not null,
  user_id             VARCHAR2(32) not null,
  last_update_time    DATE not null,
  event_info_tpl_name VARCHAR2(100) not null
)
;
comment on table TK_EVENT_INFO_TPL
  is '事件信息模板表';
comment on column TK_EVENT_INFO_TPL.event_info_tpl_id
  is '模板代码';
comment on column TK_EVENT_INFO_TPL.event_info_tpl
  is '模板信息：给出各类事件信息模板的形式化描述';
comment on column TK_EVENT_INFO_TPL.user_id
  is '最近录入或修改人员';
comment on column TK_EVENT_INFO_TPL.last_update_time
  is '最近修改时间';
comment on column TK_EVENT_INFO_TPL.event_info_tpl_name
  is '模板名称';
alter table TK_EVENT_INFO_TPL
  add constraint PK_TK_EVENT_INFO_TPL primary key (EVENT_INFO_TPL_ID)
  ;

prompt Creating TK_FOG_CONTROL_SCOPE_TYPE...
create table TK_FOG_CONTROL_SCOPE_TYPE
(
  fog_control_scope_type_id   NUMBER(2) not null,
  fog_control_scope_type_desc VARCHAR2(80) not null
)
;
comment on table TK_FOG_CONTROL_SCOPE_TYPE
  is '雾气控制范围类型表';
comment on column TK_FOG_CONTROL_SCOPE_TYPE.fog_control_scope_type_id
  is '雾气控制范围类型代码';
comment on column TK_FOG_CONTROL_SCOPE_TYPE.fog_control_scope_type_desc
  is '雾气控制范围类型描述';
alter table TK_FOG_CONTROL_SCOPE_TYPE
  add constraint PK_TK_FOG_CONTROL_SCOPE_TYPE primary key (FOG_CONTROL_SCOPE_TYPE_ID)
  ;

prompt Creating TK_FOG_PLAN_ACTION...
create table TK_FOG_PLAN_ACTION
(
  fog_plan_action_id        VARCHAR2(32) default sys_guid() not null,
  action_desc               VARCHAR2(500),
  plan_action_type_id       CHAR(3),
  control_type              NUMBER(1) not null,
  organization_id           VARCHAR2(32),
  fog_control_scope_type_id NUMBER(2) not null,
  rel_control_scopen        NUMBER(3),
  yellow_light_frequency    NUMBER(1) default 3,
  yellow_light_brightness   NUMBER(2) default 5,
  red_light_frequency       NUMBER(1) default 3,
  red_light_brightness      NUMBER(2) default 5,
  sensor_status             NUMBER(1) default 1,
  wake_num                  NUMBER(1),
  wake_time                 NUMBER(1),
  last_update_time          DATE not null,
  user_id                   VARCHAR2(32)
)
;
comment on table TK_FOG_PLAN_ACTION
  is '雾气动作表';
comment on column TK_FOG_PLAN_ACTION.fog_plan_action_id
  is '主键ID';
comment on column TK_FOG_PLAN_ACTION.action_desc
  is '描述';
comment on column TK_FOG_PLAN_ACTION.plan_action_type_id
  is '动作类型ID';
comment on column TK_FOG_PLAN_ACTION.control_type
  is '控制类型：2相对控制';
comment on column TK_FOG_PLAN_ACTION.fog_control_scope_type_id
  is '控制范围类型：当ControlType=2时有效';
comment on column TK_FOG_PLAN_ACTION.rel_control_scopen
  is '相对控制范围中的N值：当ControlType=2时有效';
comment on column TK_FOG_PLAN_ACTION.yellow_light_frequency
  is '黄灯频率, 0: 关闭，1: 常亮，2: 30次/分钟，3: 60次/分钟，4: 120次/分钟，其它值无效';
comment on column TK_FOG_PLAN_ACTION.yellow_light_brightness
  is '黄灯亮度:1—10';
comment on column TK_FOG_PLAN_ACTION.red_light_frequency
  is '红灯频率 ,0: 关闭，1: 常亮，2: 30次/分钟，3: 60次/分钟，4: 120次/分钟，其它值无效';
comment on column TK_FOG_PLAN_ACTION.red_light_brightness
  is '红灯亮度:1—10';
comment on column TK_FOG_PLAN_ACTION.sensor_status
  is '车检器状态,0：关闭，1：开启';
comment on column TK_FOG_PLAN_ACTION.wake_num
  is '尾迹组数';
comment on column TK_FOG_PLAN_ACTION.wake_time
  is '尾迹时间';
comment on column TK_FOG_PLAN_ACTION.last_update_time
  is '最近修改时间';
comment on column TK_FOG_PLAN_ACTION.user_id
  is '最近修改人';
alter table TK_FOG_PLAN_ACTION
  add constraint PK_TK_FOG_PLAN_ACTION primary key (FOG_PLAN_ACTION_ID)
  ;

prompt Creating TK_FOG_PLAN_ORDER...
create table TK_FOG_PLAN_ORDER
(
  fog_plan_order_id       VARCHAR2(32) default sys_guid() not null,
  deal_plan_order_unit_id VARCHAR2(32) not null,
  device_id               VARCHAR2(40) not null,
  create_time             DATE not null,
  status                  NUMBER(1) not null,
  issue_time              DATE,
  result_time             DATE,
  user_name               VARCHAR2(12),
  yellow_light_frequency  NUMBER(1) default 3,
  yellow_light_brightness NUMBER(2) default 5,
  red_light_frequency     NUMBER(1) default 3,
  red_light_brightness    NUMBER(2) default 5,
  sensor_status           NUMBER(1) default 1,
  wake_num                NUMBER(1),
  wake_time               NUMBER(1)
)
;
comment on table TK_FOG_PLAN_ORDER
  is '向雾气发送控制命令表';
comment on column TK_FOG_PLAN_ORDER.fog_plan_order_id
  is '记录ID：使用UUID作为主键';
comment on column TK_FOG_PLAN_ORDER.deal_plan_order_unit_id
  is '处置方案命令单元ID';
comment on column TK_FOG_PLAN_ORDER.device_id
  is '设备编号';
comment on column TK_FOG_PLAN_ORDER.create_time
  is '命令创建时间';
comment on column TK_FOG_PLAN_ORDER.status
  is '执行状态：0：未执行  1：命令已执行，但未收到执行结果  2：执行成功  3：执行失败';
comment on column TK_FOG_PLAN_ORDER.issue_time
  is '命令执行时间';
comment on column TK_FOG_PLAN_ORDER.result_time
  is '收到执行结果时间';
comment on column TK_FOG_PLAN_ORDER.user_name
  is '收费站命令执行者';
comment on column TK_FOG_PLAN_ORDER.yellow_light_frequency
  is '黄灯频率, 0: 关闭，1: 常亮，2: 30次/分钟，3: 60次/分钟，4: 120次/分钟，其它值无效';
comment on column TK_FOG_PLAN_ORDER.yellow_light_brightness
  is '黄灯亮度:1—10';
comment on column TK_FOG_PLAN_ORDER.red_light_frequency
  is '红灯频率 ,0: 关闭，1: 常亮，2: 30次/分钟，3: 60次/分钟，4: 120次/分钟，其它值无效';
comment on column TK_FOG_PLAN_ORDER.red_light_brightness
  is '红灯亮度:1—10';
comment on column TK_FOG_PLAN_ORDER.sensor_status
  is '车检器状态,0：关闭，1：开启';
comment on column TK_FOG_PLAN_ORDER.wake_num
  is '尾迹组数';
comment on column TK_FOG_PLAN_ORDER.wake_time
  is '尾迹时间';
alter table TK_FOG_PLAN_ORDER
  add constraint PK_TK_FOG_PLAN_ORDER primary key (FOG_PLAN_ORDER_ID)
  ;

prompt Creating TK_LIGHT_PLAN_ACTION...
create table TK_LIGHT_PLAN_ACTION
(
  light_plan_action_id VARCHAR2(32) default sys_guid() not null,
  action_desc          VARCHAR2(500),
  plan_action_type_id  CHAR(3),
  ip                   VARCHAR2(32),
  port                 NUMBER(5) not null,
  time                 NUMBER(3),
  comm                 VARCHAR2(20),
  last_update_time     DATE not null,
  user_id              VARCHAR2(32)
)
;
comment on table TK_LIGHT_PLAN_ACTION
  is '声光动作表';
comment on column TK_LIGHT_PLAN_ACTION.light_plan_action_id
  is '主键ID';
comment on column TK_LIGHT_PLAN_ACTION.action_desc
  is '描述';
comment on column TK_LIGHT_PLAN_ACTION.plan_action_type_id
  is '动作类型ID';
comment on column TK_LIGHT_PLAN_ACTION.ip
  is 'IP地址';
comment on column TK_LIGHT_PLAN_ACTION.port
  is '端口';
comment on column TK_LIGHT_PLAN_ACTION.time
  is '持续时间（单位：秒）';
comment on column TK_LIGHT_PLAN_ACTION.comm
  is '声光设备标识';
comment on column TK_LIGHT_PLAN_ACTION.last_update_time
  is '最近修改时间';
comment on column TK_LIGHT_PLAN_ACTION.user_id
  is '最近修改人';
alter table TK_LIGHT_PLAN_ACTION
  add constraint PK_TK_LIGHT_PLAN_ACTION primary key (LIGHT_PLAN_ACTION_ID)
  ;

prompt Creating TK_LIGHT_PLAN_ORDER...
create table TK_LIGHT_PLAN_ORDER
(
  light_plan_order_id     VARCHAR2(32) default sys_guid() not null,
  deal_plan_order_unit_id VARCHAR2(32) not null,
  create_time             DATE not null,
  status                  NUMBER(1) not null,
  issue_time              DATE,
  result_time             DATE,
  ip                      VARCHAR2(32) not null,
  port                    NUMBER(5) not null,
  time                    NUMBER(3) not null,
  comm                    VARCHAR2(20) not null
)
;
comment on table TK_LIGHT_PLAN_ORDER
  is '向声光发送控制命令表';
comment on column TK_LIGHT_PLAN_ORDER.light_plan_order_id
  is '记录ID：使用UUID作为主键';
comment on column TK_LIGHT_PLAN_ORDER.deal_plan_order_unit_id
  is '处置方案命令单元ID';
comment on column TK_LIGHT_PLAN_ORDER.create_time
  is '命令创建时间';
comment on column TK_LIGHT_PLAN_ORDER.status
  is '执行状态：0：未执行  1：命令已执行，但未收到执行结果  2：执行成功  3：执行失败';
comment on column TK_LIGHT_PLAN_ORDER.issue_time
  is '命令执行时间';
comment on column TK_LIGHT_PLAN_ORDER.result_time
  is '收到执行结果时间';
comment on column TK_LIGHT_PLAN_ORDER.ip
  is 'IP地址';
comment on column TK_LIGHT_PLAN_ORDER.port
  is '端口';
comment on column TK_LIGHT_PLAN_ORDER.time
  is '持续时间（单位：秒）';
comment on column TK_LIGHT_PLAN_ORDER.comm
  is '声光设备标识';
alter table TK_LIGHT_PLAN_ORDER
  add constraint PK_TK_LIGHT_PLAN_ORDER primary key (LIGHT_PLAN_ORDER_ID)
  ;

prompt Creating TK_MAN_ISSUE_PLAN_ACTION...
create table TK_MAN_ISSUE_PLAN_ACTION
(
  man_issue_plan_action_id VARCHAR2(32) default sys_guid() not null,
  action_desc              VARCHAR2(500),
  plan_action_type_id      CHAR(3),
  message_issue_type       NUMBER(1) not null,
  control_type             NUMBER(1) not null,
  org_type_id              NUMBER(2),
  event_info_tpl_id        VARCHAR2(32),
  staff_duty_id            VARCHAR2(32),
  user_id                  VARCHAR2(32) not null,
  last_update_time         DATE not null
)
;
comment on table TK_MAN_ISSUE_PLAN_ACTION
  is '向责任人发布信息预案动作表';
comment on column TK_MAN_ISSUE_PLAN_ACTION.man_issue_plan_action_id
  is '记录ID：使用UUID作为主键';
comment on column TK_MAN_ISSUE_PLAN_ACTION.action_desc
  is '描述';
comment on column TK_MAN_ISSUE_PLAN_ACTION.plan_action_type_id
  is '动作类型ID';
comment on column TK_MAN_ISSUE_PLAN_ACTION.message_issue_type
  is '信息发布方式 1:通过短信平台发布';
comment on column TK_MAN_ISSUE_PLAN_ACTION.control_type
  is '控制类型：0静态方式。1：分中心动态方式';
comment on column TK_MAN_ISSUE_PLAN_ACTION.org_type_id
  is '责任人所属机构类型。参照DM_ORG_TYPE';
comment on column TK_MAN_ISSUE_PLAN_ACTION.event_info_tpl_id
  is '模板代码';
comment on column TK_MAN_ISSUE_PLAN_ACTION.staff_duty_id
  is '人员职务编码';
comment on column TK_MAN_ISSUE_PLAN_ACTION.user_id
  is '最近修改人';
comment on column TK_MAN_ISSUE_PLAN_ACTION.last_update_time
  is '最近修改时间';
alter table TK_MAN_ISSUE_PLAN_ACTION
  add constraint PK_TK_MAN_ISSUE_PLAN_ACTION primary key (MAN_ISSUE_PLAN_ACTION_ID)
  ;

prompt Creating TK_MAN_ISSUE_PLAN_ACTIONF...
create table TK_MAN_ISSUE_PLAN_ACTIONF
(
  man_issue_plan_actionf_id VARCHAR2(32) default sys_guid() not null,
  man_issue_plan_action_id  VARCHAR2(32) not null,
  message_issue_type        NUMBER(1) not null,
  staff_id                  VARCHAR2(32),
  event_info_tpl_id         VARCHAR2(32),
  user_id                   VARCHAR2(32) not null,
  last_update_time          DATE not null
)
;
comment on table TK_MAN_ISSUE_PLAN_ACTIONF
  is '向责任人发布信息预案动作表';
comment on column TK_MAN_ISSUE_PLAN_ACTIONF.man_issue_plan_actionf_id
  is '记录ID：使用UUID作为主键';
comment on column TK_MAN_ISSUE_PLAN_ACTIONF.message_issue_type
  is '信息发布方式';
comment on column TK_MAN_ISSUE_PLAN_ACTIONF.staff_id
  is '直接责任人。';
comment on column TK_MAN_ISSUE_PLAN_ACTIONF.event_info_tpl_id
  is '模板代码';
comment on column TK_MAN_ISSUE_PLAN_ACTIONF.user_id
  is '最近修改人';
comment on column TK_MAN_ISSUE_PLAN_ACTIONF.last_update_time
  is '最近修改时间';
alter table TK_MAN_ISSUE_PLAN_ACTIONF
  add constraint PK_TK_MAN_ISSUE_PLAN_ACTIONF primary key (MAN_ISSUE_PLAN_ACTIONF_ID)
  ;

prompt Creating TK_MAN_ISSUE_PLAN_ORDER...
create table TK_MAN_ISSUE_PLAN_ORDER
(
  man_issue_plan_order_id VARCHAR2(32) default sys_guid() not null,
  deal_plan_order_unit_id VARCHAR2(32) not null,
  message_issue_type      NUMBER(1) not null,
  message_content         VARCHAR2(500) not null,
  staff_id                VARCHAR2(32),
  full_name               VARCHAR2(20) not null,
  cell_phone              VARCHAR2(20) not null,
  create_time             DATE not null,
  status                  NUMBER(1),
  issue_time              DATE,
  result_time             DATE,
  jk_fb_shortmessage_id   VARCHAR2(32),
  group_name              VARCHAR2(100)
)
;
comment on table TK_MAN_ISSUE_PLAN_ORDER
  is '向责任人发布信息命令表';
comment on column TK_MAN_ISSUE_PLAN_ORDER.man_issue_plan_order_id
  is '记录ID：使用UUID作为主键';
comment on column TK_MAN_ISSUE_PLAN_ORDER.deal_plan_order_unit_id
  is '处置方案命令单元ID';
comment on column TK_MAN_ISSUE_PLAN_ORDER.message_issue_type
  is '信息发布方式';
comment on column TK_MAN_ISSUE_PLAN_ORDER.message_content
  is '信息内容';
comment on column TK_MAN_ISSUE_PLAN_ORDER.staff_id
  is '责任人ID';
comment on column TK_MAN_ISSUE_PLAN_ORDER.full_name
  is '姓名';
comment on column TK_MAN_ISSUE_PLAN_ORDER.cell_phone
  is '移动电话';
comment on column TK_MAN_ISSUE_PLAN_ORDER.create_time
  is '命令创建时间';
comment on column TK_MAN_ISSUE_PLAN_ORDER.status
  is '执行状态：0：未执行  1：命令已执行，但未收到执行结果  2：执行成功  3：执行失败';
comment on column TK_MAN_ISSUE_PLAN_ORDER.issue_time
  is '命令执行时间';
comment on column TK_MAN_ISSUE_PLAN_ORDER.result_time
  is '收到执行结果时间';
comment on column TK_MAN_ISSUE_PLAN_ORDER.jk_fb_shortmessage_id
  is '日常短信记录ID';
comment on column TK_MAN_ISSUE_PLAN_ORDER.group_name
  is '责任人组名';
alter table TK_MAN_ISSUE_PLAN_ORDER
  add constraint PK_TK_MAN_ISSUE_PLAN_ORDER primary key (MAN_ISSUE_PLAN_ORDER_ID)
  ;

prompt Creating TK_PLAN_ACTION_TYPE...
create table TK_PLAN_ACTION_TYPE
(
  plan_action_type_id   CHAR(3) not null,
  plan_action_main_type NUMBER(1) not null,
  plan_action_type_desc VARCHAR2(50) not null
)
;
comment on table TK_PLAN_ACTION_TYPE
  is '预案步骤动作类型表';
comment on column TK_PLAN_ACTION_TYPE.plan_action_type_id
  is '预案步骤动作类型代码';
comment on column TK_PLAN_ACTION_TYPE.plan_action_main_type
  is '预案步骤动作大类：1:路网协调（信息发布）  2:路网控制';
comment on column TK_PLAN_ACTION_TYPE.plan_action_type_desc
  is '预案步骤动作类型描述（名称）';
alter table TK_PLAN_ACTION_TYPE
  add constraint PK_TK_PLAN_ACTION_UNIT_TYPE primary key (PLAN_ACTION_TYPE_ID)
  ;

prompt Creating TK_PLAN_INDEX...
create table TK_PLAN_INDEX
(
  plan_id          VARCHAR2(20) not null,
  plan_name        VARCHAR2(100) not null,
  plan_desc        VARCHAR2(500),
  is_general       NUMBER(1) default 0 not null,
  event_type_id    VARCHAR2(8),
  plan_type        NUMBER(1) not null,
  alarm_level_id   NUMBER(1),
  organization_id  VARCHAR2(32),
  road_net_id      VARCHAR2(4),
  road_segment_id  VARCHAR2(20),
  direction_id     NUMBER(2),
  start_stub       NUMBER(10,3),
  end_stub         NUMBER(10,3),
  user_id          VARCHAR2(32),
  last_update_time DATE not null
)
;
comment on table TK_PLAN_INDEX
  is '预案主表';
comment on column TK_PLAN_INDEX.plan_id
  is '预案ID';
comment on column TK_PLAN_INDEX.plan_name
  is '预案名称';
comment on column TK_PLAN_INDEX.plan_desc
  is '预案描述';
comment on column TK_PLAN_INDEX.is_general
  is '是否为通用预案：0：不是  1：是';
comment on column TK_PLAN_INDEX.event_type_id
  is '本预案所适用的事件类型：当IsGeneral=0时有意义';
comment on column TK_PLAN_INDEX.plan_type
  is '日常预案或应急预案标志：1：日常预案  2：应急预案';
comment on column TK_PLAN_INDEX.alarm_level_id
  is '本预案所适用的事件级别,当IsGeneral=0时有意义';
comment on column TK_PLAN_INDEX.organization_id
  is '适用的机构';
comment on column TK_PLAN_INDEX.road_net_id
  is '适用的路网';
comment on column TK_PLAN_INDEX.road_segment_id
  is '适用的路段:含特殊路段例如互通';
comment on column TK_PLAN_INDEX.direction_id
  is '适用的路段方向';
comment on column TK_PLAN_INDEX.start_stub
  is '适用的路段起始桩号';
comment on column TK_PLAN_INDEX.end_stub
  is '适用的路段终止桩号';
comment on column TK_PLAN_INDEX.user_id
  is '最近修改人';
comment on column TK_PLAN_INDEX.last_update_time
  is '最近修改时间';
alter table TK_PLAN_INDEX
  add constraint PK_TK_PLAN_INDEX primary key (PLAN_ID)
  ;

prompt Creating TK_PLAN_STEP...
create table TK_PLAN_STEP
(
  plan_step_id        VARCHAR2(32) default sys_guid() not null,
  plan_id             VARCHAR2(20) not null,
  step_no             NUMBER(3) not null,
  step_desc           VARCHAR2(500) not null,
  plan_action_type_id CHAR(3) not null,
  last_update_time    DATE not null,
  user_id             VARCHAR2(32)
)
;
comment on table TK_PLAN_STEP
  is '预案步骤表';
comment on column TK_PLAN_STEP.plan_step_id
  is '预案步骤ID：使用UUID作为主键';
comment on column TK_PLAN_STEP.plan_id
  is '预案ID';
comment on column TK_PLAN_STEP.step_no
  is '步骤号：1，2，3，……';
comment on column TK_PLAN_STEP.step_desc
  is '步骤描述';
comment on column TK_PLAN_STEP.plan_action_type_id
  is '预案动作类型';
comment on column TK_PLAN_STEP.last_update_time
  is '最近修改时间';
comment on column TK_PLAN_STEP.user_id
  is '最近修改人';
alter table TK_PLAN_STEP
  add constraint PK_TK_PLAN_STEP primary key (PLAN_STEP_ID)
  ;

prompt Creating TK_PLAN_STEP_ACTION...
create table TK_PLAN_STEP_ACTION
(
  plan_step_action_id VARCHAR2(32) default sys_guid() not null,
  plan_id             VARCHAR2(32),
  plan_step_id        VARCHAR2(32) not null,
  action_id           VARCHAR2(32),
  action_no           NUMBER(3) not null,
  last_update_time    DATE not null,
  user_id             VARCHAR2(32)
)
;
comment on table TK_PLAN_STEP_ACTION
  is '预案步骤动作表';
comment on column TK_PLAN_STEP_ACTION.plan_step_action_id
  is '预案步骤动作单元ID：使用UUID作为主键';
comment on column TK_PLAN_STEP_ACTION.plan_id
  is '预案ID';
comment on column TK_PLAN_STEP_ACTION.plan_step_id
  is '预案步骤ID';
comment on column TK_PLAN_STEP_ACTION.action_id
  is '动作ID';
comment on column TK_PLAN_STEP_ACTION.action_no
  is '步骤号：1，2，3，……';
comment on column TK_PLAN_STEP_ACTION.last_update_time
  is '最近修改时间';
comment on column TK_PLAN_STEP_ACTION.user_id
  is '最近修改人';
alter table TK_PLAN_STEP_ACTION
  add constraint PK_TK_PLAN_ACTION_UNIT primary key (PLAN_STEP_ACTION_ID)
  ;

prompt Creating TK_PUBLIC_ISSUE_PLAN_ACTION...
create table TK_PUBLIC_ISSUE_PLAN_ACTION
(
  public_issue_plan_action_id VARCHAR2(32) default sys_guid() not null,
  action_desc                 VARCHAR2(500),
  plan_action_type_id         CHAR(3),
  record_type                 NUMBER(1) not null,
  event_info_tpl_id           VARCHAR2(32),
  last_update_time            DATE not null,
  user_id                     VARCHAR2(32)
)
;
comment on table TK_PUBLIC_ISSUE_PLAN_ACTION
  is '向呼叫中心、出行网站发布信息预案动作表';
comment on column TK_PUBLIC_ISSUE_PLAN_ACTION.public_issue_plan_action_id
  is '记录ID：使用UUID作为主键';
comment on column TK_PUBLIC_ISSUE_PLAN_ACTION.action_desc
  is '描述';
comment on column TK_PUBLIC_ISSUE_PLAN_ACTION.plan_action_type_id
  is '动作类型ID';
comment on column TK_PUBLIC_ISSUE_PLAN_ACTION.record_type
  is '记录类型：1：向呼叫中心发布  2：向出行网站发布';
comment on column TK_PUBLIC_ISSUE_PLAN_ACTION.event_info_tpl_id
  is '模板代码';
comment on column TK_PUBLIC_ISSUE_PLAN_ACTION.last_update_time
  is '最近修改时间';
comment on column TK_PUBLIC_ISSUE_PLAN_ACTION.user_id
  is '最近修改人';
alter table TK_PUBLIC_ISSUE_PLAN_ACTION
  add constraint PK_TK_PUBLIC_ISSUE_PLAN_ACTION primary key (PUBLIC_ISSUE_PLAN_ACTION_ID)
  ;

prompt Creating TK_PUBLIC_ISSUE_PLAN_ORDER...
create table TK_PUBLIC_ISSUE_PLAN_ORDER
(
  public_issue_plan_order_id VARCHAR2(32) default sys_guid() not null,
  deal_plan_order_unit_id    VARCHAR2(32) not null,
  record_type                NUMBER(1) not null,
  message_content            VARCHAR2(500) not null,
  create_time                DATE not null,
  status                     NUMBER(1) not null,
  issue_time                 DATE,
  result_time                DATE
)
;
comment on table TK_PUBLIC_ISSUE_PLAN_ORDER
  is '向呼叫中心、出行网站发布信息命令表';
comment on column TK_PUBLIC_ISSUE_PLAN_ORDER.public_issue_plan_order_id
  is '记录ID：使用UUID作为主键';
comment on column TK_PUBLIC_ISSUE_PLAN_ORDER.deal_plan_order_unit_id
  is '处置方案命令单元ID';
comment on column TK_PUBLIC_ISSUE_PLAN_ORDER.record_type
  is '记录类型：1：向呼叫中心发布  2：向出行网站发布';
comment on column TK_PUBLIC_ISSUE_PLAN_ORDER.message_content
  is '信息内容';
comment on column TK_PUBLIC_ISSUE_PLAN_ORDER.create_time
  is '命令创建时间';
comment on column TK_PUBLIC_ISSUE_PLAN_ORDER.status
  is '执行状态：0：未执行  1：命令已执行，但未收到执行结果  2：执行成功  3：执行失败';
comment on column TK_PUBLIC_ISSUE_PLAN_ORDER.issue_time
  is '命令执行时间';
comment on column TK_PUBLIC_ISSUE_PLAN_ORDER.result_time
  is '收到执行结果时间';
alter table TK_PUBLIC_ISSUE_PLAN_ORDER
  add constraint PK_PUBLIC_ISSUE_PLAN_ORDER primary key (PUBLIC_ISSUE_PLAN_ORDER_ID)
  ;

prompt Creating TK_SERVICESTATION_CONTROL_TYPE...
create table TK_SERVICESTATION_CONTROL_TYPE
(
  control_scope_type_id   NUMBER(2) not null,
  control_scope_type_desc VARCHAR2(50) not null
)
;
alter table TK_SERVICESTATION_CONTROL_TYPE
  add constraint PK_CONTROL_SCOPE_TYPE_ID primary key (CONTROL_SCOPE_TYPE_ID)
  ;

prompt Creating TK_SERVICESTATION_PLAN_ACTION...
create table TK_SERVICESTATION_PLAN_ACTION
(
  servicestation_plan_action_id VARCHAR2(32) default sys_guid() not null,
  action_desc                   VARCHAR2(500),
  plan_action_type_id           CHAR(3),
  control_type                  NUMBER(1) not null,
  control_scope_type_id         NUMBER(2),
  rel_control_scope_n           NUMBER(3),
  event_info_tpl_id             VARCHAR2(32),
  last_update_time              DATE not null,
  user_id                       VARCHAR2(32) not null
)
;
comment on column TK_SERVICESTATION_PLAN_ACTION.servicestation_plan_action_id
  is '使用UUID作为主键';
comment on column TK_SERVICESTATION_PLAN_ACTION.action_desc
  is '描述';
comment on column TK_SERVICESTATION_PLAN_ACTION.plan_action_type_id
  is '动作类型ID';
comment on column TK_SERVICESTATION_PLAN_ACTION.control_type
  is '控制类型(1：绝对控制
2：相对控制)';
comment on column TK_SERVICESTATION_PLAN_ACTION.control_scope_type_id
  is '控制范围类型(当Control_Type=2时有效)';
comment on column TK_SERVICESTATION_PLAN_ACTION.rel_control_scope_n
  is '相对控制范围中的N值';
comment on column TK_SERVICESTATION_PLAN_ACTION.event_info_tpl_id
  is '信息模板ID';
comment on column TK_SERVICESTATION_PLAN_ACTION.last_update_time
  is '最近修改时间';
comment on column TK_SERVICESTATION_PLAN_ACTION.user_id
  is '最近修改人';
alter table TK_SERVICESTATION_PLAN_ACTION
  add constraint PK_SERVICESTATION_PLAN_ACTION primary key (SERVICESTATION_PLAN_ACTION_ID)
  ;

prompt Creating TK_SERVICESTATION_PLAN_ACTIONF...
create table TK_SERVICESTATION_PLAN_ACTIONF
(
  servicestation_plan_actionf_id VARCHAR2(32) default sys_guid() not null,
  servicestation_plan_action_id  VARCHAR2(32) not null,
  sub_servicestation_id          VARCHAR2(22),
  event_info_tpl_id              VARCHAR2(32) not null,
  last_update_time               DATE not null,
  user_id                        VARCHAR2(32)
)
;
comment on column TK_SERVICESTATION_PLAN_ACTIONF.servicestation_plan_actionf_id
  is '使用UUID作为主键';
comment on column TK_SERVICESTATION_PLAN_ACTIONF.servicestation_plan_action_id
  is 'ID';
comment on column TK_SERVICESTATION_PLAN_ACTIONF.sub_servicestation_id
  is '被控服务区编号';
comment on column TK_SERVICESTATION_PLAN_ACTIONF.event_info_tpl_id
  is '信息模板ID';
comment on column TK_SERVICESTATION_PLAN_ACTIONF.last_update_time
  is '最近修改时间';
comment on column TK_SERVICESTATION_PLAN_ACTIONF.user_id
  is '最近修改人';
alter table TK_SERVICESTATION_PLAN_ACTIONF
  add constraint PK_SERVICESTATION_PLAN_ACTIONF primary key (SERVICESTATION_PLAN_ACTIONF_ID)
  ;

prompt Creating TK_SERVICESTATION_PLAN_ORDER...
create table TK_SERVICESTATION_PLAN_ORDER
(
  servicesta_issue_plan_order_id VARCHAR2(32) default sys_guid() not null,
  deal_plan_order_unit_id        VARCHAR2(32) not null,
  sub_servicestation_id          VARCHAR2(22) not null,
  message_content                VARCHAR2(500) not null,
  create_time                    DATE not null,
  status                         NUMBER(1) not null,
  issue_time                     DATE,
  result_time                    DATE
)
;
comment on column TK_SERVICESTATION_PLAN_ORDER.servicesta_issue_plan_order_id
  is '记录ID(使用UUID作为主键)';
comment on column TK_SERVICESTATION_PLAN_ORDER.deal_plan_order_unit_id
  is '处置方案命令单元ID';
comment on column TK_SERVICESTATION_PLAN_ORDER.sub_servicestation_id
  is '目标服务区';
comment on column TK_SERVICESTATION_PLAN_ORDER.message_content
  is '信息内容';
comment on column TK_SERVICESTATION_PLAN_ORDER.create_time
  is '命令创建时间';
comment on column TK_SERVICESTATION_PLAN_ORDER.status
  is '执行状态(0：未执行1：执行未反馈2：执行成功3：执行失败)';
comment on column TK_SERVICESTATION_PLAN_ORDER.issue_time
  is '命令执行时间';
comment on column TK_SERVICESTATION_PLAN_ORDER.result_time
  is '收到执行结果时间';
alter table TK_SERVICESTATION_PLAN_ORDER
  add constraint PK_SERVICESTATION_PLAN_ORDER primary key (SERVICESTA_ISSUE_PLAN_ORDER_ID)
  ;

prompt Creating TK_TOLL_CONTROL_SCOPE_TYPE...
create table TK_TOLL_CONTROL_SCOPE_TYPE
(
  toll_control_scope_type_id   NUMBER(2) not null,
  toll_control_scope_type_desc VARCHAR2(80) not null
)
;
comment on table TK_TOLL_CONTROL_SCOPE_TYPE
  is '车道控制范围类型表';
comment on column TK_TOLL_CONTROL_SCOPE_TYPE.toll_control_scope_type_id
  is '车道控制范围类型代码';
comment on column TK_TOLL_CONTROL_SCOPE_TYPE.toll_control_scope_type_desc
  is '车道控制范围类型描述';
alter table TK_TOLL_CONTROL_SCOPE_TYPE
  add constraint PK_TK_TOLL_CONTROL_SCOPE_TYPE primary key (TOLL_CONTROL_SCOPE_TYPE_ID)
  ;

prompt Creating TK_TOLL_PLAN_ACTION...
create table TK_TOLL_PLAN_ACTION
(
  toll_plan_action_id        VARCHAR2(32) default sys_guid() not null,
  action_desc                VARCHAR2(500),
  plan_action_type_id        CHAR(3),
  control_type               NUMBER(1) not null,
  toll_control_scope_type_id NUMBER(2),
  rel_control_scopen         NUMBER(3),
  control_order              NUMBER(1),
  last_update_time           DATE not null,
  user_id                    VARCHAR2(32)
)
;
comment on table TK_TOLL_PLAN_ACTION
  is '向收费站发布车道控制信息预案动作表';
comment on column TK_TOLL_PLAN_ACTION.toll_plan_action_id
  is '记录ID：使用UUID作为主键';
comment on column TK_TOLL_PLAN_ACTION.action_desc
  is '描述';
comment on column TK_TOLL_PLAN_ACTION.plan_action_type_id
  is '动作类型ID';
comment on column TK_TOLL_PLAN_ACTION.control_type
  is '控制类型：1：绝对控制，直接指定被控收费站  2：相对控制，指定被控收费站与事件点的相对关系';
comment on column TK_TOLL_PLAN_ACTION.toll_control_scope_type_id
  is '控制范围类型：当ControlType=2时有效';
comment on column TK_TOLL_PLAN_ACTION.rel_control_scopen
  is '相对控制范围中的N值：当ControlType=2时有效';
comment on column TK_TOLL_PLAN_ACTION.control_order
  is '控制命令：0：关闭所有车道  1：关闭部分车道  2：打开所有车道';
comment on column TK_TOLL_PLAN_ACTION.last_update_time
  is '最近修改时间';
comment on column TK_TOLL_PLAN_ACTION.user_id
  is '最近修改人';
alter table TK_TOLL_PLAN_ACTION
  add constraint PK_TK_TOLL_PLAN_ACTION primary key (TOLL_PLAN_ACTION_ID)
  ;

prompt Creating TK_TOLL_PLAN_ACTIONF...
create table TK_TOLL_PLAN_ACTIONF
(
  toll_plan_actionf_id VARCHAR2(32) default sys_guid() not null,
  toll_plan_action_id  VARCHAR2(32),
  organization_id      VARCHAR2(20),
  control_order        NUMBER(1) not null,
  last_update_time     DATE not null,
  user_id              VARCHAR2(32)
)
;
comment on table TK_TOLL_PLAN_ACTIONF
  is '向收费站发布车道控制信息预案动作表';
comment on column TK_TOLL_PLAN_ACTIONF.toll_plan_actionf_id
  is '记录ID：使用UUID作为主键';
comment on column TK_TOLL_PLAN_ACTIONF.organization_id
  is '被控收费站编号：当ControlType=1时有效';
comment on column TK_TOLL_PLAN_ACTIONF.control_order
  is '控制命令：0：关闭所有车道  1：关闭部分车道  2：打开所有车道';
comment on column TK_TOLL_PLAN_ACTIONF.last_update_time
  is '最近修改时间';
comment on column TK_TOLL_PLAN_ACTIONF.user_id
  is '最近修改人';
alter table TK_TOLL_PLAN_ACTIONF
  add constraint PK_TK_TOLL_PLAN_ACTIONF primary key (TOLL_PLAN_ACTIONF_ID)
  ;

prompt Creating TK_TOLL_PLAN_ORDER...
create table TK_TOLL_PLAN_ORDER
(
  toll_plan_order_id      VARCHAR2(32) default sys_guid() not null,
  deal_plan_order_unit_id VARCHAR2(32) not null,
  organization_id         VARCHAR2(32),
  control_order           NUMBER(1) not null,
  create_time             DATE not null,
  status                  NUMBER(1) not null,
  issue_time              DATE,
  result_time             DATE,
  user_name               VARCHAR2(20)
)
;
comment on table TK_TOLL_PLAN_ORDER
  is '向收费站发布车道控制命令表';
comment on column TK_TOLL_PLAN_ORDER.toll_plan_order_id
  is '记录ID：使用UUID作为主键';
comment on column TK_TOLL_PLAN_ORDER.deal_plan_order_unit_id
  is '处置方案命令单元ID';
comment on column TK_TOLL_PLAN_ORDER.organization_id
  is '被控收费站编号';
comment on column TK_TOLL_PLAN_ORDER.control_order
  is '控制命令：0：关闭所有车道  1：关闭部分车道  2：打开所有车道';
comment on column TK_TOLL_PLAN_ORDER.create_time
  is '命令创建时间';
comment on column TK_TOLL_PLAN_ORDER.status
  is '执行状态：0：未执行  1：命令已执行，但未收到执行结果  2：执行成功  3：执行失败';
comment on column TK_TOLL_PLAN_ORDER.issue_time
  is '命令执行时间';
comment on column TK_TOLL_PLAN_ORDER.result_time
  is '收到执行结果时间';
comment on column TK_TOLL_PLAN_ORDER.user_name
  is '收费站命令执行者';
alter table TK_TOLL_PLAN_ORDER
  add constraint PK_TK_TOLL_PLAN_ORDER primary key (TOLL_PLAN_ORDER_ID)
  ;

prompt Creating TK_VIDEO_CONTROL_SCOPE_TYPE...
create table TK_VIDEO_CONTROL_SCOPE_TYPE
(
  video_control_scope_type_id   NUMBER(2) not null,
  video_control_scope_type_desc VARCHAR2(80) not null
)
;
comment on table TK_VIDEO_CONTROL_SCOPE_TYPE
  is '摄像机控制范围类型表';
comment on column TK_VIDEO_CONTROL_SCOPE_TYPE.video_control_scope_type_id
  is '摄像机控制范围类型代码';
comment on column TK_VIDEO_CONTROL_SCOPE_TYPE.video_control_scope_type_desc
  is '摄像机控制范围类型描述';
alter table TK_VIDEO_CONTROL_SCOPE_TYPE
  add constraint PK_TK_VIDEO_CONTROL_SCOPE_TYPE primary key (VIDEO_CONTROL_SCOPE_TYPE_ID)
  ;

prompt Creating TK_VIDEO_SCREEN_PLAN_ACTION...
create table TK_VIDEO_SCREEN_PLAN_ACTION
(
  screen_plan_action_id        VARCHAR2(32) default sys_guid() not null,
  action_desc                  VARCHAR2(500),
  plan_action_type_id          CHAR(3),
  control_type                 NUMBER(1) not null,
  video_control_scope_tyepe_id NUMBER(2),
  rel_control_scope_n          NUMBER(3),
  screen_id                    VARCHAR2(32),
  last_update_time             DATE not null,
  user_id                      VARCHAR2(32) not null
)
;
comment on table TK_VIDEO_SCREEN_PLAN_ACTION
  is '摄像机投大屏预案动作表';
comment on column TK_VIDEO_SCREEN_PLAN_ACTION.screen_plan_action_id
  is '记录ID：使用UUID作为主键';
comment on column TK_VIDEO_SCREEN_PLAN_ACTION.action_desc
  is '描述';
comment on column TK_VIDEO_SCREEN_PLAN_ACTION.plan_action_type_id
  is '动作类型ID';
comment on column TK_VIDEO_SCREEN_PLAN_ACTION.control_type
  is '控制类型：1：绝对控制，直接指定情报板的设备编号  2：相对控制，指定情报板与事件点的相对关系';
comment on column TK_VIDEO_SCREEN_PLAN_ACTION.video_control_scope_tyepe_id
  is '控制范围类型。当CONTROL_TYPE=2时有效';
comment on column TK_VIDEO_SCREEN_PLAN_ACTION.rel_control_scope_n
  is '相对控制范围中的N值。当CONTROL_TYPE=2时有效';
comment on column TK_VIDEO_SCREEN_PLAN_ACTION.screen_id
  is '大屏ID';
comment on column TK_VIDEO_SCREEN_PLAN_ACTION.last_update_time
  is '最近修改时间';
comment on column TK_VIDEO_SCREEN_PLAN_ACTION.user_id
  is '最近修改人';
alter table TK_VIDEO_SCREEN_PLAN_ACTION
  add constraint PK_TK_VIDEO_SCREEN_PLAN_ACTION primary key (SCREEN_PLAN_ACTION_ID)
  ;

prompt Creating TK_VIDEO_SCREEN_PLAN_ORDER...
create table TK_VIDEO_SCREEN_PLAN_ORDER
(
  screen_plan_order_id    VARCHAR2(32) default sys_guid() not null,
  deal_plan_order_unit_id VARCHAR2(32) not null,
  device_id               VARCHAR2(40) not null,
  screen_id               VARCHAR2(32) not null,
  create_time             DATE not null,
  status                  NUMBER(1) not null,
  issue_time              DATE,
  result_time             DATE
)
;
comment on table TK_VIDEO_SCREEN_PLAN_ORDER
  is '摄像机投大屏命令表';
comment on column TK_VIDEO_SCREEN_PLAN_ORDER.screen_plan_order_id
  is '记录ID：使用UUID作为主键';
comment on column TK_VIDEO_SCREEN_PLAN_ORDER.deal_plan_order_unit_id
  is '处置方案命令单元ID';
comment on column TK_VIDEO_SCREEN_PLAN_ORDER.device_id
  is '情报板设备编号';
comment on column TK_VIDEO_SCREEN_PLAN_ORDER.screen_id
  is '大屏ID';
comment on column TK_VIDEO_SCREEN_PLAN_ORDER.create_time
  is '命令创建时间';
comment on column TK_VIDEO_SCREEN_PLAN_ORDER.status
  is '执行状态：0：未执行  1：命令已执行，但未收到执行结果  2：执行成功  3：执行失败';
comment on column TK_VIDEO_SCREEN_PLAN_ORDER.issue_time
  is '命令执行时间';
comment on column TK_VIDEO_SCREEN_PLAN_ORDER.result_time
  is '收到执行结果时间';
alter table TK_VIDEO_SCREEN_PLAN_ORDER
  add constraint PK_TK_VIDEO_SCREEN_PLAN_ORDER primary key (SCREEN_PLAN_ORDER_ID)
  ;

prompt Creating VD_DESC...
create table VD_DESC
(
  vd_desc NVARCHAR2(20),
  ip      NVARCHAR2(20)
)
;

prompt Creating VIDEOINCHANNEL...
create table VIDEOINCHANNEL
(
  id                   VARCHAR2(40) default '0' not null,
  fdid                 VARCHAR2(40) not null,
  channelid            NUMBER(5) default 0 not null,
  channeltype          NUMBER(5),
  idext                VARCHAR2(40),
  channelname          VARCHAR2(100),
  channelnamepyfirsta  VARCHAR2(40),
  channelstate         NUMBER(5) default 0 not null,
  channellocation      VARCHAR2(60),
  longitude            VARCHAR2(10),
  latitude             VARCHAR2(10),
  videoformat          NUMBER(5) default 0,
  videoresolution      NUMBER(10) default 0,
  framerates           NUMBER(5) default 0,
  liveneedrelay        NUMBER(10) default 1 not null,
  videostate           NUMBER(10) default 0 not null,
  recordstate          NUMBER(10) default 0 not null,
  recordneedrelay      NUMBER(10) default 1 not null,
  ifreameinval         NUMBER(5) default 0,
  bitrates             NUMBER(5) default 0,
  videopriority        NUMBER(5) default 0,
  controlflag          NUMBER(5) default 0 not null,
  lastimagestorearea   VARCHAR2(60),
  imagestoreareagroup  VARCHAR2(20),
  laststorearea        VARCHAR2(60),
  centerstoreareagroup VARCHAR2(20),
  storetotal           NUMBER(10) default 0 not null,
  storeused            NUMBER(18) default 0 not null,
  storespare           NUMBER(18) default 0 not null,
  videokeepdays        NUMBER(5) default 0 not null,
  imagekeepdays        NUMBER(5) default 7 not null,
  isenable             NUMBER(5) default 0,
  cascadeitemid        VARCHAR2(32),
  description          VARCHAR2(254),
  channeldirect        NUMBER(10) default 0 not null,
  depid                NUMBER(10) default 0 not null,
  orgid                NUMBER(10) default 0 not null,
  creator              VARCHAR2(40),
  createdate           DATE default SYSDATE not null,
  modifier             VARCHAR2(40),
  modidate             DATE default sysdate not null,
  keyboardshortcode    VARCHAR2(20),
  recordmethod         NUMBER default 0 not null,
  mediatype            NUMBER default 0 not null,
  nodeorder            NUMBER default 0 not null,
  groupaddress         VARCHAR2(64),
  monitorid            NUMBER(10) default 0,
  recordmainsubflow    NUMBER default 0 not null,
  groupport            NUMBER(10) default 0,
  framerate            NUMBER(5) default 0 not null
)
;
alter table VIDEOINCHANNEL
  add primary key (ID)
 ;

prompt Creating VIDEO_DEVICE_PROFILE...
create table VIDEO_DEVICE_PROFILE
(
  device_id       VARCHAR2(40) not null,
  device_desc     VARCHAR2(80) not null,
  device_type_id  VARCHAR2(4) not null,
  em_type_id      CHAR(3) not null,
  road_segment_id VARCHAR2(20) not null,
  organization_id VARCHAR2(20) not null,
  direction_id    NUMBER(2) not null,
  dec_stub        NUMBER(10,3) not null,
  char_stub       VARCHAR2(20),
  price           NUMBER(12,2) default 0,
  manufacturer    VARCHAR2(50),
  product_model   VARCHAR2(50),
  quantity        NUMBER(5) default 1,
  installer       VARCHAR2(50),
  install_time    DATE,
  collect_type    NUMBER(1),
  user_id         VARCHAR2(12),
  collect_time    DATE default sysdate not null,
  flag            NUMBER(1) default 1 not null,
  update_time     DATE default sysdate not null,
  communication   NUMBER(1) default 0,
  ip              VARCHAR2(20),
  port            NUMBER(5),
  bot             NUMBER(7),
  valid           NUMBER(1) default 0 not null,
  other           VARCHAR2(50),
  dal             VARCHAR2(50),
  manufactor_name VARCHAR2(50),
  camera_id       VARCHAR2(200),
  camera_type     NUMBER(1)
)
;
comment on table VIDEO_DEVICE_PROFILE
  is '设备基本资料表';
comment on column VIDEO_DEVICE_PROFILE.device_id
  is '设备ID';
comment on column VIDEO_DEVICE_PROFILE.device_desc
  is '设备名称或设备描述';
comment on column VIDEO_DEVICE_PROFILE.device_type_id
  is '设备类型';
comment on column VIDEO_DEVICE_PROFILE.em_type_id
  is '所属机电系统';
comment on column VIDEO_DEVICE_PROFILE.road_segment_id
  is '所属路段';
comment on column VIDEO_DEVICE_PROFILE.organization_id
  is '所属管理机构。要求所有设备的管理机构都应设置为“路段管理处”等管理机构';
comment on column VIDEO_DEVICE_PROFILE.direction_id
  is '设备所在方向（或位置）';
comment on column VIDEO_DEVICE_PROFILE.dec_stub
  is '数字桩号';
comment on column VIDEO_DEVICE_PROFILE.char_stub
  is '字符桩号';
comment on column VIDEO_DEVICE_PROFILE.price
  is '价格：单位：元';
comment on column VIDEO_DEVICE_PROFILE.manufacturer
  is '生产厂家';
comment on column VIDEO_DEVICE_PROFILE.product_model
  is '产品型号';
comment on column VIDEO_DEVICE_PROFILE.quantity
  is '数量';
comment on column VIDEO_DEVICE_PROFILE.installer
  is '安装厂商';
comment on column VIDEO_DEVICE_PROFILE.install_time
  is '安装时间';
comment on column VIDEO_DEVICE_PROFILE.collect_type
  is '数据采集方式：1:数据交换  2:人工录入';
comment on column VIDEO_DEVICE_PROFILE.user_id
  is '最近更新时的用户';
comment on column VIDEO_DEVICE_PROFILE.collect_time
  is '创建时间';
comment on column VIDEO_DEVICE_PROFILE.flag
  is '删除标志:0：无效；1有效';
comment on column VIDEO_DEVICE_PROFILE.update_time
  is '修改时间';
comment on column VIDEO_DEVICE_PROFILE.communication
  is '通信方式:通讯方式必填
0:未知 1TCP 2udp 3串口';
comment on column VIDEO_DEVICE_PROFILE.ip
  is 'IP地址:串口模式时，填写串口服务器Ip；网络模式时，填写设备ip';
comment on column VIDEO_DEVICE_PROFILE.port
  is '端口/串口号:串口模式时，填写串口号；网络模式时，填写端口号';
comment on column VIDEO_DEVICE_PROFILE.bot
  is '串口配置';
comment on column VIDEO_DEVICE_PROFILE.valid
  is '是否启用标志:设备采集功能是否启用
0：关闭；1启用';
comment on column VIDEO_DEVICE_PROFILE.other
  is '其他内容';
comment on column VIDEO_DEVICE_PROFILE.dal
  is '业务类名称';
comment on column VIDEO_DEVICE_PROFILE.manufactor_name
  is '厂家名称';
comment on column VIDEO_DEVICE_PROFILE.camera_id
  is '摄像机编号：指摄像机在相应视频系统中的编号';
comment on column VIDEO_DEVICE_PROFILE.camera_type
  is '摄像机编码类型：1:亚邦、2:中威、3:互信互通';
create index IND_VIDEO_DEVICE_PROFILE_ORG on VIDEO_DEVICE_PROFILE (ORGANIZATION_ID)
 ;
create index IND_VIDEO_DEVICE_PROFILE_ROAD on VIDEO_DEVICE_PROFILE (ROAD_SEGMENT_ID)
 ;
alter table VIDEO_DEVICE_PROFILE
  add constraint PK_VIDEO_DEVICE_PROFILE primary key (DEVICE_ID)
  ;

prompt Creating VIDEO_EVENT_DEVICE_PROFILE...
create table VIDEO_EVENT_DEVICE_PROFILE
(
  device_id       VARCHAR2(40) not null,
  device_desc     VARCHAR2(80) not null,
  device_type_id  VARCHAR2(4) not null,
  em_type_id      CHAR(3) not null,
  road_segment_id VARCHAR2(20) not null,
  organization_id VARCHAR2(20) not null,
  direction_id    NUMBER(2) not null,
  dec_stub        NUMBER(10,3) not null,
  char_stub       VARCHAR2(20),
  price           NUMBER(12,2) default 0,
  manufacturer    VARCHAR2(50),
  product_model   VARCHAR2(50),
  quantity        NUMBER(5) default 1,
  installer       VARCHAR2(50),
  install_time    DATE,
  collect_type    NUMBER(1),
  user_id         VARCHAR2(12),
  collect_time    DATE default sysdate not null,
  flag            NUMBER(1) default 1 not null,
  update_time     DATE default sysdate not null,
  communication   NUMBER(1) not null,
  ip              VARCHAR2(20),
  port            NUMBER(5),
  bot             NUMBER(7),
  valid           NUMBER(1) default 0 not null,
  other           VARCHAR2(50),
  dal             VARCHAR2(50),
  manufactor_name VARCHAR2(50),
  protocal_id     VARCHAR2(50),
  service_id      VARCHAR2(40) not null
)
;
comment on table VIDEO_EVENT_DEVICE_PROFILE
  is '视频事件基本资料表';
comment on column VIDEO_EVENT_DEVICE_PROFILE.device_id
  is '设备ID';
comment on column VIDEO_EVENT_DEVICE_PROFILE.device_desc
  is '设备名称或设备描述';
comment on column VIDEO_EVENT_DEVICE_PROFILE.device_type_id
  is '设备类型';
comment on column VIDEO_EVENT_DEVICE_PROFILE.em_type_id
  is '所属机电系统';
comment on column VIDEO_EVENT_DEVICE_PROFILE.road_segment_id
  is '所属路段';
comment on column VIDEO_EVENT_DEVICE_PROFILE.organization_id
  is '所属管理机构。要求所有设备的管理机构都应设置为“路段管理处”等管理机构';
comment on column VIDEO_EVENT_DEVICE_PROFILE.direction_id
  is '设备所在方向（或位置）';
comment on column VIDEO_EVENT_DEVICE_PROFILE.dec_stub
  is '数字桩号';
comment on column VIDEO_EVENT_DEVICE_PROFILE.char_stub
  is '字符桩号';
comment on column VIDEO_EVENT_DEVICE_PROFILE.price
  is '价格：单位：元';
comment on column VIDEO_EVENT_DEVICE_PROFILE.manufacturer
  is '生产厂家';
comment on column VIDEO_EVENT_DEVICE_PROFILE.product_model
  is '产品型号';
comment on column VIDEO_EVENT_DEVICE_PROFILE.quantity
  is '数量';
comment on column VIDEO_EVENT_DEVICE_PROFILE.installer
  is '安装厂商';
comment on column VIDEO_EVENT_DEVICE_PROFILE.install_time
  is '安装时间';
comment on column VIDEO_EVENT_DEVICE_PROFILE.collect_type
  is '数据采集方式：1:数据交换  2:人工录入';
comment on column VIDEO_EVENT_DEVICE_PROFILE.user_id
  is '最近更新时的用户';
comment on column VIDEO_EVENT_DEVICE_PROFILE.collect_time
  is '创建时间';
comment on column VIDEO_EVENT_DEVICE_PROFILE.flag
  is '删除标志:0：无效；1有效';
comment on column VIDEO_EVENT_DEVICE_PROFILE.update_time
  is '修改时间';
comment on column VIDEO_EVENT_DEVICE_PROFILE.communication
  is '通信方式:通讯方式必填
0:未知 1TCP 2udp 3串口';
comment on column VIDEO_EVENT_DEVICE_PROFILE.ip
  is 'IP地址:串口模式时，填写串口服务器Ip；网络模式时，填写设备ip';
comment on column VIDEO_EVENT_DEVICE_PROFILE.port
  is '端口/串口号:串口模式时，填写串口号；网络模式时，填写端口号';
comment on column VIDEO_EVENT_DEVICE_PROFILE.bot
  is '串口配置';
comment on column VIDEO_EVENT_DEVICE_PROFILE.valid
  is '是否启用标志:设备采集功能是否启用
0：关闭；1启用';
comment on column VIDEO_EVENT_DEVICE_PROFILE.other
  is '其他内容';
comment on column VIDEO_EVENT_DEVICE_PROFILE.dal
  is '业务类名称';
comment on column VIDEO_EVENT_DEVICE_PROFILE.manufactor_name
  is '厂家名称';
comment on column VIDEO_EVENT_DEVICE_PROFILE.protocal_id
  is '基于协议的id';
comment on column VIDEO_EVENT_DEVICE_PROFILE.service_id
  is '服务id';
alter table VIDEO_EVENT_DEVICE_PROFILE
  add constraint PK_VIDEO_EVENT_DEVICE_PROFILE primary key (DEVICE_ID)
  ;

prompt Creating VIDEO_EVENT_IN_CAMERA...
create table VIDEO_EVENT_IN_CAMERA
(
  id                VARCHAR2(32) default sys_guid() not null,
  event_platfrom_id VARCHAR2(32) not null,
  camera_id         VARCHAR2(32) not null,
  event_camera_id   VARCHAR2(20) not null
)
;
comment on table VIDEO_EVENT_IN_CAMERA
  is '视频事件平台内的摄像机ID和摄像机的对应表';
comment on column VIDEO_EVENT_IN_CAMERA.id
  is '主键';
comment on column VIDEO_EVENT_IN_CAMERA.event_platfrom_id
  is '视频事件平台ID';
comment on column VIDEO_EVENT_IN_CAMERA.camera_id
  is '系统摄像机ID';
comment on column VIDEO_EVENT_IN_CAMERA.event_camera_id
  is '视频事件平台内的摄像机ID';
alter table VIDEO_EVENT_IN_CAMERA
  add constraint PK_VIDEO_EVENT_IN_CAMERA primary key (ID)
  ;

prompt Creating VOICE_FILE...
create table VOICE_FILE
(
  voice_id         VARCHAR2(32) not null,
  path             VARCHAR2(32) not null,
  play_time        NUMBER(5) not null,
  deal_user_id     VARCHAR2(12) not null,
  last_update_time DATE not null,
  file_name        VARCHAR2(32) not null
)
;
comment on table VOICE_FILE
  is '消息提醒表';
comment on column VOICE_FILE.voice_id
  is '声音ID';
comment on column VOICE_FILE.path
  is '路径';
comment on column VOICE_FILE.play_time
  is '文件的播放时长';
comment on column VOICE_FILE.deal_user_id
  is '记录修改人';
comment on column VOICE_FILE.last_update_time
  is '最近修改时间';
comment on column VOICE_FILE.file_name
  is '文件名称';
alter table VOICE_FILE
  add constraint PK_VOICE_FILE primary key (VOICE_ID)
  ;

prompt Creating VS_CODEC_DEVICE...
create table VS_CODEC_DEVICE
(
  device_id            VARCHAR2(32) not null,
  device_type          NUMBER(1) not null,
  factory_id           VARCHAR2(32) not null,
  factory_identify     VARCHAR2(32) not null,
  device_model         VARCHAR2(32) not null,
  channel_num          NUMBER(4) not null,
  major_num_in_channel NUMBER(4) not null,
  minor_num_in_channel NUMBER(4) not null,
  video_type           VARCHAR2(32) not null,
  switch_channel_num   NUMBER(8) not null,
  ptzchannels          VARCHAR2(2500) default -1 not null,
  ip                   VARCHAR2(16) not null,
  port                 VARCHAR2(10) not null,
  device_mgr_addr      VARCHAR2(4000),
  device_mgr_login     VARCHAR2(200),
  device_mgr_password  VARCHAR2(200),
  login_sn             VARCHAR2(200),
  login_time           DATE default sysdate,
  logout_time          DATE default sysdate,
  update_sn            VARCHAR2(200),
  update_time          DATE default sysdate,
  valid                NUMBER(1) default 1,
  is_online            NUMBER(1) default 0,
  protocol_type        NUMBER(1) default 0 not null,
  max_input_num        NUMBER(4) default 0,
  max_output_num       NUMBER(4) default 0,
  ver                  VARCHAR2(32),
  disk_size            NUMBER(4),
  record_num           NUMBER(4),
  review_num           NUMBER(4),
  review_type          NUMBER(1)
)
;
comment on column VS_CODEC_DEVICE.device_id
  is '设备编码ID（主键）';
comment on column VS_CODEC_DEVICE.device_type
  is '设备类型：0、编码，1、解码,2、流媒体，3、GB28181代理，4、存储设备';
comment on column VS_CODEC_DEVICE.factory_id
  is '厂商内部标识名';
comment on column VS_CODEC_DEVICE.factory_identify
  is '厂商实际标识名';
comment on column VS_CODEC_DEVICE.device_model
  is '设备型号';
comment on column VS_CODEC_DEVICE.channel_num
  is '通道数量';
comment on column VS_CODEC_DEVICE.major_num_in_channel
  is '编码通道主码流数量';
comment on column VS_CODEC_DEVICE.minor_num_in_channel
  is '编码通道辅流数量';
comment on column VS_CODEC_DEVICE.video_type
  is '标清/高清：sd或hd';
comment on column VS_CODEC_DEVICE.switch_channel_num
  is '开关量通道数量';
comment on column VS_CODEC_DEVICE.ptzchannels
  is '云台通道号';
comment on column VS_CODEC_DEVICE.ip
  is '设备的IP';
comment on column VS_CODEC_DEVICE.port
  is '设备的端口;默认值是6600';
comment on column VS_CODEC_DEVICE.device_mgr_addr
  is '设备管理界面链接';
comment on column VS_CODEC_DEVICE.device_mgr_login
  is '设备管理界面登录名';
comment on column VS_CODEC_DEVICE.device_mgr_password
  is '设备管理界面登录密码';
comment on column VS_CODEC_DEVICE.login_sn
  is '登录报文序号';
comment on column VS_CODEC_DEVICE.login_time
  is '登录时间';
comment on column VS_CODEC_DEVICE.logout_time
  is '注销时间';
comment on column VS_CODEC_DEVICE.update_sn
  is '特性查询报文序号';
comment on column VS_CODEC_DEVICE.valid
  is '有效性：0、无效；1、有效，默认值：1';
comment on column VS_CODEC_DEVICE.is_online
  is '是否在线：0、表示不在线，1、表示在线';
comment on column VS_CODEC_DEVICE.protocol_type
  is '所支持的协议类型：0、河北协议，1、GB28181协议；默认值0';
comment on column VS_CODEC_DEVICE.max_input_num
  is '最大输入流的数量(只对流媒体有效)';
comment on column VS_CODEC_DEVICE.max_output_num
  is '最大输出流的数量(只对流媒体有效)';
comment on column VS_CODEC_DEVICE.ver
  is '版本号';
comment on column VS_CODEC_DEVICE.disk_size
  is '硬盘存储空间(T)';
comment on column VS_CODEC_DEVICE.record_num
  is '录像路数';
comment on column VS_CODEC_DEVICE.review_num
  is '回放路数';
comment on column VS_CODEC_DEVICE.review_type
  is '回放类型';
alter table VS_CODEC_DEVICE
  add constraint PK_VS_CODEC_DEVICE primary key (DEVICE_ID)
  ;

prompt Disabling triggers for ALARM_INFO...
alter table ALARM_INFO disable all triggers;
prompt Disabling triggers for ALARM_INFO_GRADE...
alter table ALARM_INFO_GRADE disable all triggers;
prompt Disabling triggers for ALARM_INFO_OUTLINE...
alter table ALARM_INFO_OUTLINE disable all triggers;
prompt Disabling triggers for ALARM_INFO_PUBLISH_RECORD...
alter table ALARM_INFO_PUBLISH_RECORD disable all triggers;
prompt Disabling triggers for APP_CAMERA_PROFILE...
alter table APP_CAMERA_PROFILE disable all triggers;
prompt Disabling triggers for APP_CCTV_COLLECTION...
alter table APP_CCTV_COLLECTION disable all triggers;
prompt Disabling triggers for APP_CCTV_EMERGENCY...
alter table APP_CCTV_EMERGENCY disable all triggers;
prompt Disabling triggers for APP_CCTV_IN_ROLE...
alter table APP_CCTV_IN_ROLE disable all triggers;
prompt Disabling triggers for APP_CCTV_ROAD...
alter table APP_CCTV_ROAD disable all triggers;
prompt Disabling triggers for CCTV_CAMERA_LIVE...
alter table CCTV_CAMERA_LIVE disable all triggers;
prompt Disabling triggers for CCTV_CAMERA_PROFILE...
alter table CCTV_CAMERA_PROFILE disable all triggers;
prompt Disabling triggers for CCTV_CAMERA_SWITCH_MAPPING...
alter table CCTV_CAMERA_SWITCH_MAPPING disable all triggers;
prompt Disabling triggers for CCTV_CAMERA_SWITCH_TASK...
alter table CCTV_CAMERA_SWITCH_TASK disable all triggers;
prompt Disabling triggers for CCTV_DECODER_AREA_MAPPING...
alter table CCTV_DECODER_AREA_MAPPING disable all triggers;
prompt Disabling triggers for CCTV_DECODER_PROFILE...
alter table CCTV_DECODER_PROFILE disable all triggers;
prompt Disabling triggers for CCTV_SERVER_PROFILE...
alter table CCTV_SERVER_PROFILE disable all triggers;
prompt Disabling triggers for DEPTREE...
alter table DEPTREE disable all triggers;
prompt Disabling triggers for DEVICE_HISTORY_ERRSTATU...
alter table DEVICE_HISTORY_ERRSTATU disable all triggers;
prompt Disabling triggers for DEVICE_MATCH_CAM...
alter table DEVICE_MATCH_CAM disable all triggers;
prompt Disabling triggers for DEVICE_PROFILE...
alter table DEVICE_PROFILE disable all triggers;
prompt Disabling triggers for DEVICE_REAL_DATA...
alter table DEVICE_REAL_DATA disable all triggers;
prompt Disabling triggers for DEVICE_REAL_ERRSTATU...
alter table DEVICE_REAL_ERRSTATU disable all triggers;
prompt Disabling triggers for HANBANG_ALARM...
alter table HANBANG_ALARM disable all triggers;
prompt Disabling triggers for HANBANG_EVERT_MAPING...
alter table HANBANG_EVERT_MAPING disable all triggers;
prompt Disabling triggers for JK_BAY_ACCESS_RECORD...
alter table JK_BAY_ACCESS_RECORD disable all triggers;
prompt Disabling triggers for JK_BAY_DEVICE_POSITION...
alter table JK_BAY_DEVICE_POSITION disable all triggers;
prompt Disabling triggers for JK_BAY_DEVICE_PROFILE...
alter table JK_BAY_DEVICE_PROFILE disable all triggers;
prompt Disabling triggers for JK_BAY_HISTORY_DATA1...
alter table JK_BAY_HISTORY_DATA1 disable all triggers;
prompt Disabling triggers for JK_BAY_HISTORY_DATAZ...
alter table JK_BAY_HISTORY_DATAZ disable all triggers;
prompt Disabling triggers for JK_BAY_REAL_DATAZ...
alter table JK_BAY_REAL_DATAZ disable all triggers;
prompt Disabling triggers for JK_BAY_ROAD_CITY...
alter table JK_BAY_ROAD_CITY disable all triggers;
prompt Disabling triggers for JK_BAY_SUM_DATA...
alter table JK_BAY_SUM_DATA disable all triggers;
prompt Disabling triggers for JK_CALLCENTER_REAL_DATA...
alter table JK_CALLCENTER_REAL_DATA disable all triggers;
prompt Disabling triggers for JK_CD_HISTORY_DATA...
alter table JK_CD_HISTORY_DATA disable all triggers;
prompt Disabling triggers for JK_CD_REAL_DATA...
alter table JK_CD_REAL_DATA disable all triggers;
prompt Disabling triggers for JK_CMS_CONTROL...
alter table JK_CMS_CONTROL disable all triggers;
prompt Disabling triggers for JK_CMS_HISTORY_CONTENTS...
alter table JK_CMS_HISTORY_CONTENTS disable all triggers;
prompt Disabling triggers for JK_CMS_HISTORY_REAL_ITEMF...
alter table JK_CMS_HISTORY_REAL_ITEMF disable all triggers;
prompt Disabling triggers for JK_CMS_HISTORY_REAL_ITEMZ...
alter table JK_CMS_HISTORY_REAL_ITEMZ disable all triggers;
prompt Disabling triggers for JK_CMS_LOCK...
alter table JK_CMS_LOCK disable all triggers;
prompt Disabling triggers for JK_CMS_LOCK_HISTORY...
alter table JK_CMS_LOCK_HISTORY disable all triggers;
prompt Disabling triggers for JK_CMS_PLAY_ITEMF...
alter table JK_CMS_PLAY_ITEMF disable all triggers;
prompt Disabling triggers for JK_CMS_PLAY_ITEMZ...
alter table JK_CMS_PLAY_ITEMZ disable all triggers;
prompt Disabling triggers for JK_CMS_PRE_GROUPF...
alter table JK_CMS_PRE_GROUPF disable all triggers;
prompt Disabling triggers for JK_CMS_PRE_GROUPZ...
alter table JK_CMS_PRE_GROUPZ disable all triggers;
prompt Disabling triggers for JK_CMS_PRE_ITEMF...
alter table JK_CMS_PRE_ITEMF disable all triggers;
prompt Disabling triggers for JK_CMS_PRE_ITEMZ...
alter table JK_CMS_PRE_ITEMZ disable all triggers;
prompt Disabling triggers for JK_CMS_PROFILE...
alter table JK_CMS_PROFILE disable all triggers;
prompt Disabling triggers for JK_CMS_REAL_DATAZ...
alter table JK_CMS_REAL_DATAZ disable all triggers;
prompt Disabling triggers for JK_CMS_REAL_ITEMF...
alter table JK_CMS_REAL_ITEMF disable all triggers;
prompt Disabling triggers for JK_CMS_REAL_ITEMZ...
alter table JK_CMS_REAL_ITEMZ disable all triggers;
prompt Disabling triggers for JK_CMS_SUM_DATA...
alter table JK_CMS_SUM_DATA disable all triggers;
prompt Disabling triggers for JK_COVI_HISTORY_DATA...
alter table JK_COVI_HISTORY_DATA disable all triggers;
prompt Disabling triggers for JK_COVI_REAL_DATA...
alter table JK_COVI_REAL_DATA disable all triggers;
prompt Disabling triggers for JK_COVI_SUM_DATA...
alter table JK_COVI_SUM_DATA disable all triggers;
prompt Disabling triggers for JK_DBSY_TRANSPORT_TASK...
alter table JK_DBSY_TRANSPORT_TASK disable all triggers;
prompt Disabling triggers for JK_DEVICE_FAULT...
alter table JK_DEVICE_FAULT disable all triggers;
prompt Disabling triggers for JK_DEVICE_FAULT_REPORT...
alter table JK_DEVICE_FAULT_REPORT disable all triggers;
prompt Disabling triggers for JK_DEVICE_FAULT_SUM_DATA...
alter table JK_DEVICE_FAULT_SUM_DATA disable all triggers;
prompt Disabling triggers for JK_DEVICE_THRESHOLD...
alter table JK_DEVICE_THRESHOLD disable all triggers;
prompt Disabling triggers for JK_DEV_THRESHOLD...
alter table JK_DEV_THRESHOLD disable all triggers;
prompt Disabling triggers for JK_DEV_THRESHOLD_F...
alter table JK_DEV_THRESHOLD_F disable all triggers;
prompt Disabling triggers for JK_ET_HISTORY_DATA...
alter table JK_ET_HISTORY_DATA disable all triggers;
prompt Disabling triggers for JK_ET_REAL_DATA...
alter table JK_ET_REAL_DATA disable all triggers;
prompt Disabling triggers for JK_EXP_ROAD...
alter table JK_EXP_ROAD disable all triggers;
prompt Disabling triggers for JK_FB_CALLCENTER...
alter table JK_FB_CALLCENTER disable all triggers;
prompt Disabling triggers for JK_FB_HISTORY_DATA...
alter table JK_FB_HISTORY_DATA disable all triggers;
prompt Disabling triggers for JK_FB_REAL_DATA...
alter table JK_FB_REAL_DATA disable all triggers;
prompt Disabling triggers for JK_FB_SHORTMESSAGE...
alter table JK_FB_SHORTMESSAGE disable all triggers;
prompt Disabling triggers for JK_FILE_DATA_RELATION...
alter table JK_FILE_DATA_RELATION disable all triggers;
prompt Disabling triggers for JK_FILE_UPLOAD...
alter table JK_FILE_UPLOAD disable all triggers;
prompt Disabling triggers for JK_FOG_DEVICE_PROFILE...
alter table JK_FOG_DEVICE_PROFILE disable all triggers;
prompt Disabling triggers for JK_FOG_HISTORY_DATA...
alter table JK_FOG_HISTORY_DATA disable all triggers;
prompt Disabling triggers for JK_FOG_REAL_DATA...
alter table JK_FOG_REAL_DATA disable all triggers;
prompt Disabling triggers for JK_HT_HISTORY_DATA...
alter table JK_HT_HISTORY_DATA disable all triggers;
prompt Disabling triggers for JK_HT_REAL_DATA...
alter table JK_HT_REAL_DATA disable all triggers;
prompt Disabling triggers for JK_JET_HISTORY_DATA...
alter table JK_JET_HISTORY_DATA disable all triggers;
prompt Disabling triggers for JK_JET_REAL_DATA...
alter table JK_JET_REAL_DATA disable all triggers;
prompt Disabling triggers for JK_LS_HISTORY_DATA...
alter table JK_LS_HISTORY_DATA disable all triggers;
prompt Disabling triggers for JK_LS_REAL_DATA...
alter table JK_LS_REAL_DATA disable all triggers;
prompt Disabling triggers for JK_LT_HISTORY_DATA...
alter table JK_LT_HISTORY_DATA disable all triggers;
prompt Disabling triggers for JK_LT_REAL_DATA...
alter table JK_LT_REAL_DATA disable all triggers;
prompt Disabling triggers for JK_LUX_DEVICE_PROFILE...
alter table JK_LUX_DEVICE_PROFILE disable all triggers;
prompt Disabling triggers for JK_LUX_HISTORY_DATA...
alter table JK_LUX_HISTORY_DATA disable all triggers;
prompt Disabling triggers for JK_LUX_REAL_DATA...
alter table JK_LUX_REAL_DATA disable all triggers;
prompt Disabling triggers for JK_MESSAGE_FLOW...
alter table JK_MESSAGE_FLOW disable all triggers;
prompt Disabling triggers for JK_MESSAGE_PAPERCARD...
alter table JK_MESSAGE_PAPERCARD disable all triggers;
prompt Disabling triggers for JK_MESSAGE_PAPERCARD_DATE...
alter table JK_MESSAGE_PAPERCARD_DATE disable all triggers;
prompt Disabling triggers for JK_MESSAGE_PAPERCARD_NUMBER...
alter table JK_MESSAGE_PAPERCARD_NUMBER disable all triggers;
prompt Disabling triggers for JK_MESSAGE_SERVICEZONE...
alter table JK_MESSAGE_SERVICEZONE disable all triggers;
prompt Disabling triggers for JK_MESSAGE_SERVICEZONE_UPLOAD...
alter table JK_MESSAGE_SERVICEZONE_UPLOAD disable all triggers;
prompt Disabling triggers for JK_MSG_ASK_FOR...
alter table JK_MSG_ASK_FOR disable all triggers;
prompt Disabling triggers for JK_ORG_HIS2...
alter table JK_ORG_HIS2 disable all triggers;
prompt Disabling triggers for JK_ORG_STATUS_INFO...
alter table JK_ORG_STATUS_INFO disable all triggers;
prompt Disabling triggers for JK_ORG_STATUS_PUBLISH...
alter table JK_ORG_STATUS_PUBLISH disable all triggers;
prompt Disabling triggers for JK_ORG_STATUS_PUBLISH_HIS...
alter table JK_ORG_STATUS_PUBLISH_HIS disable all triggers;
prompt Disabling triggers for JK_PLCLOAD_DEVICE_PROFILE...
alter table JK_PLCLOAD_DEVICE_PROFILE disable all triggers;
prompt Disabling triggers for JK_POOL_HISTORY_DATA...
alter table JK_POOL_HISTORY_DATA disable all triggers;
prompt Disabling triggers for JK_POOL_REAL_DATA...
alter table JK_POOL_REAL_DATA disable all triggers;
prompt Disabling triggers for JK_PUMP_HISTORY_DATA...
alter table JK_PUMP_HISTORY_DATA disable all triggers;
prompt Disabling triggers for JK_PUMP_REAL_DATA...
alter table JK_PUMP_REAL_DATA disable all triggers;
prompt Disabling triggers for JK_RAC_HISTORY_DATA...
alter table JK_RAC_HISTORY_DATA disable all triggers;
prompt Disabling triggers for JK_RAC_REAL_DATA...
alter table JK_RAC_REAL_DATA disable all triggers;
prompt Disabling triggers for JK_RD_DEVICE_PROFILE...
alter table JK_RD_DEVICE_PROFILE disable all triggers;
prompt Disabling triggers for JK_RD_HISTORY_DATAF...
alter table JK_RD_HISTORY_DATAF disable all triggers;
prompt Disabling triggers for JK_RD_HISTORY_DATAZ...
alter table JK_RD_HISTORY_DATAZ disable all triggers;
prompt Disabling triggers for JK_RD_REAL_DATAF...
alter table JK_RD_REAL_DATAF disable all triggers;
prompt Disabling triggers for JK_RD_REAL_DATAZ...
alter table JK_RD_REAL_DATAZ disable all triggers;
prompt Disabling triggers for JK_RD_SUM_DATA...
alter table JK_RD_SUM_DATA disable all triggers;
prompt Disabling triggers for JK_TL_HISTORY_DATA...
alter table JK_TL_HISTORY_DATA disable all triggers;
prompt Disabling triggers for JK_TL_REAL_DATA...
alter table JK_TL_REAL_DATA disable all triggers;
prompt Disabling triggers for JK_TS_HISTORY_DATA...
alter table JK_TS_HISTORY_DATA disable all triggers;
prompt Disabling triggers for JK_TS_REAL_DATA...
alter table JK_TS_REAL_DATA disable all triggers;
prompt Disabling triggers for JK_TW_HISTORY_DATA...
alter table JK_TW_HISTORY_DATA disable all triggers;
prompt Disabling triggers for JK_TW_REAL_DATA...
alter table JK_TW_REAL_DATA disable all triggers;
prompt Disabling triggers for JK_VD_CHARTS...
alter table JK_VD_CHARTS disable all triggers;
prompt Disabling triggers for JK_VD_DEVICE_PROFILE...
alter table JK_VD_DEVICE_PROFILE disable all triggers;
prompt Disabling triggers for JK_VD_HISTORY_DATA1...
alter table JK_VD_HISTORY_DATA1 disable all triggers;
prompt Disabling triggers for JK_VD_SUM_DATA...
alter table JK_VD_SUM_DATA disable all triggers;
prompt Disabling triggers for JK_WS_DEVICE_PROFILE...
alter table JK_WS_DEVICE_PROFILE disable all triggers;
prompt Disabling triggers for JK_WS_HISTORY_DATA...
alter table JK_WS_HISTORY_DATA disable all triggers;
prompt Disabling triggers for JK_WS_HISTORY_STATUS...
alter table JK_WS_HISTORY_STATUS disable all triggers;
prompt Disabling triggers for JK_WS_REAL_DATA...
alter table JK_WS_REAL_DATA disable all triggers;
prompt Disabling triggers for JK_WS_REAL_STATUS...
alter table JK_WS_REAL_STATUS disable all triggers;
prompt Disabling triggers for MESSAGE_REMIND...
alter table MESSAGE_REMIND disable all triggers;
prompt Disabling triggers for M_MAP...
alter table M_MAP disable all triggers;
prompt Disabling triggers for M_OBJ...
alter table M_OBJ disable all triggers;
prompt Disabling triggers for OM_DCI_SERVICE_LOG...
alter table OM_DCI_SERVICE_LOG disable all triggers;
prompt Disabling triggers for OM_DCI_SYSTEM_LOG...
alter table OM_DCI_SYSTEM_LOG disable all triggers;
prompt Disabling triggers for SCR_EVENT_INFO1...
alter table SCR_EVENT_INFO1 disable all triggers;
prompt Disabling triggers for SCR_EVENT_TYPE...
alter table SCR_EVENT_TYPE disable all triggers;
prompt Disabling triggers for SERVICE_NODE...
alter table SERVICE_NODE disable all triggers;
prompt Disabling triggers for SMS_GROUP...
alter table SMS_GROUP disable all triggers;
prompt Disabling triggers for SMS_ORDER...
alter table SMS_ORDER disable all triggers;
prompt Disabling triggers for SMS_ORDER_2...
alter table SMS_ORDER_2 disable all triggers;
prompt Disabling triggers for SMS_USER_GROUP...
alter table SMS_USER_GROUP disable all triggers;
prompt Disabling triggers for TA_SEGMENT...
alter table TA_SEGMENT disable all triggers;
prompt Disabling triggers for TA_SEGMENT1...
alter table TA_SEGMENT1 disable all triggers;
prompt Disabling triggers for TA_SEGMENT_HISTORY_DATA...
alter table TA_SEGMENT_HISTORY_DATA disable all triggers;
prompt Disabling triggers for TA_SEGMENT_REAL_DATA...
alter table TA_SEGMENT_REAL_DATA disable all triggers;
prompt Disabling triggers for TC_DEVICE_CONTROLZ...
alter table TC_DEVICE_CONTROLZ disable all triggers;
prompt Disabling triggers for TC_DEVICE_CONTROLF...
alter table TC_DEVICE_CONTROLF disable all triggers;
prompt Disabling triggers for TK_CMS_CONTROL_SCOPE_TYPE...
alter table TK_CMS_CONTROL_SCOPE_TYPE disable all triggers;
prompt Disabling triggers for TK_CMS_ISSUE_PLAN_ACTION...
alter table TK_CMS_ISSUE_PLAN_ACTION disable all triggers;
prompt Disabling triggers for TK_CMS_ISSUE_PLAN_ACTIONF...
alter table TK_CMS_ISSUE_PLAN_ACTIONF disable all triggers;
prompt Disabling triggers for TK_CMS_ISSUE_PLAN_ORDER...
alter table TK_CMS_ISSUE_PLAN_ORDER disable all triggers;
prompt Disabling triggers for TK_DEAL_PLAN...
alter table TK_DEAL_PLAN disable all triggers;
prompt Disabling triggers for TK_DEAL_PLAN_ORDER_UNIT...
alter table TK_DEAL_PLAN_ORDER_UNIT disable all triggers;
prompt Disabling triggers for TK_DEAL_PLAN_STEP...
alter table TK_DEAL_PLAN_STEP disable all triggers;
prompt Disabling triggers for TK_EVENT...
alter table TK_EVENT disable all triggers;
prompt Disabling triggers for TK_EVENT_F...
alter table TK_EVENT_F disable all triggers;
prompt Disabling triggers for TK_EVENT_INFO_TPL...
alter table TK_EVENT_INFO_TPL disable all triggers;
prompt Disabling triggers for TK_FOG_CONTROL_SCOPE_TYPE...
alter table TK_FOG_CONTROL_SCOPE_TYPE disable all triggers;
prompt Disabling triggers for TK_FOG_PLAN_ACTION...
alter table TK_FOG_PLAN_ACTION disable all triggers;
prompt Disabling triggers for TK_FOG_PLAN_ORDER...
alter table TK_FOG_PLAN_ORDER disable all triggers;
prompt Disabling triggers for TK_LIGHT_PLAN_ACTION...
alter table TK_LIGHT_PLAN_ACTION disable all triggers;
prompt Disabling triggers for TK_LIGHT_PLAN_ORDER...
alter table TK_LIGHT_PLAN_ORDER disable all triggers;
prompt Disabling triggers for TK_MAN_ISSUE_PLAN_ACTION...
alter table TK_MAN_ISSUE_PLAN_ACTION disable all triggers;
prompt Disabling triggers for TK_MAN_ISSUE_PLAN_ACTIONF...
alter table TK_MAN_ISSUE_PLAN_ACTIONF disable all triggers;
prompt Disabling triggers for TK_MAN_ISSUE_PLAN_ORDER...
alter table TK_MAN_ISSUE_PLAN_ORDER disable all triggers;
prompt Disabling triggers for TK_PLAN_ACTION_TYPE...
alter table TK_PLAN_ACTION_TYPE disable all triggers;
prompt Disabling triggers for TK_PLAN_INDEX...
alter table TK_PLAN_INDEX disable all triggers;
prompt Disabling triggers for TK_PLAN_STEP...
alter table TK_PLAN_STEP disable all triggers;
prompt Disabling triggers for TK_PLAN_STEP_ACTION...
alter table TK_PLAN_STEP_ACTION disable all triggers;
prompt Disabling triggers for TK_PUBLIC_ISSUE_PLAN_ACTION...
alter table TK_PUBLIC_ISSUE_PLAN_ACTION disable all triggers;
prompt Disabling triggers for TK_PUBLIC_ISSUE_PLAN_ORDER...
alter table TK_PUBLIC_ISSUE_PLAN_ORDER disable all triggers;
prompt Disabling triggers for TK_SERVICESTATION_CONTROL_TYPE...
alter table TK_SERVICESTATION_CONTROL_TYPE disable all triggers;
prompt Disabling triggers for TK_SERVICESTATION_PLAN_ACTION...
alter table TK_SERVICESTATION_PLAN_ACTION disable all triggers;
prompt Disabling triggers for TK_SERVICESTATION_PLAN_ACTIONF...
alter table TK_SERVICESTATION_PLAN_ACTIONF disable all triggers;
prompt Disabling triggers for TK_SERVICESTATION_PLAN_ORDER...
alter table TK_SERVICESTATION_PLAN_ORDER disable all triggers;
prompt Disabling triggers for TK_TOLL_CONTROL_SCOPE_TYPE...
alter table TK_TOLL_CONTROL_SCOPE_TYPE disable all triggers;
prompt Disabling triggers for TK_TOLL_PLAN_ACTION...
alter table TK_TOLL_PLAN_ACTION disable all triggers;
prompt Disabling triggers for TK_TOLL_PLAN_ACTIONF...
alter table TK_TOLL_PLAN_ACTIONF disable all triggers;
prompt Disabling triggers for TK_TOLL_PLAN_ORDER...
alter table TK_TOLL_PLAN_ORDER disable all triggers;
prompt Disabling triggers for TK_VIDEO_CONTROL_SCOPE_TYPE...
alter table TK_VIDEO_CONTROL_SCOPE_TYPE disable all triggers;
prompt Disabling triggers for TK_VIDEO_SCREEN_PLAN_ACTION...
alter table TK_VIDEO_SCREEN_PLAN_ACTION disable all triggers;
prompt Disabling triggers for TK_VIDEO_SCREEN_PLAN_ORDER...
alter table TK_VIDEO_SCREEN_PLAN_ORDER disable all triggers;
prompt Disabling triggers for VD_DESC...
alter table VD_DESC disable all triggers;
prompt Disabling triggers for VIDEOINCHANNEL...
alter table VIDEOINCHANNEL disable all triggers;
prompt Disabling triggers for VIDEO_DEVICE_PROFILE...
alter table VIDEO_DEVICE_PROFILE disable all triggers;
prompt Disabling triggers for VIDEO_EVENT_DEVICE_PROFILE...
alter table VIDEO_EVENT_DEVICE_PROFILE disable all triggers;
prompt Disabling triggers for VIDEO_EVENT_IN_CAMERA...
alter table VIDEO_EVENT_IN_CAMERA disable all triggers;
prompt Disabling triggers for VOICE_FILE...
alter table VOICE_FILE disable all triggers;
prompt Disabling triggers for VS_CODEC_DEVICE...
alter table VS_CODEC_DEVICE disable all triggers; 



prompt Loading ALARM_INFO...
prompt Table is empty
prompt Loading ALARM_INFO_GRADE...
prompt Table is empty
prompt Loading ALARM_INFO_OUTLINE...
prompt Table is empty
prompt Loading ALARM_INFO_PUBLISH_RECORD...
prompt Table is empty
prompt Loading APP_CAMERA_PROFILE...
prompt Table is empty
prompt Loading APP_CCTV_COLLECTION...
prompt Table is empty
prompt Loading APP_CCTV_EMERGENCY...
prompt Table is empty
prompt Loading APP_CCTV_IN_ROLE...
prompt Table is empty
prompt Loading APP_CCTV_ROAD...
prompt Table is empty
prompt Loading CCTV_CAMERA_LIVE...
prompt Table is empty
prompt Loading CCTV_CAMERA_PROFILE...
prompt Table is empty
prompt Loading CCTV_CAMERA_SWITCH_MAPPING...
prompt Table is empty
prompt Loading CCTV_CAMERA_SWITCH_TASK...
prompt Table is empty
prompt Loading CCTV_DECODER_AREA_MAPPING...
prompt Table is empty
prompt Loading CCTV_DECODER_PROFILE...
prompt Table is empty
prompt Loading CCTV_SERVER_PROFILE...
prompt Table is empty
prompt Loading DEPTREE...
prompt Table is empty
prompt Loading DEVICE_HISTORY_ERRSTATU...
prompt Table is empty
prompt Loading DEVICE_MATCH_CAM...
prompt Table is empty
prompt Loading DEVICE_PROFILE...
prompt Table is empty
prompt Loading DEVICE_REAL_DATA...
prompt Table is empty
prompt Loading DEVICE_REAL_ERRSTATU...
prompt Table is empty
prompt Loading HANBANG_ALARM...
prompt Table is empty
prompt Loading HANBANG_EVERT_MAPING...
prompt Table is empty
prompt Loading JK_BAY_ACCESS_RECORD...
prompt Table is empty
prompt Loading JK_BAY_DEVICE_POSITION...
prompt Table is empty
prompt Loading JK_BAY_DEVICE_PROFILE...
prompt Table is empty
prompt Loading JK_BAY_HISTORY_DATA1...
prompt Table is empty
prompt Loading JK_BAY_HISTORY_DATAZ...
prompt Table is empty
prompt Loading JK_BAY_REAL_DATAZ...
prompt Table is empty
prompt Loading JK_BAY_ROAD_CITY...
prompt Table is empty
prompt Loading JK_BAY_SUM_DATA...
prompt Table is empty
prompt Loading JK_CALLCENTER_REAL_DATA...
prompt Table is empty
prompt Loading JK_CD_HISTORY_DATA...
prompt Table is empty
prompt Loading JK_CD_REAL_DATA...
prompt Table is empty
prompt Loading JK_CMS_CONTROL...
prompt Table is empty
prompt Loading JK_CMS_HISTORY_CONTENTS...
prompt Table is empty
prompt Loading JK_CMS_HISTORY_REAL_ITEMF...
prompt Table is empty
prompt Loading JK_CMS_HISTORY_REAL_ITEMZ...
prompt Table is empty
prompt Loading JK_CMS_LOCK...
prompt Table is empty
prompt Loading JK_CMS_LOCK_HISTORY...
prompt Table is empty
prompt Loading JK_CMS_PLAY_ITEMF...
prompt Table is empty
prompt Loading JK_CMS_PLAY_ITEMZ...
prompt Table is empty
prompt Loading JK_CMS_PRE_GROUPF...
prompt Table is empty
prompt Loading JK_CMS_PRE_GROUPZ...
prompt Table is empty
prompt Loading JK_CMS_PRE_ITEMF...
prompt Table is empty
prompt Loading JK_CMS_PRE_ITEMZ...
prompt Table is empty
prompt Loading JK_CMS_PROFILE...
prompt Table is empty
prompt Loading JK_CMS_REAL_DATAZ...
prompt Table is empty
prompt Loading JK_CMS_REAL_ITEMF...
prompt Table is empty
prompt Loading JK_CMS_REAL_ITEMZ...
prompt Table is empty
prompt Loading JK_CMS_SUM_DATA...
prompt Table is empty
prompt Loading JK_COVI_HISTORY_DATA...
prompt Table is empty
prompt Loading JK_COVI_REAL_DATA...
prompt Table is empty
prompt Loading JK_COVI_SUM_DATA...
prompt Table is empty
prompt Loading JK_DBSY_TRANSPORT_TASK...
prompt Table is empty
prompt Loading JK_DEVICE_FAULT...
prompt Table is empty
prompt Loading JK_DEVICE_FAULT_REPORT...
prompt Table is empty
prompt Loading JK_DEVICE_FAULT_SUM_DATA...
prompt Table is empty
prompt Loading JK_DEVICE_THRESHOLD...
prompt Table is empty
prompt Loading JK_DEV_THRESHOLD...
prompt Table is empty
prompt Loading JK_DEV_THRESHOLD_F...
prompt Table is empty
prompt Loading JK_ET_HISTORY_DATA...
prompt Table is empty
prompt Loading JK_ET_REAL_DATA...
prompt Table is empty
prompt Loading JK_EXP_ROAD...
prompt Table is empty
prompt Loading JK_FB_CALLCENTER...
prompt Table is empty
prompt Loading JK_FB_HISTORY_DATA...
prompt Table is empty
prompt Loading JK_FB_REAL_DATA...
prompt Table is empty
prompt Loading JK_FB_SHORTMESSAGE...
prompt Table is empty
prompt Loading JK_FILE_DATA_RELATION...
prompt Table is empty
prompt Loading JK_FILE_UPLOAD...
prompt Table is empty
prompt Loading JK_FOG_DEVICE_PROFILE...
prompt Table is empty
prompt Loading JK_FOG_HISTORY_DATA...
prompt Table is empty
prompt Loading JK_FOG_REAL_DATA...
prompt Table is empty
prompt Loading JK_HT_HISTORY_DATA...
prompt Table is empty
prompt Loading JK_HT_REAL_DATA...
prompt Table is empty
prompt Loading JK_JET_HISTORY_DATA...
prompt Table is empty
prompt Loading JK_JET_REAL_DATA...
prompt Table is empty
prompt Loading JK_LS_HISTORY_DATA...
prompt Table is empty
prompt Loading JK_LS_REAL_DATA...
prompt Table is empty
prompt Loading JK_LT_HISTORY_DATA...
prompt Table is empty
prompt Loading JK_LT_REAL_DATA...
prompt Table is empty
prompt Loading JK_LUX_DEVICE_PROFILE...
prompt Table is empty
prompt Loading JK_LUX_HISTORY_DATA...
prompt Table is empty
prompt Loading JK_LUX_REAL_DATA...
prompt Table is empty
prompt Loading JK_MESSAGE_FLOW...
prompt Table is empty
prompt Loading JK_MESSAGE_PAPERCARD...
prompt Table is empty
prompt Loading JK_MESSAGE_PAPERCARD_DATE...
prompt Table is empty
prompt Loading JK_MESSAGE_PAPERCARD_NUMBER...
prompt Table is empty
prompt Loading JK_MESSAGE_SERVICEZONE...
prompt Table is empty
prompt Loading JK_MESSAGE_SERVICEZONE_UPLOAD...
prompt Table is empty
prompt Loading JK_MSG_ASK_FOR...
prompt Table is empty
prompt Loading JK_ORG_HIS2...
prompt Table is empty
prompt Loading JK_ORG_STATUS_INFO...
prompt Table is empty
prompt Loading JK_ORG_STATUS_PUBLISH...
prompt Table is empty
prompt Loading JK_ORG_STATUS_PUBLISH_HIS...
prompt Table is empty
prompt Loading JK_PLCLOAD_DEVICE_PROFILE...
prompt Table is empty
prompt Loading JK_POOL_HISTORY_DATA...
prompt Table is empty
prompt Loading JK_POOL_REAL_DATA...
prompt Table is empty
prompt Loading JK_PUMP_HISTORY_DATA...
prompt Table is empty
prompt Loading JK_PUMP_REAL_DATA...
prompt Table is empty
prompt Loading JK_RAC_HISTORY_DATA...
prompt Table is empty
prompt Loading JK_RAC_REAL_DATA...
prompt Table is empty
prompt Loading JK_RD_DEVICE_PROFILE...
prompt Table is empty
prompt Loading JK_RD_HISTORY_DATAF...
prompt Table is empty
prompt Loading JK_RD_HISTORY_DATAZ...
prompt Table is empty
prompt Loading JK_RD_REAL_DATAF...
prompt Table is empty
prompt Loading JK_RD_REAL_DATAZ...
prompt Table is empty
prompt Loading JK_RD_SUM_DATA...
prompt Table is empty
prompt Loading JK_TL_HISTORY_DATA...
prompt Table is empty
prompt Loading JK_TL_REAL_DATA...
prompt Table is empty
prompt Loading JK_TS_HISTORY_DATA...
prompt Table is empty
prompt Loading JK_TS_REAL_DATA...
prompt Table is empty
prompt Loading JK_TW_HISTORY_DATA...
prompt Table is empty
prompt Loading JK_TW_REAL_DATA...
prompt Table is empty
prompt Loading JK_VD_CHARTS...
prompt Table is empty
prompt Loading JK_VD_DEVICE_PROFILE...
prompt Table is empty
prompt Loading JK_VD_HISTORY_DATA1...
prompt Table is empty
prompt Loading JK_VD_SUM_DATA...
prompt Table is empty
prompt Loading JK_WS_DEVICE_PROFILE...
prompt Table is empty
prompt Loading JK_WS_HISTORY_DATA...
prompt Table is empty
prompt Loading JK_WS_HISTORY_STATUS...
prompt Table is empty
prompt Loading JK_WS_REAL_DATA...
prompt Table is empty
prompt Loading JK_WS_REAL_STATUS...
prompt Table is empty
prompt Loading MESSAGE_REMIND...
prompt Table is empty
prompt Loading M_MAP...
prompt Table is empty
prompt Loading M_OBJ...
prompt Table is empty
prompt Loading OM_DCI_SERVICE_LOG...
prompt Table is empty
prompt Loading OM_DCI_SYSTEM_LOG...
prompt Table is empty
prompt Loading SCR_EVENT_INFO1...
prompt Table is empty
prompt Loading SCR_EVENT_TYPE...
prompt Table is empty
prompt Loading SERVICE_NODE...
prompt Table is empty
prompt Loading SMS_GROUP...
prompt Table is empty
prompt Loading SMS_ORDER...
prompt Table is empty
prompt Loading SMS_ORDER_2...
prompt Table is empty
prompt Loading SMS_USER_GROUP...
prompt Table is empty
prompt Loading TA_SEGMENT...
prompt Table is empty
prompt Loading TA_SEGMENT1...
prompt Table is empty
prompt Loading TA_SEGMENT_HISTORY_DATA...
prompt Table is empty
prompt Loading TA_SEGMENT_REAL_DATA...
prompt Table is empty
prompt Loading TC_DEVICE_CONTROLZ...
prompt Table is empty
prompt Loading TC_DEVICE_CONTROLF...
prompt Table is empty
prompt Loading TK_CMS_CONTROL_SCOPE_TYPE...
prompt Table is empty
prompt Loading TK_CMS_ISSUE_PLAN_ACTION...
prompt Table is empty
prompt Loading TK_CMS_ISSUE_PLAN_ACTIONF...
prompt Table is empty
prompt Loading TK_CMS_ISSUE_PLAN_ORDER...
prompt Table is empty
prompt Loading TK_DEAL_PLAN...
prompt Table is empty
prompt Loading TK_DEAL_PLAN_ORDER_UNIT...
prompt Table is empty
prompt Loading TK_DEAL_PLAN_STEP...
prompt Table is empty
prompt Loading TK_EVENT...
prompt Table is empty
prompt Loading TK_EVENT_F...
prompt Table is empty
prompt Loading TK_EVENT_INFO_TPL...
prompt Table is empty
prompt Loading TK_FOG_CONTROL_SCOPE_TYPE...
prompt Table is empty
prompt Loading TK_FOG_PLAN_ACTION...
prompt Table is empty
prompt Loading TK_FOG_PLAN_ORDER...
prompt Table is empty
prompt Loading TK_LIGHT_PLAN_ACTION...
prompt Table is empty
prompt Loading TK_LIGHT_PLAN_ORDER...
prompt Table is empty
prompt Loading TK_MAN_ISSUE_PLAN_ACTION...
prompt Table is empty
prompt Loading TK_MAN_ISSUE_PLAN_ACTIONF...
prompt Table is empty
prompt Loading TK_MAN_ISSUE_PLAN_ORDER...
prompt Table is empty
prompt Loading TK_PLAN_ACTION_TYPE...
prompt Table is empty
prompt Loading TK_PLAN_INDEX...
prompt Table is empty
prompt Loading TK_PLAN_STEP...
prompt Table is empty
prompt Loading TK_PLAN_STEP_ACTION...
prompt Table is empty
prompt Loading TK_PUBLIC_ISSUE_PLAN_ACTION...
prompt Table is empty
prompt Loading TK_PUBLIC_ISSUE_PLAN_ORDER...
prompt Table is empty
prompt Loading TK_SERVICESTATION_CONTROL_TYPE...
prompt Table is empty
prompt Loading TK_SERVICESTATION_PLAN_ACTION...
prompt Table is empty
prompt Loading TK_SERVICESTATION_PLAN_ACTIONF...
prompt Table is empty
prompt Loading TK_SERVICESTATION_PLAN_ORDER...
prompt Table is empty
prompt Loading TK_TOLL_CONTROL_SCOPE_TYPE...
prompt Table is empty
prompt Loading TK_TOLL_PLAN_ACTION...
prompt Table is empty
prompt Loading TK_TOLL_PLAN_ACTIONF...
prompt Table is empty
prompt Loading TK_TOLL_PLAN_ORDER...
prompt Table is empty
prompt Loading TK_VIDEO_CONTROL_SCOPE_TYPE...
prompt Table is empty
prompt Loading TK_VIDEO_SCREEN_PLAN_ACTION...
prompt Table is empty
prompt Loading TK_VIDEO_SCREEN_PLAN_ORDER...
prompt Table is empty
prompt Loading VD_DESC...
prompt Table is empty
prompt Loading VIDEOINCHANNEL...
prompt Table is empty
prompt Loading VIDEO_DEVICE_PROFILE...
prompt Table is empty
prompt Loading VIDEO_EVENT_DEVICE_PROFILE...
prompt Table is empty
prompt Loading VIDEO_EVENT_IN_CAMERA...
prompt Table is empty
prompt Loading VOICE_FILE...
prompt Table is empty
prompt Loading VS_CODEC_DEVICE...
prompt Table is empty
 
prompt Enabling triggers for ALARM_INFO...
alter table ALARM_INFO enable all triggers;
prompt Enabling triggers for ALARM_INFO_GRADE...
alter table ALARM_INFO_GRADE enable all triggers;
prompt Enabling triggers for ALARM_INFO_OUTLINE...
alter table ALARM_INFO_OUTLINE enable all triggers;
prompt Enabling triggers for ALARM_INFO_PUBLISH_RECORD...
alter table ALARM_INFO_PUBLISH_RECORD enable all triggers;
prompt Enabling triggers for APP_CAMERA_PROFILE...
alter table APP_CAMERA_PROFILE enable all triggers;
prompt Enabling triggers for APP_CCTV_COLLECTION...
alter table APP_CCTV_COLLECTION enable all triggers;
prompt Enabling triggers for APP_CCTV_EMERGENCY...
alter table APP_CCTV_EMERGENCY enable all triggers;
prompt Enabling triggers for APP_CCTV_IN_ROLE...
alter table APP_CCTV_IN_ROLE enable all triggers;
prompt Enabling triggers for APP_CCTV_ROAD...
alter table APP_CCTV_ROAD enable all triggers;
prompt Enabling triggers for CCTV_CAMERA_LIVE...
alter table CCTV_CAMERA_LIVE enable all triggers;
prompt Enabling triggers for CCTV_CAMERA_PROFILE...
alter table CCTV_CAMERA_PROFILE enable all triggers;
prompt Enabling triggers for CCTV_CAMERA_SWITCH_MAPPING...
alter table CCTV_CAMERA_SWITCH_MAPPING enable all triggers;
prompt Enabling triggers for CCTV_CAMERA_SWITCH_TASK...
alter table CCTV_CAMERA_SWITCH_TASK enable all triggers;
prompt Enabling triggers for CCTV_DECODER_AREA_MAPPING...
alter table CCTV_DECODER_AREA_MAPPING enable all triggers;
prompt Enabling triggers for CCTV_DECODER_PROFILE...
alter table CCTV_DECODER_PROFILE enable all triggers;
prompt Enabling triggers for CCTV_SERVER_PROFILE...
alter table CCTV_SERVER_PROFILE enable all triggers;
prompt Enabling triggers for DEPTREE...
alter table DEPTREE enable all triggers;
prompt Enabling triggers for DEVICE_HISTORY_ERRSTATU...
alter table DEVICE_HISTORY_ERRSTATU enable all triggers;
prompt Enabling triggers for DEVICE_MATCH_CAM...
alter table DEVICE_MATCH_CAM enable all triggers;
prompt Enabling triggers for DEVICE_PROFILE...
alter table DEVICE_PROFILE enable all triggers;
prompt Enabling triggers for DEVICE_REAL_DATA...
alter table DEVICE_REAL_DATA enable all triggers;
prompt Enabling triggers for DEVICE_REAL_ERRSTATU...
alter table DEVICE_REAL_ERRSTATU enable all triggers;
prompt Enabling triggers for HANBANG_ALARM...
alter table HANBANG_ALARM enable all triggers;
prompt Enabling triggers for HANBANG_EVERT_MAPING...
alter table HANBANG_EVERT_MAPING enable all triggers;
prompt Enabling triggers for JK_BAY_ACCESS_RECORD...
alter table JK_BAY_ACCESS_RECORD enable all triggers;
prompt Enabling triggers for JK_BAY_DEVICE_POSITION...
alter table JK_BAY_DEVICE_POSITION enable all triggers;
prompt Enabling triggers for JK_BAY_DEVICE_PROFILE...
alter table JK_BAY_DEVICE_PROFILE enable all triggers;
prompt Enabling triggers for JK_BAY_HISTORY_DATA1...
alter table JK_BAY_HISTORY_DATA1 enable all triggers;
prompt Enabling triggers for JK_BAY_HISTORY_DATAZ...
alter table JK_BAY_HISTORY_DATAZ enable all triggers;
prompt Enabling triggers for JK_BAY_REAL_DATAZ...
alter table JK_BAY_REAL_DATAZ enable all triggers;
prompt Enabling triggers for JK_BAY_ROAD_CITY...
alter table JK_BAY_ROAD_CITY enable all triggers;
prompt Enabling triggers for JK_BAY_SUM_DATA...
alter table JK_BAY_SUM_DATA enable all triggers;
prompt Enabling triggers for JK_CALLCENTER_REAL_DATA...
alter table JK_CALLCENTER_REAL_DATA enable all triggers;
prompt Enabling triggers for JK_CD_HISTORY_DATA...
alter table JK_CD_HISTORY_DATA enable all triggers;
prompt Enabling triggers for JK_CD_REAL_DATA...
alter table JK_CD_REAL_DATA enable all triggers;
prompt Enabling triggers for JK_CMS_CONTROL...
alter table JK_CMS_CONTROL enable all triggers;
prompt Enabling triggers for JK_CMS_HISTORY_CONTENTS...
alter table JK_CMS_HISTORY_CONTENTS enable all triggers;
prompt Enabling triggers for JK_CMS_HISTORY_REAL_ITEMF...
alter table JK_CMS_HISTORY_REAL_ITEMF enable all triggers;
prompt Enabling triggers for JK_CMS_HISTORY_REAL_ITEMZ...
alter table JK_CMS_HISTORY_REAL_ITEMZ enable all triggers;
prompt Enabling triggers for JK_CMS_LOCK...
alter table JK_CMS_LOCK enable all triggers;
prompt Enabling triggers for JK_CMS_LOCK_HISTORY...
alter table JK_CMS_LOCK_HISTORY enable all triggers;
prompt Enabling triggers for JK_CMS_PLAY_ITEMF...
alter table JK_CMS_PLAY_ITEMF enable all triggers;
prompt Enabling triggers for JK_CMS_PLAY_ITEMZ...
alter table JK_CMS_PLAY_ITEMZ enable all triggers;
prompt Enabling triggers for JK_CMS_PRE_GROUPF...
alter table JK_CMS_PRE_GROUPF enable all triggers;
prompt Enabling triggers for JK_CMS_PRE_GROUPZ...
alter table JK_CMS_PRE_GROUPZ enable all triggers;
prompt Enabling triggers for JK_CMS_PRE_ITEMF...
alter table JK_CMS_PRE_ITEMF enable all triggers;
prompt Enabling triggers for JK_CMS_PRE_ITEMZ...
alter table JK_CMS_PRE_ITEMZ enable all triggers;
prompt Enabling triggers for JK_CMS_PROFILE...
alter table JK_CMS_PROFILE enable all triggers;
prompt Enabling triggers for JK_CMS_REAL_DATAZ...
alter table JK_CMS_REAL_DATAZ enable all triggers;
prompt Enabling triggers for JK_CMS_REAL_ITEMF...
alter table JK_CMS_REAL_ITEMF enable all triggers;
prompt Enabling triggers for JK_CMS_REAL_ITEMZ...
alter table JK_CMS_REAL_ITEMZ enable all triggers;
prompt Enabling triggers for JK_CMS_SUM_DATA...
alter table JK_CMS_SUM_DATA enable all triggers;
prompt Enabling triggers for JK_COVI_HISTORY_DATA...
alter table JK_COVI_HISTORY_DATA enable all triggers;
prompt Enabling triggers for JK_COVI_REAL_DATA...
alter table JK_COVI_REAL_DATA enable all triggers;
prompt Enabling triggers for JK_COVI_SUM_DATA...
alter table JK_COVI_SUM_DATA enable all triggers;
prompt Enabling triggers for JK_DBSY_TRANSPORT_TASK...
alter table JK_DBSY_TRANSPORT_TASK enable all triggers;
prompt Enabling triggers for JK_DEVICE_FAULT...
alter table JK_DEVICE_FAULT enable all triggers;
prompt Enabling triggers for JK_DEVICE_FAULT_REPORT...
alter table JK_DEVICE_FAULT_REPORT enable all triggers;
prompt Enabling triggers for JK_DEVICE_FAULT_SUM_DATA...
alter table JK_DEVICE_FAULT_SUM_DATA enable all triggers;
prompt Enabling triggers for JK_DEVICE_THRESHOLD...
alter table JK_DEVICE_THRESHOLD enable all triggers;
prompt Enabling triggers for JK_DEV_THRESHOLD...
alter table JK_DEV_THRESHOLD enable all triggers;
prompt Enabling triggers for JK_DEV_THRESHOLD_F...
alter table JK_DEV_THRESHOLD_F enable all triggers;
prompt Enabling triggers for JK_ET_HISTORY_DATA...
alter table JK_ET_HISTORY_DATA enable all triggers;
prompt Enabling triggers for JK_ET_REAL_DATA...
alter table JK_ET_REAL_DATA enable all triggers;
prompt Enabling triggers for JK_EXP_ROAD...
alter table JK_EXP_ROAD enable all triggers;
prompt Enabling triggers for JK_FB_CALLCENTER...
alter table JK_FB_CALLCENTER enable all triggers;
prompt Enabling triggers for JK_FB_HISTORY_DATA...
alter table JK_FB_HISTORY_DATA enable all triggers;
prompt Enabling triggers for JK_FB_REAL_DATA...
alter table JK_FB_REAL_DATA enable all triggers;
prompt Enabling triggers for JK_FB_SHORTMESSAGE...
alter table JK_FB_SHORTMESSAGE enable all triggers;
prompt Enabling triggers for JK_FILE_DATA_RELATION...
alter table JK_FILE_DATA_RELATION enable all triggers;
prompt Enabling triggers for JK_FILE_UPLOAD...
alter table JK_FILE_UPLOAD enable all triggers;
prompt Enabling triggers for JK_FOG_DEVICE_PROFILE...
alter table JK_FOG_DEVICE_PROFILE enable all triggers;
prompt Enabling triggers for JK_FOG_HISTORY_DATA...
alter table JK_FOG_HISTORY_DATA enable all triggers;
prompt Enabling triggers for JK_FOG_REAL_DATA...
alter table JK_FOG_REAL_DATA enable all triggers;
prompt Enabling triggers for JK_HT_HISTORY_DATA...
alter table JK_HT_HISTORY_DATA enable all triggers;
prompt Enabling triggers for JK_HT_REAL_DATA...
alter table JK_HT_REAL_DATA enable all triggers;
prompt Enabling triggers for JK_JET_HISTORY_DATA...
alter table JK_JET_HISTORY_DATA enable all triggers;
prompt Enabling triggers for JK_JET_REAL_DATA...
alter table JK_JET_REAL_DATA enable all triggers;
prompt Enabling triggers for JK_LS_HISTORY_DATA...
alter table JK_LS_HISTORY_DATA enable all triggers;
prompt Enabling triggers for JK_LS_REAL_DATA...
alter table JK_LS_REAL_DATA enable all triggers;
prompt Enabling triggers for JK_LT_HISTORY_DATA...
alter table JK_LT_HISTORY_DATA enable all triggers;
prompt Enabling triggers for JK_LT_REAL_DATA...
alter table JK_LT_REAL_DATA enable all triggers;
prompt Enabling triggers for JK_LUX_DEVICE_PROFILE...
alter table JK_LUX_DEVICE_PROFILE enable all triggers;
prompt Enabling triggers for JK_LUX_HISTORY_DATA...
alter table JK_LUX_HISTORY_DATA enable all triggers;
prompt Enabling triggers for JK_LUX_REAL_DATA...
alter table JK_LUX_REAL_DATA enable all triggers;
prompt Enabling triggers for JK_MESSAGE_FLOW...
alter table JK_MESSAGE_FLOW enable all triggers;
prompt Enabling triggers for JK_MESSAGE_PAPERCARD...
alter table JK_MESSAGE_PAPERCARD enable all triggers;
prompt Enabling triggers for JK_MESSAGE_PAPERCARD_DATE...
alter table JK_MESSAGE_PAPERCARD_DATE enable all triggers;
prompt Enabling triggers for JK_MESSAGE_PAPERCARD_NUMBER...
alter table JK_MESSAGE_PAPERCARD_NUMBER enable all triggers;
prompt Enabling triggers for JK_MESSAGE_SERVICEZONE...
alter table JK_MESSAGE_SERVICEZONE enable all triggers;
prompt Enabling triggers for JK_MESSAGE_SERVICEZONE_UPLOAD...
alter table JK_MESSAGE_SERVICEZONE_UPLOAD enable all triggers;
prompt Enabling triggers for JK_MSG_ASK_FOR...
alter table JK_MSG_ASK_FOR enable all triggers;
prompt Enabling triggers for JK_ORG_HIS2...
alter table JK_ORG_HIS2 enable all triggers;
prompt Enabling triggers for JK_ORG_STATUS_INFO...
alter table JK_ORG_STATUS_INFO enable all triggers;
prompt Enabling triggers for JK_ORG_STATUS_PUBLISH...
alter table JK_ORG_STATUS_PUBLISH enable all triggers;
prompt Enabling triggers for JK_ORG_STATUS_PUBLISH_HIS...
alter table JK_ORG_STATUS_PUBLISH_HIS enable all triggers;
prompt Enabling triggers for JK_PLCLOAD_DEVICE_PROFILE...
alter table JK_PLCLOAD_DEVICE_PROFILE enable all triggers;
prompt Enabling triggers for JK_POOL_HISTORY_DATA...
alter table JK_POOL_HISTORY_DATA enable all triggers;
prompt Enabling triggers for JK_POOL_REAL_DATA...
alter table JK_POOL_REAL_DATA enable all triggers;
prompt Enabling triggers for JK_PUMP_HISTORY_DATA...
alter table JK_PUMP_HISTORY_DATA enable all triggers;
prompt Enabling triggers for JK_PUMP_REAL_DATA...
alter table JK_PUMP_REAL_DATA enable all triggers;
prompt Enabling triggers for JK_RAC_HISTORY_DATA...
alter table JK_RAC_HISTORY_DATA enable all triggers;
prompt Enabling triggers for JK_RAC_REAL_DATA...
alter table JK_RAC_REAL_DATA enable all triggers;
prompt Enabling triggers for JK_RD_DEVICE_PROFILE...
alter table JK_RD_DEVICE_PROFILE enable all triggers;
prompt Enabling triggers for JK_RD_HISTORY_DATAF...
alter table JK_RD_HISTORY_DATAF enable all triggers;
prompt Enabling triggers for JK_RD_HISTORY_DATAZ...
alter table JK_RD_HISTORY_DATAZ enable all triggers;
prompt Enabling triggers for JK_RD_REAL_DATAF...
alter table JK_RD_REAL_DATAF enable all triggers;
prompt Enabling triggers for JK_RD_REAL_DATAZ...
alter table JK_RD_REAL_DATAZ enable all triggers;
prompt Enabling triggers for JK_RD_SUM_DATA...
alter table JK_RD_SUM_DATA enable all triggers;
prompt Enabling triggers for JK_TL_HISTORY_DATA...
alter table JK_TL_HISTORY_DATA enable all triggers;
prompt Enabling triggers for JK_TL_REAL_DATA...
alter table JK_TL_REAL_DATA enable all triggers;
prompt Enabling triggers for JK_TS_HISTORY_DATA...
alter table JK_TS_HISTORY_DATA enable all triggers;
prompt Enabling triggers for JK_TS_REAL_DATA...
alter table JK_TS_REAL_DATA enable all triggers;
prompt Enabling triggers for JK_TW_HISTORY_DATA...
alter table JK_TW_HISTORY_DATA enable all triggers;
prompt Enabling triggers for JK_TW_REAL_DATA...
alter table JK_TW_REAL_DATA enable all triggers;
prompt Enabling triggers for JK_VD_CHARTS...
alter table JK_VD_CHARTS enable all triggers;
prompt Enabling triggers for JK_VD_DEVICE_PROFILE...
alter table JK_VD_DEVICE_PROFILE enable all triggers;
prompt Enabling triggers for JK_VD_HISTORY_DATA1...
alter table JK_VD_HISTORY_DATA1 enable all triggers;
prompt Enabling triggers for JK_VD_SUM_DATA...
alter table JK_VD_SUM_DATA enable all triggers;
prompt Enabling triggers for JK_WS_DEVICE_PROFILE...
alter table JK_WS_DEVICE_PROFILE enable all triggers;
prompt Enabling triggers for JK_WS_HISTORY_DATA...
alter table JK_WS_HISTORY_DATA enable all triggers;
prompt Enabling triggers for JK_WS_HISTORY_STATUS...
alter table JK_WS_HISTORY_STATUS enable all triggers;
prompt Enabling triggers for JK_WS_REAL_DATA...
alter table JK_WS_REAL_DATA enable all triggers;
prompt Enabling triggers for JK_WS_REAL_STATUS...
alter table JK_WS_REAL_STATUS enable all triggers;
prompt Enabling triggers for MESSAGE_REMIND...
alter table MESSAGE_REMIND enable all triggers;
prompt Enabling triggers for M_MAP...
alter table M_MAP enable all triggers;
prompt Enabling triggers for M_OBJ...
alter table M_OBJ enable all triggers;
prompt Enabling triggers for OM_DCI_SERVICE_LOG...
alter table OM_DCI_SERVICE_LOG enable all triggers;
prompt Enabling triggers for OM_DCI_SYSTEM_LOG...
alter table OM_DCI_SYSTEM_LOG enable all triggers;
prompt Enabling triggers for SCR_EVENT_INFO1...
alter table SCR_EVENT_INFO1 enable all triggers;
prompt Enabling triggers for SCR_EVENT_TYPE...
alter table SCR_EVENT_TYPE enable all triggers;
prompt Enabling triggers for SERVICE_NODE...
alter table SERVICE_NODE enable all triggers;
prompt Enabling triggers for SMS_GROUP...
alter table SMS_GROUP enable all triggers;
prompt Enabling triggers for SMS_ORDER...
alter table SMS_ORDER enable all triggers;
prompt Enabling triggers for SMS_ORDER_2...
alter table SMS_ORDER_2 enable all triggers;
prompt Enabling triggers for SMS_USER_GROUP...
alter table SMS_USER_GROUP enable all triggers;
prompt Enabling triggers for TA_SEGMENT...
alter table TA_SEGMENT enable all triggers;
prompt Enabling triggers for TA_SEGMENT1...
alter table TA_SEGMENT1 enable all triggers;
prompt Enabling triggers for TA_SEGMENT_HISTORY_DATA...
alter table TA_SEGMENT_HISTORY_DATA enable all triggers;
prompt Enabling triggers for TA_SEGMENT_REAL_DATA...
alter table TA_SEGMENT_REAL_DATA enable all triggers;
prompt Enabling triggers for TC_DEVICE_CONTROLZ...
alter table TC_DEVICE_CONTROLZ enable all triggers;
prompt Enabling triggers for TC_DEVICE_CONTROLF...
alter table TC_DEVICE_CONTROLF enable all triggers;
prompt Enabling triggers for TK_CMS_CONTROL_SCOPE_TYPE...
alter table TK_CMS_CONTROL_SCOPE_TYPE enable all triggers;
prompt Enabling triggers for TK_CMS_ISSUE_PLAN_ACTION...
alter table TK_CMS_ISSUE_PLAN_ACTION enable all triggers;
prompt Enabling triggers for TK_CMS_ISSUE_PLAN_ACTIONF...
alter table TK_CMS_ISSUE_PLAN_ACTIONF enable all triggers;
prompt Enabling triggers for TK_CMS_ISSUE_PLAN_ORDER...
alter table TK_CMS_ISSUE_PLAN_ORDER enable all triggers;
prompt Enabling triggers for TK_DEAL_PLAN...
alter table TK_DEAL_PLAN enable all triggers;
prompt Enabling triggers for TK_DEAL_PLAN_ORDER_UNIT...
alter table TK_DEAL_PLAN_ORDER_UNIT enable all triggers;
prompt Enabling triggers for TK_DEAL_PLAN_STEP...
alter table TK_DEAL_PLAN_STEP enable all triggers;
prompt Enabling triggers for TK_EVENT...
alter table TK_EVENT enable all triggers;
prompt Enabling triggers for TK_EVENT_F...
alter table TK_EVENT_F enable all triggers;
prompt Enabling triggers for TK_EVENT_INFO_TPL...
alter table TK_EVENT_INFO_TPL enable all triggers;
prompt Enabling triggers for TK_FOG_CONTROL_SCOPE_TYPE...
alter table TK_FOG_CONTROL_SCOPE_TYPE enable all triggers;
prompt Enabling triggers for TK_FOG_PLAN_ACTION...
alter table TK_FOG_PLAN_ACTION enable all triggers;
prompt Enabling triggers for TK_FOG_PLAN_ORDER...
alter table TK_FOG_PLAN_ORDER enable all triggers;
prompt Enabling triggers for TK_LIGHT_PLAN_ACTION...
alter table TK_LIGHT_PLAN_ACTION enable all triggers;
prompt Enabling triggers for TK_LIGHT_PLAN_ORDER...
alter table TK_LIGHT_PLAN_ORDER enable all triggers;
prompt Enabling triggers for TK_MAN_ISSUE_PLAN_ACTION...
alter table TK_MAN_ISSUE_PLAN_ACTION enable all triggers;
prompt Enabling triggers for TK_MAN_ISSUE_PLAN_ACTIONF...
alter table TK_MAN_ISSUE_PLAN_ACTIONF enable all triggers;
prompt Enabling triggers for TK_MAN_ISSUE_PLAN_ORDER...
alter table TK_MAN_ISSUE_PLAN_ORDER enable all triggers;
prompt Enabling triggers for TK_PLAN_ACTION_TYPE...
alter table TK_PLAN_ACTION_TYPE enable all triggers;
prompt Enabling triggers for TK_PLAN_INDEX...
alter table TK_PLAN_INDEX enable all triggers;
prompt Enabling triggers for TK_PLAN_STEP...
alter table TK_PLAN_STEP enable all triggers;
prompt Enabling triggers for TK_PLAN_STEP_ACTION...
alter table TK_PLAN_STEP_ACTION enable all triggers;
prompt Enabling triggers for TK_PUBLIC_ISSUE_PLAN_ACTION...
alter table TK_PUBLIC_ISSUE_PLAN_ACTION enable all triggers;
prompt Enabling triggers for TK_PUBLIC_ISSUE_PLAN_ORDER...
alter table TK_PUBLIC_ISSUE_PLAN_ORDER enable all triggers;
prompt Enabling triggers for TK_SERVICESTATION_CONTROL_TYPE...
alter table TK_SERVICESTATION_CONTROL_TYPE enable all triggers;
prompt Enabling triggers for TK_SERVICESTATION_PLAN_ACTION...
alter table TK_SERVICESTATION_PLAN_ACTION enable all triggers;
prompt Enabling triggers for TK_SERVICESTATION_PLAN_ACTIONF...
alter table TK_SERVICESTATION_PLAN_ACTIONF enable all triggers;
prompt Enabling triggers for TK_SERVICESTATION_PLAN_ORDER...
alter table TK_SERVICESTATION_PLAN_ORDER enable all triggers;
prompt Enabling triggers for TK_TOLL_CONTROL_SCOPE_TYPE...
alter table TK_TOLL_CONTROL_SCOPE_TYPE enable all triggers;
prompt Enabling triggers for TK_TOLL_PLAN_ACTION...
alter table TK_TOLL_PLAN_ACTION enable all triggers;
prompt Enabling triggers for TK_TOLL_PLAN_ACTIONF...
alter table TK_TOLL_PLAN_ACTIONF enable all triggers;
prompt Enabling triggers for TK_TOLL_PLAN_ORDER...
alter table TK_TOLL_PLAN_ORDER enable all triggers;
prompt Enabling triggers for TK_VIDEO_CONTROL_SCOPE_TYPE...
alter table TK_VIDEO_CONTROL_SCOPE_TYPE enable all triggers;
prompt Enabling triggers for TK_VIDEO_SCREEN_PLAN_ACTION...
alter table TK_VIDEO_SCREEN_PLAN_ACTION enable all triggers;
prompt Enabling triggers for TK_VIDEO_SCREEN_PLAN_ORDER...
alter table TK_VIDEO_SCREEN_PLAN_ORDER enable all triggers;
prompt Enabling triggers for VD_DESC...
alter table VD_DESC enable all triggers;
prompt Enabling triggers for VIDEOINCHANNEL...
alter table VIDEOINCHANNEL enable all triggers;
prompt Enabling triggers for VIDEO_DEVICE_PROFILE...
alter table VIDEO_DEVICE_PROFILE enable all triggers;
prompt Enabling triggers for VIDEO_EVENT_DEVICE_PROFILE...
alter table VIDEO_EVENT_DEVICE_PROFILE enable all triggers;
prompt Enabling triggers for VIDEO_EVENT_IN_CAMERA...
alter table VIDEO_EVENT_IN_CAMERA enable all triggers;
prompt Enabling triggers for VOICE_FILE...
alter table VOICE_FILE enable all triggers;
prompt Enabling triggers for VS_CODEC_DEVICE...
alter table VS_CODEC_DEVICE enable all triggers;
set feedback on
set define on
prompt Done.
