.class Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;
.super Ljava/lang/Object;
.source "MainServiceImpl.java"

# interfaces
.implements Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    .line 219
    iput-object p1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public on5gConfigInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfigType;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "nrConfigType"    # Lorg/codeaurora/internal/NrConfigType;

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on5gConfigInfo slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " NrConfigType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-direct {v2, v3, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Ljava/lang/Object;)V

    .line 263
    const/4 v3, 0x6

    const/4 v4, -0x1

    invoke-virtual {v1, v3, p1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 262
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 265
    return-void
.end method

.method public on5gStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "enableStatus"    # Z

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on5gStatus slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " enableStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    .line 227
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, p2, p3, v4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Ljava/lang/Object;)V

    .line 226
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v1, v3, p1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 225
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 228
    return-void
.end method

.method public onAnyNrBearerAllocation(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/BearerAllocationStatus;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "bearerStatus"    # Lorg/codeaurora/internal/BearerAllocationStatus;

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnyNrBearerAllocation slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bearerStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-direct {v2, v3, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Ljava/lang/Object;)V

    .line 245
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v3, p1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 244
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 247
    return-void
.end method

.method public onEnableEndc(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnableEndc slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    const/4 v4, 0x0

    invoke-direct {v2, v3, p2, p3, v4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Ljava/lang/Object;)V

    .line 292
    const/16 v3, 0x8

    const/4 v4, -0x1

    invoke-virtual {v1, v3, p1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 291
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 293
    return-void
.end method

.method public onEndcStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "enableStatus"    # Z

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEndcStatus slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    .line 302
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, p2, p3, v4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Ljava/lang/Object;)V

    .line 301
    const/16 v3, 0x9

    const/4 v4, -0x1

    invoke-virtual {v1, v3, p1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 300
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 303
    return-void
.end method

.method public onNrConfigStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfig;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "nrConfig"    # Lorg/codeaurora/internal/NrConfig;

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNrConfigStatus: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " status= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " nrConfig = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-direct {v2, v3, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Ljava/lang/Object;)V

    .line 318
    const/16 v3, 0xb

    const/4 v4, -0x1

    invoke-virtual {v1, v3, p1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 317
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 319
    return-void
.end method

.method public onNrDcParam(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/DcParam;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "dcParam"    # Lorg/codeaurora/internal/DcParam;

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNrDcParam slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " DcParam = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-direct {v2, v3, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Ljava/lang/Object;)V

    .line 235
    const/4 v3, 0x3

    const/4 v4, -0x1

    invoke-virtual {v1, v3, p1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 234
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 237
    return-void
.end method

.method public onNrIconType(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrIconType;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "nrIconType"    # Lorg/codeaurora/internal/NrIconType;

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNrIconType slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " NrIconType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-direct {v2, v3, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Ljava/lang/Object;)V

    .line 282
    const/4 v3, 0x7

    const/4 v4, -0x1

    invoke-virtual {v1, v3, p1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 281
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 284
    return-void
.end method

.method public onSignalStrength(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/SignalStrength;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "signalStrength"    # Lorg/codeaurora/internal/SignalStrength;

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSignalStrength slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " signalStrength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-direct {v2, v3, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Ljava/lang/Object;)V

    .line 273
    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-virtual {v1, v3, p1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 272
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 275
    return-void
.end method

.method public onUpperLayerIndInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/UpperLayerIndInfo;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "ulInfo"    # Lorg/codeaurora/internal/UpperLayerIndInfo;

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpperLayerIndInfo slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " UpperLayerIndInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-direct {v2, v3, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Ljava/lang/Object;)V

    .line 254
    const/4 v3, 0x5

    const/4 v4, -0x1

    invoke-virtual {v1, v3, p1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 253
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 256
    return-void
.end method

.method public setNrConfigStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNrConfigStatus: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " status= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    const/4 v4, 0x0

    invoke-direct {v2, v3, p2, p3, v4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Ljava/lang/Object;)V

    .line 310
    const/16 v3, 0xa

    const/4 v4, -0x1

    invoke-virtual {v1, v3, p1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 309
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 311
    return-void
.end method
