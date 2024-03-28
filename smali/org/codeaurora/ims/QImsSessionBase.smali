.class public abstract Lorg/codeaurora/ims/QImsSessionBase;
.super Landroid/telephony/ims/stub/ImsCallSessionImplBase;
.source "QImsSessionBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/QImsSessionBase$Listener;,
        Lorg/codeaurora/ims/QImsSessionBase$ListenerBase;
    }
.end annotation


# instance fields
.field public mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

.field protected mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field protected mContext:Landroid/content/Context;

.field protected mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/QImsSessionBase$Listener;",
            ">;"
        }
    .end annotation
.end field

.field protected mPhoneId:I

.field protected mState:I

.field protected mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p3, "phoneId"    # I
    .param p4, "tracker"    # Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 74
    new-instance v5, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-direct {v5}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/QImsSessionBase;-><init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;)V

    .line 75
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p3, "phoneId"    # I
    .param p4, "tracker"    # Lorg/codeaurora/ims/ImsServiceClassTracker;
    .param p5, "handler"    # Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 79
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mPhoneId:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mState:I

    .line 45
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    .line 80
    iput-object p2, p0, Lorg/codeaurora/ims/QImsSessionBase;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 81
    iput-object p1, p0, Lorg/codeaurora/ims/QImsSessionBase;->mContext:Landroid/content/Context;

    .line 82
    iput-object p4, p0, Lorg/codeaurora/ims/QImsSessionBase;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 83
    iput p3, p0, Lorg/codeaurora/ims/QImsSessionBase;->mPhoneId:I

    .line 84
    iput-object p5, p0, Lorg/codeaurora/ims/QImsSessionBase;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 85
    return-void
.end method


# virtual methods
.method public addListener(Lorg/codeaurora/ims/QImsSessionBase$Listener;)V
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/QImsSessionBase$Listener;

    .line 114
    invoke-virtual {p0}, Lorg/codeaurora/ims/QImsSessionBase;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 116
    :cond_0
    if-eqz p1, :cond_2

    .line 121
    iget-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    iget-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate listener, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    :goto_0
    return-void

    .line 117
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getState()I
    .locals 1

    .line 196
    invoke-virtual {p0}, Lorg/codeaurora/ims/QImsSessionBase;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 197
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mState:I

    return v0
.end method

.method public isSessionValid()Z
    .locals 2

    .line 182
    iget v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 183
    .local v0, "isValid":Z
    :goto_0
    if-nez v0, :cond_1

    .line 184
    const-string v1, "Session is closed"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    :cond_1
    return v0
.end method

.method public notifyCallModifyInitiate(Lorg/codeaurora/ims/CallModify;)V
    .locals 2
    .param p1, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 168
    invoke-virtual {p0}, Lorg/codeaurora/ims/QImsSessionBase;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/QImsSessionBase$Listener;

    .line 170
    .local v1, "l":Lorg/codeaurora/ims/QImsSessionBase$Listener;
    invoke-interface {v1, p0, p1}, Lorg/codeaurora/ims/QImsSessionBase$Listener;->onCallModifyInitiated(Lorg/codeaurora/ims/QImsSessionBase;Lorg/codeaurora/ims/CallModify;)V

    .line 171
    .end local v1    # "l":Lorg/codeaurora/ims/QImsSessionBase$Listener;
    goto :goto_0

    .line 172
    :cond_1
    return-void
.end method

.method protected notifyCallTypeChanging(I)V
    .locals 2
    .param p1, "callType"    # I

    .line 175
    invoke-virtual {p0}, Lorg/codeaurora/ims/QImsSessionBase;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/QImsSessionBase$Listener;

    .line 177
    .local v1, "l":Lorg/codeaurora/ims/QImsSessionBase$Listener;
    invoke-interface {v1, p0, p1}, Lorg/codeaurora/ims/QImsSessionBase$Listener;->onCallTypeChanging(Lorg/codeaurora/ims/QImsSessionBase;I)V

    .line 178
    .end local v1    # "l":Lorg/codeaurora/ims/QImsSessionBase$Listener;
    goto :goto_0

    .line 179
    :cond_1
    return-void
.end method

.method protected notifySessionClosed()V
    .locals 2

    .line 155
    iget-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/QImsSessionBase$Listener;

    .line 156
    .local v1, "l":Lorg/codeaurora/ims/QImsSessionBase$Listener;
    invoke-interface {v1, p0}, Lorg/codeaurora/ims/QImsSessionBase$Listener;->onClosed(Lorg/codeaurora/ims/QImsSessionBase;)V

    .line 157
    .end local v1    # "l":Lorg/codeaurora/ims/QImsSessionBase$Listener;
    goto :goto_0

    .line 158
    :cond_0
    return-void
.end method

.method protected notifySessionDisconnected()V
    .locals 2

    .line 149
    iget-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/QImsSessionBase$Listener;

    .line 150
    .local v1, "l":Lorg/codeaurora/ims/QImsSessionBase$Listener;
    invoke-interface {v1, p0}, Lorg/codeaurora/ims/QImsSessionBase$Listener;->onDisconnected(Lorg/codeaurora/ims/QImsSessionBase;)V

    .line 151
    .end local v1    # "l":Lorg/codeaurora/ims/QImsSessionBase$Listener;
    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method

.method public notifyUnsolCallModify(Lorg/codeaurora/ims/CallModify;)V
    .locals 2
    .param p1, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 161
    invoke-virtual {p0}, Lorg/codeaurora/ims/QImsSessionBase;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/QImsSessionBase$Listener;

    .line 163
    .local v1, "l":Lorg/codeaurora/ims/QImsSessionBase$Listener;
    invoke-interface {v1, p0, p1}, Lorg/codeaurora/ims/QImsSessionBase$Listener;->onUnsolCallModify(Lorg/codeaurora/ims/QImsSessionBase;Lorg/codeaurora/ims/CallModify;)V

    .line 164
    .end local v1    # "l":Lorg/codeaurora/ims/QImsSessionBase$Listener;
    goto :goto_0

    .line 165
    :cond_1
    return-void
.end method

.method public removeListener(Lorg/codeaurora/ims/QImsSessionBase$Listener;)V
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/QImsSessionBase$Listener;

    .line 134
    invoke-virtual {p0}, Lorg/codeaurora/ims/QImsSessionBase;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    if-eqz p1, :cond_2

    .line 141
    iget-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Listener not found, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    :goto_0
    return-void

    .line 137
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setListener(Landroid/telephony/ims/ImsCallSessionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;

    .line 100
    invoke-virtual {p0}, Lorg/codeaurora/ims/QImsSessionBase;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iput-object p1, v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    .line 102
    return-void
.end method

.method public updateFeatureCapabilities(ZZ)V
    .locals 0
    .param p1, "isVideo"    # Z
    .param p2, "isVoice"    # Z

    .line 89
    return-void
.end method
