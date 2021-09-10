.class public Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;
.super Ljava/lang/Object;
.source "FakeHidlConnectionInterfaceImpl.java"

# interfaces
.implements Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FakeHidlConnectionInterfaceImpl"


# instance fields
.field private final EVENT_SIMULATE_5G_DISABLED:I

.field private final EVENT_SIMULATE_5G_ENABLED:I

.field private final EVENT_SIMULATE_ENABLE_ENDC:I

.field private final EVENT_SIMULATE_QUERY_5G_STATUS:I

.field private final EVENT_SIMULATE_QUERY_BEARER_ALLOCATION:I

.field private final EVENT_SIMULATE_QUERY_CONFIG_TYPE:I

.field private final EVENT_SIMULATE_QUERY_ENDC_STATUS:I

.field private final EVENT_SIMULATE_QUERY_ICON_TYPE:I

.field private final EVENT_SIMULATE_QUERY_NRDC_PARAM:I

.field private final EVENT_SIMULATE_QUERY_NR_CONFIG:I

.field private final EVENT_SIMULATE_QUERY_SIGNAL_STRENGTH:I

.field private final EVENT_SIMULATE_QUERY_UPPER_LAYER_IND_INFO:I

.field private final EVENT_SIMULATE_SET_NR_CONFIG:I

.field private final UNSOL:Lorg/codeaurora/internal/Token;

.field private m5gEnabledState:Z

.field private mCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

.field private mSerial:I

