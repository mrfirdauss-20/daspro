module ValidTime where
    validTime :: (Ord a1, Ord a2, Ord a3, Num a1, Num a2, Num a3) => a1 -> a2 -> a3 -> Bool
    validTime j m d = j<=23 && j>=0 && m<=59 && m>=0 && d<=59 && d>=0
