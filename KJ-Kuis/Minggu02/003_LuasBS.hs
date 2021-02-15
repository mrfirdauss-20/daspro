module LuasBS where
    --Menentukan kuas bujur sangkar luasBS(n,n)
    --Definisi dan Spesifikasi
    --Luas bujur sangkar merupakan nilai kuadrat. perkalian suatu nilai dengan nilai lain. Untuk memudahkan panggil fungsi lain untuk mentotalkan luas
    -- untuk menghitungnya gunakan deret kuadrat melalui Un
    luasBS :: Int -> Int
    --realisasi
    luasBS a
        | a==1 = a 
        | otherwise = 2*a-1 +hitungL (a-1)