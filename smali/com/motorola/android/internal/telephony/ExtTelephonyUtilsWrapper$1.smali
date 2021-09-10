.class Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper$1;
.super Lcom/motorola/android/telephony/MotoExtPhoneStateListener;
.source "ExtTelephonyUtilsWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->registerSIB16CoverageChanged(ILandroid/os/Handler;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;

.field final synthetic val$h:Landroid/os/Handler;

.field final synthetic val$obj:Ljava/lang/Object;

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;Ljava/lang/Integer;Landroid/os/Looper;Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;
    .param p2, "arg0"    # Ljava/lang/Integer;
    .param p3, "arg1"    # Landroid/os/Looper;

    .line 63
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper$1;->this$0:Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;

    iput-object p4, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper$1;->val$h:Landroid/os/Handler;

    iput p5, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper$1;->val$what:I

    iput-object p6, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper$1;->val$obj:Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lcom/motorola/android/telephony/MotoExtPhoneStateListener;-><init>(Ljava/lang/Integer;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onSIB16CoverageChanged(Z)V
    .locals 6
    .param p1, "inCoverage"    # Z

    .line 66
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper$1;->this$0:Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSIB16CoverageChanged called inCoverage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper$1;->val$h:Landroid/os/Handler;

    iget v1, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper$1;->val$what:I

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper$1;->val$obj:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 68
    return-void
.end method
