.class Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;
.super Ljava/lang/Object;
.source "ImsSenderRxr.java"

# interfaces
.implements Lorg/codeaurora/ims/IImsRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsSenderRxr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsRadioIndication"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsSenderRxr;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 2756
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallComposerInfoAvailable(ILorg/codeaurora/ims/CallComposerInfo;)V
    .locals 4
    .param p1, "callId"    # I
    .param p2, "callComposerInfo"    # Lorg/codeaurora/ims/CallComposerInfo;

    .line 3116
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xea

    invoke-virtual {v0, v1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3117
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mPreAlertingCallInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    new-instance v2, Lorg/codeaurora/ims/PreAlertingCallInfo;

    invoke-direct {v2, p1, p2}, Lorg/codeaurora/ims/PreAlertingCallInfo;-><init>(ILorg/codeaurora/ims/CallComposerInfo;)V

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3119
    return-void
.end method

.method public onCallStateChanged(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/DriverCallIms;",
            ">;)V"
        }
    .end annotation

    .line 2773
    .local p1, "driverCallImsList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/DriverCallIms;>;"
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2774
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fputmIsUnsolCallListPresent(Lorg/codeaurora/ims/ImsSenderRxr;Z)V

    .line 2775
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 2777
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/DriverCallIms;

    .line 2782
    .local v1, "dc":Lorg/codeaurora/ims/DriverCallIms;
    iget-object v2, v1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 2783
    invoke-virtual {v2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Forbidden. Not Authorized for Service"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2785
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsSenderRxr;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmPhoneId(Lorg/codeaurora/ims/ImsSenderRxr;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getSubscriptionIdFromPhoneId(Landroid/content/Context;I)I

    move-result v2

    .line 2786
    .local v2, "subId":I
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Throwing ACTION_FORBIDDEN_NO_SERVICE_AUTHORIZATION intent for subId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2788
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.internal.intent.action.ACTION_FORBIDDEN_NO_SERVICE_AUTHORIZATION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2790
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2791
    const/high16 v4, 0x20000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2792
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v4, v4, Lorg/codeaurora/ims/ImsSenderRxr;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2794
    .end local v2    # "subId":I
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    iget-boolean v2, v1, Lorg/codeaurora/ims/DriverCallIms;->isVoicePrivacy:Z

    if-eqz v2, :cond_1

    .line 2795
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsSenderRxr;->mVoicePrivacyOnRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v2}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants()V

    .line 2796
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const-string v3, "InCall VoicePrivacy is enabled"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2798
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsSenderRxr;->mVoicePrivacyOffRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v2}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants()V

    .line 2799
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const-string v3, "InCall VoicePrivacy is disabled"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2801
    .end local v1    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    :goto_1
    goto/16 :goto_0

    .line 2802
    :cond_2
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mCallStateRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 2803
    return-void
.end method

.method public onCiWlanNotification(Z)V
    .locals 4
    .param p1, "show"    # Z

    .line 3205
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xf6

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3206
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmCiWlanNotificationRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3207
    return-void
.end method

.method public onConferenceCallStateCompleted()V
    .locals 3

    .line 3156
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xef

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3157
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmConferenceCallStateCompletedRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3158
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmConferenceCallStateCompletedRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    invoke-direct {v1, v2, v2, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3161
    :cond_0
    return-void
.end method

.method public onEnterEmergencyCallBackMode()V
    .locals 2

    .line 2881
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xcd

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLog(I)V

    .line 2883
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mEmergencyCallbackModeRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    if-eqz v0, :cond_0

    .line 2884
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mEmergencyCallbackModeRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/Registrant;->notifyRegistrant()V

    .line 2886
    :cond_0
    return-void
.end method

.method public onExitEmergencyCallBackMode()V
    .locals 3

    .line 2890
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xce

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLog(I)V

    .line 2892
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mExitEmergencyCallbackModeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    if-eqz v0, :cond_0

    .line 2893
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mExitEmergencyCallbackModeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 2896
    :cond_0
    return-void
.end method

.method public onGeolocationInfoRequested(Lorg/codeaurora/ims/GeoLocationInfo;)V
    .locals 3
    .param p1, "geoLocationInfo"    # Lorg/codeaurora/ims/GeoLocationInfo;

    .line 2960
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xd8

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 2961
    if-nez p1, :cond_0

    .line 2962
    const-string v0, "onGeolocationInfoRequested: Null location data!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2963
    return-void

    .line 2965
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmGeolocationRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 2967
    return-void
.end method

.method public onHandover(Lorg/codeaurora/ims/HoInfo;)V
    .locals 3
    .param p1, "hoInfo"    # Lorg/codeaurora/ims/HoInfo;

    .line 2852
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xd0

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 2853
    if-nez p1, :cond_0

    .line 2854
    const-string v0, "onHandover: hoInfo is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2855
    return-void

    .line 2857
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmHandoverStatusRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 2860
    return-void
.end method

.method public onImsSmsStatusReport(Lorg/codeaurora/ims/sms/StatusReport;)V
    .locals 3
    .param p1, "smsStatusReport"    # Lorg/codeaurora/ims/sms/StatusReport;

    .line 2807
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xe1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLog(I)V

    .line 2809
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmSendSmsStatusReportRegistrant(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/Registrant;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2810
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmSendSmsStatusReportRegistrant(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/Registrant;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/Registrant;->notifyRegistrant(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 2813
    :cond_0
    return-void
.end method

.method public onImsSubConfigChanged(Lorg/codeaurora/ims/ImsSubConfigDetails;)V
    .locals 3
    .param p1, "configDetails"    # Lorg/codeaurora/ims/ImsSubConfigDetails;

    .line 2984
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xdd

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 2986
    if-nez p1, :cond_0

    .line 2987
    const-string v0, "onImsSubConfigChanged: Data is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2988
    return-void

    .line 2991
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmImsSubConfigChangeRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2992
    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 2993
    return-void
.end method

.method public onIncomingCallAutoRejected(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 3
    .param p1, "driverCallIms"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 2971
    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->getCallComposerInfo()Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->getEcnamInfo()Lorg/codeaurora/ims/EcnamInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2972
    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->getIsDcCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2973
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xe3

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    goto :goto_0

    .line 2974
    :cond_0
    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->getEcnamInfo()Lorg/codeaurora/ims/EcnamInfo;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->getIsDcCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2975
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xe9

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    goto :goto_0

    .line 2978
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xf5

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 2979
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmAutoRejectRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 2980
    return-void
.end method

.method public onIncomingDtmfStart(ILjava/lang/String;)V
    .locals 4
    .param p1, "callId"    # I
    .param p2, "dtmf"    # Ljava/lang/String;

    .line 3165
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xf1

    invoke-virtual {v0, v1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3166
    invoke-static {}, Lorg/codeaurora/telephony/utils/SomeArgs;->obtain()Lorg/codeaurora/telephony/utils/SomeArgs;

    move-result-object v0

    .line 3167
    .local v0, "args":Lorg/codeaurora/telephony/utils/SomeArgs;
    iput p1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    .line 3168
    iput-object p2, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg1:Ljava/lang/Object;

    .line 3169
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmIncomingDtmfStartRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3170
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmIncomingDtmfStartRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v1

    new-instance v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3173
    :cond_0
    return-void
.end method

.method public onIncomingDtmfStop(ILjava/lang/String;)V
    .locals 4
    .param p1, "callId"    # I
    .param p2, "dtmf"    # Ljava/lang/String;

    .line 3177
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xf2

    invoke-virtual {v0, v1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3178
    invoke-static {}, Lorg/codeaurora/telephony/utils/SomeArgs;->obtain()Lorg/codeaurora/telephony/utils/SomeArgs;

    move-result-object v0

    .line 3179
    .local v0, "args":Lorg/codeaurora/telephony/utils/SomeArgs;
    iput p1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    .line 3180
    iput-object p2, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg1:Ljava/lang/Object;

    .line 3181
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmIncomingDtmfStopRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3182
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmIncomingDtmfStopRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v1

    new-instance v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3185
    :cond_0
    return-void
.end method

.method public onIncomingImsSms(Lorg/codeaurora/ims/sms/IncomingSms;)V
    .locals 3
    .param p1, "imsSms"    # Lorg/codeaurora/ims/sms/IncomingSms;

    .line 2817
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xe2

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLog(I)V

    .line 2819
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmIncomingSmsRegistrant(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/Registrant;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2820
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmIncomingSmsRegistrant(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/Registrant;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/Registrant;->notifyRegistrant(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 2822
    :cond_0
    return-void
.end method

.method public onMessageWaiting(Lorg/codeaurora/ims/Mwi;)V
    .locals 3
    .param p1, "mwiIndication"    # Lorg/codeaurora/ims/Mwi;

    .line 2948
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xd6

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 2950
    if-nez p1, :cond_0

    .line 2951
    const-string v0, "onMessageWaiting: Data is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2952
    return-void

    .line 2955
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 2956
    return-void
.end method

.method public onModemSupportsWfcRoamingModeConfiguration(Z)V
    .locals 4
    .param p1, "wfcRoamingConfigurationSupport"    # Z

    .line 3089
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 3090
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 3089
    const/16 v2, 0xe7

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3091
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fputmWfcRoamingConfigurationSupport(Lorg/codeaurora/ims/ImsSenderRxr;Z)V

    .line 3092
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmWfcRoamingModeConfigRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3093
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmWfcRoamingModeConfigRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 3094
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3097
    :cond_0
    return-void
.end method

.method public onModifyCall(Lorg/codeaurora/ims/CallModify;)V
    .locals 3
    .param p1, "callModifyInfo"    # Lorg/codeaurora/ims/CallModify;

    .line 2932
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xcf

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 2933
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2934
    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 2935
    return-void
.end method

.method public onMultiIdentityInfoPending()V
    .locals 3

    .line 3081
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xe6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3082
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmMultiIdentityInfoPendingRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    invoke-direct {v1, v2, v2, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3084
    return-void
.end method

.method public onMultiIdentityRegistrationStatusChange(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/MultiIdentityLineInfo;",
            ">;)V"
        }
    .end annotation

    .line 3074
    .local p1, "linesInfo":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xe5

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3075
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmMultiIdentityStatusChangeRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3077
    return-void
.end method

.method public onMultiSimVoiceCapabilityChanged(I)V
    .locals 4
    .param p1, "voiceCapability"    # I

    .line 3189
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf3

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3191
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmMultiSimVoiceCapabilityChangedRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3192
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmMultiSimVoiceCapabilityChangedRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 3193
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3195
    :cond_0
    return-void
.end method

.method public onParticipantStatusInfo(Lorg/codeaurora/ims/ParticipantStatusDetails;)V
    .locals 3
    .param p1, "participantStatusInfo"    # Lorg/codeaurora/ims/ParticipantStatusDetails;

    .line 2998
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xdc

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 2999
    if-nez p1, :cond_0

    .line 3000
    const-string v0, "onParticipantStatusInfo: Participant status info is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3001
    return-void

    .line 3003
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmParticipantStatusRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3004
    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3005
    return-void
.end method

.method public onPreAlertingCallInfoAvailable(Lorg/codeaurora/ims/PreAlertingCallInfo;)V
    .locals 3
    .param p1, "info"    # Lorg/codeaurora/ims/PreAlertingCallInfo;

    .line 3199
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xf4

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3200
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mPreAlertingCallInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3201
    return-void
.end method

.method public onRadioStateChanged(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V
    .locals 2
    .param p1, "radioState"    # Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    .line 2874
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xd5

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 2876
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->setRadioState(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V

    .line 2877
    return-void
.end method

.method public onRefreshConferenceInfo(Lorg/codeaurora/ims/ConfInfo;)V
    .locals 3
    .param p1, "info"    # Lorg/codeaurora/ims/ConfInfo;

    .line 2908
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xd1

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 2909
    if-nez p1, :cond_0

    .line 2910
    const-string v0, "onRefreshConferenceInfo: Data is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2911
    return-void

    .line 2913
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmRefreshConfInfoRegistrations(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 2916
    return-void
.end method

.method public onRefreshViceInfo(Lorg/codeaurora/ims/ViceUriInfo;)V
    .locals 3
    .param p1, "viceInfo"    # Lorg/codeaurora/ims/ViceUriInfo;

    .line 2920
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xd7

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 2921
    if-nez p1, :cond_0

    .line 2922
    const-string v0, "onRefreshViceInfo: Data is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2923
    return-void

    .line 2925
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshViceInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2926
    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 2928
    return-void
.end method

.method public onRegistrationBlockStatus(Lorg/codeaurora/ims/RegistrationBlockStatusInfo;)V
    .locals 3
    .param p1, "registrationBlockStatusInfo"    # Lorg/codeaurora/ims/RegistrationBlockStatusInfo;

    .line 3010
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xde

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3013
    if-nez p1, :cond_0

    .line 3014
    const-string v0, "onRegistrationBlockStatus: Data is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3015
    return-void

    .line 3018
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmRegistrationBlockStatusRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3020
    return-void
.end method

.method public onRegistrationChanged(Lorg/codeaurora/ims/ImsRegistrationInfo;)V
    .locals 3
    .param p1, "registrationInfo"    # Lorg/codeaurora/ims/ImsRegistrationInfo;

    .line 2844
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLog(I)V

    .line 2846
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsNetworkStateChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 2848
    return-void
.end method

.method public onRetrievingGeoLocationDataStatus(I)V
    .locals 4
    .param p1, "geoLocationDataStatus"    # I

    .line 3123
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xeb

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3124
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmGeoLocationDataStatusRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3125
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmGeoLocationDataStatusRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 3126
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3125
    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3128
    :cond_0
    return-void
.end method

.method public onRing()V
    .locals 3

    .line 2826
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xca

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 2828
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mRingRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    if-eqz v0, :cond_0

    .line 2829
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mRingRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    invoke-direct {v1, v2, v2, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/Registrant;->notifyRegistrant(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 2831
    :cond_0
    return-void
.end method

.method public onRingbackTone(Z)V
    .locals 4
    .param p1, "tone"    # Z

    .line 2835
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xcb

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 2837
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mRingbackToneRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    if-eqz v0, :cond_0

    .line 2838
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mRingbackToneRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 2840
    :cond_0
    return-void
.end method

.method public onRttMessageReceived(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 3024
    if-nez p1, :cond_0

    .line 3025
    const-string v0, "onRttMessageReceived: msg is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3026
    return-void

    .line 3029
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRttMessageReceived: msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3030
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xdf

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3031
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmRttMessageRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3032
    return-void
.end method

.method public onServiceDomainChanged(I)V
    .locals 4
    .param p1, "domain"    # I

    .line 3138
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xee

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3139
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmSrvDomainChangedRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3140
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmSrvDomainChangedRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 3141
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3140
    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3143
    :cond_0
    return-void
.end method

.method public onServiceDown()V
    .locals 3

    .line 2766
    const-string v0, "onServiceDown: HAL Service not available"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2767
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    sget-object v1, Lorg/codeaurora/ims/ImsSenderRxr;->IIMS_RADIO_SERVICE_NAME:[Ljava/lang/String;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmPhoneId(Lorg/codeaurora/ims/ImsSenderRxr;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mnotifyServiceDown(Lorg/codeaurora/ims/ImsSenderRxr;Ljava/lang/String;)V

    .line 2768
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mclearRequestsList(Lorg/codeaurora/ims/ImsSenderRxr;IZ)V

    .line 2769
    return-void
.end method

.method public onServiceStatusChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ServiceStatus;",
            ">;)V"
        }
    .end annotation

    .line 2864
    .local p1, "srvStatusList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ServiceStatus;>;"
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xd2

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 2866
    if-eqz p1, :cond_0

    .line 2867
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmSrvStatusRegistrations(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 2870
    :cond_0
    return-void
.end method

.method public onServiceUp()V
    .locals 3

    .line 2760
    const-string v0, "onServiceUp: HAL Service available"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2761
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    sget-object v1, Lorg/codeaurora/ims/ImsSenderRxr;->IIMS_RADIO_SERVICE_NAME:[Ljava/lang/String;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmPhoneId(Lorg/codeaurora/ims/ImsSenderRxr;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mnotifyServiceUp(Lorg/codeaurora/ims/ImsSenderRxr;Ljava/lang/String;)V

    .line 2762
    return-void
.end method

.method public onSipDtmfReceived(Ljava/lang/String;)V
    .locals 2
    .param p1, "configCode"    # Ljava/lang/String;

    .line 3132
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xed

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3133
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mnotifySipDtmfInfo(Lorg/codeaurora/ims/ImsSenderRxr;Ljava/lang/String;)V

    .line 3134
    return-void
.end method

.method public onSmsCallBackModeChanged(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 3147
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf0

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3148
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmSmsCallbackModeChangedRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3149
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmSmsCallbackModeChangedRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 3150
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3149
    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3152
    :cond_0
    return-void
.end method

.method public onSuppServiceNotification(Lorg/codeaurora/ims/SuppNotifyInfo;)V
    .locals 3
    .param p1, "suppServiceNotifInfo"    # Lorg/codeaurora/ims/SuppNotifyInfo;

    .line 2939
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xd3

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 2941
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    if-eqz v0, :cond_0

    .line 2942
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/Registrant;->notifyRegistrant(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 2944
    :cond_0
    return-void
.end method

.method public onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V
    .locals 3
    .param p1, "ssData"    # Landroid/telephony/ims/ImsSsData;

    .line 3052
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xe0

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3053
    if-nez p1, :cond_0

    .line 3054
    const-string v0, "onSupplementaryServiceIndication : Data is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3055
    return-void

    .line 3058
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsIndicationRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    if-eqz v0, :cond_1

    .line 3059
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsIndicationRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/Registrant;->notifyRegistrant(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3061
    :cond_1
    return-void
.end method

.method public onTtyNotification([I)V
    .locals 3
    .param p1, "mode"    # [I

    .line 2900
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xd4

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 2901
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmTtyStatusRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2902
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmTtyStatusRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 2904
    :cond_0
    return-void
.end method

.method public onUssdMessageFailed(Lorg/codeaurora/ims/UssdInfo;)V
    .locals 3
    .param p1, "ussdInfo"    # Lorg/codeaurora/ims/UssdInfo;

    .line 3101
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xe8

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3102
    new-instance v0, Lorg/codeaurora/ims/ImsRilException;

    invoke-virtual {p1}, Lorg/codeaurora/ims/UssdInfo;->getErrorCode()I

    move-result v1

    .line 3103
    invoke-virtual {p1}, Lorg/codeaurora/ims/UssdInfo;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsRilException;-><init>(ILjava/lang/String;)V

    .line 3104
    .local v0, "ex":Lorg/codeaurora/ims/ImsRilException;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mnotifyUssdInfo(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/UssdInfo;Lorg/codeaurora/ims/ImsRilException;)V

    .line 3105
    return-void
.end method

.method public onUssdReceived(Lorg/codeaurora/ims/UssdInfo;)V
    .locals 2
    .param p1, "ussdInfo"    # Lorg/codeaurora/ims/UssdInfo;

    .line 3109
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xec

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3110
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mnotifyUssdInfo(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/UssdInfo;Lorg/codeaurora/ims/ImsRilException;)V

    .line 3111
    return-void
.end method

.method public onVoWiFiCallQuality([I)V
    .locals 3
    .param p1, "voWiFiCallQuality"    # [I

    .line 3043
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xd9

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3044
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmVoWiFiCallQualityRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3045
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmVoWiFiCallQualityRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3048
    :cond_0
    return-void
.end method

.method public onVoiceInfoChanged(I)V
    .locals 4
    .param p1, "voiceInfo"    # I

    .line 3036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVoiceInfoChanged: VoiceInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3037
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe4

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3038
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmVoiceInfoStatusRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3039
    return-void
.end method

.method public onVopsChanged(Z)V
    .locals 4
    .param p1, "isVopsEnabled"    # Z

    .line 3065
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xda

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3066
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmVopsRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3067
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmVopsRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3069
    :cond_0
    return-void
.end method
