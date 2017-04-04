{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.CSSNamespaceRule
       (getNamespaceURI, getPrefix, CSSNamespaceRule(..),
        gTypeCSSNamespaceRule)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSNamespaceRule.namespaceURI Mozilla CSSNamespaceRule.namespaceURI documentation> 
getNamespaceURI ::
                (MonadDOM m, FromJSString result) => CSSNamespaceRule -> m result
getNamespaceURI self
  = liftDOM ((self ^. js "namespaceURI") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSNamespaceRule.prefix Mozilla CSSNamespaceRule.prefix documentation> 
getPrefix ::
          (MonadDOM m, FromJSString result) => CSSNamespaceRule -> m result
getPrefix self
  = liftDOM ((self ^. js "prefix") >>= fromJSValUnchecked)