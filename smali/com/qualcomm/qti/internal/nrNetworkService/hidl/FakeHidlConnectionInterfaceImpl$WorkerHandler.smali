.class Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;
.super Landroid/os/Handler;
.source "FakeHidlConnectionInterfaceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FakeHidleConnection-WorkerHandler"


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    .line 73
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 76
    iput-object p1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    .line 77
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 78
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage msg.what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FakeHidleConnection-WorkerHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 274
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 275
    .local v0, "slotId":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/internal/Token;

    .line 276
    .local v2, "token":Lorg/codeaurora/internal/Token;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_SIMULATE_QUERY_NR_CONFIG: token = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v1, Lorg/codeaurora/internal/NrConfig;

    invoke-direct {v1, v5}, Lorg/codeaurora/internal/NrConfig;-><init>(I)V

    .line 281
    .local v1, "nrConfig":Lorg/codeaurora/internal/NrConfig;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v3

    new-instance v4, Lorg/codeaurora/internal/Status;

    invoke-direct {v4, v5}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v3, v0, v2, v4, v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onNrConfigStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfig;)V

    goto/16 :goto_3

    .line 262
    .end local v0    # "slotId":I
    .end local v1    # "nrConfig":Lorg/codeaurora/internal/NrConfig;
    .end local v2    # "token":Lorg/codeaurora/internal/Token;
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 263
    .restart local v0    # "slotId":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/internal/Token;

    .line 264
    .restart local v2    # "token":Lorg/codeaurora/internal/Token;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_SIMULATE_SET_NR_CONFIG: token = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v1

    new-instance v3, Lorg/codeaurora/internal/Status;

    invoke-direct {v3, v5}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v1, v0, v2, v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->setNrConfigStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;)V

    .line 271
    .end local v0    # "slotId":I
    .end local v2    # "token":Lorg/codeaurora/internal/Token;
    :cond_0
    goto/16 :goto_3

    .line 250
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 251
    .restart local v0    # "slotId":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/internal/Token;

    .line 252
    .restart local v2    # "token":Lorg/codeaurora/internal/Token;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_SIMULATE_QUERY_ENDC_STATUS: token = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v1

    new-instance v3, Lorg/codeaurora/internal/Status;

    invoke-direct {v3, v5}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v1, v0, v2, v3, v5}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onEndcStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    .line 259
    .end local v0    # "slotId":I
    .end local v2    # "token":Lorg/codeaurora/internal/Token;
    :cond_1
    goto/16 :goto_3

    .line 238
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 239
    .restart local v0    # "slotId":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/internal/Token;

    .line 240
    .restart local v2    # "token":Lorg/codeaurora/internal/Token;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_SIMULATE_ENABLE_ENDC: token = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v1

    new-instance v3, Lorg/codeaurora/internal/Status;

    invoke-direct {v3, v5}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v1, v0, v2, v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onEnableEndc(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;)V

    .line 247
    .end local v0    # "slotId":I
    .end local v2    # "token":Lorg/codeaurora/internal/Token;
    :cond_2
    goto/16 :goto_3

    .line 224
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 225
    .restart local v0    # "slotId":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/internal/Token;

    .line 226
    .restart local v2    # "token":Lorg/codeaurora/internal/Token;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_SIMULATE_QUERY_ICON_TYPE: token = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance v1, Lorg/codeaurora/internal/NrIconType;

    invoke-direct {v1, v5}, Lorg/codeaurora/internal/NrIconType;-><init>(I)V

    .line 231
    .local v1, "nrIconType":Lorg/codeaurora/internal/NrIconType;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v3

    new-instance v4, Lorg/codeaurora/internal/Status;

    invoke-direct {v4, v5}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v3, v0, v2, v4, v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onNrIconType(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrIconType;)V

    .line 235
    .end local v0    # "slotId":I
    .end local v1    # "nrIconType":Lorg/codeaurora/internal/NrIconType;
    .end local v2    # "token":Lorg/codeaurora/internal/Token;
    :cond_3
    goto/16 :goto_3

    .line 210
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 211
    .restart local v0    # "slotId":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/internal/Token;

    .line 212
    .restart local v2    # "token":Lorg/codeaurora/internal/Token;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_SIMULATE_QUERY_CONFIG_TYPE: token = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v1, Lorg/codeaurora/internal/NrConfigType;

    invoke-direct {v1, v4}, Lorg/codeaurora/internal/NrConfigType;-><init>(I)V

    .line 217
    .local v1, "nrConfigType":Lorg/codeaurora/internal/NrConfigType;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v3

    new-instance v4, Lorg/codeaurora/internal/Status;

    invoke-direct {v4, v5}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v3, v0, v2, v4, v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->on5gConfigInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfigType;)V

    .line 221
    .end local v0    # "slotId":I
    .end local v1    # "nrConfigType":Lorg/codeaurora/internal/NrConfigType;
    .end local v2    # "token":Lorg/codeaurora/internal/Token;
    :cond_4
    goto/16 :goto_3

    .line 192
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 193
    .restart local v0    # "slotId":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/internal/Token;

    .line 194
    .restart local v2    # "token":Lorg/codeaurora/internal/Token;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_SIMULATE_QUERY_UPPER_LAYER_IND_INFO: token = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$200(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 198
    new-instance v1, Lorg/codeaurora/internal/UpperLayerIndInfo;

    invoke-direct {v1, v5, v5}, Lorg/codeaurora/internal/UpperLayerIndInfo;-><init>(II)V

    goto :goto_0

    .line 200
    :cond_5
    new-instance v1, Lorg/codeaurora/internal/UpperLayerIndInfo;

    invoke-direct {v1, v4, v4}, Lorg/codeaurora/internal/UpperLayerIndInfo;-><init>(II)V

    :goto_0
    nop

    .line 203
    .local v1, "upperLayerIndInfo":Lorg/codeaurora/internal/UpperLayerIndInfo;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v3

    new-instance v4, Lorg/codeaurora/internal/Status;

    invoke-direct {v4, v5}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v3, v0, v2, v4, v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onUpperLayerIndInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/UpperLayerIndInfo;)V

    .line 207
    .end local v0    # "slotId":I
    .end local v1    # "upperLayerIndInfo":Lorg/codeaurora/internal/UpperLayerIndInfo;
    .end local v2    # "token":Lorg/codeaurora/internal/Token;
    :cond_6
    goto/16 :goto_3

    .line 180
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 181
    .restart local v0    # "slotId":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/internal/Token;

    .line 182
    .local v3, "token":Lorg/codeaurora/internal/Token;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v4}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_SIMULATE_QUERY_SIGNAL_STRENGTH: token = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$200(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v2, Lorg/codeaurora/internal/SignalStrength;

    invoke-direct {v2}, Lorg/codeaurora/internal/SignalStrength;-><init>()V

    :cond_7
    move-object v1, v2

    .line 185
    .local v1, "ss":Lorg/codeaurora/internal/SignalStrength;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v2

    new-instance v4, Lorg/codeaurora/internal/Status;

    invoke-direct {v4, v5}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v2, v0, v3, v4, v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onSignalStrength(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/SignalStrength;)V

    .line 189
    .end local v0    # "slotId":I
    .end local v1    # "ss":Lorg/codeaurora/internal/SignalStrength;
    .end local v3    # "token":Lorg/codeaurora/internal/Token;
    :cond_8
    goto/16 :goto_3

    .line 164
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 165
    .restart local v0    # "slotId":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/internal/Token;

    .line 166
    .restart local v2    # "token":Lorg/codeaurora/internal/Token;
    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 167
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_SIMULATE_QUERY_BEARER_ALLOCATION: token = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$200(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 169
    new-instance v1, Lorg/codeaurora/internal/BearerAllocationStatus;

    invoke-direct {v1, v3}, Lorg/codeaurora/internal/BearerAllocationStatus;-><init>(I)V

    goto :goto_1

    .line 171
    :cond_9
    new-instance v1, Lorg/codeaurora/internal/BearerAllocationStatus;

    invoke-direct {v1, v4}, Lorg/codeaurora/internal/BearerAllocationStatus;-><init>(I)V

    :goto_1
    nop

    .line 173
    .local v1, "bearerAllocationStatus":Lorg/codeaurora/internal/BearerAllocationStatus;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v3

    new-instance v4, Lorg/codeaurora/internal/Status;

    invoke-direct {v4, v5}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v3, v0, v2, v4, v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onAnyNrBearerAllocation(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/BearerAllocationStatus;)V

    .line 177
    .end local v0    # "slotId":I
    .end local v1    # "bearerAllocationStatus":Lorg/codeaurora/internal/BearerAllocationStatus;
    .end local v2    # "token":Lorg/codeaurora/internal/Token;
    :cond_a
    goto/16 :goto_3

    .line 150
    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 151
    .restart local v0    # "slotId":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/internal/Token;

    .line 152
    .restart local v2    # "token":Lorg/codeaurora/internal/Token;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_SIMULATE_QUERY_NRDC_PARAM: token = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$200(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 155
    new-instance v1, Lorg/codeaurora/internal/DcParam;

    invoke-direct {v1, v5, v5}, Lorg/codeaurora/internal/DcParam;-><init>(II)V

    goto :goto_2

    .line 156
    :cond_b
    new-instance v1, Lorg/codeaurora/internal/DcParam;

    invoke-direct {v1, v4, v4}, Lorg/codeaurora/internal/DcParam;-><init>(II)V

    :goto_2
    nop

    .line 157
    .local v1, "dcParam":Lorg/codeaurora/internal/DcParam;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v3

    new-instance v4, Lorg/codeaurora/internal/Status;

    invoke-direct {v4, v5}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v3, v0, v2, v4, v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onNrDcParam(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/DcParam;)V

    .line 161
    .end local v0    # "slotId":I
    .end local v1    # "dcParam":Lorg/codeaurora/internal/DcParam;
    .end local v2    # "token":Lorg/codeaurora/internal/Token;
    :cond_c
    goto/16 :goto_3

    .line 139
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 140
    .restart local v0    # "slotId":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/internal/Token;

    .line 141
    .restart local v2    # "token":Lorg/codeaurora/internal/Token;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_SIMULATE_QUERY_5G_STATUS: token = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v1

    new-instance v3, Lorg/codeaurora/internal/Status;

    invoke-direct {v3, v5}, Lorg/codeaurora/internal/Status;-><init>(I)V

    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    .line 144
    invoke-static {v4}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$200(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Z

    move-result v4

    .line 143
    invoke-interface {v1, v0, v2, v3, v4}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->on5gStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    .line 147
    .end local v0    # "slotId":I
    .end local v2    # "token":Lorg/codeaurora/internal/Token;
    :cond_d
    goto/16 :goto_3

    .line 113
    :pswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 114
    .restart local v0    # "slotId":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/internal/Token;

    .line 115
    .restart local v3    # "token":Lorg/codeaurora/internal/Token;
    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 116
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_SIMULATE_5G_DISABLED: token = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v1

    new-instance v6, Lorg/codeaurora/internal/Status;

    invoke-direct {v6, v5}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v1, v0, v3, v6, v4}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->on5gStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    .line 119
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v1

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lorg/codeaurora/internal/Token;

    move-result-object v6

    new-instance v7, Lorg/codeaurora/internal/Status;

    invoke-direct {v7, v5}, Lorg/codeaurora/internal/Status;-><init>(I)V

    new-instance v8, Lorg/codeaurora/internal/DcParam;

    invoke-direct {v8, v4, v4}, Lorg/codeaurora/internal/DcParam;-><init>(II)V

    invoke-interface {v1, v0, v6, v7, v8}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onNrDcParam(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/DcParam;)V

    .line 121
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v1

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lorg/codeaurora/internal/Token;

    move-result-object v6

    new-instance v7, Lorg/codeaurora/internal/Status;

    invoke-direct {v7, v5}, Lorg/codeaurora/internal/Status;-><init>(I)V

    new-instance v8, Lorg/codeaurora/internal/UpperLayerIndInfo;

    invoke-direct {v8, v4, v4}, Lorg/codeaurora/internal/UpperLayerIndInfo;-><init>(II)V

    invoke-interface {v1, v0, v6, v7, v8}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onUpperLayerIndInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/UpperLayerIndInfo;)V

    .line 124
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v1

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lorg/codeaurora/internal/Token;

    move-result-object v6

    new-instance v7, Lorg/codeaurora/internal/Status;

    invoke-direct {v7, v5}, Lorg/codeaurora/internal/Status;-><init>(I)V

    new-instance v8, Lorg/codeaurora/internal/BearerAllocationStatus;

    invoke-direct {v8, v4}, Lorg/codeaurora/internal/BearerAllocationStatus;-><init>(I)V

    invoke-interface {v1, v0, v6, v7, v8}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onAnyNrBearerAllocation(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/BearerAllocationStatus;)V

    .line 126
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v1

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lorg/codeaurora/internal/Token;

    move-result-object v6

    new-instance v7, Lorg/codeaurora/internal/Status;

    invoke-direct {v7, v5}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v1, v0, v6, v7, v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onSignalStrength(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/SignalStrength;)V

    .line 127
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lorg/codeaurora/internal/Token;

    move-result-object v2

    new-instance v6, Lorg/codeaurora/internal/Status;

    invoke-direct {v6, v5}, Lorg/codeaurora/internal/Status;-><init>(I)V

    new-instance v7, Lorg/codeaurora/internal/NrIconType;

    invoke-direct {v7, v4}, Lorg/codeaurora/internal/NrIconType;-><init>(I)V

    invoke-interface {v1, v0, v2, v6, v7}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onNrIconType(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrIconType;)V

    .line 130
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lorg/codeaurora/internal/Token;

    move-result-object v2

    new-instance v6, Lorg/codeaurora/internal/Status;

    invoke-direct {v6, v5}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v1, v0, v2, v6, v4}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->on5gStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    .line 132
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v1, v4}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$202(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;Z)Z

    goto/16 :goto_3

    .line 85
    .end local v0    # "slotId":I
    .end local v3    # "token":Lorg/codeaurora/internal/Token;
    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 86
    .restart local v0    # "slotId":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/internal/Token;

    .line 87
    .restart local v2    # "token":Lorg/codeaurora/internal/Token;
    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 88
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_SIMULATE_5G_ENABLED: token = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v1

    new-instance v6, Lorg/codeaurora/internal/Status;

    invoke-direct {v6, v5}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v1, v0, v2, v6, v5}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->on5gStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    .line 91
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v1

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lorg/codeaurora/internal/Token;

    move-result-object v6

    new-instance v7, Lorg/codeaurora/internal/Status;

    invoke-direct {v7, v5}, Lorg/codeaurora/internal/Status;-><init>(I)V

    new-instance v8, Lorg/codeaurora/internal/DcParam;

    invoke-direct {v8, v5, v5}, Lorg/codeaurora/internal/DcParam;-><init>(II)V

    invoke-interface {v1, v0, v6, v7, v8}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onNrDcParam(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/DcParam;)V

    .line 93
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v1

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lorg/codeaurora/internal/Token;

    move-result-object v6

    new-instance v7, Lorg/codeaurora/internal/Status;

    invoke-direct {v7, v5}, Lorg/codeaurora/internal/Status;-><init>(I)V

    new-instance v8, Lorg/codeaurora/internal/UpperLayerIndInfo;

    invoke-direct {v8, v5, v5}, Lorg/codeaurora/internal/UpperLayerIndInfo;-><init>(II)V

    invoke-interface {v1, v0, v6, v7, v8}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onUpperLayerIndInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/UpperLayerIndInfo;)V

    .line 96
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v1

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lorg/codeaurora/internal/Token;

    move-result-object v6

    new-instance v7, Lorg/codeaurora/internal/Status;

    invoke-direct {v7, v5}, Lorg/codeaurora/internal/Status;-><init>(I)V

    new-instance v8, Lorg/codeaurora/internal/BearerAllocationStatus;

    invoke-direct {v8, v3}, Lorg/codeaurora/internal/BearerAllocationStatus;-><init>(I)V

    invoke-interface {v1, v0, v6, v7, v8}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onAnyNrBearerAllocation(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/BearerAllocationStatus;)V

    .line 98
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v1

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lorg/codeaurora/internal/Token;

    move-result-object v3

    new-instance v6, Lorg/codeaurora/internal/Status;

    invoke-direct {v6, v5}, Lorg/codeaurora/internal/Status;-><init>(I)V

    new-instance v7, Lorg/codeaurora/internal/SignalStrength;

    invoke-direct {v7}, Lorg/codeaurora/internal/SignalStrength;-><init>()V

    invoke-interface {v1, v0, v3, v6, v7}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onSignalStrength(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/SignalStrength;)V

    .line 100
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v1

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lorg/codeaurora/internal/Token;

    move-result-object v3

    new-instance v6, Lorg/codeaurora/internal/Status;

    invoke-direct {v6, v5}, Lorg/codeaurora/internal/Status;-><init>(I)V

    new-instance v7, Lorg/codeaurora/internal/NrConfigType;

    invoke-direct {v7, v4}, Lorg/codeaurora/internal/NrConfigType;-><init>(I)V

    invoke-interface {v1, v0, v3, v6, v7}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->on5gConfigInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfigType;)V

    .line 102
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v1

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lorg/codeaurora/internal/Token;

    move-result-object v3

    new-instance v4, Lorg/codeaurora/internal/Status;

    invoke-direct {v4, v5}, Lorg/codeaurora/internal/Status;-><init>(I)V

    new-instance v6, Lorg/codeaurora/internal/NrIconType;

    invoke-direct {v6, v5}, Lorg/codeaurora/internal/NrIconType;-><init>(I)V

    invoke-interface {v1, v0, v3, v4, v6}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->onNrIconType(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrIconType;)V

    .line 105
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    move-result-object v1

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;)Lorg/codeaurora/internal/Token;

    move-result-object v3

    new-instance v4, Lorg/codeaurora/internal/Status;

    invoke-direct {v4, v5}, Lorg/codeaurora/internal/Status;-><init>(I)V

    invoke-interface {v1, v0, v3, v4, v5}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;->on5gStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    .line 107
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;

    invoke-static {v1, v5}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;->access$202(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/FakeHidlConnectionInterfaceImpl;Z)Z

    .line 287
    .end local v0    # "slotId":I
    .end local v2    # "token":Lorg/codeaurora/internal/Token;
    :cond_e
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
