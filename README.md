# RegularExpressionDemo
正则表达式匹配Demo

Swift - 正则表达式的使用（附用户名、邮箱、URL等常用格式验证）

原文出自：www.hangge.com  转载请保留原文链接：http://www.hangge.com/blog/cache/detail_799.html

Swift虽然是一个新出的语言，但却不提供专门的处理正则的语法和类。所以我们只能使用古老的NSRegularExpression类进行正则匹配。
即先接受一个正则表达式的字符串，由此生成NSRegularExpression对象，再用该对象来匹配输入字符串，返回匹配结果。

