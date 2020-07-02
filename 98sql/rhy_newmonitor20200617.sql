prompt PL/SQL Developer import file
prompt Created on 2020��6��17�� by Administrator
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
  is '�������¹ʣ���Ϣ��';
comment on column ALARM_INFO.alarm_info_id
  is '��¼ID';
comment on column ALARM_INFO.parent_id
  is '����·��ID(��·����������������)';
comment on column ALARM_INFO.road_segment_id
  is '·�α��';
comment on column ALARM_INFO.organization_id
  is '����λ��Ҫ�����еĹ��������Ӧ����Ϊ��·�ι������ȹ������';
comment on column ALARM_INFO.new_direction_ids
  is '�·���id���ϣ��ö��ŷָ�';
comment on column ALARM_INFO.position
  is '��ϣ��¼���λ�ã���ϣ��¼��������ľ���·������������������򸽽���������ŵ���Ҫ��ʩ���ƣ��硰���¶β����š����������շ�վ��';
comment on column ALARM_INFO.start_stub
  is '��ʼ׮��';
comment on column ALARM_INFO.end_stub
  is '��ֹ׮��';
comment on column ALARM_INFO.stub
  is '׮�ŷ�Χ����������׮�ŷ�Χ';
comment on column ALARM_INFO.district_id
  is '�����������룺��ϣ��¹ʣ�����·�������С������أ�����������������';
comment on column ALARM_INFO.event_type_id
  is '·������id';
comment on column ALARM_INFO.person
  is '���';
comment on column ALARM_INFO.discovery_time
  is '����ʱ��';
comment on column ALARM_INFO.calculate_time
  is '��λ��Сʱ��Ԥ�ƻָ�ʱ��';
comment on column ALARM_INFO.reality_recover_time
  is 'ʵ�ʻָ�ͨ���¼�';
comment on column ALARM_INFO.queue_length
  is '�Ŷӳ���,��λΪ������';
comment on column ALARM_INFO.lane_no
  is '�¹ʳ�������ͬ��������೵��������������1��ʼ��ţ���Ϊ 0 �򲻷ֳ�����';
comment on column ALARM_INFO.enter_user_id
  is '�˹�¼���û�';
comment on column ALARM_INFO.telephone
  is '��ϵ�绰';
comment on column ALARM_INFO.accident_des
  is '�ֳ����������������ϣ��¼�������ʱ�䡢�������̡�Ӱ�췶Χ����չ���ơ�';
comment on column ALARM_INFO.old_accident_des
  is '·���ϱ�ԭ��';
comment on column ALARM_INFO.collect_type
  is '1:���ݽ���2���˹�¼��';
comment on column ALARM_INFO.data_exchanger_id
  is '���ݽ��������ߴ���';
comment on column ALARM_INFO.create_time
  is '���ʱ��';
comment on column ALARM_INFO.information_type
  is '��Ϣ���ͣ�1����ͨ���� 2����ͨ�¹� 3��ӵ����Ϣ 4��ʩ����Ϣ 0��������Ϣ';
comment on column ALARM_INFO.information_reason
  is '·��ԭ��(��INFORMATION_TYPE=1��3ʱ������)1���������� 2���������� 3���¹ʹ��� 4����·ʩ�� 5���������� 6���������� 7��ͻ���¼� 8���豸����';
comment on column ALARM_INFO.is_other_provinces
  is '�Ƿ�Ϊ��ʡ���£�0���� 1����';
comment on column ALARM_INFO.audit_status
  is '�ϴ���־��0������ˣ�1�����δͨ����2�����ͨ����������3�����ͨ���ѷ�����';
comment on column ALARM_INFO.audit_desc
  is '�������';
comment on column ALARM_INFO.audit_time
  is '���ʱ��';
comment on column ALARM_INFO.dealing_desc
  is '���ô�ʩ��������ͨ��������ɢ���������з��������棬���ڼƻ����¼�����Ľ�ͨ��ϣ�ֻ��д���з���������ͻ�����¼���ʹ��·��ʩ�ٻ�����Ľ�ͨ��ϣ�������д��ͨ���������з������·��ֳ����ִ�����������Ա���ۣ�����Σ��Ʒй©��ԭ����������������Ա���Σ�յģ�������д��ɢ������';
comment on column ALARM_INFO.roadbed_loss_num
  is '·����ʧ��������λ��m3/Km';
comment on column ALARM_INFO.roadbed_loss_mon
  is '·����ʧ����λ����Ԫ';
comment on column ALARM_INFO.surface_loss_num
  is '·����ʧ��������λ��m2/Km';
comment on column ALARM_INFO.surface_loss_mon
  is '·����ʧ����λ����Ԫ';
comment on column ALARM_INFO.bridge_loss_num
  is '������ʧ��������λ������/��';
comment on column ALARM_INFO.bridge_loss_mon
  is '������ʧ����λ����Ԫ';
comment on column ALARM_INFO.culvert_loss_num
  is '������ʧ��������λ����';
comment on column ALARM_INFO.culvert_loss_mon
  is '������ʧ����λ����Ԫ';
comment on column ALARM_INFO.security_loss_num
  is '����������ʧ��������λ��m3';
comment on column ALARM_INFO.security_loss_mon
  is '����������ʧ����λ����Ԫ';
comment on column ALARM_INFO.other_loss_num
  is '����·����ʧ����';
comment on column ALARM_INFO.other_loss_mon
  is '����·����ʧ����λ����Ԫ';
comment on column ALARM_INFO.sum_loss_mon
  is '�ۼ���ʧ����λ����Ԫ';
comment on column ALARM_INFO.injuries_num
  is '������������';
comment on column ALARM_INFO.death_num
  is '������������';
comment on column ALARM_INFO.crowds_num
  is '������������';
comment on column ALARM_INFO.car_destroy_num
  is '�ٻ�����������';
comment on column ALARM_INFO.car_detention_num
  is '��������������';
comment on column ALARM_INFO.is_end
  is '�Ƿ������0������״̬��1������״̬';
comment on column ALARM_INFO.audit_cost
  is '�����ʱ����λ����';
comment on column ALARM_INFO.child_num
  is '������·��������';
comment on column ALARM_INFO.open_count
  is '�����Ĵ���';
comment on column ALARM_INFO.upload_cost
  is '�ϱ���ʱ';
comment on column ALARM_INFO.format_type
  is '��ʽ������';
comment on column ALARM_INFO.accident_remark
  is '�ϱ���Ϣ�ı�ע���ָ�·��ʱ��Ϊ�����ָ�����ʹ�ã���·���ϱ�ʱ����Ϊ����˵��ʹ�ã�';
comment on column ALARM_INFO.longtime_flag
  is '0:�ǳ�����Ϣ 1:������Ϣ';
comment on column ALARM_INFO.recover_msg
  is '�ָ�����';
comment on column ALARM_INFO.administrative_type
  is '���ࣺ����·����������';
comment on column ALARM_INFO.event_name
  is '·������';
comment on column ALARM_INFO.dissent
  is '��������';
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
  is 'ʡ�������·�����ֱ�';
comment on column ALARM_INFO_GRADE.alarm_info_id
  is '·����id';
comment on column ALARM_INFO_GRADE.road_id
  is '·��id';
comment on column ALARM_INFO_GRADE.road_ownership
  is '·�ι������� ͬ·�α�ADMINISTRATIVE_TYPE';
comment on column ALARM_INFO_GRADE.information_type
  is '��Ϣ����';
comment on column ALARM_INFO_GRADE.information_reason
  is '��Ϣԭ��';
comment on column ALARM_INFO_GRADE.is_other_provinces
  is '�Ƿ���ʡ����';
comment on column ALARM_INFO_GRADE.org_id
  is '�ϱ���λ';
comment on column ALARM_INFO_GRADE.upload_type
  is '�ϱ���ʽ';
comment on column ALARM_INFO_GRADE.space_time
  is '�ϱ�ʱЧ���ϱ�-����,��ȥС����';
comment on column ALARM_INFO_GRADE.goal_up_type
  is '�ϱ���ʽ����';
comment on column ALARM_INFO_GRADE.goal_space_time
  is '�ϱ���ʱ������';
comment on column ALARM_INFO_GRADE.goal_msg_info
  is '�ϱ�׼ȷ������';
comment on column ALARM_INFO_GRADE.goal_all
  is '�ܷ�';
comment on column ALARM_INFO_GRADE.error_reason
  is '�۷�ԭ��';
comment on column ALARM_INFO_GRADE.up_perser_name
  is '������';
comment on column ALARM_INFO_GRADE.auditer_name
  is '�����';
comment on column ALARM_INFO_GRADE.remark
  is '��ע';
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
  is '·����Ҫ���ݱ�';
comment on column ALARM_INFO_OUTLINE.alarm_info_id
  is '��¼ID';
comment on column ALARM_INFO_OUTLINE.create_time
  is '���ʱ��';
comment on column ALARM_INFO_OUTLINE.outline_msg
  is '��Ҫ����';
comment on column ALARM_INFO_OUTLINE.road_id
  is '·��id';
comment on column ALARM_INFO_OUTLINE.occur_time
  is '����ʱ�䣨�ϱ����߻ָ�ʱ�䣩';
comment on column ALARM_INFO_OUTLINE.information_type
  is '����alarm����ֶ�';
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
  is '��¼ID';
comment on column ALARM_INFO_PUBLISH_RECORD.alarm_id
  is '·��ID';
comment on column ALARM_INFO_PUBLISH_RECORD.msg
  is '��������';
comment on column ALARM_INFO_PUBLISH_RECORD.send_way
  is '���ͷ�ʽ 0:���� 1������  2����������  3������ 4:������  9�����״̬����';
comment on column ALARM_INFO_PUBLISH_RECORD.send_time
  is '����ʱ��';
comment on column ALARM_INFO_PUBLISH_RECORD.send_user
  is '������';
comment on column ALARM_INFO_PUBLISH_RECORD.send_user_id
  is '������ID';
comment on column ALARM_INFO_PUBLISH_RECORD.result_time
  is '����ִ��ʱ��';
comment on column ALARM_INFO_PUBLISH_RECORD.status
  is '����ִ��״̬��  0������δִ�� 1��ִ���� 2��ִ�гɹ�   3��ִ��ʧ��';
comment on column ALARM_INFO_PUBLISH_RECORD.road_id
  is '���ͼ�¼������·��id';
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
  is '������';
comment on column APP_CAMERA_PROFILE.id
  is 'ID.Ϊ��֤����������һ������ͨ��Ҫ����һ��IDΪ0000�ļ�¼';
comment on column APP_CAMERA_PROFILE.name
  is '����';
comment on column APP_CAMERA_PROFILE.type_id
  is '���͡�ǰ2λ���壺00-������01-�豸��09-������';
comment on column APP_CAMERA_PROFILE.parent_id
  is '�����ID��Ϊ-1ʱ����Ϊ���ڵ�';
comment on column APP_CAMERA_PROFILE.is_controlled
  is '�Ƿ�ɿأ�0�����ɿ�  1���ɿأ�ָ��̨�����';
comment on column APP_CAMERA_PROFILE.camera_id
  is '�������ţ�ָ���������Ӧ��Ƶϵͳ�еı��';
comment on column APP_CAMERA_PROFILE.obj_id
  is '���ID';
comment on column APP_CAMERA_PROFILE.cctv_server_id
  is '8������Ƶ������';
comment on column APP_CAMERA_PROFILE.show_order
  is '�����������豸��ʱ����ͬһ��ν�����ʾ˳����ֵԽС��ʾλ��Խ��ǰ';
comment on column APP_CAMERA_PROFILE.camera_type
  is '������������ͣ�1:�ǰ2:������3:���Ż�ͨ';
comment on column APP_CAMERA_PROFILE.flag
  is '��Ч��־��1����Ч��0����Ч';
comment on column APP_CAMERA_PROFILE.video_type
  is '��Ƶ��Ϣ���͡�����DM_VIDEO_TYPE��';
comment on column APP_CAMERA_PROFILE.record_server_id
  is '��Ƶ¼�������.��ΪҶ���ʱ�����壬����¼��';
comment on column APP_CAMERA_PROFILE.server_type
  is '��Ƶ������ƽ̨��ʶ';
comment on column APP_CAMERA_PROFILE.platform_id
  is '��ֱ����Ƶƽ̨��ID';
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
  is '�ղ���Ƶ';
comment on column APP_CCTV_COLLECTION.device_id
  is '����';
comment on column APP_CCTV_COLLECTION.road_id
  is '����·��';
comment on column APP_CCTV_COLLECTION.name
  is '����';
comment on column APP_CCTV_COLLECTION.sort_no
  is '��ʾ˳����ֵԽС��ʾλ��Խ��ǰ';
comment on column APP_CCTV_COLLECTION.pic_url
  is 'ͼƬ·��';
comment on column APP_CCTV_COLLECTION.last_update_time
  is '����޸�ʱ��';
comment on column APP_CCTV_COLLECTION.user_id
  is '����޸���';
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
  is 'Ӧ������';
comment on column APP_CCTV_EMERGENCY.id
  is 'ID.Ϊ��֤����������һ������ͨ��Ҫ����һ��IDΪ0000�ļ�¼';
comment on column APP_CCTV_EMERGENCY.name
  is '����';
comment on column APP_CCTV_EMERGENCY.cctv_desc
  is '����';
comment on column APP_CCTV_EMERGENCY.pic_url
  is 'ͼƬ·��';
comment on column APP_CCTV_EMERGENCY.sort_no
  is '��ʾ˳����ֵԽС��ʾλ��Խ��ǰ';
comment on column APP_CCTV_EMERGENCY.flag
  is '��Ч��־��1����Ч��0����Ч';
comment on column APP_CCTV_EMERGENCY.last_update_time
  is '����޸�ʱ��';
comment on column APP_CCTV_EMERGENCY.user_id
  is '����޸���';
comment on column APP_CCTV_EMERGENCY.cctv_url
  is '��Ƶ���ŵ�ַ';
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
  is '����';
comment on column APP_CCTV_IN_ROLE.role_id
  is '��ɫID';
comment on column APP_CCTV_IN_ROLE.cctvs
  is 'Ŀ¼ID';
comment on column APP_CCTV_IN_ROLE.last_update_time
  is '����޸�ʱ��';
comment on column APP_CCTV_IN_ROLE.user_id
  is '����޸���';
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
  is '��Ƶ·��';
comment on column APP_CCTV_ROAD.id
  is 'ID.Ϊ��֤����������һ������ͨ��Ҫ����һ��IDΪ0000�ļ�¼';
comment on column APP_CCTV_ROAD.name
  is '����';
comment on column APP_CCTV_ROAD.sort_no
  is '��ʾ˳����ֵԽС��ʾλ��Խ��ǰ';
comment on column APP_CCTV_ROAD.flag
  is '��Ч��־��1����Ч��0����Ч';
comment on column APP_CCTV_ROAD.pic_url
  is 'ͼƬ·��';
comment on column APP_CCTV_ROAD.last_update_time
  is '����޸�ʱ��';
comment on column APP_CCTV_ROAD.user_id
  is '����޸���';
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
  is 'ֱ��';
comment on column CCTV_CAMERA_LIVE.obj_id
  is '���ID';
comment on column CCTV_CAMERA_LIVE.live_url
  is 'ֱ����ַ';
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
  is '������������ϱ�';
comment on column CCTV_CAMERA_PROFILE.id
  is 'ID.Ϊ��֤����������һ������ͨ��Ҫ����һ��IDΪ0000�ļ�¼';
comment on column CCTV_CAMERA_PROFILE.name
  is '����';
comment on column CCTV_CAMERA_PROFILE.type_id
  is '���͡�ǰ2λ���壺00-������01-�豸��09-������';
comment on column CCTV_CAMERA_PROFILE.parent_id
  is '�����ID��Ϊ-1ʱ����Ϊ���ڵ�';
comment on column CCTV_CAMERA_PROFILE.is_controlled
  is '�Ƿ�ɿأ�0�����ɿ�  1���ɿأ�ָ��̨�����';
comment on column CCTV_CAMERA_PROFILE.camera_id
  is '�������ţ�ָ���������Ӧ��Ƶϵͳ�еı��';
comment on column CCTV_CAMERA_PROFILE.obj_id
  is '���ID';
comment on column CCTV_CAMERA_PROFILE.cctv_server_id
  is '8������Ƶ������';
comment on column CCTV_CAMERA_PROFILE.show_order
  is '�����������豸��ʱ����ͬһ��ν�����ʾ˳����ֵԽС��ʾλ��Խ��ǰ';
comment on column CCTV_CAMERA_PROFILE.camera_type
  is '������������ͣ�1:�ǰ2:������3:���Ż�ͨ';
comment on column CCTV_CAMERA_PROFILE.flag
  is '��Ч��־��1����Ч��0����Ч';
comment on column CCTV_CAMERA_PROFILE.video_type
  is '��Ƶ��Ϣ���͡�����DM_VIDEO_TYPE��';
comment on column CCTV_CAMERA_PROFILE.record_server_id
  is '��Ƶ¼�������.��ΪҶ���ʱ�����壬����¼��';
comment on column CCTV_CAMERA_PROFILE.server_type
  is '��Ƶ������ƽ̨��ʶ';
comment on column CCTV_CAMERA_PROFILE.platform_id
  is 'ƽ̨ID';
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
  is '��Ƶ�л�ӳ���';
comment on column CCTV_CAMERA_SWITCH_MAPPING.id
  is '����';
comment on column CCTV_CAMERA_SWITCH_MAPPING.task_id
  is '�л�����ID';
comment on column CCTV_CAMERA_SWITCH_MAPPING.area_group_id
  is '��������';
comment on column CCTV_CAMERA_SWITCH_MAPPING.obj_id
  is '�����ţ�������豸ID����Ļ������';
comment on column CCTV_CAMERA_SWITCH_MAPPING.obj_type
  is '�������ͣ�0-������1-�����';
comment on column CCTV_CAMERA_SWITCH_MAPPING.sort_no
  is '˳��';
comment on column CCTV_CAMERA_SWITCH_MAPPING.valid
  is '��Ч�ԣ�0-��Ч��1-��Ч';
comment on column CCTV_CAMERA_SWITCH_MAPPING.cctv_id
  is '��Ӧcctv���id';
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
  is '��Ƶ�л������';
comment on column CCTV_CAMERA_SWITCH_TASK.id
  is '����ID';
comment on column CCTV_CAMERA_SWITCH_TASK.name
  is '������';
comment on column CCTV_CAMERA_SWITCH_TASK.type
  is '�������ͣ�0-������1-�����л���2-�������';
comment on column CCTV_CAMERA_SWITCH_TASK.auto_start
  is '�Զ�������0-�ֹ���1-�Զ�';
comment on column CCTV_CAMERA_SWITCH_TASK.switch_interval
  is '��ѯ�������λ���룩';
comment on column CCTV_CAMERA_SWITCH_TASK.start_time
  is '����ʱ��';
comment on column CCTV_CAMERA_SWITCH_TASK.end_time
  is '����ʱ��';
comment on column CCTV_CAMERA_SWITCH_TASK.loop_type
  is 'ѭ��Ƶ�����ͣ�0-����ѭ����1��99-1��99�Ρ�901-ÿ�졢902-ÿ2�졢903-ÿ3�졢951-ÿ�ܡ�952-ÿ���ܡ�961-ÿ�¡�962-ÿ���¡�963-ÿ����';
comment on column CCTV_CAMERA_SWITCH_TASK.valid
  is '��Ч�ԣ�0-��Ч��1-��Ч';
comment on column CCTV_CAMERA_SWITCH_TASK.user_id
  is '��¼�޸���';
comment on column CCTV_CAMERA_SWITCH_TASK.update_time
  is '����޸�ʱ��';
comment on column CCTV_CAMERA_SWITCH_TASK.max_split_num
  is '��������';
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
  is '�������ʹ���ӳ���ϵ';
comment on column CCTV_DECODER_AREA_MAPPING.device_id
  is '����������';
comment on column CCTV_DECODER_AREA_MAPPING.area_id
  is '������';
comment on column CCTV_DECODER_AREA_MAPPING.server_name
  is '��Ļλ�ñ�ʶ';
comment on column CCTV_DECODER_AREA_MAPPING.channel
  is 'ͨ����';
comment on column CCTV_DECODER_AREA_MAPPING.monitor_id
  is '���������';
comment on column CCTV_DECODER_AREA_MAPPING.monitor_name
  is '����������';
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
  is '��������Ϣ';
comment on column CCTV_DECODER_PROFILE.device_id
  is '����������';
comment on column CCTV_DECODER_PROFILE.device_desc
  is '�豸����';
comment on column CCTV_DECODER_PROFILE.decoder_id
  is '��������ţ�ʵ���Ͼ���ͨ����';
comment on column CCTV_DECODER_PROFILE.cctv_server_id
  is '������Ƶ������';
comment on column CCTV_DECODER_PROFILE.ip
  is '��������ַ';
comment on column CCTV_DECODER_PROFILE.decoder_type
  is '���������ͣ�1:�ǰ2:������3:���Ż�ͨ��4����������';
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
  is '��Ƶ�������������ϱ�';
comment on column CCTV_SERVER_PROFILE.id
  is '��¼ID';
comment on column CCTV_SERVER_PROFILE.cctv_server_id
  is '��Ƶ������ID,ָ���豸���������е��豸ID';
comment on column CCTV_SERVER_PROFILE.cctv_server_type
  is '��Ƶ���������͡�1-�ǰ��3����2-�������������ӣ���3-���Ż�ͨ
';
comment on column CCTV_SERVER_PROFILE.cctv_server_addr
  is '��������ַ';
comment on column CCTV_SERVER_PROFILE.cctv_server_port
  is '�������˿�';
comment on column CCTV_SERVER_PROFILE.cctv_server_user
  is '��¼�������û���';
comment on column CCTV_SERVER_PROFILE.cctv_server_pwd
  is '��¼����������';
comment on column CCTV_SERVER_PROFILE.cctv_limit
  is '�鿴��Ƶ����ֵ��Ĭ��Ϊ9';
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
  is '��¼���';
comment on column DEVICE_HISTORY_ERRSTATU.device_id
  is '�豸����';
comment on column DEVICE_HISTORY_ERRSTATU.device_type_id
  is '�豸����';
comment on column DEVICE_HISTORY_ERRSTATU.device_status_id
  is '�豸״̬';
comment on column DEVICE_HISTORY_ERRSTATU.error_message
  is '�豸����';
comment on column DEVICE_HISTORY_ERRSTATU.collect_time
  is '�ɼ�ʱ��';
comment on column DEVICE_HISTORY_ERRSTATU.error_time
  is '����ʱ��:���Ϸ���ʱ��';
comment on column DEVICE_HISTORY_ERRSTATU.flag
  is 'ɾ����־:0��1�����豸����ʱΪ0�����豸��������Ϊ1��';
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
  is '��Ҫ��صĵ����豸���������Ӧ��ϵ��';
comment on column DEVICE_MATCH_CAM.device_id
  is '�豸id����������豸��';
comment on column DEVICE_MATCH_CAM.cam_id
  is '�ɼ�ص���ǰ�豸Ч����ѵ������id';
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
  is '�豸�������ϱ�';
comment on column DEVICE_PROFILE.device_id
  is '�豸ID';
comment on column DEVICE_PROFILE.device_desc
  is '�豸���ƻ��豸����';
comment on column DEVICE_PROFILE.device_type_id
  is '�豸����';
comment on column DEVICE_PROFILE.em_type_id
  is '��������ϵͳ';
comment on column DEVICE_PROFILE.road_segment_id
  is '����·��';
comment on column DEVICE_PROFILE.organization_id
  is '�������������Ҫ�������豸�Ĺ��������Ӧ����Ϊ��·�ι������ȹ������';
comment on column DEVICE_PROFILE.direction_id
  is '�豸���ڷ��򣨻�λ�ã�';
comment on column DEVICE_PROFILE.dec_stub
  is '����׮��';
comment on column DEVICE_PROFILE.char_stub
  is '�ַ�׮��';
comment on column DEVICE_PROFILE.user_id
  is '�������ʱ���û������������˹�¼�뷽ʽ';
comment on column DEVICE_PROFILE.collect_time
  is '�������ʱ��';
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
  is '�豸ʵʱ���ݱ�';
comment on column DEVICE_REAL_DATA.device_id
  is '�豸����';
comment on column DEVICE_REAL_DATA.device_status_id
  is '�豸״̬';
comment on column DEVICE_REAL_DATA.device_obj_status_id
  is '�豸���״̬';
comment on column DEVICE_REAL_DATA.message
  is '������Ϣ';
comment on column DEVICE_REAL_DATA.error_message
  is '�豸����';
comment on column DEVICE_REAL_DATA.collect_time
  is '�ɼ�ʱ��';
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
  is '�豸����';
comment on column DEVICE_REAL_ERRSTATU.device_type_id
  is '�豸����';
comment on column DEVICE_REAL_ERRSTATU.device_status_id
  is '�豸״̬';
comment on column DEVICE_REAL_ERRSTATU.error_message
  is '�豸����';
comment on column DEVICE_REAL_ERRSTATU.collect_time
  is '�ɼ�ʱ��';
comment on column DEVICE_REAL_ERRSTATU.error_time
  is '����ʱ��:���Ϸ���ʱ��';
comment on column DEVICE_REAL_ERRSTATU.flag
  is 'ɾ����־:0��1�����豸����ʱΪ0�����豸��������Ϊ1��';
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
  is '�¼�������';
comment on column HANBANG_ALARM.alarm_id
  is '�¼����';
comment on column HANBANG_ALARM.alarm_time
  is '����ʱ��';
comment on column HANBANG_ALARM.alarm_type
  is '�����¼����� TS_CLTS ͣʻ ITS_CS ���� ITS_SG �¹� ITS_MX ���� ITS_XN ���� ITS_NX ���� ITS_YW ���� ITS_PSW ������';
comment on column HANBANG_ALARM.bounds
  is '����Ŀ������� ����X:����Y������X������Y';
comment on column HANBANG_ALARM.imagepath
  is '����ͼƬ·��';
comment on column HANBANG_ALARM.videopath
  is '����¼���ļ�·��';
comment on column HANBANG_ALARM.videocode
  is '������������';
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
  is '�����¼�����Ӧ��';
comment on column HANBANG_EVERT_MAPING.hb_alarm_id
  is '����ID';
comment on column HANBANG_EVERT_MAPING.rhy_alarm_id
  is '��ӮID';

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
  is '�����¼';
comment on column JK_BAY_ACCESS_RECORD.id
  is '����ID';
comment on column JK_BAY_ACCESS_RECORD.carplate
  is '���ƺ�';
comment on column JK_BAY_ACCESS_RECORD.direction_id
  is '����1���У�2����';
comment on column JK_BAY_ACCESS_RECORD.org_id
  is '����ID';
comment on column JK_BAY_ACCESS_RECORD.in_passtime
  is '��ھ���ʱ��';
comment on column JK_BAY_ACCESS_RECORD.in_platecolor
  is '������ɫ 0-��ɫ1-��ɫ 2-��ɫ 3-��ɫ 4-���� 5����ɫ��';
comment on column JK_BAY_ACCESS_RECORD.in_vehiclecolor
  is '������ɫ A���ף�B���ң�C���ƣ�D���ۣ�E���죬F���ϣ�G���̣�H������I���أ�J���ڣ�K����,
