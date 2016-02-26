import Control.Monad.Writer

--isBigGang :: Int -> (Bool, String)
--isBigGang x = (x > 9, "Compared gang size to 9.")

--applyLog :: (a, String) -> (a -> (b, String)) -> (b, String)
--applyLog (x, log) f = let (y, newLog) = f x in (y, log ++ newLog)

logNumber :: Int -> Writer [String] Int
logNumber x = writer (x, ["Got Number: " ++ show x])

multWithLog :: Writer [String] Int
multWithLog = do
    a <- logNumber 3
    b <- logNumber 5
    return a * b