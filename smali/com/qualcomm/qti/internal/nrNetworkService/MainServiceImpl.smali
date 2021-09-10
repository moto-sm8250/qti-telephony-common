.class public Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
.super Ljava/lang/Object;
.source "MainServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$ClientBinderDeathRecipient;,
        Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;,
        Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;,
        Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;
    }
.end annotation


# static fields
.field private static final EVENT_ON_5G_CONFIG_INFO:I = 0x6

.field private static final EVENT_ON_5G_ENABLE_STATUS_CHANGE_IND:I = 0x1

.field private static final EVENT_ON_5G_SIGNAL_STRENGTH_CHANGE_IND:I = 0x2

.field private static final EVENT_ON_BEARER_ALLOCATION_CHANGE_IND:I = 0x0

.field private static final EVENT_ON_ENABLE_ENDC:I = 0x8

.field private static final EVENT_ON_ENDC_STATUS:I = 0x9

.field private static final EVENT_ON_NR_CONFIG_STATUS:I = 0xb

.field private static final EVENT_ON_NR_DUAL_CONNECTIVITY_CHANGE_IND:I = 0x3

.field private static final EVENT_ON_NR_ICON_TYPE:I = 0x7

.field private static final EVENT_ON_RESTRICT_DCNR_CHANGE:I = 0x4

.field private static final EVENT_ON_SET_NR_CONFIG:I = 0xa

.field private static final EVENT_ON_UPPER_LAYER_INDICATION_INFO:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MainServiceImpl"

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;


# instance fields
.field private FAILED:Z

.field private SUCCESS:Z

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mCallbackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/internal/INetworkCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mClientIndex:I

.field mHidlConnectionCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

.field private mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

.field private mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkerThread:Landroid/os/HandlerThread;