L���࣬M������N�����ף�Z������';
comment on column JK_BAY_ACCESS_RECORD.in_collect_time
  is '��ڼ�¼�ɼ�ʱ��';
comment on column JK_BAY_ACCESS_RECORD.in_id
  is '��ڼ�¼ID';
comment on column JK_BAY_ACCESS_RECORD.out_passtime
  is '���ھ���ʱ��';
comment on column JK_BAY_ACCESS_RECORD.out_platecolor
  is '������ɫ 0-��ɫ1-��ɫ 2-��ɫ 3-��ɫ 4-���� 5����ɫ��';
comment on column JK_BAY_ACCESS_RECORD.out_vehiclecolor
  is '������ɫ A���ף�B���ң�C���ƣ�D���ۣ�E���죬F���ϣ�G���̣�H������I���أ�J���ڣ�K����,
L���࣬M������N�����ף�Z������';
comment on column JK_BAY_ACCESS_RECORD.out_collect_time
  is '���ڼ�¼�ɼ�ʱ��';
comment on column JK_BAY_ACCESS_RECORD.out_id
  is '���ڼ�¼ID';
comment on column JK_BAY_ACCESS_RECORD.last_update_time
  is '����޸�ʱ��';
comment on column JK_BAY_ACCESS_RECORD.user_id
  is '����޸���';
comment on column JK_BAY_ACCESS_RECORD.record_status
  is '��¼״̬��0��ֻ����ڼ�¼��1������ڶ��м�¼��-1���쳣����';
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
  is '�����豸λ��';
comment on column JK_BAY_DEVICE_POSITION.device_id
  is '�豸ID';
comment on column JK_BAY_DEVICE_POSITION.direction_id
  is '����1���У�2����';
comment on column JK_BAY_DEVICE_POSITION.pos_type
  is 'λ�����ͣ�0����ڣ�1������';
comment on column JK_BAY_DEVICE_POSITION.org_id
  is '����ID';
comment on column JK_BAY_DEVICE_POSITION.last_update_time
  is '����޸�ʱ��';
comment on column JK_BAY_DEVICE_POSITION.user_id
  is '����޸���';
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
  is '�����豸���ϱ�';
comment on column JK_BAY_DEVICE_PROFILE.device_id
  is '�豸ID';
comment on column JK_BAY_DEVICE_PROFILE.device_desc
  is '�豸���ƻ��豸����';
comment on column JK_BAY_DEVICE_PROFILE.device_type_id
  is '�豸����';
comment on column JK_BAY_DEVICE_PROFILE.em_type_id
  is '��������ϵͳ';
comment on column JK_BAY_DEVICE_PROFILE.road_segment_id
  is '����·��';
comment on column JK_BAY_DEVICE_PROFILE.organization_id
  is '�����������';
comment on column JK_BAY_DEVICE_PROFILE.direction_id
  is '�豸���ڷ��򣨻�λ�ã�';
comment on column JK_BAY_DEVICE_PROFILE.dec_stub
  is '����׮��';
comment on column JK_BAY_DEVICE_PROFILE.char_stub
  is '�ַ�׮��';
comment on column JK_BAY_DEVICE_PROFILE.price
  is '�۸� ��λ��Ԫ';
comment on column JK_BAY_DEVICE_PROFILE.manufacturer
  is '��������';
comment on column JK_BAY_DEVICE_PROFILE.product_model
  is '��Ʒ�ͺ�';
comment on column JK_BAY_DEVICE_PROFILE.installer
  is '��װ����';
comment on column JK_BAY_DEVICE_PROFILE.install_time
  is '��װʱ��';
comment on column JK_BAY_DEVICE_PROFILE.camid
  is '���������ţ��豸�����ṩ��';
comment on column JK_BAY_DEVICE_PROFILE.equipmenttype
  is '�ɼ����� 01-�羯��02-��·���ڣ�03-�̶����٣�04-��Ƶ��أ�05-�ƶ����Ӿ��죬06-�г���¼�ǣ�09-�������Ӽ���豸';
comment on column JK_BAY_DEVICE_PROFILE.panoramaflag
  is 'ȫ����־';
comment on column JK_BAY_DEVICE_PROFILE.laneid
  is '������� ��1��ʼ��������ʻ�������󳵵�Ϊ1����������˳���š�';
comment on column JK_BAY_DEVICE_PROFILE.lanetype
  is '��������0-����������1-�ǻ�������';
comment on column JK_BAY_DEVICE_PROFILE.communication
  is 'ͨ�ŷ�ʽ';
comment on column JK_BAY_DEVICE_PROFILE.ip
  is 'IP��ַ';
comment on column JK_BAY_DEVICE_PROFILE.port
  is '�˿�/���ں�';
comment on column JK_BAY_DEVICE_PROFILE.bot
  is '��������';
comment on column JK_BAY_DEVICE_PROFILE.valid
  is '�Ƿ����ñ�־0���رգ�1����';
comment on column JK_BAY_DEVICE_PROFILE.other
  is '��������';
comment on column JK_BAY_DEVICE_PROFILE.dal
  is 'ҵ��������';
comment on column JK_BAY_DEVICE_PROFILE.manufactor_name
  is '��������';
comment on column JK_BAY_DEVICE_PROFILE.flag
  is 'ɾ����־0����Ч��1��Ч';
comment on column JK_BAY_DEVICE_PROFILE.create_time
  is '����ʱ��';
comment on column JK_BAY_DEVICE_PROFILE.update_time
  is '�޸�ʱ��';
comment on column JK_BAY_DEVICE_PROFILE.collect_type
  is '���ݲɼ���ʽ1:���ݽ���  2:�˹�¼��';
comment on column JK_BAY_DEVICE_PROFILE.user_id
  is '�������ʱ���û�';
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
  is '��¼���ʹ��GUID��Ϊ����';
comment on column JK_BAY_HISTORY_DATA1.camid
  is '"���������� ����������롣���ɿա�
��ʡ������ͳһ���롣
"';
comment on column JK_BAY_HISTORY_DATA1.device_id
  is '�豸��� �豸���롣 �ɿա� ';
comment on column JK_BAY_HISTORY_DATA1.equipmenttype
  is '"�ɼ����� ��ѡ�ֶΡ�
�����豸�Ĳɼ����͡� �ο�ֵ��
01-�羯��02-��·���ڣ�03-�̶����٣�04-��Ƶ��أ�05-�ƶ����Ӿ��죬06-�г���¼�ǣ�09-�������Ӽ���豸
"';
comment on column JK_BAY_HISTORY_DATA1.panoramaflag
  is '"ȫ����־ ��ѡ�ֶΡ�
ȫ����־�� �ο�ֵ��
00- ȫ�������01-��д���
Ĭ��01"';
comment on column JK_BAY_HISTORY_DATA1.recordid
  is '��¼ID�� ��1��ʼ�Զ�����';
comment on column JK_BAY_HISTORY_DATA1.tollgateid
  is '���ڱ�� ��������Ϣ�Ŀ��ڴ��롣 (��Ҫ������ƽ̨һ��)';
comment on column JK_BAY_HISTORY_DATA1.tollgatename
  is '�������� ��ѡ�ֶΡ�';
comment on column JK_BAY_HISTORY_DATA1.passtime
  is '"����ʱ�� YYYYMMDDHHMMSSMMM,
ʱ�䰴24Сʱ�ơ�
"';
comment on column JK_BAY_HISTORY_DATA1.placecode
  is '�ص��� �ƶ������豸�ڶ���ص㹤������Ӧ��Υ�����ݵص�Ҳ���ж���� �ƶ������豸Ĭ�ϲ���PlaceCode��ʶ�豸���ٵ㣬 ��PlaceCodeû��ֵ�� ��ʹ�õĿ�����Ϣ����ʶ�豸���ٵ㡣 ';
comment on column JK_BAY_HISTORY_DATA1.placename
  is '�ص�����';
comment on column JK_BAY_HISTORY_DATA1.laneid
  is '"������� ��1��ʼ��������ʻ�������󳵵�Ϊ1����������˳���š�
(��Ҫ������ƽ̨һ��)
"';
comment on column JK_BAY_HISTORY_DATA1.lanetype
  is '�������� 0-����������1-�ǻ�������';
comment on column JK_BAY_HISTORY_DATA1.direction
  is '������ 1-��������2-���򶫣�3-���򱱣�4-�����ϣ�5-������������6-�������ϣ�7-���������ϣ�8-�����򶫱� ';
comment on column JK_BAY_HISTORY_DATA1.directionname
  is '�������� ��ѡ�ֶΡ� ';
comment on column JK_BAY_HISTORY_DATA1.carplate
  is '���ƺ��� �����Զ�ʶ����á�-����ʾ';
comment on column JK_BAY_HISTORY_DATA1.plateconfidence
  is '"�������Ŷȣ���ֵԽ�󣬿��Ŷ�Խ�ߡ�
ȡֵ��Χ0-100��
"';
comment on column JK_BAY_HISTORY_DATA1.platetype
  is '��GA24.7���롣 ';
comment on column JK_BAY_HISTORY_DATA1.platecolor
  is '������ɫ 0-��ɫ1-��ɫ 2-��ɫ 3-��ɫ 4-���� 5����ɫ�� ';
comment on column JK_BAY_HISTORY_DATA1.platenumber
  is '�������� ';
comment on column JK_BAY_HISTORY_DATA1.platecoincide
  is '����һ�� 0����ͷ�ͳ�β���ƺ��벻һ�£�1����ͷ�ͳ�β���ƺ�����ȫһ�£�2����ͷ���ƺ����޷��Զ�ʶ��3����β���ƺ����޷��Զ�ʶ��4����ͷ�ͳ�β���ƺ�����޷��Զ�ʶ��';
comment on column JK_BAY_HISTORY_DATA1.rearvehicleplateid
  is '"����س�����β���ƺ��룬������β�����ƺ��벻ȫ�������Զ�ʶ����á�-����ʾ��
��չ�ֶΡ���֧��ǰ���Ƶ������ʹ�á�
�ڵ���������£����ֶβ���д��������Ϣ��д��ǰ����ֶΡ�
"';
comment on column JK_BAY_HISTORY_DATA1.rearplateconfidence
  is '"β���������Ŷ� �������Ŷȣ���ֵԽ�󣬿��Ŷ�Խ�ߡ�
ȡֵ��Χ0-100��

"';
comment on column JK_BAY_HISTORY_DATA1.rearplatecolor
  is '"β��������ɫ 0����ɫ 1����ɫ 2����ɫ 3����ɫ 4��������ɫ 5����ɫ��
��չ�ֶΡ�
"';
comment on column JK_BAY_HISTORY_DATA1.rearplatetype
  is 'β���������� ��GA24.7���롣 ';
comment on column JK_BAY_HISTORY_DATA1.picnumber
  is 'ͼ������ �ɼ���ͼ������';
comment on column JK_BAY_HISTORY_DATA1.vehiclespeed
  is '�����ٶ� ��λkm/h��0���޲��ٹ��ܡ� ';
comment on column JK_BAY_HISTORY_DATA1.limitedspeed
  is 'ִ������   ����ִ�����١���λkm/h';
comment on column JK_BAY_HISTORY_DATA1.markedspeed
  is '��ʶ���� ��ʻԱ���Կ��������١��Ƽ�ʹ�ñ�����ֵ�� �ɼ������顣��λkm/h ';
comment on column JK_BAY_HISTORY_DATA1.drivestatus
  is '"��ʻ״̬ 0��������1�����ɣ�
��GA408.1���룬
1301-���У�1302-������ͨ�źŵ�ͨ��
4602���ڸ��ٹ�·�����еģ�1603����������ʻ�����涨ʱ��50%�ģ��ȵȡ�
"';
comment on column JK_BAY_HISTORY_DATA1.vehiclebrand
  is '����Ʒ�� �������Ʊ��루���б��룩�� ';
comment on column JK_BAY_HISTORY_DATA1.vehiclebody
  is '�������� �������α��루���б��룩�� ';
comment on column JK_BAY_HISTORY_DATA1.vehicletype
  is '�������� 0-δ֪��1-С�ͳ���2-���ͳ���3-���ͳ���4-����';
comment on column JK_BAY_HISTORY_DATA1.vehiclelength
  is '�������� ������Ϊ��λ';
comment on column JK_BAY_HISTORY_DATA1.vehiclecolor
  is '"������ɫ A���ף�B���ң�C���ƣ�D���ۣ�E���죬F���ϣ�G���̣�H������I���أ�J���ڣ�K����,
L���࣬M������N�����ף�Z������
"';
comment on column JK_BAY_HISTORY_DATA1.vehiclecolordept
  is '������ɫ��ǳ 0-δ֪��1-ǳ��2-�� ';
comment on column JK_BAY_HISTORY_DATA1.dresscolor
  is '����������ɫ ';
comment on column JK_BAY_HISTORY_DATA1.redlighttime
  is '���ʱ�� ';
comment on column JK_BAY_HISTORY_DATA1.dealtag
  is '"������ 0��δ����1���Ѵ���
0����ʼ״̬δУ�ԣ�1����У�Ժͱ��棬2����Ч��Ϣ��3���Ѵ���ͱ���.
"';
comment on column JK_BAY_HISTORY_DATA1.identifystatus
  is '0��ʶ��ɹ� 1�����ɹ� 2�������� 3-δʶ��';
comment on column JK_BAY_HISTORY_DATA1.identifytime
  is 'ʶ��ʱ�� ��λ���� ';
comment on column JK_BAY_HISTORY_DATA1.applicationtype
  is '"Ӧ������ 0����������
1�� �羯
2�� ��Ա����
3�� ������
"';
comment on column JK_BAY_HISTORY_DATA1.globalcomposeflag
  is 'ȫ�ֺϳɱ�־ 0������Ҫ�ϳ�
1������Ӧ��ͼƬ����2�ż����ϣ�
2����1����ȡ��д��ͼƬ����2��4�ţ����ϳɺ��1��ԭͼ����
3����1����ȡ��д��ͼƬ����1��3�ţ����ϳɺ��1��ԭͼ������
';
comment on column JK_BAY_HISTORY_DATA1.hdpicture
  is '��������ͼƬ��ַ';
comment on column JK_BAY_HISTORY_DATA1.platephoto
  is '����Сͼ��ַ';
comment on column JK_BAY_HISTORY_DATA1.otherphotos
  is '����ͼƬ��ַ����չʹ�á�';
comment on column JK_BAY_HISTORY_DATA1.sendflag
  is '0:δ���� 1:���ڷ��ͱ�ʶ 2:���ͽ�����ʶ';
comment on column JK_BAY_HISTORY_DATA1.sendsn
  is '�������ݵ�sn��';
comment on column JK_BAY_HISTORY_DATA1.modifysn
  is '��ɽ������ݵ�sn��';
comment on column JK_BAY_HISTORY_DATA1.collecttime
  is '�ɼ�ʱ��';
comment on column JK_BAY_HISTORY_DATA1.syncflag
  is 'ͬ����־��0δͬ����1��ͬ��';
comment on column JK_BAY_HISTORY_DATA1.inserttime
  is '���ʱ��';
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
  is '��¼ID';
comment on column JK_BAY_HISTORY_DATAZ.device_id
  is '�豸����';
comment on column JK_BAY_HISTORY_DATAZ.device_status_id
  is '�豸״̬';
comment on column JK_BAY_HISTORY_DATAZ.error_message
  is '�豸����';
comment on column JK_BAY_HISTORY_DATAZ.collect_time
  is '�ɼ�ʱ��';

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
  is '�豸ID';
comment on column JK_BAY_REAL_DATAZ.device_status_id
  is '�豸״̬';
comment on column JK_BAY_REAL_DATAZ.error_message
  is '�豸����';
comment on column JK_BAY_REAL_DATAZ.collect_time
  is '�ɼ�ʱ��';

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
  is '·������Ҫ���б�';
comment on column JK_BAY_ROAD_CITY.id
  is '����';
comment on column JK_BAY_ROAD_CITY.road_net_id
  is '·��ID';
comment on column JK_BAY_ROAD_CITY.road_id
  is '·��ID';
comment on column JK_BAY_ROAD_CITY.name
  is '��������';
comment on column JK_BAY_ROAD_CITY.dec_stub
  is '׮��';
comment on column JK_BAY_ROAD_CITY.char_stub
  is '׮��';
comment on column JK_BAY_ROAD_CITY.valid
  is '��Ч�ԣ�0��Ч��1��Ч';
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
  is '��������ͳ�Ʊ�';
comment on column JK_BAY_SUM_DATA.date_type
  is '���ڸ�ʽ  1.�� 2.�� 3.�� 4.�� 5.��';
comment on column JK_BAY_SUM_DATA.car_type
  is '���ݸ�ʽ  1.С�ͳ� 2.���ͳ� 3 ���ͳ� 4.�ش��ͳ�  Ϊ0ʱΪ��������';
comment on column JK_BAY_SUM_DATA.car_belong
  is '���������� ����province_info��      Ϊ0ʱΪ��������';
comment on column JK_BAY_SUM_DATA.num
  is 'ͳ������';
comment on column JK_BAY_SUM_DATA.sum_date
  is 'ͳ������';
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
  is '��������ʵʱ���ݱ�';
comment on column JK_CALLCENTER_REAL_DATA.ivr_id
  is '·�ι����ĺ������ķ���id';
comment on column JK_CALLCENTER_REAL_DATA.text
  is '��ǰ����id����ʵʱ���ݣ�����������ĳɹ��������ݺ󣬸��¸��ֶΡ�';
comment on column JK_CALLCENTER_REAL_DATA.publish_id
  is '�����������id';
comment on column JK_CALLCENTER_REAL_DATA.status
  is 'ͬ�������״̬';
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
  is '�����ֱ���ť��ˮ���ݱ�';
comment on column JK_CD_HISTORY_DATA.jk_cd_history_data_id
  is '��¼ID';
comment on column JK_CD_HISTORY_DATA.device_id
  is '�豸����';
comment on column JK_CD_HISTORY_DATA.device_status_id
  is '�豸״̬';
comment on column JK_CD_HISTORY_DATA.error_message
  is '�豸����';
comment on column JK_CD_HISTORY_DATA.cd_status
  is '��״̬��0��������1������';
comment on column JK_CD_HISTORY_DATA.temperature
  is '�¶�';
comment on column JK_CD_HISTORY_DATA.collect_time
  is '�ɼ�ʱ��';
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
  is '���¹���ʵʱ���ݱ�';
comment on column JK_CD_REAL_DATA.device_id
  is '�豸����';
comment on column JK_CD_REAL_DATA.device_status_id
  is '�豸״̬';
comment on column JK_CD_REAL_DATA.error_message
  is '�豸����';
comment on column JK_CD_REAL_DATA.cd_status
  is '��״̬��0��������1������';
comment on column JK_CD_REAL_DATA.temperature
  is '�¶�';
comment on column JK_CD_REAL_DATA.collect_time
  is '�ɼ�ʱ��';
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
  is '�鱨�����ָ���';
comment on column JK_CMS_CONTROL.jk_cms_control_id
  is '��¼ID��ʹ��UUID��Ϊ������';
comment on column JK_CMS_CONTROL.device_id
  is '�����豸����';
comment on column JK_CMS_CONTROL.order_type
  is '��������.1:�������2���Զ������������3���ֶ�������������';
comment on column JK_CMS_CONTROL.red_level
  is '���ɫ���ȡ�ORDER_TYPE=3ʱ�����壬ָ��Ҫ�ֹ����õĺ��ɫ���ȼ���';
comment on column JK_CMS_CONTROL.green_level
  is '�̻�ɫ���ȡ�ORDER_TYPE=3ʱ�����壬ָ��Ҫ�ֹ����õ��̻�ɫ���ȼ���';
comment on column JK_CMS_CONTROL.blue_level
  is '����ɫ���ȡ�ORDER_TYPE=3ʱ�����壬ָ��Ҫ�ֹ����õ�����ɫ���ȼ���';
comment on column JK_CMS_CONTROL.user_id
  is '�������';
comment on column JK_CMS_CONTROL.create_time
  is '�����ʱ��';
comment on column JK_CMS_CONTROL.order_status
  is '����ִ��״̬��0�������״̬��1����ִ��״̬��2������ִ��״̬��3��ִ�н���״̬';
comment on column JK_CMS_CONTROL.order_result
  is '����ִ�н������ORDER_STATUS=3ʱ�����塣1��ִ�гɹ���2��ִ��ʧ��';
comment on column JK_CMS_CONTROL.error_message
  is 'ִ��ʧ��ԭ��';
comment on column JK_CMS_CONTROL.begin_time
  is '���ʼִ��ʱ��';
comment on column JK_CMS_CONTROL.end_time
  is '����ִ�н���ʱ��';
comment on column JK_CMS_CONTROL.audit_user
  is '�����';
comment on column JK_CMS_CONTROL.lock_level
  is '�������ȼ�';
comment on column JK_CMS_CONTROL.lock_end_time
  is '�����Զ�����ʱ��';
comment on column JK_CMS_CONTROL.js_cms_control_id
  is '����ָ��ID';
comment on column JK_CMS_CONTROL.unlock_user_id
  is '�����û�';
comment on column JK_CMS_CONTROL.unlock_time
  is '����ʱ��';
comment on column JK_CMS_CONTROL.unlock_memo
  is '����˵��';
comment on column JK_CMS_CONTROL.event_id
  is '�¼�ID������TK_EVENT�������ID';
comment on column JK_CMS_CONTROL.synchronism
  is '��¼��Դ��1��ԭ����¼��2��ͬ����¼';
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
  is '�鱨����ʷ�������ݱ�';
comment on column JK_CMS_HISTORY_CONTENTS.id
  is '����id';
comment on column JK_CMS_HISTORY_CONTENTS.device_id
  is '�鱨���豸id';
comment on column JK_CMS_HISTORY_CONTENTS.begin_time
  is '��ʼִ��ʱ��';
comment on column JK_CMS_HISTORY_CONTENTS.end_time
  is '����ִ��ʱ��';
comment on column JK_CMS_HISTORY_CONTENTS.order_status
  is '����ִ��״̬��0�������״̬��1����ִ��״̬��2������ִ��״̬��3��ִ�н���״̬';
comment on column JK_CMS_HISTORY_CONTENTS.play_text
  is '��������';
comment on column JK_CMS_HISTORY_CONTENTS.create_time
  is '����ʱ��';
comment on column JK_CMS_HISTORY_CONTENTS.user_id
  is '������';
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
  is '�鱨�嵱ǰ�������ݸ���';
comment on column JK_CMS_HISTORY_REAL_ITEMF.jk_cms_real_itemf_id
  is '��¼ID';
comment on column JK_CMS_HISTORY_REAL_ITEMF.jk_cms_real_itemz_id
  is '�����¼ID';
comment on column JK_CMS_HISTORY_REAL_ITEMF.record_type
  is '��¼����';
comment on column JK_CMS_HISTORY_REAL_ITEMF.position_x
  is '��ʾ��ʼλ��X';
comment on column JK_CMS_HISTORY_REAL_ITEMF.position_y
  is '��ʾ��ʼλ��Y';
comment on column JK_CMS_HISTORY_REAL_ITEMF.bmp_number
  is 'ͼƬ���';
comment on column JK_CMS_HISTORY_REAL_ITEMF.font_color
  is '�ַ���ɫ';
comment on column JK_CMS_HISTORY_REAL_ITEMF.back_color
  is '������ɫ';
comment on column JK_CMS_HISTORY_REAL_ITEMF.shadow_color
  is '��Ӱ��ɫ';
comment on column JK_CMS_HISTORY_REAL_ITEMF.word_space
  is '�ּ��';
comment on column JK_CMS_HISTORY_REAL_ITEMF.cms_font_id
  is '�������';
comment on column JK_CMS_HISTORY_REAL_ITEMF.word_width
  is '�ֿ��';
comment on column JK_CMS_HISTORY_REAL_ITEMF.word_height
  is '�ָ߶�';
comment on column JK_CMS_HISTORY_REAL_ITEMF.play_text
  is '��ʾ����';
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
  is '��ǰ������������';
comment on column JK_CMS_HISTORY_REAL_ITEMZ.jk_cms_real_itemz_id
  is '��¼ID';
comment on column JK_CMS_HISTORY_REAL_ITEMZ.device_id
  is '�豸����';
comment on column JK_CMS_HISTORY_REAL_ITEMZ.play_order
  is '�������';
comment on column JK_CMS_HISTORY_REAL_ITEMZ.item_name
  is '������Ŀ����';
comment on column JK_CMS_HISTORY_REAL_ITEMZ.in_style
  is '������ʽ';
comment on column JK_CMS_HISTORY_REAL_ITEMZ.out_style
  is '������ʽ';
comment on column JK_CMS_HISTORY_REAL_ITEMZ.io_speed
  is '�������ٶ�';
comment on column JK_CMS_HISTORY_REAL_ITEMZ.stay_time
  is 'ͣ��ʱ��';
comment on column JK_CMS_HISTORY_REAL_ITEMZ.is_blinking
  is '�Ƿ���˸';
comment on column JK_CMS_HISTORY_REAL_ITEMZ.blinking_number
  is '��˸����';
comment on column JK_CMS_HISTORY_REAL_ITEMZ.blinking_speed
  is '��˸�ٶ�';
comment on column JK_CMS_HISTORY_REAL_ITEMZ.group_id
  is 'ÿһ��ʵʱ��Ϣ����ͬһ����id';

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
  is '�鱨����ʵʱ״̬��';
comment on column JK_CMS_LOCK.device_id
  is '�豸ID';
comment on column JK_CMS_LOCK.lock_level
  is '�������ȼ�';
comment on column JK_CMS_LOCK.lock_info_id
  is '������Ϣ';
comment on column JK_CMS_LOCK.lock_time
  is '����ʱ��';
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
  is '�鱨����״̬��ʷ��';
comment on column JK_CMS_LOCK_HISTORY.id
  is '����id';
comment on column JK_CMS_LOCK_HISTORY.device_id
  is '�豸ID';
comment on column JK_CMS_LOCK_HISTORY.lock_level
  is '�������ȼ�';
comment on column JK_CMS_LOCK_HISTORY.lock_user_id
  is '�����û�';
comment on column JK_CMS_LOCK_HISTORY.lock_start_time
  is '������ʼʱ��';
comment on column JK_CMS_LOCK_HISTORY.lock_end_time
  is '�����趨����ʱ��';
comment on column JK_CMS_LOCK_HISTORY.unlock_user_id
  is '�����û�';
comment on column JK_CMS_LOCK_HISTORY.synchronism
  is '��¼��Դ��1��ԭ����¼
2��ͬ����¼
';
comment on column JK_CMS_LOCK_HISTORY.unlock_time
  is 'ʵ�ʽ���ʱ��';
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
  is '�鱨�岥��ָ���';
comment on column JK_CMS_PLAY_ITEMF.jk_cms_play_itemz_id
  is '�����¼ID';
comment on column JK_CMS_PLAY_ITEMF.record_type
  is '��¼���͡�1�����֣�2��ͼƬ';
comment on column JK_CMS_PLAY_ITEMF.position_x
  is '��ʾ��ʼλ��X';
comment on column JK_CMS_PLAY_ITEMF.position_y
  is '��ʾ��ʼλ��Y';
comment on column JK_CMS_PLAY_ITEMF.bmp_number
  is 'ͼƬ��š���RECORD_TYPE=2ʱ��Ч';
