ask :: String -> Int -> IO ()
ask prompt count =
  do
    putStrLn prompt
    line <- getLine
    if line == ""
      then ask ("please say something" ++ replicate count '!') (count + 1)
      else putStrLn ("you said: " ++ reverse line)

main :: IO ()
main =
  do
    let prompt = "please say something"
    ask prompt 1