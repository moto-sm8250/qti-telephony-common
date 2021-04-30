.class public Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
.super Landroid/os/Handler;
.source "QtiUiccCardProvisioner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;
    }
.end annotation


# static fields
.field private static final ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED:Ljava/lang/String; = "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

.field private static final DBG:Z = true

.field private static final EVENT_GET_ICCID_DONE:I = 0x4

.field private static final EVENT_ICC_CHANGED:I = 0x1

.field private static final EVENT_OEM_HOOK_SERVICE_READY:I = 0x3

.field private static final EVENT_RADIO_AVAILABLE:I = 0x5

.field private static final EVENT_SIM_REFRESH:I = 0x6

.field private static final EVENT_UNSOL_MANUAL_PROVISION_STATUS_CHANGED:I = 0x2

.field private static final EXTRA_NEW_PROVISION_STATE:Ljava/lang/String; = "newProvisionState"

.field private static final GENERIC_FAILURE:I = -0x1

.field private static final ICCID_MINIMUM_LEN:I = 0x13

.field private static final INVALID_INPUT:I = -0x2

.field private static final LOG_TAG:Ljava/lang/String; = "QtiUiccCardProvisioner"

.field private static final REQUEST_IN_PROGRESS:I = -0x3

.field private static final SUCCESS:I = 0x0

.field private static final VDBG:Z = false

.field private static mNumPhones:I

.field private static mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

.field private static sManualProvLock:Ljava/lang/Object;


