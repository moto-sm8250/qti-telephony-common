.class Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;
.super Lcom/qualcomm/qcrilhook/OemHookCallback;
.source "QtiRilInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DepersoCallback"
.end annotation


# instance fields
.field ERROR:I

.field SUCCESS:I

.field depersoCallBack:Lorg/codeaurora/internal/IDepersoResCallback;

.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Lorg/codeaurora/internal/IDepersoResCallback;Landroid/os/Message;)V
    .locals 0
    .param p2, "callback"    # Lorg/codeaurora/internal/IDepersoResCallback;
    .param p3, "msg"    # Landroid/os/Message;

    .line 148
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 149
    invoke-direct {p0, p3}, Lcom/qualcomm/qcrilhook/OemHookCallback;-><init>(Landroid/os/Message;)V

    .line 145
    const/4 p1, 0x0

    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->SUCCESS:I

    .line 146
    const/4 p1, 0x1

    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->ERROR:I

    .line 150
    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->depersoCallBack:Lorg/codeaurora/internal/IDepersoResCallback;

    .line 151
    return-void
.end method


# virtual methods
.method public onOemHookException(I)V
    .locals 2
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const-string v1, "DepersoResult ERROR"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->access$100(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->depersoCallBack:Lorg/codeaurora/internal/IDepersoResCallback;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->ERROR:I

    invoke-interface {v0, v1, p1}, Lorg/codeaurora/internal/IDepersoResCallback;->onDepersoResult(II)V

    .line 172
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->access$700(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)V

    .line 174
    return-void
.end method

.method public onOemHookResponse([BI)V
    .locals 2
    .param p1, "response"    # [B
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    if-eqz p1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const-string v1, "DepersoResult SUCCESS"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->access$100(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->depersoCallBack:Lorg/codeaurora/internal/IDepersoResCallback;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->SUCCESS:I

    invoke-interface {v0, v1, p2}, Lorg/codeaurora/internal/IDepersoResCallback;->onDepersoResult(II)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const-string v1, "DepersoResult ERROR"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->access$100(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->depersoCallBack:Lorg/codeaurora/internal/IDepersoResCallback;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->ERROR:I

    invoke-interface {v0, v1, p2}, Lorg/codeaurora/internal/IDepersoResCallback;->onDepersoResult(II)V

    .line 163
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->access$700(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)V

    .line 165
    return-void
.end method
