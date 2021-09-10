.class public Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;
.super Ljava/lang/Object;
.source "QtiRadioHidlClient.java"

# interfaces
.implements Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;,
        Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QtiRadioHidlClient"


# instance fields
.field private final MAX_SLOTS:I

.field private final UNSOL:Lorg/codeaurora/internal/Token;

.field private mCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

.field private mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lorg/codeaurora/internal/Token;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSerial:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->MAX_SLOTS:I

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mSerial:I

    .line 50
    new-instance v1, Lorg/codeaurora/internal/Token;

    invoke-direct {v1, v0}, Lorg/codeaurora/internal/Token;-><init>(I)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->UNSOL:Lorg/codeaurora/internal/Token;

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 505
    const-string v0, "QtiRadioHidlClient"

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->register()V

    .line 507
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    .line 43
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;
    .param p1, "x1"    # I

    .line 43
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->isEnableOrDisableSucess(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Lorg/codeaurora/internal/NrConfig;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;
    .param p1, "x1"    # I

    .line 43
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->convertHidlNrConfig2Aidl(I)Lorg/codeaurora/internal/NrConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Lorg/codeaurora/internal/Token;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    .line 43
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->UNSOL:Lorg/codeaurora/internal/Token;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Lorg/codeaurora/internal/Status;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;
    .param p1, "x1"    # I

    .line 43
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->convertHidl2Aidl(I)Lorg/codeaurora/internal/Status;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    .line 43
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;)Lorg/codeaurora/internal/DcParam;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;
    .param p1, "x1"    # Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;

    .line 43
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->convertHidl2Aidl(Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;)Lorg/codeaurora/internal/DcParam;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Lorg/codeaurora/internal/BearerAllocationStatus;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;
    .param p1, "x1"    # I

    .line 43
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->convertHidlBearerStatus2Aidl(I)Lorg/codeaurora/internal/BearerAllocationStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;)Lorg/codeaurora/internal/UpperLayerIndInfo;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;
    .param p1, "x1"    # Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;

    .line 43
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->convertHidl2Aidl(Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;)Lorg/codeaurora/internal/UpperLayerIndInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Lorg/codeaurora/internal/NrConfigType;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;
    .param p1, "x1"    # I

    .line 43
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->convertHidlConfigType2Aidl(I)Lorg/codeaurora/internal/NrConfigType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Lorg/codeaurora/internal/NrIconType;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;
    .param p1, "x1"    # I

    .line 43
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->convertHidlNrIconType2Aidl(I)Lorg/codeaurora/internal/NrIconType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;)Lorg/codeaurora/internal/SignalStrength;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;
    .param p1, "x1"    # Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;

    .line 43
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->convertHidl2Aidl(Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;)Lorg/codeaurora/internal/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method private convertHidl2Aidl(Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;)Lorg/codeaurora/internal/DcParam;
    .locals 3
    .param p1, "dcParam"    # Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;

    .line 60
    new-instance v0, Lorg/codeaurora/internal/DcParam;

    iget v1, p1, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;->endc:I

    iget v2, p1, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;->dcnr:I

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/internal/DcParam;-><init>(II)V

    return-object v0
.end method

.method private convertHidl2Aidl(Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;)Lorg/codeaurora/internal/SignalStrength;
    .locals 3
    .param p1, "signalStrength"    # Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;

    .line 82
    new-instance v0, Lorg/codeaurora/internal/SignalStrength;

    iget v1, p1, Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;->rsrp:I

    iget v2, p1, Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;->snr:I

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/internal/SignalStrength;-><init>(II)V

    return-object v0
.end method

.method private convertHidl2Aidl(I)Lorg/codeaurora/internal/Status;
    .locals 2
    .param p1, "rilErrorCode"    # I

    .line 86
    new-instance v0, Lorg/codeaurora/internal/Status;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Lorg/codeaurora/internal/Status;-><init>(I)V

    return-object v0
.end method

.method private convertHidl2Aidl(Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;)Lorg/codeaurora/internal/UpperLayerIndInfo;
    .locals 3
    .param p1, "ulInfo"    # Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;

    .line 65
    new-instance v0, Lorg/codeaurora/internal/UpperLayerIndInfo;

    iget v1, p1, Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;->plmnInfoList:I

    iget v2, p1, Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;->upplerLayerInd:I

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/internal/UpperLayerIndInfo;-><init>(II)V

    return-object v0
.end method

