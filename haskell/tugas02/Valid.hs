module Valid where 
    isValidY :: (Ord a, Num a) => a -> Bool
    isValidY y = y<=99&&y>=0

    isKabisat :: Integral a => a -> Bool
    isKabisat y = (y `mod` 4==0)

    isValidM :: (Ord a, Num a) => a -> Bool
    isValidM m = m<=12 && m>=1

    kabisatY :: (Integral a1, Num a2, Num a3, Ord a3, Eq a2) => a1 -> a2 -> a3 -> Bool
    kabisatY y m d = m ==2 && d<=29 && isKabisat y

    gakKabisat :: (Ord a1, Num a2, Num a1, Eq a2) => a2 -> a1 -> Bool
    gakKabisat m d 
        | m==2 && d<=28 = True 
        | (m==1 ||m==3 ||m==5 ||m==7 ||m==8 ||m==10 ||m==12 )&& d<=31 = True 
        | m/=2 && d<=30 =True 
        | otherwise = False 

    isValidD :: (Integral a1, Num a2, Num a3, Ord a3, Ord a2) => a3 -> a2 -> a1 -> Bool
    isValidD d m y = (kabisatY y m d || gakKabisat m d) && (d>=1) && (isValidY y) && isValidM m