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
-- Module      : Network.AWS.CloudSearch.DeleteSuggester
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a suggester. For more information, see
-- <http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html Getting Search Suggestions>
-- in the /Amazon CloudSearch Developer Guide/.
--
-- /See:/ <http://docs.aws.amazon.com/cloudsearch/latest/developerguide/API_DeleteSuggester.html AWS API Reference> for DeleteSuggester.
module Network.AWS.CloudSearch.DeleteSuggester
    (
    -- * Creating a Request
      deleteSuggester
    , DeleteSuggester
    -- * Request Lenses
    , ddDomainName
    , ddSuggesterName

    -- * Destructuring the Response
    , deleteSuggesterResponse
    , DeleteSuggesterResponse
    -- * Response Lenses
    , delersStatus
    , delersSuggester
    ) where

import           Network.AWS.CloudSearch.Types
import           Network.AWS.CloudSearch.Types.Product
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | Container for the parameters to the 'DeleteSuggester' operation.
-- Specifies the name of the domain you want to update and name of the
-- suggester you want to delete.
--
-- /See:/ 'deleteSuggester' smart constructor.
data DeleteSuggester = DeleteSuggester'
    { _ddDomainName    :: !Text
    , _ddSuggesterName :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeleteSuggester' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddDomainName'
--
-- * 'ddSuggesterName'
deleteSuggester
    :: Text -- ^ 'ddDomainName'
    -> Text -- ^ 'ddSuggesterName'
    -> DeleteSuggester
deleteSuggester pDomainName_ pSuggesterName_ =
    DeleteSuggester'
    { _ddDomainName = pDomainName_
    , _ddSuggesterName = pSuggesterName_
    }

-- | Undocumented member.
ddDomainName :: Lens' DeleteSuggester Text
ddDomainName = lens _ddDomainName (\ s a -> s{_ddDomainName = a});

-- | Specifies the name of the suggester you want to delete.
ddSuggesterName :: Lens' DeleteSuggester Text
ddSuggesterName = lens _ddSuggesterName (\ s a -> s{_ddSuggesterName = a});

instance AWSRequest DeleteSuggester where
        type Sv DeleteSuggester = CloudSearch
        type Rs DeleteSuggester = DeleteSuggesterResponse
        request = postQuery
        response
          = receiveXMLWrapper "DeleteSuggesterResult"
              (\ s h x ->
                 DeleteSuggesterResponse' <$>
                   (pure (fromEnum s)) <*> (x .@ "Suggester"))

instance ToHeaders DeleteSuggester where
        toHeaders = const mempty

instance ToPath DeleteSuggester where
        toPath = const "/"

instance ToQuery DeleteSuggester where
        toQuery DeleteSuggester'{..}
          = mconcat
              ["Action" =: ("DeleteSuggester" :: ByteString),
               "Version" =: ("2013-01-01" :: ByteString),
               "DomainName" =: _ddDomainName,
               "SuggesterName" =: _ddSuggesterName]

-- | The result of a 'DeleteSuggester' request. Contains the status of the
-- deleted suggester.
--
-- /See:/ 'deleteSuggesterResponse' smart constructor.
data DeleteSuggesterResponse = DeleteSuggesterResponse'
    { _delersStatus    :: !Int
    , _delersSuggester :: !SuggesterStatus
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeleteSuggesterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delersStatus'
--
-- * 'delersSuggester'
deleteSuggesterResponse
    :: Int -- ^ 'delersStatus'
    -> SuggesterStatus -- ^ 'delersSuggester'
    -> DeleteSuggesterResponse
deleteSuggesterResponse pStatus_ pSuggester_ =
    DeleteSuggesterResponse'
    { _delersStatus = pStatus_
    , _delersSuggester = pSuggester_
    }

-- | The response status code.
delersStatus :: Lens' DeleteSuggesterResponse Int
delersStatus = lens _delersStatus (\ s a -> s{_delersStatus = a});

-- | The status of the suggester being deleted.
delersSuggester :: Lens' DeleteSuggesterResponse SuggesterStatus
delersSuggester = lens _delersSuggester (\ s a -> s{_delersSuggester = a});
