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
-- Module      : Network.AWS.CodePipeline.StartPipelineExecution
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts the specified pipeline. Specifically, it begins processing the
-- latest commit to the source location specified as part of the pipeline.
--
-- /See:/ <http://docs.aws.amazon.com/codepipeline/latest/APIReference/API_StartPipelineExecution.html AWS API Reference> for StartPipelineExecution.
module Network.AWS.CodePipeline.StartPipelineExecution
    (
    -- * Creating a Request
      startPipelineExecution
    , StartPipelineExecution
    -- * Request Lenses
    , speName

    -- * Destructuring the Response
    , startPipelineExecutionResponse
    , StartPipelineExecutionResponse
    -- * Response Lenses
    , spersPipelineExecutionId
    , spersStatus
    ) where

import           Network.AWS.CodePipeline.Types
import           Network.AWS.CodePipeline.Types.Product
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | Represents the input of a start pipeline execution action.
--
-- /See:/ 'startPipelineExecution' smart constructor.
newtype StartPipelineExecution = StartPipelineExecution'
    { _speName :: Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StartPipelineExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'speName'
startPipelineExecution
    :: Text -- ^ 'speName'
    -> StartPipelineExecution
startPipelineExecution pName_ =
    StartPipelineExecution'
    { _speName = pName_
    }

-- | The name of the pipeline to start.
speName :: Lens' StartPipelineExecution Text
speName = lens _speName (\ s a -> s{_speName = a});

instance AWSRequest StartPipelineExecution where
        type Sv StartPipelineExecution = CodePipeline
        type Rs StartPipelineExecution =
             StartPipelineExecutionResponse
        request = postJSON
        response
          = receiveJSON
              (\ s h x ->
                 StartPipelineExecutionResponse' <$>
                   (x .?> "pipelineExecutionId") <*>
                     (pure (fromEnum s)))

instance ToHeaders StartPipelineExecution where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("CodePipeline_20150709.StartPipelineExecution" ::
                       ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON StartPipelineExecution where
        toJSON StartPipelineExecution'{..}
          = object ["name" .= _speName]

instance ToPath StartPipelineExecution where
        toPath = const "/"

instance ToQuery StartPipelineExecution where
        toQuery = const mempty

-- | Represents the output of a start pipeline execution action.
--
-- /See:/ 'startPipelineExecutionResponse' smart constructor.
data StartPipelineExecutionResponse = StartPipelineExecutionResponse'
    { _spersPipelineExecutionId :: !(Maybe Text)
    , _spersStatus              :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StartPipelineExecutionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spersPipelineExecutionId'
--
-- * 'spersStatus'
startPipelineExecutionResponse
    :: Int -- ^ 'spersStatus'
    -> StartPipelineExecutionResponse
startPipelineExecutionResponse pStatus_ =
    StartPipelineExecutionResponse'
    { _spersPipelineExecutionId = Nothing
    , _spersStatus = pStatus_
    }

-- | The unique system-generated ID of the pipeline that was started.
spersPipelineExecutionId :: Lens' StartPipelineExecutionResponse (Maybe Text)
spersPipelineExecutionId = lens _spersPipelineExecutionId (\ s a -> s{_spersPipelineExecutionId = a});

-- | The response status code.
spersStatus :: Lens' StartPipelineExecutionResponse Int
spersStatus = lens _spersStatus (\ s a -> s{_spersStatus = a});
