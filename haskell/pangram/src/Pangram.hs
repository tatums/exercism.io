module Pangram (isPangram) where
import Data.Char (toLower)

isPangram :: String -> Bool
isPangram text = do
  let lowerText = map toLower text
  lowerText /= "" && all (`elem` lowerText)['a'..'z']
