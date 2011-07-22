-- MySQL dump 9.10
--
-- Host: localhost    Database: discuz2
-- ------------------------------------------------------
-- Server version	4.0.17-nt

--
-- Table structure for table `cdb_announcements`
--

CREATE TABLE cdb_announcements (
  id smallint(6) unsigned NOT NULL auto_increment,
  author varchar(15) NOT NULL default '',
  subject varchar(250) NOT NULL default '',
  starttime int(10) unsigned NOT NULL default '0',
  endtime int(10) unsigned NOT NULL default '0',
  message text NOT NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `cdb_announcements`
--


--
-- Table structure for table `cdb_attachments`
--

CREATE TABLE cdb_attachments (
  aid mediumint(8) unsigned NOT NULL auto_increment,
  tid mediumint(8) unsigned NOT NULL default '0',
  pid int(10) unsigned NOT NULL default '0',
  creditsrequire smallint(6) unsigned NOT NULL default '0',
  filename varchar(255) NOT NULL default '',
  filetype varchar(50) NOT NULL default '',
  filesize int(12) unsigned NOT NULL default '0',
  attachment varchar(255) NOT NULL default '',
  downloads smallint(6) NOT NULL default '0',
  PRIMARY KEY  (aid)
) TYPE=MyISAM;

--
-- Dumping data for table `cdb_attachments`
--


--
-- Table structure for table `cdb_banned`
--

CREATE TABLE cdb_banned (
  id smallint(6) unsigned NOT NULL auto_increment,
  ip1 smallint(3) NOT NULL default '0',
  ip2 smallint(3) NOT NULL default '0',
  ip3 smallint(3) NOT NULL default '0',
  ip4 smallint(3) NOT NULL default '0',
  admin varchar(15) NOT NULL default '',
  dateline int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (id),
  KEY ip1 (ip1),
  KEY ip2 (ip2),
  KEY ip3 (ip3),
  KEY ip4 (ip1)
) TYPE=MyISAM;

--
-- Dumping data for table `cdb_banned`
--


--
-- Table structure for table `cdb_buddys`
--

CREATE TABLE cdb_buddys (
  username varchar(15) NOT NULL default '',
  buddyname varchar(15) NOT NULL default ''
) TYPE=MyISAM;

--
-- Dumping data for table `cdb_buddys`
--


--
-- Table structure for table `cdb_favorites`
--

CREATE TABLE cdb_favorites (
  tid mediumint(8) unsigned NOT NULL default '0',
  username varchar(15) NOT NULL default '',
  KEY tid (tid)
) TYPE=MyISAM;

--
-- Dumping data for table `cdb_favorites`
--


--
-- Table structure for table `cdb_forumlinks`
--

CREATE TABLE cdb_forumlinks (
  id smallint(6) unsigned NOT NULL auto_increment,
  displayorder tinyint(3) NOT NULL default '0',
  name varchar(100) NOT NULL default '',
  url varchar(100) NOT NULL default '',
  note varchar(200) NOT NULL default '',
  logo varchar(100) NOT NULL default '',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `cdb_forumlinks`
--

INSERT INTO cdb_forumlinks VALUES (1,0,'Discuz! Board','http://www.Discuz.net','本站论坛程序 Discuz! 的官方站点，专门讨论 Discuz! 的使用与 Hack，提供论坛升级与技术支持等。','images/logo.gif');

--
-- Table structure for table `cdb_forums`
--

CREATE TABLE cdb_forums (
  fid smallint(6) unsigned NOT NULL auto_increment,
  fup smallint(6) unsigned NOT NULL default '0',
  type enum('group','forum','sub') NOT NULL default 'forum',
  icon varchar(100) NOT NULL default '',
  name varchar(50) NOT NULL default '',
  description text NOT NULL,
  status tinyint(1) NOT NULL default '0',
  displayorder tinyint(3) NOT NULL default '0',
  moderator tinytext NOT NULL,
  styleid smallint(6) unsigned NOT NULL default '0',
  threads smallint(6) unsigned NOT NULL default '0',
  posts mediumint(8) unsigned NOT NULL default '0',
  lastpost varchar(130) NOT NULL default '',
  allowsmilies tinyint(1) NOT NULL default '0',
  allowhtml tinyint(1) NOT NULL default '0',
  allowbbcode tinyint(1) NOT NULL default '0',
  allowimgcode tinyint(1) NOT NULL default '0',
  password varchar(12) NOT NULL default '',
  postcredits tinyint(1) NOT NULL default '-1',
  viewperm tinytext NOT NULL,
  postperm tinytext NOT NULL,
  getattachperm tinytext NOT NULL,
  postattachperm tinytext NOT NULL,
  PRIMARY KEY  (fid),
  KEY status (status)
) TYPE=MyISAM;

--
-- Dumping data for table `cdb_forums`
--

INSERT INTO cdb_forums VALUES (15,14,'forum','','日常办公','',1,0,'crystalfu01,admin',0,11,11,'我的工作	1310717352	admin',1,0,1,1,'',-1,'','','','');
INSERT INTO cdb_forums VALUES (16,14,'forum','','部门业务管理','',1,0,'',0,2,2,'绩效考核	1310719338	admin',1,0,1,1,'',-1,'','','','');
INSERT INTO cdb_forums VALUES (17,14,'forum','','行业性应用','',1,0,'admin',0,0,0,'',1,0,1,1,'',-1,'','','','');
INSERT INTO cdb_forums VALUES (18,14,'forum','','核心竞争力','',1,0,'admin',0,0,0,'',1,0,1,1,'',-1,'','','','');
INSERT INTO cdb_forums VALUES (14,0,'group','','星畅科技','',1,0,'',0,0,0,'',0,0,0,0,'',-1,'','','','');

--
-- Table structure for table `cdb_karmalog`
--

CREATE TABLE cdb_karmalog (
  username varchar(15) NOT NULL default '',
  pid int(10) unsigned NOT NULL default '0',
  dateline int(10) unsigned NOT NULL default '0',
  score tinyint(3) NOT NULL default '0'
) TYPE=MyISAM;

--
-- Dumping data for table `cdb_karmalog`
--


--
-- Table structure for table `cdb_members`
--

CREATE TABLE cdb_members (
  uid mediumint(8) unsigned NOT NULL auto_increment,
  username varchar(15) NOT NULL default '',
  password varchar(40) NOT NULL default '',
  gender tinyint(1) NOT NULL default '0',
  status enum('Member','Admin','SuperMod','Moderator','Banned','PostBanned','Inactive') NOT NULL default 'Member',
  regip varchar(15) NOT NULL default '',
  regdate int(10) unsigned NOT NULL default '0',
  lastvisit int(10) unsigned NOT NULL default '0',
  postnum smallint(6) unsigned NOT NULL default '0',
  credit int(10) NOT NULL default '0',
  charset varchar(10) NOT NULL default '',
  email varchar(60) NOT NULL default '',
  site varchar(75) NOT NULL default '',
  icq varchar(12) NOT NULL default '',
  oicq varchar(12) NOT NULL default '',
  yahoo varchar(40) NOT NULL default '',
  msn varchar(40) NOT NULL default '',
  location varchar(30) NOT NULL default '',
  bday date NOT NULL default '0000-00-00',
  bio text NOT NULL,
  avatar varchar(100) NOT NULL default '',
  signature text NOT NULL,
  customstatus varchar(20) NOT NULL default '',
  tpp tinyint(3) unsigned NOT NULL default '0',
  ppp tinyint(3) unsigned NOT NULL default '0',
  styleid smallint(6) unsigned NOT NULL default '0',
  dateformat varchar(10) NOT NULL default '',
  timeformat varchar(5) NOT NULL default '',
  showemail tinyint(1) NOT NULL default '0',
  newsletter tinyint(1) NOT NULL default '0',
  timeoffset char(3) NOT NULL default '',
  ignorepm text NOT NULL,
  newpm tinyint(1) NOT NULL default '0',
  pwdrecover varchar(30) NOT NULL default '',
  pwdrcvtime int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (uid),
  KEY username (username)
) TYPE=MyISAM;

--
-- Dumping data for table `cdb_members`
--

INSERT INTO cdb_members VALUES (1,'admin','3b932a915e709ccbaa703660512dce5b',0,'Admin','hidden',1101432885,1310967552,13,13,'','name@domain.com','','','','','','','0000-00-00','','','','',0,0,0,'Y-n-j','h:i A',1,1,'8','',0,'',0);
INSERT INTO cdb_members VALUES (2,'crystalfu01','6af76c429eb567df52d2c389d9641a0e',2,'Moderator','172.16.95.1',1310715130,1310716270,0,0,'','crystalfu01@gmail.com','','','','','','','0000-00-00','','','','',0,0,0,'Y-n-j','h:i A',1,1,'8','',0,'',0);

--
-- Table structure for table `cdb_pm`
--

CREATE TABLE cdb_pm (
  pmid int(10) unsigned NOT NULL auto_increment,
  msgto varchar(15) NOT NULL default '',
  msgfrom varchar(15) NOT NULL default '',
  folder enum('inbox','outbox') NOT NULL default 'inbox',
  new tinyint(1) NOT NULL default '0',
  subject varchar(75) NOT NULL default '',
  dateline int(10) unsigned NOT NULL default '0',
  message text NOT NULL,
  PRIMARY KEY  (pmid),
  KEY msgto (msgto)
) TYPE=MyISAM;

--
-- Dumping data for table `cdb_pm`
--


--
-- Table structure for table `cdb_poll`
--

CREATE TABLE cdb_poll (
  pollid mediumint(8) unsigned NOT NULL auto_increment,
  tid mediumint(8) unsigned NOT NULL default '0',
  dateline int(10) unsigned NOT NULL default '0',
  multiple tinyint(1) NOT NULL default '0',
  options text NOT NULL,
  voters text NOT NULL,
  maxvotes smallint(6) unsigned NOT NULL default '0',
  totalvotes smallint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (pollid),
  KEY tid (tid)
) TYPE=MyISAM;

--
-- Dumping data for table `cdb_poll`
--


--
-- Table structure for table `cdb_posts`
--

CREATE TABLE cdb_posts (
  fid smallint(6) unsigned NOT NULL default '0',
  tid mediumint(8) unsigned NOT NULL default '0',
  pid int(10) unsigned NOT NULL auto_increment,
  aid mediumint(8) unsigned NOT NULL default '0',
  icon varchar(30) NOT NULL default '',
  author varchar(15) NOT NULL default '',
  subject varchar(100) NOT NULL default '',
  dateline int(10) unsigned NOT NULL default '0',
  message mediumtext NOT NULL,
  useip varchar(15) NOT NULL default '',
  usesig tinyint(1) NOT NULL default '0',
  bbcodeoff tinyint(1) NOT NULL default '0',
  smileyoff tinyint(1) NOT NULL default '0',
  parseurloff tinyint(1) NOT NULL default '0',
  rate smallint(6) NOT NULL default '0',
  ratetimes tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (pid),
  KEY fid (fid),
  KEY tid (tid,dateline),
  KEY dateline (dateline)
) TYPE=MyISAM;

--
-- Dumping data for table `cdb_posts`
--

INSERT INTO cdb_posts VALUES (15,2,2,0,'0','admin','我的工作',1310650528,'【我的工作】集成了系统中所有应用模块，汇总显示当前用户的所有【草稿】、【待办】、【在办】、【办结】、【否决】、【作废】、【所有】文件。\r\n\r\n草稿：当前用户起草，尚未提交的文件。\r\n待办：需要当前用户处理的文件。\r\n在办：当前用户提交给别人，正在处理的文件。\r\n办结：已经处理并且归档的文件。\r\n否决：批退文件：当前用户提交的，但被批退的流程文件。\r\n作废： 被批退后，被作废处理，不再需要重新走审批流程的文件。\r\n所有：除了草稿以外的，当前用户起草或办理过的所有文件；\r\n\r\n【我的工作】图标，有待办事项实时提醒。用户接收到待办事项和收到邮件的时一样，系统采用实时提醒方式，用户无需主动查看；','127.0.0.1',0,0,0,0,0,0);
INSERT INTO cdb_posts VALUES (15,3,3,0,'0','admin','公告',1310650581,'OA系统之公告管理：公告提供公司内部信息发布的渠道，如开会通知、放假通知及其它信息。使用户可以很方便的了解公司动向。','127.0.0.1',0,0,0,0,0,0);
INSERT INTO cdb_posts VALUES (15,4,4,0,'0','admin','新闻',1310650749,'新闻系统是用于发布一些公司新闻、国内新闻和国际新闻，方便用户了解单位的企业文化、公司一些记事要事、国内和国际时政要闻。','127.0.0.1',0,0,0,0,0,0);
INSERT INTO cdb_posts VALUES (15,5,5,0,'0','admin','人事考勤',1310650782,'概念：\r\n该模块包含了与员工考勤统计相关的一系列人事考勤类流程，同时也涵盖人事档案、个人信息中心，随时可查看员工的档案工作行为记录等。 \r\n\r\n产品概述：\r\n包含人事档案、公务外出、请休假申请、出差申请、考勤记录、加班申请、调休申请,考勤异常说明等一些列与考勤结果相关的流程，同时预置了对应报表，自从统计员工出勤状况。 \r\n\r\n功能详解：\r\n◆ 展示员工在职行为记录，让管理者能从档案中看出员工在公司做过的事情。\r\n\r\n◆ 根据业务流程，提供档案数据自动记录、更新的功能。\r\n\r\n◆ 管理所有人事资料，可录入、修改员工的基本信息，并支持员工照片显示。\r\n\r\n◆ 提供明细表、多维度交叉表的查询、统计分析。\r\n\r\n◆ 系统自动提示员工生日、试用期满、合同期满等功能，提醒可自定义其它项目。\r\n\r\n◆ 离职员工个人档案信息可转入离职员工类别，并对离职员工进行跟踪记录。\r\n\r\n◆ 方便快捷，相关领导不在公司，也能及时处理，且在审批流程中显示员工近两月外出历史记录。\r\n\r\n◆ 外出申请会自动统计到考勤中，快捷方便，考勤人员不必重复计算。\r\n\r\n◆ 结合车辆管理，一表多效，可直接查询、预订车辆。\r\n\r\n◆ 可看到所有人的请假情况，也可以查看某人最近一段时间的请假情况；也可搜索避免要翻一大堆的资料。\r\n\r\n◆ 避免请假要跑好多部门，直接用电子流就可以解决此问题，并将代理人员和代理的工作内容都能准确无误地通知到。\r\n\r\n◆ 出差申请和销差一表化。\r\n\r\n◆ 与借款相结合，优化出差前相关的审批流程。\r\n\r\n◆ 可在此模块中同时将订票、费用、酒店预订等事宜一并审批，不用找每一个部门、领导签字，节省了时间。\r\n\r\n◆ 可上传和发布每月考勤统计数据，供员工核对。\r\n\r\n◆ 可进行加班申请的审批和加班时间的统计，以便为调休审批和加班工资核算提供依据。\r\n\r\n◆ 可对进行调休申请的审批和调休时间的统计。\r\n\r\n◆ “考勤异常”可与“考勤记录”,数据关联，可自动核销考勤记录中的异常数据。','127.0.0.1',0,0,0,0,0,0);
INSERT INTO cdb_posts VALUES (15,6,6,0,'0','admin','财务报销',1310650813,'定义\r\n员工费用管理预置了费用报销申请，报销记录查询借还款申请及员工个人台帐查询，用严格的审批处理流程，控制内部费用和借还款的申报，集中的决策信息使审批更加高效集中，丰富的统计数据可使员工和管理人员随时随地查询费用报销情况及支付结果。\r\n\r\n适用企业\r\n适用于所有的企业，可以提高企业与个人之间财务过程的清晰和规范高效。\r\n\r\n使用效果\r\n1、管理企业费用报销申请业务，规范化的流程审核处理。能直接冲减借款并记录，关联系统账户台帐从中支付\r\n2、管理企业所有费用报销及借款处理过程，规范化流程审核处理。能生成统计报表，实时了解控制管理”\r\n3、企业管理所有员工借款和员工管理自己借款的平台，数据自动由系统业务互动生成。记录员工借款余额及与借款相关的流水帐记录，能从记录中方便查阅申请审批过程','127.0.0.1',0,0,0,0,0,0);
INSERT INTO cdb_posts VALUES (15,7,7,0,'0','admin','会议管理',1310650836,'会议管理系统可对会议要素（会议室、时间、地点、议题、主持人、参加人）、会议准备（会议室安排、会议资料准备、设备准备）、会议结果（会议纪要）进行全面管理。实现从会议发起、准备召开、会议纪录、纪要发布、到文件归档整个过程的管理，能对协调会议安排、提高会议质量起到良好作用。','127.0.0.1',0,0,0,0,0,0);
INSERT INTO cdb_posts VALUES (15,8,8,0,'0','admin','车辆管理',1310650896,'对单位内日常车辆的使用进行管理，如车辆信息、出车申请、出车记录、驾驶员信息等繁杂信息的记录和处理，对单位内的用车起到了很好的管理及监督作用，使单位内部用车日趋规范、借用及检索方便。','127.0.0.1',0,0,0,0,0,0);
INSERT INTO cdb_posts VALUES (15,9,9,0,'0','admin','部门文件柜',1310650926,'。','127.0.0.1',0,0,0,0,0,0);
INSERT INTO cdb_posts VALUES (15,10,10,0,'0','admin','部门空间',1310650948,'部门空间可用于部门间共享信息，高效协作。','127.0.0.1',0,0,0,0,0,0);
INSERT INTO cdb_posts VALUES (15,11,11,0,'0','admin','服务申请',1310650969,'通过服务申请系统，企业内各部门可提出服务申请，并由各对口部门作出服务响应。系统自动记录整个服务响应过程，并可由服务申请者对服务作出评价，提高服务质量，改进工作效率。','127.0.0.1',0,0,0,0,0,0);
INSERT INTO cdb_posts VALUES (15,12,12,0,'0','admin','项目空间',1310651007,'项目空间定位于增强项目内部沟通能力，增强项目团队成员的协同能力，以一切为了项目团队为核心理念。','127.0.0.1',0,0,0,0,0,0);
INSERT INTO cdb_posts VALUES (16,14,14,0,'0','admin','ISO管理',1310718245,'在信息技术迅速发展的今天，利用传统的纸介作业方式来储存、管理、签核、发布及分享公司重要的品质程序以及说明文件等企业文件，显然无法满足ISO 9000质量管理系统的要求。\r\n\r\n    ISO文件管理系统，能够落实文件的审查、核准作业，严格管理文件的发行与变更流程，规范文件管理流程、快速流转企业文件、提高企业管理效率。\r\n\r\n    ISO文件管理系统的功能：\r\n文件的生成与管理\r\n文件的发布和维护\r\n文件的安全控制\r\n文件版本的一致性\r\n文件状态的全程追踪\r\n文档的查询与归档\r\n确定文档管理的范围和分类\r\n规定保存期限，做到失效即销，节省存储空间，减少查阅时间\r\n建立健全文件移交、复印、借阅、销毁等规章制度\r\n版本管理','172.16.95.1',0,0,0,0,0,0);
INSERT INTO cdb_posts VALUES (16,15,15,0,'0','admin','绩效考核',1310719338,'绩效管理是人力资源管理体系的重要组成部分，也是落实并确保企业战略得以实现的重要手段。绩效管理通常包括绩效计划、绩效实施、绩效评价、绩效反馈和应用等环节。 \r\n    本产品模拟企业实际绩效管理业务系统，针对绩效主管、直线经理（负责人）、人事经理、副总经理、总经理以及员工等角色，分别提供了制定绩效计划、依照计划开展绩效评价、绩效评价结果应用等功能。\r\n\r\n产品功能：','172.16.95.1',0,0,0,0,0,0);

--
-- Table structure for table `cdb_searchindex`
--

CREATE TABLE cdb_searchindex (
  keywords varchar(200) NOT NULL default '',
  results int(10) unsigned NOT NULL default '0',
  dateline int(10) unsigned NOT NULL default '0',
  KEY dateline (dateline)
) TYPE=MyISAM;

--
-- Dumping data for table `cdb_searchindex`
--


--
-- Table structure for table `cdb_sessions`
--

CREATE TABLE cdb_sessions (
  sid varchar(8) binary NOT NULL default '',
  ip varchar(15) NOT NULL default '',
  ipbanned tinyint(1) NOT NULL default '0',
  status enum('Guest','Member','Admin','SuperMod','Moderator','Banned','IPBanned','PostBanned','Inactive') NOT NULL default 'Guest',
  username varchar(15) NOT NULL default '',
  lastactivity int(10) unsigned NOT NULL default '0',
  groupid smallint(6) unsigned NOT NULL default '0',
  styleid smallint(6) unsigned NOT NULL default '0',
  action tinyint(1) unsigned NOT NULL default '0',
  fid smallint(6) unsigned NOT NULL default '0',
  tid mediumint(8) unsigned NOT NULL default '0',
  KEY sid (sid)
) TYPE=HEAP MAX_ROWS=1000;

--
-- Dumping data for table `cdb_sessions`
--


--
-- Table structure for table `cdb_settings`
--

CREATE TABLE cdb_settings (
  bbname varchar(50) NOT NULL default '',
  regstatus tinyint(1) NOT NULL default '0',
  censoruser text NOT NULL,
  doublee tinyint(1) NOT NULL default '0',
  regverify tinyint(1) NOT NULL default '0',
  bbrules tinyint(1) NOT NULL default '0',
  bbrulestxt text NOT NULL,
  welcommsg tinyint(1) NOT NULL default '0',
  welcommsgtxt text NOT NULL,
  bbclosed tinyint(1) NOT NULL default '0',
  closedreason text NOT NULL,
  sitename varchar(50) NOT NULL default '',
  siteurl varchar(60) NOT NULL default '',
  moddisplay enum('flat','selectbox') NOT NULL default 'flat',
  styleid smallint(6) unsigned NOT NULL default '0',
  maxonlines smallint(6) unsigned NOT NULL default '0',
  floodctrl smallint(6) unsigned NOT NULL default '0',
  searchctrl smallint(6) unsigned NOT NULL default '0',
  hottopic tinyint(3) unsigned NOT NULL default '0',
  topicperpage tinyint(3) unsigned NOT NULL default '0',
  postperpage tinyint(3) unsigned NOT NULL default '0',
  memberperpage tinyint(3) unsigned NOT NULL default '0',
  maxpostsize mediumint(8) unsigned NOT NULL default '0',
  maxavatarsize tinyint(3) unsigned NOT NULL default '0',
  smcols tinyint(3) unsigned NOT NULL default '0',
  logincredits tinyint(3) unsigned NOT NULL default '0',
  postcredits tinyint(3) unsigned NOT NULL default '0',
  digestcredits tinyint(3) unsigned NOT NULL default '0',
  whosonlinestatus tinyint(1) NOT NULL default '0',
  vtonlinestatus tinyint(1) NOT NULL default '0',
  gzipcompress tinyint(1) NOT NULL default '0',
  hideprivate tinyint(1) NOT NULL default '0',
  fastpost tinyint(1) NOT NULL default '0',
  modshortcut tinyint(1) NOT NULL default '0',
  memliststatus tinyint(1) NOT NULL default '0',
  statstatus tinyint(1) NOT NULL default '0',
  debug tinyint(1) NOT NULL default '0',
  reportpost tinyint(1) NOT NULL default '0',
  bbinsert tinyint(1) NOT NULL default '0',
  smileyinsert tinyint(1) NOT NULL default '0',
  editedby tinyint(1) NOT NULL default '0',
  dotfolders tinyint(1) NOT NULL default '0',
  attachsave tinyint(1) NOT NULL default '0',
  attachimgpost tinyint(1) NOT NULL default '0',
  timeoffset varchar(5) NOT NULL default '',
  timeformat varchar(5) NOT NULL default '',
  dateformat varchar(10) NOT NULL default '',
  version varchar(100) NOT NULL default '',
  onlinerecord varchar(30) NOT NULL default '',
  totalmembers smallint(6) unsigned NOT NULL default '0',
  lastmember varchar(15) NOT NULL default ''
) TYPE=MyISAM;

--
-- Dumping data for table `cdb_settings`
--

INSERT INTO cdb_settings VALUES ('Discuz! Board',1,'',1,0,0,'',0,'',0,'','Crossday Studio','http://www.crossday.com/','flat',1,1000,15,5,10,20,10,25,10000,0,3,0,1,10,1,1,0,1,1,1,1,0,1,1,1,1,1,0,0,1,'8','h:i A','Y-n-j','2.0 <b style=\'color: #FF9900\'>COML</b>','2	1310446150',2,'crystalfu01');

--
-- Table structure for table `cdb_smilies`
--

CREATE TABLE cdb_smilies (
  id smallint(6) unsigned NOT NULL auto_increment,
  type enum('smiley','picon') NOT NULL default 'smiley',
  code varchar(10) NOT NULL default '',
  url varchar(30) NOT NULL default '',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `cdb_smilies`
--

INSERT INTO cdb_smilies VALUES (1,'smiley',':)','smile.gif');
INSERT INTO cdb_smilies VALUES (2,'smiley',':(','sad.gif');
INSERT INTO cdb_smilies VALUES (3,'smiley',':D','biggrin.gif');
INSERT INTO cdb_smilies VALUES (4,'smiley',';)','wink.gif');
INSERT INTO cdb_smilies VALUES (5,'smiley',':cool:','cool.gif');
INSERT INTO cdb_smilies VALUES (6,'smiley',':mad:','mad.gif');
INSERT INTO cdb_smilies VALUES (7,'smiley',':o','shocked.gif');
INSERT INTO cdb_smilies VALUES (8,'smiley',':P','tongue.gif');
INSERT INTO cdb_smilies VALUES (9,'smiley',':lol:','lol.gif');
INSERT INTO cdb_smilies VALUES (10,'picon','','icon1.gif');
INSERT INTO cdb_smilies VALUES (11,'picon','','icon2.gif');
INSERT INTO cdb_smilies VALUES (12,'picon','','icon3.gif');
INSERT INTO cdb_smilies VALUES (13,'picon','','icon4.gif');
INSERT INTO cdb_smilies VALUES (14,'picon','','icon5.gif');
INSERT INTO cdb_smilies VALUES (15,'picon','','icon6.gif');
INSERT INTO cdb_smilies VALUES (16,'picon','','icon7.gif');
INSERT INTO cdb_smilies VALUES (17,'picon','','icon8.gif');
INSERT INTO cdb_smilies VALUES (18,'picon','','icon9.gif');

--
-- Table structure for table `cdb_stats`
--

CREATE TABLE cdb_stats (
  type varchar(20) NOT NULL default '',
  var varchar(20) NOT NULL default '',
  count int(10) unsigned NOT NULL default '0',
  KEY type (type),
  KEY var (var)
) TYPE=MyISAM;

--
-- Dumping data for table `cdb_stats`
--

INSERT INTO cdb_stats VALUES ('total','hits',0);
INSERT INTO cdb_stats VALUES ('total','members',0);
INSERT INTO cdb_stats VALUES ('total','guests',0);
INSERT INTO cdb_stats VALUES ('os','Windows',0);
INSERT INTO cdb_stats VALUES ('os','Mac',0);
INSERT INTO cdb_stats VALUES ('os','Linux',0);
INSERT INTO cdb_stats VALUES ('os','FreeBSD',0);
INSERT INTO cdb_stats VALUES ('os','SunOS',0);
INSERT INTO cdb_stats VALUES ('os','BeOS',0);
INSERT INTO cdb_stats VALUES ('os','OS/2',0);
INSERT INTO cdb_stats VALUES ('os','AIX',0);
INSERT INTO cdb_stats VALUES ('os','Other',0);
INSERT INTO cdb_stats VALUES ('browser','MSIE',0);
INSERT INTO cdb_stats VALUES ('browser','Netscape',0);
INSERT INTO cdb_stats VALUES ('browser','Mozilla',0);
INSERT INTO cdb_stats VALUES ('browser','Lynx',0);
INSERT INTO cdb_stats VALUES ('browser','Opera',0);
INSERT INTO cdb_stats VALUES ('browser','Konqueror',0);
INSERT INTO cdb_stats VALUES ('browser','Other',0);
INSERT INTO cdb_stats VALUES ('week','0',0);
INSERT INTO cdb_stats VALUES ('week','1',0);
INSERT INTO cdb_stats VALUES ('week','2',0);
INSERT INTO cdb_stats VALUES ('week','3',0);
INSERT INTO cdb_stats VALUES ('week','4',0);
INSERT INTO cdb_stats VALUES ('week','5',0);
INSERT INTO cdb_stats VALUES ('week','6',0);
INSERT INTO cdb_stats VALUES ('hour','00',0);
INSERT INTO cdb_stats VALUES ('hour','01',0);
INSERT INTO cdb_stats VALUES ('hour','02',0);
INSERT INTO cdb_stats VALUES ('hour','03',0);
INSERT INTO cdb_stats VALUES ('hour','04',0);
INSERT INTO cdb_stats VALUES ('hour','05',0);
INSERT INTO cdb_stats VALUES ('hour','06',0);
INSERT INTO cdb_stats VALUES ('hour','07',0);
INSERT INTO cdb_stats VALUES ('hour','08',0);
INSERT INTO cdb_stats VALUES ('hour','09',0);
INSERT INTO cdb_stats VALUES ('hour','10',0);
INSERT INTO cdb_stats VALUES ('hour','11',0);
INSERT INTO cdb_stats VALUES ('hour','12',0);
INSERT INTO cdb_stats VALUES ('hour','13',0);
INSERT INTO cdb_stats VALUES ('hour','14',0);
INSERT INTO cdb_stats VALUES ('hour','15',0);
INSERT INTO cdb_stats VALUES ('hour','16',0);
INSERT INTO cdb_stats VALUES ('hour','17',0);
INSERT INTO cdb_stats VALUES ('hour','18',0);
INSERT INTO cdb_stats VALUES ('hour','19',0);
INSERT INTO cdb_stats VALUES ('hour','20',0);
INSERT INTO cdb_stats VALUES ('hour','21',0);
INSERT INTO cdb_stats VALUES ('hour','22',0);
INSERT INTO cdb_stats VALUES ('hour','23',0);

--
-- Table structure for table `cdb_styles`
--

CREATE TABLE cdb_styles (
  styleid smallint(6) unsigned NOT NULL auto_increment,
  name varchar(20) NOT NULL default '',
  available tinyint(1) NOT NULL default '1',
  templateid smallint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (styleid),
  KEY themename (name)
) TYPE=MyISAM;

--
-- Dumping data for table `cdb_styles`
--

INSERT INTO cdb_styles VALUES (1,'Default Style',1,1);

--
-- Table structure for table `cdb_stylevars`
--

CREATE TABLE cdb_stylevars (
  stylevarid smallint(6) unsigned NOT NULL auto_increment,
  styleid smallint(6) unsigned NOT NULL default '0',
  variable text NOT NULL,
  substitute text NOT NULL,
  PRIMARY KEY  (stylevarid),
  KEY styleid (styleid)
) TYPE=MyISAM;

--
-- Dumping data for table `cdb_stylevars`
--

INSERT INTO cdb_stylevars VALUES (1,1,'bgcolor','bg.gif');
INSERT INTO cdb_stylevars VALUES (2,1,'altbg1','#F8F8F8');
INSERT INTO cdb_stylevars VALUES (3,1,'altbg2','#FFFFFF');
INSERT INTO cdb_stylevars VALUES (4,1,'link','#003366');
INSERT INTO cdb_stylevars VALUES (5,1,'bordercolor','#000000');
INSERT INTO cdb_stylevars VALUES (6,1,'headercolor','headerbg.gif');
INSERT INTO cdb_stylevars VALUES (7,1,'headertext','#FFFFFF');
INSERT INTO cdb_stylevars VALUES (8,1,'catcolor','catbg.gif');
INSERT INTO cdb_stylevars VALUES (9,1,'tabletext','#000000');
INSERT INTO cdb_stylevars VALUES (10,1,'text','#000000');
INSERT INTO cdb_stylevars VALUES (11,1,'borderwidth','1');
INSERT INTO cdb_stylevars VALUES (12,1,'tablewidth','98%');
INSERT INTO cdb_stylevars VALUES (13,1,'tablespace','4');
INSERT INTO cdb_stylevars VALUES (14,1,'font','Tahoma, Verdana');
INSERT INTO cdb_stylevars VALUES (15,1,'fontsize','12px');
INSERT INTO cdb_stylevars VALUES (16,1,'nobold','0');
INSERT INTO cdb_stylevars VALUES (17,1,'boardimg','logo.gif');
INSERT INTO cdb_stylevars VALUES (18,1,'imgdir','images/default');
INSERT INTO cdb_stylevars VALUES (19,1,'smdir','images/smilies');
INSERT INTO cdb_stylevars VALUES (20,1,'cattext','#000000');
INSERT INTO cdb_stylevars VALUES (21,1,'smfontsize','11px');
INSERT INTO cdb_stylevars VALUES (22,1,'smfont','Arial');

--
-- Table structure for table `cdb_subscriptions`
--

CREATE TABLE cdb_subscriptions (
  username varchar(15) NOT NULL default '',
  email varchar(60) NOT NULL default '',
  tid mediumint(8) unsigned NOT NULL default '0',
  lastnotify int(10) unsigned NOT NULL default '0',
  KEY username (username),
  KEY tid (tid)
) TYPE=MyISAM;

--
-- Dumping data for table `cdb_subscriptions`
--


--
-- Table structure for table `cdb_templates`
--

CREATE TABLE cdb_templates (
  templateid smallint(6) unsigned NOT NULL auto_increment,
  name varchar(30) NOT NULL default '',
  charset varchar(30) NOT NULL default '',
  directory varchar(100) NOT NULL default '',
  copyright varchar(100) NOT NULL default '',
  PRIMARY KEY  (templateid)
) TYPE=MyISAM;

--
-- Dumping data for table `cdb_templates`
--

INSERT INTO cdb_templates VALUES (1,'Default','gb2312','./templates/default','Designed by Laogui(lgvbb.126.com)');

--
-- Table structure for table `cdb_threads`
--

CREATE TABLE cdb_threads (
  tid mediumint(8) unsigned NOT NULL auto_increment,
  fid smallint(6) NOT NULL default '0',
  creditsrequire smallint(6) unsigned NOT NULL default '0',
  icon varchar(30) NOT NULL default '',
  author varchar(15) NOT NULL default '',
  subject varchar(100) NOT NULL default '',
  dateline int(10) unsigned NOT NULL default '0',
  lastpost int(10) unsigned NOT NULL default '0',
  lastposter varchar(15) NOT NULL default '',
  views smallint(6) unsigned NOT NULL default '0',
  replies smallint(6) unsigned NOT NULL default '0',
  topped tinyint(1) NOT NULL default '0',
  digest tinyint(1) NOT NULL default '0',
  closed varchar(15) NOT NULL default '',
  pollopts text NOT NULL,
  attachment varchar(50) NOT NULL default '',
  PRIMARY KEY  (tid),
  KEY lastpost (topped,lastpost,fid)
) TYPE=MyISAM;

--
-- Dumping data for table `cdb_threads`
--

INSERT INTO cdb_threads VALUES (2,15,0,'0','admin','我的工作',1310650528,1310717352,'admin',11,0,0,0,'','','');
INSERT INTO cdb_threads VALUES (3,15,0,'0','admin','公告',1310650581,1310717343,'admin',5,0,0,0,'','','');
INSERT INTO cdb_threads VALUES (4,15,0,'0','admin','新闻',1310650749,1310717334,'admin',5,0,0,0,'','','');
INSERT INTO cdb_threads VALUES (5,15,0,'0','admin','人事考勤',1310650782,1310717324,'admin',4,0,0,0,'','','');
INSERT INTO cdb_threads VALUES (6,15,0,'0','admin','财务报销',1310650813,1310717313,'admin',3,0,0,0,'','','');
INSERT INTO cdb_threads VALUES (7,15,0,'0','admin','会议管理',1310650836,1310717304,'admin',4,0,0,0,'','','');
INSERT INTO cdb_threads VALUES (8,15,0,'0','admin','车辆管理',1310650896,1310717289,'admin',4,0,0,0,'','','');
INSERT INTO cdb_threads VALUES (9,15,0,'0','admin','部门文件柜',1310650926,1310717258,'admin',2,0,0,0,'','','');
INSERT INTO cdb_threads VALUES (10,15,0,'0','admin','部门空间',1310650948,1310717223,'admin',4,0,0,0,'','','');
INSERT INTO cdb_threads VALUES (11,15,0,'0','admin','服务申请',1310650969,1310717205,'admin',3,0,0,0,'','','');
INSERT INTO cdb_threads VALUES (12,15,0,'0','admin','项目空间',1310651007,1310651007,'admin',5,0,0,0,'','','');
INSERT INTO cdb_threads VALUES (15,16,0,'0','admin','绩效考核',1310719338,1310719338,'admin',1,0,0,0,'','','');
INSERT INTO cdb_threads VALUES (14,16,0,'0','admin','ISO管理',1310718245,1310718245,'admin',1,0,0,0,'','','');

--
-- Table structure for table `cdb_usergroups`
--

CREATE TABLE cdb_usergroups (
  groupid smallint(6) unsigned NOT NULL auto_increment,
  specifiedusers text NOT NULL,
  status enum('Guest','Member','Admin','SuperMod','Moderator','Banned','IPBanned','PostBanned','Inactive') NOT NULL default 'Member',
  grouptitle varchar(30) NOT NULL default '',
  creditshigher int(10) NOT NULL default '0',
  creditslower int(10) NOT NULL default '0',
  stars tinyint(3) NOT NULL default '0',
  groupavatar varchar(60) NOT NULL default '',
  allowcstatus tinyint(1) NOT NULL default '0',
  allowavatar tinyint(1) NOT NULL default '0',
  allowvisit tinyint(1) NOT NULL default '0',
  allowview tinyint(1) NOT NULL default '0',
  allowpost tinyint(1) NOT NULL default '0',
  allowpostpoll tinyint(1) NOT NULL default '0',
  allowgetattach tinyint(1) NOT NULL default '0',
  allowpostattach tinyint(1) NOT NULL default '0',
  allowvote tinyint(1) NOT NULL default '0',
  allowsearch tinyint(1) NOT NULL default '0',
  allowkarma tinyint(1) NOT NULL default '0',
  allowsetviewperm tinyint(1) NOT NULL default '0',
  allowsetattachperm tinyint(1) NOT NULL default '0',
  allowsigbbcode tinyint(1) NOT NULL default '0',
  allowsigimgcode tinyint(1) NOT NULL default '0',
  allowviewstats tinyint(1) NOT NULL default '0',
  ismoderator tinyint(1) NOT NULL default '0',
  issupermod tinyint(1) NOT NULL default '0',
  isadmin tinyint(1) NOT NULL default '0',
  maxpmnum smallint(6) unsigned NOT NULL default '0',
  maxmemonum smallint(6) unsigned NOT NULL default '0',
  maxsigsize smallint(6) unsigned NOT NULL default '0',
  maxkarmarate tinyint(3) unsigned NOT NULL default '0',
  maxrateperday smallint(6) unsigned NOT NULL default '0',
  maxattachsize int(10) unsigned NOT NULL default '0',
  attachextensions tinytext NOT NULL,
  PRIMARY KEY  (groupid),
  KEY status (status),
  KEY creditshigher (creditshigher),
  KEY creditslower (creditslower)
) TYPE=MyISAM;

--
-- Dumping data for table `cdb_usergroups`
--

INSERT INTO cdb_usergroups VALUES (1,'','Guest','Guest',0,0,0,'',0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,'');
INSERT INTO cdb_usergroups VALUES (2,'','IPBanned','IP Banned',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT INTO cdb_usergroups VALUES (3,'','Banned','Banned',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT INTO cdb_usergroups VALUES (4,'','PostBanned','Banned to Post',0,0,0,'',0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT INTO cdb_usergroups VALUES (5,'','Inactive','Inactive Member',0,0,0,'',0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,50,0,0,0,'');
INSERT INTO cdb_usergroups VALUES (6,'','Moderator','Moderator',0,0,7,'',1,2,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,0,0,80,0,200,10,30,2048000,'');
INSERT INTO cdb_usergroups VALUES (7,'','SuperMod','Super Moderator',0,0,8,'',1,2,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,0,120,0,300,15,50,2048000,'');
INSERT INTO cdb_usergroups VALUES (8,'','Admin','Administrator',0,0,9,'',1,2,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,200,0,500,30,500,2048000,'');
INSERT INTO cdb_usergroups VALUES (9,'','Member','King',1000,3000,6,'',1,2,1,1,1,1,1,1,1,2,1,1,1,1,1,1,0,0,0,80,0,300,15,40,1024000,'');
INSERT INTO cdb_usergroups VALUES (10,'','Member','Forum Legend',3000,9999999,8,'',1,2,1,1,1,1,1,1,1,2,1,1,1,1,1,1,0,0,0,100,0,500,20,50,2048000,'');
INSERT INTO cdb_usergroups VALUES (11,'','Member','Lord',500,1000,4,'',1,2,1,1,1,1,1,1,1,2,1,0,0,1,0,1,0,0,0,60,0,200,10,30,512000,'zip,rar,chm,txt,gif,jpg,png');
INSERT INTO cdb_usergroups VALUES (12,'','Member','Beggar',-9999999,0,0,'',0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT INTO cdb_usergroups VALUES (13,'','Member','Conqueror',200,500,3,'',0,2,1,1,1,1,1,0,1,2,0,0,0,1,0,1,0,0,0,50,0,150,6,15,256000,'gif,jpg,png');
INSERT INTO cdb_usergroups VALUES (14,'','Member','Member',50,200,2,'',0,1,1,1,1,1,1,0,1,1,0,0,0,1,0,1,0,0,0,30,0,100,4,10,0,'');
INSERT INTO cdb_usergroups VALUES (15,'','Member','Newbie',0,50,1,'',0,0,1,1,1,0,1,0,0,1,0,0,0,1,0,0,0,0,0,20,0,80,0,0,0,'');

--
-- Table structure for table `cdb_words`
--

CREATE TABLE cdb_words (
  id smallint(6) unsigned NOT NULL auto_increment,
  find varchar(60) NOT NULL default '',
  replacement varchar(60) NOT NULL default '',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `cdb_words`
--


