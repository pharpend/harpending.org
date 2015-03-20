#!/usr/bin/env runhaskell

{-# LANGUAGE OverloadedStrings #-}
import       Data.ByteString.Lazy (ByteString)
import       Data.ByteString.Lazy.Char8 (unpack)
import       Data.Monoid (mappend)
import       Hakyll
import       System.Posix.Resource

-- | Process SASS
sass = getResourceLBS
  >>= withItemBody (unixFilterLBS "sass" ["--stdin", "--style", "expanded"])
  >>= return . fmap unpack

main :: IO ()
main = hakyll $ do
  match "highlight/*" $ do
    route idRoute
    compile copyFileCompiler

  match "images/*" $ do
    route idRoute
    compile copyFileCompiler

  match "res/*" $ do
    route idRoute
    compile copyFileCompiler

  match "res/bootstrap/*/*" $ do
    route idRoute
    compile copyFileCompiler

  match "fonts/*" $ do
    route idRoute
    compile copyFileCompiler

  match "stylesheets/*" $ do
    route $ setExtension "css"
    compile sass

  match "bugs/*" $ do
    route $ setExtension "html"
    compile $ pandocCompiler
      >>= loadAndApplyTemplate "templates/default.html" defaultContext
      >>= relativizeUrls

  match "pages/*" $ do
    route $
      gsubRoute "pages/" (const "") `composeRoutes`
      setExtension "html"
    compile $ pandocCompiler
      >>= loadAndApplyTemplate "templates/default.html" defaultContext
      >>= relativizeUrls

  match "posts/*" $ do
    route $ setExtension "html"
    compile $ pandocCompiler
      >>= loadAndApplyTemplate "templates/default.html" defaultContext
      >>= relativizeUrls

  match "templates/*" $ compile templateCompiler