# instance fields
.field private mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field private final mCis:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mIsIccIdQueryPending:[Z

.field private mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

.field private mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

.field private mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

.field private mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

.field private mSimFullIccId:[Ljava/lang/String;

.field private mSimIccId:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 93
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cis"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 191
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 77
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

    .line 192
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mContext:Landroid/content/Context;

    .line 194
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 195
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Invoking constructor, no of phones = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 198
    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    .line 199
    sget v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    new-array v1, v0, [Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    .line 200
    new-array v1, v0, [Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    .line 201
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    .line 202
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimFullIccId:[Ljava/lang/String;

    .line 203
    new-array v1, v0, [Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 204
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mIsIccIdQueryPending:[Z

    .line 205
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aput-object v2, v1, v0

    .line 207
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimFullIccId:[Ljava/lang/String;

    aput-object v2, v1, v0

    .line 208
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    new-instance v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    invoke-direct {v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;-><init>()V

    aput-object v2, v1, v0

    .line 209
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v2, v1, v0

    .line 210
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mIsIccIdQueryPending:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 211
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    new-instance v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    invoke-direct {v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;-><init>()V

    aput-object v2, v1, v0

    .line 213
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    const/4 v2, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 214
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    const/4 v2, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    .end local v0    # "index":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 217
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 219
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 220
    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->registerForServiceReadyEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->registerForUnsol(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 223
    return-void
.end method

.method private broadcastManualProvisionStatusChanged(II)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "newProvisionState"    # I

    .line 602
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 603
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 604
    const-string v1, "newProvisionState"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 605
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 606
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 607
    return-void
.end method

.method private canProcessRequest(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .line 752
    const/4 v0, 0x0

    .line 754
    .local v0, "retVal":Z
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isValidSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 755
    const/4 v0, 0x1

    goto :goto_0

    .line 757
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request can\'t be processed, slotId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " numPhones "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 759
    :goto_0
    return v0
.end method

.method private enforceModifyPhoneState(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 746
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    return-void
.end method

.method private getCurrentProvisioningStatus(I)I
    .locals 2
    .param p1, "slotId"    # I

    .line 611
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v0

    .line 612
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->getCurrentState()I

    move-result v1

    monitor-exit v0

    return v1

    .line 613
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getFullIccIdFromUicc(I)Ljava/lang/String;
    .locals 6
    .param p1, "phoneId"    # I

    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, "fullIccId":Ljava/lang/String;
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 522
    .local v1, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v2

    .line 523
    .local v2, "uiccSlot":Lcom/android/internal/telephony/uicc/UiccSlot;
    if-eqz v1, :cond_0

    .line 524
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 525
    :cond_0
    const-string v3, "] object is null"

    if-eqz v2, :cond_1

    .line 526
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " queryUiccProvisionInfo, uiccCard["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->getIccId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 529
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " queryUiccProvisionInfo, uiccSlot["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 531
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " queryUiccProvisionInfo, full iccId for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 532
    return-object v0
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    .locals 2

    .line 185
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    if-nez v0, :cond_0

    .line 186
    const-string v0, "QtiUiccCardProvisioner"

    const-string v1, "QtiUiccCardProvisioner.getInstance called before make"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    return-object v0
.end method

.method private handleUnsolManualProvisionEvent(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 371
    if-eqz p1, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 375
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 376
    .local v0, "payload":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 378
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 379
    .local v1, "rspId":I
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 381
    .local v2, "slotId":I
    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isValidSlotId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x80404

    if-ne v1, v3, :cond_1

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Unsol: rspId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " slotId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 384
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->queryUiccProvisionInfo(IZ)V

    .line 385
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v4

    .line 386
    .local v4, "dataSubId":I
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v5

    .line 387
    .local v5, "dataSlotId":I
    if-ne v2, v5, :cond_1

    .line 388
    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 389
    const-string v6, "Set dds after SSR"

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 390
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setDdsIfRequired(Z)V

    .line 393
    .end local v4    # "dataSubId":I
    .end local v5    # "dataSlotId":I
    :cond_1
    return-void

    .line 372
    .end local v0    # "payload":Ljava/nio/ByteBuffer;
    .end local v1    # "rspId":I
    .end local v2    # "slotId":I
    :cond_2
    :goto_0
    const-string v0, "Null data received in handleUnsolManualProvisionEvent"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method private isEuiccHasEmptyProfiles(I)Z
    .locals 7
    .param p1, "phoneId"    # I

    .line 814
    const/4 v0, 0x0

    .line 815
    .local v0, "retVal":Z
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 816
    .local v1, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v2

    .line 817
    .local v2, "uiccSlot":Lcom/android/internal/telephony/uicc/UiccSlot;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 818
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v3

    .line 819
    .local v3, "uiccProfile":Lcom/android/internal/telephony/uicc/UiccProfile;
    if-eqz v3, :cond_0

    .line 820
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v4

    .line 821
    .local v4, "eUiccSupported":Z
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->getNumApplications()I

    move-result v5

    .line 822
    .local v5, "numOfApps":I
    if-nez v5, :cond_0

    if-eqz v4, :cond_0

    .line 823
    const-string v6, "eUICC don\'t have active profiles"

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 824
    const/4 v0, 0x1

    .line 828
    .end local v3    # "uiccProfile":Lcom/android/internal/telephony/uicc/UiccProfile;
    .end local v4    # "eUiccSupported":Z
    .end local v5    # "numOfApps":I
    :cond_0
    return v0
.end method

.method private isValidIccid(Ljava/lang/String;)Z
    .locals 2
    .param p1, "iccid"    # Ljava/lang/String;

    .line 511
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    const-string v0, "89"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 515
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 512
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private isValidSlotId(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .line 763
    const/4 v0, 0x0

    .line 765
    .local v0, "retVal":Z
    if-ltz p1, :cond_0

    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    if-ge p1, v1, :cond_0

    .line 766
    const/4 v0, 0x1

    .line 768
    :cond_0
    return v0
.end method

.method private loadIccId(I)V
    .locals 7
    .param p1, "phoneId"    # I

    .line 536
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 537
    .local v0, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_2

    .line 538
    const/4 v1, 0x0

    .line 539
    .local v1, "validApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v2

    .line 540
    .local v2, "numApps":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 541
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v4

    .line 542
    .local v4, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v5, v6, :cond_0

    .line 543
    move-object v1, v4

    .line 544
    goto :goto_1

    .line 540
    .end local v4    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 547
    .end local v3    # "i":I
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 548
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v3

    .line 549
    .local v3, "fileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v3, :cond_2

    .line 550
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mIsIccIdQueryPending:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, p1

    .line 551
    const/16 v4, 0x2fe2

    const/4 v5, 0x4

    .line 552
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 551
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 556
    .end local v1    # "validApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v2    # "numApps":I
    .end local v3    # "fileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_2
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 832
    const-string v0, "QtiUiccCardProvisioner"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 840
    const-string v0, "QtiUiccCardProvisioner"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 836
    const-string v0, "QtiUiccCardProvisioner"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    return-void
.end method

.method public static make(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 163
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    goto :goto_0

    .line 166
    :cond_0
    const-string v0, "QtiUiccCardProvisioner"

    const-string v1, "QtiUiccCardProvisioner.make() should be called once"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    return-object v0
.end method

.method public static make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cis"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 154
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    goto :goto_0

    .line 157
    :cond_0
    const-string v0, "QtiUiccCardProvisioner"

    const-string v1, "QtiUiccCardProvisioner.make() should be called once"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    return-object v0
.end method

.method private queryAllUiccProvisionInfo()V
    .locals 3

    .line 396
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " query  provision info, card state["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mIsIccIdQueryPending:[Z

    aget-boolean v1, v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 400
    invoke-direct {p0, v0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->queryUiccProvisionInfo(IZ)V

    .line 396
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    .end local v0    # "index":I
    :cond_1
    return-void
.end method

.method private queryUiccProvisionInfo(IZ)V
    .locals 11
    .param p1, "phoneId"    # I
    .param p2, "useSimIORequest"    # Z

    .line 414
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v0, v0, p1

    .line 420
    .local v0, "oldStatus":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v1, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getUiccProvisionPreference(I)Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    move-result-object v1

    .line 421
    .local v1, "subStatus":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;
    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->getCurrentState()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 422
    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->getUserPreference()I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 423
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v2

    .line 424
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aput-object v1, v3, p1

    .line 425
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 430
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getFullIccIdFromUicc(I)Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, "fullIccId":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 432
    .local v3, "iccId":Ljava/lang/String;
    sget-object v4, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    .line 433
    .local v4, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    sget-object v5, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v5, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v5

    .line 435
    .local v5, "uiccSlot":Lcom/android/internal/telephony/uicc/UiccSlot;
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v7, v6, p1

    if-eqz v7, :cond_2

    aget-object v6, v6, p1

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 436
    :cond_2
    if-eqz v4, :cond_8

    .line 437
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v6

    .line 438
    .local v6, "uiccProfile":Lcom/android/internal/telephony/uicc/UiccProfile;
    if-eqz v5, :cond_7

    .line 439
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v7

    .line 440
    .local v7, "eUiccSupported":Z
    if-eqz v6, :cond_7

    .line 441
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccProfile;->getNumApplications()I

    move-result v8

    .line 442
    .local v8, "numOfApps":I
    if-nez v8, :cond_3

    if-eqz v7, :cond_3

    .line 443
    const-string v9, "Can\'t addsubinforecord as num_apps 0 and slot is Euicc"

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 446
    :cond_3
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isValidIccid(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 447
    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimFullIccId:[Ljava/lang/String;

    aput-object v2, v9, p1

    .line 448
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    move-result-object v9

    .line 449
    invoke-virtual {v9, p1, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->addSubInfoRecord(ILjava/lang/String;)V

    .line 450
    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aput-object v3, v9, p1

    goto :goto_1

    .line 452
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " queryUiccProvisionInfo: useSimIORequest=  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 454
    if-eqz p2, :cond_5

    .line 455
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loadIccId(I)V

    goto :goto_1

    .line 457
    :cond_5
    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v9, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getUiccIccId(I)Ljava/lang/String;

    move-result-object v2

    .line 458
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 461
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isValidIccid(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 462
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OEM add subInfo record, iccId["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 464
    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimFullIccId:[Ljava/lang/String;

    aput-object v2, v9, p1

    .line 465
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    move-result-object v9

    .line 466
    invoke-virtual {v9, p1, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->addSubInfoRecord(ILjava/lang/String;)V

    .line 467
    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aput-object v3, v9, p1

    goto :goto_1

    .line 469
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " queryUiccProvisionInfo, ICCID["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "] is null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 477
    .end local v6    # "uiccProfile":Lcom/android/internal/telephony/uicc/UiccProfile;
    .end local v7    # "eUiccSupported":Z
    .end local v8    # "numOfApps":I
    :cond_7
    :goto_1
    goto :goto_2

    .line 478
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " queryUiccProvisionInfo, uiccCard["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] object is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 481
    :cond_9
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " queryUiccProvisionInfo, iccId["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v7, v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 484
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v6, v6, p1

    invoke-virtual {v0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->equals(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 485
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v6, v6, p1

    if-eqz v6, :cond_a

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isAllCardProvisionInfoReceived()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 486
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v6

    .line 487
    .local v6, "subIds":[I
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mContext:Landroid/content/Context;

    .line 488
    const-string v8, "telephony_subscription_service"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionManager;

    .line 494
    .local v7, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    if-eqz v6, :cond_a

    array-length v8, v6

    if-eqz v8, :cond_a

    const/4 v8, 0x0

    aget v8, v6, v8

    .line 495
    invoke-virtual {v7, v8}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 496
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    move-result-object v8

    invoke-virtual {v8}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->updateUserPreferences()V

    .line 499
    .end local v6    # "subIds":[I
    .end local v7    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    :cond_a
    if-eqz p2, :cond_b

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v6, v6, p1

    if-eqz v6, :cond_c

    .line 500
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " broadcasting ProvisionInfo, phoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 501
    nop

    .line 502
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v6

    .line 501
    invoke-direct {p0, p1, v6}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->broadcastManualProvisionStatusChanged(II)V

    .line 503
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v7, v7, p1

    aput-object v7, v6, p1

    .line 506
    :cond_c
    return-void

    .line 415
    .end local v0    # "oldStatus":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;
    .end local v1    # "subStatus":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;
    .end local v2    # "fullIccId":Ljava/lang/String;
    .end local v3    # "iccId":Ljava/lang/String;
    .end local v4    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v5    # "uiccSlot":Lcom/android/internal/telephony/uicc/UiccSlot;
    :cond_d
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Oem hook service is not ready yet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method private updateIccAvailability(I)V
    .locals 8
    .param p1, "phoneId"    # I

    .line 559
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid phone Index!!! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 561
    return-void

    .line 563
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 564
    .local v0, "newState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v1

    .line 565
    .local v1, "newSlot":Lcom/android/internal/telephony/uicc/UiccSlot;
    if-eqz v1, :cond_6

    .line 566
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    .line 571
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccAvailability, card state["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 573
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v0, v2, p1

    .line 574
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v2

    .line 575
    .local v2, "currentState":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v3, v3, p1

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const/4 v5, -0x2

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v3, v3, p1

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v5, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mIsIccIdQueryPending:[Z

    aget-boolean v3, v3, p1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 580
    invoke-direct {p0, p1, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->queryUiccProvisionInfo(IZ)V

    goto :goto_0

    .line 581
    :cond_2
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v3, v3, p1

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v3, v4, :cond_3

    .line 582
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->isStateUnknown()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v3, v3, p1

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v3, v4, :cond_5

    .line 584
    :cond_4
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v3

    .line 585
    :try_start_0
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v4, v4, p1

    invoke-virtual {v4, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setUserPreference(I)V

    .line 586
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v4, v4, p1

    invoke-virtual {v4, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setCurrentState(I)V

    .line 587
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v4, v4, p1

    invoke-virtual {v4, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setUserPreference(I)V

    .line 589
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v4, v4, p1

    invoke-virtual {v4, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setCurrentState(I)V

    .line 590
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v5, v4, p1

    .line 591
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimFullIccId:[Ljava/lang/String;

    aput-object v5, v4, p1

    .line 592
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v6, Landroid/os/AsyncResult;

    .line 593
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v5, v7, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 592
    invoke-virtual {v4, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 594
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isAllCardProvisionInfoReceived()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 596
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->updateUserPreferences()V

    goto :goto_0

    .line 594
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 599
    :cond_5
    :goto_0
    return-void

    .line 568
    .end local v2    # "currentState":I
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccAvailability, uicc card null, ignore "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 569
    return-void
.end method


# virtual methods
.method public activateUiccCard(I)I
    .locals 6
    .param p1, "slotId"    # I

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " activateUiccCard: phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 661
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Oem hook service is not ready yet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 663
    const/4 v0, -0x1

    return v0

    .line 666
    :cond_0
    const-string v0, "activateUiccCard"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 668
    const/4 v0, 0x0

    .line 670
    .local v0, "activateStatus":I
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->canProcessRequest(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 671
    const/4 v0, -0x2

    goto/16 :goto_1

    .line 672
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->canToggleUiccApplicationsEnablement()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 673
    const-string v1, "activateUiccCard is not appropriate to use. For 1.5 HAL use enableUiccApplications"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 675
    const/4 v0, -0x1

    goto/16 :goto_1

    .line 676
    :cond_2
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 677
    const-string v1, "activateUiccCard is not supported for Single SIM with 1.4 HAL"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 678
    const/4 v0, -0x1

    goto :goto_1

    .line 679
    :cond_3
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Uicc card in slot["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] already activated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 681
    :cond_4
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isFlexMapInProgress()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 682
    const/4 v1, 0x0

    .line 684
    .local v1, "retVal":Z
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v4, v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->setUiccProvisionPreference(II)Z

    move-result v1

    .line 686
    if-nez v1, :cond_5

    .line 687
    const/4 v0, -0x1

    goto :goto_0

    .line 689
    :cond_5
    sget-object v4, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v4

    .line 690
    :try_start_0
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v5, v5, p1

    invoke-virtual {v5, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setCurrentState(I)V

    .line 691
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " activation result["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 694
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 695
    .end local v1    # "retVal":Z
    goto :goto_1

    .line 691
    .restart local v1    # "retVal":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 696
    .end local v1    # "retVal":Z
    :cond_6
    const/4 v0, -0x3

    .line 699
    :goto_1
    return v0
.end method

.method public deactivateUiccCard(I)I
    .locals 5
    .param p1, "slotId"    # I

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " deactivateUiccCard: phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 705
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Oem hook service is not ready yet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 707
    const/4 v0, -0x1

    return v0

    .line 710
    :cond_0
    const-string v0, "deactivateUiccCard"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 712
    const/4 v0, 0x0

    .line 713
    .local v0, "deactivateState":I
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->canProcessRequest(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 714
    const/4 v0, -0x2

    goto/16 :goto_1

    .line 715
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->canToggleUiccApplicationsEnablement()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 716
    const-string v1, "deactivateUiccCard is not appropriate to use. For 1.5 HAL use enableUiccApplications"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 718
    const/4 v0, -0x1

    goto/16 :goto_1

    .line 719
    :cond_2
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 720
    const-string v1, "deactivateUiccCard is not supported for Single SIM with 1.4 HAL"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 721
    const/4 v0, -0x1

    goto :goto_1

    .line 722
    :cond_3
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v1

    if-nez v1, :cond_4

    .line 723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Uicc card in slot["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] already in deactive state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 724
    :cond_4
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isFlexMapInProgress()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 725
    const/4 v1, 0x0

    .line 727
    .local v1, "retVal":Z
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v2, v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->setUiccProvisionPreference(II)Z

    move-result v1

    .line 729
    if-nez v1, :cond_5

    .line 730
    const/4 v0, -0x1

    goto :goto_0

    .line 732
    :cond_5
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v2

    .line 733
    :try_start_0
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v4, v4, p1

    invoke-virtual {v4, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setCurrentState(I)V

    .line 734
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " deactivation result["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 737
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 738
    .end local v1    # "retVal":Z
    goto :goto_1

    .line 734
    .restart local v1    # "retVal":Z
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 739
    .end local v1    # "retVal":Z
    :cond_6
    const/4 v0, -0x3

    .line 742
    :goto_1
    return v0
.end method

.method public dispose()V
    .locals 2

    .line 174
    const-string v0, " disposing... "

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 176
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 177
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 179
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v1, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->unRegisterForServiceReadyEvent(Landroid/os/Handler;)V

    .line 180
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v1, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->unRegisterForUnsol(Landroid/os/Handler;)V

    .line 181
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 182
    return-void
.end method

.method public getCurrentUiccCardProvisioningStatus(I)I
    .locals 7
    .param p1, "slotId"    # I

    .line 617
    const/4 v0, -0x1

    .line 619
    .local v0, "currentStatus":I
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->canProcessRequest(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 620
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->canToggleUiccApplicationsEnablement()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 621
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v1

    .line 622
    .local v1, "subIds":[I
    if-eqz v1, :cond_1

    array-length v3, v1

    if-eqz v3, :cond_1

    .line 623
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mContext:Landroid/content/Context;

    .line 624
    const-string v4, "telephony_subscription_service"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionManager;

    .line 625
    .local v3, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    const/4 v4, 0x0

    aget v5, v1, v4

    invoke-virtual {v3, v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    .line 626
    .local v5, "si":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->areUiccApplicationsEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 627
    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    move v0, v2

    .line 628
    .end local v3    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    .end local v5    # "si":Landroid/telephony/SubscriptionInfo;
    goto :goto_1

    .line 629
    :cond_1
    const/4 v0, -0x2

    .line 631
    .end local v1    # "subIds":[I
    :goto_1
    goto :goto_2

    .line 632
    :cond_2
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    if-ne v1, v2, :cond_3

    .line 635
    const/4 v0, 0x1

    goto :goto_2

    .line 637
    :cond_3
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v0

    .line 641
    :cond_4
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getCurrentUiccCardProvisioningStatus, state["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 643
    return v0
.end method

.method public getUiccCardProvisioningUserPreference(I)I
    .locals 3
    .param p1, "slotId"    # I

    .line 647
    const/4 v0, -0x1

    .line 649
    .local v0, "userPref":I
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->canProcessRequest(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 650
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v1

    .line 651
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->getUserPreference()I

    move-result v2

    move v0, v2

    .line 652
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 655
    :cond_0
    :goto_0
    return v0
.end method

.method public getUiccFullIccId(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .line 410
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimFullIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getUiccIccId(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .line 406
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 243
    const/4 v0, -0x1

    .line 245
    .local v0, "phoneId":I
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: hit default case "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 343
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 345
    .local v1, "ar":Landroid/os/AsyncResult;
    if-eqz v1, :cond_d

    .line 346
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " SIM refresh: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 348
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 349
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .line 353
    .local v2, "refreshRsp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    iget v3, v2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 354
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 355
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimFullIccId:[Ljava/lang/String;

    aput-object v4, v3, v0

    .line 357
    .end local v2    # "refreshRsp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    :cond_0
    goto/16 :goto_1

    .line 358
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM refresh Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 247
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 248
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    if-eqz v1, :cond_d

    .line 249
    iget-object v3, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RADIO_AVAILABLE for phone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isAllCardProvisionInfoReceived()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 253
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v3

    .line 254
    .local v3, "subIds":[I
    if-eqz v3, :cond_2

    array-length v4, v3

    if-eqz v4, :cond_2

    .line 255
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v4

    aget v2, v3, v2

    .line 256
    invoke-virtual {v4, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_4

    .line 258
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v2

    const/4 v4, -0x2

    if-ne v2, v4, :cond_4

    .line 260
    :cond_3
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->updateUserPreferences()V

    .line 263
    :cond_4
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 264
    .end local v3    # "subIds":[I
    goto/16 :goto_1

    .line 297
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 298
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    const/4 v3, 0x0

    .line 299
    .local v3, "iccId":Ljava/lang/String;
    const/4 v4, 0x0

    .line 300
    .local v4, "fullIccId":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 301
    iget-object v5, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 302
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_5

    .line 303
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    .line 304
    .local v5, "data":[B
    array-length v6, v5

    invoke-static {v5, v2, v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bchToString([BII)Ljava/lang/String;

    move-result-object v4

    .line 305
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 306
    .end local v5    # "data":[B
    goto :goto_0

    .line 307
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in GET iccId["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 310
    :cond_6
    :goto_0
    if-ltz v0, :cond_d

    sget v5, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    if-ge v0, v5, :cond_d

    .line 311
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mIsIccIdQueryPending:[Z

    aput-boolean v2, v5, v0

    .line 313
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 314
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM_IO add subInfo record, iccId["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 315
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimFullIccId:[Ljava/lang/String;

    aput-object v4, v5, v0

    .line 316
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->addSubInfoRecord(ILjava/lang/String;)V

    .line 317
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aput-object v3, v5, v0

    .line 318
    aget-object v5, v5, v0

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isAllCardProvisionInfoReceived()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 319
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mContext:Landroid/content/Context;

    .line 320
    const-string v6, "telephony_subscription_service"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionManager;

    .line 322
    .local v5, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v6

    .line 324
    .local v6, "subIds":[I
    if-eqz v6, :cond_7

    array-length v7, v6

    if-eqz v7, :cond_7

    aget v2, v6, v2

    .line 325
    invoke-virtual {v5, v2}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 326
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->updateUserPreferences()V

    .line 329
    .end local v5    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    .end local v6    # "subIds":[I
    :cond_7
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    if-eqz v2, :cond_d

    aget-object v2, v2, v0

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v5, v5, v0

    .line 330
    invoke-virtual {v2, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->equals(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " broadcasting ProvisionInfo, phoneId = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 332
    nop

    .line 333
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v2

    .line 332
    invoke-direct {p0, v0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->broadcastManualProvisionStatusChanged(II)V

    .line 334
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v5, v5, v0

    aput-object v5, v2, v0

    goto :goto_1

    .line 337
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " EVENT_GET_ICCID_DONE, ICCID is empty, phoneId = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    goto :goto_1

    .line 276
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "iccId":Ljava/lang/String;
    .end local v4    # "fullIccId":Ljava/lang/String;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 277
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    if-eqz v1, :cond_a

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_a

    .line 278
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 279
    .local v2, "isServiceReady":Z
    if-eqz v2, :cond_9

    .line 280
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->queryAllUiccProvisionInfo()V

    .line 282
    .end local v2    # "isServiceReady":Z
    :cond_9
    goto :goto_1

    .line 283
    :cond_a
    const-string v2, "Error: empty result, EVENT_OEM_HOOK_SERVICE_READY"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 285
    goto :goto_1

    .line 288
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 290
    .local v1, "asyncresult":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v1, :cond_b

    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_b

    .line 291
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->handleUnsolManualProvisionEvent(Landroid/os/Message;)V

    goto :goto_1

    .line 293
    :cond_b
    const-string v2, "Error: empty result, UNSOL_MANUAL_PROVISION_STATUS_CHANGED"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 295
    goto :goto_1

    .line 268
    .end local v1    # "asyncresult":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 269
    .local v1, "ar":Landroid/os/AsyncResult;
    if-eqz v1, :cond_c

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_c

    .line 270
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->updateIccAvailability(I)V

    goto :goto_1

    .line 272
    :cond_c
    const-string v2, "Error: Invalid card index EVENT_ICC_CHANGED "

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 274
    nop

    .line 368
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :cond_d
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isAllCardProvisionInfoReceived()Z
    .locals 5

    .line 790
    const/4 v0, 0x1

    .line 791
    .local v0, "received":Z
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    if-ge v1, v2, :cond_3

    .line 792
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isEuiccHasEmptyProfiles(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 793
    const/4 v0, 0x1

    goto :goto_1

    .line 795
    :cond_0
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v2

    .line 796
    .local v2, "provPref":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    goto :goto_2

    .line 791
    .end local v2    # "provPref":I
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 799
    .restart local v2    # "provPref":I
    :cond_2
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAllCardProvisionInfoReceived, prov pref["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 801
    const/4 v0, 0x0

    .line 806
    .end local v1    # "index":I
    .end local v2    # "provPref":I
    :cond_3
    return v0
.end method

.method public isAnyProvisionRequestInProgress()Z
    .locals 1

    .line 784
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isFlexMapInProgress()Z
    .locals 4

    .line 772
    const/4 v0, 0x0

    .line 773
    .local v0, "retVal":Z
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v1

    .line 775
    .local v1, "rcController":Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    if-eqz v1, :cond_0

    .line 776
    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isSetNWModeInProgress()Z

    move-result v0

    .line 777
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFlexMapInProgress: = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 780
    :cond_0
    return v0
.end method

.method public registerForManualProvisionChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 227
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 228
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

    monitor-enter v1

    .line 229
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 230
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 231
    monitor-exit v1

    .line 232
    return-void

    .line 231
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public unregisterForManualProvisionChanged(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .line 235
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

    monitor-enter v0

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 237
    monitor-exit v0

    .line 238
    return-void

    .line 237
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
