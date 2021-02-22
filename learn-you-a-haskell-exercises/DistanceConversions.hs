module DistanceConversions
( yardsToFeet
, feetToInches
, inchesToCentimetres
, yardsToCentimeters
) where

-- Define yards to feet
yardsToFeet ::  Float -> Float
yardsToFeet = (*) 3

-- Define feet to inches
feetToInches :: Float -> Float
feetToInches =  (*) 12

-- Define inches to centimetres
inchesToCentimetres :: Float -> Float
inchesToCentimetres = (*) 2.54

--Define yards to Centimeters
yardsToCentimeters :: Float -> Float 
yardsToCentimeters = (*) 91.44