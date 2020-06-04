1. 以下哪种是NoSql数据库?  --- 1,2,3,4

   1. 图数据库
   2. 键-值存储库
   3. 列式数据库
   4. 文档数据库

2. 下面哪些场景SQL不能发挥作用?  --- 1,2,3

   1. 数据量非常大,无法把它存在同一个地方
   2. 数据不是结构化的
   3. 数据不是结构化的

3. DynamoDB有哪两种类型的主键?
	* 分区键/Partition Key/Hash Key
	* 排序键/Sort Key/Range Key

4. 主键不支持的数据类型?  --- 4

   1. string
   2. number
   3. binary
   4. array

5. DynamoDB支持哪两种类型的索引,这两种索引的区别是什么?
	* Global secondary index - An index with a partition key and sort key that can be different from those on the table.
	* Local secondary index - An index that has the same partition key as the table, but a different sort key.