.class public Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;
.super Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;
.source "QtiGsmCdmaPhone.java"


# static fields
.field private static final BIT_IMS_STACK_UP:I = 0x3

.field private static final BIT_OEM_HOOK_READY:I = 0x2

.field private static final BIT_PHONE_READY_REQUIRED:I = 0x0

.field private static final BIT_RIL_CONNECTED:I = 0x1

.field private static final BIT_TOTAL_COUNT:I = 0x4

.field private static final DEFAULT_PHONE_INDEX:I = 0x0

.field private static final EVENT_OEM_HOOK_SERVICE_READY:I = 0x3b

.field private static final EVENT_RESET_CARRIER_KEY_IMSI_ENCRYPTION:I = 0x3c

.field private static final INVALID_SIM_STATUS:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "QtiGsmCdmaPhone"

.field private static final PROP_EVENT_START:I = 0x3a

.field private static final READY:I = 0x1

.field private static final SIM_STATUS:Ljava/lang/String; = "sim_status-%d"


# instance fields
.field private imsiToken:I

.field private mImsManagerConnector:Lcom/android/ims/FeatureConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/ims/FeatureConnector<",
            "Lcom/android/ims/ImsManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoneReadyBits:Ljava/util/BitSet;

.field private mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "phoneId"    # I
    .param p5, "precisePhoneType"    # I
    .param p6, "telephonyComponentFactory"    # Lcom/android/internal/telephony/TelephonyComponentFactory;

    .line 91
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "unitTestMode"    # Z
    .param p5, "phoneId"    # I
    .param p6, "precisePhoneType"    # I
    .param p7, "telephonyComponentFactory"    # Lcom/android/internal/telephony/TelephonyComponentFactory;

    .line 98
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;)V

    .line 83
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneReadyBits:Ljava/util/BitSet;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->imsiToken:I

    .line 100
    const-string v0, "QtiGsmCdmaPhone"

    const-string v1, "Constructor"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getQtiRilInterface()Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;

    .line 102
    const/16 v2, 0x3b

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;->registerForServiceReadyEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 103
    invoke-static {p1}, Lcom/android/ims/ImsManager;->isImsSupportedOnDevice(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    new-instance v1, Lcom/android/ims/FeatureConnector;

    new-instance v2, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;

    invoke-direct {v2, p0, p5, p1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;ILandroid/content/Context;)V

    invoke-direct {v1, p1, p5, v2, v0}, Lcom/android/ims/FeatureConnector;-><init>(Landroid/content/Context;ILcom/android/ims/FeatureConnector$Listener;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mImsManagerConnector:Lcom/android/ims/FeatureConnector;

    .line 126
    invoke-virtual {v1}, Lcom/android/ims/FeatureConnector;->connect()V

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneReadyBits:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 130
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x3c

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCarrierInfoForImsiEncryption(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Ljava/util/BitSet;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    .line 63
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneReadyBits:Ljava/util/BitSet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;I)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;
    .param p1, "x1"    # I

    .line 63
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->updatePhoneReady(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;
    .param p1, "x1"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private getQtiRilInterface()Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;
    .locals 1

    .line 332
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    const-string v0, "getQtiRilInterface, unitTestMode = true"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;

    move-result-object v0

    .local v0, "qtiRilInterface":Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;
    goto :goto_0

    .line 336
    .end local v0    # "qtiRilInterface":Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    move-result-object v0

    .line 338
    .restart local v0    # "qtiRilInterface":Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;
    :goto_0
    return-object v0
.end method

.method private isCurrentSubValid()Z
    .locals 4

    .line 211
    const/4 v0, 0x1

    .line 212
    .local v0, "provisionStatus":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 214
    .local v1, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    :try_start_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v2

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    .line 215
    invoke-virtual {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 218
    goto :goto_0

    .line 216
    :catch_0
    move-exception v2

    .line 217
    .local v2, "ex":Ljava/lang/NullPointerException;
    const/4 v0, 0x0

    .line 219
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProvisionStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " phone id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QtiGsmCdmaPhone"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    if-ne v0, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiGsmCdmaPhone"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiGsmCdmaPhone"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    return-void
.end method

.method private updatePhoneReady(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 148
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneReadyBits:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 150
    :cond_0
    const/4 v0, 0x0

    .line 152
    .local v0, "radioPowerOpt":I
    :try_start_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v2

    const-string v3, "persist.vendor.radio.poweron_opt"

    .line 153
    invoke-virtual {v2, v3, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->getPropertyValueInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 156
    goto :goto_0

    .line 154
    :catch_0
    move-exception v2

    .line 155
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QtiGsmCdmaPhone"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneReadyBits:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 163
    const-string v3, "Sending Phone Ready to RIL."

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 164
    if-eqz p1, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v3

    .line 168
    .local v3, "imsManager":Lcom/android/ims/ImsManager;
    invoke-virtual {v3}, Lcom/android/ims/ImsManager;->isServiceReady()Z

    move-result v4

    if-nez v4, :cond_1

    .line 169
    const-string v4, "Sending Phone Ready to RIL0 as required."

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 170
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;

    invoke-interface {v4, v2, v1}, Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;->sendPhoneStatus(II)V

    .line 173
    .end local v3    # "imsManager":Lcom/android/ims/ImsManager;
    :cond_1
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;

    invoke-interface {v3, v2, p1}, Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;->sendPhoneStatus(II)V

    .line 174
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneReadyBits:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->clear(I)V

    .line 176
    :cond_2
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;

    invoke-interface {v0, p0}, Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;->unRegisterForServiceReadyEvent(Landroid/os/Handler;)V

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;

    .line 236
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneReadyBits:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 237
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mImsManagerConnector:Lcom/android/ims/FeatureConnector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/ims/FeatureConnector;->disconnect()V

    .line 238
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->dispose()V

    .line 239
    return-void
.end method

.method public enableUiccApplications(ZLandroid/os/Message;)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "onCompleteMessage"    # Landroid/os/Message;

    .line 438
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v0

    .line 439
    .local v0, "slot":Lcom/android/internal/telephony/uicc/UiccSlot;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v2, :cond_0

    .line 440
    nop

    .line 441
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 442
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 443
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "sim_status-%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 444
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 445
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 447
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->enableUiccApplications(ZLandroid/os/Message;)V

    .line 448
    return-void
.end method

.method public getCallForwardingIndicator()Z
    .locals 1

    .line 204
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->isCurrentSubValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    const/4 v0, 0x0

    return v0

    .line 207
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->getCallForwardingIndicator()Z

    move-result v0

    return v0
.end method

.method public getFullIccSerialNumber()Ljava/lang/String;
    .locals 3

    .line 357
    invoke-super {p0}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->getFullIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "iccId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getUiccFullIccId(I)Ljava/lang/String;

    move-result-object v0

    .line 362
    :cond_0
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: Event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiGsmCdmaPhone"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_8

    const/4 v4, 0x3

    if-eq v0, v4, :cond_6

    const/16 v4, 0x17

    if-eq v0, v4, :cond_5

    const/16 v4, 0x29

    if-eq v0, v4, :cond_4

    const/16 v2, 0x3b

    if-eq v0, v2, :cond_1

    const/16 v2, 0x3c

    if-eq v0, v2, :cond_0

    .line 304
    invoke-super {p0, p1}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 299
    :cond_0
    const-string v0, "Event EVENT_RESET_CARRIER_KEY_IMSI_ENCRYPTION"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-super {p0}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->resetCarrierKeysForImsiEncryption()V

    .line 301
    goto/16 :goto_1

    .line 247
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 248
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 249
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 250
    .local v2, "isServiceReady":Z
    const/4 v3, 0x2

    if-eqz v2, :cond_2

    .line 251
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneReadyBits:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->set(I)V

    .line 252
    const-string v3, "EVENT_OEM_HOOK_SERVICE_READY received"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->updatePhoneReady(I)V

    goto :goto_0

    .line 255
    :cond_2
    const-string v4, "EVENT_OEM_HOOK_SERVICE_READY: service not ready"

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneReadyBits:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->clear(I)V

    .line 258
    .end local v2    # "isServiceReady":Z
    :goto_0
    goto :goto_1

    .line 259
    :cond_3
    const-string v2, "Error: empty result, EVENT_OEM_HOOK_SERVICE_READY"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    goto :goto_1

    .line 281
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_4
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneReadyBits:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 282
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneReadyBits:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 283
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->updatePhoneReady(I)V

    .line 284
    invoke-super {p0, p1}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    .line 285
    goto :goto_1

    .line 288
    :cond_5
    const-string v0, "Event EVENT_NV_READY Received"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    .line 291
    const-string v0, "notifyMessageWaitingChanged"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V

    .line 293
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->updateVoiceMail()V

    .line 296
    goto :goto_1

    .line 266
    :cond_6
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify call forward indication, phone id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->notifyCallForwardingIndicator()V

    .line 271
    :cond_7
    invoke-super {p0, p1}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    .line 272
    goto :goto_1

    .line 275
    :cond_8
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneReadyBits:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 276
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->updatePhoneReady(I)V

    .line 277
    invoke-super {p0, p1}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    .line 278
    nop

    .line 308
    :goto_1
    return-void
.end method

.method public isEmergencyNumber(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected phoneObjectUpdater(I)V
    .locals 1
    .param p1, "newVoiceTech"    # I

    .line 180
    invoke-super {p0, p1}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->phoneObjectUpdater(I)V

    .line 181
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->updatePhoneReady(I)V

    .line 182
    return-void
.end method

.method public radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;)V
    .locals 2
    .param p1, "rc"    # Lcom/android/internal/telephony/RadioCapability;

    .line 188
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mRadioCapability:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 191
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v0

    .line 192
    .local v0, "radioCapController":Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->radioCapabilityUpdated(ILcom/android/internal/telephony/RadioCapability;)V

    .line 200
    :cond_0
    return-void
.end method

.method protected reapplyUiccAppsEnablementIfNeeded(I)V
    .locals 16
    .param p1, "retries"    # I

    .line 373
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v2, v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v1

    .line 376
    .local v1, "slot":Lcom/android/internal/telephony/uicc/UiccSlot;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v2, v3, :cond_6

    iget-object v2, v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mUiccApplicationsEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 381
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getIccId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, "iccId":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 383
    const-string v3, "reapplyUiccAppsEnablementIfNeeded: iccid is null, do nothing"

    invoke-direct {v0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 384
    return-void

    .line 386
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reapplyUiccAppsEnablementIfNeeded: iccId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 388
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoForIccId(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 391
    .local v3, "info":Landroid/telephony/SubscriptionInfo;
    const/4 v4, 0x1

    if-nez v3, :cond_2

    move v5, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->areUiccApplicationsEnabled()Z

    move-result v5

    .line 392
    .local v5, "expectedValue":Z
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reapplyUiccAppsEnablementIfNeeded: SubscriptionInfo="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 394
    nop

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 396
    .local v6, "sp":Landroid/content/SharedPreferences;
    new-array v7, v4, [Ljava/lang/Object;

    iget v8, v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-string v8, "sim_status-%d"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 397
    .local v7, "key":Ljava/lang/String;
    const/4 v8, -0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 398
    .local v10, "simStatus":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "reapplyUiccAppsEnablementIfNeeded: simStatus in shared preference="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", key="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 400
    const/16 v11, 0x38

    if-ne v10, v8, :cond_3

    .line 401
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reapplyUiccAppsEnablementIfNeeded: Apply SIM status from RIL,mUiccApplicationsEnabled="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mUiccApplicationsEnabled:Ljava/lang/Boolean;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 404
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8, v4}, Landroid/content/ContentValues;-><init>(I)V

    move-object v4, v8

    .line 405
    .local v4, "value":Landroid/content/ContentValues;
    iget-object v8, v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mUiccApplicationsEnabled:Ljava/lang/Boolean;

    const-string v9, "uicc_applications_enabled"

    invoke-virtual {v4, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 406
    iget-object v8, v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "icc_id=\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v8, v9, v4, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 410
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 411
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v9, v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mUiccApplicationsEnabled:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-interface {v8, v7, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 412
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 414
    iget-object v9, v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v12, v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mUiccApplicationsEnabled:Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    new-instance v13, Landroid/util/Pair;

    .line 416
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 414
    invoke-static {v0, v11, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v9, v12, v11}, Lcom/android/internal/telephony/CommandsInterface;->enableUiccApplications(ZLandroid/os/Message;)V

    .line 417
    .end local v4    # "value":Landroid/content/ContentValues;
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    goto :goto_2

    .line 420
    :cond_3
    iget-object v8, v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mUiccApplicationsEnabled:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eq v5, v8, :cond_5

    .line 421
    iget-object v8, v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    new-instance v12, Landroid/util/Pair;

    .line 423
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 421
    invoke-static {v0, v11, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v8, v5, v11}, Lcom/android/internal/telephony/CommandsInterface;->enableUiccApplications(ZLandroid/os/Message;)V

    .line 426
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 427
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move v4, v9

    :goto_1
    invoke-interface {v8, v7, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 428
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 431
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_5
    :goto_2
    return-void

    .line 378
    .end local v2    # "iccId":Ljava/lang/String;
    .end local v3    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v5    # "expectedValue":Z
    .end local v6    # "sp":Landroid/content/SharedPreferences;
    .end local v7    # "key":Ljava/lang/String;
    .end local v10    # "simStatus":I
    :cond_6
    :goto_3
    return-void
.end method

.method public sendSubscriptionSettings(Z)V
    .locals 4
    .param p1, "restoreNetworkSelection"    # Z

    .line 312
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->getInstance()Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    move-result-object v0

    .line 316
    .local v0, "serviceImpl":Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyLockFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mContext:Landroid/content/Context;

    .line 317
    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyUnlocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 318
    :goto_0
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->isPrimaryCarrierSlotId(I)Z

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 320
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getSubId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/PhoneFactory;->calculatePreferredNetworkType(Landroid/content/Context;I)I

    move-result v1

    .line 321
    .local v1, "type":I
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 323
    const-string v3, " settings network selection mode to AUTO "

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 325
    .end local v1    # "type":I
    goto :goto_1

    .line 326
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->sendSubscriptionSettings(Z)V

    .line 328
    :goto_1
    return-void
.end method

.method public setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;)V
    .locals 2
    .param p1, "imsiEncryptionInfo"    # Landroid/telephony/ImsiEncryptionInfo;

    .line 348
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-static {p1, v0, v1}, Lcom/android/internal/telephony/CarrierInfoManager;->setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;Landroid/content/Context;I)V

    .line 349
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->imsiToken:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->imsiToken:I

    .line 350
    invoke-virtual {v0, v1, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->setCarrierInfoForImsiEncryption(ILandroid/telephony/ImsiEncryptionInfo;)V

    .line 351
    return-void
.end method

.method public setLocalCallHold(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .line 225
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;

    invoke-interface {v0}, Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;->isServiceReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    const-string v0, "QtiGsmCdmaPhone"

    const-string v1, "mQtiRilInterface is not ready yet"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v0, 0x0

    return v0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;->setLocalCallHold(IZ)Z

    move-result v0

    return v0
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 137
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v0

    .line 138
    .local v0, "radioCapController":Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isFlexMappingRequired(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setPreferredNetworkType(IILandroid/os/Message;)V

    goto :goto_0

    .line 142
    :cond_0
    const-string v1, "QtiGsmCdmaPhone"

    const-string v2, "Set preferred network type without flex mapping support"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 145
    :goto_0
    return-void
.end method
