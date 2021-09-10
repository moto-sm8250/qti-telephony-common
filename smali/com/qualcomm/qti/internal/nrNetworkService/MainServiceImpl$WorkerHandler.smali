.class Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;
.super Landroid/os/Handler;
.source "MainServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MainServiceImplHandler: "


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 78
    iput-object p1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    .line 79
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 80
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage msg.what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImplHandler: "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 171
    :pswitch_1
    const-string v0, "EVENT_ON_NR_CONFIG_STATUS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 173
    .local v0, "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    .line 174
    .local v1, "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    iget-object v3, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mToken:Lorg/codeaurora/internal/Token;

    iget-object v4, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mStatus:Lorg/codeaurora/internal/Status;

    iget-object v5, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mData:Ljava/lang/Object;

    check-cast v5, Lorg/codeaurora/internal/NrConfig;

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->onNrConfigStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfig;)V

    .line 176
    goto/16 :goto_0

    .line 163
    .end local v0    # "slotId":I
    .end local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    :pswitch_2
    const-string v0, "EVENT_ON_SET_NR_CONFIG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 165
    .restart local v0    # "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    .line 166
    .restart local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    iget-object v3, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mToken:Lorg/codeaurora/internal/Token;

    iget-object v4, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mStatus:Lorg/codeaurora/internal/Status;

    invoke-virtual {v2, v0, v3, v4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->onSetNrConfig(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;)V

    .line 167
    goto/16 :goto_0

    .line 155
    .end local v0    # "slotId":I
    .end local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    :pswitch_3
    const-string v0, "EVENT_ON_ENDC_STATUS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 157
    .restart local v0    # "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    .line 158
    .restart local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    iget-object v3, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mToken:Lorg/codeaurora/internal/Token;

    iget-object v4, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mStatus:Lorg/codeaurora/internal/Status;

    iget-object v5, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mData:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v2, v0, v3, v4, v5}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$800(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    .line 159
    goto/16 :goto_0

    .line 147
    .end local v0    # "slotId":I
    .end local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    :pswitch_4
    const-string v0, "EVENT_ON_ENABLE_ENDC"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 149
    .restart local v0    # "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    .line 150
    .restart local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    iget-object v3, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mToken:Lorg/codeaurora/internal/Token;

    iget-object v4, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mStatus:Lorg/codeaurora/internal/Status;

    invoke-static {v2, v0, v3, v4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$700(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;)V

    .line 151
    goto/16 :goto_0

    .line 138
    .end local v0    # "slotId":I
    .end local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    :pswitch_5
    const-string v0, "EVENT_ON_NR_ICON_TYPE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 140
    .restart local v0    # "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    .line 141
    .restart local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    iget-object v3, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mToken:Lorg/codeaurora/internal/Token;

    iget-object v4, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mStatus:Lorg/codeaurora/internal/Status;

    iget-object v5, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mData:Ljava/lang/Object;

    check-cast v5, Lorg/codeaurora/internal/NrIconType;

    invoke-static {v2, v0, v3, v4, v5}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$600(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrIconType;)V

    .line 143
    goto/16 :goto_0

    .line 129
    .end local v0    # "slotId":I
    .end local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    :pswitch_6
    const-string v0, "EVENT_ON_5G_CONFIG_INFO"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 131
    .restart local v0    # "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    .line 132
    .restart local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    iget-object v3, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mToken:Lorg/codeaurora/internal/Token;

    iget-object v4, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mStatus:Lorg/codeaurora/internal/Status;

    iget-object v5, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mData:Ljava/lang/Object;

    check-cast v5, Lorg/codeaurora/internal/NrConfigType;

    invoke-static {v2, v0, v3, v4, v5}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$500(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfigType;)V

    .line 134
    goto/16 :goto_0

    .line 120
    .end local v0    # "slotId":I
    .end local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    :pswitch_7
    const-string v0, "EVENT_ON_UPPER_LAYER_INDICATION_INFO"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 122
    .restart local v0    # "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    .line 123
    .restart local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    iget-object v3, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mToken:Lorg/codeaurora/internal/Token;

    iget-object v4, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mStatus:Lorg/codeaurora/internal/Status;

    iget-object v5, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mData:Ljava/lang/Object;

    check-cast v5, Lorg/codeaurora/internal/UpperLayerIndInfo;

    invoke-static {v2, v0, v3, v4, v5}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$400(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/UpperLayerIndInfo;)V

    .line 125
    goto :goto_0

    .line 113
    .end local v0    # "slotId":I
    .end local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    :pswitch_8
    const-string v0, "EVENT_ON_NR_DUAL_CONNECTIVITY_CHANGE_IND"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 115
    .restart local v0    # "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    .line 116
    .restart local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    iget-object v3, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mToken:Lorg/codeaurora/internal/Token;

    iget-object v4, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mStatus:Lorg/codeaurora/internal/Status;

    iget-object v5, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mData:Ljava/lang/Object;

    check-cast v5, Lorg/codeaurora/internal/DcParam;

    invoke-static {v2, v0, v3, v4, v5}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$300(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/DcParam;)V

    .line 117
    goto :goto_0

    .line 104
    .end local v0    # "slotId":I
    .end local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    :pswitch_9
    const-string v0, "EVENT_ON_5G_SIGNAL_STRENGTH_CHANGE_IND"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 106
    .restart local v0    # "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    .line 107
    .restart local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    iget-object v3, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mToken:Lorg/codeaurora/internal/Token;

    iget-object v4, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mStatus:Lorg/codeaurora/internal/Status;

    iget-object v5, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mData:Ljava/lang/Object;

    check-cast v5, Lorg/codeaurora/internal/SignalStrength;

    invoke-static {v2, v0, v3, v4, v5}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$200(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/SignalStrength;)V

    .line 109
    goto :goto_0

    .line 96
    .end local v0    # "slotId":I
    .end local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    :pswitch_a
    const-string v0, "EVENT_ON_5G_ENABLE_STATUS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 98
    .restart local v0    # "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    .line 99
    .restart local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    iget-object v3, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mToken:Lorg/codeaurora/internal/Token;

    iget-object v4, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mStatus:Lorg/codeaurora/internal/Status;

    iget-object v5, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mData:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v2, v0, v3, v4, v5}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$100(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    .line 100
    goto :goto_0

    .line 87
    .end local v0    # "slotId":I
    .end local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    :pswitch_b
    const-string v0, "EVENT_ON_BEARER_ALLOCATION_CHANGE_IND"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 89
    .restart local v0    # "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    .line 90
    .restart local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    iget-object v3, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mToken:Lorg/codeaurora/internal/Token;

    iget-object v4, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mStatus:Lorg/codeaurora/internal/Status;

    iget-object v5, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mData:Ljava/lang/Object;

    check-cast v5, Lorg/codeaurora/internal/BearerAllocationStatus;

    invoke-static {v2, v0, v3, v4, v5}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/BearerAllocationStatus;)V

    .line 92
    nop

    .line 180
    .end local v0    # "slotId":I
    .end local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
