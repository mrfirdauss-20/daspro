module SumRange where
    --Menjumlahkan bilangan dengan rentang a -> b sumRange(a,b)
    --Deklarasi dan Spek
    sumRange :: Int -> Int -> Int
    --sumRange merupakan fungsi dengan input sebiuah rentang positif dengan b>a dimana akan menghasilkan nilai penjumlahan integer dari a->b dengan output sigmanya
    --Realisasi
    sumRange a b
        | a==b = b
        | otherwise = a + sumRange (a+1) b
    