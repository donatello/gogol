{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Fitness.Users.DataSources.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified data source. The request will fail if the data
-- source contains any data points.
--
-- /See:/ <https://developers.google.com/fit/rest/ Fitness Reference> for @fitness.users.dataSources.delete@.
module Network.Google.Resource.Fitness.Users.DataSources.Delete
    (
    -- * REST Resource
      UsersDataSourcesDeleteResource

    -- * Creating a Request
    , usersDataSourcesDelete
    , UsersDataSourcesDelete

    -- * Request Lenses
    , udsdDataSourceId
    , udsdUserId
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

-- | A resource alias for @fitness.users.dataSources.delete@ method which the
-- 'UsersDataSourcesDelete' request conforms to.
type UsersDataSourcesDeleteResource =
     "fitness" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "dataSources" :>
               Capture "dataSourceId" Text :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] DataSource

-- | Deletes the specified data source. The request will fail if the data
-- source contains any data points.
--
-- /See:/ 'usersDataSourcesDelete' smart constructor.
data UsersDataSourcesDelete = UsersDataSourcesDelete'
    { _udsdDataSourceId :: !Text
    , _udsdUserId       :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDataSourcesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udsdDataSourceId'
--
-- * 'udsdUserId'
usersDataSourcesDelete
    :: Text -- ^ 'udsdDataSourceId'
    -> Text -- ^ 'udsdUserId'
    -> UsersDataSourcesDelete
usersDataSourcesDelete pUdsdDataSourceId_ pUdsdUserId_ =
    UsersDataSourcesDelete'
    { _udsdDataSourceId = pUdsdDataSourceId_
    , _udsdUserId = pUdsdUserId_
    }

-- | The data stream ID of the data source to delete.
udsdDataSourceId :: Lens' UsersDataSourcesDelete Text
udsdDataSourceId
  = lens _udsdDataSourceId
      (\ s a -> s{_udsdDataSourceId = a})

-- | Retrieve a data source for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
udsdUserId :: Lens' UsersDataSourcesDelete Text
udsdUserId
  = lens _udsdUserId (\ s a -> s{_udsdUserId = a})

instance GoogleRequest UsersDataSourcesDelete where
        type Rs UsersDataSourcesDelete = DataSource
        type Scopes UsersDataSourcesDelete =
             '["https://www.googleapis.com/auth/fitness.activity.write",
               "https://www.googleapis.com/auth/fitness.blood_glucose.write",
               "https://www.googleapis.com/auth/fitness.blood_pressure.write",
               "https://www.googleapis.com/auth/fitness.body.write",
               "https://www.googleapis.com/auth/fitness.body_temperature.write",
               "https://www.googleapis.com/auth/fitness.location.write",
               "https://www.googleapis.com/auth/fitness.nutrition.write",
               "https://www.googleapis.com/auth/fitness.oxygen_saturation.write",
               "https://www.googleapis.com/auth/fitness.reproductive_health.write"]
        requestClient UsersDataSourcesDelete'{..}
          = go _udsdUserId _udsdDataSourceId (Just AltJSON)
              fitnessService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersDataSourcesDeleteResource)
                      mempty