comment on column JK_CMS_PLAY_ITEMF.fore_color
  is '�ַ���ɫ��RRRGGGBBB��RRR��GGG��BBB �ֱ��ʾ�졢�̡���ɫ��Χ�����ȣ�����Χ��Ϊ 0-255��';
comment on column JK_CMS_PLAY_ITEMF.back_color
  is '������ɫ';
comment on column JK_CMS_PLAY_ITEMF.shadow_color
  is '��Ӱ��ɫ';
comment on column JK_CMS_PLAY_ITEMF.word_space
  is '�ּ��';
comment on column JK_CMS_PLAY_ITEMF.cms_font_id
  is '�������';
comment on column JK_CMS_PLAY_ITEMF.word_width
  is '�ֿ��';
comment on column JK_CMS_PLAY_ITEMF.word_height
  is '�ָ߶�';
comment on column JK_CMS_PLAY_ITEMF.play_text
  is '��ʾ����';
comment on column JK_CMS_PLAY_ITEMF.jk_cms_control_id
  is '���Ʊ�id';
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
  is '�鱨�岥��ָ������';
comment on column JK_CMS_PLAY_ITEMZ.jk_cms_play_itemz_id
  is '��¼ID';
comment on column JK_CMS_PLAY_ITEMZ.jk_cms_control_id
  is '�鱨�����ָ����¼ID';
comment on column JK_CMS_PLAY_ITEMZ.play_order
  is '�������';
comment on column JK_CMS_PLAY_ITEMZ.item_name
  is '������Ŀ����';
comment on column JK_CMS_PLAY_ITEMZ.in_style
  is '������ʽ��ʹ��ͳһ�ĳ�������ʽ����';
comment on column JK_CMS_PLAY_ITEMZ.out_style
  is '������ʽ';
comment on column JK_CMS_PLAY_ITEMZ.io_speed
  is '�������ٶȣ��԰ٷ�֮һ��Ϊ��λ���豸��֧�־����ڣ������������չ�֡�';
comment on column JK_CMS_PLAY_ITEMZ.stay_time
  is 'ͣ��ʱ�䣺����Ϊ��λ';
comment on column JK_CMS_PLAY_ITEMZ.is_blinking
  is '�Ƿ���˸:0-����˸��1-��˸';
comment on column JK_CMS_PLAY_ITEMZ.blinking_number
  is '��˸��������IS_BLINKING=1ʱ������';
comment on column JK_CMS_PLAY_ITEMZ.blinking_speed
  is '��˸�ٶȡ���IS_BLINKING=1ʱ�����壬�԰ٷ�֮һ��Ϊ��λ';
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
  is 'Ԥ�ò�����Ŀ�鸱��';
comment on column JK_CMS_PRE_GROUPF.jk_cms_pre_groupf_id
  is '��¼ID';
comment on column JK_CMS_PRE_GROUPF.jk_cms_pre_groupz_id
  is '��¼����ID';
comment on column JK_CMS_PRE_GROUPF.play_order
  is '�������';
comment on column JK_CMS_PRE_GROUPF.jk_cms_pre_itemz_id
  is 'Ԥ����Ŀ��¼ID';
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
  is 'Ԥ�ò�����Ŀ������';
comment on column JK_CMS_PRE_GROUPZ.jk_cms_pre_groupz_id
  is '��¼ID';
comment on column JK_CMS_PRE_GROUPZ.group_name
  is '������';
comment on column JK_CMS_PRE_GROUPZ.group_memo
  is '��˵��';
comment on column JK_CMS_PRE_GROUPZ.user_id
  is '��������û�';
comment on column JK_CMS_PRE_GROUPZ.update_time
  is '����ʱ��';
comment on column JK_CMS_PRE_GROUPZ.special
  is '�Ƿ���������Ŀ�飨ģ����Ŀ�飩��1�����ǣ�0�������ͨ��Ŀ�飩';
comment on column JK_CMS_PRE_GROUPZ.effect
  is '����Ŀ���ʵ�����á�00���¼��ָ�ʹ����Ϣ��01����վ��Ϣ��02��������Ϣ��03��������Ϣ��04���¼�������Ϣ�������¼���05��ȫ����ϻ���ģӵ�¡�06���еȹ�ģӵ�¡�07���¹ʵ��Խ�ͨӰ�첻�󡢰�λ���룺�ض��¼�����';
comment on column JK_CMS_PRE_GROUPZ.screen_height
  is '����';
comment on column JK_CMS_PRE_GROUPZ.screen_width
  is '����';
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
  is 'Ԥ�ò�����Ŀ����';
comment on column JK_CMS_PRE_ITEMF.jk_cms_pre_itemf_id
  is '��¼ID';
comment on column JK_CMS_PRE_ITEMF.jk_cms_pre_itemz_id
  is '�����¼ID';
comment on column JK_CMS_PRE_ITEMF.record_type
  is '��¼���͡�1�����֣�2��ͼƬ';
comment on column JK_CMS_PRE_ITEMF.position_x
  is '��ʾ��ʼλ��X';
comment on column JK_CMS_PRE_ITEMF.position_y
  is '��ʾ��ʼλ��Y';
comment on column JK_CMS_PRE_ITEMF.bmp_number
  is 'ͼƬ��š���RECORD_TYPE=2ʱ��Ч';
comment on column JK_CMS_PRE_ITEMF.back_color
  is '������ɫ';
comment on column JK_CMS_PRE_ITEMF.shadow_color
  is '��Ӱ��ɫ';
comment on column JK_CMS_PRE_ITEMF.word_space
  is '�ּ��';
comment on column JK_CMS_PRE_ITEMF.cms_font_id
  is '�������';
comment on column JK_CMS_PRE_ITEMF.word_width
  is '�ֿ��';
comment on column JK_CMS_PRE_ITEMF.word_height
  is '�ָ߶�';
comment on column JK_CMS_PRE_ITEMF.play_text
  is '��ʾ����';
comment on column JK_CMS_PRE_ITEMF.style
  is '������ԣ�ÿλΪһ�����ԣ����ж������ԣ�1�����С�';
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
  is 'Ԥ�ò�����Ŀ����';
comment on column JK_CMS_PRE_ITEMZ.jk_cms_pre_itemz_id
  is '��¼ID��ʹ��UUID��Ϊ����';
comment on column JK_CMS_PRE_ITEMZ.base_id
  is '������ĿID��������ĿID������Ŀ���ڵĻ�����Ŀģ�壬��������Ŀ���Ǳ���Ŀ����Ϊ�ա�';
comment on column JK_CMS_PRE_ITEMZ.cms_feature_id
  is '�������ʹ��룺��������ΪNULL���������ͨ����Ŀģ�塣�����ֳ��̼��豸��������';
comment on column JK_CMS_PRE_ITEMZ.screen_height
  is '���ߣ�����ͨ��ģ�壬��дͨ����Ƶ����ߣ�����Ϊʵ���豸���ߡ�';
comment on column JK_CMS_PRE_ITEMZ.screen_width
  is '��������ͨ��ģ�壬��дͨ����Ƶ���������Ϊʵ���豸����';
comment on column JK_CMS_PRE_ITEMZ.item_name
  is '������Ŀ����';
comment on column JK_CMS_PRE_ITEMZ.in_style
  is '������ʽ��ʹ��ͳһ�ĳ�������ʽ����';
comment on column JK_CMS_PRE_ITEMZ.out_style
  is '������ʽ';
comment on column JK_CMS_PRE_ITEMZ.io_speed
  is '�������ٶȣ��԰ٷ�֮һ��Ϊ��λ���豸��֧�־����ڣ������������չ�֡�';
comment on column JK_CMS_PRE_ITEMZ.stay_time
  is 'ͣ��ʱ�䣺����Ϊ��λ';
comment on column JK_CMS_PRE_ITEMZ.is_blinking
  is '�Ƿ���˸:0-����˸��1-��˸';
comment on column JK_CMS_PRE_ITEMZ.blinking_number
  is '��˸��������IS_BLINKING=1ʱ������';
comment on column JK_CMS_PRE_ITEMZ.blinking_speed
  is '��˸�ٶȡ���IS_BLINKING=1ʱ�����壬�԰ٷ�֮һ��Ϊ��λ';
comment on column JK_CMS_PRE_ITEMZ.item_memo
  is '��Ŀ˵��';
comment on column JK_CMS_PRE_ITEMZ.user_id
  is '��������û�';
comment on column JK_CMS_PRE_ITEMZ.update_time
  is '����ʱ��';
comment on column JK_CMS_PRE_ITEMZ.valid
  is '��Ч�ԡ�0����Ч��1����Ч';
comment on column JK_CMS_PRE_ITEMZ.style
  is '������ԣ�ÿλΪһ�����ԣ����ж������ԣ�1��������С�';
comment on column JK_CMS_PRE_ITEMZ.is_common
  is '�Ƿ񲹹�ͨ�����ԡ�0����ͨ�ã�1��ͨ��';
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
  is '����';
comment on column JK_CMS_PROFILE.screen_width
  is '����';
comment on column JK_CMS_PROFILE.cms_type
  is '�鱨���������: 1��վǰ����, 2�������ż�, 3����������, 4��֧���ż�, 5��֧������ 0δ����';
comment on column JK_CMS_PROFILE.cms_feature_id
  is '���ʹ���';
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
  is '�鱨��ʵʱ��������';
comment on column JK_CMS_REAL_DATAZ.device_id
  is '�豸����';
comment on column JK_CMS_REAL_DATAZ.device_status_id
  is '�豸״̬';
comment on column JK_CMS_REAL_DATAZ.error_message
  is '�豸����';
comment on column JK_CMS_REAL_DATAZ.collect_time
  is '���ݲɼ�ʱ��';
comment on column JK_CMS_REAL_DATAZ.illumination_mode
  is '���ȵ��ڡ�0���Զ����ڣ�1���ֶ�����';
comment on column JK_CMS_REAL_DATAZ.red_level
  is '���ɫ����';
comment on column JK_CMS_REAL_DATAZ.green_level
  is '�̻�ɫ����';
comment on column JK_CMS_REAL_DATAZ.blue_level
  is '����ɫ����';
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
  is '�鱨�嵱ǰ�������ݸ���';
comment on column JK_CMS_REAL_ITEMF.jk_cms_real_itemf_id
  is '��¼ID';
comment on column JK_CMS_REAL_ITEMF.jk_cms_real_itemz_id
  is '�����¼ID';
comment on column JK_CMS_REAL_ITEMF.record_type
  is '��¼����';
comment on column JK_CMS_REAL_ITEMF.position_x
  is '��ʾ��ʼλ��X';
comment on column JK_CMS_REAL_ITEMF.position_y
  is '��ʾ��ʼλ��Y';
comment on column JK_CMS_REAL_ITEMF.bmp_number
  is 'ͼƬ���';
comment on column JK_CMS_REAL_ITEMF.back_color
  is '������ɫ';
comment on column JK_CMS_REAL_ITEMF.shadow_color
  is '��Ӱ��ɫ';
comment on column JK_CMS_REAL_ITEMF.word_space
  is '�ּ��';
comment on column JK_CMS_REAL_ITEMF.cms_font_id
  is '�������';
comment on column JK_CMS_REAL_ITEMF.word_width
  is '�ֿ��';
comment on column JK_CMS_REAL_ITEMF.word_height
  is '�ָ߶�';
comment on column JK_CMS_REAL_ITEMF.play_text
  is '��ʾ����';
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
  is '��ǰ������������';
comment on column JK_CMS_REAL_ITEMZ.jk_cms_real_itemz_id
  is '��¼ID';
comment on column JK_CMS_REAL_ITEMZ.device_id
  is '�豸����';
comment on column JK_CMS_REAL_ITEMZ.play_order
  is '�������';
comment on column JK_CMS_REAL_ITEMZ.item_name
  is '������Ŀ����';
comment on column JK_CMS_REAL_ITEMZ.in_style
  is '������ʽ';
comment on column JK_CMS_REAL_ITEMZ.out_style
  is '������ʽ';
comment on column JK_CMS_REAL_ITEMZ.io_speed
  is '�������ٶ�';
comment on column JK_CMS_REAL_ITEMZ.stay_time
  is 'ͣ��ʱ��';
comment on column JK_CMS_REAL_ITEMZ.is_blinking
  is '�Ƿ���˸';
comment on column JK_CMS_REAL_ITEMZ.blinking_number
  is '��˸����';
comment on column JK_CMS_REAL_ITEMZ.blinking_speed
  is '��˸�ٶ�';
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
  is '�鱨�巢����������';
comment on column JK_CMS_SUM_DATA.id
  is 'ID';
comment on column JK_CMS_SUM_DATA.org_id
  is '�������ID  ��MEMORY_TYPE=1ʱ������';
comment on column JK_CMS_SUM_DATA.device_id
  is '�豸ID  ��MEMORY_TYPE=2ʱ������';
comment on column JK_CMS_SUM_DATA.memory_type
  is '��¼����  1.���� 2�豸';
comment on column JK_CMS_SUM_DATA.date_type
  is '���ڸ�ʽ  1.�� 2.�� 3.�� 4.�� 5.��';
comment on column JK_CMS_SUM_DATA.num
  is 'ͳ������';
comment on column JK_CMS_SUM_DATA.create_time
  is '����ʱ��';
comment on column JK_CMS_SUM_DATA.sum_date
  is 'ͳ������';
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
  is 'COVI��ˮ���ݱ�';
comment on column JK_COVI_HISTORY_DATA.jk_covi_history_data_id
  is '��¼ID��ʹ��UUID��Ϊ����';
comment on column JK_COVI_HISTORY_DATA.device_id
  is '�豸����';
comment on column JK_COVI_HISTORY_DATA.device_status_id
  is '�豸״̬';
comment on column JK_COVI_HISTORY_DATA.error_message
  is '�豸����';
comment on column JK_COVI_HISTORY_DATA.co_value
  is 'COֵ����λ��ppm';
comment on column JK_COVI_HISTORY_DATA.vi_value
  is 'VIֵ����λ��m-1';
comment on column JK_COVI_HISTORY_DATA.collect_time
  is '�ɼ�ʱ�䣺��ǰ�ɼ����ڵ���ʼʱ��';
comment on column JK_COVI_HISTORY_DATA.no_value
  is 'NOֵ����λ��ppm';
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
  is 'COVIʵʱ���ݱ�';
comment on column JK_COVI_REAL_DATA.device_id
  is '�豸����';
comment on column JK_COVI_REAL_DATA.device_status_id
  is '�豸״̬';
comment on column JK_COVI_REAL_DATA.error_message
  is '�豸����';
comment on column JK_COVI_REAL_DATA.co_value
  is 'COֵ����λ��ppm';
comment on column JK_COVI_REAL_DATA.vi_value
  is 'VIֵ����λ��m-1';
comment on column JK_COVI_REAL_DATA.collect_time
  is '�ɼ�ʱ�䣺��ǰ�ɼ����ڵ���ʼʱ��';
comment on column JK_COVI_REAL_DATA.no_value
  is 'NOֵ����λ��ppm';
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
  is 'COVI�������ݱ�';
comment on column JK_COVI_SUM_DATA.jk_covi_sum_data_id
  is '��¼ID��ʹ��UUID��Ϊ����';
comment on column JK_COVI_SUM_DATA.device_id
  is '�豸����';
comment on column JK_COVI_SUM_DATA.record_type
  is '��¼����';
comment on column JK_COVI_SUM_DATA.record_time
  is '��¼����ʱ��';
comment on column JK_COVI_SUM_DATA.create_time
  is '����ʱ��';
comment on column JK_COVI_SUM_DATA.co_value
  is 'COֵ����λ��ppm';
comment on column JK_COVI_SUM_DATA.vi_value
  is 'VIֵ����λ��m-1';
comment on column JK_COVI_SUM_DATA.no_value
  is 'NOֵ����λ��ppm';
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
  is '������';
comment on column JK_DBSY_TRANSPORT_TASK.data_type
  is '���ݿ����';
comment on column JK_DBSY_TRANSPORT_TASK.table_name
  is '����';
comment on column JK_DBSY_TRANSPORT_TASK.table_structure
  is '��ṹ��Ϊ����Ĭ��ȫ���ֶΣ���Ϊ�յ��ֶ���Ӣ���ַ���,���ָ�';
comment on column JK_DBSY_TRANSPORT_TASK.destination_address
  is 'Ŀ���ַ������Ŀ���ַ���ԣ�Ϊ�����';
comment on column JK_DBSY_TRANSPORT_TASK.cycle
  is '���ڣ�ͬ������(��)';
comment on column JK_DBSY_TRANSPORT_TASK.data_processing
  is '���ݴ���ʽ��1������
2������
3���������
';
comment on column JK_DBSY_TRANSPORT_TASK.priority
  is '�������ȼ���1~7��
��0�����ּ�
';
comment on column JK_DBSY_TRANSPORT_TASK.keywords
  is '�ؼ��֣�Ϊ��ʱ�������û����������Ӣ���ַ����������ָ�������Ϊ����ʱ���ж����� ������ʧ��ʱ��ɾ������';
comment on column JK_DBSY_TRANSPORT_TASK.flag
  is '��ʶ������������ʶ��
0������
1���ر�
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
  is '�豸������Ϣ��';
comment on column JK_DEVICE_FAULT.jk_device_fault_id
  is '��¼ID��ʹ��UUID��Ϊ����';
comment on column JK_DEVICE_FAULT.device_id
  is '�豸����';
comment on column JK_DEVICE_FAULT.device_status_id
  is '�豸״̬';
comment on column JK_DEVICE_FAULT.error_message
  is '�豸����';
comment on column JK_DEVICE_FAULT.fault_time
  is '���Ϸ���ʱ��';
comment on column JK_DEVICE_FAULT.release_mark
  is '���Ͻ����־��ȡֵ��  0��δ���  1���ѽ��  ˵���������������豸���ϼ�¼�����ֶ�����Ϊ0�����յ����Ͻ����Ϣʱ����Ϊ1';
comment on column JK_DEVICE_FAULT.release_time
  is '���Ͻ��ʱ��';
comment on column JK_DEVICE_FAULT.collect_type
  is '���ݲɼ���ʽ��1:���ݽ���  2:�˹�¼��';
comment on column JK_DEVICE_FAULT.user_id
  is '�������ʱ���û������������˹�¼�뷽ʽ';
comment on column JK_DEVICE_FAULT.collect_time
  is '�ɼ�ʱ��';
comment on column JK_DEVICE_FAULT.description
  is '��������';
comment on column JK_DEVICE_FAULT.jk_device_fault_report_id
  is '�豸���޵�ID';
comment on column JK_DEVICE_FAULT.manual_deal_mode
  is '�˹�����ʽ��0��������1���󱨣�2���ظ���3�����ش���4�����ϴ���';
comment on column JK_DEVICE_FAULT.manual_deal_time
  is '����ʱ�䡣�����˹�����ʽ����Ϊ0ʱ������';
comment on column JK_DEVICE_FAULT.manual_deal_user
  is '�����ˡ������˹�����ʽ����Ϊ0ʱ������';
comment on column JK_DEVICE_FAULT.manual_deal_memo
  is '����˵���������˹�����ʽ����Ϊ0ʱ������';
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
  is '�豸���ϱ��ޱ�';
comment on column JK_DEVICE_FAULT_REPORT.jk_device_fault_report_id
  is '��¼ID :ʹ��UUID��Ϊ����';
comment on column JK_DEVICE_FAULT_REPORT.report_id
  is '���޵���� :������+4λ��ţ��磺201208270001';
comment on column JK_DEVICE_FAULT_REPORT.create_mode
  is '����ģʽ :1:�����豸���ϱ�����д; 2:�ֹ���д';
comment on column JK_DEVICE_FAULT_REPORT.device_id
  is '�豸ID :Ϊ��֤û���ڡ��豸�������ϱ����������豸Ҳ��ʹ�ñ����������ֶο�Ϊ��';
comment on column JK_DEVICE_FAULT_REPORT.device_name
  is '�豸����';
comment on column JK_DEVICE_FAULT_REPORT.device_type_id
  is '�豸����';
comment on column JK_DEVICE_FAULT_REPORT.fault_description
  is '��������ԭ��';
comment on column JK_DEVICE_FAULT_REPORT.organization_id
  is '���޵�λ';
comment on column JK_DEVICE_FAULT_REPORT.report_user_id
  is '������';
comment on column JK_DEVICE_FAULT_REPORT.report_time
  is '����ʱ��';
comment on column JK_DEVICE_FAULT_REPORT.report_status
  is '���޵�״̬: 1:����״̬; 2��ά�޽���״̬';
comment on column JK_DEVICE_FAULT_REPORT.maintain_organization
  is 'ά�޵�λ';
comment on column JK_DEVICE_FAULT_REPORT.maintainer
  is 'ά����';
comment on column JK_DEVICE_FAULT_REPORT.maintain_content
  is 'ά������';
comment on column JK_DEVICE_FAULT_REPORT.maintain_time
  is 'ά��ʱ��';
comment on column JK_DEVICE_FAULT_REPORT.close_user_id
  is 'ά����Ϣ¼����';
comment on column JK_DEVICE_FAULT_REPORT.close_time
  is 'ά����Ϣ¼��ʱ��';
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
  is '�豸���ϴ���ʽ���ܱ�';
comment on column JK_DEVICE_FAULT_SUM_DATA.id
  is 'ID';
comment on column JK_DEVICE_FAULT_SUM_DATA.device_type_id
  is '�豸����';
comment on column JK_DEVICE_FAULT_SUM_DATA.date_type
  is '���ڸ�ʽ  1.�� 2.�� 3.�� 4.�� 5.��';
comment on column JK_DEVICE_FAULT_SUM_DATA.deal_mode
  is '����ʽ';
comment on column JK_DEVICE_FAULT_SUM_DATA.deal_num
  is '��������';
comment on column JK_DEVICE_FAULT_SUM_DATA.create_time
  is '����ʱ��';
comment on column JK_DEVICE_FAULT_SUM_DATA.sum_date
  is 'ͳ������';
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
  is '�豸��ֵ��';
comment on column JK_DEVICE_THRESHOLD.jk_device_threshold_id
  is '��¼ID';
comment on column JK_DEVICE_THRESHOLD.device_id
  is '�豸����';
comment on column JK_DEVICE_THRESHOLD.event_type_id
  is '�¼�����ID';
comment on column JK_DEVICE_THRESHOLD.threshold_feild_id
  is '�ֶα�ʶ';
comment on column JK_DEVICE_THRESHOLD.threshold_subtype
  is '��ֵ�����͡�ȡֵ��
1��������ֵ��>=�������趨�Ĳ���������ֵʱ������
2��������ֵ��<=�������趨�Ĳ���������ֵ������
9��������ֵ�����趨�Ĳ�������ʱ����
';
comment on column JK_DEVICE_THRESHOLD.value
  is '��ֵ';
comment on column JK_DEVICE_THRESHOLD.last_update_time
  is '����޸�ʱ��';
comment on column JK_DEVICE_THRESHOLD.user_id
  is '����޸���';
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
  is '�����绰��ˮ���ݱ�';
comment on column JK_ET_HISTORY_DATA.jk_et_history_data_id
  is '��¼ID��ʹ��UUID��Ϊ����';
comment on column JK_ET_HISTORY_DATA.device_id
  is '�豸����';
comment on column JK_ET_HISTORY_DATA.device_status_id
  is '�豸״̬';
comment on column JK_ET_HISTORY_DATA.error_message
  is '�豸����';
comment on column JK_ET_HISTORY_DATA.et_status
  is '�����绰״̬��0������  1������  2��ͨ��';
comment on column JK_ET_HISTORY_DATA.collect_time
  is '�ɼ�ʱ�䣺��ǰ�ɼ����ڵ���ʼʱ��';
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
  is '�����绰ʵʱ���ݱ�';
comment on column JK_ET_REAL_DATA.device_id
  is '�豸����';
comment on column JK_ET_REAL_DATA.device_status_id
  is '�豸״̬';
comment on column JK_ET_REAL_DATA.error_message
  is '�豸����';
comment on column JK_ET_REAL_DATA.et_status
  is '�����绰״̬��0������  1������  2��ͨ��';
comment on column JK_ET_REAL_DATA.collect_time
  is '�ɼ�ʱ�䣺��ǰ�ɼ����ڵ���ʼʱ��';
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
  is '�ճ��������ķ�����Ϣ��';
comment on column JK_FB_CALLCENTER.jk_fb_callcenter_id
  is '��¼ID';
comment on column JK_FB_CALLCENTER.user_id
  is '�û�  ִ�к���������Ϣ�������û�ID';
comment on column JK_FB_CALLCENTER.description
  is '����ԭ��';
comment on column JK_FB_CALLCENTER.public_issue_plan_order_id
  is '����ID';
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
  is '�����ֱ���ť��ˮ���ݱ�';
comment on column JK_FB_HISTORY_DATA.jk_fb_history_data_id
  is '��¼ID';
comment on column JK_FB_HISTORY_DATA.device_id
  is '�豸����';
comment on column JK_FB_HISTORY_DATA.device_status_id
  is '�豸״̬';
comment on column JK_FB_HISTORY_DATA.error_message
  is '�豸����';
comment on column JK_FB_HISTORY_DATA.fb_status
  is '��״̬��0��������1������';
comment on column JK_FB_HISTORY_DATA.collect_time
  is '�ɼ�ʱ��';
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
  is '�����ֱ���ťʵʱ���ݱ�';
comment on column JK_FB_REAL_DATA.device_id
  is '�豸����';
comment on column JK_FB_REAL_DATA.device_status_id
  is '�豸״̬';
comment on column JK_FB_REAL_DATA.error_message
  is '�豸����';
comment on column JK_FB_REAL_DATA.fb_status
  is '��״̬��0��������1������';
comment on column JK_FB_REAL_DATA.collect_time
  is '�ɼ�ʱ��';
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
  is '�ճ����ŷ�����';
comment on column JK_FB_SHORTMESSAGE.jk_fb_shortmessage_id
  is '��¼ID';
comment on column JK_FB_SHORTMESSAGE.user_id
  is '�û�  ִ�ж��ŷ�����Ϊ���û�ID';
comment on column JK_FB_SHORTMESSAGE.content
  is '��������';
comment on column JK_FB_SHORTMESSAGE.description
  is '����ԭ��';
comment on column JK_FB_SHORTMESSAGE.create_time
  is '���������ʱ��';
comment on column JK_FB_SHORTMESSAGE.isissued
  is '����ִ�б�־  0:δִ��
1:��ִ��';
comment on column JK_FB_SHORTMESSAGE.issue_time
  is '��������ִ��ʱ��';
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
  is '�豸�������ϱ�';
comment on column JK_FOG_DEVICE_PROFILE.device_id
  is '�豸ID';
comment on column JK_FOG_DEVICE_PROFILE.device_desc
  is '�豸���ƻ��豸����';
comment on column JK_FOG_DEVICE_PROFILE.device_type_id
  is '�豸����';
comment on column JK_FOG_DEVICE_PROFILE.em_type_id
  is '��������ϵͳ';
comment on column JK_FOG_DEVICE_PROFILE.road_segment_id
  is '����·��';
comment on column JK_FOG_DEVICE_PROFILE.organization_id
  is '�������������Ҫ�������豸�Ĺ��������Ӧ����Ϊ��·�ι������ȹ������';
comment on column JK_FOG_DEVICE_PROFILE.direction_id
  is '�豸���ڷ��򣨻�λ�ã�';
