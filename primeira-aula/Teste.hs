module Teste where

  adicionaDois :: Int -> Int
  adicionaDois x = x + 2

  somaTres :: Int -> Int -> Int -> Int
  somaTres x y z = x + y + z

  -- List comprehension
  adicionaQuatro :: [Int] -> [Int]
  adicionaQuatro xs = [x + 4 | x <- xs, (mod x 2) /= 0]

  -- Exercicio 1:
  -- Gere essas listas

  -- [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
  geraPrimeiraList :: [Int]
  geraPrimeiraList = [x | x <- [1..20], (mod x 2) /= 1]

  -- [1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 14, 16, 18, 20]
  geraSegundaList :: [Int]
  geraSegundaList = [x | x <- [1..20], x /= 7, ((mod x 2 /= 1) || (x < 10))]

  -- [1.0, 1.1, 1.2, 1.3, 1.4, 1.5, 1.6, 1.7]
  geraTerceiraList :: [Double]
  geraTerceiraList = [(x * 0.1) + 1 | x <- [0..7]]

  -- Exercicio 2:
  -- Verifique se o tamanho de uma String é impar ou não retorne Bool
  stringEImpar :: String -> Bool
  stringEImpar x = (mod (length x) 2) /= 0

  -- Exercicio 3:
  -- Escreva uma funcao que receba um vetor de
  -- Strings e retorne uma lista com o tamanho de
  -- cada String as palavras de tamanho par devem
  -- ser excluidas da lista retornada
  oddStringsLength :: [String] -> [Int]
  oddStringsLength xs = [length x | x <- xs, (mod (length x) 2) /= 0]
