<html>
<head>
 <title>АПТЕКА – Результаты заказа</title>
</head>
<body>
<h1>АПТЕКА</h1>
<h2> РЕЗУЛЬТАТЫ ЗАКАЗА </h2>
<?
 $para=$_REQUEST[para];
 $asp =$_REQUEST[asp];
 $mig =$_REQUEST[mig];
 $city =$_REQUEST[city];
 $address = $_REQUEST[city] . ", " . $_REQUEST[addres];
 $dist_arr = array(
    "Уфа" => 0,
    "Стерлитамак" => 128,
    "Салават" => 162,
    "Ташкиново" => 206,
    "Нефтекамск" => 216,
 );
 $dist = $dist_arr[$city];

 echo "<p>Заказ обработан ";
 echo date("H:i, jS F");
 echo "<br>";
 echo "<p>Ваш заказ составил:";
 echo "<br>";
 echo $para."шт. Парацетамол<br>";
 echo $asp."шт. Аспирин<br>";
 echo $mig."шт. Миг<br>";
 $totalqty = 0;
 $totalamount = 0.00;
 define("zena1", 60);
 define("zena2", 40);
 define("zena3", 200);
 $totalqty = $para + $asp + $mig;
 $totalamount = $para * zena1 + $asp * zena2 + $mig * zena3;
 $totalamount = number_format($totalamount, 2);
 echo "<br>\n";
 echo "Всего заказано: ".$totalqty."<br>\n";
 echo "На сумму: ".$totalamount."<br>\n";
 $taxrate = 0.10; // Налог с продаж 10%

 $delivery = floor($dist / 50) * 100;

 $skidka = 0;
 if ($totalamount >= 20){
    $skidka = $totalamount * 0.05;
 }

 $totalamount = $totalamount * (1 + $taxrate);

 echo " С налогом с продаж: ". number_format($totalamount, 2)."<br>\n";

 $totalamount = $totalamount - $skidka + $delivery;

 echo "Скидка: ".number_format($skidka, 2)."<br>\n";
 echo "<p>Адрес доставки ".$address."<br>\n";
 echo " Доставка: ".$delivery."<br>\n";
 echo "Итог: ".number_format($totalamount, 2)."<br>\n";

 switch($_REQUEST[find]) {
    case "a" :
    echo "<P>Регулярный покупатель.";
    break;
    case "b" :
    echo "<P>Покупатель нашел по яндекс картаим или 2ГИС";
    break;
    case "c" :
    echo "<P> Покупатель нашел нас по рекламе из интернета.";
    break;
    case "d" :
    echo "<P>Покупатель узнал о нас от знакомых.";
    break;
    default :
    echo "<P>Мы не знаем как нашел нас покупатель.";
    break; }
?>
</body>
</html>