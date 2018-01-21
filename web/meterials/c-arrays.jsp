<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.io.*, java.util.*" import="com.DBQuery.DataProcess" import="java.sql.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../highlight/styles/default.css" rel="stylesheet">   
<title>C 语言教程 | C Help</title>
</head>
<body>
<script src="../highlight/highlight.pack.js"></script>  
<script >hljs.initHighlightingOnLoad();</script>

	  
<h1>C 数组</h1>
<div>
  <p>C 语言支持<strong>数组</strong>数据结构，它可以存储一个固定大小的相同类型元素的顺序集合。数组是用来存储一系列数据，但它往往被认为是一系列相同类型的变量。</p>
  <p>数组的声明并不是声明一个个单独的变量，比如 number0、number1、...、number99，而是声明一个数组变量，比如 numbers，然后使用 numbers[0]、numbers[1]、...、numbers[99] 来代表一个个单独的变量。数组中的特定元素可以通过索引访问。</p>
  <p>所有的数组都是由连续的内存位置组成。最低的地址对应第一个元素，最高的地址对应最后一个元素。</p>
  <img src="http://www.runoob.com/wp-content/uploads/2014/08/arrays.jpg" alt="C 中的数组" /></div>
  <hr>
<h2>声明数组</h2>
<p>在 C 中要声明一个数组，需要指定元素的类型和元素的数量，如下所示：</p>
<pre><code class="c">type arrayName [ arraySize ];</code></pre>
<p>这叫做一维数组。<strong>arraySize</strong> 必须是一个大于零的整数常量，<strong>type</strong> 可以是任意有效的 C 数据类型。例如，要声明一个类型为 double 的包含 10 个元素的数组 <strong>balance</strong>，声明语句如下：</p>
<pre><code class="c">double balance[10];</code></pre>
<p>现在 <em>balance</em> 是一个可用的数组，可以容纳 10 个类型为 double 的数字。</p>
<hr>
<h2>初始化数组</h2>
<p>在 C 中，您可以逐个初始化数组，也可以使用一个初始化语句，如下所示：</p>
<pre><code class="c">double balance[5] = {1000.0, 2.0, 3.4, 7.0, 50.0};</code></pre>
<p>大括号 { } 之间的值的数目不能大于我们在数组声明时在方括号 [ ] 中指定的元素数目。</p>
<p>如果您省略掉了数组的大小，数组的大小则为初始化时元素的个数。因此，如果：</p>
<pre><code class="c">double balance[] = {1000.0, 2.0, 3.4, 7.0, 50.0};</code></pre>
<p>您将创建一个数组，它与前一个实例中所创建的数组是完全相同的。下面是一个为数组中某个元素赋值的实例：</p>
<pre><code class="c">balance[4] = 50.0;</code></pre>
<p>上述的语句把数组中第五个元素的值赋为 50.0。所有的数组都是以 0 作为它们第一个元素的索引，也被称为基索引，数组的最后一个索引是数组的总大小减去 1。以下是上面所讨论的数组的的图形表示：</p>
<img src="http://www.runoob.com/wp-content/uploads/2014/08/array_presentation.jpg" alt="数组表示" />
<hr>
<h2>访问数组元素</h2>
<p>数组元素可以通过数组名称加索引进行访问。元素的索引是放在方括号内，跟在数组名称的后边。例如：</p>
<pre><code class="c">double salary = balance[9];</code></pre>
<p>上面的语句将把数组中第 10 个元素的值赋给 salary 变量。下面的实例使用了上述的三个概念，即，声明数组、数组赋值、访问数组：</p>
<div>
  <h2>实例</h2>
  <div>
    <div><pre><code class="c">#include &lt;stdio.h&gt;      

int main ()  
{     
    int n[ 10 ]; /* n 是一个包含 10 个整数的数组 */     
    int i,j;        /* 初始化数组元素 */              
    for ( i = 0; i &lt; 10; i++ )     
    {        
        n[ i ] = i + 100; /* 设置元素 i 为 i + 100 */     
    }          
    /* 输出数组中每个元素的值 */     
    for (j = 0; j &lt; 10; j++ )     
    {        
        printf(&quot;Element[%d] = %d\n&quot;, j, n[j] );     
    }        
    return 0;  
}</code></pre></div>
  </div>
</div>
<p>当上面的代码被编译和执行时，它会产生下列结果：</p>
<pre>Element[0] = 100  
Element[1] = 101  
Element[2] = 102  
Element[3] = 103  
Element[4] = 104  
Element[5] = 105  
Element[6] = 106  
Element[7] = 107  
Element[8] = 108  
Element[9] = 109</pre>
<hr>
<h2>C 中数组详解</h2>
<p>在 C 中，数组是非常重要的，我们需要了解更多有关数组的细节。下面列出了 C 程序员必须清楚的一些与数组相关的重要概念：</p>
<table border=1>
  <tbody>
    <tr>
      <th>概念</th>
      <th>描述</th>
    </tr>
    <tr>
      <td><a href="http://www.runoob.com/cprogramming/c-multi-dimensional-arrays.html" title="C 中的多维数组">多维数组</a></td>
      <td>C 支持多维数组。多维数组最简单的形式是二维数组。</td>
    </tr>
    <tr>
      <td><a href="http://www.runoob.com/cprogramming/c-passing-arrays-to-functions.html" title="C 中传递数组给函数作为参数">传递数组给函数</a></td>
      <td>您可以通过指定不带索引的数组名称来给函数传递一个指向数组的指针。</td>
    </tr>
    <tr>
      <td><a href="http://www.runoob.com/cprogramming/c-return-arrays-from-function.html" title="C 中从函数返回数组">从函数返回数组</a></td>
      <td>C 允许从函数返回数组。</td>
    </tr>
    <tr>
      <td><a href="http://www.runoob.com/cprogramming/c-pointer-to-an-array.html" title="C 中指向数组的指针">指向数组的指针</a></td>
      <td>您可以通过指定不带索引的数组名称来生成一个指向数组中第一个元素的指针。</td>
    </tr>
  </tbody>
</table>	  
	  
	  
	  

</body>
</html>