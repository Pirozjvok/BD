<html>
<head>
 <title>������</title>
</head>
<body>
<h1>������</h1>
<h2>����� ������</h2>
<form action="processorder.php" method=post>
<table border=0>
<tr bgcolor=#cccccc>
 <td width=150>��������</td>
 <td width=15>����������</td>
</tr>
<tr>
 <td>�����������</td>
 <td align=center><input type="text" name="para" size=3
maxlength=3></td>
</tr>
<tr>
 <td>�������</td>
 <td align=center><input type="text" name="asp" size=3
maxlength=3></td>
</tr>
<tr>
 <td>���</td>
 <td align=center><input type="text" name="mig" size=3
maxlength=3></td>
</tr>
<tr>
 <td colspan=2 align=center><input type=submit value="���������
�����"></td>
</tr>
</table>
<p>��� �� ��� �����
<select name="find">
 <option value = "a">� ���������� ����������
 <option value = "b">�� ������ ������ / 2���
 <option value = "c">�� ������� �� ���������
 <option value = "d">�������� ����������
 </select>
 <p>�����
 <input type="text" name="city">
 <p>�����, ���, �������, ��������
 <input type="text" name="addres">
 <table border = 0 cellpadding = 3>
<tr>
<td bgcolor = "#CCCCCC" align = center>����������</td>
 <td bgcolor = "#CCCCCC" align = center>���������</td>
</tr>
<?
$distance = 50;
while ($distance <= 250 ) {
 echo "<tr>\n <td align = right>$distance</td>\n";
 echo " <td align = right>". $distance / 10 ."</td>\n</tr>\n";
 $distance += 50;
}
?>
</table>
</form>
</body>
</html>