<html>
<head>
 <title>������ � ���������� ������</title>
</head>
<body>
<h1>������</h1>
<h2> ���������� ������ </h2>
<?
 $para=$_REQUEST[para];
 $asp =$_REQUEST[asp];
 $mig =$_REQUEST[mig];
 $city =$_REQUEST[city];
 $address = $_REQUEST[city] . ", " . $_REQUEST[addres];
 $dist_arr = array(
    "���" => 0,
    "�����������" => 128,
    "�������" => 162,
    "���������" => 206,
    "����������" => 216,
 );
 $dist = $dist_arr[$city];

 echo "<p>����� ��������� ";
 echo date("H:i, jS F");
 echo "<br>";
 echo "<p>��� ����� ��������:";
 echo "<br>";
 echo $para."��. �����������<br>";
 echo $asp."��. �������<br>";
 echo $mig."��. ���<br>";
 $totalqty = 0;
 $totalamount = 0.00;
 define("zena1", 60);
 define("zena2", 40);
 define("zena3", 200);
 $totalqty = $para + $asp + $mig;
 $totalamount = $para * zena1 + $asp * zena2 + $mig * zena3;
 $totalamount = number_format($totalamount, 2);
 echo "<br>\n";
 echo "����� ��������: ".$totalqty."<br>\n";
 echo "�� �����: ".$totalamount."<br>\n";
 $taxrate = 0.10; // ����� � ������ 10%

 $delivery = floor($dist / 50) * 100;

 $skidka = 0;
 if ($totalamount >= 20){
    $skidka = $totalamount * 0.05;
 }

 $totalamount = $totalamount * (1 + $taxrate);

 echo " � ������� � ������: ". number_format($totalamount, 2)."<br>\n";

 $totalamount = $totalamount - $skidka + $delivery;

 echo "������: ".number_format($skidka, 2)."<br>\n";
 echo "<p>����� �������� ".$address."<br>\n";
 echo " ��������: ".$delivery."<br>\n";
 echo "����: ".number_format($totalamount, 2)."<br>\n";

 switch($_REQUEST[find]) {
    case "a" :
    echo "<P>���������� ����������.";
    break;
    case "b" :
    echo "<P>���������� ����� �� ������ ������� ��� 2���";
    break;
    case "c" :
    echo "<P> ���������� ����� ��� �� ������� �� ���������.";
    break;
    case "d" :
    echo "<P>���������� ����� � ��� �� ��������.";
    break;
    default :
    echo "<P>�� �� ����� ��� ����� ��� ����������.";
    break; }
?>
</body>
</html>