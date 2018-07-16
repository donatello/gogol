{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AppEngine
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provisions and manages App Engine applications.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ Google App Engine Admin API Reference>
module Network.Google.AppEngine
    (
    -- * Service Configuration
      appEngineService

    -- * OAuth Scopes
    , cloudPlatformReadOnlyScope
    , appEngineAdminScope
    , cloudPlatformScope

    -- * API Declaration
    , AppEngineAPI

    -- * Resources

    -- ** appengine.apps.create
    , module Network.Google.Resource.AppEngine.Apps.Create

    -- ** appengine.apps.get
    , module Network.Google.Resource.AppEngine.Apps.Get

    -- ** appengine.apps.locations.get
    , module Network.Google.Resource.AppEngine.Apps.Locations.Get

    -- ** appengine.apps.locations.list
    , module Network.Google.Resource.AppEngine.Apps.Locations.List

    -- ** appengine.apps.operations.get
    , module Network.Google.Resource.AppEngine.Apps.Operations.Get

    -- ** appengine.apps.operations.list
    , module Network.Google.Resource.AppEngine.Apps.Operations.List

    -- ** appengine.apps.patch
    , module Network.Google.Resource.AppEngine.Apps.Patch

    -- ** appengine.apps.repair
    , module Network.Google.Resource.AppEngine.Apps.Repair

    -- ** appengine.apps.services.delete
    , module Network.Google.Resource.AppEngine.Apps.Services.Delete

    -- ** appengine.apps.services.get
    , module Network.Google.Resource.AppEngine.Apps.Services.Get

    -- ** appengine.apps.services.list
    , module Network.Google.Resource.AppEngine.Apps.Services.List

    -- ** appengine.apps.services.patch
    , module Network.Google.Resource.AppEngine.Apps.Services.Patch

    -- ** appengine.apps.services.versions.create
    , module Network.Google.Resource.AppEngine.Apps.Services.Versions.Create

    -- ** appengine.apps.services.versions.delete
    , module Network.Google.Resource.AppEngine.Apps.Services.Versions.Delete

    -- ** appengine.apps.services.versions.get
    , module Network.Google.Resource.AppEngine.Apps.Services.Versions.Get

    -- ** appengine.apps.services.versions.instances.debug
    , module Network.Google.Resource.AppEngine.Apps.Services.Versions.Instances.Debug

    -- ** appengine.apps.services.versions.instances.delete
    , module Network.Google.Resource.AppEngine.Apps.Services.Versions.Instances.Delete

    -- ** appengine.apps.services.versions.instances.get
    , module Network.Google.Resource.AppEngine.Apps.Services.Versions.Instances.Get

    -- ** appengine.apps.services.versions.instances.list
    , module Network.Google.Resource.AppEngine.Apps.Services.Versions.Instances.List

    -- ** appengine.apps.services.versions.list
    , module Network.Google.Resource.AppEngine.Apps.Services.Versions.List

    -- ** appengine.apps.services.versions.patch
    , module Network.Google.Resource.AppEngine.Apps.Services.Versions.Patch

    -- * Types

    -- ** OperationMetadataExperimental
    , OperationMetadataExperimental
    , operationMetadataExperimental
    , omeInsertTime
    , omeUser
    , omeMethod
    , omeEndTime
    , omeTarget

    -- ** NetworkUtilization
    , NetworkUtilization
    , networkUtilization
    , nuTargetReceivedBytesPerSecond
    , nuTargetSentPacketsPerSecond
    , nuTargetReceivedPacketsPerSecond
    , nuTargetSentBytesPerSecond

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** OperationSchema
    , OperationSchema
    , operationSchema
    , osAddtional

    -- ** LocationSchema
    , LocationSchema
    , locationSchema
    , lsAddtional

    -- ** TrafficSplit
    , TrafficSplit
    , trafficSplit
    , tsShardBy
    , tsAllocations

    -- ** ScriptHandler
    , ScriptHandler
    , scriptHandler
    , shScriptPath

    -- ** ListServicesResponse
    , ListServicesResponse
    , listServicesResponse
    , lsrNextPageToken
    , lsrServices

    -- ** URLMap
    , URLMap
    , urlMap
    , umScript
    , umSecurityLevel
    , umAPIEndpoint
    , umURLRegex
    , umRedirectHTTPResponseCode
    , umAuthFailAction
    , umStaticFiles
    , umLogin

    -- ** Library
    , Library
    , library
    , lName
    , lVersion

    -- ** ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- ** DiskUtilization
    , DiskUtilization
    , diskUtilization
    , duTargetReadBytesPerSecond
    , duTargetReadOpsPerSecond
    , duTargetWriteOpsPerSecond
    , duTargetWriteBytesPerSecond

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- ** HealthCheck
    , HealthCheck
    , healthCheck
    , hcHealthyThreshold
    , hcDisableHealthCheck
    , hcCheckInterval
    , hcRestartThreshold
    , hcHost
    , hcTimeout
    , hcUnhealthyThreshold

    -- ** APIConfigHandler
    , APIConfigHandler
    , apiConfigHandler
    , achScript
    , achSecurityLevel
    , achURL
    , achAuthFailAction
    , achLogin

    -- ** VersionEnvVariables
    , VersionEnvVariables
    , versionEnvVariables
    , vevAddtional

    -- ** Application
    , Application
    , application
    , aDefaultHostname
    , aDefaultCookieExpiration
    , aAuthDomain
    , aCodeBucket
    , aName
    , aDispatchRules
    , aDefaultBucket
    , aId
    , aLocationId

    -- ** VersionBetaSettings
    , VersionBetaSettings
    , versionBetaSettings
    , vbsAddtional

    -- ** Service
    , Service
    , service
    , sSplit
    , sName
    , sId

    -- ** EndpointsAPIService
    , EndpointsAPIService
    , endpointsAPIService
    , easName
    , easConfigId

    -- ** Location
    , Location
    , location
    , locName
    , locMetadata
    , locLabels
    , locLocationId

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** ZipInfo
    , ZipInfo
    , zipInfo
    , ziFilesCount
    , ziSourceURL

    -- ** URLDispatchRule
    , URLDispatchRule
    , urlDispatchRule
    , udrPath
    , udrService
    , udrDomain

    -- ** ListVersionsResponse
    , ListVersionsResponse
    , listVersionsResponse
    , lvrNextPageToken
    , lvrVersions

    -- ** FileInfo
    , FileInfo
    , fileInfo
    , fiSha1Sum
    , fiMimeType
    , fiSourceURL

    -- ** AutomaticScaling
    , AutomaticScaling
    , automaticScaling
    , asNetworkUtilization
    , asMaxTotalInstances
    , asMinIdleInstances
    , asDiskUtilization
    , asMinPendingLatency
    , asCPUUtilization
    , asMaxIdleInstances
    , asMinTotalInstances
    , asMaxConcurrentRequests
    , asCoolDownPeriod
    , asRequestUtilization
    , asMaxPendingLatency

    -- ** OperationMetadataV1Beta5
    , OperationMetadataV1Beta5
    , operationMetadataV1Beta5
    , omvbInsertTime
    , omvbUser
    , omvbMethod
    , omvbEndTime
    , omvbTarget

    -- ** Volume
    , Volume
    , volume
    , vSizeGb
    , vName
    , vVolumeType

    -- ** APIEndpointHandler
    , APIEndpointHandler
    , apiEndpointHandler
    , aehScriptPath

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** Network
    , Network
    , network
    , nSubnetworkName
    , nForwardedPorts
    , nInstanceTag
    , nName

    -- ** DebugInstanceRequest
    , DebugInstanceRequest
    , debugInstanceRequest
    , dirSSHKey

    -- ** StaticFilesHandlerHTTPHeaders
    , StaticFilesHandlerHTTPHeaders
    , staticFilesHandlerHTTPHeaders
    , sfhhttphAddtional

    -- ** Resources
    , Resources
    , resources
    , rMemoryGb
    , rDiskGb
    , rVolumes
    , rCPU

    -- ** DeploymentFiles
    , DeploymentFiles
    , deploymentFiles
    , dfAddtional

    -- ** CPUUtilization
    , CPUUtilization
    , cpuUtilization
    , cuAggregationWindowLength
    , cuTargetUtilization

    -- ** TrafficSplitAllocations
    , TrafficSplitAllocations
    , trafficSplitAllocations
    , tsaAddtional

    -- ** ManualScaling
    , ManualScaling
    , manualScaling
    , msInstances

    -- ** BasicScaling
    , BasicScaling
    , basicScaling
    , bsMaxInstances
    , bsIdleTimeout

    -- ** OperationMetadataV1
    , OperationMetadataV1
    , operationMetadataV1
    , omvEphemeralMessage
    , omvInsertTime
    , omvUser
    , omvMethod
    , omvEndTime
    , omvWarning
    , omvTarget

    -- ** Version
    , Version
    , version
    , verRuntime
    , verNobuildFilesRegex
    , verInstanceClass
    , verHealthCheck
    , verEndpointsAPIService
    , verEnv
    , verDefaultExpiration
    , verAutomaticScaling
    , verErrorHandlers
    , verCreatedBy
    , verVM
    , verHandlers
    , verInboundServices
    , verNetwork
    , verResources
    , verName
    , verThreadsafe
    , verBetaSettings
    , verBasicScaling
    , verManualScaling
    , verAPIConfig
    , verId
    , verEnvVariables
    , verServingStatus
    , verDiskUsageBytes
    , verCreateTime
    , verLibraries
    , verVersionURL
    , verDeployment

    -- ** StaticFilesHandler
    , StaticFilesHandler
    , staticFilesHandler
    , sfhHTTPHeaders
    , sfhPath
    , sfhRequireMatchingFile
    , sfhExpiration
    , sfhMimeType
    , sfhApplicationReadable
    , sfhUploadPathRegex

    -- ** ErrorHandler
    , ErrorHandler
    , errorHandler
    , ehMimeType
    , ehErrorCode
    , ehStaticFile

    -- ** LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- ** LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmStandardEnvironmentAvailable
    , lmFlexibleEnvironmentAvailable

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omInsertTime
    , omUser
    , omMethod
    , omEndTime
    , omOperationType
    , omTarget

    -- ** ListInstancesResponse
    , ListInstancesResponse
    , listInstancesResponse
    , lirNextPageToken
    , lirInstances

    -- ** RequestUtilization
    , RequestUtilization
    , requestUtilization
    , ruTargetConcurrentRequests
    , ruTargetRequestCountPerSecond

    -- ** RepairApplicationRequest
    , RepairApplicationRequest
    , repairApplicationRequest

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** ContainerInfo
    , ContainerInfo
    , containerInfo
    , ciImage

    -- ** Instance
    , Instance
    , instance'
    , iMemoryUsage
    , iVMStatus
    , iVMZoneName
    , iVMIP
    , iStartTime
    , iVMId
    , iAvailability
    , iVMName
    , iName
    , iVMDebugEnabled
    , iRequests
    , iQps
    , iId
    , iErrors
    , iAverageLatency
    , iAppEngineRelease

    -- ** Deployment
    , Deployment
    , deployment
    , dZip
    , dContainer
    , dFiles
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude
import           Network.Google.Resource.AppEngine.Apps.Create
import           Network.Google.Resource.AppEngine.Apps.Get
import           Network.Google.Resource.AppEngine.Apps.Locations.Get
import           Network.Google.Resource.AppEngine.Apps.Locations.List
import           Network.Google.Resource.AppEngine.Apps.Operations.Get
import           Network.Google.Resource.AppEngine.Apps.Operations.List
import           Network.Google.Resource.AppEngine.Apps.Patch
import           Network.Google.Resource.AppEngine.Apps.Repair
import           Network.Google.Resource.AppEngine.Apps.Services.Delete
import           Network.Google.Resource.AppEngine.Apps.Services.Get
import           Network.Google.Resource.AppEngine.Apps.Services.List
import           Network.Google.Resource.AppEngine.Apps.Services.Patch
import           Network.Google.Resource.AppEngine.Apps.Services.Versions.Create
import           Network.Google.Resource.AppEngine.Apps.Services.Versions.Delete
import           Network.Google.Resource.AppEngine.Apps.Services.Versions.Get
import           Network.Google.Resource.AppEngine.Apps.Services.Versions.Instances.Debug
import           Network.Google.Resource.AppEngine.Apps.Services.Versions.Instances.Delete
import           Network.Google.Resource.AppEngine.Apps.Services.Versions.Instances.Get
import           Network.Google.Resource.AppEngine.Apps.Services.Versions.Instances.List
import           Network.Google.Resource.AppEngine.Apps.Services.Versions.List
import           Network.Google.Resource.AppEngine.Apps.Services.Versions.Patch

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google App Engine Admin API service.
type AppEngineAPI =
     AppsOperationsListResource :<|>
       AppsOperationsGetResource
       :<|> AppsLocationsListResource
       :<|> AppsLocationsGetResource
       :<|> AppsServicesVersionsInstancesListResource
       :<|> AppsServicesVersionsInstancesGetResource
       :<|> AppsServicesVersionsInstancesDebugResource
       :<|> AppsServicesVersionsInstancesDeleteResource
       :<|> AppsServicesVersionsListResource
       :<|> AppsServicesVersionsPatchResource
       :<|> AppsServicesVersionsGetResource
       :<|> AppsServicesVersionsCreateResource
       :<|> AppsServicesVersionsDeleteResource
       :<|> AppsServicesListResource
       :<|> AppsServicesPatchResource
       :<|> AppsServicesGetResource
       :<|> AppsServicesDeleteResource
       :<|> AppsPatchResource
       :<|> AppsGetResource
       :<|> AppsCreateResource
       :<|> AppsRepairResource
