## DynamoDB

#### 一、AWS Console or AWS CLI

确保所有操作都在Singapore region 完成, 对自己创建的资源添加后缀_NAME

1. 创建Table: Project_NAME, 分区键为projectName,排序键为projectType。
2. 更新Table: 更新上表,添加Attributes: memberName, startDate。
3. 写入数据: 插入5-10条数据,包含DynamoDB所有数据类型。
4. 更新数据: 尝试更新已存在的数据。
5. 读取数据: 根据主键读取数据。
6. 查询数据: 根据分区键和排序键查询数据, 尝试通过memberName查询数据。
7. 扫描数据: 全表扫描并按一定规则过滤数据(比如memberName)。
8. 创建GSI: 对memberName创建全局二级索引。
9. 查询GSI: 根据memberName查询数据。
10. 删除表: 不要着急删除表,在后续所有DynamoDB相关内容完成后删除表。



#### 二、Questions

1. 以下哪种是NoSql数据库?

   1. 图数据库
   2. 键-值存储库
   3. 列式数据库
   4. 文档数据库

2. 下面哪些场景SQL不能发挥作用?

   1. 数据量非常大,无法把它存在同一个地方
   2. 数据不是结构化的
   3. 数据不是结构化的

3. DynamoDB有哪两种类型的主键?
4. 主键不支持的数据类型?

   1. string
   2. number
   3. binary
   4. array

5. DynamoDB支持哪两种类型的索引,这两种索引的区别是什么?



#### 三、Coding

自行选择开发语言和工具包

1. 创建项目,编写代码对之前创建的表Project_NAME, 进行CRUD操作。
2. 需要本地测试环境。
3. 对CRUD添加事务。



#### 四、(备份和还原)AWS Console or AWS CLI

确保备份操作在Singapore region, 对自己创建的资源添加后缀_NAME

1. 创建备份: 对Project_NAME表创建备份。

2. 从备份还原: 使用备份将表还原到Singapore region,检查表信息和数据。

3. 启用时间点恢复: 对Project_NAME, 表启用时间点恢复。

4. 时间点恢复: 选择时间点,将表恢复到特定时间点。



