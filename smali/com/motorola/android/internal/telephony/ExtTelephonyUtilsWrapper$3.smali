.class Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper$3;
.super Lcom/motorola/android/telephony/MotoExtPhoneStateListener;
.source "ExtTelephonyUtilsWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->registerTOEInfoChanged(ILandroid/os/Handler;ILjava/lang/Object;)V
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

    .line 139
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper$3;->this$0:Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;

    iput-object p4, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper$3;->val$h:Landroid/os/Handler;

    iput p5, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper$3;->val$what:I

    iput-object p6, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper$3;->val$obj:Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lcom/motorola/android/telephony/MotoExtPhoneStateListener;-><init>(Ljava/lang/Integer;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onTOEInfoChanged(Lcom/motorola/android/telephony/MotoExtTelephonyInfo$TOEInfo;)V
    .locals 6
    .param p1, "data"    # Lcom/motorola/android/telephony/MotoExtTelephonyInfo$TOEInfo;

    .line 142
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper$3;->this$0:Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTOEInfoChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 143
    if-nez p1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper$3;->this$0:Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;

    const-string v1, "TOEInfoData is null!"

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->loge(Ljava/lang/String;)V

    .line 145
    return-void

    .line 148
    :cond_0
    new-instance v0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtils$TOEInfo;

    iget-object v1, p1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$TOEInfo;->operatorAlphaShort:Ljava/lang/String;

    iget-object v2, p1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$TOEInfo;->operatorAlphaLong:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtils$TOEInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .local v0, "toeInfo":Lcom/motorola/android/internal/telephony/ExtTelephonyUtils$TOEInfo;
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper$3;->val$h:Landroid/os/Handler;

    iget v2, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper$3;->val$what:I

    new-instance v3, Landroid/os/AsyncResult;

    iget-object v4, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper$3;->val$obj:Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v0, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 150
    return-void
.end method