comment on column JK_FOG_DEVICE_PROFILE.dec_stub
  is '����׮��';
comment on column JK_FOG_DEVICE_PROFILE.char_stub
  is '�ַ�׮��';
comment on column JK_FOG_DEVICE_PROFILE.price
  is '�۸񣺵�λ��Ԫ';
comment on column JK_FOG_DEVICE_PROFILE.manufacturer
  is '��������';
comment on column JK_FOG_DEVICE_PROFILE.product_model
  is '��Ʒ�ͺ�';
comment on column JK_FOG_DEVICE_PROFILE.quantity
  is '����';
comment on column JK_FOG_DEVICE_PROFILE.installer
  is '��װ����';
comment on column JK_FOG_DEVICE_PROFILE.install_time
  is '��װʱ��';
comment on column JK_FOG_DEVICE_PROFILE.collect_type
  is '���ݲɼ���ʽ��1:���ݽ���  2:�˹�¼��';
comment on column JK_FOG_DEVICE_PROFILE.user_id
  is '�������ʱ���û�';
comment on column JK_FOG_DEVICE_PROFILE.collect_time
  is '����ʱ��';
comment on column JK_FOG_DEVICE_PROFILE.flag
  is 'ɾ����־:0����Ч��1��Ч';
comment on column JK_FOG_DEVICE_PROFILE.update_time
  is '�޸�ʱ��';
comment on column JK_FOG_DEVICE_PROFILE.communication
  is 'ͨ�ŷ�ʽ:ͨѶ��ʽ����
0:δ֪ 1TCP 2udp 3����';
comment on column JK_FOG_DEVICE_PROFILE.ip
  is 'IP��ַ:����ģʽʱ����д���ڷ�����Ip������ģʽʱ����д�豸ip';
comment on column JK_FOG_DEVICE_PROFILE.port
  is '�˿�/���ں�:����ģʽʱ����д���ںţ�����ģʽʱ����д�˿ں�';
comment on column JK_FOG_DEVICE_PROFILE.bot
  is '��������';
comment on column JK_FOG_DEVICE_PROFILE.valid
  is '�Ƿ����ñ�־:�豸�ɼ������Ƿ�����
0���رգ�1����';
comment on column JK_FOG_DEVICE_PROFILE.other
  is '��������';
comment on column JK_FOG_DEVICE_PROFILE.dal
  is 'ҵ��������';
comment on column JK_FOG_DEVICE_PROFILE.manufactor_name
  is '��������';
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
  is '����ʵʱ���ݱ�';
comment on column JK_FOG_REAL_DATA.device_id
  is '�豸����';
comment on column JK_FOG_REAL_DATA.device_status_id
  is '�豸״̬';
comment on column JK_FOG_REAL_DATA.error_message
  is '�豸����';
comment on column JK_FOG_REAL_DATA.yellow_light_frequency
  is '�Ƶ�Ƶ��, 0: �رգ�1: ������2: 30��/���ӣ�3: 60��/���ӣ�4: 120��/���ӣ�����ֵ��Ч';
comment on column JK_FOG_REAL_DATA.yellow_light_brightness
  is '�Ƶ�����:1��10';
comment on column JK_FOG_REAL_DATA.red_light_frequency
  is '���Ƶ�� ,0: �رգ�1: ������2: 30��/���ӣ�3: 60��/���ӣ�4: 120��/���ӣ�����ֵ��Ч';
comment on column JK_FOG_REAL_DATA.red_light_brightness
  is '�������:1��10';
comment on column JK_FOG_REAL_DATA.sensor_status
  is '������״̬,0���رգ�1������';
comment on column JK_FOG_REAL_DATA.collect_time
  is '�ɼ�ʱ�䣺��ǰ�ɼ����ڵ���ʼʱ��';
comment on column JK_FOG_REAL_DATA.synchronism
  is '��¼��Դ��1��ԭ����¼��2��ͬ����¼';
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
  is '��������ˮ���ݱ�';
comment on column JK_HT_HISTORY_DATA.jk_ht_history_data_id
  is '��¼ID��ʹ��UUID��Ϊ����';
comment on column JK_HT_HISTORY_DATA.device_id
  is '�豸����';
comment on column JK_HT_HISTORY_DATA.device_status_id
  is '�豸״̬';
comment on column JK_HT_HISTORY_DATA.error_message
  is '�豸����';
comment on column JK_HT_HISTORY_DATA.ht_status
  is '������״̬������0����  1����';
comment on column JK_HT_HISTORY_DATA.collect_time
  is '�ɼ�ʱ�䣺��ǰ�ɼ����ڵ���ʼʱ��';
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
  is '������ʵʱ���ݱ�';
comment on column JK_HT_REAL_DATA.device_id
  is '�豸����';
comment on column JK_HT_REAL_DATA.device_status_id
  is '�豸״̬';
comment on column JK_HT_REAL_DATA.error_message
  is '�豸����';
comment on column JK_HT_REAL_DATA.ht_status
  is '������״̬������0����  1����';
comment on column JK_HT_REAL_DATA.collect_time
  is '�ɼ�ʱ�䣺��ǰ�ɼ����ڵ���ʼʱ��';
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
  is '�����ˮ���ݱ�';
comment on column JK_JET_HISTORY_DATA.jk_jet_history_data_id
  is '��¼ID��ʹ��UUID��Ϊ����';
comment on column JK_JET_HISTORY_DATA.device_id
  is '�豸����';
comment on column JK_JET_HISTORY_DATA.device_status_id
  is '�豸״̬';
comment on column JK_JET_HISTORY_DATA.error_message
  is '�豸����';
comment on column JK_JET_HISTORY_DATA.jet_status
  is '���״̬������0��ֹͣ  1����ת  2����ת';
comment on column JK_JET_HISTORY_DATA.collect_time
  is '�ɼ�ʱ�䣺��ǰ�ɼ����ڵ���ʼʱ��';
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
  is '���ʵʱ���ݱ�';
comment on column JK_JET_REAL_DATA.device_id
  is '�豸����';
comment on column JK_JET_REAL_DATA.device_status_id
  is '�豸״̬';
comment on column JK_JET_REAL_DATA.error_message
  is '�豸����';
comment on column JK_JET_REAL_DATA.jet_status
  is '���״̬������0��ֹͣ  1����ת  2����ת';
comment on column JK_JET_REAL_DATA.collect_time
  is '�ɼ�ʱ�䣺��ǰ�ɼ����ڵ���ʼʱ��';
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
  is 'ת��ָʾ����ˮ���ݱ�';
comment on column JK_LS_HISTORY_DATA.jk_ls_history_data_id
  is '��¼ID��ʹ��UUID��Ϊ����';
comment on column JK_LS_HISTORY_DATA.device_id
  is '�豸����';
comment on column JK_LS_HISTORY_DATA.device_status_id
  is '�豸״̬';
comment on column JK_LS_HISTORY_DATA.error_message
  is '�豸����';
comment on column JK_LS_HISTORY_DATA.turn_status
  is 'ת��ָʾ��״̬������1����  0����';
comment on column JK_LS_HISTORY_DATA.collect_time
  is '�ɼ�ʱ�䣺��ǰ�ɼ����ڵ���ʼʱ��';
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
  is 'ת��ָʾ��';
comment on column JK_LS_REAL_DATA.device_id
  is '�豸����';
comment on column JK_LS_REAL_DATA.device_status_id
  is '�豸״̬';
comment on column JK_LS_REAL_DATA.error_message
  is '�豸����';
comment on column JK_LS_REAL_DATA.turn_status
  is 'ת��ָʾ��״̬������1����  0����';
comment on column JK_LS_REAL_DATA.collect_time
  is '�ɼ�ʱ�䣺��ǰ�ɼ����ڵ���ʼʱ��';
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
  is '������·��ˮ���ݱ�';
comment on column JK_LT_HISTORY_DATA.jk_lt_history_data_id
  is '��¼ID��ʹ��UUID��Ϊ����';
comment on column JK_LT_HISTORY_DATA.device_id
  is '�豸����';
comment on column JK_LT_HISTORY_DATA.device_status_id
  is '�豸״̬';
comment on column JK_LT_HISTORY_DATA.error_message
  is '�豸����';
comment on column JK_LT_HISTORY_DATA.light_status
  is '����״̬������0����  1����';
comment on column JK_LT_HISTORY_DATA.collect_time
  is '�ɼ�ʱ�䣺��ǰ�ɼ����ڵ���ʼʱ��';
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
  is '������·ʵʱ���ݱ�';
comment on column JK_LT_REAL_DATA.device_id
  is '�豸����';
comment on column JK_LT_REAL_DATA.device_status_id
  is '�豸״̬';
comment on column JK_LT_REAL_DATA.error_message
  is '�豸����';
comment on column JK_LT_REAL_DATA.light_status
  is '����״̬������0����  1����';
comment on column JK_LT_REAL_DATA.collect_time
  is '�ɼ�ʱ�䣺��ǰ�ɼ����ڵ���ʼʱ��';
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
  is '�ն��豸���ϱ�';
comment on column JK_LUX_DEVICE_PROFILE.device_id
  is '�豸ID';
comment on column JK_LUX_DEVICE_PROFILE.device_desc
  is '�豸���ƻ��豸����';
comment on column JK_LUX_DEVICE_PROFILE.device_type_id
  is '�豸����';
comment on column JK_LUX_DEVICE_PROFILE.em_type_id
  is '��������ϵͳ';
comment on column JK_LUX_DEVICE_PROFILE.road_segment_id
  is '����·��';
comment on column JK_LUX_DEVICE_PROFILE.organization_id
  is '�����������';
comment on column JK_LUX_DEVICE_PROFILE.direction_id
  is '�豸���ڷ��򣨻�λ�ã�';
comment on column JK_LUX_DEVICE_PROFILE.dec_stub
  is '����׮��';
comment on column JK_LUX_DEVICE_PROFILE.char_stub
  is '�ַ�׮��';
comment on column JK_LUX_DEVICE_PROFILE.price
  is '�۸� ��λ��Ԫ';
comment on column JK_LUX_DEVICE_PROFILE.manufacturer
  is '��������';
comment on column JK_LUX_DEVICE_PROFILE.product_model
  is '��Ʒ�ͺ�';
comment on column JK_LUX_DEVICE_PROFILE.installer
  is '��װ����';
comment on column JK_LUX_DEVICE_PROFILE.install_time
  is '��װʱ��';
comment on column JK_LUX_DEVICE_PROFILE.camid
  is '���������ţ��豸�����ṩ��';
comment on column JK_LUX_DEVICE_PROFILE.equipmenttype
  is '�ɼ����� 01-�羯��02-��·���ڣ�03-�̶����٣�04-��Ƶ��أ�05-�ƶ����Ӿ��죬06-�г���¼�ǣ�09-�������Ӽ���豸';
comment on column JK_LUX_DEVICE_PROFILE.panoramaflag
  is 'ȫ����־';
comment on column JK_LUX_DEVICE_PROFILE.laneid
  is '������� ��1��ʼ��������ʻ�������󳵵�Ϊ1����������˳���š�';
comment on column JK_LUX_DEVICE_PROFILE.lanetype
  is '��������0-����������1-�ǻ�������';
comment on column JK_LUX_DEVICE_PROFILE.communication
  is 'ͨ�ŷ�ʽ';
comment on column JK_LUX_DEVICE_PROFILE.ip
  is 'IP��ַ';
comment on column JK_LUX_DEVICE_PROFILE.port
  is '�˿�/���ں�';
comment on column JK_LUX_DEVICE_PROFILE.bot
  is '��������';
comment on column JK_LUX_DEVICE_PROFILE.valid
  is '�Ƿ����ñ�־0���رգ�1����';
comment on column JK_LUX_DEVICE_PROFILE.other
  is '��������';
comment on column JK_LUX_DEVICE_PROFILE.dal
  is 'ҵ��������';
comment on column JK_LUX_DEVICE_PROFILE.manufactor_name
  is '��������';
comment on column JK_LUX_DEVICE_PROFILE.flag
  is 'ɾ����־0����Ч��1��Ч';
comment on column JK_LUX_DEVICE_PROFILE.create_time
  is '����ʱ��';
comment on column JK_LUX_DEVICE_PROFILE.update_time
  is '�޸�ʱ��';
comment on column JK_LUX_DEVICE_PROFILE.collect_type
  is '���ݲɼ���ʽ1:���ݽ���  2:�˹�¼��';
comment on column JK_LUX_DEVICE_PROFILE.user_id
  is '�������ʱ���û�';
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
  is '�ն�����ˮ���ݱ�';
comment on column JK_LUX_HISTORY_DATA.jk_lux_history_data_id
  is '��¼ID��ʹ��UUID��Ϊ����';
comment on column JK_LUX_HISTORY_DATA.device_id
  is '�豸����';
comment on column JK_LUX_HISTORY_DATA.device_status_id
  is '�豸״̬';
comment on column JK_LUX_HISTORY_DATA.error_message
  is '�豸����';
comment on column JK_LUX_HISTORY_DATA.lux_value
  is '�ն�ֵ';
comment on column JK_LUX_HISTORY_DATA.collect_time
  is '�ɼ�ʱ�䣺��ǰ�ɼ����ڵ���ʼʱ��';
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
  is '�ն���ʵʱ���ݱ�';
comment on column JK_LUX_REAL_DATA.device_id
  is '�豸����';
comment on column JK_LUX_REAL_DATA.device_status_id
  is '�豸״̬';
comment on column JK_LUX_REAL_DATA.error_message
  is '�豸����';
comment on column JK_LUX_REAL_DATA.lux_value
  is '�ն�ֵ';
comment on column JK_LUX_REAL_DATA.collect_time
  is '�ɼ�ʱ�䣺��ǰ�ɼ����ڵ���ʼʱ��';
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
  is '��������Ϣ���ͱ�';
comment on column JK_MESSAGE_FLOW.jk_message_flow_id
  is '��¼ID';
comment on column JK_MESSAGE_FLOW.road_id
  is '·�α���';
comment on column JK_MESSAGE_FLOW.direction_id
  is '����:1 ���С�2 ����';
comment on column JK_MESSAGE_FLOW.dec_stub
  is '����׮��';
comment on column JK_MESSAGE_FLOW.collect_date
  is 'ͳ������:��ȷ��������';
comment on column JK_MESSAGE_FLOW.period_id
  is 'ͳ������:��Сʱͳ�ƣ�1��0~1ʱ��2��1~2ʱ ���� 23��23~24ʱ';
comment on column JK_MESSAGE_FLOW.traffic_status_id
  is 'ӵ��������:0����ͨ����ɫ����1��������ͨ����ɫ����2�����ӵ�£���ɫ����3���ж�ӵ�£���ɫ����4���ض�ӵ�£���ɫ��';
comment on column JK_MESSAGE_FLOW.speed
  is 'ƽ���ٶ�';
comment on column JK_MESSAGE_FLOW.occupancy
  is 'ƽ��ռ����:��λ %';
comment on column JK_MESSAGE_FLOW.flow
  is '�������ϼ�';
comment on column JK_MESSAGE_FLOW.flow_truck
  is '������';
comment on column JK_MESSAGE_FLOW.flow_car
  is 'С�ͳ�����';
comment on column JK_MESSAGE_FLOW.flow_corrected
  is '���㳵����';
comment on column JK_MESSAGE_FLOW.description
  is '��ע';
comment on column JK_MESSAGE_FLOW.enter_user_id
  is '��û�ID';
comment on column JK_MESSAGE_FLOW.informant
  is '���';
comment on column JK_MESSAGE_FLOW.phone
  is '��ϵ�绰';
comment on column JK_MESSAGE_FLOW.insert_time
  is '�ʱ��';
comment on column JK_MESSAGE_FLOW.audit_mark
  is '��˱�־:0��δ��ˣ�1�����δͨ����2����˷�����3����˲�����';
comment on column JK_MESSAGE_FLOW.audit_time
  is '���ʱ��';
comment on column JK_MESSAGE_FLOW.audit_user_id
  is '����˴���';
comment on column JK_MESSAGE_FLOW.auditor
  is '���������';
comment on column JK_MESSAGE_FLOW.char_stub
  is '�ַ�׮��';
comment on column JK_MESSAGE_FLOW.data_origin
  is '������Դ:0�������ļ��ϵͳ��1��������Ϣ����ϵͳ';
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
  is '����ֽ�������͵���Ϣ';
comment on column JK_MESSAGE_PAPERCARD.jk_message_papercard_id
  is '��¼ID';
comment on column JK_MESSAGE_PAPERCARD.road_id
  is '·�α���';
comment on column JK_MESSAGE_PAPERCARD.org_id
  is '����������';
comment on column JK_MESSAGE_PAPERCARD.use_date
  is 'ʹ������:��ȷ��������';
comment on column JK_MESSAGE_PAPERCARD.enter_user_id
  is '��û�ID';
comment on column JK_MESSAGE_PAPERCARD.informant
  is '���';
comment on column JK_MESSAGE_PAPERCARD.reason_id
  is 'ʹ��ԭ�����:1����������2��ͨ�п����㣻3���豸���ϣ�4�������������豸���ϣ�9������';
comment on column JK_MESSAGE_PAPERCARD.reason_description
  is 'ʹ��ԭ��˵��';
comment on column JK_MESSAGE_PAPERCARD.quantity
  is '�ϼ�����';
comment on column JK_MESSAGE_PAPERCARD.description
  is '��ע';
comment on column JK_MESSAGE_PAPERCARD.insert_time
  is '�ʱ��';
comment on column JK_MESSAGE_PAPERCARD.data_origin
  is '������Դ:0:�����ϱ� 1:31.6db 2:��������';
comment on column JK_MESSAGE_PAPERCARD.audit_mark
  is '��˱�־:0��δ��ˣ�1�����δͨ�� 2�����ͨ��';
comment on column JK_MESSAGE_PAPERCARD.audit_time
  is '���ʱ��';
comment on column JK_MESSAGE_PAPERCARD.audit_user_id
  is '����˴���';
comment on column JK_MESSAGE_PAPERCARD.auditor
  is '���������';
comment on column JK_MESSAGE_PAPERCARD.use_time
  is 'ʹ��ʱ��Σ��ٺŷָ�';
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
  is 'ֽ������Ϣ����ʱ����ӱ�';
comment on column JK_MESSAGE_PAPERCARD_DATE.jk_message_papercard_date_id
  is '��¼ID';
comment on column JK_MESSAGE_PAPERCARD_DATE.jk_message_papercard_id
  is '��������';
comment on column JK_MESSAGE_PAPERCARD_DATE.start_time
  is '��ʼʱ��';
comment on column JK_MESSAGE_PAPERCARD_DATE.end_time
  is '��ֹʱ��';
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
  is 'ֽ������Ϣ���ͺŶ��ӱ�';
comment on column JK_MESSAGE_PAPERCARD_NUMBER.jk_message_papercard_number_id
  is '��¼ID';
comment on column JK_MESSAGE_PAPERCARD_NUMBER.jk_message_papercard_date_id
  is 'ʱ����ӱ�����';
comment on column JK_MESSAGE_PAPERCARD_NUMBER.start_number
  is '��ʼ����';
comment on column JK_MESSAGE_PAPERCARD_NUMBER.end_number
  is '��ֹ����';
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
  is '��������Ϣ���ͱ�';
comment on column JK_MESSAGE_SERVICEZONE.jk_message_servicezone_id
  is '��¼ID';
comment on column JK_MESSAGE_SERVICEZONE.road_id
  is '·�α���';
comment on column JK_MESSAGE_SERVICEZONE.org_id
  is '����������';
comment on column JK_MESSAGE_SERVICEZONE.current_status
  is 'Ŀǰ״̬:0���رգ�1������';
comment on column JK_MESSAGE_SERVICEZONE.diningroom_status
  is '�������:0�����ܾͲͣ�1���ܾͲͣ�9���޲���';
comment on column JK_MESSAGE_SERVICEZONE.guestroom_status
  is '�ͷ����:0������ס�ޣ�1����ס�ޣ�9����';
comment on column JK_MESSAGE_SERVICEZONE.repairfactory_status
  is '�������:0����ͣ�á�1������ʹ�ã�9��������';
comment on column JK_MESSAGE_SERVICEZONE.gasstation_status
  is '����վ���:0����ͣ�ã�1������ʹ�ã�9���޼���վ';
comment on column JK_MESSAGE_SERVICEZONE.description
  is '�������';
comment on column JK_MESSAGE_SERVICEZONE.discovery_time
  is '����ʱ��';
comment on column JK_MESSAGE_SERVICEZONE.being_recovered_time
  is 'Ԥ�ƻָ�ʱ��';
comment on column JK_MESSAGE_SERVICEZONE.recovered_time
  is 'ʵ�ʻָ�ʱ��';
comment on column JK_MESSAGE_SERVICEZONE.enter_user_id
  is '��û�ID';
comment on column JK_MESSAGE_SERVICEZONE.informant
  is '���';
comment on column JK_MESSAGE_SERVICEZONE.insert_time
  is '�ʱ��';
comment on column JK_MESSAGE_SERVICEZONE.data_origin
  is '������Դ:0:�����ϱ� 1:31.6db 2:�������� 3:��������ƥ���������';
comment on column JK_MESSAGE_SERVICEZONE.audit_mark
  is '��˱�־:0��δ��ˣ�1�����δͨ����2�����ͨ��';
comment on column JK_MESSAGE_SERVICEZONE.audit_time
  is '���ʱ��';
comment on column JK_MESSAGE_SERVICEZONE.audit_user_id
  is '����˴���';
comment on column JK_MESSAGE_SERVICEZONE.auditor
  is '���������';
comment on column JK_MESSAGE_SERVICEZONE.audit_synchro_mark
  is '���ͬ����־:�����ģ�0��δ����ȡ��1���ѱ���ȡ��2���ѻ�д����ʡ���ģ�0��δ��д���ѻ�д����ǰ�û���0��δ����ȡ��1���ѱ���ȡ��';
comment on column JK_MESSAGE_SERVICEZONE.audit_synchro_time
  is '���ͬ��ʱ��';
comment on column JK_MESSAGE_SERVICEZONE.publish_synchro_mark
  is '����ͬ����־:0��δ������1���ѷ���';
comment on column JK_MESSAGE_SERVICEZONE.publish_synchro_time
  is '����ͬ��ʱ��';
comment on column JK_MESSAGE_SERVICEZONE.telephone
  is '��ϵ�绰
';
comment on column JK_MESSAGE_SERVICEZONE.direction_id
  is '����';
comment on column JK_MESSAGE_SERVICEZONE.wifi_status
  is 'WIFI���:0����ͣ�ã�1������ʹ�ã�9����WIFI';
comment on column JK_MESSAGE_SERVICEZONE.washroom_status
  is '���������:0����ͣ�ã�1������ʹ�ã�9����������';
comment on column JK_MESSAGE_SERVICEZONE.park_num
  is '��λ����';
comment on column JK_MESSAGE_SERVICEZONE.create_time
  is '����ʱ��';
comment on column JK_MESSAGE_SERVICEZONE.sep_no
  is '���к�';
comment on column JK_MESSAGE_SERVICEZONE.park_num_all
  is '�ܳ�λ��';
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
  is '��������Ϣ���ͱ�';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.jk_message_servicezone_id
  is '��¼ID';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.road_id
  is '·�α���';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.org_id
  is '����������';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.current_status
  is 'Ŀǰ״̬:0���رգ�1������';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.diningroom_status
  is '�������:0�����ܾͲͣ�1���ܾͲͣ�9���޲���';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.guestroom_status
  is '�ͷ����:0������ס�ޣ�1����ס�ޣ�9����';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.repairfactory_status
  is '�������:0����ͣ�á�1������ʹ�ã�9��������';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.gasstation_status
  is '����վ���:0����ͣ�ã�1������ʹ�ã�9���޼���վ';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.description
  is '�������';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.discovery_time
  is '����ʱ��';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.being_recovered_time
  is 'Ԥ�ƻָ�ʱ��';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.recovered_time
  is 'ʵ�ʻָ�ʱ��';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.enter_user_id
  is '��û�ID';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.informant
  is '���';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.insert_time
  is '�ʱ��';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.data_origin
  is '������Դ:0:�����ϱ� 1:31.6db 2:��������';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.telephone
  is '��ϵ�绰';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.direction_id
  is '����';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.wifi_status
  is 'WIFI���:0����ͣ�ã�1������ʹ�ã�9����WIFI';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.washroom_status
  is '���������:0����ͣ�ã�1������ʹ�ã�9����������';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.park_num
  is '��λ����';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.create_time
  is '����ʱ��';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.sep_no
  is '���к�';
comment on column JK_MESSAGE_SERVICEZONE_UPLOAD.park_num_all
  is '�ܳ�λ��';
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
  is '������ʵʱ��Ϣ��';
comment on column JK_ORG_STATUS_INFO.up_status
  is '�رջ����Ʊ��  1:�ر� 2:���� 99��������';
comment on column JK_ORG_STATUS_INFO.up_src_id
  is '��Դid';
comment on column JK_ORG_STATUS_INFO.up_time
  is '����޸�ʱ��';
comment on column JK_ORG_STATUS_INFO.down_status
  is '�رջ����Ʊ��  1:�ر� 2:���� 99��������';
comment on column JK_ORG_STATUS_INFO.down_time
  is '����޸�ʱ��';
comment on column JK_ORG_STATUS_INFO.up_car
  is '�ͳ�״̬   ';
comment on column JK_ORG_STATUS_INFO.up_truck
  is '����״̬';
comment on column JK_ORG_STATUS_INFO.up_car_detail
  is '7������������  1:��ֹ�ϵ� 2.��ֹͨ��';
comment on column JK_ORG_STATUS_INFO.up_truck_detail
  is '7������������';
comment on column JK_ORG_STATUS_INFO.down_car
  is '�ͳ�״̬   ';
comment on column JK_ORG_STATUS_INFO.down_truck
  is '����״̬';
comment on column JK_ORG_STATUS_INFO.other_msg
  is '������Ϣ';
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
  is 'ÿ��·���������շ�վ��״̬';
comment on column JK_ORG_STATUS_PUBLISH.org_id
  is '����id';
comment on column JK_ORG_STATUS_PUBLISH.direction_id
  is '����id';
comment on column JK_ORG_STATUS_PUBLISH.action
  is '���� 1.�ر�  2��ֹ';
comment on column JK_ORG_STATUS_PUBLISH.limit_type
  is '��ֹ����Ŀ';
comment on column JK_ORG_STATUS_PUBLISH.limit_cars
  is '��ֹ����';
comment on column JK_ORG_STATUS_PUBLISH.reason
  is '��Դԭ��';
comment on column JK_ORG_STATUS_PUBLISH.src_id
  is '·����Դid';
comment on column JK_ORG_STATUS_PUBLISH.enable_time
  is '��Ч����';
comment on column JK_ORG_STATUS_PUBLISH.parent_id
  is '��ʷ����';
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
  is '·����Դid';
comment on column JK_ORG_STATUS_PUBLISH_HIS.parent_id
  is '��id';
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
  is '����ˮ����ˮ���ݱ�';
comment on column JK_POOL_HISTORY_DATA.jk_pool_history_data_id
  is '��¼ID��ʹ��UUID��Ϊ����';
comment on column JK_POOL_HISTORY_DATA.device_id
  is '�豸����';
comment on column JK_POOL_HISTORY_DATA.device_status_id
  is '�豸״̬';
