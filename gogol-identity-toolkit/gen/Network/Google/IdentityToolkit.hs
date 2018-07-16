{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.IdentityToolkit
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Help the third party sites to implement federated login.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference>
module Network.Google.IdentityToolkit
    (
    -- * Service Configuration
      identityToolkitService

    -- * OAuth Scopes
    , firebaseScope
    , cloudPlatformScope

    -- * API Declaration
    , IdentityToolkitAPI

    -- * Resources

    -- ** identitytoolkit.relyingparty.createAuthUri
    , module Network.Google.Resource.IdentityToolkit.RelyingParty.CreateAuthURI

    -- ** identitytoolkit.relyingparty.deleteAccount
    , module Network.Google.Resource.IdentityToolkit.RelyingParty.DeleteAccount

    -- ** identitytoolkit.relyingparty.downloadAccount
    , module Network.Google.Resource.IdentityToolkit.RelyingParty.DownloadAccount

    -- ** identitytoolkit.relyingparty.getAccountInfo
    , module Network.Google.Resource.IdentityToolkit.RelyingParty.GetAccountInfo

    -- ** identitytoolkit.relyingparty.getOobConfirmationCode
    , module Network.Google.Resource.IdentityToolkit.RelyingParty.GetOOBConfirmationCode

    -- ** identitytoolkit.relyingparty.getProjectConfig
    , module Network.Google.Resource.IdentityToolkit.RelyingParty.GetProjectConfig

    -- ** identitytoolkit.relyingparty.getPublicKeys
    , module Network.Google.Resource.IdentityToolkit.RelyingParty.GetPublicKeys

    -- ** identitytoolkit.relyingparty.getRecaptchaParam
    , module Network.Google.Resource.IdentityToolkit.RelyingParty.GetRecaptchaParam

    -- ** identitytoolkit.relyingparty.resetPassword
    , module Network.Google.Resource.IdentityToolkit.RelyingParty.ResetPassword

    -- ** identitytoolkit.relyingparty.setAccountInfo
    , module Network.Google.Resource.IdentityToolkit.RelyingParty.SetAccountInfo

    -- ** identitytoolkit.relyingparty.setProjectConfig
    , module Network.Google.Resource.IdentityToolkit.RelyingParty.SetProjectConfig

    -- ** identitytoolkit.relyingparty.signOutUser
    , module Network.Google.Resource.IdentityToolkit.RelyingParty.SignOutUser

    -- ** identitytoolkit.relyingparty.signupNewUser
    , module Network.Google.Resource.IdentityToolkit.RelyingParty.SignupNewUser

    -- ** identitytoolkit.relyingparty.uploadAccount
    , module Network.Google.Resource.IdentityToolkit.RelyingParty.UploadAccount

    -- ** identitytoolkit.relyingparty.verifyAssertion
    , module Network.Google.Resource.IdentityToolkit.RelyingParty.VerifyAssertion

    -- ** identitytoolkit.relyingparty.verifyCustomToken
    , module Network.Google.Resource.IdentityToolkit.RelyingParty.VerifyCustomToken

    -- ** identitytoolkit.relyingparty.verifyPassword
    , module Network.Google.Resource.IdentityToolkit.RelyingParty.VerifyPassword

    -- * Types

    -- ** UploadAccountResponseErrorItem
    , UploadAccountResponseErrorItem
    , uploadAccountResponseErrorItem
    , uareiMessage
    , uareiIndex

    -- ** UserInfoProviderUserInfoItem
    , UserInfoProviderUserInfoItem
    , userInfoProviderUserInfoItem
    , uipuiiProviderId
    , uipuiiEmail
    , uipuiiPhotoURL
    , uipuiiFederatedId
    , uipuiiDisplayName
    , uipuiiScreenName
    , uipuiiRawId

    -- ** VerifyCustomTokenResponse
    , VerifyCustomTokenResponse
    , verifyCustomTokenResponse
    , vctrKind
    , vctrRefreshToken
    , vctrExpiresIn
    , vctrIdToken

    -- ** IdpConfig
    , IdpConfig
    , idpConfig
    , icClientId
    , icEnabled
    , icWhiteListedAudiences
    , icSecret
    , icExperimentPercent
    , icProvider

    -- ** UserInfo
    , UserInfo
    , userInfo
    , uiEmail
    , uiLastLoginAt
    , uiPhotoURL
    , uiCreatedAt
    , uiDisabled
    , uiCustomAuth
    , uiProviderUserInfo
    , uiValidSince
    , uiPasswordUpdatedAt
    , uiVersion
    , uiEmailVerified
    , uiSalt
    , uiDisplayName
    , uiPasswordHash
    , uiLocalId
    , uiRawPassword
    , uiScreenName

    -- ** IdentitytoolkitRelyingPartySetProjectConfigResponse
    , IdentitytoolkitRelyingPartySetProjectConfigResponse
    , identitytoolkitRelyingPartySetProjectConfigResponse
    , irpspcrProjectId

    -- ** IdentitytoolkitRelyingPartyVerifyCustomTokenRequest
    , IdentitytoolkitRelyingPartyVerifyCustomTokenRequest
    , identitytoolkitRelyingPartyVerifyCustomTokenRequest
    , irpvctrInstanceId
    , irpvctrDelegatedProjectNumber
    , irpvctrToken
    , irpvctrReturnSecureToken

    -- ** SetAccountInfoResponseProviderUserInfoItem
    , SetAccountInfoResponseProviderUserInfoItem
    , setAccountInfoResponseProviderUserInfoItem
    , sairpuiiProviderId
    , sairpuiiPhotoURL
    , sairpuiiFederatedId
    , sairpuiiDisplayName

    -- ** IdentitytoolkitRelyingPartyCreateAuthURIRequestCustomParameter
    , IdentitytoolkitRelyingPartyCreateAuthURIRequestCustomParameter
    , identitytoolkitRelyingPartyCreateAuthURIRequestCustomParameter
    , irpcaurcpAddtional

    -- ** IdentitytoolkitRelyingPartyVerifyPasswordRequest
    , IdentitytoolkitRelyingPartyVerifyPasswordRequest
    , identitytoolkitRelyingPartyVerifyPasswordRequest
    , irpvprEmail
    , irpvprInstanceId
    , irpvprCaptchaChallenge
    , irpvprDelegatedProjectNumber
    , irpvprReturnSecureToken
    , irpvprPassword
    , irpvprCaptchaResponse
    , irpvprIdToken
    , irpvprPendingIdToken

    -- ** SignupNewUserResponse
    , SignupNewUserResponse
    , signupNewUserResponse
    , snurEmail
    , snurKind
    , snurRefreshToken
    , snurExpiresIn
    , snurDisplayName
    , snurLocalId
    , snurIdToken

    -- ** IdentitytoolkitRelyingPartySetProjectConfigRequest
    , IdentitytoolkitRelyingPartySetProjectConfigRequest
    , identitytoolkitRelyingPartySetProjectConfigRequest
    , irpspcrAuthorizedDomains
    , irpspcrAPIKey
    , irpspcrIdpConfig
    , irpspcrChangeEmailTemplate
    , irpspcrDelegatedProjectNumber
    , irpspcrVerifyEmailTemplate
    , irpspcrEnableAnonymousUser
    , irpspcrLegacyResetPasswordTemplate
    , irpspcrAllowPasswordUser
    , irpspcrResetPasswordTemplate
    , irpspcrUseEmailSending

    -- ** IdentitytoolkitRelyingPartySetAccountInfoRequest
    , IdentitytoolkitRelyingPartySetAccountInfoRequest
    , identitytoolkitRelyingPartySetAccountInfoRequest
    , irpsairUpgradeToFederatedLogin
    , irpsairEmail
    , irpsairInstanceId
    , irpsairLastLoginAt
    , irpsairPhotoURL
    , irpsairCaptchaChallenge
    , irpsairCreatedAt
    , irpsairDelegatedProjectNumber
    , irpsairDeleteAttribute
    , irpsairDeleteProvider
    , irpsairReturnSecureToken
    , irpsairValidSince
    , irpsairOOBCode
    , irpsairPassword
    , irpsairCaptchaResponse
    , irpsairEmailVerified
    , irpsairDisplayName
    , irpsairDisableUser
    , irpsairLocalId
    , irpsairIdToken
    , irpsairProvider

    -- ** IdentitytoolkitRelyingPartyVerifyAssertionRequest
    , IdentitytoolkitRelyingPartyVerifyAssertionRequest
    , identitytoolkitRelyingPartyVerifyAssertionRequest
    , irpvarReturnIdpCredential
    , irpvarInstanceId
    , irpvarDelegatedProjectNumber
    , irpvarPostBody
    , irpvarReturnSecureToken
    , irpvarReturnRefreshToken
    , irpvarRequestURI
    , irpvarSessionId
    , irpvarIdToken
    , irpvarPendingIdToken

    -- ** DeleteAccountResponse
    , DeleteAccountResponse
    , deleteAccountResponse
    , darKind

    -- ** IdentitytoolkitRelyingPartySignOutUserResponse
    , IdentitytoolkitRelyingPartySignOutUserResponse
    , identitytoolkitRelyingPartySignOutUserResponse
    , irpsourLocalId

    -- ** DownloadAccountResponse
    , DownloadAccountResponse
    , downloadAccountResponse
    , dNextPageToken
    , dUsers
    , dKind

    -- ** IdentitytoolkitRelyingPartyGetProjectConfigResponse
    , IdentitytoolkitRelyingPartyGetProjectConfigResponse
    , identitytoolkitRelyingPartyGetProjectConfigResponse
    , irpgpcrAuthorizedDomains
    , irpgpcrAPIKey
    , irpgpcrIdpConfig
    , irpgpcrChangeEmailTemplate
    , irpgpcrVerifyEmailTemplate
    , irpgpcrEnableAnonymousUser
    , irpgpcrLegacyResetPasswordTemplate
    , irpgpcrAllowPasswordUser
    , irpgpcrResetPasswordTemplate
    , irpgpcrProjectId
    , irpgpcrUseEmailSending
    , irpgpcrDynamicLinksDomain

    -- ** ResetPasswordResponse
    , ResetPasswordResponse
    , resetPasswordResponse
    , rprEmail
    , rprKind
    , rprRequestType
    , rprNewEmail

    -- ** UploadAccountResponse
    , UploadAccountResponse
    , uploadAccountResponse
    , uarKind
    , uarError

    -- ** CreateAuthURIResponse
    , CreateAuthURIResponse
    , createAuthURIResponse
    , caurProviderId
    , caurKind
    , caurAllProviders
    , caurAuthURI
    , caurCaptchaRequired
    , caurRegistered
    , caurSessionId
    , caurForExistingProvider

    -- ** IdentitytoolkitRelyingPartyGetPublicKeysResponse
    , IdentitytoolkitRelyingPartyGetPublicKeysResponse
    , identitytoolkitRelyingPartyGetPublicKeysResponse
    , irpgpkrAddtional

    -- ** RelyingParty
    , RelyingParty
    , relyingParty
    , rpEmail
    , rpKind
    , rpUserIP
    , rpRequestType
    , rpCaptchaResp
    , rpNewEmail
    , rpChallenge
    , rpIdToken

    -- ** IdentitytoolkitRelyingPartyGetAccountInfoRequest
    , IdentitytoolkitRelyingPartyGetAccountInfoRequest
    , identitytoolkitRelyingPartyGetAccountInfoRequest
    , irpgairEmail
    , irpgairDelegatedProjectNumber
    , irpgairLocalId
    , irpgairIdToken

    -- ** EmailTemplate
    , EmailTemplate
    , emailTemplate
    , etSubject
    , etBody
    , etFormat
    , etFromDisplayName
    , etFrom
    , etReplyTo

    -- ** IdentitytoolkitRelyingPartyUploadAccountRequest
    , IdentitytoolkitRelyingPartyUploadAccountRequest
    , identitytoolkitRelyingPartyUploadAccountRequest
    , irpuarUsers
    , irpuarMemoryCost
    , irpuarAllowOverwrite
    , irpuarDelegatedProjectNumber
    , irpuarSanityCheck
    , irpuarSaltSeparator
    , irpuarHashAlgorithm
    , irpuarSignerKey
    , irpuarRounds
    , irpuarTargetProjectId

    -- ** IdentitytoolkitRelyingPartyResetPasswordRequest
    , IdentitytoolkitRelyingPartyResetPasswordRequest
    , identitytoolkitRelyingPartyResetPasswordRequest
    , irprprEmail
    , irprprNewPassword
    , irprprOOBCode
    , irprprOldPassword

    -- ** IdentitytoolkitRelyingPartyCreateAuthURIRequest
    , IdentitytoolkitRelyingPartyCreateAuthURIRequest
    , identitytoolkitRelyingPartyCreateAuthURIRequest
    , irpcaurProviderId
    , irpcaurClientId
    , irpcaurContext
    , irpcaurCustomParameter
    , irpcaurIdentifier
    , irpcaurOtaApp
    , irpcaurOAuthConsumerKey
    , irpcaurHostedDomain
    , irpcaurAppId
    , irpcaurContinueURI
    , irpcaurAuthFlowType
    , irpcaurOAuthScope
    , irpcaurSessionId
    , irpcaurOpenidRealm

    -- ** GetAccountInfoResponse
    , GetAccountInfoResponse
    , getAccountInfoResponse
    , gairUsers
    , gairKind

    -- ** IdentitytoolkitRelyingPartyDeleteAccountRequest
    , IdentitytoolkitRelyingPartyDeleteAccountRequest
    , identitytoolkitRelyingPartyDeleteAccountRequest
    , irpdarDelegatedProjectNumber
    , irpdarLocalId
    , irpdarIdToken

    -- ** GetOOBConfirmationCodeResponse
    , GetOOBConfirmationCodeResponse
    , getOOBConfirmationCodeResponse
    , goobccrEmail
    , goobccrKind
    , goobccrOOBCode

    -- ** IdentitytoolkitRelyingPartyDownloadAccountRequest
    , IdentitytoolkitRelyingPartyDownloadAccountRequest
    , identitytoolkitRelyingPartyDownloadAccountRequest
    , iNextPageToken
    , iDelegatedProjectNumber
    , iMaxResults
    , iTargetProjectId

    -- ** VerifyPasswordResponse
    , VerifyPasswordResponse
    , verifyPasswordResponse
    , vprEmail
    , vprPhotoURL
    , vprOAuthAccessToken
    , vprKind
    , vprOAuthExpireIn
    , vprRefreshToken
    , vprExpiresIn
    , vprDisplayName
    , vprLocalId
    , vprRegistered
    , vprIdToken
    , vprOAuthAuthorizationCode

    -- ** SetAccountInfoResponse
    , SetAccountInfoResponse
    , setAccountInfoResponse
    , sairEmail
    , sairPhotoURL
    , sairKind
    , sairRefreshToken
    , sairProviderUserInfo
    , sairExpiresIn
    , sairDisplayName
    , sairPasswordHash
    , sairLocalId
    , sairNewEmail
    , sairIdToken

    -- ** IdentitytoolkitRelyingPartySignupNewUserRequest
    , IdentitytoolkitRelyingPartySignupNewUserRequest
    , identitytoolkitRelyingPartySignupNewUserRequest
    , irpsnurEmail
    , irpsnurInstanceId
    , irpsnurPhotoURL
    , irpsnurCaptchaChallenge
    , irpsnurDisabled
    , irpsnurPassword
    , irpsnurCaptchaResponse
    , irpsnurEmailVerified
    , irpsnurDisplayName
    , irpsnurIdToken

    -- ** VerifyAssertionResponse
    , VerifyAssertionResponse
    , verifyAssertionResponse
    , varProviderId
    , varFullName
    , varEmail
    , varEmailRecycled
    , varPhotoURL
    , varVerifiedProvider
    , varContext
    , varNeedConfirmation
    , varOriginalEmail
    , varLastName
    , varOAuthAccessToken
    , varDateOfBirth
    , varKind
    , varRawUserInfo
    , varOAuthExpireIn
    , varRefreshToken
    , varAppInstallationURL
    , varAction
    , varNeedEmail
    , varFederatedId
    , varOAuthIdToken
    , varAppScheme
    , varExpiresIn
    , varInputEmail
    , varEmailVerified
    , varOAuthTokenSecret
    , varLanguage
    , varFirstName
    , varDisplayName
    , varOAuthRequestToken
    , varOAuthScope
    , varNickName
    , varLocalId
    , varTimeZone
    , varScreenName
    , varErrorMessage
    , varIdToken
    , varOAuthAuthorizationCode

    -- ** IdentitytoolkitRelyingPartySignOutUserRequest
    , IdentitytoolkitRelyingPartySignOutUserRequest
    , identitytoolkitRelyingPartySignOutUserRequest
    , iInstanceId
    , iLocalId

    -- ** GetRecaptchaParamResponse
    , GetRecaptchaParamResponse
    , getRecaptchaParamResponse
    , grprRecaptchaSiteKey
    , grprKind
    , grprRecaptchaStoken
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude
import           Network.Google.Resource.IdentityToolkit.RelyingParty.CreateAuthURI
import           Network.Google.Resource.IdentityToolkit.RelyingParty.DeleteAccount
import           Network.Google.Resource.IdentityToolkit.RelyingParty.DownloadAccount
import           Network.Google.Resource.IdentityToolkit.RelyingParty.GetAccountInfo
import           Network.Google.Resource.IdentityToolkit.RelyingParty.GetOOBConfirmationCode
import           Network.Google.Resource.IdentityToolkit.RelyingParty.GetProjectConfig
import           Network.Google.Resource.IdentityToolkit.RelyingParty.GetPublicKeys
import           Network.Google.Resource.IdentityToolkit.RelyingParty.GetRecaptchaParam
import           Network.Google.Resource.IdentityToolkit.RelyingParty.ResetPassword
import           Network.Google.Resource.IdentityToolkit.RelyingParty.SetAccountInfo
import           Network.Google.Resource.IdentityToolkit.RelyingParty.SetProjectConfig
import           Network.Google.Resource.IdentityToolkit.RelyingParty.SignOutUser
import           Network.Google.Resource.IdentityToolkit.RelyingParty.SignupNewUser
import           Network.Google.Resource.IdentityToolkit.RelyingParty.UploadAccount
import           Network.Google.Resource.IdentityToolkit.RelyingParty.VerifyAssertion
import           Network.Google.Resource.IdentityToolkit.RelyingParty.VerifyCustomToken
import           Network.Google.Resource.IdentityToolkit.RelyingParty.VerifyPassword

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Identity Toolkit API service.
type IdentityToolkitAPI =
     RelyingPartySignOutUserResource :<|>
       RelyingPartyVerifyCustomTokenResource
       :<|> RelyingPartyCreateAuthURIResource
       :<|> RelyingPartyUploadAccountResource
       :<|> RelyingPartyResetPasswordResource
       :<|> RelyingPartySetAccountInfoResource
       :<|> RelyingPartyVerifyAssertionResource
       :<|> RelyingPartySetProjectConfigResource
       :<|> RelyingPartyDeleteAccountResource
       :<|> RelyingPartySignupNewUserResource
       :<|> RelyingPartyGetOOBConfirmationCodeResource
       :<|> RelyingPartyGetRecaptchaParamResource
       :<|> RelyingPartyDownloadAccountResource
       :<|> RelyingPartyVerifyPasswordResource
       :<|> RelyingPartyGetPublicKeysResource
       :<|> RelyingPartyGetAccountInfoResource
       :<|> RelyingPartyGetProjectConfigResource