.method private convertHidlBearerStatus2Aidl(I)Lorg/codeaurora/internal/BearerAllocationStatus;
    .locals 1
    .param p1, "bearerStatus"    # I

    .line 90
    new-instance v0, Lorg/codeaurora/internal/BearerAllocationStatus;

    invoke-direct {v0, p1}, Lorg/codeaurora/internal/BearerAllocationStatus;-><init>(I)V

    return-object v0
.end method

.method private convertHidlConfigType2Aidl(I)Lorg/codeaurora/internal/NrConfigType;
    .locals 1
    .param p1, "configType"    # I

    .line 69
    new-instance v0, Lorg/codeaurora/internal/NrConfigType;

    invoke-direct {v0, p1}, Lorg/codeaurora/internal/NrConfigType;-><init>(I)V

    return-object v0
.end method

.method private convertHidlNrConfig2Aidl(I)Lorg/codeaurora/internal/NrConfig;
    .locals 1
    .param p1, "nrConfig"    # I

    .line 77
    new-instance v0, Lorg/codeaurora/internal/NrConfig;

    invoke-direct {v0, p1}, Lorg/codeaurora/internal/NrConfig;-><init>(I)V

    return-object v0
.end method

.method private convertHidlNrIconType2Aidl(I)Lorg/codeaurora/internal/NrIconType;
    .locals 1
    .param p1, "iconType"    # I

    .line 73
    new-instance v0, Lorg/codeaurora/internal/NrIconType;

    invoke-direct {v0, p1}, Lorg/codeaurora/internal/NrIconType;-><init>(I)V

    return-object v0
.end method

.method private getNextToken()Lorg/codeaurora/internal/Token;
    .locals 2

    .line 510
    new-instance v0, Lorg/codeaurora/internal/Token;

    iget v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mSerial:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mSerial:I

    invoke-direct {v0, v1}, Lorg/codeaurora/internal/Token;-><init>(I)V

    return-object v0
.end method

.method private getPhoneCount()I
    .locals 1

    .line 55
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method private getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;
    .locals 1

    .line 488
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v0

    return-object v0
.end method

.method private isEnableOrDisableSucess(I)Z
    .locals 1
    .param p1, "errorCode"    # I

    .line 94
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private register()V
    .locals 4

    .line 499
    const-string v0, "QtiRadioHidlClient"

    const-string v1, "Register"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getPhoneCount()I

    move-result v1

    .line 501
    .local v1, "phones":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phone count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v0, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v2, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/-$$Lambda$QtiRadioHidlClient$fDxYx_TYBjQqOTTFKsiClnVL8ic;

    invoke-direct {v2, p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/-$$Lambda$QtiRadioHidlClient$fDxYx_TYBjQqOTTFKsiClnVL8ic;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)V

    invoke-interface {v0, v2}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 503
    return-void
.end method