comment on column JK_POOL_HISTORY_DATA.error_message
  is '�豸����';
comment on column JK_POOL_HISTORY_DATA.h_value
  is '��ˮλ����λ��m';
comment on column JK_POOL_HISTORY_DATA.l_value
  is '��ˮλ';
comment on column JK_POOL_HISTORY_DATA.collect_time
  is '�ɼ�ʱ�䣺��ǰ�ɼ����ڵ���ʼʱ��';
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
  is '����ˮ��ʵʱ���ݱ�';
comment on column JK_POOL_REAL_DATA.device_id
  is '�豸����';
comment on column JK_POOL_REAL_DATA.device_status_id
  is '�豸״̬';
comment on column JK_POOL_REAL_DATA.error_message
  is '�豸����';
comment on column JK_POOL_REAL_DATA.h_value
  is '��ˮλ����λ��m';
comment on column JK_POOL_REAL_DATA.l_value
  is '��ˮλ';
comment on column JK_POOL_REAL_DATA.collect_time
  is '�ɼ�ʱ�䣺��ǰ�ɼ����ڵ���ʼʱ��';
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
  is '����ˮ����ˮ���ݱ�';
comment on column JK_PUMP_HISTORY_DATA.jk_pump_history_data_id
  is '��¼ID��ʹ��UUID��Ϊ����';
comment on column JK_PUMP_HISTORY_DATA.device_id
  is '�豸����';
comment on column JK_PUMP_HISTORY_DATA.device_status_id
  is '�豸״̬';
comment on column JK_PUMP_HISTORY_DATA.error_message
  is '�豸����';
comment on column JK_PUMP_HISTORY_DATA.status
  is '����״̬��0:��  1:��';
comment on column JK_PUMP_HISTORY_DATA.collect_time
  is '�ɼ�ʱ�䣺��ǰ�ɼ����ڵ���ʼʱ��';
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
  is '����ˮ��ʵʱ���ݱ�';
comment on column JK_PUMP_REAL_DATA.device_id
  is '�豸����';
comment on column JK_PUMP_REAL_DATA.device_status_id
  is '�豸״̬';
comment on column JK_PUMP_REAL_DATA.error_message
  is '�豸����';
comment on column JK_PUMP_REAL_DATA.status
  is '����״̬��0:��  1:��';
comment on column JK_PUMP_REAL_DATA.collect_time
  is '�ɼ�ʱ�䣺��ǰ�ɼ����ڵ���ʼʱ��';
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
  is '�յ���ˮ���ݱ�';
comment on column JK_RAC_HISTORY_DATA.jk_rac_history_data_id
  is '��¼ID��ʹ��UUID��Ϊ����';
comment on column JK_RAC_HISTORY_DATA.device_id
  is '�豸����';
comment on column JK_RAC_HISTORY_DATA.device_status_id
  is '�豸״̬';
comment on column JK_RAC_HISTORY_DATA.error_message
  is '������Ϣ';
comment on column JK_RAC_HISTORY_DATA.status
  is '����״̬';
comment on column JK_RAC_HISTORY_DATA.in_temperature
  is '������¶�';
comment on column JK_RAC_HISTORY_DATA.out_temperature
  is '������¶�';
comment on column JK_RAC_HISTORY_DATA.air_temperature
  is '�����¶�';
comment on column JK_RAC_HISTORY_DATA.set_temperature
  is '�趨�¶�';
comment on column JK_RAC_HISTORY_DATA.wind_speed
  is '�����ڷ��٣�M/s';
comment on column JK_RAC_HISTORY_DATA.set_speed
  is '�趨���ٵȼ���1��6��';
comment on column JK_RAC_HISTORY_DATA.work_mode
  is '����ģʽ��1=����/2=����';
comment on column JK_RAC_HISTORY_DATA.collect_time
  is '���ݲɼ�ʱ��';
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
  is '�յ�ʵʱ���ݱ�';
comment on column JK_RAC_REAL_DATA.device_id
  is '�豸����';
comment on column JK_RAC_REAL_DATA.device_status_id
  is '�豸״̬';
comment on column JK_RAC_REAL_DATA.error_message
  is '������Ϣ';
comment on column JK_RAC_REAL_DATA.status
  is '����״̬';
comment on column JK_RAC_REAL_DATA.in_temperature
  is '������¶�';
comment on column JK_RAC_REAL_DATA.out_temperature
  is '������¶�';
comment on column JK_RAC_REAL_DATA.air_temperature
  is '�����¶�';
comment on column JK_RAC_REAL_DATA.set_temperature
  is '�趨�¶�';
comment on column JK_RAC_REAL_DATA.wind_speed
  is '�����ڷ��٣�M/s';
comment on column JK_RAC_REAL_DATA.set_speed
  is '�趨���ٵȼ���1��6��';
comment on column JK_RAC_REAL_DATA.work_mode
  is '����ģʽ��1=����/2=����';
comment on column JK_RAC_REAL_DATA.collect_time
  is '���ݲɼ�ʱ��';
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
  is '�����豸�������ϱ�';
comment on column JK_RD_DEVICE_PROFILE.device_id
  is '�豸ID';
comment on column JK_RD_DEVICE_PROFILE.device_desc
  is '�豸���ƻ��豸����';
comment on column JK_RD_DEVICE_PROFILE.station_code
  is 'վ����';
comment on column JK_RD_DEVICE_PROFILE.device_type_id
  is '�豸����';
comment on column JK_RD_DEVICE_PROFILE.em_type_id
  is '��������ϵͳ';
comment on column JK_RD_DEVICE_PROFILE.road_segment_id
  is '����·��';
comment on column JK_RD_DEVICE_PROFILE.organization_id
  is '�������������Ҫ�������豸�Ĺ��������Ӧ����Ϊ��·�ι������ȹ������';
comment on column JK_RD_DEVICE_PROFILE.direction_id
  is '�豸���ڷ��򣨻�λ�ã�';
comment on column JK_RD_DEVICE_PROFILE.dec_stub
  is '����׮��';
comment on column JK_RD_DEVICE_PROFILE.char_stub
  is '�ַ�׮��';
comment on column JK_RD_DEVICE_PROFILE.price
  is '�۸񣺵�λ��Ԫ';
comment on column JK_RD_DEVICE_PROFILE.code
  is '�豸���ʶ����';
comment on column JK_RD_DEVICE_PROFILE.vendor_code
  is '�豸�������̴��� ';
comment on column JK_RD_DEVICE_PROFILE.function_code
  is '�豸���ܴ���';
comment on column JK_RD_DEVICE_PROFILE.principle_code
  is '����ԭ�����';
comment on column JK_RD_DEVICE_PROFILE.transmission_code
  is '���䷽ʽ����';
comment on column JK_RD_DEVICE_PROFILE.serial_number
  is '�������к�';
comment on column JK_RD_DEVICE_PROFILE.installer
  is '��װ����';
comment on column JK_RD_DEVICE_PROFILE.install_time
  is '��װʱ��';
comment on column JK_RD_DEVICE_PROFILE.communication
  is '"ͨ�ŷ�ʽ:ͨѶ��ʽ����
0:δ֪ 1TCP 2udp 3����"';
comment on column JK_RD_DEVICE_PROFILE.ip
  is 'IP��ַ:����ģʽʱ����д���ڷ�����Ip������ģʽʱ����д�豸ip';
comment on column JK_RD_DEVICE_PROFILE.port
  is '�˿�/���ں�:����ģʽʱ����д���ںţ�����ģʽʱ����д�˿ں�';
comment on column JK_RD_DEVICE_PROFILE.bot
  is '��������';
comment on column JK_RD_DEVICE_PROFILE.sign
  is '"�Ƿ����ñ�־:�豸�ɼ������Ƿ�����
0���رգ�1����"';
comment on column JK_RD_DEVICE_PROFILE.other
  is '��������';
comment on column JK_RD_DEVICE_PROFILE.dal
  is 'ҵ��������';
comment on column JK_RD_DEVICE_PROFILE.manufactor_name
  is '��������';
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
  is '����վ��ˮ���ݱ�';
comment on column JK_RD_HISTORY_DATAF.jk_rd_history_dataf_id
  is '��¼ID';
comment on column JK_RD_HISTORY_DATAF.device_id
  is '�豸����';
comment on column JK_RD_HISTORY_DATAF.start_time
  is '���������ʼʱ��';
comment on column JK_RD_HISTORY_DATAF.end_time
  is '���������ֹʱ��';
comment on column JK_RD_HISTORY_DATAF.collect_time
  is '�ɼ�ʱ��';
comment on column JK_RD_HISTORY_DATAF.serial_number
  is '�������';
comment on column JK_RD_HISTORY_DATAF.direction_id
  is '���ݳ�����Ż��';
comment on column JK_RD_HISTORY_DATAF.lane_number
  is '�������';
comment on column JK_RD_HISTORY_DATAF.car_follow
  is '�����ٷֱ�';
comment on column JK_RD_HISTORY_DATAF.avg_space
  is 'ƽ����ͷ���';
comment on column JK_RD_HISTORY_DATAF.data_occupancy
  is 'ʱ��ռ����';
comment on column JK_RD_HISTORY_DATAF.grade
  is '���ݷּ�';
comment on column JK_RD_HISTORY_DATAF.flow
  is '���Խ�ͨ����ָ��ǰ�豸�ڵ�ǰ�ɼ�ʱ����ڡ���ǰ��������г��͵Ľ�ͨ���ϼ�';
comment on column JK_RD_HISTORY_DATAF.speed
  is 'ƽ�����٣�ָ��ǰ�豸�ڵ�ǰ�ɼ�ʱ����ڡ���ǰ�����ƽ���ٶ�';
comment on column JK_RD_HISTORY_DATAF.flow_1
  is '��С�ͳ���ͨ��';
comment on column JK_RD_HISTORY_DATAF.flow_1_avgspeed
  is '��С�ͳ�ƽ���ص㳵��';
comment on column JK_RD_HISTORY_DATAF.flow_2
  is 'С�ͻ�����ͨ��';
comment on column JK_RD_HISTORY_DATAF.flow_2_avgspeed
  is 'С�ͻ���ƽ���ص㳵��';
comment on column JK_RD_HISTORY_DATAF.flow_3
  is '��ͳ���ͨ��';
comment on column JK_RD_HISTORY_DATAF.flow_3_avgspeed
  is '��ͳ���ƽ���ص㳵��';
comment on column JK_RD_HISTORY_DATAF.flow_4
  is '���ͻ�����ͨ��';
comment on column JK_RD_HISTORY_DATAF.flow_4_avgspeed
  is '���ͻ���ƽ���ص㳵��';
comment on column JK_RD_HISTORY_DATAF.flow_5
  is '���ͻ�����ͨ��';
comment on column JK_RD_HISTORY_DATAF.flow_5_avgspeed
  is '���ͻ���ƽ���ص㳵��';
comment on column JK_RD_HISTORY_DATAF.flow_6
  is '�ش��ͻ�����ͨ��';
comment on column JK_RD_HISTORY_DATAF.flow_6_avgspeed
  is '�ش��ͻ���ƽ���ص㳵��';
comment on column JK_RD_HISTORY_DATAF.flow_7
  is '��װ�䳵��ͨ��';
comment on column JK_RD_HISTORY_DATAF.flow_7_avgspeed
  is '��װ�䳵ƽ���ص㳵��';
comment on column JK_RD_HISTORY_DATAF.flow_8
  is '��������ͨ��';
comment on column JK_RD_HISTORY_DATAF.flow_8_avgspeed
  is '������ƽ���ص㳵��';
comment on column JK_RD_HISTORY_DATAF.flow_9
  is 'Ħ�г���ͨ��';
comment on column JK_RD_HISTORY_DATAF.flow_9_avgspeed
  is 'Ħ�г�ƽ���ص㳵��';
comment on column JK_RD_HISTORY_DATAF.flow_10
  is 'С�ͳ���ͨ��';
comment on column JK_RD_HISTORY_DATAF.flow_10_avgspeed
  is 'С�ͳ�ƽ���ص㳵��';
comment on column JK_RD_HISTORY_DATAF.flow_11
  is '���ͳ���ͨ��';
comment on column JK_RD_HISTORY_DATAF.flow_11_avgspeed
  is '���ͳ�ƽ���ص㳵��';
comment on column JK_RD_HISTORY_DATAF.flow_12
  is '���ͳ���ͨ��';
comment on column JK_RD_HISTORY_DATAF.flow_12_avgspeed
  is '���ͳ�ƽ���ص㳵��';
comment on column JK_RD_HISTORY_DATAF.flow_13
  is '�ش��ͳ���ͨ��';
comment on column JK_RD_HISTORY_DATAF.flow_13_avgspeed
  is '�ش��ͳ�ƽ���ص㳵��';
comment on column JK_RD_HISTORY_DATAF.flow_14
  is 'һ�������������Ħ�г�����ͨ��';
comment on column JK_RD_HISTORY_DATAF.flow_14_avgspeed
  is 'һ�������������Ħ�г���ƽ���ص㳵��';
comment on column JK_RD_HISTORY_DATAF.device_status_id
  is '�豸״̬';
comment on column JK_RD_HISTORY_DATAF.error_message
  is '�豸����';
comment on column JK_RD_HISTORY_DATAF.syncflag
  is 'ͬ����־��0δͬ����1��ͬ��';
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
  is '����վʵʱ��������';
comment on column JK_RD_HISTORY_DATAZ.device_id
  is '�豸����';
comment on column JK_RD_HISTORY_DATAZ.device_status_id
  is '�豸״̬';
comment on column JK_RD_HISTORY_DATAZ.error_message
  is '�豸����';
comment on column JK_RD_HISTORY_DATAZ.collect_time
  is '�ɼ�ʱ��,��ǰ�ɼ����ڵ���ʼʱ��';
comment on column JK_RD_HISTORY_DATAZ.jk_rd_history_dataz_id
  is 'uuid';
comment on column JK_RD_HISTORY_DATAZ.syncflag
  is 'ͬ����־��0δͬ����1��ͬ��';
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
  is '����վ��ˮ���ݱ�';
comment on column JK_RD_REAL_DATAF.jk_rd_real_dataf_id
  is '��¼ID';
comment on column JK_RD_REAL_DATAF.device_id
  is '�豸����';
comment on column JK_RD_REAL_DATAF.start_time
  is '���������ʼʱ��';
comment on column JK_RD_REAL_DATAF.end_time
  is '���������ֹʱ��';
comment on column JK_RD_REAL_DATAF.collect_time
  is '�ɼ�ʱ��';
comment on column JK_RD_REAL_DATAF.serial_number
  is '�������(Լ�������ĵ�����ΪVARCHAR2��10���������⣬��ʱ��Ϊnumber)';
comment on column JK_RD_REAL_DATAF.direction_id
  is '���ݳ�����Ż��';
comment on column JK_RD_REAL_DATAF.lane_number
  is '�������';
comment on column JK_RD_REAL_DATAF.car_follow
  is '�����ٷֱ�';
comment on column JK_RD_REAL_DATAF.avg_space
  is 'ƽ����ͷ���';
comment on column JK_RD_REAL_DATAF.data_occupancy
  is 'ʱ��ռ����';
comment on column JK_RD_REAL_DATAF.grade
  is '���ݷּ�';
comment on column JK_RD_REAL_DATAF.flow
  is '���Խ�ͨ����ָ��ǰ�豸�ڵ�ǰ�ɼ�ʱ����ڡ���ǰ��������г��͵Ľ�ͨ���ϼ�';
comment on column JK_RD_REAL_DATAF.speed
  is 'ƽ�����٣�ָ��ǰ�豸�ڵ�ǰ�ɼ�ʱ����ڡ���ǰ�����ƽ���ٶ�';
comment on column JK_RD_REAL_DATAF.flow_1
  is '��С�ͳ���ͨ��';
comment on column JK_RD_REAL_DATAF.flow_1_avgspeed
  is '��С�ͳ�ƽ���ص㳵��';
comment on column JK_RD_REAL_DATAF.flow_2
  is 'С�ͻ�����ͨ��';
comment on column JK_RD_REAL_DATAF.flow_2_avgspeed
  is 'С�ͻ���ƽ���ص㳵��';
comment on column JK_RD_REAL_DATAF.flow_3
  is '��ͳ���ͨ��';
comment on column JK_RD_REAL_DATAF.flow_3_avgspeed
  is '��ͳ���ƽ���ص㳵��';
comment on column JK_RD_REAL_DATAF.flow_4
  is '���ͻ�����ͨ��';
comment on column JK_RD_REAL_DATAF.flow_4_avgspeed
  is '���ͻ���ƽ���ص㳵��';
comment on column JK_RD_REAL_DATAF.flow_5
  is '���ͻ�����ͨ��';
comment on column JK_RD_REAL_DATAF.flow_5_avgspeed
  is '���ͻ���ƽ���ص㳵��';
comment on column JK_RD_REAL_DATAF.flow_6
  is '�ش��ͻ�����ͨ��';
comment on column JK_RD_REAL_DATAF.flow_6_avgspeed
  is '�ش��ͻ���ƽ���ص㳵��';
comment on column JK_RD_REAL_DATAF.flow_7
  is '��װ�䳵��ͨ��';
comment on column JK_RD_REAL_DATAF.flow_7_avgspeed
  is '��װ�䳵ƽ���ص㳵��';
comment on column JK_RD_REAL_DATAF.flow_8
  is '��������ͨ��';
comment on column JK_RD_REAL_DATAF.flow_8_avgspeed
  is '������ƽ���ص㳵��';
comment on column JK_RD_REAL_DATAF.flow_9
  is 'Ħ�г���ͨ��';
comment on column JK_RD_REAL_DATAF.flow_9_avgspeed
  is 'Ħ�г�ƽ���ص㳵��';
comment on column JK_RD_REAL_DATAF.flow_10
  is 'С�ͳ���ͨ��';
comment on column JK_RD_REAL_DATAF.flow_10_avgspeed
  is 'С�ͳ�ƽ���ص㳵��';
comment on column JK_RD_REAL_DATAF.flow_11
  is '���ͳ���ͨ��';
comment on column JK_RD_REAL_DATAF.flow_11_avgspeed
  is '���ͳ�ƽ���ص㳵��';
comment on column JK_RD_REAL_DATAF.flow_12
  is '���ͳ���ͨ��';
comment on column JK_RD_REAL_DATAF.flow_12_avgspeed
  is '���ͳ�ƽ���ص㳵��';
comment on column JK_RD_REAL_DATAF.flow_13
  is '�ش��ͳ���ͨ��';
comment on column JK_RD_REAL_DATAF.flow_13_avgspeed
  is '�ش��ͳ�ƽ���ص㳵��';
comment on column JK_RD_REAL_DATAF.flow_14
  is 'һ�������������Ħ�г�����ͨ��';
comment on column JK_RD_REAL_DATAF.flow_14_avgspeed
  is 'һ�������������Ħ�г���ƽ���ص㳵��';
comment on column JK_RD_REAL_DATAF.device_status_id
  is '�豸״̬';
comment on column JK_RD_REAL_DATAF.error_message
  is '�豸����';
comment on column JK_RD_REAL_DATAF.syncflag
  is 'ͬ����־��0δͬ����1��ͬ��';
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
  is '����վʵʱ��������';
comment on column JK_RD_REAL_DATAZ.device_id
  is '�豸����';
comment on column JK_RD_REAL_DATAZ.device_status_id
  is '�豸״̬';
comment on column JK_RD_REAL_DATAZ.error_message
  is '�豸����';
comment on column JK_RD_REAL_DATAZ.collect_time
  is '�ɼ�ʱ��,��ǰ�ɼ����ڵ���ʼʱ��';
comment on column JK_RD_REAL_DATAZ.syncflag
  is 'ͬ����־��0δͬ����1��ͬ��';
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
  is '��ͨ���������ݱ�';
comment on column JK_RD_SUM_DATA.jk_rd_sum_data_id
  is '��¼ID';
comment on column JK_RD_SUM_DATA.grade
  is '���ݷּ�';
comment on column JK_RD_SUM_DATA.device_id
  is '�豸���';
comment on column JK_RD_SUM_DATA.direction_id
  is '����';
comment on column JK_RD_SUM_DATA.record_type
  is '��������';
comment on column JK_RD_SUM_DATA.record_time
  is '���������ʼʱ��';
comment on column JK_RD_SUM_DATA.create_time
  is '��¼ʱ��';
comment on column JK_RD_SUM_DATA.flow
  is ' ���Խ�ͨ��';
comment on column JK_RD_SUM_DATA.speed
  is 'ƽ���ٶ�';
comment on column JK_RD_SUM_DATA.data_occupancy
  is 'ƽ��ռ����';
comment on column JK_RD_SUM_DATA.car_follow
  is '�����ٷֱ�';
comment on column JK_RD_SUM_DATA.avg_space
  is 'ƽ����ͷ���';
comment on column JK_RD_SUM_DATA.flow_1
  is '��С�ͳ���ͨ��';
comment on column JK_RD_SUM_DATA.flow_2
  is 'С�ͳ���ͨ��';
comment on column JK_RD_SUM_DATA.flow_3
  is 'ָ��ͳ���ͨ��';
comment on column JK_RD_SUM_DATA.flow_4
  is ' ָ���ͻ�����ͨ��';
comment on column JK_RD_SUM_DATA.flow_5
  is 'ָ���ͻ�����ͨ��';
comment on column JK_RD_SUM_DATA.flow_6
  is 'ָ�ش��ͻ�����ͨ��';
comment on column JK_RD_SUM_DATA.flow_7
  is ' �� װ �� ����ͨ��';
comment on column JK_RD_SUM_DATA.flow_8
  is 'ָ��������ͨ��';
comment on column JK_RD_SUM_DATA.flow_9
  is 'Ħ�г���ͨ��';
comment on column JK_RD_SUM_DATA.flow_10
  is 'ָС�ͳ���ͨ��';
comment on column JK_RD_SUM_DATA.flow_11
  is '���ͳ���ͨ��';
comment on column JK_RD_SUM_DATA.flow_12
  is '���ͳ���ͨ��';
comment on column JK_RD_SUM_DATA.flow_13
  is ' ָ�ش��ͳ���ͨ��';
comment on column JK_RD_SUM_DATA.flow_14
  is '�����������ͨ��';
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
  is '��ͨ�źŵ���ˮ���ݱ�';
comment on column JK_TL_HISTORY_DATA.jk_tl_history_data_id
  is '��¼ID��ʹ��UUID��Ϊ����';
comment on column JK_TL_HISTORY_DATA.device_id
  is '�豸����';
comment on column JK_TL_HISTORY_DATA.device_status_id
  is '�豸״̬';
comment on column JK_TL_HISTORY_DATA.error_message
  is '�豸����';
comment on column JK_TL_HISTORY_DATA.green_status
  is '�̵�״̬������0����  1����';
comment on column JK_TL_HISTORY_DATA.red_status
  is '���״̬������0����  1����';
comment on column JK_TL_HISTORY_DATA.yellow_status
  is '�Ƶ�״̬������0����  1����';
comment on column JK_TL_HISTORY_DATA.turn_status
  is 'ת���״̬������0����  1����';
comment on column JK_TL_HISTORY_DATA.collect_time
  is '�ɼ�ʱ�䣺��ǰ�ɼ����ڵ���ʼʱ��';
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
  is '��ͨ�źŵ�ʵʱ���ݱ�';
comment on column JK_TL_REAL_DATA.device_id
  is '�豸����';
comment on column JK_TL_REAL_DATA.device_status_id
  is '�豸״̬';
comment on column JK_TL_REAL_DATA.error_message
  is '�豸����';
comment on column JK_TL_REAL_DATA.green_status
  is '�̵�״̬������0����  1����';
comment on column JK_TL_REAL_DATA.red_status
  is '���״̬������0����  1����';
comment on column JK_TL_REAL_DATA.yellow_status
  is '�Ƶ�״̬������0����  1����';
comment on column JK_TL_REAL_DATA.turn_status
  is 'ת���״̬������0����  1����';
comment on column JK_TL_REAL_DATA.collect_time
  is '�ɼ�ʱ�䣺��ǰ�ɼ����ڵ���ʼʱ��';
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
  is '����ָʾ����ˮ���ݱ�';
comment on column JK_TS_HISTORY_DATA.jk_ts_history_data_id
  is '��¼ID��ʹ��UUID��Ϊ����';
comment on column JK_TS_HISTORY_DATA.device_id
  is '�豸����';
comment on column JK_TS_HISTORY_DATA.device_status_id
  is '�豸״̬';
comment on column JK_TS_HISTORY_DATA.error_message
  is '�豸����';
comment on column JK_TS_HISTORY_DATA.back_arrow_status
  is '�����̼�״̬������0����  1����';
comment on column JK_TS_HISTORY_DATA.back_x_status
  is '������״̬������0����  1����';
comment on column JK_TS_HISTORY_DATA.front_arrow_status
  is '�����̼�״̬������0����  1����';
comment on column JK_TS_HISTORY_DATA.front_x_status
  is '������״̬������0����  1����';
comment on column JK_TS_HISTORY_DATA.collect_time
  is '�ɼ�ʱ�䣺��ǰ�ɼ����ڵ���ʼʱ��';
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
  is '����ָʾ��ʵʱ���ݱ�';
comment on column JK_TS_REAL_DATA.device_id
  is '�豸����';
comment on column JK_TS_REAL_DATA.device_status_id
  is '�豸״̬';
comment on column JK_TS_REAL_DATA.error_message
  is '�豸����';
comment on column JK_TS_REAL_DATA.back_arrow_status
  is '�����̼�״̬������0����  1����';
comment on column JK_TS_REAL_DATA.back_x_status
  is '������״̬������0����  1����';
comment on column JK_TS_REAL_DATA.front_arrow_status
  is '�����̼�״̬������0����  1����';
comment on column JK_TS_REAL_DATA.front_x_status
  is '������״̬������0����  1����';
comment on column JK_TS_REAL_DATA.collect_time
  is '�ɼ�ʱ�䣺��ǰ�ɼ����ڵ���ʼʱ��';
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
  is '���ٷ���������ˮ���ݱ�';
comment on column JK_TW_HISTORY_DATA.jk_tw_history_data_id
  is '��¼ID��ʹ��UUID��Ϊ����';
comment on column JK_TW_HISTORY_DATA.device_id
  is '�豸����';
comment on column JK_TW_HISTORY_DATA.device_status_id
  is '�豸״̬';
comment on column JK_TW_HISTORY_DATA.error_message
  is '�豸����';
comment on column JK_TW_HISTORY_DATA.wind_speed
  is '����ֵ';
comment on column JK_TW_HISTORY_DATA.wind_orientation
  is '����0���г�����1�����г�����2�����';
comment on column JK_TW_HISTORY_DATA.collect_time
  is '�ɼ�ʱ��';
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
  is '���ٷ�������ʵʱ���ݱ�';
comment on column JK_TW_REAL_DATA.device_id
  is '�豸����';
comment on column JK_TW_REAL_DATA.device_status_id
  is '�豸״̬';
comment on column JK_TW_REAL_DATA.error_message
  is '�豸����';
comment on column JK_TW_REAL_DATA.wind_speed
  is '����ֵ';
comment on column JK_TW_REAL_DATA.wind_orientation
  is '����0���г�����1�����г�����2�����';
comment on column JK_TW_REAL_DATA.collect_time
  is '�ɼ�ʱ��';
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
  is '�豸�������ϱ�';
