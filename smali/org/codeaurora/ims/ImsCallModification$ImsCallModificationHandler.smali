.class Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;
.super Landroid/os/Handler;
.source "ImsCallModification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsCallModification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsCallModificationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsCallModification;


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/ImsCallModification;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsCallModification;

    .line 606
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    .line 607
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 608
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsCallModification;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsCallModification;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 610
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    .line 611
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 612
    return-void
.end method

.method private clearMultiTaskRetryCount()I
    .locals 2

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clearing MultiTaskRetryCount from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fgetmMultiTaskRetryCount(Lorg/codeaurora/ims/ImsCallModification;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fputmMultiTaskRetryCount(Lorg/codeaurora/ims/ImsCallModification;I)V

    return v1
.end method

.method private onAvpRetry(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 709
    const-string v0, "EVENT_AVP_UPGRADE received"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 710
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 711
    .local v0, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 712
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 713
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 714
    .local v1, "shouldNotifyUser":Z
    if-eqz v1, :cond_0

    .line 715
    const-string v2, "AVP Retry error when Voice call was upgraded to video call"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 723
    :cond_0
    const-string v2, "AVP Retry error when Video call was dialed"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 727
    .end local v1    # "shouldNotifyUser":Z
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mclearPendingModify(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 728
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mprocessPendingVTMultitask(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 729
    return-void
.end method

.method private onModifyCallDone(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onModifyCallDone for event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 635
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 636
    .local v0, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v0, :cond_1

    .line 640
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fgetmCallModifyRequest(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 641
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fgetmCallModifyRequest(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;

    move-result-object v2

    iget-object v2, v2, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v2, v2, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mupdatePreviousVTCallType(Lorg/codeaurora/ims/ImsCallModification;I)V

    goto :goto_0

    .line 643
    :cond_0
    const-string v1, "videocall error during modifyCall"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 649
    :cond_1
    :goto_0
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 650
    .local v1, "onComplete":Landroid/os/Message;
    if-eqz v1, :cond_2

    .line 651
    iget-object v2, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Lorg/codeaurora/telephony/utils/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 652
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 654
    :cond_2
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mclearPendingModify(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 655
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mprocessPendingVTMultitask(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 656
    return-void
.end method

.method private onVideoPauseDone(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 660
    const-string v0, "EVENT_VIDEO_PAUSE_DONE received"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 661
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 662
    .local v0, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v0, :cond_4

    .line 663
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 666
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fgetmCallModifyRequest(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 667
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fgetmCallModifyRequest(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;

    move-result-object v3

    iget-object v3, v3, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v3, v3, Lorg/codeaurora/ims/CallDetails;->call_type:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fputmIsLocallyPaused(Lorg/codeaurora/ims/ImsCallModification;Z)V

    .line 670
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mclearPendingModify(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 671
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->clearMultiTaskRetryCount()I

    .line 672
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mprocessPendingVTMultitask(Lorg/codeaurora/ims/ImsCallModification;)V

    goto :goto_1

    .line 676
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mshouldRetryVideoPause(Lorg/codeaurora/ims/ImsCallModification;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 677
    const-string v1, "Error during video pause so retry"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 678
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    iget-object v3, v3, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 680
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fgetmMultiTaskRetryCount(Lorg/codeaurora/ims/ImsCallModification;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v1, v3}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fputmMultiTaskRetryCount(Lorg/codeaurora/ims/ImsCallModification;I)V

    goto :goto_1

    .line 682
    :cond_3
    const-string v1, "Video Pause retry limit reached."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 683
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->clearMultiTaskRetryCount()I

    .line 684
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mclearPendingModify(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 685
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mprocessPendingVTMultitask(Lorg/codeaurora/ims/ImsCallModification;)V

    goto :goto_1

    .line 689
    :cond_4
    const-string v1, "Error EVENT_VIDEO_PAUSE_DONE ar is null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 691
    :goto_1
    return-void
.end method

.method private onVideoPauseRetry()V
    .locals 2

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_VIDEO_PAUSE_RETRY received mMultiTaskRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fgetmMultiTaskRetryCount(Lorg/codeaurora/ims/ImsCallModification;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 696
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fgetmPendingVTMultitask(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/ImsCallModification$PauseState;

    move-result-object v0

    sget-object v1, Lorg/codeaurora/ims/ImsCallModification$PauseState;->NONE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    if-ne v0, v1, :cond_0

    .line 697
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fgetmCallModifyRequest(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 698
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fgetmCallModifyRequest(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;

    move-result-object v1

    iget-object v1, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mcreateAndSendMultiTaskRequest(Lorg/codeaurora/ims/ImsCallModification;I)V

    goto :goto_0

    .line 701
    :cond_0
    const-string v0, "User pressed home/resume during retry sending new multitask request"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 702
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mclearPendingModify(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 703
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->clearMultiTaskRetryCount()I

    .line 704
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mprocessPendingVTMultitask(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 706
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 616
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 625
    :pswitch_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->onVideoPauseRetry()V

    .line 626
    goto :goto_0

    .line 622
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->onVideoPauseDone(Landroid/os/Message;)V

    .line 623
    goto :goto_0

    .line 619
    :pswitch_2
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->onModifyCallDone(Landroid/os/Message;)V

    .line 620
    goto :goto_0

    .line 628
    :pswitch_3
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->onAvpRetry(Landroid/os/Message;)V

    .line 631
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
