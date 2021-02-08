module Tengah where
    nilTengah :: Ord a => a -> a -> a -> a
    nilTengah j m d
        | (j>d) && (j>m) && (m<d) = d
        | (j>d) && (j>m) && (d<m) = m 
        | (m>d) && (m>j) && (j<d) = d
        | (m>d) && (m>j) && (j>d) = j
        | (d>j) && (d>m) && (m<j) = j
        | (d>j) && (d>m) && (m>j) = m