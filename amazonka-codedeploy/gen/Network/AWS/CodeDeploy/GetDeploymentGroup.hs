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
-- Module      : Network.AWS.CodeDeploy.GetDeploymentGroup
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a deployment group.
--
-- /See:/ <http://docs.aws.amazon.com/codedeploy/latest/APIReference/API_GetDeploymentGroup.html AWS API Reference> for GetDeploymentGroup.
module Network.AWS.CodeDeploy.GetDeploymentGroup
    (
    -- * Creating a Request
      getDeploymentGroup
    , GetDeploymentGroup
    -- * Request Lenses
    , gdgApplicationName
    , gdgDeploymentGroupName

    -- * Destructuring the Response
    , getDeploymentGroupResponse
    , GetDeploymentGroupResponse
    -- * Response Lenses
    , gdgrsDeploymentGroupInfo
    , gdgrsStatus
    ) where

import           Network.AWS.CodeDeploy.Types
import           Network.AWS.CodeDeploy.Types.Product
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | Represents the input of a get deployment group operation.
--
-- /See:/ 'getDeploymentGroup' smart constructor.
data GetDeploymentGroup = GetDeploymentGroup'
    { _gdgApplicationName     :: !Text
    , _gdgDeploymentGroupName :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetDeploymentGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdgApplicationName'
--
-- * 'gdgDeploymentGroupName'
getDeploymentGroup
    :: Text -- ^ 'gdgApplicationName'
    -> Text -- ^ 'gdgDeploymentGroupName'
    -> GetDeploymentGroup
getDeploymentGroup pApplicationName_ pDeploymentGroupName_ =
    GetDeploymentGroup'
    { _gdgApplicationName = pApplicationName_
    , _gdgDeploymentGroupName = pDeploymentGroupName_
    }

-- | The name of an existing AWS CodeDeploy application associated with the
-- applicable IAM user or AWS account.
gdgApplicationName :: Lens' GetDeploymentGroup Text
gdgApplicationName = lens _gdgApplicationName (\ s a -> s{_gdgApplicationName = a});

-- | The name of an existing deployment group for the specified application.
gdgDeploymentGroupName :: Lens' GetDeploymentGroup Text
gdgDeploymentGroupName = lens _gdgDeploymentGroupName (\ s a -> s{_gdgDeploymentGroupName = a});

instance AWSRequest GetDeploymentGroup where
        type Sv GetDeploymentGroup = CodeDeploy
        type Rs GetDeploymentGroup =
             GetDeploymentGroupResponse
        request = postJSON
        response
          = receiveJSON
              (\ s h x ->
                 GetDeploymentGroupResponse' <$>
                   (x .?> "deploymentGroupInfo") <*>
                     (pure (fromEnum s)))

instance ToHeaders GetDeploymentGroup where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("CodeDeploy_20141006.GetDeploymentGroup" ::
                       ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON GetDeploymentGroup where
        toJSON GetDeploymentGroup'{..}
          = object
              ["applicationName" .= _gdgApplicationName,
               "deploymentGroupName" .= _gdgDeploymentGroupName]

instance ToPath GetDeploymentGroup where
        toPath = const "/"

instance ToQuery GetDeploymentGroup where
        toQuery = const mempty

-- | Represents the output of a get deployment group operation.
--
-- /See:/ 'getDeploymentGroupResponse' smart constructor.
data GetDeploymentGroupResponse = GetDeploymentGroupResponse'
    { _gdgrsDeploymentGroupInfo :: !(Maybe DeploymentGroupInfo)
    , _gdgrsStatus              :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetDeploymentGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdgrsDeploymentGroupInfo'
--
-- * 'gdgrsStatus'
getDeploymentGroupResponse
    :: Int -- ^ 'gdgrsStatus'
    -> GetDeploymentGroupResponse
getDeploymentGroupResponse pStatus_ =
    GetDeploymentGroupResponse'
    { _gdgrsDeploymentGroupInfo = Nothing
    , _gdgrsStatus = pStatus_
    }

-- | Information about the deployment group.
gdgrsDeploymentGroupInfo :: Lens' GetDeploymentGroupResponse (Maybe DeploymentGroupInfo)
gdgrsDeploymentGroupInfo = lens _gdgrsDeploymentGroupInfo (\ s a -> s{_gdgrsDeploymentGroupInfo = a});

-- | The response status code.
gdgrsStatus :: Lens' GetDeploymentGroupResponse Int
gdgrsStatus = lens _gdgrsStatus (\ s a -> s{_gdgrsStatus = a});
