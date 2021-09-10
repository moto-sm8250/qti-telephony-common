.class public Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;
.super Lcom/motorola/android/internal/telephony/ExtTelephonyUtils;
.source "ExtTelephonyUtilsWrapper.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "ExtTelephonyUtilsWrapper"

.field private static sInstance:Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;


# instance fields
.field private mCAInfoHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/Handler;",
            "Lcom/motorola/android/telephony/MotoExtPhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSIB16CoverageHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/Handler;",
            "Lcom/motorola/android/telephony/MotoExtPhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTOEInfoHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/Handler;",
            "Lcom/motorola/android/telephony/MotoExtPhoneStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->sInstance:Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtils;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mSIB16CoverageHandlers:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mCAInfoHandlers:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mTOEInfoHandlers:Ljava/util/Map;

    .line 49
    const-string v0, "ExtTelephonyUtilsWrapper constructor"

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method private getDataRoamingName(II)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # I
    .param p2, "type"    # I

    .line 492
    const/4 v0, 0x0

    .line 494
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 510
    :cond_0
    const-string v0, "gsm_data_roaming"

    .line 511
    goto :goto_0

    .line 503
    :cond_1
    const-string v0, "international_data_roaming"

    .line 504
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    if-le v2, v1, :cond_3

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 497
    :cond_2
    const-string v0, "domestic_data_roaming"

    .line 498
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    if-le v2, v1, :cond_3

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 516
    :cond_3
    :goto_0
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 41
    sget-object v0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->sInstance:Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->sInstance:Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;

    .line 44
    :cond_0
    sget-object v0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->sInstance:Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;

    return-object v0
.end method

.method private getMotoExtTelephonyManager()Lcom/motorola/android/telephony/MotoExtTelephonyManager;
    .locals 2

    .line 337
    new-instance v0, Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getOpPackageName()Ljava/lang/String;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 444
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUserSettingDSS(I)I
    .locals 3
    .param p1, "subId"    # I

    .line 433
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moto_dss"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 436
    .local v0, "rtnVal":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserSettingDSS : subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rtnVal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logv(Ljava/lang/String;)V

    .line 437
    return v0
.end method

.method private getUserSettingNRModeDisabled(I)I
    .locals 3
    .param p1, "subId"    # I

    .line 380
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moto_nr_mode_disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 383
    .local v0, "rtnVal":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserSettingNRModeDisabled : subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rtnVal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logv(Ljava/lang/String;)V

    .line 384
    return v0
.end method


# virtual methods
.method public adjustDSSForSub(I)V
    .locals 3
    .param p1, "subId"    # I

    .line 396
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getDSSForSub(I)I

    move-result v0

    .line 397
    .local v0, "adjustedDSS":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustDSSForSub"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_1

    .line 400
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager(I)Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 401
    :goto_0
    invoke-virtual {v1, v2}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->setDSSEnabled(Z)Z

    goto :goto_1

    .line 403
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current sim is not active, ignore setDSSEnabled, subid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 406
    :cond_2
    :goto_1
    return-void
.end method

