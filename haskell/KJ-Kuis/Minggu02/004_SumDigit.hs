module SumDigit where
    --Menentukan jumlah dari digit sumOfDigits(int)

    --Definisi dan spesifikasi
    sumOfDigits :: Int -> Int
    -- fungsi ini akan mengecek apa bentuk nilai tsb, jika negatif akan dikali -1 jika posistif akan langsung diproses. dengan fungsi sumDig
    sumOfDigitsPosNeg :: Int -> Int
    --sumOfDigitsPosNeg sebenarnya adalah fungsi mubazir untuk memenuhi syarat soal, dia mengkalikan nila input degan -1 dan memberi output int
    sumDig :: Int -> Int 
    -- sumDig merupakan sebuah fungsi dengan input nilai yang diitung dan sebuah guardian nilai berupa int dan memberi output int.
    modulo10 :: Int -> Int
    -- fungsi untuki menghitung satuan dari sebuah input int dengan output int
    dibagi10 :: Int -> Int
    -- fungsi untuk menghilangkan satuan, dengan membaginya dengan 10 untuk dibulatkan kebawah, caranya kurangi dengan 10, sampek input <10 jika sudah hitung lengkahnya
    
    sumOfDigits n
        | n==0 = 0
        | n>0 = sumDig n
        | otherwise = sumOfDigitsPosNeg n

    sumOfDigitsPosNeg n = sumDig (-n)

    sumDig a
        | a>9 = modulo10 a + sumDig (dibagi10 a)
        | otherwise = a

    
    modulo10 a
        | a>9 = modulo10 (a-10)
        | otherwise = a

    dibagi10 a
        | a>9 = 1 + dibagi10 (a-10)
        | otherwise = 0