.field private mWorkerThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->SUCCESS:Z

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->FAILED:Z

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mClientIndex:I

    .line 67
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MainServiceImplBgThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mWorkerThread:Landroid/os/HandlerThread;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 219
    new-instance v0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    .line 342
    const-string v0, "MainServiceImpl"

    invoke-static {v0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    sput-object p1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mContext:Landroid/content/Context;

    .line 344
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 345
    new-instance v0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-direct {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;-><init>()V

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->setHidlClient(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;)V

    .line 346
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 347
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->setLooper(Landroid/os/Looper;)V

    .line 348
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hidlClient"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;
    .param p3, "workerLooper"    # Landroid/os/Looper;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->SUCCESS:Z

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->FAILED:Z

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mClientIndex:I

    .line 67
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MainServiceImplBgThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mWorkerThread:Landroid/os/HandlerThread;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 219
    new-instance v0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    .line 353
    const-string v0, "MainServiceImpl"

    invoke-static {v0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    sput-object p1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mContext:Landroid/content/Context;

    .line 355
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 356
    invoke-virtual {p0, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->setHidlClient(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;)V

    .line 357
    invoke-virtual {p0, p3}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->setLooper(Landroid/os/Looper;)V

    .line 358
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/BearerAllocationStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/codeaurora/internal/Token;
    .param p3, "x3"    # Lorg/codeaurora/internal/Status;
    .param p4, "x4"    # Lorg/codeaurora/internal/BearerAllocationStatus;

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->onAnyNrBearerAllocation(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/BearerAllocationStatus;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/codeaurora/internal/Token;
    .param p3, "x3"    # Lorg/codeaurora/internal/Status;
    .param p4, "x4"    # Z

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->on5gStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/SignalStrength;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/codeaurora/internal/Token;
    .param p3, "x3"    # Lorg/codeaurora/internal/Status;
    .param p4, "x4"    # Lorg/codeaurora/internal/SignalStrength;

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->onSignalStrength(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/SignalStrength;)V

    return-void
.end method

.method static synthetic access$300(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/DcParam;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/codeaurora/internal/Token;
    .param p3, "x3"    # Lorg/codeaurora/internal/Status;
    .param p4, "x4"    # Lorg/codeaurora/internal/DcParam;

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->onNrDcParam(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/DcParam;)V

    return-void
.end method

.method static synthetic access$400(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/UpperLayerIndInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/codeaurora/internal/Token;
    .param p3, "x3"    # Lorg/codeaurora/internal/Status;
    .param p4, "x4"    # Lorg/codeaurora/internal/UpperLayerIndInfo;

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->onUpperLayerIndInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/UpperLayerIndInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfigType;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/codeaurora/internal/Token;
    .param p3, "x3"    # Lorg/codeaurora/internal/Status;
    .param p4, "x4"    # Lorg/codeaurora/internal/NrConfigType;

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->on5gConfigInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfigType;)V

    return-void
.end method

.method static synthetic access$600(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrIconType;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/codeaurora/internal/Token;
    .param p3, "x3"    # Lorg/codeaurora/internal/Status;
    .param p4, "x4"    # Lorg/codeaurora/internal/NrIconType;

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->onNrIconType(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrIconType;)V

    return-void
.end method

.method static synthetic access$700(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/codeaurora/internal/Token;
    .param p3, "x3"    # Lorg/codeaurora/internal/Status;

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->onEnableEndc(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;)V

    return-void
.end method

.method static synthetic access$800(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/codeaurora/internal/Token;
    .param p3, "x3"    # Lorg/codeaurora/internal/Status;
    .param p4, "x4"    # Z

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->onEndcStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    .line 45
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mWorkerThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addCallback(Lorg/codeaurora/internal/INetworkCallback;)Z
    .locals 5
    .param p1, "callback"    # Lorg/codeaurora/internal/INetworkCallback;

    .line 507
    invoke-interface {p1}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 508
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 509
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 510
    .local v3, "it":Lorg/codeaurora/internal/INetworkCallback;
    invoke-interface {v3}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 512
    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->FAILED:Z

    monitor-exit v1

    return v2

    .line 514
    .end local v3    # "it":Lorg/codeaurora/internal/INetworkCallback;
    :cond_0
    goto :goto_0

    .line 515
    :cond_1
    const-string v2, "MainServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add callback= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->SUCCESS:Z

    return v1

    .line 517
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private dumpAidlClients(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 828
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 829
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/internal/INetworkCallback;

    .line 830
    .local v2, "callback":Lorg/codeaurora/internal/INetworkCallback;
    invoke-interface {v2}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 831
    .local v3, "binder":Landroid/os/IBinder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callback = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "-> Binder = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 832
    .end local v2    # "callback":Lorg/codeaurora/internal/INetworkCallback;
    .end local v3    # "binder":Landroid/os/IBinder;
    goto :goto_0

    .line 833
    :cond_0
    monitor-exit v0

    .line 834
    return-void

    .line 833
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpInflightRequests(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 837
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 838
    .local v1, "key":Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 839
    .end local v1    # "key":Ljava/lang/Integer;
    goto :goto_0

    .line 840
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .locals 2

    .line 335
    sget-object v0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    if-nez v0, :cond_0

    .line 336
    const-string v0, "MainServiceImpl"

    const-string v1, "getInstance null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 323
    const-class v0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    monitor-enter v0

    .line 324
    :try_start_0
    sput-object p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mContext:Landroid/content/Context;

    .line 325
    sget-object v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    if-nez v1, :cond_0

    .line 326
    new-instance v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    goto :goto_0

    .line 328
    :cond_0
    const-string v1, "MainServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :goto_0
    sget-object v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    monitor-exit v0

    return-object v1

    .line 331
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isClientValid(Lorg/codeaurora/internal/Client;)Z
    .locals 6
    .param p1, "client"    # Lorg/codeaurora/internal/Client;

    .line 547
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/codeaurora/internal/Client;->getCallback()Lorg/codeaurora/internal/INetworkCallback;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 551
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 552
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 553
    .local v3, "it":Lorg/codeaurora/internal/INetworkCallback;
    invoke-interface {v3}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/codeaurora/internal/Client;->getCallback()Lorg/codeaurora/internal/INetworkCallback;

    move-result-object v5

    invoke-interface {v5}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 554
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 556
    .end local v3    # "it":Lorg/codeaurora/internal/INetworkCallback;
    :cond_1
    goto :goto_0

    .line 557
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This client is unregistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    return v0

    .line 557
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 548
    :cond_3
    :goto_1
    const-string v1, "MainServiceImpl"

    const-string v2, "Invalid client"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    return v0
.end method

.method private on5gConfigInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfigType;)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "nrConfigType"    # Lorg/codeaurora/internal/NrConfigType;

    .line 688
    :try_start_0
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 689
    .local v0, "tokenKey":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->retrieveCallbacks(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 691
    .local v3, "callback":Lorg/codeaurora/internal/INetworkCallback;
    const-string v4, "MainServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "on5gConfigInfo: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 692
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 691
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-interface {v3, p1, p2, p3, p4}, Lorg/codeaurora/internal/INetworkCallback;->on5gConfigInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfigType;)V

    .line 694
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    nop

    .end local v3    # "callback":Lorg/codeaurora/internal/INetworkCallback;
    goto :goto_0

    .line 696
    :cond_0
    monitor-exit v1

    .line 699
    .end local v0    # "tokenKey":I
    goto :goto_1

    .line 696
    .restart local v0    # "tokenKey":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .end local p1    # "slotId":I
    .end local p2    # "token":Lorg/codeaurora/internal/Token;
    .end local p3    # "status":Lorg/codeaurora/internal/Status;
    .end local p4    # "nrConfigType":Lorg/codeaurora/internal/NrConfigType;
    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 697
    .end local v0    # "tokenKey":I
    .restart local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .restart local p1    # "slotId":I
    .restart local p2    # "token":Lorg/codeaurora/internal/Token;
    .restart local p3    # "status":Lorg/codeaurora/internal/Status;
    .restart local p4    # "nrConfigType":Lorg/codeaurora/internal/NrConfigType;
    :catch_0
    move-exception v0

    .line 698
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on5gConfigInfo: Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private on5gStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "enableStatus"    # Z

    .line 638
    :try_start_0
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 639
    .local v0, "tokenKey":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->retrieveCallbacks(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 641
    .local v3, "callback":Lorg/codeaurora/internal/INetworkCallback;
    const-string v4, "MainServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "on5gStatus: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 642
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 641
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-interface {v3, p1, p2, p3, p4}, Lorg/codeaurora/internal/INetworkCallback;->on5gStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    .line 644
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    nop

    .end local v3    # "callback":Lorg/codeaurora/internal/INetworkCallback;
    goto :goto_0

    .line 646
    :cond_0
    monitor-exit v1

    .line 649
    .end local v0    # "tokenKey":I
    goto :goto_1

    .line 646
    .restart local v0    # "tokenKey":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .end local p1    # "slotId":I
    .end local p2    # "token":Lorg/codeaurora/internal/Token;
    .end local p3    # "status":Lorg/codeaurora/internal/Status;
    .end local p4    # "enableStatus":Z
    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 647
    .end local v0    # "tokenKey":I
    .restart local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .restart local p1    # "slotId":I
    .restart local p2    # "token":Lorg/codeaurora/internal/Token;
    .restart local p3    # "status":Lorg/codeaurora/internal/Status;
    .restart local p4    # "enableStatus":Z
    :catch_0
    move-exception v0

    .line 648
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on5gStatus: Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private onAnyNrBearerAllocation(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/BearerAllocationStatus;)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "bearerStatus"    # Lorg/codeaurora/internal/BearerAllocationStatus;

    .line 705
    :try_start_0
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 706
    .local v0, "tokenKey":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->retrieveCallbacks(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 708
    .local v3, "callback":Lorg/codeaurora/internal/INetworkCallback;
    const-string v4, "MainServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onAnyNrBearerAllocation: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 709
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 708
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-interface {v3, p1, p2, p3, p4}, Lorg/codeaurora/internal/INetworkCallback;->onAnyNrBearerAllocation(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/BearerAllocationStatus;)V

    .line 711
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    nop

    .end local v3    # "callback":Lorg/codeaurora/internal/INetworkCallback;
    goto :goto_0

    .line 713
    :cond_0
    monitor-exit v1

    .line 716
    .end local v0    # "tokenKey":I
    goto :goto_1

    .line 713
    .restart local v0    # "tokenKey":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .end local p1    # "slotId":I
    .end local p2    # "token":Lorg/codeaurora/internal/Token;
    .end local p3    # "status":Lorg/codeaurora/internal/Status;
    .end local p4    # "bearerStatus":Lorg/codeaurora/internal/BearerAllocationStatus;
    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 714
    .end local v0    # "tokenKey":I
    .restart local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .restart local p1    # "slotId":I
    .restart local p2    # "token":Lorg/codeaurora/internal/Token;
    .restart local p3    # "status":Lorg/codeaurora/internal/Status;
    .restart local p4    # "bearerStatus":Lorg/codeaurora/internal/BearerAllocationStatus;
    :catch_0
    move-exception v0

    .line 715
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on5gStatus: Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private onEnableEndc(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;

    .line 755
    :try_start_0
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 756
    .local v0, "tokenKey":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->retrieveCallbacks(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 758
    .local v3, "callback":Lorg/codeaurora/internal/INetworkCallback;
    const-string v4, "MainServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onEnableEndc: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 759
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 758
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    invoke-interface {v3, p1, p2, p3}, Lorg/codeaurora/internal/INetworkCallback;->onEnableEndc(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;)V

    .line 761
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    nop

    .end local v3    # "callback":Lorg/codeaurora/internal/INetworkCallback;
    goto :goto_0

    .line 763
    :cond_0
    monitor-exit v1

    .line 766
    .end local v0    # "tokenKey":I
    goto :goto_1

    .line 763
    .restart local v0    # "tokenKey":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .end local p1    # "slotId":I
    .end local p2    # "token":Lorg/codeaurora/internal/Token;
    .end local p3    # "status":Lorg/codeaurora/internal/Status;
    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 764
    .end local v0    # "tokenKey":I
    .restart local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .restart local p1    # "slotId":I
    .restart local p2    # "token":Lorg/codeaurora/internal/Token;
    .restart local p3    # "status":Lorg/codeaurora/internal/Status;
    :catch_0
    move-exception v0

    .line 765
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnableEndc: Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private onEndcStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "enableStatus"    # Z

    .line 771
    :try_start_0
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 772
    .local v0, "tokenKey":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->retrieveCallbacks(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 774
    .local v3, "callback":Lorg/codeaurora/internal/INetworkCallback;
    const-string v4, "MainServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onEndcStatus: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 775
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 774
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    invoke-interface {v3, p1, p2, p3, p4}, Lorg/codeaurora/internal/INetworkCallback;->onEndcStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    .line 777
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    nop

    .end local v3    # "callback":Lorg/codeaurora/internal/INetworkCallback;
    goto :goto_0

    .line 779
    :cond_0
    monitor-exit v1

    .line 782
    .end local v0    # "tokenKey":I
    goto :goto_1

    .line 779
    .restart local v0    # "tokenKey":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .end local p1    # "slotId":I
    .end local p2    # "token":Lorg/codeaurora/internal/Token;
    .end local p3    # "status":Lorg/codeaurora/internal/Status;
    .end local p4    # "enableStatus":Z
    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 780
    .end local v0    # "tokenKey":I
    .restart local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .restart local p1    # "slotId":I
    .restart local p2    # "token":Lorg/codeaurora/internal/Token;
    .restart local p3    # "status":Lorg/codeaurora/internal/Status;
    .restart local p4    # "enableStatus":Z
    :catch_0
    move-exception v0

    .line 781
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEndcStatus: Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private onNrDcParam(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/DcParam;)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "dcParam"    # Lorg/codeaurora/internal/DcParam;

    .line 654
    :try_start_0
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 655
    .local v0, "tokenKey":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->retrieveCallbacks(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 657
    .local v3, "callback":Lorg/codeaurora/internal/INetworkCallback;
    const-string v4, "MainServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNrDcParam: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 658
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 657
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-interface {v3, p1, p2, p3, p4}, Lorg/codeaurora/internal/INetworkCallback;->onNrDcParam(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/DcParam;)V

    .line 660
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    nop

    .end local v3    # "callback":Lorg/codeaurora/internal/INetworkCallback;
    goto :goto_0

    .line 662
    :cond_0
    monitor-exit v1

    .line 665
    .end local v0    # "tokenKey":I
    goto :goto_1

    .line 662
    .restart local v0    # "tokenKey":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .end local p1    # "slotId":I
    .end local p2    # "token":Lorg/codeaurora/internal/Token;
    .end local p3    # "status":Lorg/codeaurora/internal/Status;
    .end local p4    # "dcParam":Lorg/codeaurora/internal/DcParam;
    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 663
    .end local v0    # "tokenKey":I
    .restart local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .restart local p1    # "slotId":I
    .restart local p2    # "token":Lorg/codeaurora/internal/Token;
    .restart local p3    # "status":Lorg/codeaurora/internal/Status;
    .restart local p4    # "dcParam":Lorg/codeaurora/internal/DcParam;
    :catch_0
    move-exception v0

    .line 664
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on5gStatus: Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private onNrIconType(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrIconType;)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "nrIconType"    # Lorg/codeaurora/internal/NrIconType;

    .line 739
    :try_start_0
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 740
    .local v0, "tokenKey":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->retrieveCallbacks(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 742
    .local v3, "callback":Lorg/codeaurora/internal/INetworkCallback;
    const-string v4, "MainServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNrIconType: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 743
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 742
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-interface {v3, p1, p2, p3, p4}, Lorg/codeaurora/internal/INetworkCallback;->onNrIconType(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrIconType;)V

    .line 745
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    nop

    .end local v3    # "callback":Lorg/codeaurora/internal/INetworkCallback;
    goto :goto_0

    .line 747
    :cond_0
    monitor-exit v1

    .line 750
    .end local v0    # "tokenKey":I
    goto :goto_1

    .line 747
    .restart local v0    # "tokenKey":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .end local p1    # "slotId":I
    .end local p2    # "token":Lorg/codeaurora/internal/Token;
    .end local p3    # "status":Lorg/codeaurora/internal/Status;
    .end local p4    # "nrIconType":Lorg/codeaurora/internal/NrIconType;
    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 748
    .end local v0    # "tokenKey":I
    .restart local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .restart local p1    # "slotId":I
    .restart local p2    # "token":Lorg/codeaurora/internal/Token;
    .restart local p3    # "status":Lorg/codeaurora/internal/Status;
    .restart local p4    # "nrIconType":Lorg/codeaurora/internal/NrIconType;
    :catch_0
    move-exception v0

    .line 749
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNrIconType: Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private onSignalStrength(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/SignalStrength;)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "signalStrength"    # Lorg/codeaurora/internal/SignalStrength;

    .line 722
    :try_start_0
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 723
    .local v0, "tokenKey":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->retrieveCallbacks(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 725
    .local v3, "callback":Lorg/codeaurora/internal/INetworkCallback;
    const-string v4, "MainServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSignalStrength: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 726
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 725
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    invoke-interface {v3, p1, p2, p3, p4}, Lorg/codeaurora/internal/INetworkCallback;->onSignalStrength(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/SignalStrength;)V

    .line 728
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    nop

    .end local v3    # "callback":Lorg/codeaurora/internal/INetworkCallback;
    goto :goto_0

    .line 730
    :cond_0
    monitor-exit v1

    .line 733
    .end local v0    # "tokenKey":I
    goto :goto_1

    .line 730
    .restart local v0    # "tokenKey":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .end local p1    # "slotId":I
    .end local p2    # "token":Lorg/codeaurora/internal/Token;
    .end local p3    # "status":Lorg/codeaurora/internal/Status;
    .end local p4    # "signalStrength":Lorg/codeaurora/internal/SignalStrength;
    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 731
    .end local v0    # "tokenKey":I
    .restart local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .restart local p1    # "slotId":I
    .restart local p2    # "token":Lorg/codeaurora/internal/Token;
    .restart local p3    # "status":Lorg/codeaurora/internal/Status;
    .restart local p4    # "signalStrength":Lorg/codeaurora/internal/SignalStrength;
    :catch_0
    move-exception v0

    .line 732
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on5gStatus: Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private onUpperLayerIndInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/UpperLayerIndInfo;)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "ulInfo"    # Lorg/codeaurora/internal/UpperLayerIndInfo;

    .line 671
    :try_start_0
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 672
    .local v0, "tokenKey":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->retrieveCallbacks(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 674
    .local v3, "callback":Lorg/codeaurora/internal/INetworkCallback;
    const-string v4, "MainServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onUpperLayerIndInfo: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 675
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 674
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-interface {v3, p1, p2, p3, p4}, Lorg/codeaurora/internal/INetworkCallback;->onUpperLayerIndInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/UpperLayerIndInfo;)V

    .line 677
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    nop

    .end local v3    # "callback":Lorg/codeaurora/internal/INetworkCallback;
    goto :goto_0

    .line 679
    :cond_0
    monitor-exit v1

    .line 682
    .end local v0    # "tokenKey":I
    goto :goto_1

    .line 679
    .restart local v0    # "tokenKey":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .end local p1    # "slotId":I
    .end local p2    # "token":Lorg/codeaurora/internal/Token;
    .end local p3    # "status":Lorg/codeaurora/internal/Status;
    .end local p4    # "ulInfo":Lorg/codeaurora/internal/UpperLayerIndInfo;
    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 680
    .end local v0    # "tokenKey":I
    .restart local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .restart local p1    # "slotId":I
    .restart local p2    # "token":Lorg/codeaurora/internal/Token;
    .restart local p3    # "status":Lorg/codeaurora/internal/Status;
    .restart local p4    # "ulInfo":Lorg/codeaurora/internal/UpperLayerIndInfo;
    :catch_0
    move-exception v0

    .line 681
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpperLayerIndInfo: Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private removeCallback(Lorg/codeaurora/internal/INetworkCallback;)V
    .locals 6
    .param p1, "callback"    # Lorg/codeaurora/internal/INetworkCallback;

    .line 522
    invoke-interface {p1}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 523
    .local v0, "binder":Landroid/os/IBinder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCallback: callback= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 525
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 526
    .local v3, "it":Lorg/codeaurora/internal/INetworkCallback;
    invoke-interface {v3}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 527
    const-string v2, "MainServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove callback= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 529
    monitor-exit v1

    return-void

    .line 531
    .end local v3    # "it":Lorg/codeaurora/internal/INetworkCallback;
    :cond_0
    goto :goto_0

    .line 532
    :cond_1
    monitor-exit v1

    .line 533
    return-void

    .line 532
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private removeClientFromInflightRequests(Lorg/codeaurora/internal/INetworkCallback;)V
    .locals 6
    .param p1, "callback"    # Lorg/codeaurora/internal/INetworkCallback;

    .line 536
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 537
    .local v1, "key":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    .line 538
    .local v2, "txn":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;
    iget-object v3, v2, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;->mClient:Lorg/codeaurora/internal/Client;

    invoke-virtual {v3}, Lorg/codeaurora/internal/Client;->getCallback()Lorg/codeaurora/internal/INetworkCallback;

    move-result-object v3

    invoke-interface {v3}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 539
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeClientFromInflightRequests: Token = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 540
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 539
    const-string v4, "MainServiceImpl"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    .end local v1    # "key":I
    .end local v2    # "txn":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;
    :cond_0
    goto :goto_0

    .line 544
    :cond_1
    return-void
.end method


# virtual methods
.method public disable5g(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disable5g: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->isClientValid(Lorg/codeaurora/internal/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->generateNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 386
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v4, "disable5g"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v1, p1, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->disable5g(ILorg/codeaurora/internal/Token;)V

    .line 388
    return-object v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "printwriter"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 844
    move-object v0, p2

    .line 845
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "5G-Middleware:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 846
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHidlConnectionInterface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 847
    const-string v1, "AIDL clients : "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 848
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->dumpAidlClients(Ljava/io/PrintWriter;)V

    .line 849
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 851
    const-string v1, "Inflight requests : "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 852
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->dumpInflightRequests(Ljava/io/PrintWriter;)V

    .line 853
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 854
    return-void
.end method

.method public enable5g(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 7
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 371
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 372
    .local v0, "uid":I
    sget-object v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "packageName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enable5g: slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MainServiceImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->isClientValid(Lorg/codeaurora/internal/Client;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    .line 376
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->generateNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v2

    .line 377
    .local v2, "token":Lorg/codeaurora/internal/Token;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v6, "Enable5g"

    invoke-direct {v5, p0, v2, v6, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v3, p1, v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->enable5g(ILorg/codeaurora/internal/Token;)V

    .line 379
    return-object v2
.end method

.method public enable5gOnly(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable5gOnly: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->isClientValid(Lorg/codeaurora/internal/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 394
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enableEndc(IZLorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "enabled"    # Z
    .param p3, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableEndc: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-direct {p0, p3}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->isClientValid(Lorg/codeaurora/internal/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->generateNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 469
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v4, "enableEndc"

    invoke-direct {v3, p0, v0, v4, p3}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v1, p1, p2, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->enableEndc(IZLorg/codeaurora/internal/Token;)V

    .line 472
    return-object v0
.end method

.method public getAidlClientsCount()I
    .locals 2

    .line 818
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 819
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 820
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getInflightRequestsCount()I
    .locals 1

    .line 824
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public onNrConfigStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfig;)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "nrConfig"    # Lorg/codeaurora/internal/NrConfig;

    .line 803
    :try_start_0
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 804
    .local v0, "tokenKey":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->retrieveCallbacks(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 806
    .local v3, "callback":Lorg/codeaurora/internal/INetworkCallback;
    const-string v4, "MainServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNrConfigStatus: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 807
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 806
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-interface {v3, p1, p2, p3, p4}, Lorg/codeaurora/internal/INetworkCallback;->onNrConfigStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfig;)V

    .line 809
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    nop

    .end local v3    # "callback":Lorg/codeaurora/internal/INetworkCallback;
    goto :goto_0

    .line 811
    :cond_0
    monitor-exit v1

    .line 814
    .end local v0    # "tokenKey":I
    goto :goto_1

    .line 811
    .restart local v0    # "tokenKey":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .end local p1    # "slotId":I
    .end local p2    # "token":Lorg/codeaurora/internal/Token;
    .end local p3    # "status":Lorg/codeaurora/internal/Status;
    .end local p4    # "nrConfig":Lorg/codeaurora/internal/NrConfig;
    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 812
    .end local v0    # "tokenKey":I
    .restart local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .restart local p1    # "slotId":I
    .restart local p2    # "token":Lorg/codeaurora/internal/Token;
    .restart local p3    # "status":Lorg/codeaurora/internal/Status;
    .restart local p4    # "nrConfig":Lorg/codeaurora/internal/NrConfig;
    :catch_0
    move-exception v0

    .line 813
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNrConfigStatus: Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public onSetNrConfig(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;

    .line 787
    :try_start_0
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 788
    .local v0, "tokenKey":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->retrieveCallbacks(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 790
    .local v3, "callback":Lorg/codeaurora/internal/INetworkCallback;
    const-string v4, "MainServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSetNrConfig: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 791
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 790
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-interface {v3, p1, p2, p3}, Lorg/codeaurora/internal/INetworkCallback;->onSetNrConfig(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;)V

    .line 793
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    nop

    .end local v3    # "callback":Lorg/codeaurora/internal/INetworkCallback;
    goto :goto_0

    .line 795
    :cond_0
    monitor-exit v1

    .line 798
    .end local v0    # "tokenKey":I
    goto :goto_1

    .line 795
    .restart local v0    # "tokenKey":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .end local p1    # "slotId":I
    .end local p2    # "token":Lorg/codeaurora/internal/Token;
    .end local p3    # "status":Lorg/codeaurora/internal/Status;
    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 796
    .end local v0    # "tokenKey":I
    .restart local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .restart local p1    # "slotId":I
    .restart local p2    # "token":Lorg/codeaurora/internal/Token;
    .restart local p3    # "status":Lorg/codeaurora/internal/Status;
    :catch_0
    move-exception v0

    .line 797
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetNrConfig: Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public query5gConfigInfo(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query5gConfigInfo: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->isClientValid(Lorg/codeaurora/internal/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->generateNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 449
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v4, "query5gConfigInfo"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v1, p1, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->query5gConfigInfo(ILorg/codeaurora/internal/Token;)V

    .line 452
    return-object v0
.end method

.method public query5gStatus(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query5gStatus: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->isClientValid(Lorg/codeaurora/internal/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->generateNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 401
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v4, "query5gStatus"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v1, p1, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->query5gStatus(ILorg/codeaurora/internal/Token;)V

    .line 403
    return-object v0
.end method

.method public queryEndcStatus(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryEndcStatus: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->isClientValid(Lorg/codeaurora/internal/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->generateNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 479
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v4, "queryEndcStatus"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v1, p1, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->queryEndcStatus(ILorg/codeaurora/internal/Token;)V

    .line 482
    return-object v0
.end method

.method public queryNrBearerAllocation(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNrBearerAllocation: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->isClientValid(Lorg/codeaurora/internal/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->generateNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 419
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v4, "queryNrBearerAllocation"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v1, p1, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->queryNrBearerAllocation(ILorg/codeaurora/internal/Token;)V

    .line 422
    return-object v0
.end method

.method public queryNrConfig(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNrConfig: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->isClientValid(Lorg/codeaurora/internal/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->generateNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 501
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v4, "queryNrConfig"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v1, p1, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->queryNrConfig(ILorg/codeaurora/internal/Token;)V

    .line 503
    return-object v0
.end method

.method public queryNrDcParam(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNrDcParam: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->isClientValid(Lorg/codeaurora/internal/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->generateNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 410
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v4, "queryNrDcParam"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v1, p1, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->queryNrDcParam(ILorg/codeaurora/internal/Token;)V

    .line 412
    return-object v0
.end method

.method public queryNrIconType(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNrIconType: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->isClientValid(Lorg/codeaurora/internal/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->generateNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 459
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v4, "queryNrIconType"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v1, p1, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->queryNrIconType(ILorg/codeaurora/internal/Token;)V

    .line 462
    return-object v0
.end method

.method public queryNrSignalStrength(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNrSignalStrength: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->isClientValid(Lorg/codeaurora/internal/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->generateNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 429
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v4, "queryNrSignalStrength"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v1, p1, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->queryNrSignalStrength(ILorg/codeaurora/internal/Token;)V

    .line 432
    return-object v0
.end method

.method public queryUpperLayerIndInfo(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryUpperLayerIndInfo: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->isClientValid(Lorg/codeaurora/internal/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->generateNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 439
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v4, "queryUpperLayerIndInfo"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v1, p1, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->queryUpperLayerIndInfo(ILorg/codeaurora/internal/Token;)V

    .line 442
    return-object v0
.end method

.method public registerCallback(Ljava/lang/String;Lorg/codeaurora/internal/INetworkCallback;)Lorg/codeaurora/internal/Client;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Lorg/codeaurora/internal/INetworkCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 564
    const/4 v0, 0x0

    .line 565
    .local v0, "client":Lorg/codeaurora/internal/Client;
    invoke-interface {p2}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 567
    .local v1, "binder":Landroid/os/IBinder;
    new-instance v2, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$ClientBinderDeathRecipient;

    invoke-direct {v2, p0, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$ClientBinderDeathRecipient;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/INetworkCallback;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 569
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 570
    .local v2, "uid":I
    sget-object v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 571
    .local v3, "callerPackageName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerCallback: uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " callerPackage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "callback = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "binder = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MainServiceImpl"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v6, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 575
    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->addCallback(Lorg/codeaurora/internal/INetworkCallback;)Z

    move-result v4

    iget-boolean v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->SUCCESS:Z

    if-ne v4, v6, :cond_0

    .line 576
    new-instance v4, Lorg/codeaurora/internal/Client;

    iget v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mClientIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mClientIndex:I

    invoke-direct {v4, v6, v2, p1, p2}, Lorg/codeaurora/internal/Client;-><init>(IILjava/lang/String;Lorg/codeaurora/internal/INetworkCallback;)V

    move-object v0, v4

    .line 577
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerCallback: client = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 580
    :cond_0
    const-string v4, "registerCallback: callback could not be added."

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :goto_0
    return-object v0
.end method

.method retrieveCallbacks(I)Ljava/util/ArrayList;
    .locals 5
    .param p1, "tokenKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/internal/INetworkCallback;",
            ">;"
        }
    .end annotation

    .line 617
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 618
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/internal/INetworkCallback;>;"
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 619
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 620
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    .line 621
    .local v1, "txn":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;
    iget-object v2, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;->mClient:Lorg/codeaurora/internal/Client;

    .line 622
    .local v2, "client":Lorg/codeaurora/internal/Client;
    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->isClientValid(Lorg/codeaurora/internal/Client;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 623
    invoke-virtual {v2}, Lorg/codeaurora/internal/Client;->getCallback()Lorg/codeaurora/internal/INetworkCallback;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 625
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This client is invalid now: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MainServiceImpl"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    .end local v1    # "txn":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;
    .end local v2    # "client":Lorg/codeaurora/internal/Client;
    :goto_0
    goto :goto_1

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    .line 632
    :cond_2
    :goto_1
    return-object v0
.end method

.method public setHidlClient(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;)V
    .locals 1
    .param p1, "hidlClient"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    .line 365
    iput-object p1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    .line 366
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    invoke-interface {p1, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->registerCallback(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;)V

    .line 367
    return-void
.end method

.method public setLooper(Landroid/os/Looper;)V
    .locals 1
    .param p1, "workerLooper"    # Landroid/os/Looper;

    .line 361
    new-instance v0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mWorkerThreadHandler:Landroid/os/Handler;

    .line 362
    return-void
.end method

.method public setNrConfig(ILorg/codeaurora/internal/NrConfig;Lorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 7
    .param p1, "slotId"    # I
    .param p2, "config"    # Lorg/codeaurora/internal/NrConfig;
    .param p3, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 486
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 487
    .local v0, "uid":I
    sget-object v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 488
    .local v1, "packageName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNrConfig: slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " config = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MainServiceImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-direct {p0, p3}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->isClientValid(Lorg/codeaurora/internal/Client;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    .line 491
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->generateNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v2

    .line 492
    .local v2, "token":Lorg/codeaurora/internal/Token;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v6, "setNrConfig"

    invoke-direct {v5, p0, v2, v6, p3}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v3, p1, p2, v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->setNrConfig(ILorg/codeaurora/internal/NrConfig;Lorg/codeaurora/internal/Token;)V

    .line 494
    return-object v2
.end method

.method public unRegisterCallback(Lorg/codeaurora/internal/INetworkCallback;)V
    .locals 0
    .param p1, "callback"    # Lorg/codeaurora/internal/INetworkCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 586
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->removeCallback(Lorg/codeaurora/internal/INetworkCallback;)V

    .line 587
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->removeClientFromInflightRequests(Lorg/codeaurora/internal/INetworkCallback;)V

    .line 588
    return-void
.end method
