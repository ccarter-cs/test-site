{-# LANGUAGE OverloadedStrings  #-}

import Hakyll

main :: IO ()
main = hakyll $ do
  match content $ do
    route $ setExtension ".html"
    compile $ pandocCompiler >>= relativizeUrls

content :: Pattern
content = fromGlob "**.md"