.field private mWorkerHandler:Landroid/os/Handler;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FakeHidlConnectionInterfaceImplBgThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerThread:Landroid/os/HandlerThread;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mSerial:I

    .line 35
    new-instance v1, Lorg/codeaurora/internal/Token;

    invoke-direct {v1, v0}, Lorg/codeaurora/internal/Token;-><init>(I)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->UNSOL:Lorg/codeaurora/internal/Token;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->m5gEnabledState:Z

    .line 39
    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_5G_ENABLED:I

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_5G_DISABLED:I

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_QUERY_5G_STATUS:I

    .line 42
    const/4 v0, 0x3

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_QUERY_NRDC_PARAM:I

    .line 43
    const/4 v0, 0x4

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_QUERY_BEARER_ALLOCATION:I

    .line 44
    const/4 v0, 0x5

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_QUERY_SIGNAL_STRENGTH:I

    .line 45
    const/4 v0, 0x6

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_QUERY_UPPER_LAYER_IND_INFO:I

    .line 46
    const/4 v0, 0x7

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_QUERY_CONFIG_TYPE:I

    .line 47
    const/16 v0, 0x8

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_QUERY_ICON_TYPE:I

    .line 48
    const/16 v0, 0x9

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_ENABLE_ENDC:I

    .line 49
    const/16 v0, 0xa

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_QUERY_ENDC_STATUS:I

    .line 50
    const/16 v0, 0xb

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_SET_NR_CONFIG:I

    .line 51
    const/16 v0, 0xc

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_QUERY_NR_CONFIG:I

    .line 55
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 56
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 57
    .local v0, "workerLooper":Landroid/os/Looper;
    new-instance v1, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;

    invoke-direct {v1, p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constructor... using its own bg thread Looper = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FakeHidlConnectionInterfaceImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "workerLooper"    # Landroid/os/Looper;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FakeHidlConnectionInterfaceImplBgThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerThread:Landroid/os/HandlerThread;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mSerial:I

    .line 35
    new-instance v1, Lorg/codeaurora/internal/Token;

    invoke-direct {v1, v0}, Lorg/codeaurora/internal/Token;-><init>(I)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->UNSOL:Lorg/codeaurora/internal/Token;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->m5gEnabledState:Z

    .line 39
    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_5G_ENABLED:I

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_5G_DISABLED:I

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_QUERY_5G_STATUS:I

    .line 42
    const/4 v0, 0x3

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_QUERY_NRDC_PARAM:I

    .line 43
    const/4 v0, 0x4

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_QUERY_BEARER_ALLOCATION:I

    .line 44
    const/4 v0, 0x5

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_QUERY_SIGNAL_STRENGTH:I

    .line 45
    const/4 v0, 0x6

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_QUERY_UPPER_LAYER_IND_INFO:I

    .line 46
    const/4 v0, 0x7

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_QUERY_CONFIG_TYPE:I

    .line 47
    const/16 v0, 0x8

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_QUERY_ICON_TYPE:I

    .line 48
    const/16 v0, 0x9

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_ENABLE_ENDC:I

    .line 49
    const/16 v0, 0xa

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_QUERY_ENDC_STATUS:I

    .line 50
    const/16 v0, 0xb

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_SET_NR_CONFIG:I

    .line 51
    const/16 v0, 0xc

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->EVENT_SIMULATE_QUERY_NR_CONFIG:I

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "constructor... Looper = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FakeHidlConnectionInterfaceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    .line 28
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lorg/codeaurora/internal/Token;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    .line 28
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->UNSOL:Lorg/codeaurora/internal/Token;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    .line 28
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->m5gEnabledState:Z

    return v0
.end method

.method static synthetic access$202(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;
    .param p1, "x1"    # Z

    .line 28
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->m5gEnabledState:Z

    return p1
.end method

.method private getNextToken()Lorg/codeaurora/internal/Token;
    .locals 2

    .line 67
    new-instance v0, Lorg/codeaurora/internal/Token;

    iget v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mSerial:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mSerial:I

    invoke-direct {v0, v1}, Lorg/codeaurora/internal/Token;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public disable5g(ILorg/codeaurora/internal/Token;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 302
    const-string v0, "FakeHidlConnectionInterfaceImpl"

    const-string v1, "disable5g: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    .line 304
    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 303
    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable5g: token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void
.end method

.method public enable5g(ILorg/codeaurora/internal/Token;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 292
    const-string v0, "FakeHidlConnectionInterfaceImpl"

    const-string v1, "enable5g: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 295
    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    .line 294
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 297
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable5g: token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void
.end method

.method public enable5gOnly(ILorg/codeaurora/internal/Token;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    return-void
.end method

.method public enableEndc(IZLorg/codeaurora/internal/Token;)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "enable"    # Z
    .param p3, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 372
    const-string v0, "FakeHidlConnectionInterfaceImpl"

    const-string v1, "enableEndc: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    .line 374
    const/16 v2, 0x9

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 373
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableEndc: token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return-void
.end method

.method public generateNextToken()Lorg/codeaurora/internal/Token;
    .locals 1

    .line 404
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->getNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    return-object v0
.end method

.method public query5gConfigInfo(ILorg/codeaurora/internal/Token;)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 323
    const-string v0, "FakeHidlConnectionInterfaceImpl"

    const-string v1, "query5gConfigInfo: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    .line 326
    const/4 v2, 0x7

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 325
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query5gConfigInfo: token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-void
.end method

.method public query5gStatus(ILorg/codeaurora/internal/Token;)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 314
    const-string v0, "FakeHidlConnectionInterfaceImpl"

    const-string v1, "query5gStatus: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    .line 317
    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 316
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query5gStatus: token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void
.end method

.method public queryEndcStatus(ILorg/codeaurora/internal/Token;)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 380
    const-string v0, "FakeHidlConnectionInterfaceImpl"

    const-string v1, "queryEndcStatus: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    .line 382
    const/16 v2, 0xa

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 381
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryEndcStatus: token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-void
.end method

.method public queryNrBearerAllocation(ILorg/codeaurora/internal/Token;)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    const-string v0, "FakeHidlConnectionInterfaceImpl"

    const-string v1, "queryNrBearerAllocation: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    .line 342
    const/4 v2, 0x4

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 341
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryNrBearerAllocation: token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void
.end method

.method public queryNrConfig(ILorg/codeaurora/internal/Token;)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 396
    const-string v0, "FakeHidlConnectionInterfaceImpl"

    const-string v1, "queryNrConfig: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    .line 398
    const/16 v2, 0xc

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 397
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryNrConfig: token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-void
.end method

.method public queryNrDcParam(ILorg/codeaurora/internal/Token;)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    const-string v0, "FakeHidlConnectionInterfaceImpl"

    const-string v1, "queryNrDcParam: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    .line 334
    const/4 v2, 0x3

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 333
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryNrDcParam: token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return-void
.end method

.method public queryNrIconType(ILorg/codeaurora/internal/Token;)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 364
    const-string v0, "FakeHidlConnectionInterfaceImpl"

    const-string v1, "queryNrIconType: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    .line 366
    const/16 v2, 0x8

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 365
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryNrIconType: token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-void
.end method

.method public queryNrSignalStrength(ILorg/codeaurora/internal/Token;)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 348
    const-string v0, "FakeHidlConnectionInterfaceImpl"

    const-string v1, "queryNrSignalStrength: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    .line 350
    const/4 v2, 0x5

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 349
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryNrSignalStrength: token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return-void
.end method

.method public queryUpperLayerIndInfo(ILorg/codeaurora/internal/Token;)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 356
    const-string v0, "FakeHidlConnectionInterfaceImpl"

    const-string v1, "queryUpperLayerIndInfo: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    .line 358
    const/4 v2, 0x6

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 357
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryUpperLayerIndInfo: token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-void
.end method

.method public registerCallback(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerCallback: callback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FakeHidlConnectionInterfaceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iput-object p1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    .line 411
    return-void
.end method

.method public setNrConfig(ILorg/codeaurora/internal/NrConfig;Lorg/codeaurora/internal/Token;)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "nrConfig"    # Lorg/codeaurora/internal/NrConfig;
    .param p3, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 388
    const-string v0, "FakeHidlConnectionInterfaceImpl"

    const-string v1, "setNrConfig: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mWorkerHandler:Landroid/os/Handler;

    .line 390
    const/16 v2, 0xb

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 389
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNrConfig: token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return-void
.end method

.method public unRegisterCallback(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unRegisterCallback: callback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FakeHidlConnectionInterfaceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    if-ne v0, p1, :cond_0

    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->mCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    .line 419
    :cond_0
    return-void
.end method
