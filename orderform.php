<html>
<head>
 <title>АПТЕКА</title>
</head>
<body>
<h1>АПТЕКА</h1>
<h2>Форма заказа</h2>
<form action="processorder.php" method=post>
<table border=0>
<tr bgcolor=#cccccc>
 <td width=150>Название</td>
 <td width=15>Количество</td>
</tr>
<tr>
 <td>Парацетамол</td>
 <td align=center><input type="text" name="para" size=3
maxlength=3></td>
</tr>
<tr>
 <td>Аспирин</td>
 <td align=center><input type="text" name="asp" size=3
maxlength=3></td>
</tr>
<tr>
 <td>Миг</td>
 <td align=center><input type="text" name="mig" size=3
maxlength=3></td>
</tr>
<tr>
 <td colspan=2 align=center><input type=submit value="Отправить
заказ"></td>
</tr>
</table>
<p>Как вы нас нашли
<select name="find">
 <option value = "a">Я регулярный покупатель
 <option value = "b">По яндекс картам / 2ГИС
 <option value = "c">По рекламе из интернета
 <option value = "d">Знакомые рассказали
 </select>
 <p>Город
 <input type="text" name="city">
 <p>Улица, дом, подъезд, квартира
 <input type="text" name="addres">
 <table border = 0 cellpadding = 3>
<tr>
<td bgcolor = "#CCCCCC" align = center>Расстояние</td>
 <td bgcolor = "#CCCCCC" align = center>Стоимость</td>
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