comment on column JK_VD_DEVICE_PROFILE.device_id
  is '�豸ID';
comment on column JK_VD_DEVICE_PROFILE.device_desc
  is '�豸���ƻ��豸����';
comment on column JK_VD_DEVICE_PROFILE.device_type_id
  is '�豸����';
comment on column JK_VD_DEVICE_PROFILE.em_type_id
  is '��������ϵͳ';
comment on column JK_VD_DEVICE_PROFILE.road_segment_id
  is '����·��';
comment on column JK_VD_DEVICE_PROFILE.organization_id
  is '�������������Ҫ�������豸�Ĺ��������Ӧ����Ϊ��·�ι������ȹ������';
comment on column JK_VD_DEVICE_PROFILE.direction_id
  is '�豸���ڷ��򣨻�λ�ã�';
comment on column JK_VD_DEVICE_PROFILE.dec_stub
  is '����׮��';
comment on column JK_VD_DEVICE_PROFILE.char_stub
  is '�ַ�׮��';
comment on column JK_VD_DEVICE_PROFILE.price
  is '�۸񣺵�λ��Ԫ';
comment on column JK_VD_DEVICE_PROFILE.manufacturer
  is '��������';
comment on column JK_VD_DEVICE_PROFILE.product_model
  is '��Ʒ�ͺ�';
comment on column JK_VD_DEVICE_PROFILE.quantity
  is '����';
comment on column JK_VD_DEVICE_PROFILE.installer
  is '��װ����';
comment on column JK_VD_DEVICE_PROFILE.install_time
  is '��װʱ��';
comment on column JK_VD_DEVICE_PROFILE.collect_type
  is '���ݲɼ���ʽ��1:���ݽ���  2:�˹�¼��';
comment on column JK_VD_DEVICE_PROFILE.user_id
  is '�������ʱ���û�';
comment on column JK_VD_DEVICE_PROFILE.collect_time
  is '����ʱ��';
comment on column JK_VD_DEVICE_PROFILE.flag
  is 'ɾ����־:0����Ч��1��Ч';
comment on column JK_VD_DEVICE_PROFILE.update_time
  is '�޸�ʱ��';
comment on column JK_VD_DEVICE_PROFILE.communication
  is 'ͨ�ŷ�ʽ:ͨѶ��ʽ����
0:δ֪ 1TCP 2udp 3����';
comment on column JK_VD_DEVICE_PROFILE.ip
  is 'IP��ַ:����ģʽʱ����д���ڷ�����Ip������ģʽʱ����д�豸ip';
comment on column JK_VD_DEVICE_PROFILE.port
  is '�˿�/���ں�:����ģʽʱ����д���ںţ�����ģʽʱ����д�˿ں�';
comment on column JK_VD_DEVICE_PROFILE.bot
  is '��������';
comment on column JK_VD_DEVICE_PROFILE.valid
  is '�Ƿ����ñ�־:�豸�ɼ������Ƿ�����
0���رգ�1����';
comment on column JK_VD_DEVICE_PROFILE.other
  is '��������';
comment on column JK_VD_DEVICE_PROFILE.dal
  is 'ҵ��������';
comment on column JK_VD_DEVICE_PROFILE.manufactor_name
  is '��������';
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
  is '�����������ˮ���ݱ�';
comment on column JK_VD_HISTORY_DATA1.jk_vd_history_data_id
  is '��¼ID';
comment on column JK_VD_HISTORY_DATA1.device_id
  is '�豸ID';
comment on column JK_VD_HISTORY_DATA1.start_time
  is '���������ʼʱ��';
comment on column JK_VD_HISTORY_DATA1.end_time
  is '���������ֹʱ��';
comment on column JK_VD_HISTORY_DATA1.collect_time
  is '�ɼ�ʱ��';
comment on column JK_VD_HISTORY_DATA1.direction_id
  is '����';
comment on column JK_VD_HISTORY_DATA1.lane_number
  is '�������';
comment on column JK_VD_HISTORY_DATA1.flow
  is '���Խ�ͨ��';
comment on column JK_VD_HISTORY_DATA1.flow_1
  is '����1��ͨ��';
comment on column JK_VD_HISTORY_DATA1.flow_2
  is '����2��ͨ��';
comment on column JK_VD_HISTORY_DATA1.flow_3
  is '����3��ͨ��';
comment on column JK_VD_HISTORY_DATA1.flow_4
  is '����4��ͨ��';
comment on column JK_VD_HISTORY_DATA1.flow_5
  is '����5��ͨ��';
comment on column JK_VD_HISTORY_DATA1.flow_6
  is '����6��ͨ��';
comment on column JK_VD_HISTORY_DATA1.flow_dl
  is '������ͨ��';
comment on column JK_VD_HISTORY_DATA1.speed
  is 'ƽ���ٶ�';
comment on column JK_VD_HISTORY_DATA1.occupancy
  is 'ƽ��ռ����';
comment on column JK_VD_HISTORY_DATA1.traffic_status
  is 'ʵʱ��ͨ״̬';
comment on column JK_VD_HISTORY_DATA1.traffic_status_next
  is '��һ����Ԥ�⽻ͨ״̬';
comment on column JK_VD_HISTORY_DATA1.speed_next
  is '��һ����Ԥ���ٶ�';
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
  is '����������������ݱ�';
comment on column JK_VD_SUM_DATA.jk_vd_sum_data_id
  is '��¼ID';
comment on column JK_VD_SUM_DATA.device_id
  is '�豸ID';
comment on column JK_VD_SUM_DATA.direction_id
  is '����';
comment on column JK_VD_SUM_DATA.record_type
  is '��¼����';
comment on column JK_VD_SUM_DATA.record_time
  is '��¼����ʱ��';
comment on column JK_VD_SUM_DATA.create_time
  is '����ʱ��';
comment on column JK_VD_SUM_DATA.flow
  is '���Խ�ͨ��';
comment on column JK_VD_SUM_DATA.flow_1
  is '����1��ͨ��';
comment on column JK_VD_SUM_DATA.flow_2
  is '����2��ͨ��';
comment on column JK_VD_SUM_DATA.flow_3
  is '����3��ͨ��';
comment on column JK_VD_SUM_DATA.flow_4
  is '����4��ͨ��';
comment on column JK_VD_SUM_DATA.flow_5
  is '����5��ͨ��';
comment on column JK_VD_SUM_DATA.flow_6
  is '����6��ͨ��';
comment on column JK_VD_SUM_DATA.flow_dl
  is '������ͨ��';
comment on column JK_VD_SUM_DATA.speed
  is 'ƽ���ٶ�';
comment on column JK_VD_SUM_DATA.occupancy
  is 'ƽ��ռ����';
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
  is '�����豸�������ϱ�';
comment on column JK_WS_DEVICE_PROFILE.device_id
  is '�豸ID';
comment on column JK_WS_DEVICE_PROFILE.device_desc
  is '�豸���ƻ��豸����';
comment on column JK_WS_DEVICE_PROFILE.device_type_id
  is '�豸����';
comment on column JK_WS_DEVICE_PROFILE.em_type_id
  is '��������ϵͳ';
comment on column JK_WS_DEVICE_PROFILE.road_segment_id
  is '����·��';
comment on column JK_WS_DEVICE_PROFILE.organization_id
  is '�������������Ҫ�������豸�Ĺ��������Ӧ����Ϊ��·�ι������ȹ������';
comment on column JK_WS_DEVICE_PROFILE.direction_id
  is '�豸���ڷ��򣨻�λ�ã�';
comment on column JK_WS_DEVICE_PROFILE.dec_stub
  is '����׮��';
comment on column JK_WS_DEVICE_PROFILE.char_stub
  is '�ַ�׮��';
comment on column JK_WS_DEVICE_PROFILE.price
  is '�۸񣺵�λ��Ԫ';
comment on column JK_WS_DEVICE_PROFILE.manufacturer
  is '��������';
comment on column JK_WS_DEVICE_PROFILE.product_model
  is '��Ʒ�ͺ�';
comment on column JK_WS_DEVICE_PROFILE.quantity
  is '����';
comment on column JK_WS_DEVICE_PROFILE.installer
  is '��װ����';
comment on column JK_WS_DEVICE_PROFILE.install_time
  is '��װʱ��';
comment on column JK_WS_DEVICE_PROFILE.collect_type
  is '���ݲɼ���ʽ��1:���ݽ���  2:�˹�¼��';
comment on column JK_WS_DEVICE_PROFILE.user_id
  is '�������ʱ���û�';
comment on column JK_WS_DEVICE_PROFILE.collect_time
  is '����ʱ��';
comment on column JK_WS_DEVICE_PROFILE.flag
  is 'ɾ����־:0����Ч��1��Ч';
comment on column JK_WS_DEVICE_PROFILE.update_time
  is '�޸�ʱ��';
comment on column JK_WS_DEVICE_PROFILE.communication
  is 'ͨ�ŷ�ʽ:ͨѶ��ʽ����
0:δ֪ 1TCP 2udp 3����';
comment on column JK_WS_DEVICE_PROFILE.ip
  is 'IP��ַ:����ģʽʱ����д���ڷ�����Ip������ģʽʱ����д�豸ip';
comment on column JK_WS_DEVICE_PROFILE.port
  is '�˿�/���ں�:����ģʽʱ����д���ںţ�����ģʽʱ����д�˿ں�';
comment on column JK_WS_DEVICE_PROFILE.bot
  is '��������';
comment on column JK_WS_DEVICE_PROFILE.valid
  is '�Ƿ����ñ�־:�豸�ɼ������Ƿ�����
0���رգ�1����';
comment on column JK_WS_DEVICE_PROFILE.other
  is '��������';
comment on column JK_WS_DEVICE_PROFILE.protocal_id
  is '����Э���id';
comment on column JK_WS_DEVICE_PROFILE.service_id
  is '����id';
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
  is '������վ��ˮ��������';
comment on column JK_WS_HISTORY_DATA.jk_ws_history_data_id
  is '��¼ID��ʹ��UUID��Ϊ����';
comment on column JK_WS_HISTORY_DATA.device_id
  is '�豸����';
comment on column JK_WS_HISTORY_DATA.device_status_id
  is '�豸״̬';
comment on column JK_WS_HISTORY_DATA.error_message
  is '�豸����';
comment on column JK_WS_HISTORY_DATA.vi
  is '�ܼ��ȣ���λ����';
comment on column JK_WS_HISTORY_DATA.surface_temperature
  is '·���¶ȣ���λ����';
comment on column JK_WS_HISTORY_DATA.surface_condition_id
  is '·��״̬';
comment on column JK_WS_HISTORY_DATA.air_temperature
  is '�����¶ȣ���λ����';
comment on column JK_WS_HISTORY_DATA.relative_humidity
  is '����ʪ�ȣ���λ��%';
comment on column JK_WS_HISTORY_DATA.wind_speed
  is '���٣���λ��m/s';
comment on column JK_WS_HISTORY_DATA.wind_orientation
  is '����ȡֵ0~360��';
comment on column JK_WS_HISTORY_DATA.collect_time
  is '�ɼ�ʱ�䣺��ǰ�ɼ����ڵ���ʼʱ��';
comment on column JK_WS_HISTORY_DATA.rain_fall
  is '������';
comment on column JK_WS_HISTORY_DATA.dew_point
  is '¶��(TD1)';
comment on column JK_WS_HISTORY_DATA.coverage_thickness
  is '���Ǻ��(WT1)';
comment on column JK_WS_HISTORY_DATA.level_grip
  is 'ʪ���̶�(GR3)';
comment on column JK_WS_HISTORY_DATA.amout_water
  is 'ˮ������';
comment on column JK_WS_HISTORY_DATA.amout_ice
  is '��������';
comment on column JK_WS_HISTORY_DATA.amout_snow
  is 'ѩ������';
comment on column JK_WS_HISTORY_DATA.air_pressure
  is '��ѹֵ';
comment on column JK_WS_HISTORY_DATA.freezing_temperature
  is '�����¶�';
comment on column JK_WS_HISTORY_DATA.surface_salinity
  is '·���ζ�';
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
  is '������վ��ˮ��������';
comment on column JK_WS_HISTORY_STATUS.jk_ws_history_status_id
  is '��¼ID��ʹ��UUID��Ϊ����';
comment on column JK_WS_HISTORY_STATUS.device_id
  is '�豸����';
comment on column JK_WS_HISTORY_STATUS.device_status_id
  is '�豸״̬';
comment on column JK_WS_HISTORY_STATUS.error_message
  is '�豸����';
comment on column JK_WS_HISTORY_STATUS.collect_time
  is '�ɼ�ʱ�䣺��ǰ�ɼ����ڵ���ʼʱ��';
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
  is '������վʵʱ��������';
comment on column JK_WS_REAL_DATA.device_id
  is '�豸����';
comment on column JK_WS_REAL_DATA.device_status_id
  is '�豸״̬';
comment on column JK_WS_REAL_DATA.error_message
  is '�豸����';
comment on column JK_WS_REAL_DATA.vi
  is '�ܼ��ȣ���λ����';
comment on column JK_WS_REAL_DATA.surface_temperature
  is '·���¶ȣ���λ����';
comment on column JK_WS_REAL_DATA.surface_condition_id
  is '·��״̬';
comment on column JK_WS_REAL_DATA.air_temperature
  is '�����¶ȣ���λ����';
comment on column JK_WS_REAL_DATA.relative_humidity
  is '����ʪ�ȣ���λ��%';
comment on column JK_WS_REAL_DATA.wind_speed
  is '���٣���λ��m/s';
comment on column JK_WS_REAL_DATA.wind_orientation
  is '����ȡֵ0~360��';
comment on column JK_WS_REAL_DATA.collect_time
  is '�ɼ�ʱ�䣺��ǰ�ɼ����ڵ���ʼʱ��';
comment on column JK_WS_REAL_DATA.rain_fall
  is '������';
comment on column JK_WS_REAL_DATA.dew_point
  is '¶��(TD1)';
comment on column JK_WS_REAL_DATA.coverage_thickness
  is '���Ǻ��(WT1)';
comment on column JK_WS_REAL_DATA.level_grip
  is 'ʪ���̶�(GR3)';
comment on column JK_WS_REAL_DATA.amout_water
  is 'ˮ������';
comment on column JK_WS_REAL_DATA.amout_ice
  is '��������';
comment on column JK_WS_REAL_DATA.amout_snow
  is 'ѩ������';
comment on column JK_WS_REAL_DATA.air_pressure
  is '��ѹֵ';
comment on column JK_WS_REAL_DATA.freezing_temperature
  is '�����¶�';
comment on column JK_WS_REAL_DATA.surface_salinity
  is '·���ζ�';
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
  is '������վʵʱ��������';
comment on column JK_WS_REAL_STATUS.device_id
  is '�豸����';
comment on column JK_WS_REAL_STATUS.device_status_id
  is '�豸״̬';
comment on column JK_WS_REAL_STATUS.error_message
  is '�豸����';
comment on column JK_WS_REAL_STATUS.collect_time
  is '�ɼ�ʱ�䣺��ǰ�ɼ����ڵ���ʼʱ��';
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
  is '��Ϣ���ѱ�';
comment on column MESSAGE_REMIND.remind_id
  is '����';
comment on column MESSAGE_REMIND.remind_no
  is '���ѱ��';
comment on column MESSAGE_REMIND.message_type
  is '��Ϣ���� 1��������Ϣ��2��·����Ϣ';
comment on column MESSAGE_REMIND.remind_way
  is '��ʾ������ 0-����ʾ����1-����һ�Σ�-1��һֱ����';
comment on column MESSAGE_REMIND.voice_id
  is '�����ļ�ID';
comment on column MESSAGE_REMIND.deal_user_id
  is '��¼�޸���';
comment on column MESSAGE_REMIND.last_update_time
  is '����޸�ʱ��';
comment on column MESSAGE_REMIND.category
  is '��Ϣ�����µ������';
comment on column MESSAGE_REMIND.message_name
  is '��Ϣѡ���ʾ����';
comment on column MESSAGE_REMIND.deal_url
  is '���������url��ַ';
comment on column MESSAGE_REMIND.no_deal_url
  is '���账�������url��ַ';
comment on column MESSAGE_REMIND.sort_no
  is '���';
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
  is '��ͼ��Ϣ��';
comment on column M_MAP.id
  is '��ͼ�ţ�ʹ��UUID��Ϊ����';
comment on column M_MAP.name
  is '��ͼ����';
comment on column M_MAP.path
  is '��ͼ·��';
comment on column M_MAP.levels
  is '���ż���';
comment on column M_MAP.default_level
  is 'Ĭ�ϼ���';
comment on column M_MAP.img_type
  is 'ͼԴ���ͣ�0���򵥵�ͼ��1����ƬʽͼԴ��2��ArcGISͼԴ��3��GOOGLE������Ƭʽ';
comment on column M_MAP.origin_type
  is '����ϵ���ͣ���ԭ��λ�ã���0������㣬-1�����Ͻǣ�1�����½�';
comment on column M_MAP.type
  is '��ͼ���ͣ�0����ͼ��1���ֲ���ͼ�������';
comment on column M_MAP.organization_id
  is '�����������';
comment on column M_MAP.valid
  is '��Ч�ԣ�0����Ч��1����Ч';
comment on column M_MAP.right
  is '��X���꣺��ͼΪ���';
comment on column M_MAP.bottom
  is '��Y���꣺��ͼΪ�߶�';
comment on column M_MAP.left
  is '��X����';
comment on column M_MAP.top
  is '��Y����';
comment on column M_MAP.default_x
  is 'Ĭ�϶�λX����';
comment on column M_MAP.default_y
  is 'Ĭ�϶�λY����';
comment on column M_MAP.resolution
  is '��ͼ����';
comment on column M_MAP.sort_no
  is '˳�����ø�·����·�β˵��е�˳��';
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
  is '��ͼ������Ϣ��';
comment on column M_OBJ.id
  is '��ʶ�ţ�ʹ��UUID��Ϊ����';
comment on column M_OBJ.map_id
  is '��ͼ��';
comment on column M_OBJ.type
  is '������ͣ�01���豸�����90���ӵ�ͼ';
comment on column M_OBJ.obj_id
  is '���ID������������Ϊ�ӵ�ͼ����Ϊ��ͼ�� M_Map.ID��  ��Ϊ�豸�������Ϊ DeviceProfile.DeviceID';
comment on column M_OBJ.x
  is 'X����';
comment on column M_OBJ.y
  is 'Y����';
comment on column M_OBJ.width
  is '��';
comment on column M_OBJ.height
  is '��';
comment on column M_OBJ.valid
  is '��Ч�ԣ�0����Ч��1����Ч';
comment on column M_OBJ.sort_no
  is '˳��';
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
  is '����ƽ̨������־��';
comment on column OM_DCI_SERVICE_LOG.om_dci_service_log_id
  is '��¼��ţ�ʹ��UUID��Ϊ����';
comment on column OM_DCI_SERVICE_LOG.service_id
  is '����ID';
comment on column OM_DCI_SERVICE_LOG.server_name
  is '����������';
comment on column OM_DCI_SERVICE_LOG.log_time
  is '��־ʱ��';
comment on column OM_DCI_SERVICE_LOG.log_type
  is '��־���ͣ�srvLogDebug = 1  srvLogInfo = 2  srvLogWarning = 3  srvLogError = 4';
comment on column OM_DCI_SERVICE_LOG.log_message
  is '��־��Ϣ';
comment on column OM_DCI_SERVICE_LOG.insert_time
  is '��¼д��ʱ��';
comment on column OM_DCI_SERVICE_LOG.numbers
  is '��¼��ţ����ڼ�¼����';
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
  is '����ƽ̨ϵͳ��־��';
comment on column OM_DCI_SYSTEM_LOG.om_dci_system_log_id
  is '��¼��ţ�ʹ��UUID��Ϊ����';
comment on column OM_DCI_SYSTEM_LOG.log_time
  is '��־ʱ��';
comment on column OM_DCI_SYSTEM_LOG.log_message
  is '��־��Ϣ';
comment on column OM_DCI_SYSTEM_LOG.insert_time
  is '��¼д��ʱ��';
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
  is '��Ƶ�¼���¼����Ϣ��';
comment on column SCR_EVENT_INFO1.id
  is '��Ϊ����';
comment on column SCR_EVENT_INFO1.camera_id
  is 'ָ��һ·������ϴ��˱�������';
comment on column SCR_EVENT_INFO1.event_type_id
  is '�ϴ��ı����¼�����';
comment on column SCR_EVENT_INFO1.event_time
  is '�¼�������ʱ��';
comment on column SCR_EVENT_INFO1.collect_time
  is '�����ϴ���ʱ��';
comment on column SCR_EVENT_INFO1.is_screen
  is '�Ƿ�Ͷ�ŵ�����Ļ���� 0��û��Ͷ�� 1���Ѿ�Ͷ�� 2:׼��Ͷ�� 3:Ͷ��¼��';
comment on column SCR_EVENT_INFO1.is_record
  is '�Ƿ�¼�� 0:��δ¼�� 1:�Ѿ�¼��ɹ� 2:¼��ʧ�� ';
comment on column SCR_EVENT_INFO1.recorded_filename
  is '¼���ļ���';
comment on column SCR_EVENT_INFO1.rcv_ip
  is '����ip';
comment on column SCR_EVENT_INFO1.rcv_port
  is '�����˿�';
comment on column SCR_EVENT_INFO1.opt_status
  is '����״̬ 0���޲���  1�������ɹ� 2������ʧ�� 3��׼���ط� 4��׼��ֹͣ';
comment on column SCR_EVENT_INFO1.chgdate
  is '����ʱ��';
comment on column SCR_EVENT_INFO1.event_id
  is '�������¼�ID';
comment on column SCR_EVENT_INFO1.record_len
  is '¼��ʱ�����룩';
comment on column SCR_EVENT_INFO1.memo
  is '˵��';
comment on column SCR_EVENT_INFO1.manual_deal_mode
  is '�˹�����ʽ��0��������1���󱨣�2���ظ���3�����ش���9��ת�˹��¼�����';
comment on column SCR_EVENT_INFO1.manual_deal_time
  is '����ʱ�䡣�����˹�����ʽ����Ϊ0ʱ������';
comment on column SCR_EVENT_INFO1.manual_deal_user
  is '�����ˡ������˹�����ʽ����Ϊ0ʱ������';
comment on column SCR_EVENT_INFO1.manual_deal_memo
  is '����˵���������˹�����ʽ����Ϊ0ʱ������';
comment on column SCR_EVENT_INFO1.manual_deal_event_id
  is '�˹��¼�ID';
comment on column SCR_EVENT_INFO1.is_notify
  is '�Ƿ��Ѿ���ҳ��֪ͨ���û�   0�� 1��';
comment on column SCR_EVENT_INFO1.event_pic
  is '��Ƶ�¼���ץ��ͼƬ';
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
  is '��Ƶ�����¼����ͱ�';
comment on column SCR_EVENT_TYPE.event_type_id
  is 'ָÿ���¼�������ϵͳ�еı�ţ�һ�������������ı����������Ϊ����';
comment on column SCR_EVENT_TYPE.event_desc
  is '�����������¼�������';
comment on column SCR_EVENT_TYPE.manual_event_type_id
  is '�˹��¼�����';
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
  is '�����';
comment on column SERVICE_NODE.service_id
  is '����ID';
comment on column SERVICE_NODE.service_name
  is '��������';
comment on column SERVICE_NODE.status
  is '����״̬��0�����ߣ�1����';
comment on column SERVICE_NODE.last_update_time
  is '������ʱ��';
comment on column SERVICE_NODE.last_update_user_id
  is '�޸���';
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
  is '�û���';
comment on column SMS_GROUP.group_id
  is '��ID';
comment on column SMS_GROUP.group_name
  is '������';
comment on column SMS_GROUP.last_update_time
  is '����޸�ʱ��';
comment on column SMS_GROUP.last_update_user_id
  is '����޸���';
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
  is '�������˷�����Ϣ�����';
comment on column SMS_ORDER.sms_order_id
  is '��¼ID��ʹ��UUID��Ϊ����';
comment on column SMS_ORDER.message_content
  is '��Ϣ����';
comment on column SMS_ORDER.user_id
  is '������ID';
comment on column SMS_ORDER.full_name
  is '����������';
comment on column SMS_ORDER.cell_phone
  is '�ƶ��绰';
comment on column SMS_ORDER.create_time
  is '�����ʱ��';
comment on column SMS_ORDER.status
  is '����ִ��״̬��  0������δִ�� 1��ִ���� 2��ִ�гɹ�   3��ִ��ʧ�� ';
comment on column SMS_ORDER.issue_time
  is '����ִ��ʱ��';
comment on column SMS_ORDER.result_time
  is '�յ�ִ�н��ʱ��';
comment on column SMS_ORDER.last_update_user_id
  is '����޸���';
comment on column SMS_ORDER.error_msg
  is 'ִ��ʧ��ԭ��';
comment on column SMS_ORDER.src_id
  is '��ԴID';
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
  is '�����û����';
comment on column SMS_USER_GROUP.user_group_id
  is '�û�������ID';
comment on column SMS_USER_GROUP.group_id
  is '������ID';
comment on column SMS_USER_GROUP.user_id
  is '�û�ID';
comment on column SMS_USER_GROUP.last_update_time
  is '����޸�ʱ��';
comment on column SMS_USER_GROUP.last_update_user_id
  is '����޸���';
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
  is '��ͨ״̬����·�α�';
comment on column TA_SEGMENT.ta_segment_id
  is '��ͨ״̬����·��ID';
comment on column TA_SEGMENT.ta_segment_name
  is '��ͨ״̬����·������';
comment on column TA_SEGMENT.road_segment_id
  is '����·��';
comment on column TA_SEGMENT.start_stub
  is '���׮��';
comment on column TA_SEGMENT.end_stub
  is '�յ�׮��';
comment on column TA_SEGMENT.speed_limit
  is '�����ٶȣ���λ��km/h�����磺120��80��60';
comment on column TA_SEGMENT.threshold_1
  is '��ͨ�������ޣ���λ��km/h�����磺 65';
comment on column TA_SEGMENT.threshold_2
  is '����ӵ�����ޣ���λ��km/h�����磺 30';
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
  is '·�ν�ͨ������ʷ��';
comment on column TA_SEGMENT_HISTORY_DATA.ta_segment_history_data_id
  is '��¼ID';
comment on column TA_SEGMENT_HISTORY_DATA.ta_segment_id
  is '��ͨ״̬����·��ID';
comment on column TA_SEGMENT_HISTORY_DATA.direction_id
  is '����';
comment on column TA_SEGMENT_HISTORY_DATA.start_time
  is '���������ʼʱ��';
comment on column TA_SEGMENT_HISTORY_DATA.end_time
  is '���������ֹʱ��';
comment on column TA_SEGMENT_HISTORY_DATA.create_time
  is '����ʱ��';
comment on column TA_SEGMENT_HISTORY_DATA.flow
  is '��ͨ��';
comment on column TA_SEGMENT_HISTORY_DATA.speed
  is 'ƽ���ٶ�';
comment on column TA_SEGMENT_HISTORY_DATA.occupancy
  is 'ռ����';
comment on column TA_SEGMENT_HISTORY_DATA.traffic_status
  is 'ʵʱ��ͨ״̬';
comment on column TA_SEGMENT_HISTORY_DATA.traffic_status_next
  is '��һ����Ԥ�⽻ͨ״̬';
