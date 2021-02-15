module IsGanjil where
    --Menentukan apakah ganjil isGanjil(n)
    --Definisi dan Spesifikasi
    --isGanjil :: Int -> Boolean
    {-isGanjil akan menentukan apakah input integer angka ganjil atau tidak, Ia diberi input integer dan memberi output boolean.
    Menentukan dengan modulo 2, jika sisa 1 = ganjil, jika diakhir sisa 0 brati genap.-}
    isGanjil :: Int  -> Bool
    isGanjil n
      | n>1 = isGanjil(n-2)
      | n==1 = True
      | otherwise = False