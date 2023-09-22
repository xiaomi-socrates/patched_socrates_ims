.class public Lorg/codeaurora/ims/ImsSenderRxr;
.super Lorg/codeaurora/ims/ImsPhoneBaseCommands;
.source "ImsSenderRxr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;,
        Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;,
        Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;,
        Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_WAKE_LOCK_TIMEOUT:I = 0xea60

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x1

.field static final IIMS_RADIO_SERVICE_NAME:[Ljava/lang/String;

.field static final LOG_TAG:Ljava/lang/String; = "ImsSenderRxr"

.field private static final MSG_TAG_LENGTH:I = 0x1

.field private static final PDU_LENGTH_OFFSET:I = 0x4

.field static final ZERO_SECONDS:I


# instance fields
.field private mAutoRejectRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mCiWlanNotificationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mConferenceCallStateCompletedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mGeoLocationDataStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mGeolocationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mHandoverStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mImsIndication:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;

.field private mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

.field final mImsRadioHandler:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;

.field private mImsResponse:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;

.field private mImsSubConfigChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mIncomingDtmfStartRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mIncomingDtmfStopRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mIncomingSmsRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

.field private mIsUnsolCallListPresent:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mModifyCallRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mMultiIdentityInfoPendingRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mMultiIdentityStatusChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mMultiSimVoiceCapabilityChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field protected mMwiRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mParticipantStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mPhoneId:Ljava/lang/Integer;

.field private mRadioStateRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mRefreshConfInfoRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mRegistrationBlockStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field mRequestMessagesWaiting:I

.field mRequestsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/IFRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mRttMessageRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mRttModifyRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mSendSmsStatusReportRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

.field private mSipDtmfInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mSmsCallbackModeChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mSrvDomainChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mSrvStatusRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

.field protected mSsIndicationRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

.field private mSsaccRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field protected mSsnRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

.field mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTtyStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mUssdInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mVoWiFiCallQualityRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mVoiceInfoStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mVopsRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockTimeout:I

.field private mWfcRoamingConfigurationSupport:Z

.field private mWfcRoamingModeConfigRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAutoRejectRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mAutoRejectRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCiWlanNotificationRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mCiWlanNotificationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConferenceCallStateCompletedRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mConferenceCallStateCompletedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGeoLocationDataStatusRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeoLocationDataStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGeolocationRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandoverStatusRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsSubConfigChangeRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsSubConfigChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIncomingDtmfStartRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStartRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIncomingDtmfStopRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStopRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIncomingSmsRegistrant(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/Registrant;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingSmsRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMultiIdentityInfoPendingRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityInfoPendingRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMultiIdentityStatusChangeRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityStatusChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMultiSimVoiceCapabilityChangedRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiSimVoiceCapabilityChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmParticipantStatusRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lorg/codeaurora/ims/ImsSenderRxr;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRefreshConfInfoRegistrations(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegistrationBlockStatusRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRegistrationBlockStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRttMessageRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRttMessageRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSendSmsStatusReportRegistrant(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/Registrant;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSendSmsStatusReportRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSmsCallbackModeChangedRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSmsCallbackModeChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSrvDomainChangedRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvDomainChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSrvStatusRegistrations(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTtyStatusRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVoWiFiCallQualityRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVoiceInfoStatusRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoiceInfoStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVopsRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWfcRoamingModeConfigRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWfcRoamingModeConfigRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsUnsolCallListPresent(Lorg/codeaurora/ims/ImsSenderRxr;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsUnsolCallListPresent:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWfcRoamingConfigurationSupport(Lorg/codeaurora/ims/ImsSenderRxr;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWfcRoamingConfigurationSupport:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearRequestsList(Lorg/codeaurora/ims/ImsSenderRxr;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->clearRequestsList(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->findAndRemoveRequestFromList(I)Lorg/codeaurora/ims/IFRequest;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnotifyServiceDown(Lorg/codeaurora/ims/ImsSenderRxr;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->notifyServiceDown(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyServiceUp(Lorg/codeaurora/ims/ImsSenderRxr;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->notifyServiceUp(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifySipDtmfInfo(Lorg/codeaurora/ims/ImsSenderRxr;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->notifySipDtmfInfo(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyUssdInfo(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/UssdInfo;Lorg/codeaurora/ims/ImsRilException;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->notifyUssdInfo(Lorg/codeaurora/ims/UssdInfo;Lorg/codeaurora/ims/ImsRilException;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 244
    const-string v0, "imsradio0"

    const-string v1, "imsradio1"

    const-string v2, "imsradio2"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/ims/ImsSenderRxr;->IIMS_RADIO_SERVICE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 827
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsPhoneBaseCommands;-><init>(Landroid/content/Context;)V

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsUnsolCallListPresent:Z

    .line 232
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWfcRoamingConfigurationSupport:Z

    .line 235
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    .line 238
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 282
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    .line 284
    new-instance v1, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsResponse:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;

    .line 285
    new-instance v1, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsIndication:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;

    .line 829
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    .line 830
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->initNotifyRegistrants()V

    .line 832
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 833
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "ImsSenderRxr"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 834
    invoke-virtual {v2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 835
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->wake_lock_timeout()Ljava/util/Optional;

    move-result-object v2

    .line 836
    const v3, 0xea60

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLockTimeout:I

    .line 837
    new-instance v2, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;

    invoke-direct {v2, p0}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHandler:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;

    .line 838
    iput v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    .line 841
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsResponse:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsIndication:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v2, v3}, Lorg/codeaurora/ims/ImsRadioHalFactory;->newImsRadioHal(Lorg/codeaurora/ims/IImsRadioResponse;Lorg/codeaurora/ims/IImsRadioIndication;I)Lorg/codeaurora/ims/IImsRadio;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    .line 842
    return-void
.end method

.method private acquireWakeLock()V
    .locals 5

    .line 886
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 887
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 889
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHandler:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->removeMessages(I)V

    .line 890
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHandler:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 891
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHandler:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;

    iget v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLockTimeout:I

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 892
    nop

    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 893
    return-void

    .line 892
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearRegistrants()V
    .locals 2

    .line 346
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->unSetIncomingImsSms(Landroid/os/Handler;)V

    .line 347
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->unSetImsSmsStatusReport(Landroid/os/Handler;)V

    .line 348
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->unSetOnSuppServiceNotification(Landroid/os/Handler;)V

    .line 349
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForSuppServiceIndication(Landroid/os/Handler;)V

    .line 350
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 351
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 352
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 353
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 354
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRadioStateRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 355
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 356
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 357
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsaccRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 358
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 359
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 360
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsSubConfigChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 361
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRegistrationBlockStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 362
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 363
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 364
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRttMessageRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 365
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRttModifyRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 366
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mAutoRejectRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 367
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoiceInfoStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 368
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityStatusChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 369
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityInfoPendingRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 370
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWfcRoamingModeConfigRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 371
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mUssdInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 372
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeoLocationDataStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 373
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSipDtmfInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 374
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvDomainChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 375
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mConferenceCallStateCompletedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 376
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSmsCallbackModeChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 377
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStartRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 378
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStopRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 379
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiSimVoiceCapabilityChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 380
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mCiWlanNotificationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 381
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 382
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 383
    monitor-exit v0

    .line 384
    return-void

    .line 383
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearRequestsList(IZ)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "loggable"    # Z

    .line 927
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 928
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 929
    .local v1, "count":I
    if-eqz p2, :cond_0

    .line 930
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearRequestsList: mRequestList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 933
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_2

    .line 934
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/IFRequest;

    .line 935
    .local v4, "rr":Lorg/codeaurora/ims/IFRequest;
    if-eqz p2, :cond_1

    .line 936
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    .line 937
    invoke-static {v6}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 936
    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 939
    :cond_1
    invoke-virtual {v4, p1, v3}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 940
    invoke-virtual {v4}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 933
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 942
    .end local v2    # "i":I
    .end local v4    # "rr":Lorg/codeaurora/ims/IFRequest;
    :cond_2
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 943
    const/4 v2, 0x0

    iput v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    .line 944
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    .line 945
    .end local v1    # "count":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 948
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsUnsolCallListPresent:Z

    if-eqz v0, :cond_3

    .line 949
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsUnsolCallListPresent:Z

    .line 950
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mCallStateRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    new-instance v2, Ljava/lang/RuntimeException;

    .line 952
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->errorIdToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3, v3, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 951
    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 954
    :cond_3
    return-void

    .line 945
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private disableSrvStatus()V
    .locals 4

    .line 2089
    const-string v0, "disableSrvStatus"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2090
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    if-eqz v0, :cond_0

    .line 2091
    new-instance v0, Lorg/codeaurora/ims/ImsRilException;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsRilException;-><init>(ILjava/lang/String;)V

    .line 2092
    .local v0, "ex":Lorg/codeaurora/ims/ImsRilException;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v3, Lorg/codeaurora/telephony/utils/AsyncResult;

    invoke-direct {v3, v2, v2, v0}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2093
    invoke-virtual {v1, v3}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 2095
    .end local v0    # "ex":Lorg/codeaurora/ims/ImsRilException;
    :cond_0
    return-void
.end method

.method static errorIdToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .line 1041
    sparse-switch p0, :sswitch_data_0

    .line 1079
    const-string v0, "E_UNKNOWN"

    return-object v0

    .line 1077
    :sswitch_0
    const-string v0, "E_CF_SERVICE_NOT_REGISTERED"

    return-object v0

    .line 1075
    :sswitch_1
    const-string v0, "E_SEND_SIP_DTMF_FAILED"

    return-object v0

    .line 1073
    :sswitch_2
    const-string v0, "E_USSD_CS_FALLBACK"

    return-object v0

    .line 1071
    :sswitch_3
    const-string v0, "E_SS_MODIFIED_TO_DIAL_VIDEO"

    return-object v0

    .line 1069
    :sswitch_4
    const-string v0, "E_SS_MODIFIED_TO_SS"

    return-object v0

    .line 1067
    :sswitch_5
    const-string v0, "E_SS_MODIFIED_TO_USSD"

    return-object v0

    .line 1065
    :sswitch_6
    const-string v0, "E_SS_MODIFIED_TO_DIAL"

    return-object v0

    .line 1063
    :sswitch_7
    const-string v0, "E_FDN_CHECK_FAILURE"

    return-object v0

    .line 1061
    :sswitch_8
    const-string v0, "E_NETWORK_NOT_SUPPORTED"

    return-object v0

    .line 1059
    :sswitch_9
    const-string v0, "E_REJECTED_BY_REMOTE"

    return-object v0

    .line 1057
    :sswitch_a
    const-string v0, "E_INVALID_PARAMETER"

    return-object v0

    .line 1055
    :sswitch_b
    const-string v0, "E_UNUSED"

    return-object v0

    .line 1053
    :sswitch_c
    const-string v0, "E_CANCELLED"

    return-object v0

    .line 1051
    :sswitch_d
    const-string v0, "E_REQUEST_NOT_SUPPORTED"

    return-object v0

    .line 1049
    :sswitch_e
    const-string v0, "E_PASSWORD_INCORRECT"

    return-object v0

    .line 1047
    :sswitch_f
    const-string v0, "E_GENERIC_FAILURE"

    return-object v0

    .line 1045
    :sswitch_10
    const-string v0, "E_RADIO_NOT_AVAILABLE"

    return-object v0

    .line 1043
    :sswitch_11
    const-string v0, "SUCCESS"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_11
        0x1 -> :sswitch_10
        0x2 -> :sswitch_f
        0x3 -> :sswitch_e
        0x6 -> :sswitch_d
        0x7 -> :sswitch_c
        0x10 -> :sswitch_b
        0x1b -> :sswitch_a
        0x1c -> :sswitch_9
        0x1e -> :sswitch_8
        0x22 -> :sswitch_7
        0x23 -> :sswitch_6
        0x24 -> :sswitch_5
        0x25 -> :sswitch_4
        0x26 -> :sswitch_3
        0x2f -> :sswitch_2
        0x30 -> :sswitch_1
        0x31 -> :sswitch_0
    .end sparse-switch
.end method

.method static facilityStringToInt(Ljava/lang/String;)I
    .locals 2
    .param p0, "sc"    # Ljava/lang/String;

    .line 2480
    if-eqz p0, :cond_2

    .line 2484
    const-string v0, "CLIP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2485
    const/4 v0, 0x1

    return v0

    .line 2487
    :cond_0
    const-string v0, "COLP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2488
    const/4 v0, 0x2

    return v0

    .line 2490
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 2481
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid supplementary service"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findAndRemoveRequestFromList(I)Lorg/codeaurora/ims/IFRequest;
    .locals 5
    .param p1, "serial"    # I

    .line 957
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 958
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 959
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/IFRequest;

    .line 961
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    iget v4, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    if-ne v4, p1, :cond_1

    .line 962
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 963
    iget v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    if-lez v4, :cond_0

    .line 964
    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    .line 965
    :cond_0
    monitor-exit v0

    return-object v3

    .line 958
    .end local v3    # "rr":Lorg/codeaurora/ims/IFRequest;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 968
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_2
    monitor-exit v0

    .line 970
    const/4 v0, 0x0

    return-object v0

    .line 968
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initNotifyRegistrants()V
    .locals 2

    .line 845
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 846
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 847
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 848
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 849
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRadioStateRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 850
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 851
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 852
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsaccRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 853
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 854
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 855
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsSubConfigChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 856
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRegistrationBlockStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 857
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 858
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 859
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRttMessageRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 860
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRttModifyRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 861
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mAutoRejectRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 862
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoiceInfoStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 863
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityStatusChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 864
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityInfoPendingRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 865
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWfcRoamingModeConfigRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 866
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mUssdInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 867
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeoLocationDataStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 868
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSipDtmfInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 869
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvDomainChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 870
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mConferenceCallStateCompletedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 871
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSmsCallbackModeChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 872
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStartRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 873
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStopRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 874
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiSimVoiceCapabilityChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 875
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mCiWlanNotificationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 876
    return-void
.end method

.method static msgIdToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .line 1085
    sparse-switch p0, :sswitch_data_0

    .line 1311
    const-string v0, "<unknown message>"

    return-object v0

    .line 1309
    :sswitch_0
    const-string v0, "UNSOL_C_IWLAN_NOTIFICATION"

    return-object v0

    .line 1305
    :sswitch_1
    const-string v0, "UNSOL_INCOMING_CALL_AUTO_REJECTED"

    return-object v0

    .line 1307
    :sswitch_2
    const-string v0, "UNSOL_PRE_ALERTING_CALL_INFO_AVAILABLE"

    return-object v0

    .line 1303
    :sswitch_3
    const-string v0, "UNSOL_MULTI_SIM_VOICE_CAPABILITY_CHANGED"

    return-object v0

    .line 1301
    :sswitch_4
    const-string v0, "UNSOL_INCOMING_DTMF_STOP"

    return-object v0

    .line 1299
    :sswitch_5
    const-string v0, "UNSOL_INCOMING_DTMF_START"

    return-object v0

    .line 1297
    :sswitch_6
    const-string v0, "UNSOL_SCBM_UPDATE_IND"

    return-object v0

    .line 1295
    :sswitch_7
    const-string v0, "UNSOL_CONFERENCE_CALL_STATE_COMPLETED"

    return-object v0

    .line 1293
    :sswitch_8
    const-string v0, "UNSOL_SERVICE_DOMAIN_CHANGED"

    return-object v0

    .line 1291
    :sswitch_9
    const-string v0, "UNSOL_SIP_DTMF_RECEIVED"

    return-object v0

    .line 1289
    :sswitch_a
    const-string v0, "UNSOL_USSD_RECEIVED"

    return-object v0

    .line 1287
    :sswitch_b
    const-string v0, "UNSOL_RETRIEVE_GEO_LOCATION_DATA_STATUS"

    return-object v0

    .line 1285
    :sswitch_c
    const-string v0, "UNSOL_CALL_COMPOSER_INFO_AVAILABLE_IND"

    return-object v0

    .line 1283
    :sswitch_d
    const-string v0, "UNSOL_AUTO_CALL_COMPOSER_CALL_REJECTION_IND"

    return-object v0

    .line 1281
    :sswitch_e
    const-string v0, "UNSOL_USSD_FAILED"

    return-object v0

    .line 1279
    :sswitch_f
    const-string v0, "UNSOL_MODEM_SUPPORTS_WFC_ROAMING_MODE"

    return-object v0

    .line 1277
    :sswitch_10
    const-string v0, "UNSOL_MULTI_IDENTITY_INFO_PENDING"

    return-object v0

    .line 1275
    :sswitch_11
    const-string v0, "UNSOL_MULTI_IDENTITY_REGISTRATION_STATUS_CHANGE"

    return-object v0

    .line 1273
    :sswitch_12
    const-string v0, "UNSOL_VOICE_INFO"

    return-object v0

    .line 1271
    :sswitch_13
    const-string v0, "UNSOL_AUTO_CALL_REJECTION_IND"

    return-object v0

    .line 1269
    :sswitch_14
    const-string v0, "UNSOL_INCOMING_IMS_SMS"

    return-object v0

    .line 1267
    :sswitch_15
    const-string v0, "UNSOL_IMS_SMS_STATUS_REPORT"

    return-object v0

    .line 1265
    :sswitch_16
    const-string v0, "UNSOL_ON_SS"

    return-object v0

    .line 1263
    :sswitch_17
    const-string v0, "UNSOL_RESPONSE_RTT_MSG_RECEIVED"

    return-object v0

    .line 1261
    :sswitch_18
    const-string v0, "UNSOL_RESPONSE_REGISTRATION_BLOCK_STATUS"

    return-object v0

    .line 1259
    :sswitch_19
    const-string v0, "UNSOL_IMS_SUB_CONFIG_CHANGED"

    return-object v0

    .line 1257
    :sswitch_1a
    const-string v0, "UNSOL_PARTICIPANT_STATUS_INFO"

    return-object v0

    .line 1255
    :sswitch_1b
    const-string v0, "UNSOL_SSAC_CHANGED"

    return-object v0

    .line 1253
    :sswitch_1c
    const-string v0, "UNSOL_VOPS_CHANGED"

    return-object v0

    .line 1251
    :sswitch_1d
    const-string v0, "UNSOL_VOWIFI_CALL_QUALITY"

    return-object v0

    .line 1247
    :sswitch_1e
    const-string v0, "UNSOL_REQUEST_GEOLOCATION"

    return-object v0

    .line 1249
    :sswitch_1f
    const-string v0, "UNSOL_REFRESH_VICE_INFO"

    return-object v0

    .line 1245
    :sswitch_20
    const-string v0, "UNSOL_MWI"

    return-object v0

    .line 1243
    :sswitch_21
    const-string v0, "UNSOL_RADIO_STATE_CHANGED"

    return-object v0

    .line 1241
    :sswitch_22
    const-string v0, "UNSOL_TTY_NOTIFICATION"

    return-object v0

    .line 1239
    :sswitch_23
    const-string v0, "UNSOL_SUPP_SVC_NOTIFICATION"

    return-object v0

    .line 1237
    :sswitch_24
    const-string v0, "UNSOL_SRV_STATUS_UPDATE"

    return-object v0

    .line 1235
    :sswitch_25
    const-string v0, "UNSOL_REFRESH_CONF_INFO"

    return-object v0

    .line 1233
    :sswitch_26
    const-string v0, "UNSOL_RESPONSE_HANDOVER"

    return-object v0

    .line 1115
    :sswitch_27
    const-string v0, "UNSOL_MODIFY_CALL"

    return-object v0

    .line 1229
    :sswitch_28
    const-string v0, "UNSOL_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 1225
    :sswitch_29
    const-string v0, "UNSOL_ENTER_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 1219
    :sswitch_2a
    const-string v0, "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED"

    return-object v0

    .line 1227
    :sswitch_2b
    const-string v0, "UNSOL_RINGBACK_TONE"

    return-object v0

    .line 1223
    :sswitch_2c
    const-string v0, "UNSOL_CALL_RING"

    return-object v0

    .line 1221
    :sswitch_2d
    const-string v0, "UNSOL_RESPONSE_CALL_STATE_CHANGED"

    return-object v0

    .line 1217
    :sswitch_2e
    const-string v0, "REQUEST_EXIT_SCBM"

    return-object v0

    .line 1215
    :sswitch_2f
    const-string v0, "REQUEST_QUERY_MULTI_SIM_VOICE_CAPABILITY"

    return-object v0

    .line 1213
    :sswitch_30
    const-string v0, "REQUEST_SET_MEDIA_CONFIG"

    return-object v0

    .line 1211
    :sswitch_31
    const-string v0, "REQUEST_SIP_DTMF"

    return-object v0

    .line 1209
    :sswitch_32
    const-string v0, "REQUEST_CANCEL_USSD"

    return-object v0

    .line 1207
    :sswitch_33
    const-string v0, "REQUEST_USSD"

    return-object v0

    .line 1205
    :sswitch_34
    const-string v0, "CALL_COMPOSER_DIAL"

    return-object v0

    .line 1203
    :sswitch_35
    const-string v0, "REQUEST_EMERGENCY_DIAL"

    return-object v0

    .line 1201
    :sswitch_36
    const-string v0, "REQUEST_QUERY_VIRTUAL_LINE_INFO"

    return-object v0

    .line 1199
    :sswitch_37
    const-string v0, "REQUEST_REGISTER_MULTI_IDENTITY_LINES"

    return-object v0

    .line 1197
    :sswitch_38
    const-string v0, "REQUEST_ACK_IMS_SMS_STATUS_REPORT"

    return-object v0

    .line 1195
    :sswitch_39
    const-string v0, "REQUEST_ACK_IMS_SMS"

    return-object v0

    .line 1193
    :sswitch_3a
    const-string v0, "REQUEST_SEND_IMS_SMS"

    return-object v0

    .line 1191
    :sswitch_3b
    const-string v0, "REQUEST_CANCEL_MODIFY_CALL"

    return-object v0

    .line 1189
    :sswitch_3c
    const-string v0, "REQUEST_SEND_RTT_MSG"

    return-object v0

    .line 1187
    :sswitch_3d
    const-string v0, "REQUEST_GET_IMS_SUB_CONFIG"

    return-object v0

    .line 1185
    :sswitch_3e
    const-string v0, "REQUEST_SET_HANDOVER_CONFIG"

    return-object v0

    .line 1183
    :sswitch_3f
    const-string v0, "REQUEST_GET_HANDOVER_CONFIG"

    return-object v0

    .line 1181
    :sswitch_40
    const-string v0, "REQUEST_GET_VOLTE_PREF"

    return-object v0

    .line 1179
    :sswitch_41
    const-string v0, "REQUEST_SET_VOLTE_PREF"

    return-object v0

    .line 1177
    :sswitch_42
    const-string v0, "REQUEST_GET_SSAC_INFO"

    return-object v0

    .line 1175
    :sswitch_43
    const-string v0, "REQUEST_GET_VOPS_INFO"

    return-object v0

    .line 1173
    :sswitch_44
    const-string v0, "REQUEST_SEND_GEOLOCATION_INFO"

    return-object v0

    .line 1171
    :sswitch_45
    const-string v0, "REQUEST_GET_IMS_CONFIG"

    return-object v0

    .line 1169
    :sswitch_46
    const-string v0, "REQUEST_SET_IMS_CONFIG"

    return-object v0

    .line 1159
    :sswitch_47
    const-string v0, "REQUEST_SET_WIFI_CALLING_STATUS"

    return-object v0

    .line 1157
    :sswitch_48
    const-string v0, "REQUEST_GET_WIFI_CALLING_STATUS"

    return-object v0

    .line 1155
    :sswitch_49
    const-string v0, "REQUEST_GET_RTP_ERROR_STATISTICS"

    return-object v0

    .line 1153
    :sswitch_4a
    const-string v0, "REQUEST_GET_RTP_STATISTICS"

    return-object v0

    .line 1109
    :sswitch_4b
    const-string v0, "REQUEST_SEND_UI_TTY_MODE"

    return-object v0

    .line 1167
    :sswitch_4c
    const-string v0, "REQUEST_RESUME"

    return-object v0

    .line 1165
    :sswitch_4d
    const-string v0, "REQUEST_HOLD"

    return-object v0

    .line 1163
    :sswitch_4e
    const-string v0, "REQUEST_SET_COLR"

    return-object v0

    .line 1161
    :sswitch_4f
    const-string v0, "REQUEST_GET_COLR"

    return-object v0

    .line 1093
    :sswitch_50
    const-string v0, "REQUEST_DEFLECT_CALL"

    return-object v0

    .line 1151
    :sswitch_51
    const-string v0, "REQUEST_SUPP_SVC_STATUS"

    return-object v0

    .line 1135
    :sswitch_52
    const-string v0, "REQUEST_SET_SERVICE_STATUS"

    return-object v0

    .line 1133
    :sswitch_53
    const-string v0, "REQUEST_QUERY_SERVICE_STATUS"

    return-object v0

    .line 1095
    :sswitch_54
    const-string v0, "REQUEST_ADD_PARTICIPANT"

    return-object v0

    .line 1149
    :sswitch_55
    const-string v0, "REQUEST_SET_SUPP_SVC_NOTIFICATION"

    return-object v0

    .line 1231
    :sswitch_56
    const-string v0, "REQUEST_IMS_REG_STATE_CHANGE"

    return-object v0

    .line 1147
    :sswitch_57
    const-string v0, "REQUEST_SET_CALL_WAITING"

    return-object v0

    .line 1145
    :sswitch_58
    const-string v0, "REQUEST_QUERY_CALL_WAITING"

    return-object v0

    .line 1143
    :sswitch_59
    const-string v0, "REQUEST_SET_CALL_FORWARD_STATUS"

    return-object v0

    .line 1141
    :sswitch_5a
    const-string v0, "REQUEST_QUERY_CALL_FORWARD_STATUS"

    return-object v0

    .line 1139
    :sswitch_5b
    const-string v0, "REQUEST_SET_CLIR"

    return-object v0

    .line 1137
    :sswitch_5c
    const-string v0, "REQUEST_GET_CLIR"

    return-object v0

    .line 1131
    :sswitch_5d
    const-string v0, "REQUEST_QUERY_CLIP"

    return-object v0

    .line 1113
    :sswitch_5e
    const-string v0, "MODIFY_CALL_CONFIRM"

    return-object v0

    .line 1111
    :sswitch_5f
    const-string v0, "MODIFY_CALL_INITIATE"

    return-object v0

    .line 1107
    :sswitch_60
    const-string v0, "UDUB"

    return-object v0

    .line 1123
    :sswitch_61
    const-string v0, "DTMF_STOP"

    return-object v0

    .line 1121
    :sswitch_62
    const-string v0, "DTMF_START"

    return-object v0

    .line 1119
    :sswitch_63
    const-string v0, "DTMF"

    return-object v0

    .line 1125
    :sswitch_64
    const-string v0, "REQUEST_EXPLICIT_CALL_TRANSFER"

    return-object v0

    .line 1127
    :sswitch_65
    const-string v0, "REQUEST_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 1105
    :sswitch_66
    const-string v0, "CONFERENCE"

    return-object v0

    .line 1103
    :sswitch_67
    const-string v0, "MessageId.REQUEST_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    return-object v0

    .line 1101
    :sswitch_68
    const-string v0, "HANGUP_FOREGROUND_RESUME_BACKGROUND"

    return-object v0

    .line 1099
    :sswitch_69
    const-string v0, "HANGUP_WAITING_OR_BACKGROUND"

    return-object v0

    .line 1087
    :sswitch_6a
    const-string v0, "GET_CURRENT_CALLS"

    return-object v0

    .line 1117
    :sswitch_6b
    const-string v0, "LAST_CALL_FAIL_CAUSE"

    return-object v0

    .line 1097
    :sswitch_6c
    const-string v0, "HANGUP"

    return-object v0

    .line 1091
    :sswitch_6d
    const-string v0, "REQUEST_ANSWER"

    return-object v0

    .line 1089
    :sswitch_6e
    const-string v0, "DIAL"

    return-object v0

    .line 1129
    :sswitch_6f
    const-string v0, "REQUEST_IMS_REGISTRATION_STATE"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6f
        0x2 -> :sswitch_6e
        0x3 -> :sswitch_6d
        0x4 -> :sswitch_6c
        0x5 -> :sswitch_6b
        0x6 -> :sswitch_6a
        0x7 -> :sswitch_69
        0x8 -> :sswitch_68
        0x9 -> :sswitch_67
        0xa -> :sswitch_66
        0xb -> :sswitch_65
        0xc -> :sswitch_64
        0xd -> :sswitch_63
        0xe -> :sswitch_62
        0xf -> :sswitch_61
        0x10 -> :sswitch_60
        0x11 -> :sswitch_5f
        0x12 -> :sswitch_5e
        0x13 -> :sswitch_5d
        0x14 -> :sswitch_5c
        0x15 -> :sswitch_5b
        0x16 -> :sswitch_5a
        0x17 -> :sswitch_59
        0x18 -> :sswitch_58
        0x19 -> :sswitch_57
        0x1a -> :sswitch_56
        0x1b -> :sswitch_55
        0x1c -> :sswitch_54
        0x1d -> :sswitch_53
        0x1e -> :sswitch_52
        0x1f -> :sswitch_51
        0x20 -> :sswitch_50
        0x21 -> :sswitch_4f
        0x22 -> :sswitch_4e
        0x25 -> :sswitch_4d
        0x26 -> :sswitch_4c
        0x27 -> :sswitch_4b
        0x28 -> :sswitch_4a
        0x29 -> :sswitch_49
        0x2a -> :sswitch_48
        0x2b -> :sswitch_47
        0x2c -> :sswitch_46
        0x2d -> :sswitch_45
        0x2e -> :sswitch_44
        0x30 -> :sswitch_43
        0x31 -> :sswitch_42
        0x32 -> :sswitch_41
        0x33 -> :sswitch_40
        0x34 -> :sswitch_3f
        0x35 -> :sswitch_3e
        0x36 -> :sswitch_3d
        0x37 -> :sswitch_3c
        0x38 -> :sswitch_3b
        0x39 -> :sswitch_3a
        0x3a -> :sswitch_39
        0x3b -> :sswitch_38
        0x3c -> :sswitch_37
        0x3d -> :sswitch_36
        0x3e -> :sswitch_35
        0x3f -> :sswitch_34
        0x40 -> :sswitch_33
        0x41 -> :sswitch_32
        0x42 -> :sswitch_31
        0x43 -> :sswitch_30
        0x44 -> :sswitch_2f
        0x45 -> :sswitch_2e
        0xc9 -> :sswitch_2d
        0xca -> :sswitch_2c
        0xcb -> :sswitch_2b
        0xcc -> :sswitch_2a
        0xcd -> :sswitch_29
        0xce -> :sswitch_28
        0xcf -> :sswitch_27
        0xd0 -> :sswitch_26
        0xd1 -> :sswitch_25
        0xd2 -> :sswitch_24
        0xd3 -> :sswitch_23
        0xd4 -> :sswitch_22
        0xd5 -> :sswitch_21
        0xd6 -> :sswitch_20
        0xd7 -> :sswitch_1f
        0xd8 -> :sswitch_1e
        0xd9 -> :sswitch_1d
        0xda -> :sswitch_1c
        0xdb -> :sswitch_1b
        0xdc -> :sswitch_1a
        0xdd -> :sswitch_19
        0xde -> :sswitch_18
        0xdf -> :sswitch_17
        0xe0 -> :sswitch_16
        0xe1 -> :sswitch_15
        0xe2 -> :sswitch_14
        0xe3 -> :sswitch_13
        0xe4 -> :sswitch_12
        0xe5 -> :sswitch_11
        0xe6 -> :sswitch_10
        0xe7 -> :sswitch_f
        0xe8 -> :sswitch_e
        0xe9 -> :sswitch_d
        0xea -> :sswitch_c
        0xeb -> :sswitch_b
        0xec -> :sswitch_a
        0xed -> :sswitch_9
        0xee -> :sswitch_8
        0xef -> :sswitch_7
        0xf0 -> :sswitch_6
        0xf1 -> :sswitch_5
        0xf2 -> :sswitch_4
        0xf3 -> :sswitch_3
        0xf4 -> :sswitch_2
        0xf5 -> :sswitch_1
        0xf6 -> :sswitch_0
    .end sparse-switch
.end method

.method private notifyServiceDown(Ljava/lang/String;)V
    .locals 4
    .param p1, "instanceName"    # Ljava/lang/String;

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDown : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 398
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;

    .line 399
    .local v2, "l":Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;->onServiceDown(I)V

    .line 400
    .end local v2    # "l":Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;
    goto :goto_0

    .line 401
    :cond_0
    monitor-exit v0

    .line 402
    return-void

    .line 401
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyServiceUp(Ljava/lang/String;)V
    .locals 4
    .param p1, "instanceName"    # Ljava/lang/String;

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceUp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 389
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;

    .line 390
    .local v2, "l":Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;->onServiceUp(I)V

    .line 391
    .end local v2    # "l":Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;
    goto :goto_0

    .line 392
    :cond_0
    monitor-exit v0

    .line 393
    return-void

    .line 392
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifySipDtmfInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "configCode"    # Ljava/lang/String;

    .line 759
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSipDtmfInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    if-eqz v0, :cond_0

    .line 760
    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 762
    :cond_0
    return-void
.end method

.method private notifyUssdInfo(Lorg/codeaurora/ims/UssdInfo;Lorg/codeaurora/ims/ImsRilException;)V
    .locals 3
    .param p1, "info"    # Lorg/codeaurora/ims/UssdInfo;
    .param p2, "ex"    # Lorg/codeaurora/ims/ImsRilException;

    .line 753
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mUssdInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    if-eqz v0, :cond_0

    .line 754
    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 756
    :cond_0
    return-void
.end method

.method private queueRequest(Lorg/codeaurora/ims/IFRequest;)V
    .locals 2
    .param p1, "rr"    # Lorg/codeaurora/ims/IFRequest;

    .line 911
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->acquireWakeLock()V

    .line 913
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 914
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    iget v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    .line 916
    monitor-exit v0

    .line 917
    return-void

    .line 916
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private releaseWakeLockIfDone()V
    .locals 2

    .line 896
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 897
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    if-nez v1, :cond_0

    .line 899
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 901
    :cond_0
    monitor-exit v0

    .line 902
    return-void

    .line 901
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeFromQueueAndSendResponse(I)V
    .locals 1
    .param p1, "token"    # I

    .line 766
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(II)V

    .line 767
    return-void
.end method

.method private removeFromQueueAndSendResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 783
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(IILjava/lang/Object;)V

    .line 784
    return-void
.end method

.method private removeFromQueueAndSendResponse(IILjava/lang/Object;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "ret"    # Ljava/lang/Object;

    .line 787
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->findAndRemoveRequestFromList(I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 789
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 790
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected solicited response or Invalid token id! token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 792
    return-void

    .line 794
    :cond_0
    invoke-direct {p0, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 795
    return-void
.end method

.method private removeFromQueueAndSendResponse(ILjava/lang/Object;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 770
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(IILjava/lang/Object;)V

    .line 771
    return-void
.end method

.method private retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p1, "req"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 975
    if-nez p2, :cond_0

    .line 976
    const-string v0, ""

    return-object v0

    .line 981
    :cond_0
    instance-of v0, p2, [I

    const-string v1, ", "

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v0, :cond_2

    .line 982
    move-object v0, p2

    check-cast v0, [I

    .line 983
    .local v0, "intArray":[I
    array-length v4, v0

    .line 984
    .local v4, "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 985
    .local v3, "sb":Ljava/lang/StringBuilder;
    if-lez v4, :cond_1

    .line 986
    const/4 v5, 0x0

    .line 987
    .local v5, "i":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    aget v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 988
    :goto_0
    if-ge v6, v4, :cond_1

    .line 989
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    aget v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v6, v7

    goto :goto_0

    .line 992
    .end local v7    # "i":I
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 994
    .local v0, "s":Ljava/lang/String;
    goto/16 :goto_4

    .end local v0    # "s":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "length":I
    :cond_2
    instance-of v0, p2, [Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 995
    move-object v0, p2

    check-cast v0, [Ljava/lang/String;

    .line 996
    .local v0, "strings":[Ljava/lang/String;
    array-length v4, v0

    .line 997
    .restart local v4    # "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 998
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    if-lez v4, :cond_3

    .line 999
    const/4 v5, 0x0

    .line 1000
    .restart local v5    # "i":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    aget-object v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    :goto_1
    if-ge v6, v4, :cond_3

    .line 1002
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .restart local v7    # "i":I
    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v7

    goto :goto_1

    .line 1005
    .end local v7    # "i":I
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1007
    .local v0, "s":Ljava/lang/String;
    goto :goto_4

    .end local v0    # "s":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "length":I
    :cond_4
    const/16 v0, 0xc9

    if-eq p1, v0, :cond_6

    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    goto :goto_2

    .line 1016
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_4

    .line 1009
    .end local v0    # "s":Ljava/lang/String;
    :cond_6
    :goto_2
    move-object v0, p2

    check-cast v0, Ljava/util/ArrayList;

    .line 1010
    .local v0, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1011
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/DriverCallIms;

    .line 1012
    .local v3, "dc":Lorg/codeaurora/ims/DriverCallIms;
    const-string v4, "["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    .end local v3    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    goto :goto_3

    .line 1014
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1015
    .local v0, "s":Ljava/lang/String;
    nop

    .line 1018
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :goto_4
    return-object v0
.end method

.method private sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z
    .locals 1
    .param p1, "rr"    # Lorg/codeaurora/ims/IFRequest;
    .param p2, "msgIdString"    # Ljava/lang/String;

    .line 1387
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "rr"    # Lorg/codeaurora/ims/IFRequest;
    .param p2, "msgIdString"    # Ljava/lang/String;
    .param p3, "ret"    # Ljava/lang/Object;

    .line 1398
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadio;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1399
    const/4 v0, 0x0

    return v0

    .line 1401
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsRadio HAL is not available. Can\'t send "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to QCRIL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1403
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p3}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 1404
    invoke-virtual {p1}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 1405
    return v0
.end method

.method private sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V
    .locals 2
    .param p1, "rr"    # Lorg/codeaurora/ims/IFRequest;
    .param p2, "error"    # I
    .param p3, "ret"    # Ljava/lang/Object;

    .line 807
    if-eqz p2, :cond_0

    .line 808
    invoke-virtual {p1, p2, p3}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 809
    invoke-virtual {p1}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 810
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    .line 811
    return-void

    .line 814
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/codeaurora/ims/IFRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    .line 815
    invoke-direct {p0, v1, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 814
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 817
    iget-object v0, p1, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_1

    .line 818
    iget-object v0, p1, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lorg/codeaurora/telephony/utils/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 819
    iget-object v0, p1, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 822
    :cond_1
    invoke-virtual {p1}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 823
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    .line 824
    return-void
.end method

.method private setCallForwardInternal(IIIIIIILjava/lang/String;ILandroid/os/Message;)V
    .locals 17
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "action"    # I
    .param p6, "cfReason"    # I
    .param p7, "serviceClass"    # I
    .param p8, "number"    # Ljava/lang/String;
    .param p9, "timeSeconds"    # I
    .param p10, "response"    # Landroid/os/Message;

    .line 2231
    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallForwardInternal cfReason= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v13, p6

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " serviceClass = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v14, p7

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "number = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v15, p8

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "startHour = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v12, p1

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "startMinute = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v11, p2

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "endHour = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v10, p3

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "endMin = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v9, p4

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2235
    const/16 v16, 0x17

    .line 2236
    .local v16, "msgId":I
    const/16 v0, 0x17

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v8

    .line 2237
    .local v8, "msgIdString":Ljava/lang/String;
    move-object/from16 v7, p10

    invoke-static {v0, v7}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v6

    .line 2239
    .local v6, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {v1, v6, v8}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2240
    return-void

    .line 2243
    :cond_0
    invoke-direct {v1, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2245
    :try_start_0
    invoke-virtual {v1, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2246
    iget-object v2, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v3, v6, Lorg/codeaurora/ims/IFRequest;->mSerial:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v4, p1

    move/from16 v5, p2

    move-object v13, v6

    .end local v6    # "rr":Lorg/codeaurora/ims/IFRequest;
    .local v13, "rr":Lorg/codeaurora/ims/IFRequest;
    move/from16 v6, p3

    move/from16 v7, p4

    move-object v14, v8

    .end local v8    # "msgIdString":Ljava/lang/String;
    .local v14, "msgIdString":Ljava/lang/String;
    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    :try_start_1
    invoke-interface/range {v2 .. v12}, Lorg/codeaurora/ims/IImsRadio;->setCallForwardStatus(IIIIIIIILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2251
    goto :goto_1

    .line 2248
    :catch_0
    move-exception v0

    goto :goto_0

    .end local v13    # "rr":Lorg/codeaurora/ims/IFRequest;
    .end local v14    # "msgIdString":Ljava/lang/String;
    .restart local v6    # "rr":Lorg/codeaurora/ims/IFRequest;
    .restart local v8    # "msgIdString":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v13, v6

    move-object v14, v8

    .line 2249
    .end local v6    # "rr":Lorg/codeaurora/ims/IFRequest;
    .end local v8    # "msgIdString":Ljava/lang/String;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v13    # "rr":Lorg/codeaurora/ims/IFRequest;
    .restart local v14    # "msgIdString":Ljava/lang/String;
    :goto_0
    iget v2, v13, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "to IImsRadio: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2252
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private suppSvcStatusInternal(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 8
    .param p1, "operationType"    # I
    .param p2, "facility"    # I
    .param p3, "inCbNumList"    # [Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "serviceClass"    # I
    .param p6, "response"    # Landroid/os/Message;

    .line 2414
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;Z)V

    .line 2416
    return-void
.end method


# virtual methods
.method public acceptCall(Landroid/os/Message;I)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callType"    # I

    .line 1531
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->acceptCall(Landroid/os/Message;II)V

    .line 1532
    return-void
.end method

.method public acceptCall(Landroid/os/Message;II)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callType"    # I
    .param p3, "rttMode"    # I

    .line 1536
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->acceptCall(Landroid/os/Message;III)V

    .line 1537
    return-void
.end method

.method public acceptCall(Landroid/os/Message;III)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callType"    # I
    .param p3, "ipPresentation"    # I
    .param p4, "rttMode"    # I

    .line 1541
    const/4 v0, 0x3

    .line 1542
    .local v0, "msgId":I
    const/4 v1, 0x3

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1544
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1546
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1547
    return-void

    .line 1550
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1552
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1553
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p2, p3, p4}, Lorg/codeaurora/ims/IImsRadio;->answer(IIII)V

    .line 1554
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rtt mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and ipPresentation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to HAL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1559
    goto :goto_0

    .line 1556
    :catch_0
    move-exception v3

    .line 1557
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1558
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1560
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public acknowledgeSms(IILandroid/os/Message;)V
    .locals 6
    .param p1, "messageRef"    # I
    .param p2, "result"    # I
    .param p3, "target"    # Landroid/os/Message;

    .line 1605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acknowledgeSms: messageRef: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1607
    const/16 v0, 0x3a

    .line 1608
    .local v0, "msgId":I
    const/16 v1, 0x3a

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1611
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p3}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 1612
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1613
    return-void

    .line 1617
    :cond_0
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1618
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1, p2}, Lorg/codeaurora/ims/IImsRadio;->acknowledgeSms(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1621
    goto :goto_0

    .line 1619
    :catch_0
    move-exception v4

    .line 1620
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "request to ImsRadio: Exception: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1622
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v3}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 1623
    return-void
.end method

.method public acknowledgeSmsReport(IILandroid/os/Message;)V
    .locals 6
    .param p1, "messageRef"    # I
    .param p2, "result"    # I
    .param p3, "target"    # Landroid/os/Message;

    .line 1626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acknowledgeSmsReport: messageRef: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1628
    const/16 v0, 0x3b

    .line 1629
    .local v0, "msgId":I
    const/16 v1, 0x3b

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1632
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p3}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 1634
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1635
    return-void

    .line 1639
    :cond_0
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1640
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1, p2}, Lorg/codeaurora/ims/IImsRadio;->acknowledgeSmsReport(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1643
    goto :goto_0

    .line 1641
    :catch_0
    move-exception v4

    .line 1642
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "to ImsRadioV12: Exception: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1644
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v3}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 1645
    return-void
.end method

.method public addParticipant(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Landroid/os/Message;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .param p4, "result"    # Landroid/os/Message;

    .line 1365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addParticipant address = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " clirMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " callDetails = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1367
    const/16 v0, 0x1c

    .line 1368
    .local v0, "msgId":I
    const/16 v1, 0x1c

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1369
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p4}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1371
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1372
    return-void

    .line 1375
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1378
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1379
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadio;->addParticipant(ILjava/lang/String;ILorg/codeaurora/ims/CallDetails;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1383
    goto :goto_0

    .line 1380
    :catch_0
    move-exception v3

    .line 1381
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1382
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1384
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public cancelModifyCall(Landroid/os/Message;I)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callId"    # I

    .line 1881
    const-string v0, "cancelModifyCall"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1882
    const/16 v0, 0x38

    .line 1883
    .local v0, "msgId":I
    const/16 v1, 0x38

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1884
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1886
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1887
    return-void

    .line 1890
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1892
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1893
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " request to ImsRadio - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " callId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1895
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p2}, Lorg/codeaurora/ims/IImsRadio;->cancelModifyCall(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1899
    goto :goto_0

    .line 1896
    :catch_0
    move-exception v3

    .line 1897
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1898
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1900
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 1510
    const-string v0, "Cancel pending USSD"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1511
    const/16 v0, 0x41

    .line 1512
    .local v0, "msgId":I
    const/16 v1, 0x41

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1513
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1515
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1516
    return-void

    .line 1519
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1521
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1522
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->cancelPendingUssd(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1526
    goto :goto_0

    .line 1523
    :catch_0
    move-exception v3

    .line 1524
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1525
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1527
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 1965
    const/16 v0, 0xa

    .line 1966
    .local v0, "msgId":I
    const/16 v1, 0xa

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1967
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1969
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1970
    return-void

    .line 1973
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1975
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1976
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->conference(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1980
    goto :goto_0

    .line 1977
    :catch_0
    move-exception v3

    .line 1978
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1979
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1981
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public deflectCall(ILjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deflect call to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "connid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1564
    const/16 v0, 0x20

    .line 1565
    .local v0, "msgId":I
    const/16 v1, 0x20

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1566
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p3}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1568
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1569
    return-void

    .line 1572
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1574
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1575
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p1, p2}, Lorg/codeaurora/ims/IImsRadio;->deflectCall(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1579
    goto :goto_0

    .line 1576
    :catch_0
    move-exception v3

    .line 1577
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1578
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1580
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public deregisterForImsSubConfigChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 421
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsSubConfigChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 422
    return-void
.end method

.method public deregisterForMultiSimVoiceCapabilityChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 675
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiSimVoiceCapabilityChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 676
    return-void
.end method

.method public deregisterForRttMessage(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2647
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRttMessageRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2648
    return-void
.end method

.method public deregisterForVoiceInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2655
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoiceInfoStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2656
    return-void
.end method

.method public dial(Ljava/lang/String;Lorg/codeaurora/ims/EmergencyCallInfo;ILorg/codeaurora/ims/CallDetails;ZLandroid/os/Message;)V
    .locals 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "eInfo"    # Lorg/codeaurora/ims/EmergencyCallInfo;
    .param p3, "clirMode"    # I
    .param p4, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .param p5, "isEncrypted"    # Z
    .param p6, "result"    # Landroid/os/Message;

    .line 1411
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lorg/codeaurora/ims/ImsSenderRxr;->dial(Ljava/lang/String;Lorg/codeaurora/ims/EmergencyCallInfo;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/RedialInfo;Landroid/os/Message;)V

    .line 1412
    return-void
.end method

.method public dial(Ljava/lang/String;Lorg/codeaurora/ims/EmergencyCallInfo;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/RedialInfo;Landroid/os/Message;)V
    .locals 16
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "eInfo"    # Lorg/codeaurora/ims/EmergencyCallInfo;
    .param p3, "clirMode"    # I
    .param p4, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .param p5, "isEncrypted"    # Z
    .param p6, "ccInfo"    # Lorg/codeaurora/ims/CallComposerInfo;
    .param p7, "redialInfo"    # Lorg/codeaurora/ims/RedialInfo;
    .param p8, "result"    # Landroid/os/Message;

    .line 1417
    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dial Request - address= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "clirMode= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v11, p3

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " callDetails= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v12, p4

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isEncrypted= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v13, p5

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " redialInfo "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v14, p7

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1420
    const/4 v0, 0x2

    .line 1421
    .local v0, "msgId":I
    if-eqz p2, :cond_0

    iget-object v2, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lorg/codeaurora/ims/IImsRadio;->isFeatureSupported(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1422
    const/16 v0, 0x3e

    move v15, v0

    goto :goto_0

    .line 1423
    :cond_0
    if-eqz p6, :cond_1

    iget-object v2, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lorg/codeaurora/ims/IImsRadio;->isFeatureSupported(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1424
    const/16 v0, 0x3f

    move v15, v0

    goto :goto_0

    .line 1426
    :cond_1
    move v15, v0

    .end local v0    # "msgId":I
    .local v15, "msgId":I
    :goto_0
    invoke-static {v15}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v10

    .line 1427
    .local v10, "msgIdString":Ljava/lang/String;
    move-object/from16 v9, p8

    invoke-static {v15, v9}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v8

    .line 1429
    .local v8, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {v1, v8, v10}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1430
    return-void

    .line 1433
    :cond_2
    invoke-direct {v1, v8}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1435
    :try_start_0
    invoke-virtual {v1, v8}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " request to IImsRadio - token = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v8, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1437
    iget-object v2, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v3, v8, Lorg/codeaurora/ims/IFRequest;->mSerial:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object v11, v8

    .end local v8    # "rr":Lorg/codeaurora/ims/IFRequest;
    .local v11, "rr":Lorg/codeaurora/ims/IFRequest;
    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object v12, v10

    .end local v10    # "msgIdString":Ljava/lang/String;
    .local v12, "msgIdString":Ljava/lang/String;
    move-object/from16 v10, p7

    :try_start_1
    invoke-interface/range {v2 .. v10}, Lorg/codeaurora/ims/IImsRadio;->dial(ILjava/lang/String;Lorg/codeaurora/ims/EmergencyCallInfo;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/RedialInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1443
    goto :goto_2

    .line 1440
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v11    # "rr":Lorg/codeaurora/ims/IFRequest;
    .end local v12    # "msgIdString":Ljava/lang/String;
    .restart local v8    # "rr":Lorg/codeaurora/ims/IFRequest;
    .restart local v10    # "msgIdString":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v11, v8

    move-object v12, v10

    .line 1441
    .end local v8    # "rr":Lorg/codeaurora/ims/IFRequest;
    .end local v10    # "msgIdString":Ljava/lang/String;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v11    # "rr":Lorg/codeaurora/ims/IFRequest;
    .restart local v12    # "msgIdString":Ljava/lang/String;
    :goto_1
    iget v2, v11, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "to IImsRadio: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1444
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 338
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->clearRegistrants()V

    .line 339
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    if-nez v0, :cond_0

    .line 340
    return-void

    .line 342
    :cond_0
    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadio;->dispose()V

    .line 343
    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 2325
    const-string v0, "exitEmergencyCallbackMode"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2326
    const/16 v0, 0xb

    .line 2327
    .local v0, "msgId":I
    const/16 v1, 0xb

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2328
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2330
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2331
    return-void

    .line 2334
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2336
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2337
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->exitEmergencyCallbackMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2341
    goto :goto_0

    .line 2338
    :catch_0
    move-exception v3

    .line 2339
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2340
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2342
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public exitScbm(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 2345
    const-string v0, "exitScbm"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2346
    const/16 v0, 0x45

    .line 2347
    .local v0, "msgId":I
    const/16 v1, 0x45

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2348
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2350
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2351
    return-void

    .line 2354
    :cond_0
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->isFeatureSupported(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2355
    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-direct {p0, v1, v3, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 2356
    return-void

    .line 2359
    :cond_1
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2361
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2362
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->exitSmsCallBackMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2366
    goto :goto_0

    .line 2363
    :catch_0
    move-exception v3

    .line 2364
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2365
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2367
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public explicitCallTransfer(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 10
    .param p1, "srcCallId"    # I
    .param p2, "type"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "destCallId"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 1985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "explicitCallTransfer srcCallId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " number= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "destCallId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1987
    const/16 v0, 0xc

    .line 1988
    .local v0, "msgId":I
    const/16 v1, 0xc

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1989
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p5}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1991
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1992
    return-void

    .line 1995
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1997
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1998
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    move v6, p1

    move v7, p2

    move-object v8, p3

    move v9, p4

    invoke-interface/range {v4 .. v9}, Lorg/codeaurora/ims/IImsRadio;->explicitCallTransfer(IIILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2003
    goto :goto_0

    .line 2000
    :catch_0
    move-exception v3

    .line 2001
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2002
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2004
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 2634
    const-string v0, "explicitCallTransfer : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2635
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 2119
    const-string v0, "getCLIR"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2120
    const/16 v0, 0x14

    .line 2121
    .local v0, "msgId":I
    const/16 v1, 0x14

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2122
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2124
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2125
    return-void

    .line 2128
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2130
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2131
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->getClir(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2135
    goto :goto_0

    .line 2132
    :catch_0
    move-exception v3

    .line 2133
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetClir request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2136
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getCOLR(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 2440
    const-string v0, "getCOLR"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2441
    const/16 v0, 0x21

    .line 2442
    .local v0, "msgId":I
    const/16 v1, 0x21

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2443
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2445
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2446
    return-void

    .line 2449
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2451
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2452
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->getColr(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2456
    goto :goto_0

    .line 2453
    :catch_0
    move-exception v3

    .line 2454
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2455
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetColr request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2457
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 2626
    const-string v0, "getCurrentCalls : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2627
    return-void
.end method

.method public getHandoverConfig(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .line 2588
    const-string v0, "ImsSenderRxr"

    const-string v1, "getHandoverConfig : Not supported"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2589
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 1821
    const/4 v0, 0x1

    .line 1822
    .local v0, "msgId":I
    const/4 v1, 0x1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1823
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1825
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1826
    return-void

    .line 1829
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1831
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1832
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->getImsRegistrationState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1836
    goto :goto_0

    .line 1833
    :catch_0
    move-exception v3

    .line 1834
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1835
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1837
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getImsSubConfig(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 2534
    const-string v0, "getImsSubConfig"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2535
    const/16 v0, 0x36

    .line 2536
    .local v0, "msgId":I
    const/16 v1, 0x36

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2537
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2539
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2540
    return-void

    .line 2543
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2545
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2546
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->getImsSubConfig(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2550
    goto :goto_0

    .line 2547
    :catch_0
    move-exception v3

    .line 2548
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2549
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2551
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getIncomingSmsRegistrant()Lorg/codeaurora/telephony/utils/Registrant;
    .locals 1

    .line 688
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingSmsRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    return-object v0
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 2618
    const-string v0, "getLastCallFailCause : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2619
    return-void
.end method

.method public getPacketCount(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 2494
    const-string v0, "getPacketCount"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2495
    const/16 v0, 0x28

    .line 2496
    .local v0, "msgId":I
    const/16 v1, 0x28

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2497
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2499
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2500
    return-void

    .line 2503
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2505
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2506
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->getRtpStatistics(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2510
    goto :goto_0

    .line 2507
    :catch_0
    move-exception v3

    .line 2508
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2509
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2511
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getPacketErrorCount(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 2514
    const-string v0, "getPacketErrorCount"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2515
    const/16 v0, 0x29

    .line 2516
    .local v0, "msgId":I
    const/16 v1, 0x29

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2517
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2519
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2520
    return-void

    .line 2523
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2525
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2526
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->getRtpErrorStatistics(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2530
    goto :goto_0

    .line 2527
    :catch_0
    move-exception v3

    .line 2528
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2529
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2531
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getSendSmsStatusReportRegistrant()Lorg/codeaurora/telephony/utils/Registrant;
    .locals 1

    .line 693
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSendSmsStatusReportRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    return-object v0
.end method

.method public getSmsFormat()Ljava/lang/String;
    .locals 3

    .line 1649
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadio;->getSmsFormat()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1650
    :catch_0
    move-exception v0

    .line 1651
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to getSmsFormat. Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1653
    .end local v0    # "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuppSvc(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 2383
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    .line 2384
    return-void
.end method

.method public getWifiCallingPreference(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .line 2579
    const-string v0, "getWifiCallingPreference : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2580
    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1679
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7fffffff

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V

    .line 1680
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 2638
    const-string v0, "hangupForegroundResumeBackground : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2639
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 2622
    const-string v0, "hangupWaitingOrBackground : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2623
    return-void
.end method

.method public hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V
    .locals 15
    .param p1, "connectionId"    # I
    .param p2, "userUri"    # Ljava/lang/String;
    .param p3, "confUri"    # Ljava/lang/String;
    .param p4, "mpty"    # Z
    .param p5, "failCause"    # I
    .param p6, "errorInfo"    # Ljava/lang/String;
    .param p7, "result"    # Landroid/os/Message;

    .line 1685
    move-object v1, p0

    const/4 v2, 0x4

    .line 1686
    .local v2, "msgId":I
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v3

    .line 1687
    .local v3, "msgIdString":Ljava/lang/String;
    move-object/from16 v4, p7

    invoke-static {v0, v4}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v5

    .line 1689
    .local v5, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v5, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1690
    return-void

    .line 1694
    :cond_0
    if-nez p4, :cond_1

    .line 1695
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->synchronizeMessage(Ljava/lang/String;II)V

    .line 1697
    :cond_1
    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1699
    :try_start_0
    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1700
    iget-object v7, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v8, v5, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v14, p6

    invoke-interface/range {v7 .. v14}, Lorg/codeaurora/ims/IImsRadio;->hangup(IILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1705
    goto :goto_0

    .line 1702
    :catch_0
    move-exception v0

    .line 1703
    .local v0, "ex":Ljava/lang/Exception;
    iget v6, v5, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1704
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "request to IImsRadio: Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1706
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public hold(Landroid/os/Message;I)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callId"    # I

    .line 1923
    const/16 v0, 0x25

    .line 1924
    .local v0, "msgId":I
    const/16 v1, 0x25

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1925
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1927
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1928
    return-void

    .line 1931
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1933
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1934
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " request to ImsRadio - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " callId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1936
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p2}, Lorg/codeaurora/ims/IImsRadio;->hold(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1940
    goto :goto_0

    .line 1937
    :catch_0
    move-exception v3

    .line 1938
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1939
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1941
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public isCrsSupported()Z
    .locals 2

    .line 409
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadio;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isFeatureSupported(I)Z
    .locals 1
    .param p1, "feature"    # I

    .line 413
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    invoke-interface {v0, p1}, Lorg/codeaurora/ims/IImsRadio;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isSmsSupported()Z
    .locals 2

    .line 405
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadio;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 1316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1317
    return-void
.end method

.method public logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V
    .locals 2
    .param p1, "rr"    # Lorg/codeaurora/ims/IFRequest;

    .line 1354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/codeaurora/ims/IFRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1355
    return-void
.end method

.method public logUnimplemented()V
    .locals 2

    .line 1329
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 1330
    .local v0, "e":Ljava/lang/Exception;
    nop

    .end local p0    # "this":Lorg/codeaurora/ims/ImsSenderRxr;
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1331
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lorg/codeaurora/ims/ImsSenderRxr;
    :catch_0
    move-exception v0

    .line 1332
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "Unimplemented method. Stack trace: "

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1333
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1335
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public logv(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 1320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1321
    return-void
.end method

.method public modifyCallConfirm(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 1903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyCallConfirm callModify= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1904
    const/16 v0, 0x12

    .line 1905
    .local v0, "msgId":I
    const/16 v1, 0x12

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1906
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1908
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1909
    return-void

    .line 1912
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1914
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1915
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p2}, Lorg/codeaurora/ims/IImsRadio;->modifyCallConfirm(ILorg/codeaurora/ims/CallModify;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1919
    goto :goto_0

    .line 1916
    :catch_0
    move-exception v3

    .line 1917
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1918
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1920
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public modifyCallInitiate(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 1861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyCallInitiate callModify= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1862
    const/16 v0, 0x11

    .line 1863
    .local v0, "msgId":I
    const/16 v1, 0x11

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1864
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1866
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1867
    return-void

    .line 1870
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1872
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1873
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p2}, Lorg/codeaurora/ims/IImsRadio;->modifyCallInitiate(ILorg/codeaurora/ims/CallModify;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1877
    goto :goto_0

    .line 1874
    :catch_0
    move-exception v3

    .line 1875
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1876
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1878
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 2285
    const-string v0, "queryClip"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2286
    const/16 v0, 0x13

    .line 2287
    .local v0, "msgId":I
    const/16 v1, 0x13

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2288
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2290
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2291
    return-void

    .line 2294
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2296
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2297
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->getClip(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2301
    goto :goto_0

    .line 2298
    :catch_0
    move-exception v3

    .line 2299
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2300
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetClip request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2302
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 2256
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;Z)V

    .line 2258
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;Z)V
    .locals 10
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;
    .param p5, "expectMore"    # Z

    .line 2262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCallForwardStatus cfReason= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " expectMore = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2265
    const/16 v0, 0x16

    .line 2266
    .local v0, "msgId":I
    const/16 v1, 0x16

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2267
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p4}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2269
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2270
    return-void

    .line 2273
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2275
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2276
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    move v6, p1

    move v7, p2

    move-object v8, p3

    move v9, p5

    invoke-interface/range {v4 .. v9}, Lorg/codeaurora/ims/IImsRadio;->queryCallForwardStatus(IIILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2281
    goto :goto_0

    .line 2278
    :catch_0
    move-exception v3

    .line 2279
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2280
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2282
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 6
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCallWaiting serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2160
    const/16 v0, 0x18

    .line 2161
    .local v0, "msgId":I
    const/16 v1, 0x18

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2163
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2165
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2166
    return-void

    .line 2169
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2171
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2172
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p1}, Lorg/codeaurora/ims/IImsRadio;->getCallWaiting(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2176
    goto :goto_0

    .line 2173
    :catch_0
    move-exception v3

    .line 2174
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2177
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 2372
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0, p4}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    .line 2373
    return-void
.end method

.method public queryIncomingCallBarring(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 2203
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v2

    const/4 v1, 0x3

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V

    .line 2205
    return-void
.end method

.method public queryMultiSimVoiceCapability(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 2554
    const-string v0, "queryMultiSimVoiceCapability"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2555
    const/16 v0, 0x44

    .line 2556
    .local v0, "msgId":I
    const/16 v1, 0x44

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2557
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2559
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2560
    return-void

    .line 2563
    :cond_0
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->isFeatureSupported(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2564
    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-direct {p0, v1, v3, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 2565
    return-void

    .line 2568
    :cond_1
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2570
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2571
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->queryMultiSimVoiceCapability(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2575
    goto :goto_0

    .line 2572
    :catch_0
    move-exception v3

    .line 2573
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2574
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2576
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public queryServiceStatus(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 1709
    const/16 v0, 0x1d

    .line 1710
    .local v0, "msgId":I
    const/16 v1, 0x1d

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1711
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1713
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1714
    return-void

    .line 1717
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1719
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1720
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->queryServiceStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1724
    goto :goto_0

    .line 1721
    :catch_0
    move-exception v3

    .line 1722
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1723
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Serivce status query request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1725
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public querySsacStatus(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .line 2600
    const-string v0, "querySsacStatus : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2601
    return-void
.end method

.method public queryVirtualLineInfo(Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "msisdn"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 2679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryVirtualLineInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2680
    const/16 v0, 0x3d

    .line 2681
    .local v0, "msgId":I
    const/16 v1, 0x3d

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2682
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 2684
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2685
    return-void

    .line 2687
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2689
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2690
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1}, Lorg/codeaurora/ims/IImsRadio;->queryVirtualLineInfo(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2694
    goto :goto_0

    .line 2691
    :catch_0
    move-exception v4

    .line 2692
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2693
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "to IImsRadio V1.4: Exception: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2695
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public queryVoltePref(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .line 2608
    const-string v0, "queryVoltePref : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2609
    return-void
.end method

.method public queryVopsStatus(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .line 2596
    const-string v0, "queryVopsStatus : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2597
    return-void
.end method

.method public registerForCallAutoRejection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 588
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 589
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mAutoRejectRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 590
    return-void
.end method

.method public registerForCiwlanNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 679
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mCiWlanNotificationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 680
    return-void
.end method

.method public registerForConferenceCallStateCompleted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 635
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 636
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mConferenceCallStateCompletedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 637
    return-void
.end method

.method public registerForGeoLocationDataStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 617
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 618
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeoLocationDataStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 619
    return-void
.end method

.method public registerForGeolocationRequest(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 490
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 491
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 492
    return-void
.end method

.method public registerForHandoverStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 454
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 455
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 456
    return-void
.end method

.method public registerForImsSubConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 417
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsSubConfigChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 418
    return-void
.end method

.method public registerForIncomingDtmfStart(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 653
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 654
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStartRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 655
    return-void
.end method

.method public registerForIncomingDtmfStop(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 662
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 663
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStopRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 664
    return-void
.end method

.method public registerForModifyCall(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1022
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 1023
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 1024
    return-void
.end method

.method public registerForMultiIdentityInfoPendingIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 604
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 605
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityInfoPendingRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 606
    return-void
.end method

.method public registerForMultiIdentityRegistrationStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 598
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 599
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityStatusChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 600
    return-void
.end method

.method public registerForMultiSimVoiceCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 671
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiSimVoiceCapabilityChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 672
    return-void
.end method

.method public registerForMwi(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1031
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 1032
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 1033
    return-void
.end method

.method public registerForParticipantStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 508
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 509
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 510
    return-void
.end method

.method public registerForRefreshConfInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 463
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 464
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 465
    return-void
.end method

.method public registerForRegistrationBlockStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 517
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 518
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRegistrationBlockStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 519
    return-void
.end method

.method public registerForRttMessage(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2643
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRttMessageRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2644
    return-void
.end method

.method public registerForSipDtmfInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 557
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 558
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSipDtmfInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 559
    return-void
.end method

.method public registerForSmsCallbackModeChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 644
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 645
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSmsCallbackModeChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 646
    return-void
.end method

.method public registerForSrvDomainChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 626
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 627
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvDomainChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 628
    return-void
.end method

.method public registerForSrvStatusUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 472
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 473
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 474
    return-void
.end method

.method public registerForSsacStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 425
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 426
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsaccRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 427
    return-void
.end method

.method public registerForSuppServiceIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 537
    new-instance v0, Lorg/codeaurora/telephony/utils/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsIndicationRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    .line 538
    return-void
.end method

.method public registerForTtyStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 481
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 482
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 483
    return-void
.end method

.method public registerForUssdInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 548
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 549
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mUssdInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 550
    return-void
.end method

.method public registerForVoWiFiCallQualityUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 499
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 500
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 501
    return-void
.end method

.method public registerForVoiceInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2651
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoiceInfoStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2652
    return-void
.end method

.method public registerForVopsStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 434
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 435
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 436
    return-void
.end method

.method public registerForWfcRoamingModeFeatureSupport(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 443
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 444
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWfcRoamingModeConfigRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 445
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWfcRoamingModeConfigRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWfcRoamingConfigurationSupport:Z

    .line 446
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v4}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 445
    invoke-virtual {v1, v2}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 447
    return-void
.end method

.method public registerListener(Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;

    .line 300
    if-eqz p1, :cond_2

    .line 303
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 304
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 305
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/codeaurora/ims/IImsRadio;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;->onServiceUp(I)V

    goto :goto_0

    .line 310
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;->onServiceDown(I)V

    goto :goto_0

    .line 313
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    :goto_0
    monitor-exit v0

    .line 316
    return-void

    .line 315
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 301
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 2613
    const-string v0, "rejectCall : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2614
    return-void
.end method

.method public requestMultiIdentityLinesRegistration(Ljava/util/Collection;Landroid/os/Message;)V
    .locals 6
    .param p2, "response"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/codeaurora/ims/MultiIdentityLineInfo;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 2699
    .local p1, "linesInfo":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerMultiIdentityLines = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2700
    const/16 v0, 0x3c

    .line 2701
    .local v0, "msgId":I
    const/16 v1, 0x3c

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2702
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 2704
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2705
    return-void

    .line 2708
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2710
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2711
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1}, Lorg/codeaurora/ims/IImsRadio;->registerMultiIdentityLines(ILjava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2715
    goto :goto_0

    .line 2712
    :catch_0
    move-exception v4

    .line 2713
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2714
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "to IImsRadio: Exception: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2716
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public resume(Landroid/os/Message;I)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callId"    # I

    .line 1944
    const/16 v0, 0x26

    .line 1945
    .local v0, "msgId":I
    const/16 v1, 0x26

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1946
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1948
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1949
    return-void

    .line 1952
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1954
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1955
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " request to ImsRadio - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " callId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1957
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p2}, Lorg/codeaurora/ims/IImsRadio;->resume(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1961
    goto :goto_0

    .line 1958
    :catch_0
    move-exception v3

    .line 1959
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1960
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1962
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public sendConfigRequest(IIZILjava/lang/String;ILandroid/os/Message;)V
    .locals 15
    .param p1, "requestType"    # I
    .param p2, "item"    # I
    .param p3, "boolValue"    # Z
    .param p4, "intValue"    # I
    .param p5, "strValue"    # Ljava/lang/String;
    .param p6, "errorCause"    # I
    .param p7, "result"    # Landroid/os/Message;

    .line 2008
    move-object v1, p0

    move/from16 v2, p1

    invoke-static/range {p1 .. p1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v3

    .line 2009
    .local v3, "msgIdString":Ljava/lang/String;
    move-object/from16 v4, p7

    invoke-static {v2, v4}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v5

    .line 2011
    .local v5, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v5, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2012
    return-void

    .line 2015
    :cond_0
    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2017
    :try_start_0
    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " request to ImsRadio: token "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v5, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " request type: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2020
    const/16 v0, 0x2d

    if-ne v2, v0, :cond_1

    .line 2021
    iget-object v6, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v7, v5, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    invoke-interface/range {v6 .. v12}, Lorg/codeaurora/ims/IImsRadio;->getConfig(IIZILjava/lang/String;I)V

    goto :goto_0

    .line 2023
    :cond_1
    iget-object v8, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v9, v5, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v14, p6

    invoke-interface/range {v8 .. v14}, Lorg/codeaurora/ims/IImsRadio;->setConfig(IIZILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2028
    :goto_0
    goto :goto_1

    .line 2025
    :catch_0
    move-exception v0

    .line 2026
    .local v0, "ex":Ljava/lang/Exception;
    iget v6, v5, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2027
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " request to IImsRadio: Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2029
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public sendDtmf(ICLandroid/os/Message;)V
    .locals 6
    .param p1, "callId"    # I
    .param p2, "c"    # C
    .param p3, "result"    # Landroid/os/Message;

    .line 2032
    const/16 v0, 0xd

    .line 2033
    .local v0, "msgId":I
    const/16 v1, 0xd

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2034
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p3}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2036
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2037
    return-void

    .line 2040
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2042
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2043
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p1, p2}, Lorg/codeaurora/ims/IImsRadio;->sendDtmf(IIC)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2047
    goto :goto_0

    .line 2044
    :catch_0
    move-exception v3

    .line 2045
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2046
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2048
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public declared-synchronized sendGeolocationInfo(DDLandroid/location/Address;Landroid/os/Message;)V
    .locals 13
    .param p1, "lat"    # D
    .param p3, "lon"    # D
    .param p5, "address"    # Landroid/location/Address;
    .param p6, "result"    # Landroid/os/Message;

    move-object v1, p0

    monitor-enter p0

    .line 1660
    const/16 v2, 0x2e

    .line 1661
    .local v2, "msgId":I
    const/16 v0, 0x2e

    :try_start_0
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v3

    .line 1662
    .local v3, "msgIdString":Ljava/lang/String;
    move-object/from16 v4, p6

    invoke-static {v0, v4}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    move-object v5, v0

    .line 1663
    .local v5, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v5, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1664
    monitor-exit p0

    return-void

    .line 1666
    :cond_0
    :try_start_1
    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1669
    :try_start_2
    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1670
    iget-object v6, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v7, v5, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    move-wide v8, p1

    move-wide/from16 v10, p3

    move-object/from16 v12, p5

    invoke-interface/range {v6 .. v12}, Lorg/codeaurora/ims/IImsRadio;->sendGeolocationInfo(IDDLandroid/location/Address;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1674
    goto :goto_0

    .line 1671
    .end local p0    # "this":Lorg/codeaurora/ims/ImsSenderRxr;
    :catch_0
    move-exception v0

    .line 1672
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_3
    iget v6, v5, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1673
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "to IImsRadio: Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1675
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 1659
    .end local v2    # "msgId":I
    .end local v3    # "msgIdString":Ljava/lang/String;
    .end local v5    # "rr":Lorg/codeaurora/ims/IFRequest;
    .end local p1    # "lat":D
    .end local p3    # "lon":D
    .end local p5    # "address":Landroid/location/Address;
    .end local p6    # "result":Landroid/os/Message;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendImsRegistrationState(ILandroid/os/Message;)V
    .locals 6
    .param p1, "imsRegState"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1840
    const/16 v0, 0x1a

    .line 1841
    .local v0, "msgId":I
    const/16 v1, 0x1a

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1842
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1844
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1845
    return-void

    .line 1848
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1850
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1851
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " request to ImsRadio - token:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RegState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1853
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p1}, Lorg/codeaurora/ims/IImsRadio;->requestRegistrationChange(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1857
    goto :goto_0

    .line 1854
    :catch_0
    move-exception v3

    .line 1855
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1856
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1858
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 2659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RTT: sendRttMessage msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2660
    const/16 v0, 0x37

    .line 2661
    .local v0, "msgId":I
    const/16 v1, 0x37

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2662
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 2664
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2665
    return-void

    .line 2668
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2670
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2671
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1}, Lorg/codeaurora/ims/IImsRadio;->sendRttMessage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2675
    goto :goto_0

    .line 2672
    :catch_0
    move-exception v4

    .line 2673
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2674
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "to IImsRadio: Exception: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2676
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public sendSipDtmf(Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "requestCode"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send Sip Dtmf Request - requestCode- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1483
    const/16 v0, 0x42

    .line 1484
    .local v0, "msgId":I
    const/16 v1, 0x42

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1485
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1486
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1487
    return-void

    .line 1490
    :cond_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->isFeatureSupported(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1491
    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-direct {p0, v1, v3, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 1492
    return-void

    .line 1495
    :cond_1
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1497
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1498
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p1}, Lorg/codeaurora/ims/IImsRadio;->sendSipDtmf(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1502
    goto :goto_0

    .line 1499
    :catch_0
    move-exception v3

    .line 1500
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1501
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1503
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public sendSms(ILjava/lang/String;Ljava/lang/String;Z[BLandroid/os/Message;)V
    .locals 15
    .param p1, "messageRef"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "smsc"    # Ljava/lang/String;
    .param p4, "isRetry"    # Z
    .param p5, "pdu"    # [B
    .param p6, "result"    # Landroid/os/Message;

    .line 1584
    move-object v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSms over IImsRadio with format:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v9, p2

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1586
    const/16 v10, 0x39

    .line 1587
    .local v10, "msgId":I
    const/16 v11, 0x39

    invoke-static {v11}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v12

    .line 1588
    .local v12, "msgIdString":Ljava/lang/String;
    move-object/from16 v13, p6

    invoke-static {v11, v13}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v14

    .line 1590
    .local v14, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v14, v12}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1591
    return-void

    .line 1594
    :cond_0
    invoke-direct {p0, v14}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1596
    :try_start_0
    invoke-virtual {p0, v14}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1597
    iget-object v2, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v3, v14, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-interface/range {v2 .. v8}, Lorg/codeaurora/ims/IImsRadio;->sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1601
    goto :goto_0

    .line 1598
    :catch_0
    move-exception v0

    .line 1599
    .local v0, "ex":Ljava/lang/Exception;
    iget v2, v14, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "to ImsRadioV12: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1602
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public sendUssd(Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USSD Request - address- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1453
    const/16 v0, 0x40

    .line 1454
    .local v0, "msgId":I
    const/16 v1, 0x40

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1455
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1457
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1458
    return-void

    .line 1461
    :cond_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->isFeatureSupported(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1462
    const/16 v3, 0x2f

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-direct {p0, v1, v3, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 1463
    return-void

    .line 1466
    :cond_1
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1468
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1469
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p1}, Lorg/codeaurora/ims/IImsRadio;->sendUssd(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1473
    goto :goto_0

    .line 1470
    :catch_0
    move-exception v3

    .line 1471
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1472
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1474
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 6
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCLIR clirmode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2140
    const/16 v0, 0x15

    .line 2141
    .local v0, "msgId":I
    const/16 v1, 0x15

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2142
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 2144
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2145
    return-void

    .line 2148
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2150
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2151
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1}, Lorg/codeaurora/ims/IImsRadio;->setClir(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2155
    goto :goto_0

    .line 2152
    :catch_0
    move-exception v4

    .line 2153
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2154
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "to IImsRadio: Exception: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2156
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setCOLR(ILandroid/os/Message;)V
    .locals 6
    .param p1, "presentationValue"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCOLR presentationValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2461
    const/16 v0, 0x22

    .line 2462
    .local v0, "msgId":I
    const/16 v1, 0x22

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2463
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 2465
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2466
    return-void

    .line 2469
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2471
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2472
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1}, Lorg/codeaurora/ims/IImsRadio;->setColr(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2476
    goto :goto_0

    .line 2473
    :catch_0
    move-exception v4

    .line 2474
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2475
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "to IImsRadio: Exception: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2477
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 16
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "response"    # Landroid/os/Message;

    .line 2214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallForward cfReason= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v12, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v13, p3

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v14, p4

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "timeSeconds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v15, p5

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, p0

    invoke-virtual {v11, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2217
    const v2, 0x7fffffff

    const v3, 0x7fffffff

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    move-object/from16 v1, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v1 .. v11}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallForwardInternal(IIIIIIILjava/lang/String;ILandroid/os/Message;)V

    .line 2219
    return-void
.end method

.method public setCallForwardUncondTimer(IIIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "action"    # I
    .param p6, "cfReason"    # I
    .param p7, "serviceClass"    # I
    .param p8, "number"    # Ljava/lang/String;
    .param p9, "response"    # Landroid/os/Message;

    .line 2224
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallForwardInternal(IIIIIIILjava/lang/String;ILandroid/os/Message;)V

    .line 2226
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 2181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallWaiting enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2183
    const/16 v0, 0x19

    .line 2184
    .local v0, "msgId":I
    const/16 v1, 0x19

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2186
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p3}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2188
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2189
    return-void

    .line 2192
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2194
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2195
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p1, p2}, Lorg/codeaurora/ims/IImsRadio;->setCallWaiting(IZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2199
    goto :goto_0

    .line 2196
    :catch_0
    move-exception v3

    .line 2197
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2200
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 2378
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 2379
    .local v0, "operation":I
    :goto_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1, p5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    .line 2380
    return-void
.end method

.method public setHandoverConfig(ILandroid/os/Message;)V
    .locals 2
    .param p1, "hoConfig"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2592
    const-string v0, "ImsSenderRxr"

    const-string v1, "setHandoverConfig : Not supported"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2593
    return-void
.end method

.method public setIncomingCallBarring(ILjava/lang/String;[Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "operation"    # I
    .param p2, "facility"    # Ljava/lang/String;
    .param p3, "icbNum"    # [Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 2209
    invoke-static {p2}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v2

    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V

    .line 2210
    return-void
.end method

.method public setMediaConfigurationRequest(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/os/Message;)V
    .locals 6
    .param p1, "screenSize"    # Landroid/graphics/Point;
    .param p2, "avcSize"    # Landroid/graphics/Point;
    .param p3, "hevcSize"    # Landroid/graphics/Point;
    .param p4, "result"    # Landroid/os/Message;

    .line 2720
    const/16 v0, 0x43

    .line 2721
    .local v0, "msgId":I
    const/16 v1, 0x43

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2722
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p4}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 2723
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2724
    return-void

    .line 2726
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2728
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2729
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadio;->setMediaConfiguration(ILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2733
    goto :goto_0

    .line 2730
    :catch_0
    move-exception v4

    .line 2731
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2732
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "to IImsRadio: Exception: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2735
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setOnImsSmsStatusReport(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 577
    new-instance v0, Lorg/codeaurora/telephony/utils/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSendSmsStatusReportRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    .line 578
    return-void
.end method

.method public setOnIncomingImsSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 566
    new-instance v0, Lorg/codeaurora/telephony/utils/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingSmsRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    .line 567
    return-void
.end method

.method public setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 526
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    .line 527
    return-void
.end method

.method public setPhoneType(I)V
    .locals 2
    .param p1, "phoneType"    # I

    .line 1359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPhoneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " old value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1360
    iput p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneType:I

    .line 1361
    return-void
.end method

.method public setServiceStatus(Landroid/os/Message;Ljava/util/ArrayList;I)V
    .locals 16
    .param p1, "result"    # Landroid/os/Message;
    .param p3, "restrictCause"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/CapabilityStatus;",
            ">;I)V"
        }
    .end annotation

    .line 1729
    .local p2, "capabilityStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/CapabilityStatus;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    const/16 v5, 0x1e

    .line 1730
    .local v5, "msgId":I
    const/16 v0, 0x1e

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v6

    .line 1732
    .local v6, "msgIdString":Ljava/lang/String;
    iget-object v7, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lorg/codeaurora/ims/IImsRadio;->isFeatureSupported(I)Z

    move-result v7

    const-string v8, "SetServiceStatus request to IImsRadio: Exception: "

    const-string v9, " to ImsRadio: token -"

    if-eqz v7, :cond_1

    .line 1733
    invoke-static {v0, v2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v7

    .line 1734
    .local v7, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {v1, v7, v6, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1735
    return-void

    .line 1742
    :cond_0
    invoke-static {}, Lorg/codeaurora/telephony/utils/SomeArgs;->obtain()Lorg/codeaurora/telephony/utils/SomeArgs;

    move-result-object v10

    .line 1744
    .local v10, "setCapArgs":Lorg/codeaurora/telephony/utils/SomeArgs;
    invoke-static/range {p1 .. p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, v10, Lorg/codeaurora/telephony/utils/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1746
    iput-object v3, v10, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1748
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 1749
    .local v11, "newMsg":Landroid/os/Message;
    iput-object v10, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1755
    invoke-virtual {v7, v11}, Lorg/codeaurora/ims/IFRequest;->setResult(Landroid/os/Message;)V

    .line 1756
    invoke-direct {v1, v7}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1757
    invoke-virtual {v1, v7}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v9, v7, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " RestrictCause:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1761
    :try_start_0
    iget-object v0, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v9, v7, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v9, v3, v4}, Lorg/codeaurora/ims/IImsRadio;->setServiceStatus(ILjava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1767
    goto :goto_0

    .line 1762
    :catch_0
    move-exception v0

    .line 1764
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v7, v2}, Lorg/codeaurora/ims/IFRequest;->setResult(Landroid/os/Message;)V

    .line 1765
    iget v9, v7, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {v1, v9, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(ILjava/lang/Object;)V

    .line 1766
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1768
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v7    # "rr":Lorg/codeaurora/ims/IFRequest;
    .end local v10    # "setCapArgs":Lorg/codeaurora/telephony/utils/SomeArgs;
    .end local v11    # "newMsg":Landroid/os/Message;
    :goto_0
    goto/16 :goto_2

    .line 1769
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/codeaurora/ims/CapabilityStatus;

    .line 1770
    .local v10, "capabilityStatus":Lorg/codeaurora/ims/CapabilityStatus;
    invoke-static {v0, v2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v11

    .line 1771
    .local v11, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {v1, v11, v6, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1772
    return-void

    .line 1780
    :cond_2
    invoke-static {}, Lorg/codeaurora/telephony/utils/SomeArgs;->obtain()Lorg/codeaurora/telephony/utils/SomeArgs;

    move-result-object v12

    .line 1782
    .local v12, "setCapArgs":Lorg/codeaurora/telephony/utils/SomeArgs;
    invoke-static/range {p1 .. p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v13

    iput-object v13, v12, Lorg/codeaurora/telephony/utils/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1785
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1786
    .local v13, "newCapabilityStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/CapabilityStatus;>;"
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1788
    iput-object v13, v12, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1791
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v14

    .line 1792
    .local v14, "newMsg":Landroid/os/Message;
    iput-object v12, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1798
    invoke-virtual {v11, v14}, Lorg/codeaurora/ims/IFRequest;->setResult(Landroid/os/Message;)V

    .line 1799
    invoke-direct {v1, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1800
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SetServiceStatus capabilityStatus: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1801
    invoke-virtual {v1, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v15, v11, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1805
    :try_start_1
    iget-object v0, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v15, v11, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v15, v13, v4}, Lorg/codeaurora/ims/IImsRadio;->setServiceStatus(ILjava/util/List;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1815
    nop

    .line 1816
    .end local v10    # "capabilityStatus":Lorg/codeaurora/ims/CapabilityStatus;
    .end local v11    # "rr":Lorg/codeaurora/ims/IFRequest;
    .end local v12    # "setCapArgs":Lorg/codeaurora/telephony/utils/SomeArgs;
    .end local v13    # "newCapabilityStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/CapabilityStatus;>;"
    .end local v14    # "newMsg":Landroid/os/Message;
    const/16 v0, 0x1e

    goto :goto_1

    .line 1807
    .restart local v10    # "capabilityStatus":Lorg/codeaurora/ims/CapabilityStatus;
    .restart local v11    # "rr":Lorg/codeaurora/ims/IFRequest;
    .restart local v12    # "setCapArgs":Lorg/codeaurora/telephony/utils/SomeArgs;
    .restart local v13    # "newCapabilityStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/CapabilityStatus;>;"
    .restart local v14    # "newMsg":Landroid/os/Message;
    :catch_1
    move-exception v0

    .line 1809
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-virtual {v11, v2}, Lorg/codeaurora/ims/IFRequest;->setResult(Landroid/os/Message;)V

    .line 1810
    iget v7, v11, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {v1, v7, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(ILjava/lang/Object;)V

    .line 1811
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1814
    return-void

    .line 1818
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v10    # "capabilityStatus":Lorg/codeaurora/ims/CapabilityStatus;
    .end local v11    # "rr":Lorg/codeaurora/ims/IFRequest;
    .end local v12    # "setCapArgs":Lorg/codeaurora/telephony/utils/SomeArgs;
    .end local v13    # "newCapabilityStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/CapabilityStatus;>;"
    .end local v14    # "newMsg":Landroid/os/Message;
    :cond_3
    :goto_2
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 2098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSuppServiceNotifications enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2099
    const/16 v0, 0x1b

    .line 2100
    .local v0, "msgId":I
    const/16 v1, 0x1b

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2102
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2104
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2105
    return-void

    .line 2108
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2110
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2111
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p1}, Lorg/codeaurora/ims/IImsRadio;->setSuppServiceNotification(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2115
    goto :goto_0

    .line 2112
    :catch_0
    move-exception v3

    .line 2113
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2116
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setSuppSvc(Ljava/lang/String;ZLandroid/os/Message;)V
    .locals 2
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "response"    # Landroid/os/Message;

    .line 2387
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 2388
    .local v0, "operation":I
    :goto_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    .line 2389
    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 6
    .param p1, "uiTtyMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUiTTYMode uittyMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2306
    const/16 v0, 0x27

    .line 2307
    .local v0, "msgId":I
    const/16 v1, 0x27

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2308
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 2310
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2311
    return-void

    .line 2314
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2316
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2317
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1}, Lorg/codeaurora/ims/IImsRadio;->setUiTtyMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2321
    goto :goto_0

    .line 2318
    :catch_0
    move-exception v4

    .line 2319
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2320
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "to IImsRadio: Exception: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2322
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setWifiCallingPreference(IILandroid/os/Message;)V
    .locals 1
    .param p1, "wifiCallingStatus"    # I
    .param p2, "wifiCallingPreference"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 2584
    const-string v0, "setWifiCallingPreference : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2585
    return-void
.end method

.method public startDtmf(ICLandroid/os/Message;)V
    .locals 6
    .param p1, "callId"    # I
    .param p2, "c"    # C
    .param p3, "result"    # Landroid/os/Message;

    .line 2051
    const/16 v0, 0xe

    .line 2052
    .local v0, "msgId":I
    const/16 v1, 0xe

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2053
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p3}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 2055
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2056
    return-void

    .line 2059
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2061
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2062
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1, p2}, Lorg/codeaurora/ims/IImsRadio;->startDtmf(IIC)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2066
    goto :goto_0

    .line 2063
    :catch_0
    move-exception v4

    .line 2064
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2065
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "to IImsRadio: Exception: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2067
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public stopDtmf(ILandroid/os/Message;)V
    .locals 6
    .param p1, "callId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2070
    const/16 v0, 0xf

    .line 2071
    .local v0, "msgId":I
    const/16 v1, 0xf

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2072
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 2074
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2075
    return-void

    .line 2078
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2080
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2081
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1}, Lorg/codeaurora/ims/IImsRadio;->stopDtmf(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2085
    goto :goto_0

    .line 2082
    :catch_0
    move-exception v4

    .line 2083
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2084
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "to IImsRadio: Exception: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2086
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public suppSvcStatus(IILandroid/os/Message;)V
    .locals 8
    .param p1, "operationType"    # I
    .param p2, "facility"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 2399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "suppSvcStatus operationType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " facility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2401
    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7fffffff

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatusInternal(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 2402
    return-void
.end method

.method public suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V
    .locals 8
    .param p1, "operationType"    # I
    .param p2, "facility"    # I
    .param p3, "icbNum"    # [Ljava/lang/String;
    .param p4, "serviceClassValue"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 2393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "suppSvcStatus operationType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " facility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "serviceClassValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2395
    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatusInternal(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 2396
    return-void
.end method

.method public suppSvcStatus(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .param p1, "operationType"    # I
    .param p2, "facility"    # I
    .param p3, "icbNum"    # [Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "serviceClassValue"    # I
    .param p6, "response"    # Landroid/os/Message;

    .line 2406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "suppSvcStatus operationType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " facility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "serviceClassValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2408
    invoke-direct/range {p0 .. p6}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatusInternal(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 2410
    return-void
.end method

.method public suppSvcStatus(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;Z)V
    .locals 14
    .param p1, "operationType"    # I
    .param p2, "facility"    # I
    .param p3, "inCbNumList"    # [Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "serviceClass"    # I
    .param p6, "response"    # Landroid/os/Message;
    .param p7, "expectMore"    # Z

    .line 2420
    move-object v1, p0

    const/16 v2, 0x1f

    .line 2421
    .local v2, "msgId":I
    const/16 v0, 0x1f

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v3

    .line 2422
    .local v3, "msgIdString":Ljava/lang/String;
    move-object/from16 v4, p6

    invoke-static {v0, v4}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v5

    .line 2424
    .local v5, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v5, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2425
    return-void

    .line 2428
    :cond_0
    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2430
    :try_start_0
    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2431
    iget-object v6, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v7, v5, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    move v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p7

    invoke-interface/range {v6 .. v13}, Lorg/codeaurora/ims/IImsRadio;->suppServiceStatus(III[Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2436
    goto :goto_0

    .line 2433
    :catch_0
    move-exception v0

    .line 2434
    .local v0, "ex":Ljava/lang/Exception;
    iget v6, v5, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2435
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "to IImsRadio: Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2437
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 2630
    const-string v0, "switchWaitingOrHoldingAndActive : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2631
    return-void
.end method

.method public synchronizeMessage(Ljava/lang/String;II)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callState"    # I
    .param p3, "commandState"    # I

    .line 2739
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2740
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2741
    if-eqz p2, :cond_0

    .line 2742
    const-string v1, "miui.intent.action.CALL_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2743
    const-string v1, "miui.intent.extra.call_state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 2744
    :cond_0
    if-eqz p3, :cond_1

    .line 2745
    const-string v1, "miui.intent.action.USER_COMMAND_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2746
    const-string v1, "miui.intent.extra.command_state"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2748
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronizeMessage: callId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callstate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " commandState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2750
    const-string v1, "miui.intent.extra.call_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2751
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    const-string v2, "miui.intent.extra.call_phoneid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2752
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2753
    return-void
.end method

.method public unRegisterForWfcRoamingModeFeatureSupport(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 450
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWfcRoamingModeConfigRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 451
    return-void
.end method

.method public unSetImsSmsStatusReport(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 581
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSendSmsStatusReportRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    if-eqz v0, :cond_0

    .line 582
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/Registrant;->clear()V

    .line 583
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSendSmsStatusReportRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    .line 585
    :cond_0
    return-void
.end method

.method public unSetIncomingImsSms(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 570
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingSmsRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/Registrant;->clear()V

    .line 572
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingSmsRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    .line 574
    :cond_0
    return-void
.end method

.method public unSetOnSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 530
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/Registrant;->clear()V

    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    .line 534
    :cond_0
    return-void
.end method

.method public unregisterForCallAutoRejection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 593
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mAutoRejectRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 594
    return-void
.end method

.method public unregisterForCiwlanNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 683
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mCiWlanNotificationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 684
    return-void
.end method

.method public unregisterForConferenceCallStateCompleted(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 640
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mConferenceCallStateCompletedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 641
    return-void
.end method

.method public unregisterForGeoLocationDataStatus(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 622
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeoLocationDataStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 623
    return-void
.end method

.method public unregisterForGeolocationRequest(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 495
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 496
    return-void
.end method

.method public unregisterForHandoverStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 459
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 460
    return-void
.end method

.method public unregisterForIncomingDtmfStart(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 658
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStartRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 659
    return-void
.end method

.method public unregisterForIncomingDtmfStop(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 667
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStopRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 668
    return-void
.end method

.method public unregisterForModifyCall(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1027
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1028
    return-void
.end method

.method public unregisterForMultiIdentityPendingInfoRequest(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 613
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityInfoPendingRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 614
    return-void
.end method

.method public unregisterForMultiIdentityRegistrationStatusChange(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 609
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityStatusChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 610
    return-void
.end method

.method public unregisterForMwi(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1036
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1037
    return-void
.end method

.method public unregisterForParticipantStatusInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 513
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 514
    return-void
.end method

.method public unregisterForRefreshConfInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 468
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 469
    return-void
.end method

.method public unregisterForRegistrationBlockStatus(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 522
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRegistrationBlockStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 523
    return-void
.end method

.method public unregisterForSipDtmfInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 562
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSipDtmfInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 563
    return-void
.end method

.method public unregisterForSmsCallbackModeChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 649
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSmsCallbackModeChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 650
    return-void
.end method

.method public unregisterForSrvDomainChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 631
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvDomainChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 632
    return-void
.end method

.method public unregisterForSrvStatusUpdate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 477
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 478
    return-void
.end method

.method public unregisterForSsacStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 430
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsaccRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 431
    return-void
.end method

.method public unregisterForSuppServiceIndication(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 541
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsIndicationRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/Registrant;->clear()V

    .line 543
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsIndicationRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    .line 545
    :cond_0
    return-void
.end method

.method public unregisterForTtyStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 486
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 487
    return-void
.end method

.method public unregisterForUssdInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 553
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mUssdInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 554
    return-void
.end method

.method public unregisterForVoWiFiCallQualityUpdate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 504
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 505
    return-void
.end method

.method public unregisterForVopsStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 439
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 440
    return-void
.end method

.method public unregisterListener(Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;

    .line 325
    if-eqz p1, :cond_1

    .line 328
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 329
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 332
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener not found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    :goto_0
    monitor-exit v0

    .line 335
    return-void

    .line 334
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 326
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unsljLog(I)V
    .locals 2
    .param p1, "response"    # I

    .line 1338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1339
    return-void
.end method

.method public unsljLogMore(ILjava/lang/String;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "more"    # Ljava/lang/String;

    .line 1342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1343
    return-void
.end method

.method public unsljLogRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 1346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1347
    return-void
.end method

.method public unsljLogvRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 1350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1351
    return-void
.end method

.method public updateVoltePref(ILandroid/os/Message;)V
    .locals 1
    .param p1, "preference"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2604
    const-string v0, "updateVoltePref : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2605
    return-void
.end method
