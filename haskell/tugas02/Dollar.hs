module Dollar where
    jumDet :: (Ord t, Num t) => t -> t -> t -> t -> [t -> t]
    jumDet q d n p = [tot q d n p, sisa q d p]
    sisa :: (Ord t, Num t) => t -> t -> t -> t -> t
    sisa q d n p=  dol (q * 25 + d * 10 + n * 5 + p)
    dol :: (Ord t, Num t) => t -> t
    dol a --mod manual
        | a<100 = a+ p
        | a>100 = dol (a-100)
    tot :: (Ord a, Num a) => a -> a -> a -> a -> p
    tot q d n p = ban (q * 25 + d * 10 + n * 5 + p) 0
    ban :: (Ord a, Num a, Num t) => a -> t -> p
    ban t aw
        | t>=100 = ban (t-100) (a+1)
        | t<100 = a