.method private setCallbacks(I)V
    .locals 4
    .param p1, "slotId"    # I

    .line 492
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v0

    .line 493
    .local v0, "factory":Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ril["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiRadioHidlClient"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v1

    new-instance v2, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;

    invoke-direct {v2, p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)V

    new-instance v3, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;

    invoke-direct {v3, p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)V

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->setCallbacks(Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadioResponse$Stub;Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;)V

    .line 496
    return-void
.end method


# virtual methods
.method public disable5g(ILorg/codeaurora/internal/Token;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disable5g: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QtiRadioHidlClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 533
    .local v0, "serial":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->disable5g(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    nop

    .line 543
    return-void

    .line 536
    :catch_0
    move-exception v3

    .line 537
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 538
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Exception = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 541
    throw v3
.end method

.method public enable5g(ILorg/codeaurora/internal/Token;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable5g: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QtiRadioHidlClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 517
    .local v0, "serial":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->enable5g(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    nop

    .line 527
    return-void

    .line 520
    :catch_0
    move-exception v3

    .line 521
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 522
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Exception = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 525
    throw v3
.end method

.method public enable5gOnly(ILorg/codeaurora/internal/Token;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable5gOnly: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QtiRadioHidlClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 549
    .local v0, "serial":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->enable5gOnly(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    nop

    .line 559
    return-void

    .line 552
    :catch_0
    move-exception v3

    .line 553
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 554
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Exception = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 557
    throw v3
.end method

.method public enableEndc(IZLorg/codeaurora/internal/Token;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "enable"    # Z
    .param p3, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableEndc: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " token "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QtiRadioHidlClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-virtual {p3}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 677
    .local v0, "serial":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v3

    invoke-virtual {v3, v0, p2}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->enableEndc(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    nop

    .line 687
    return-void

    .line 680
    :catch_0
    move-exception v3

    .line 681
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 682
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Exception = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 685
    throw v3
.end method

.method public generateNextToken()Lorg/codeaurora/internal/Token;
    .locals 1

    .line 739
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$register$0$QtiRadioHidlClient(I)V
    .locals 0
    .param p1, "i"    # I

    .line 502
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->setCallbacks(I)V

    return-void
.end method

.method public query5gConfigInfo(ILorg/codeaurora/internal/Token;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query5gConfigInfo: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " token "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QtiRadioHidlClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 645
    .local v0, "serial":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->query5gConfigInfo(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    nop

    .line 655
    return-void

    .line 648
    :catch_0
    move-exception v3

    .line 649
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 650
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Exception = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 653
    throw v3
.end method

.method public query5gStatus(ILorg/codeaurora/internal/Token;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query5gStatus: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QtiRadioHidlClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 565
    .local v0, "serial":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->query5gStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    nop

    .line 575
    return-void

    .line 568
    :catch_0
    move-exception v3

    .line 569
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 570
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Exception = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 573
    throw v3
.end method

.method public queryEndcStatus(ILorg/codeaurora/internal/Token;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryEndcStatus: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " token "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QtiRadioHidlClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 693
    .local v0, "serial":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->queryEndcStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    nop

    .line 703
    return-void

    .line 696
    :catch_0
    move-exception v3

    .line 697
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 698
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Exception = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 701
    throw v3
.end method

.method public queryNrBearerAllocation(ILorg/codeaurora/internal/Token;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNrBearerAllocation: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QtiRadioHidlClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 597
    .local v0, "serial":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->queryNrBearerAllocation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    nop

    .line 607
    return-void

    .line 600
    :catch_0
    move-exception v3

    .line 601
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 602
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Exception = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 605
    throw v3
.end method

.method public queryNrConfig(ILorg/codeaurora/internal/Token;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNrConfig: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " token = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QtiRadioHidlClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 725
    .local v0, "serial":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->queryNrConfig(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    nop

    .line 735
    return-void

    .line 728
    :catch_0
    move-exception v3

    .line 729
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 730
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Exception = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 733
    throw v3
.end method

.method public queryNrDcParam(ILorg/codeaurora/internal/Token;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNrDcParam: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QtiRadioHidlClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 581
    .local v0, "serial":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->queryNrDcParam(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    nop

    .line 591
    return-void

    .line 584
    :catch_0
    move-exception v3

    .line 585
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 586
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Exception = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 589
    throw v3
.end method

.method public queryNrIconType(ILorg/codeaurora/internal/Token;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNrIconType: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " token "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QtiRadioHidlClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 661
    .local v0, "serial":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->queryNrIconType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    nop

    .line 671
    return-void

    .line 664
    :catch_0
    move-exception v3

    .line 665
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 666
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Exception = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 669
    throw v3
.end method

.method public queryNrSignalStrength(ILorg/codeaurora/internal/Token;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNrSignalStrength: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QtiRadioHidlClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 613
    .local v0, "serial":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->queryNrSignalStrength(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    nop

    .line 623
    return-void

    .line 616
    :catch_0
    move-exception v3

    .line 617
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 618
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Exception = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 621
    throw v3
.end method

.method public queryUpperLayerIndInfo(ILorg/codeaurora/internal/Token;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryUpperLayerIndInfo: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " token "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QtiRadioHidlClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 629
    .local v0, "serial":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->queryUpperLayerIndInfo(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    nop

    .line 639
    return-void

    .line 632
    :catch_0
    move-exception v3

    .line 633
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 634
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Exception = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 637
    throw v3
.end method

.method public registerCallback(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerCallback: callback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioHidlClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iput-object p1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    .line 746
    return-void
.end method

.method public setNrConfig(ILorg/codeaurora/internal/NrConfig;Lorg/codeaurora/internal/Token;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "config"    # Lorg/codeaurora/internal/NrConfig;
    .param p3, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNrConfig: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " config = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " token = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QtiRadioHidlClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-virtual {p3}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 709
    .local v0, "serial":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v3

    invoke-virtual {v3, v0, p2}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->setNrConfig(ILorg/codeaurora/internal/NrConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    nop

    .line 719
    return-void

    .line 712
    :catch_0
    move-exception v3

    .line 713
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 714
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Exception = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 717
    throw v3
.end method

.method public unRegisterCallback(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unRegisterCallback: callback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioHidlClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    if-ne v0, p1, :cond_0

    .line 752
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    .line 754
    :cond_0
    return-void
.end method
