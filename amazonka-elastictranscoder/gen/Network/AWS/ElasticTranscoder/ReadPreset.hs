{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticTranscoder.ReadPreset
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The ReadPreset operation gets detailed information about a preset.
--
-- /See:/ <http://docs.aws.amazon.com/elastictranscoder/latest/developerguide/ReadPreset.html AWS API Reference> for ReadPreset.
module Network.AWS.ElasticTranscoder.ReadPreset
    (
    -- * Creating a Request
      readPreset
    , ReadPreset
    -- * Request Lenses
    , rpId

    -- * Destructuring the Response
    , readPresetResponse
    , ReadPresetResponse
    -- * Response Lenses
    , rprsPreset
    , rprsStatus
    ) where

import           Network.AWS.ElasticTranscoder.Types
import           Network.AWS.ElasticTranscoder.Types.Product
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | The 'ReadPresetRequest' structure.
--
-- /See:/ 'readPreset' smart constructor.
newtype ReadPreset = ReadPreset'
    { _rpId :: Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadPreset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpId'
readPreset
    :: Text -- ^ 'rpId'
    -> ReadPreset
readPreset pId_ =
    ReadPreset'
    { _rpId = pId_
    }

-- | The identifier of the preset for which you want to get detailed
-- information.
rpId :: Lens' ReadPreset Text
rpId = lens _rpId (\ s a -> s{_rpId = a});

instance AWSRequest ReadPreset where
        type Sv ReadPreset = ElasticTranscoder
        type Rs ReadPreset = ReadPresetResponse
        request = get
        response
          = receiveJSON
              (\ s h x ->
                 ReadPresetResponse' <$>
                   (x .?> "Preset") <*> (pure (fromEnum s)))

instance ToHeaders ReadPreset where
        toHeaders = const mempty

instance ToPath ReadPreset where
        toPath ReadPreset'{..}
          = mconcat ["/2012-09-25/presets/", toBS _rpId]

instance ToQuery ReadPreset where
        toQuery = const mempty

-- | The 'ReadPresetResponse' structure.
--
-- /See:/ 'readPresetResponse' smart constructor.
data ReadPresetResponse = ReadPresetResponse'
    { _rprsPreset :: !(Maybe Preset)
    , _rprsStatus :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadPresetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rprsPreset'
--
-- * 'rprsStatus'
readPresetResponse
    :: Int -- ^ 'rprsStatus'
    -> ReadPresetResponse
readPresetResponse pStatus_ =
    ReadPresetResponse'
    { _rprsPreset = Nothing
    , _rprsStatus = pStatus_
    }

-- | A section of the response body that provides information about the
-- preset.
rprsPreset :: Lens' ReadPresetResponse (Maybe Preset)
rprsPreset = lens _rprsPreset (\ s a -> s{_rprsPreset = a});

-- | The response status code.
rprsStatus :: Lens' ReadPresetResponse Int
rprsStatus = lens _rprsStatus (\ s a -> s{_rprsStatus = a});
