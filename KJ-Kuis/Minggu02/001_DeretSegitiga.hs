module DeretSegitiga where
    --Deret Segitiga  deretSegi3(int)
    --Definisi dan Spesifikasi
    deretSegi3 :: Int -> Int
    --deretSegitiga(n): diberi input berupa n, di mana akan memberi ouput nilai suku ke-n pada deret segitiga dalam integer.
    
    --realisasi
    deretSegi3 n
        | n==1 = 1
        | otherwise = n + deretSegi3 (n-1)