comment on column TA_SEGMENT_HISTORY_DATA.speed_next
  is '��һ����Ԥ���ٶ�';
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
  is '·�ν�ͨ����ʵʱ��';
comment on column TA_SEGMENT_REAL_DATA.ta_segment_id
  is '��ͨ״̬����·��ID';
comment on column TA_SEGMENT_REAL_DATA.direction_id
  is '����';
comment on column TA_SEGMENT_REAL_DATA.start_time
  is '���������ʼʱ��';
comment on column TA_SEGMENT_REAL_DATA.end_time
  is '���������ֹʱ��';
comment on column TA_SEGMENT_REAL_DATA.create_time
  is '����ʱ��';
comment on column TA_SEGMENT_REAL_DATA.flow
  is '��ͨ��';
comment on column TA_SEGMENT_REAL_DATA.speed
  is 'ƽ���ٶ�';
comment on column TA_SEGMENT_REAL_DATA.occupancy
  is 'ռ����';
comment on column TA_SEGMENT_REAL_DATA.traffic_status
  is 'ʵʱ��ͨ״̬';
comment on column TA_SEGMENT_REAL_DATA.traffic_status_next
  is '��һ����Ԥ�⽻ͨ״̬';
comment on column TA_SEGMENT_REAL_DATA.speed_next
  is '��һ����Ԥ���ٶ�';
comment on column TA_SEGMENT_REAL_DATA.ta_segment_real_data_id
  is '��¼ID';
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
  is '����豸����ָ������';
comment on column TC_DEVICE_CONTROLZ.tc_device_controlz_id
  is '��¼ID';
comment on column TC_DEVICE_CONTROLZ.order_type
  is 'ָ������:0�����豸';
comment on column TC_DEVICE_CONTROLZ.user_id
  is '�������';
comment on column TC_DEVICE_CONTROLZ.create_time
  is '�����ʱ��';
comment on column TC_DEVICE_CONTROLZ.order_status
  is '����ִ��״̬:0�������״̬��1����ִ��״̬��2������ִ��״̬��3��ִ�н���״̬';
comment on column TC_DEVICE_CONTROLZ.order_result
  is '����ִ�н��';
comment on column TC_DEVICE_CONTROLZ.begin_time
  is '���ʼִ��ʱ��';
comment on column TC_DEVICE_CONTROLZ.end_time
  is '����ִ�н���ʱ��';
comment on column TC_DEVICE_CONTROLZ.error_message
  is 'ִ��ʧ��ԭ��';
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
  is '����豸����ָ���';
comment on column TC_DEVICE_CONTROLF.tc_device_controlf_id
  is '��¼ID';
comment on column TC_DEVICE_CONTROLF.tc_device_controlz_id
  is '�����¼ID';
comment on column TC_DEVICE_CONTROLF.device_id
  is '�豸ID';
comment on column TC_DEVICE_CONTROLF.order_type_id
  is '�豸ָ��';
comment on column TC_DEVICE_CONTROLF.order_sequence
  is 'ָ��ִ��˳���';
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
  is '�鱨����Ʒ�Χ���ͱ�';
comment on column TK_CMS_CONTROL_SCOPE_TYPE.cms_control_scope_type_id
  is '�鱨����Ʒ�Χ���ʹ���';
comment on column TK_CMS_CONTROL_SCOPE_TYPE.cms_control_scope_type_desc
  is '�鱨����Ʒ�Χ��������';
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
  is 'ͨ���鱨�巢����ϢԤ��������';
comment on column TK_CMS_ISSUE_PLAN_ACTION.cms_issue_plan_action_id
  is '��¼ID��ʹ��UUID��Ϊ����';
comment on column TK_CMS_ISSUE_PLAN_ACTION.action_desc
  is '����';
comment on column TK_CMS_ISSUE_PLAN_ACTION.plan_action_type_id
  is '��������ID';
comment on column TK_CMS_ISSUE_PLAN_ACTION.record_type
  is '��¼���ͣ�1��ͨ���鱨�巢����ͨ������Ϣ  2��ͨ���鱨�巢����ͨ�յ���Ϣ';
comment on column TK_CMS_ISSUE_PLAN_ACTION.control_type
  is '�������ͣ�1�����Կ��ƣ�ֱ��ָ���鱨����豸���  2����Կ��ƣ�ָ���鱨�����¼������Թ�ϵ';
comment on column TK_CMS_ISSUE_PLAN_ACTION.cms_control_scope_type_id
  is '�鱨����Ʒ�Χ���ʹ���';
comment on column TK_CMS_ISSUE_PLAN_ACTION.rel_control_scope_n
  is '��Կ��Ʒ�Χ�е�Nֵ����CONTROL_TYPE=2ʱ��Ч';
comment on column TK_CMS_ISSUE_PLAN_ACTION.jk_cms_pre_groupz_id
  is 'Ԥ�ò�����Ŀ��ID';
comment on column TK_CMS_ISSUE_PLAN_ACTION.last_update_time
  is '����޸�ʱ��';
comment on column TK_CMS_ISSUE_PLAN_ACTION.user_id
  is '����޸���';
comment on column TK_CMS_ISSUE_PLAN_ACTION.road_id
  is '����·��';
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
  is 'ͨ���鱨�巢����ϢԤ��������';
comment on column TK_CMS_ISSUE_PLAN_ACTIONF.cms_issue_plan_actionf_id
  is '��¼ID��ʹ��UUID��Ϊ����';
comment on column TK_CMS_ISSUE_PLAN_ACTIONF.action_desc
  is '����';
comment on column TK_CMS_ISSUE_PLAN_ACTIONF.plan_action_type_id
  is '��������ID';
comment on column TK_CMS_ISSUE_PLAN_ACTIONF.device_id
  is '�鱨�����豸��š���CONTROL_TYPE=1ʱ��Ч';
comment on column TK_CMS_ISSUE_PLAN_ACTIONF.jk_cms_pre_groupz_id
  is 'Ԥ�ò�����Ŀ��ID';
comment on column TK_CMS_ISSUE_PLAN_ACTIONF.last_update_time
  is '����޸�ʱ��';
comment on column TK_CMS_ISSUE_PLAN_ACTIONF.user_id
  is '����޸���';
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
  is '���鱨�巢����Ϣ�����';
comment on column TK_CMS_ISSUE_PLAN_ORDER.cms_issue_plan_order_id
  is '��¼ID��ʹ��UUID��Ϊ����';
comment on column TK_CMS_ISSUE_PLAN_ORDER.deal_plan_order_unit_id
  is '���÷������ԪID';
comment on column TK_CMS_ISSUE_PLAN_ORDER.device_id
  is '�鱨���豸���';
comment on column TK_CMS_ISSUE_PLAN_ORDER.message_content
  is '��Ϣ����';
comment on column TK_CMS_ISSUE_PLAN_ORDER.create_time
  is '�����ʱ��';
comment on column TK_CMS_ISSUE_PLAN_ORDER.status
  is 'ִ��״̬��0��δִ��  1��������ִ�У���δ�յ�ִ�н��  2��ִ�гɹ�  3��ִ��ʧ��';
comment on column TK_CMS_ISSUE_PLAN_ORDER.issue_time
  is '����ִ��ʱ��';
comment on column TK_CMS_ISSUE_PLAN_ORDER.result_time
  is '�յ�ִ�н��ʱ��';
comment on column TK_CMS_ISSUE_PLAN_ORDER.jk_cms_pre_groupz_id
  is '������Ŀ��ID';
comment on column TK_CMS_ISSUE_PLAN_ORDER.jk_cms_control_id
  is '��������ָ���ID';
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
  is '���÷�������';
comment on column TK_DEAL_PLAN.deal_plan_id
  is '���÷���ID��ʹ��UUID��Ϊ����';
comment on column TK_DEAL_PLAN.plan_id
  is '�������Ԥ��ID';
comment on column TK_DEAL_PLAN.event_id
  is '��¼ID';
comment on column TK_DEAL_PLAN.last_update_time
  is '����޸�ʱ��';
comment on column TK_DEAL_PLAN.user_id
  is '����޸���';
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
  is '���÷������Ԫ��';
comment on column TK_DEAL_PLAN_ORDER_UNIT.deal_plan_order_unit_id
  is '���÷������ԪID��ʹ��UUID��Ϊ����';
comment on column TK_DEAL_PLAN_ORDER_UNIT.deal_plan_step_id
  is '���÷�������ID';
comment on column TK_DEAL_PLAN_ORDER_UNIT.deal_plan_id
  is '���÷���ID';
comment on column TK_DEAL_PLAN_ORDER_UNIT.action_id
  is '���÷�������ID';
comment on column TK_DEAL_PLAN_ORDER_UNIT.action_no
  is '����ţ�1��2��3������';
comment on column TK_DEAL_PLAN_ORDER_UNIT.action_desc
  is '���÷������Ԫ����';
comment on column TK_DEAL_PLAN_ORDER_UNIT.plan_action_type_id
  is 'Ԥ����������';
comment on column TK_DEAL_PLAN_ORDER_UNIT.order_status
  is '����ִ��״̬��0��δִ��  1��������ִ�У���δ�յ�ִ�н��  2��ִ�гɹ�  3��ִ��ʧ��';
comment on column TK_DEAL_PLAN_ORDER_UNIT.last_update_time
  is '����޸�ʱ��';
comment on column TK_DEAL_PLAN_ORDER_UNIT.user_id
  is '����޸���';
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
  is '���÷��������';
comment on column TK_DEAL_PLAN_STEP.deal_plan_step_id
  is '���÷�������ID��ʹ��UUID��Ϊ����';
comment on column TK_DEAL_PLAN_STEP.deal_plan_id
  is '���÷���ID';
comment on column TK_DEAL_PLAN_STEP.plan_step_id
  is '��Ӧ��Ԥ������ID';
comment on column TK_DEAL_PLAN_STEP.step_no
  is '����ţ�1��2��3������';
comment on column TK_DEAL_PLAN_STEP.step_desc
  is '��������';
comment on column TK_DEAL_PLAN_STEP.step_status
  is '����ִ��״̬  0��δִ��
1����ִ��';
comment on column TK_DEAL_PLAN_STEP.plan_action_type_id
  is 'Ԥ����������';
comment on column TK_DEAL_PLAN_STEP.last_update_time
  is '����޸�ʱ��';
comment on column TK_DEAL_PLAN_STEP.user_id
  is '����޸���';
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
  is '�������¹ʣ���Ϣ��';
comment on column TK_EVENT.event_id
  is '��¼ID';
comment on column TK_EVENT.road_segment_id
  is '·�α��';
comment on column TK_EVENT.position
  is '��ϣ��¼���λ�ã���ϣ��¼��������ľ���·������������������򸽽���������ŵ���Ҫ��ʩ���ƣ��硰���¶β����š����������շ�վ��';
comment on column TK_EVENT.start_stub
  is '��ʼ׮��';
comment on column TK_EVENT.end_stub
  is '��ֹ׮��';
comment on column TK_EVENT.district_id
  is '�����������룺��ϣ��¹ʣ�����·�������С������أ�����������������';
comment on column TK_EVENT.organization_id
  is '����λ��Ҫ�����еĹ��������Ӧ����Ϊ��·�ι������ȹ������';
comment on column TK_EVENT.person
  is '���';
comment on column TK_EVENT.telephone
  is '��ϵ�绰';
comment on column TK_EVENT.discovery_time
  is '����ʱ��';
comment on column TK_EVENT.calculate_time
  is '��λ��Сʱ��Ԥ�ƻָ�ʱ��';
comment on column TK_EVENT.accident_des
  is '�ֳ����������������ϣ��¼�������ʱ�䡢�������̡�Ӱ�췶Χ����չ���ơ�';
comment on column TK_EVENT.event_type_id
  is '�¹�����';
comment on column TK_EVENT.dealing_desc
  is '���ô�ʩ��������ͨ��������ɢ���������з��������棬���ڼƻ����¼�����Ľ�ͨ��ϣ�ֻ��д���з���������ͻ�����¼���ʹ��·��ʩ�ٻ�����Ľ�ͨ��ϣ�������д��ͨ���������з������·��ֳ����ִ�����������Ա���ۣ�����Σ��Ʒй©��ԭ����������������Ա���Σ�յģ�������д��ɢ������';
comment on column TK_EVENT.roadbed_loss_num
  is '·����ʧ��������λ��m3/Km';
comment on column TK_EVENT.roadbed_loss_mon
  is '·����ʧ����λ����Ԫ';
comment on column TK_EVENT.surface_loss_num
  is '·����ʧ��������λ��m2/Km';
comment on column TK_EVENT.surface_loss_mon
  is '·����ʧ����λ����Ԫ';
comment on column TK_EVENT.bridge_loss_num
  is '������ʧ��������λ������/��';
comment on column TK_EVENT.bridge_loss_mon
  is '������ʧ����λ����Ԫ';
comment on column TK_EVENT.culvert_loss_num
  is '������ʧ��������λ����';
comment on column TK_EVENT.culvert_loss_mon
  is '������ʧ����λ����Ԫ';
comment on column TK_EVENT.security_loss_num
  is '����������ʧ��������λ��m3';
comment on column TK_EVENT.security_loss_mon
  is '����������ʧ����λ����Ԫ';
comment on column TK_EVENT.other_loss_num
  is '����·����ʧ����';
comment on column TK_EVENT.other_loss_mon
  is '����·����ʧ����λ����Ԫ';
comment on column TK_EVENT.sum_loss_mon
  is '�ۼ���ʧ����λ����Ԫ';
comment on column TK_EVENT.injuries_num
  is '������������';
comment on column TK_EVENT.death_num
  is '������������';
comment on column TK_EVENT.crowds_num
  is '������������';
comment on column TK_EVENT.car_destroy_num
  is '�ٻ�����������';
comment on column TK_EVENT.car_detention_num
  is '��������������';
comment on column TK_EVENT.reality_recover_time
  is 'ʵ�ʻָ�ͨ���¼�';
comment on column TK_EVENT.direction_id
  is '�¹ʷ�������';
comment on column TK_EVENT.collect_type
  is '1:���ݽ���2���˹�¼��';
comment on column TK_EVENT.enter_user_id
  is '�˹�¼���û�';
comment on column TK_EVENT.create_time
  is '���ݸ���ʱ��';
comment on column TK_EVENT.alarm_level_id
  is '�������¹ʣ�����';
comment on column TK_EVENT.data_exchanger_id
  is '���ݽ��������ߴ���';
comment on column TK_EVENT.queue_length
  is '�Ŷӳ���,��λΪ������';
comment on column TK_EVENT.event_traffic_status_id
  is '������';
comment on column TK_EVENT.fire_level
  is '���ּ���';
comment on column TK_EVENT.dangerous_leakage_level
  is 'Σ��Ʒй©����';
comment on column TK_EVENT.queue_level
  is '�ŶӼ���';
comment on column TK_EVENT.backbone_structure_des_leve
  is '��·��������𻵼���';
comment on column TK_EVENT.accessory_device_des_level
  is '������ʩ�𻵼���';
comment on column TK_EVENT.accessory_pipeline_des_level
  is '���������𻵼���';
comment on column TK_EVENT.casualty_level
  is '��Ա��������';
comment on column TK_EVENT.special_position
  is '��չ��Ϣ���ͣ��Ƿ�����λ�ã�����0������չ��Ϣ��������λ�ã�ָ�������ϣ���>=1������չ��Ϣ�����庬�壺1������λ�ã�2���������¼���Ӱ�췶ΧΪ��·�Ρ�';
comment on column TK_EVENT.order_status
  is '�ϴ���־��0��δ�ϴ���1�������ϴ���2���ϴ��ɹ���3���ϴ�ʧ�ܣ�9��׼���ϴ�';
comment on column TK_EVENT.order_time
  is '�ϴ�ʱ��';
comment on column TK_EVENT.stub
  is '׮�ŷ�Χ����������׮�ŷ�Χ';
comment on column TK_EVENT.audit_time
  is '���ʱ��';
comment on column TK_EVENT.information_type
  is '��Ϣ���ͣ�1����ͨ���� 2����ͨ�¹� 3��ӵ����Ϣ 4��ʩ����Ϣ 0��������Ϣ';
comment on column TK_EVENT.information_reason
  is '·��ԭ��(��INFORMATION_TYPE=1��3ʱ������)1���������� 2���������� 3���¹ʹ��� 4����·ʩ�� 5���������� 6���������� 7��ͻ���¼� 8���豸����';
comment on column TK_EVENT.old_accident_des
  is '·���ϱ�ԭ��';
comment on column TK_EVENT.is_other_provinces
  is '�Ƿ�Ϊ��ʡ���£�0���� 1����';
comment on column TK_EVENT.lane_no
  is '�¹ʳ�������ͬ��������೵��������������1��ʼ��ţ���Ϊ 0 �򲻷ֳ�����';
comment on column TK_EVENT.detail_id
  is '������ʵ���¼�ID';
comment on column TK_EVENT.detail_type
  is '������ʵ���¼�����';
comment on column TK_EVENT.current_status
  is '��ǰ״̬��ȡֵ��  0:��δ����  1:���ڴ���  2:�������';
comment on column TK_EVENT.deal_user_id
  is '�¼������û�';
comment on column TK_EVENT.start_deal_time
  is '�¼�����ʼʱ��';
comment on column TK_EVENT.end_deal_time
  is '�¼��������ʱ��';
comment on column TK_EVENT.summarize
  is '�����ܽ�';
comment on column TK_EVENT.plan_id
  is 'Ԥ��ID';
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
  is '�������¹ʣ���Ϣ����';
comment on column TK_EVENT_F.event_f_id
  is '��¼ID';
comment on column TK_EVENT_F.event_id
  is '����ID';
comment on column TK_EVENT_F.special_position_type
  is '��Ϣ���ͣ�1������λ��Ϊ������2��·�Ρ�';
comment on column TK_EVENT_F.position_id
  is 'λ��ID��special_position_typeΪ1ʱ��Ϊ�������룬����dm_organization��Ϊ2ʱ��Ϊ·�δ��룬����dm_road_segment��';
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
  is '�¼���Ϣģ���';
comment on column TK_EVENT_INFO_TPL.event_info_tpl_id
  is 'ģ�����';
comment on column TK_EVENT_INFO_TPL.event_info_tpl
  is 'ģ����Ϣ�����������¼���Ϣģ�����ʽ������';
comment on column TK_EVENT_INFO_TPL.user_id
  is '���¼����޸���Ա';
comment on column TK_EVENT_INFO_TPL.last_update_time
  is '����޸�ʱ��';
comment on column TK_EVENT_INFO_TPL.event_info_tpl_name
  is 'ģ������';
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
  is '�������Ʒ�Χ���ͱ�';
comment on column TK_FOG_CONTROL_SCOPE_TYPE.fog_control_scope_type_id
  is '�������Ʒ�Χ���ʹ���';
comment on column TK_FOG_CONTROL_SCOPE_TYPE.fog_control_scope_type_desc
  is '�������Ʒ�Χ��������';
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
  is '����������';
comment on column TK_FOG_PLAN_ACTION.fog_plan_action_id
  is '����ID';
comment on column TK_FOG_PLAN_ACTION.action_desc
  is '����';
comment on column TK_FOG_PLAN_ACTION.plan_action_type_id
  is '��������ID';
comment on column TK_FOG_PLAN_ACTION.control_type
  is '�������ͣ�2��Կ���';
comment on column TK_FOG_PLAN_ACTION.fog_control_scope_type_id
  is '���Ʒ�Χ���ͣ���ControlType=2ʱ��Ч';
comment on column TK_FOG_PLAN_ACTION.rel_control_scopen
  is '��Կ��Ʒ�Χ�е�Nֵ����ControlType=2ʱ��Ч';
comment on column TK_FOG_PLAN_ACTION.yellow_light_frequency
  is '�Ƶ�Ƶ��, 0: �رգ�1: ������2: 30��/���ӣ�3: 60��/���ӣ�4: 120��/���ӣ�����ֵ��Ч';
comment on column TK_FOG_PLAN_ACTION.yellow_light_brightness
  is '�Ƶ�����:1��10';
comment on column TK_FOG_PLAN_ACTION.red_light_frequency
  is '���Ƶ�� ,0: �رգ�1: ������2: 30��/���ӣ�3: 60��/���ӣ�4: 120��/���ӣ�����ֵ��Ч';
comment on column TK_FOG_PLAN_ACTION.red_light_brightness
  is '�������:1��10';
comment on column TK_FOG_PLAN_ACTION.sensor_status
  is '������״̬,0���رգ�1������';
comment on column TK_FOG_PLAN_ACTION.wake_num
  is 'β������';
comment on column TK_FOG_PLAN_ACTION.wake_time
  is 'β��ʱ��';
comment on column TK_FOG_PLAN_ACTION.last_update_time
  is '����޸�ʱ��';
comment on column TK_FOG_PLAN_ACTION.user_id
  is '����޸���';
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
  is '���������Ϳ��������';
comment on column TK_FOG_PLAN_ORDER.fog_plan_order_id
  is '��¼ID��ʹ��UUID��Ϊ����';
comment on column TK_FOG_PLAN_ORDER.deal_plan_order_unit_id
  is '���÷������ԪID';
comment on column TK_FOG_PLAN_ORDER.device_id
  is '�豸���';
comment on column TK_FOG_PLAN_ORDER.create_time
  is '�����ʱ��';
comment on column TK_FOG_PLAN_ORDER.status
  is 'ִ��״̬��0��δִ��  1��������ִ�У���δ�յ�ִ�н��  2��ִ�гɹ�  3��ִ��ʧ��';
comment on column TK_FOG_PLAN_ORDER.issue_time
  is '����ִ��ʱ��';
comment on column TK_FOG_PLAN_ORDER.result_time
  is '�յ�ִ�н��ʱ��';
comment on column TK_FOG_PLAN_ORDER.user_name
  is '�շ�վ����ִ����';
comment on column TK_FOG_PLAN_ORDER.yellow_light_frequency
  is '�Ƶ�Ƶ��, 0: �رգ�1: ������2: 30��/���ӣ�3: 60��/���ӣ�4: 120��/���ӣ�����ֵ��Ч';
comment on column TK_FOG_PLAN_ORDER.yellow_light_brightness
  is '�Ƶ�����:1��10';
comment on column TK_FOG_PLAN_ORDER.red_light_frequency
  is '���Ƶ�� ,0: �رգ�1: ������2: 30��/���ӣ�3: 60��/���ӣ�4: 120��/���ӣ�����ֵ��Ч';
comment on column TK_FOG_PLAN_ORDER.red_light_brightness
  is '�������:1��10';
comment on column TK_FOG_PLAN_ORDER.sensor_status
  is '������״̬,0���رգ�1������';
comment on column TK_FOG_PLAN_ORDER.wake_num
  is 'β������';
comment on column TK_FOG_PLAN_ORDER.wake_time
  is 'β��ʱ��';
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
  is '���⶯����';
comment on column TK_LIGHT_PLAN_ACTION.light_plan_action_id
  is '����ID';
comment on column TK_LIGHT_PLAN_ACTION.action_desc
  is '����';
comment on column TK_LIGHT_PLAN_ACTION.plan_action_type_id
  is '��������ID';
comment on column TK_LIGHT_PLAN_ACTION.ip
  is 'IP��ַ';
comment on column TK_LIGHT_PLAN_ACTION.port
  is '�˿�';
comment on column TK_LIGHT_PLAN_ACTION.time
  is '����ʱ�䣨��λ���룩';
comment on column TK_LIGHT_PLAN_ACTION.comm
  is '�����豸��ʶ';
comment on column TK_LIGHT_PLAN_ACTION.last_update_time
  is '����޸�ʱ��';
comment on column TK_LIGHT_PLAN_ACTION.user_id
  is '����޸���';
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
  is '�����ⷢ�Ϳ��������';
comment on column TK_LIGHT_PLAN_ORDER.light_plan_order_id
  is '��¼ID��ʹ��UUID��Ϊ����';
comment on column TK_LIGHT_PLAN_ORDER.deal_plan_order_unit_id
  is '���÷������ԪID';
comment on column TK_LIGHT_PLAN_ORDER.create_time
  is '�����ʱ��';
comment on column TK_LIGHT_PLAN_ORDER.status
  is 'ִ��״̬��0��δִ��  1��������ִ�У���δ�յ�ִ�н��  2��ִ�гɹ�  3��ִ��ʧ��';
comment on column TK_LIGHT_PLAN_ORDER.issue_time
  is '����ִ��ʱ��';
comment on column TK_LIGHT_PLAN_ORDER.result_time
  is '�յ�ִ�н��ʱ��';
comment on column TK_LIGHT_PLAN_ORDER.ip
  is 'IP��ַ';
comment on column TK_LIGHT_PLAN_ORDER.port
  is '�˿�';
comment on column TK_LIGHT_PLAN_ORDER.time
  is '����ʱ�䣨��λ���룩';
comment on column TK_LIGHT_PLAN_ORDER.comm
  is '�����豸��ʶ';
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
  is '�������˷�����ϢԤ��������';
comment on column TK_MAN_ISSUE_PLAN_ACTION.man_issue_plan_action_id
  is '��¼ID��ʹ��UUID��Ϊ����';
comment on column TK_MAN_ISSUE_PLAN_ACTION.action_desc
  is '����';
comment on column TK_MAN_ISSUE_PLAN_ACTION.plan_action_type_id
  is '��������ID';
comment on column TK_MAN_ISSUE_PLAN_ACTION.message_issue_type
  is '��Ϣ������ʽ 1:ͨ������ƽ̨����';
comment on column TK_MAN_ISSUE_PLAN_ACTION.control_type
  is '�������ͣ�0��̬��ʽ��1�������Ķ�̬��ʽ';
comment on column TK_MAN_ISSUE_PLAN_ACTION.org_type_id
  is '�����������������͡�����DM_ORG_TYPE';
comment on column TK_MAN_ISSUE_PLAN_ACTION.event_info_tpl_id
  is 'ģ�����';
comment on column TK_MAN_ISSUE_PLAN_ACTION.staff_duty_id
  is '��Աְ�����';
comment on column TK_MAN_ISSUE_PLAN_ACTION.user_id
  is '����޸���';
comment on column TK_MAN_ISSUE_PLAN_ACTION.last_update_time
  is '����޸�ʱ��';
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
  is '�������˷�����ϢԤ��������';
comment on column TK_MAN_ISSUE_PLAN_ACTIONF.man_issue_plan_actionf_id
  is '��¼ID��ʹ��UUID��Ϊ����';
comment on column TK_MAN_ISSUE_PLAN_ACTIONF.message_issue_type
  is '��Ϣ������ʽ';
comment on column TK_MAN_ISSUE_PLAN_ACTIONF.staff_id
  is 'ֱ�������ˡ�';
comment on column TK_MAN_ISSUE_PLAN_ACTIONF.event_info_tpl_id
  is 'ģ�����';
comment on column TK_MAN_ISSUE_PLAN_ACTIONF.user_id
  is '����޸���';
comment on column TK_MAN_ISSUE_PLAN_ACTIONF.last_update_time
  is '����޸�ʱ��';
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
  is '�������˷�����Ϣ�����';
comment on column TK_MAN_ISSUE_PLAN_ORDER.man_issue_plan_order_id
  is '��¼ID��ʹ��UUID��Ϊ����';
comment on column TK_MAN_ISSUE_PLAN_ORDER.deal_plan_order_unit_id
  is '���÷������ԪID';
