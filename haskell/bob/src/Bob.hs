module Bob (responseFor) where
import Data.Char

whenAllUpper :: String -> Bool
whenAllUpper str = all isUpper (filter (isAlpha) str) && length (filter (isAlpha) str) > 0

whenAskingQuestion :: String -> Bool
whenAskingQuestion str = do
  let q = filter (not . isSpace) str
  length q > 0 && last q == '?'

whenSilent :: String -> Bool
whenSilent str =
  length (filter (isAlphaNum) str) == 0

whenAskingAllUpper :: String -> Bool
whenAskingAllUpper str = whenAllUpper str && whenAskingQuestion str

responseFor :: String -> String
responseFor xs
  | whenAskingAllUpper xs = "Calm down, I know what I'm doing!"
  | whenAskingQuestion xs = "Sure."
  | whenAllUpper xs = "Whoa, chill out!"
  | whenSilent xs = "Fine. Be that way!"
  | otherwise = "Whatever."
