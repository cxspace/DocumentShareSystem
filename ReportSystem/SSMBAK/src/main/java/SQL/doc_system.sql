
CREATE TABLE t_teacher(

  id INT NOT NULL AUTO_INCREMENT,

  name VARCHAR(50) DEFAULT NULL COMMENT '教师姓名',

  password VARCHAR(80) DEFAULT NULL COMMENT '密码',

  email VARCHAR(36) DEFAULT NULL COMMENT '邮箱',

  PRIMARY KEY (id)

)DEFAULT CHARSET = utf8;

INSERT INTO t_teacher (name,password,email) VALUES ('zichengxu','work@good608','zichengxu@outlook.com');

CREATE TABLE t_document(

  id INT NOT NULL AUTO_INCREMENT,

  title VARCHAR(300) DEFAULT NULL COMMENT '文章标题',

  content LONGTEXT COMMENT '文章内容',

  create_time VARCHAR(60) COMMENT '创建时间',

  stu_name VARCHAR(100) COMMENT '学生姓名',

  stu_id VARCHAR(100) COMMENT '学生学号',

  PRIMARY KEY (id)

)DEFAULT CHARSET = utf8;

CREATE TABLE t_comment(

  id INT NOT NULL AUTO_INCREMENT,

  doc_id INT COMMENT '文档id',

  content LONGTEXT COMMENT '文档内容',

  username VARCHAR(100) COMMENT '老师姓名',

  create_time VARCHAR(60) COMMENT '创建时间',

  PRIMARY KEY (id)

)DEFAULT CHARSET = utf8;