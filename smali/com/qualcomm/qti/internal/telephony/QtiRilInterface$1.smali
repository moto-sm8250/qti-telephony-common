.class Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$1;
.super Ljava/lang/Object;
.source "QtiRilInterface.java"

# interfaces
.implements Lcom/qualcomm/qcrilhook/QcRilHookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 68
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onQcRilHookDisconnected()V
    .locals 4

    monitor-enter p0

    .line 78
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->access$002(Z)Z

    .line 79
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const-string v1, "Service disconnected, notifying registrants"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->access$100(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Ljava/lang/String;)V

    .line 81
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->access$000()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 82
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->access$200(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)Landroid/os/RegistrantList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 83
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->access$300()Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->access$400(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)Lcom/qualcomm/qcrilhook/QcRilHook;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->dispose()V

    .line 86
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->access$500(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->access$500(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->access$600(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 89
    .end local p0    # "this":Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$1;
    :cond_0
    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->access$302(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_1
    monitor-exit p0

    return-void

    .line 77
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onQcRilHookReady()V
    .locals 3

    .line 70
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->access$002(Z)Z

    .line 71
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const-string v1, "Service ready, notifying registrants"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->access$100(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Ljava/lang/String;)V

    .line 73
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->access$000()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 74
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->access$200(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)Landroid/os/RegistrantList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 75
    return-void
.end method