.method public adjustNRModeForSub(I)V
    .locals 7
    .param p1, "subId"    # I

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustNRModeForSub "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logv(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getLastNRModeDisabledDefaultValue(I)I

    move-result v0

    .line 351
    .local v0, "lastNRModeDefaultValue":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustNRModeForSub : lastNRModeDefaultValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logv(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getCurrentNRModeDefaultValue(I)I

    move-result v1

    .line 353
    .local v1, "currentNRModeDefaultValue":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustNRModeForSub : currentNRModeDefaultValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logv(Ljava/lang/String;)V

    .line 354
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getUserSettingNRModeDisabled(I)I

    move-result v2

    .line 355
    .local v2, "userSettingNRMode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustNRModeForSub : userSettingNRMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logv(Ljava/lang/String;)V

    .line 356
    const/4 v3, -0x1

    .line 357
    .local v3, "adjustedNRMode":I
    const-string v4, "adjustNRModeForSub"

    if-eq v1, v0, :cond_0

    .line 358
    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->isValidNRModeDisabledValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 359
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : New default value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 361
    move v3, v1

    .line 362
    invoke-virtual {p0, p1, v1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->persistLastNRModeDisabledDefaultValue(II)V

    goto :goto_0

    .line 363
    :cond_0
    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->isValidNRModeDisabledValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 364
    move v3, v2

    goto :goto_0

    .line 366
    :cond_1
    move v3, v1

    .line 368
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjustNRModeForSub : adjustedNRMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logv(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0, v3}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->isValidNRModeDisabledValue(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 370
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 371
    const/4 v4, 0x1

    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 372
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager(I)Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->setNrModeDisabled(I)V

    goto :goto_1

    .line 374
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current sim is not active, ignore setNrModeDisabled, subid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 377
    :cond_3
    :goto_1
    return-void
.end method

.method public enableCAPlusBandWidthFilter(IZ)Z
    .locals 2
    .param p1, "subId"    # I
    .param p2, "enable"    # Z

    .line 317
    sget-boolean v0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableCAPlusBandWidthFilter subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 319
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager(I)Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->enableCAPlusBandWidthFilter(IZ)Z

    move-result v0

    return v0
.end method

.method public getActiveSingleSimSlot()I
    .locals 1

    .line 253
    sget-boolean v0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "getActiveSingleSimSlot"

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 255
    :cond_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager()Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->getActiveSingleSimSlot()I

    move-result v0

    return v0
.end method

.method public getCampedCsgInfo()Lcom/motorola/android/internal/telephony/ExtTelephonyUtils$CsgInfo;
    .locals 5

    .line 280
    sget-boolean v0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "getCampedCsgInfo"

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 282
    :cond_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager()Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->getCampedCsgInfo()Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgInfo;

    move-result-object v0

    .line 284
    .local v0, "csgInfo":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgInfo;
    if-nez v0, :cond_1

    .line 285
    const-string v1, "csgInfo is null"

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->loge(Ljava/lang/String;)V

    .line 286
    const/4 v1, 0x0

    return-object v1

    .line 289
    :cond_1
    new-instance v1, Lcom/motorola/android/internal/telephony/ExtTelephonyUtils$CsgInfo;

    iget v2, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgInfo;->mRat:I

    iget v3, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgInfo;->mCsgId:I

    iget-object v4, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgInfo;->mCsgName:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtils$CsgInfo;-><init>(IILjava/lang/String;)V

    .line 291
    .local v1, "extCsgInfo":Lcom/motorola/android/internal/telephony/ExtTelephonyUtils$CsgInfo;
    return-object v1
.end method

.method public getCdmaSysInfo(ILandroid/os/Message;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "msg"    # Landroid/os/Message;

    .line 193
    sget-boolean v0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->DBG:Z

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCdmaSysInfo subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 196
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager(I)Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->getCdmaSysInfo(ILandroid/os/Message;)V

    .line 197
    return-void
.end method

.method public getCurrentUiccCardProvisioningStatus(I)I
    .locals 2
    .param p1, "subId"    # I

    .line 181
    sget-boolean v0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentUiccCardProvisioningStatus subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 183
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager(I)Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v0

    return v0
.end method

.method protected getDSSForSub(I)I
    .locals 6
    .param p1, "subId"    # I

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustDSSForSub "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logv(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getLastDSSDefaultValue(I)I

    move-result v0

    .line 411
    .local v0, "lastDSSDefaultValue":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustDSSForSub : lastDSSDefaultValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logv(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getCurrentDSSDefaultValue(I)I

    move-result v1

    .line 413
    .local v1, "currentDSSDefaultValue":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustDSSForSub : currentDSSDefaultValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logv(Ljava/lang/String;)V

    .line 414
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getUserSettingDSS(I)I

    move-result v2

    .line 415
    .local v2, "userSettingDSS":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustDSSForSub : userSettingDSS="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logv(Ljava/lang/String;)V

    .line 416
    const/4 v3, -0x1

    .line 417
    .local v3, "adjustedDSS":I
    if-eq v1, v0, :cond_0

    .line 418
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustDSSForSub"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " : New default value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 420
    move v3, v1

    .line 421
    invoke-virtual {p0, p1, v1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->persistLastDSSDefaultValue(II)V

    goto :goto_0

    .line 423
    :cond_0
    move v3, v2

    .line 424
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 425
    move v3, v1

    .line 428
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustDSSForSub : adjustedDSS ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logv(Ljava/lang/String;)V

    .line 429
    return v3
.end method

.method public getDataRoamingSettingsValue(Lcom/android/internal/telephony/Phone;II)I
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "type"    # I
    .param p3, "defVal"    # I

    .line 522
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getDataRoamingName(II)Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, "name":Ljava/lang/String;
    sget-boolean v1, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDataRoamingSettingsValue name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 524
    :cond_0
    if-nez v0, :cond_1

    .line 525
    return p3

    .line 527
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 528
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-static {v1, v0, p3}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public getEndcEnabled()Z
    .locals 1

    .line 241
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getEndcEnabled(I)Z

    move-result v0

    return v0
.end method

.method public getEndcEnabled(I)Z
    .locals 2
    .param p1, "subId"    # I

    .line 229
    sget-boolean v0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 231
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager(I)Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->getEndcEnabled(I)Z

    move-result v0

    return v0
.end method

.method protected getMotoExtTelephonyManager(I)Lcom/motorola/android/telephony/MotoExtTelephonyManager;
    .locals 2
    .param p1, "subId"    # I

    .line 333
    new-instance v0, Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public getMotoSettings(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "catagory"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 546
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 556
    const/4 v0, 0x0

    return-object v0

    .line 552
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/motorola/android/provider/MotorolaSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 550
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 548
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCarrierForceSingleSim()Z
    .locals 1

    .line 329
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager()Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->isCarrierForceSingleSim()Z

    move-result v0

    return v0
.end method

.method public isIntlSmsGuardEnabled()Z
    .locals 3

    .line 467
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "international_outgoingsms_guard"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    move v0, v2

    .line 469
    .local v0, "ret":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isIntlSmsGuardEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logv(Ljava/lang/String;)V

    .line 470
    return v0
.end method

.method public isSmsDeliveryAckEnabled()Z
    .locals 4

    .line 453
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sms_delivery_report_ack_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 455
    .local v0, "rtnVal":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSmsDeliveryAckEnabled : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logv(Ljava/lang/String;)V

    .line 456
    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public registerCAInfoChanged(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 8
    .param p1, "subId"    # I
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 98
    new-instance v7, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper$2;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v0, v7

    move-object v1, p0

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper$2;-><init>(Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;Ljava/lang/Integer;Landroid/os/Looper;Landroid/os/Handler;ILjava/lang/Object;)V

    .line 111
    .local v0, "listener":Lcom/motorola/android/telephony/MotoExtPhoneStateListener;
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager(I)Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->listen(Lcom/motorola/android/telephony/MotoExtPhoneStateListener;I)V

    .line 112
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mCAInfoHandlers:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method

.method public registerMotoRoamingSettingsObserver(Lcom/android/internal/telephony/SettingsObserver;Ljava/lang/String;)V
    .locals 2
    .param p1, "settingsObserver"    # Lcom/android/internal/telephony/SettingsObserver;
    .param p2, "simSuffix"    # Ljava/lang/String;

    .line 477
    sget-boolean v0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerMotoRoamingSettingsObserver simSuffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 478
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "domestic_data_roaming"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 480
    invoke-static {v0}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const v1, 0x420ca

    .line 478
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "international_data_roaming"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 484
    invoke-static {v0}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const v1, 0x420cd

    .line 482
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 486
    nop

    .line 487
    const-string v0, "gsm_data_roaming"

    invoke-static {v0}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const v1, 0x420d0

    .line 486
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 489
    return-void
.end method

.method public registerSIB16CoverageChanged(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 8
    .param p1, "subId"    # I
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerSIB16CoverageChanged: subId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper$1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    move-object v1, v0

    move-object v2, p0

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper$1;-><init>(Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;Ljava/lang/Integer;Landroid/os/Looper;Landroid/os/Handler;ILjava/lang/Object;)V

    .line 70
    .local v0, "listener":Lcom/motorola/android/telephony/MotoExtPhoneStateListener;
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager(I)Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->listen(Lcom/motorola/android/telephony/MotoExtPhoneStateListener;I)V

    .line 71
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mSIB16CoverageHandlers:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public registerTOEInfoChanged(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 8
    .param p1, "subId"    # I
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 139
    new-instance v7, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper$3;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v0, v7

    move-object v1, p0

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper$3;-><init>(Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;Ljava/lang/Integer;Landroid/os/Looper;Landroid/os/Handler;ILjava/lang/Object;)V

    .line 152
    .local v0, "listener":Lcom/motorola/android/telephony/MotoExtPhoneStateListener;
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager(I)Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->listen(Lcom/motorola/android/telephony/MotoExtPhoneStateListener;I)V

    .line 154
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mTOEInfoHandlers:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    return-void
.end method

.method public setActiveSingleSimSlot(I)Z
    .locals 2
    .param p1, "slotType"    # I

    .line 266
    sget-boolean v0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setActiveSingleSimSlot slotType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 268
    :cond_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager()Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->setActiveSingleSimSlot(I)Z

    move-result v0

    return v0
.end method

.method public setDataRoamingSettingsValue(Lcom/android/internal/telephony/Phone;II)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "type"    # I
    .param p3, "val"    # I

    .line 533
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getDataRoamingName(II)Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, "name":Ljava/lang/String;
    sget-boolean v1, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataRoamingSettingsValue name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " val="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 535
    :cond_0
    if-nez v0, :cond_1

    .line 536
    return-void

    .line 538
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 539
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-static {v1, v0, p3}, Lcom/motorola/android/provider/MotorolaSettings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 540
    return-void
.end method

.method public setEndcEnabled(IZ)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .line 207
    sget-boolean v0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " enabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 209
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager(I)Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->setEndcEnabled(IZ)V

    .line 210
    return-void
.end method

.method public setEndcEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 218
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->setEndcEnabled(IZ)V

    .line 219
    return-void
.end method

.method public unregisterCAInfoChanged(Landroid/os/Handler;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;

    .line 122
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mCAInfoHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager()Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mCAInfoHandlers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/telephony/MotoExtPhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->listen(Lcom/motorola/android/telephony/MotoExtPhoneStateListener;I)V

    .line 126
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mCAInfoHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void
.end method

.method public unregisterSIB16CoverageChanged(Landroid/os/Handler;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;

    .line 81
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mSIB16CoverageHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager()Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mSIB16CoverageHandlers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/telephony/MotoExtPhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->listen(Lcom/motorola/android/telephony/MotoExtPhoneStateListener;I)V

    .line 85
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mSIB16CoverageHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public unregisterTOEInfoChanged(Landroid/os/Handler;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;

    .line 164
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mTOEInfoHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager()Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mTOEInfoHandlers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/telephony/MotoExtPhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->listen(Lcom/motorola/android/telephony/MotoExtPhoneStateListener;I)V

    .line 168
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mTOEInfoHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    return-void
.end method
