.class public interface abstract Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;
.super Ljava/lang/Object;
.source "IQcrilMsgTunnel.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel$Stub;,
        Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel$Default;
    }
.end annotation


# virtual methods
.method public abstract sendOemRilRequestRaw([B[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendOemRilRequestRawAsync([BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setOnUnsolOemHookRaw(Lcom/motorola/android/internal/telephony/IMotoOemHookIndication;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