comment on column TK_MAN_ISSUE_PLAN_ORDER.message_issue_type
  is '��Ϣ������ʽ';
comment on column TK_MAN_ISSUE_PLAN_ORDER.message_content
  is '��Ϣ����';
comment on column TK_MAN_ISSUE_PLAN_ORDER.staff_id
  is '������ID';
comment on column TK_MAN_ISSUE_PLAN_ORDER.full_name
  is '����';
comment on column TK_MAN_ISSUE_PLAN_ORDER.cell_phone
  is '�ƶ��绰';
comment on column TK_MAN_ISSUE_PLAN_ORDER.create_time
  is '�����ʱ��';
comment on column TK_MAN_ISSUE_PLAN_ORDER.status
  is 'ִ��״̬��0��δִ��  1��������ִ�У���δ�յ�ִ�н��  2��ִ�гɹ�  3��ִ��ʧ��';
comment on column TK_MAN_ISSUE_PLAN_ORDER.issue_time
  is '����ִ��ʱ��';
comment on column TK_MAN_ISSUE_PLAN_ORDER.result_time
  is '�յ�ִ�н��ʱ��';
comment on column TK_MAN_ISSUE_PLAN_ORDER.jk_fb_shortmessage_id
  is '�ճ����ż�¼ID';
comment on column TK_MAN_ISSUE_PLAN_ORDER.group_name
  is '����������';
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
  is 'Ԥ�����趯�����ͱ�';
comment on column TK_PLAN_ACTION_TYPE.plan_action_type_id
  is 'Ԥ�����趯�����ʹ���';
comment on column TK_PLAN_ACTION_TYPE.plan_action_main_type
  is 'Ԥ�����趯�����ࣺ1:·��Э������Ϣ������  2:·������';
comment on column TK_PLAN_ACTION_TYPE.plan_action_type_desc
  is 'Ԥ�����趯���������������ƣ�';
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
  is 'Ԥ������';
comment on column TK_PLAN_INDEX.plan_id
  is 'Ԥ��ID';
comment on column TK_PLAN_INDEX.plan_name
  is 'Ԥ������';
comment on column TK_PLAN_INDEX.plan_desc
  is 'Ԥ������';
comment on column TK_PLAN_INDEX.is_general
  is '�Ƿ�Ϊͨ��Ԥ����0������  1����';
comment on column TK_PLAN_INDEX.event_type_id
  is '��Ԥ�������õ��¼����ͣ���IsGeneral=0ʱ������';
comment on column TK_PLAN_INDEX.plan_type
  is '�ճ�Ԥ����Ӧ��Ԥ����־��1���ճ�Ԥ��  2��Ӧ��Ԥ��';
comment on column TK_PLAN_INDEX.alarm_level_id
  is '��Ԥ�������õ��¼�����,��IsGeneral=0ʱ������';
comment on column TK_PLAN_INDEX.organization_id
  is '���õĻ���';
comment on column TK_PLAN_INDEX.road_net_id
  is '���õ�·��';
comment on column TK_PLAN_INDEX.road_segment_id
  is '���õ�·��:������·�����绥ͨ';
comment on column TK_PLAN_INDEX.direction_id
  is '���õ�·�η���';
comment on column TK_PLAN_INDEX.start_stub
  is '���õ�·����ʼ׮��';
comment on column TK_PLAN_INDEX.end_stub
  is '���õ�·����ֹ׮��';
comment on column TK_PLAN_INDEX.user_id
  is '����޸���';
comment on column TK_PLAN_INDEX.last_update_time
  is '����޸�ʱ��';
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
  is 'Ԥ�������';
comment on column TK_PLAN_STEP.plan_step_id
  is 'Ԥ������ID��ʹ��UUID��Ϊ����';
comment on column TK_PLAN_STEP.plan_id
  is 'Ԥ��ID';
comment on column TK_PLAN_STEP.step_no
  is '����ţ�1��2��3������';
comment on column TK_PLAN_STEP.step_desc
  is '��������';
comment on column TK_PLAN_STEP.plan_action_type_id
  is 'Ԥ����������';
comment on column TK_PLAN_STEP.last_update_time
  is '����޸�ʱ��';
comment on column TK_PLAN_STEP.user_id
  is '����޸���';
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
  is 'Ԥ�����趯����';
comment on column TK_PLAN_STEP_ACTION.plan_step_action_id
  is 'Ԥ�����趯����ԪID��ʹ��UUID��Ϊ����';
comment on column TK_PLAN_STEP_ACTION.plan_id
  is 'Ԥ��ID';
comment on column TK_PLAN_STEP_ACTION.plan_step_id
  is 'Ԥ������ID';
comment on column TK_PLAN_STEP_ACTION.action_id
  is '����ID';
comment on column TK_PLAN_STEP_ACTION.action_no
  is '����ţ�1��2��3������';
comment on column TK_PLAN_STEP_ACTION.last_update_time
  is '����޸�ʱ��';
comment on column TK_PLAN_STEP_ACTION.user_id
  is '����޸���';
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
  is '��������ġ�������վ������ϢԤ��������';
comment on column TK_PUBLIC_ISSUE_PLAN_ACTION.public_issue_plan_action_id
  is '��¼ID��ʹ��UUID��Ϊ����';
comment on column TK_PUBLIC_ISSUE_PLAN_ACTION.action_desc
  is '����';
comment on column TK_PUBLIC_ISSUE_PLAN_ACTION.plan_action_type_id
  is '��������ID';
comment on column TK_PUBLIC_ISSUE_PLAN_ACTION.record_type
  is '��¼���ͣ�1����������ķ���  2���������վ����';
comment on column TK_PUBLIC_ISSUE_PLAN_ACTION.event_info_tpl_id
  is 'ģ�����';
comment on column TK_PUBLIC_ISSUE_PLAN_ACTION.last_update_time
  is '����޸�ʱ��';
comment on column TK_PUBLIC_ISSUE_PLAN_ACTION.user_id
  is '����޸���';
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
  is '��������ġ�������վ������Ϣ�����';
comment on column TK_PUBLIC_ISSUE_PLAN_ORDER.public_issue_plan_order_id
  is '��¼ID��ʹ��UUID��Ϊ����';
comment on column TK_PUBLIC_ISSUE_PLAN_ORDER.deal_plan_order_unit_id
  is '���÷������ԪID';
comment on column TK_PUBLIC_ISSUE_PLAN_ORDER.record_type
  is '��¼���ͣ�1����������ķ���  2���������վ����';
comment on column TK_PUBLIC_ISSUE_PLAN_ORDER.message_content
  is '��Ϣ����';
comment on column TK_PUBLIC_ISSUE_PLAN_ORDER.create_time
  is '�����ʱ��';
comment on column TK_PUBLIC_ISSUE_PLAN_ORDER.status
  is 'ִ��״̬��0��δִ��  1��������ִ�У���δ�յ�ִ�н��  2��ִ�гɹ�  3��ִ��ʧ��';
comment on column TK_PUBLIC_ISSUE_PLAN_ORDER.issue_time
  is '����ִ��ʱ��';
comment on column TK_PUBLIC_ISSUE_PLAN_ORDER.result_time
  is '�յ�ִ�н��ʱ��';
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
  is 'ʹ��UUID��Ϊ����';
comment on column TK_SERVICESTATION_PLAN_ACTION.action_desc
  is '����';
comment on column TK_SERVICESTATION_PLAN_ACTION.plan_action_type_id
  is '��������ID';
comment on column TK_SERVICESTATION_PLAN_ACTION.control_type
  is '��������(1�����Կ���
2����Կ���)';
comment on column TK_SERVICESTATION_PLAN_ACTION.control_scope_type_id
  is '���Ʒ�Χ����(��Control_Type=2ʱ��Ч)';
comment on column TK_SERVICESTATION_PLAN_ACTION.rel_control_scope_n
  is '��Կ��Ʒ�Χ�е�Nֵ';
comment on column TK_SERVICESTATION_PLAN_ACTION.event_info_tpl_id
  is '��Ϣģ��ID';
comment on column TK_SERVICESTATION_PLAN_ACTION.last_update_time
  is '����޸�ʱ��';
comment on column TK_SERVICESTATION_PLAN_ACTION.user_id
  is '����޸���';
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
  is 'ʹ��UUID��Ϊ����';
comment on column TK_SERVICESTATION_PLAN_ACTIONF.servicestation_plan_action_id
  is 'ID';
comment on column TK_SERVICESTATION_PLAN_ACTIONF.sub_servicestation_id
  is '���ط��������';
comment on column TK_SERVICESTATION_PLAN_ACTIONF.event_info_tpl_id
  is '��Ϣģ��ID';
comment on column TK_SERVICESTATION_PLAN_ACTIONF.last_update_time
  is '����޸�ʱ��';
comment on column TK_SERVICESTATION_PLAN_ACTIONF.user_id
  is '����޸���';
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
  is '��¼ID(ʹ��UUID��Ϊ����)';
comment on column TK_SERVICESTATION_PLAN_ORDER.deal_plan_order_unit_id
  is '���÷������ԪID';
comment on column TK_SERVICESTATION_PLAN_ORDER.sub_servicestation_id
  is 'Ŀ�������';
comment on column TK_SERVICESTATION_PLAN_ORDER.message_content
  is '��Ϣ����';
comment on column TK_SERVICESTATION_PLAN_ORDER.create_time
  is '�����ʱ��';
comment on column TK_SERVICESTATION_PLAN_ORDER.status
  is 'ִ��״̬(0��δִ��1��ִ��δ����2��ִ�гɹ�3��ִ��ʧ��)';
comment on column TK_SERVICESTATION_PLAN_ORDER.issue_time
  is '����ִ��ʱ��';
comment on column TK_SERVICESTATION_PLAN_ORDER.result_time
  is '�յ�ִ�н��ʱ��';
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
  is '�������Ʒ�Χ���ͱ�';
comment on column TK_TOLL_CONTROL_SCOPE_TYPE.toll_control_scope_type_id
  is '�������Ʒ�Χ���ʹ���';
comment on column TK_TOLL_CONTROL_SCOPE_TYPE.toll_control_scope_type_desc
  is '�������Ʒ�Χ��������';
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
  is '���շ�վ��������������ϢԤ��������';
comment on column TK_TOLL_PLAN_ACTION.toll_plan_action_id
  is '��¼ID��ʹ��UUID��Ϊ����';
comment on column TK_TOLL_PLAN_ACTION.action_desc
  is '����';
comment on column TK_TOLL_PLAN_ACTION.plan_action_type_id
  is '��������ID';
comment on column TK_TOLL_PLAN_ACTION.control_type
  is '�������ͣ�1�����Կ��ƣ�ֱ��ָ�������շ�վ  2����Կ��ƣ�ָ�������շ�վ���¼������Թ�ϵ';
comment on column TK_TOLL_PLAN_ACTION.toll_control_scope_type_id
  is '���Ʒ�Χ���ͣ���ControlType=2ʱ��Ч';
comment on column TK_TOLL_PLAN_ACTION.rel_control_scopen
  is '��Կ��Ʒ�Χ�е�Nֵ����ControlType=2ʱ��Ч';
comment on column TK_TOLL_PLAN_ACTION.control_order
  is '�������0���ر����г���  1���رղ��ֳ���  2�������г���';
comment on column TK_TOLL_PLAN_ACTION.last_update_time
  is '����޸�ʱ��';
comment on column TK_TOLL_PLAN_ACTION.user_id
  is '����޸���';
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
  is '���շ�վ��������������ϢԤ��������';
comment on column TK_TOLL_PLAN_ACTIONF.toll_plan_actionf_id
  is '��¼ID��ʹ��UUID��Ϊ����';
comment on column TK_TOLL_PLAN_ACTIONF.organization_id
  is '�����շ�վ��ţ���ControlType=1ʱ��Ч';
comment on column TK_TOLL_PLAN_ACTIONF.control_order
  is '�������0���ر����г���  1���رղ��ֳ���  2�������г���';
comment on column TK_TOLL_PLAN_ACTIONF.last_update_time
  is '����޸�ʱ��';
comment on column TK_TOLL_PLAN_ACTIONF.user_id
  is '����޸���';
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
  is '���շ�վ�����������������';
comment on column TK_TOLL_PLAN_ORDER.toll_plan_order_id
  is '��¼ID��ʹ��UUID��Ϊ����';
comment on column TK_TOLL_PLAN_ORDER.deal_plan_order_unit_id
  is '���÷������ԪID';
comment on column TK_TOLL_PLAN_ORDER.organization_id
  is '�����շ�վ���';
comment on column TK_TOLL_PLAN_ORDER.control_order
  is '�������0���ر����г���  1���رղ��ֳ���  2�������г���';
comment on column TK_TOLL_PLAN_ORDER.create_time
  is '�����ʱ��';
comment on column TK_TOLL_PLAN_ORDER.status
  is 'ִ��״̬��0��δִ��  1��������ִ�У���δ�յ�ִ�н��  2��ִ�гɹ�  3��ִ��ʧ��';
comment on column TK_TOLL_PLAN_ORDER.issue_time
  is '����ִ��ʱ��';
comment on column TK_TOLL_PLAN_ORDER.result_time
  is '�յ�ִ�н��ʱ��';
comment on column TK_TOLL_PLAN_ORDER.user_name
  is '�շ�վ����ִ����';
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
  is '��������Ʒ�Χ���ͱ�';
comment on column TK_VIDEO_CONTROL_SCOPE_TYPE.video_control_scope_type_id
  is '��������Ʒ�Χ���ʹ���';
comment on column TK_VIDEO_CONTROL_SCOPE_TYPE.video_control_scope_type_desc
  is '��������Ʒ�Χ��������';
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
  is '�����Ͷ����Ԥ��������';
comment on column TK_VIDEO_SCREEN_PLAN_ACTION.screen_plan_action_id
  is '��¼ID��ʹ��UUID��Ϊ����';
comment on column TK_VIDEO_SCREEN_PLAN_ACTION.action_desc
  is '����';
comment on column TK_VIDEO_SCREEN_PLAN_ACTION.plan_action_type_id
  is '��������ID';
comment on column TK_VIDEO_SCREEN_PLAN_ACTION.control_type
  is '�������ͣ�1�����Կ��ƣ�ֱ��ָ���鱨����豸���  2����Կ��ƣ�ָ���鱨�����¼������Թ�ϵ';
comment on column TK_VIDEO_SCREEN_PLAN_ACTION.video_control_scope_tyepe_id
  is '���Ʒ�Χ���͡���CONTROL_TYPE=2ʱ��Ч';
comment on column TK_VIDEO_SCREEN_PLAN_ACTION.rel_control_scope_n
  is '��Կ��Ʒ�Χ�е�Nֵ����CONTROL_TYPE=2ʱ��Ч';
comment on column TK_VIDEO_SCREEN_PLAN_ACTION.screen_id
  is '����ID';
comment on column TK_VIDEO_SCREEN_PLAN_ACTION.last_update_time
  is '����޸�ʱ��';
comment on column TK_VIDEO_SCREEN_PLAN_ACTION.user_id
  is '����޸���';
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
  is '�����Ͷ���������';
comment on column TK_VIDEO_SCREEN_PLAN_ORDER.screen_plan_order_id
  is '��¼ID��ʹ��UUID��Ϊ����';
comment on column TK_VIDEO_SCREEN_PLAN_ORDER.deal_plan_order_unit_id
  is '���÷������ԪID';
comment on column TK_VIDEO_SCREEN_PLAN_ORDER.device_id
  is '�鱨���豸���';
comment on column TK_VIDEO_SCREEN_PLAN_ORDER.screen_id
  is '����ID';
comment on column TK_VIDEO_SCREEN_PLAN_ORDER.create_time
  is '�����ʱ��';
comment on column TK_VIDEO_SCREEN_PLAN_ORDER.status
  is 'ִ��״̬��0��δִ��  1��������ִ�У���δ�յ�ִ�н��  2��ִ�гɹ�  3��ִ��ʧ��';
comment on column TK_VIDEO_SCREEN_PLAN_ORDER.issue_time
  is '����ִ��ʱ��';
comment on column TK_VIDEO_SCREEN_PLAN_ORDER.result_time
  is '�յ�ִ�н��ʱ��';
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
  is '�豸�������ϱ�';
comment on column VIDEO_DEVICE_PROFILE.device_id
  is '�豸ID';
comment on column VIDEO_DEVICE_PROFILE.device_desc
  is '�豸���ƻ��豸����';
comment on column VIDEO_DEVICE_PROFILE.device_type_id
  is '�豸����';
comment on column VIDEO_DEVICE_PROFILE.em_type_id
  is '��������ϵͳ';
comment on column VIDEO_DEVICE_PROFILE.road_segment_id
  is '����·��';
comment on column VIDEO_DEVICE_PROFILE.organization_id
  is '�������������Ҫ�������豸�Ĺ��������Ӧ����Ϊ��·�ι������ȹ������';
comment on column VIDEO_DEVICE_PROFILE.direction_id
  is '�豸���ڷ��򣨻�λ�ã�';
comment on column VIDEO_DEVICE_PROFILE.dec_stub
  is '����׮��';
comment on column VIDEO_DEVICE_PROFILE.char_stub
  is '�ַ�׮��';
comment on column VIDEO_DEVICE_PROFILE.price
  is '�۸񣺵�λ��Ԫ';
comment on column VIDEO_DEVICE_PROFILE.manufacturer
  is '��������';
comment on column VIDEO_DEVICE_PROFILE.product_model
  is '��Ʒ�ͺ�';
comment on column VIDEO_DEVICE_PROFILE.quantity
  is '����';
comment on column VIDEO_DEVICE_PROFILE.installer
  is '��װ����';
comment on column VIDEO_DEVICE_PROFILE.install_time
  is '��װʱ��';
comment on column VIDEO_DEVICE_PROFILE.collect_type
  is '���ݲɼ���ʽ��1:���ݽ���  2:�˹�¼��';
comment on column VIDEO_DEVICE_PROFILE.user_id
  is '�������ʱ���û�';
comment on column VIDEO_DEVICE_PROFILE.collect_time
  is '����ʱ��';
comment on column VIDEO_DEVICE_PROFILE.flag
  is 'ɾ����־:0����Ч��1��Ч';
comment on column VIDEO_DEVICE_PROFILE.update_time
  is '�޸�ʱ��';
comment on column VIDEO_DEVICE_PROFILE.communication
  is 'ͨ�ŷ�ʽ:ͨѶ��ʽ����
0:δ֪ 1TCP 2udp 3����';
comment on column VIDEO_DEVICE_PROFILE.ip
  is 'IP��ַ:����ģʽʱ����д���ڷ�����Ip������ģʽʱ����д�豸ip';
comment on column VIDEO_DEVICE_PROFILE.port
  is '�˿�/���ں�:����ģʽʱ����д���ںţ�����ģʽʱ����д�˿ں�';
comment on column VIDEO_DEVICE_PROFILE.bot
  is '��������';
comment on column VIDEO_DEVICE_PROFILE.valid
  is '�Ƿ����ñ�־:�豸�ɼ������Ƿ�����
0���رգ�1����';
comment on column VIDEO_DEVICE_PROFILE.other
  is '��������';
comment on column VIDEO_DEVICE_PROFILE.dal
  is 'ҵ��������';
comment on column VIDEO_DEVICE_PROFILE.manufactor_name
  is '��������';
comment on column VIDEO_DEVICE_PROFILE.camera_id
  is '�������ţ�ָ���������Ӧ��Ƶϵͳ�еı��';
comment on column VIDEO_DEVICE_PROFILE.camera_type
  is '������������ͣ�1:�ǰ2:������3:���Ż�ͨ';
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
  is '��Ƶ�¼��������ϱ�';
comment on column VIDEO_EVENT_DEVICE_PROFILE.device_id
  is '�豸ID';
comment on column VIDEO_EVENT_DEVICE_PROFILE.device_desc
  is '�豸���ƻ��豸����';
comment on column VIDEO_EVENT_DEVICE_PROFILE.device_type_id
  is '�豸����';
comment on column VIDEO_EVENT_DEVICE_PROFILE.em_type_id
  is '��������ϵͳ';
comment on column VIDEO_EVENT_DEVICE_PROFILE.road_segment_id
  is '����·��';
comment on column VIDEO_EVENT_DEVICE_PROFILE.organization_id
  is '�������������Ҫ�������豸�Ĺ��������Ӧ����Ϊ��·�ι������ȹ������';
comment on column VIDEO_EVENT_DEVICE_PROFILE.direction_id
  is '�豸���ڷ��򣨻�λ�ã�';
comment on column VIDEO_EVENT_DEVICE_PROFILE.dec_stub
  is '����׮��';
comment on column VIDEO_EVENT_DEVICE_PROFILE.char_stub
  is '�ַ�׮��';
comment on column VIDEO_EVENT_DEVICE_PROFILE.price
  is '�۸񣺵�λ��Ԫ';
comment on column VIDEO_EVENT_DEVICE_PROFILE.manufacturer
  is '��������';
comment on column VIDEO_EVENT_DEVICE_PROFILE.product_model
  is '��Ʒ�ͺ�';
comment on column VIDEO_EVENT_DEVICE_PROFILE.quantity
  is '����';
comment on column VIDEO_EVENT_DEVICE_PROFILE.installer
  is '��װ����';
comment on column VIDEO_EVENT_DEVICE_PROFILE.install_time
  is '��װʱ��';
comment on column VIDEO_EVENT_DEVICE_PROFILE.collect_type
  is '���ݲɼ���ʽ��1:���ݽ���  2:�˹�¼��';
comment on column VIDEO_EVENT_DEVICE_PROFILE.user_id
  is '�������ʱ���û�';
comment on column VIDEO_EVENT_DEVICE_PROFILE.collect_time
  is '����ʱ��';
comment on column VIDEO_EVENT_DEVICE_PROFILE.flag
  is 'ɾ����־:0����Ч��1��Ч';
comment on column VIDEO_EVENT_DEVICE_PROFILE.update_time
  is '�޸�ʱ��';
comment on column VIDEO_EVENT_DEVICE_PROFILE.communication
  is 'ͨ�ŷ�ʽ:ͨѶ��ʽ����
0:δ֪ 1TCP 2udp 3����';
comment on column VIDEO_EVENT_DEVICE_PROFILE.ip
  is 'IP��ַ:����ģʽʱ����д���ڷ�����Ip������ģʽʱ����д�豸ip';
comment on column VIDEO_EVENT_DEVICE_PROFILE.port
  is '�˿�/���ں�:����ģʽʱ����д���ںţ�����ģʽʱ����д�˿ں�';
comment on column VIDEO_EVENT_DEVICE_PROFILE.bot
  is '��������';
comment on column VIDEO_EVENT_DEVICE_PROFILE.valid
  is '�Ƿ����ñ�־:�豸�ɼ������Ƿ�����
0���رգ�1����';
comment on column VIDEO_EVENT_DEVICE_PROFILE.other
  is '��������';
comment on column VIDEO_EVENT_DEVICE_PROFILE.dal
  is 'ҵ��������';
comment on column VIDEO_EVENT_DEVICE_PROFILE.manufactor_name
  is '��������';
comment on column VIDEO_EVENT_DEVICE_PROFILE.protocal_id
  is '����Э���id';
comment on column VIDEO_EVENT_DEVICE_PROFILE.service_id
  is '����id';
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
  is '��Ƶ�¼�ƽ̨�ڵ������ID��������Ķ�Ӧ��';
comment on column VIDEO_EVENT_IN_CAMERA.id
  is '����';
comment on column VIDEO_EVENT_IN_CAMERA.event_platfrom_id
  is '��Ƶ�¼�ƽ̨ID';
comment on column VIDEO_EVENT_IN_CAMERA.camera_id
  is 'ϵͳ�����ID';
comment on column VIDEO_EVENT_IN_CAMERA.event_camera_id
  is '��Ƶ�¼�ƽ̨�ڵ������ID';
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
  is '��Ϣ���ѱ�';
comment on column VOICE_FILE.voice_id
  is '����ID';
comment on column VOICE_FILE.path
  is '·��';
comment on column VOICE_FILE.play_time
  is '�ļ��Ĳ���ʱ��';
comment on column VOICE_FILE.deal_user_id
  is '��¼�޸���';
comment on column VOICE_FILE.last_update_time
  is '����޸�ʱ��';
comment on column VOICE_FILE.file_name
  is '�ļ�����';
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
  is '�豸����ID��������';
comment on column VS_CODEC_DEVICE.device_type
  is '�豸���ͣ�0�����룬1������,2����ý�壬3��GB28181����4���洢�豸';
comment on column VS_CODEC_DEVICE.factory_id
  is '�����ڲ���ʶ��';
comment on column VS_CODEC_DEVICE.factory_identify
  is '����ʵ�ʱ�ʶ��';
comment on column VS_CODEC_DEVICE.device_model
  is '�豸�ͺ�';
comment on column VS_CODEC_DEVICE.channel_num
  is 'ͨ������';
comment on column VS_CODEC_DEVICE.major_num_in_channel
  is '����ͨ������������';
comment on column VS_CODEC_DEVICE.minor_num_in_channel
  is '����ͨ����������';
comment on column VS_CODEC_DEVICE.video_type
  is '����/���壺sd��hd';
comment on column VS_CODEC_DEVICE.switch_channel_num
  is '������ͨ������';
comment on column VS_CODEC_DEVICE.ptzchannels
  is '��̨ͨ����';
comment on column VS_CODEC_DEVICE.ip
  is '�豸��IP';
comment on column VS_CODEC_DEVICE.port
  is '�豸�Ķ˿�;Ĭ��ֵ��6600';
comment on column VS_CODEC_DEVICE.device_mgr_addr
  is '�豸�����������';
comment on column VS_CODEC_DEVICE.device_mgr_login
  is '�豸��������¼��';
comment on column VS_CODEC_DEVICE.device_mgr_password
  is '�豸��������¼����';
comment on column VS_CODEC_DEVICE.login_sn
  is '��¼�������';
comment on column VS_CODEC_DEVICE.login_time
  is '��¼ʱ��';
comment on column VS_CODEC_DEVICE.logout_time
  is 'ע��ʱ��';
comment on column VS_CODEC_DEVICE.update_sn
  is '���Բ�ѯ�������';
comment on column VS_CODEC_DEVICE.valid
  is '��Ч�ԣ�0����Ч��1����Ч��Ĭ��ֵ��1';
comment on column VS_CODEC_DEVICE.is_online
  is '�Ƿ����ߣ�0����ʾ�����ߣ�1����ʾ����';
comment on column VS_CODEC_DEVICE.protocol_type
  is '��֧�ֵ�Э�����ͣ�0���ӱ�Э�飬1��GB28181Э�飻Ĭ��ֵ0';
comment on column VS_CODEC_DEVICE.max_input_num
  is '���������������(ֻ����ý����Ч)';
comment on column VS_CODEC_DEVICE.max_output_num
  is '��������������(ֻ����ý����Ч)';
comment on column VS_CODEC_DEVICE.ver
  is '�汾��';
comment on column VS_CODEC_DEVICE.disk_size
  is 'Ӳ�̴洢�ռ�(T)';
comment on column VS_CODEC_DEVICE.record_num
  is '¼��·��';
comment on column VS_CODEC_DEVICE.review_num
  is '�ط�·��';
comment on column VS_CODEC_DEVICE.review_type
  is '�ط�����';
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
