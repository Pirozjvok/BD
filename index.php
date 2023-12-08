<html>
 <head>
 <title>Вывод на экран и переменные в PHP</title>
 </head>
 <body>
    <?php 
        $A = 2;
        $B = 10;
        $SUM = 0;
        foreach (range($A, $B) as $i) {
            $SUM += $i;
        }
        echo "<br>" + $SUM;
    ?>
 </body>
</html>
