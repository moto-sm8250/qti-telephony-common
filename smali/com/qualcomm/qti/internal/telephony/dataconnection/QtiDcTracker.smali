.class public final Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;
.super Lcom/android/internal/telephony/vendor/dataconnection/VendorDcTracker;
.source "QtiDcTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$DcPhoneStateListener;
    }
.end annotation


# static fields
.field private static final MBN_FLAG_MODEM:Ljava/lang/String; = "persist.radio.mcfg_version"

.field private static final MBN_FLAG_MODEM_NEW:Ljava/lang/String; = "persist.vendor.radio.mcfg_version"

.field private static final MBN_FLAG_RIL:Ljava/lang/String; = "persist.radio.allow_ia_apn_"

.field private static final OEM_RIL_UNSOL_MCFG_MBN_CHANGED:I = 0x40016

.field private static final RADIO_MBN_SOLUTION_PROP:Ljava/lang/String; = "persist.vendor.radio.sw_mbn_update"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mDcPhoneStateListener:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$DcPhoneStateListener;

.field private mLastCheckedMCFG:Ljava/lang/String;

.field private mMotoExtTelMananger:Lcom/motorola/android/telephony/MotoExtTelephonyManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;I)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "transportType"    # I

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/vendor/dataconnection/VendorDcTracker;-><init>(Lcom/android/internal/telephony/Phone;I)V

    .line 46
    const-string v0, "QtiDCT"

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->LOG_TAG:Ljava/lang/String;

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mLastCheckedMCFG:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const-string v1, "C"

    goto :goto_0

    :cond_0
    const-string v1, "I"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->LOG_TAG:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".constructor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    .line 45
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->isReadyForProfileSync()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    .line 45
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->unRegisterForMbnChanged()V

    return-void
.end method

.method private getMotoExtTM()Lcom/motorola/android/telephony/MotoExtTelephonyManager;
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mMotoExtTelMananger:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 209
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mMotoExtTelMananger:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mMotoExtTelMananger:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    return-object v0
.end method

.method private isReadyForProfileSync()Z
    .locals 8

    .line 109
    const-string v0, "persist.vendor.radio.sw_mbn_update"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 111
    .local v0, "radioMBNUpdateSolution":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    const-string v3, "persist.vendor.radio.mcfg_version"

    const-string v4, "null"

    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "rilMcfgVersion":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    const-string v5, "persist.radio.mcfg_version"

    invoke-static {v3, v5, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 118
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persist.radio.allow_ia_apn_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 119
    .local v3, "rilAllowIA":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setInitialApn: radioMBNUpdateSolution = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", rilMcfgVersion = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", rilAllowIA = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 123
    const-string v6, "MBN is ready, can set InitialApn."

    if-eq v0, v5, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 124
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 125
    invoke-virtual {p0, v6}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 127
    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->needToWaitForAPNUpdate(Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v5

    return v1

    .line 130
    :cond_1
    if-ne v0, v5, :cond_2

    if-eqz v3, :cond_2

    .line 131
    invoke-virtual {p0, v6}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 133
    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->needToWaitForAPNUpdate(Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v5

    return v1

    .line 136
    :cond_2
    const-string v4, "setInitialApn: MBN is not ready yet."

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 138
    return v1
.end method

.method private needToWaitForAPNUpdate(Ljava/lang/String;)Z
    .locals 3
    .param p1, "mcfgVersion"    # Ljava/lang/String;

    .line 195
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->getMotoExtTM()Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->isNeedToUpdateNrApns(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    const/4 v0, 0x0

    return v0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mLastCheckedMCFG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mLastCheckedMCFG:Ljava/lang/String;

    .line 203
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->getMotoExtTM()Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->updateNrApns(ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method private registerForMbnChanged()V
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDcPhoneStateListener:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$DcPhoneStateListener;

    if-eqz v0, :cond_0

    .line 169
    return-void

    .line 172
    :cond_0
    const-string v0, "registerForMbnChanged"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 175
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$DcPhoneStateListener;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$DcPhoneStateListener;-><init>(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;I)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDcPhoneStateListener:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$DcPhoneStateListener;

    .line 176
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->getMotoExtTM()Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDcPhoneStateListener:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$DcPhoneStateListener;

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->listen(Lcom/motorola/android/telephony/MotoExtPhoneStateListener;I)V

    .line 178
    return-void
.end method

.method private unRegisterForMbnChanged()V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDcPhoneStateListener:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$DcPhoneStateListener;

    if-eqz v0, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->getMotoExtTM()Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDcPhoneStateListener:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$DcPhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->listen(Lcom/motorola/android/telephony/MotoExtPhoneStateListener;I)V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDcPhoneStateListener:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$DcPhoneStateListener;

    .line 186
    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 99
    invoke-super {p0}, Lcom/android/internal/telephony/vendor/dataconnection/VendorDcTracker;->dispose()V

    .line 100
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->unRegisterForMbnChanged()V

    .line 101
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void
.end method

.method protected setDataProfilesAsNeeded()V
    .locals 1

    .line 90
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->isReadyForProfileSync()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->registerForMbnChanged()V

    .line 92
    return-void

    .line 94
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/vendor/dataconnection/VendorDcTracker;->setDataProfilesAsNeeded()V

    .line 95
    return-void
.end method

.method protected setInitialAttachApn()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->isReadyForProfileSync()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->registerForMbnChanged()V

    .line 81
    return-void

    .line 84
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/vendor/dataconnection/VendorDcTracker;->setInitialAttachApn()V

    .line 85
    return-void
.end method
