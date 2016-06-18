#!/usr/bin/env stack
-- stack --install-ghc runghc --package hakyll --package bytestring -- -rtsopts -with-rtsopts=-I0 -O0

{-# LANGUAGE OverloadedStrings #-}

import Data.ByteString.Lazy (ByteString)
import Data.ByteString.Lazy.Char8 (unpack)
import Data.Monoid (mappend)
import Hakyll

pdcc = 
  compile $ pandocCompiler 
              >>= loadAndApplyTemplate "templates/default.html" defaultContext
              >>= relativizeUrls

main :: IO ()
main = hakyll $ do
  match "images/*" $ do
    route idRoute
    compile copyFileCompiler
  match "stylesheets/*" $ do
    route idRoute
    compile copyFileCompiler

  match "bugs/*" $ do
    route $ setExtension "html"
    pdcc

  match "pages/*" $ do
    route $
      gsubRoute "pages/" (const "") `composeRoutes`
      setExtension "html"
    pdcc

  match "posts/*" $ do
    route $ setExtension "html"
    pdcc

  match "templates/*" $ compile templateCompiler
