.class public Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;
.super Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;
.source "QtiRIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QtiRadioIndication"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "QtiRadioIndication"


# instance fields
.field mSlotId:I

.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiRIL;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/QtiRIL;
    .param p2, "slotId"    # I

    .line 839
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    invoke-direct {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;-><init>()V

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]Constructor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioIndication"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iput p2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->mSlotId:I

    .line 842
    return-void
.end method


# virtual methods
.method public on5gConfigInfoChange(I)V
    .locals 2
    .param p1, "confType"    # I

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on5gConfigInfoChange: ConfigType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioIndication"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    if-eqz v0, :cond_0

    .line 911
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    invoke-virtual {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;->on5gConfigInfoChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    goto :goto_0

    .line 912
    :catch_0
    move-exception v0

    .line 913
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 916
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public on5gStatusChange(I)V
    .locals 2
    .param p1, "enableStatus"    # I

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on5gStatusChange: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioIndication"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    if-eqz v0, :cond_0

    .line 849
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    invoke-virtual {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;->on5gStatusChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    goto :goto_0

    .line 850
    :catch_0
    move-exception v0

    .line 851
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 854
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onNrBearerAllocationChange(I)V
    .locals 2
    .param p1, "bearerStatus"    # I

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNrBearerAllocationChange: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioIndication"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    if-eqz v0, :cond_0

    .line 886
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    invoke-virtual {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;->onNrBearerAllocationChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 889
    goto :goto_0

    .line 887
    :catch_0
    move-exception v0

    .line 888
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 891
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onNrBearerAllocationChange_2_1(I)V
    .locals 2
    .param p1, "bearerStatus"    # I

    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNrBearerAllocationChange_2_1: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioIndication"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    if-eqz v0, :cond_0

    .line 874
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    invoke-virtual {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;->onNrBearerAllocationChange_2_1(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    goto :goto_0

    .line 875
    :catch_0
    move-exception v0

    .line 876
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 879
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onNrDcParamChange(Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;)V
    .locals 2
    .param p1, "dcParam"    # Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;

    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNrDcParamChange: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioIndication"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    if-eqz v0, :cond_0

    .line 862
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    invoke-virtual {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;->onNrDcParamChange(Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    goto :goto_0

    .line 863
    :catch_0
    move-exception v0

    .line 864
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 867
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onNrIconTypeChange(I)V
    .locals 2
    .param p1, "iconType"    # I

    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNrIconTypeChange: iconType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioIndication"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    if-eqz v0, :cond_0

    .line 923
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    invoke-virtual {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;->onNrIconTypeChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 926
    goto :goto_0

    .line 924
    :catch_0
    move-exception v0

    .line 925
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 928
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onSignalStrengthChange(Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;)V
    .locals 2
    .param p1, "signalStrength"    # Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSignalStrengthChange: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioIndication"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    if-eqz v0, :cond_0

    .line 936
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    invoke-virtual {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;->onSignalStrengthChange(Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    goto :goto_0

    .line 937
    :catch_0
    move-exception v0

    .line 938
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 941
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onUpperLayerIndInfoChange(Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;)V
    .locals 2
    .param p1, "uliInfo"    # Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpperLayerIndInfoChange: UpperLayerIndInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioIndication"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    if-eqz v0, :cond_0

    .line 899
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    invoke-virtual {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;->onUpperLayerIndInfoChange(Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    goto :goto_0

    .line 900
    :catch_0
    move-exception v0

    .line 901
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 904
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public qtiRadioIndication(I)V
    .locals 2
    .param p1, "value"    # I

    .line 945
    const-string v0, "QtiRadioIndication"

    const-string v1, "qtiRadioIndication: NOP!!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    return-void
.end method
