module Pangram (isPangram) where
import Data.Char (toLower)

isPangram :: String -> Bool
isPangram text = do
  let str = map toLower text
  str /= "" && all (`elem` str)['a'..'z']
