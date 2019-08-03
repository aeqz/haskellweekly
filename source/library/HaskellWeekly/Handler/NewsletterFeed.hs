module HaskellWeekly.Handler.NewsletterFeed
  ( newsletterFeedHandler
  )
where

import qualified HaskellWeekly.Handler.Base
import qualified Network.HTTP.Types
import qualified Network.Wai
import qualified Text.Feed.Constructor

newsletterFeedHandler :: Applicative f => f Network.Wai.Response
newsletterFeedHandler =
  pure
    . HaskellWeekly.Handler.Base.feedResponse Network.HTTP.Types.ok200 []
    $ Text.Feed.Constructor.newFeed Text.Feed.Constructor.AtomKind
