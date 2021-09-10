.class public Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;
.super Ljava/lang/Object;
.source "QtiEmergencyCallHelper.java"


# static fields
.field private static final ALLOW_ECALL_ENHANCEMENT_PROPERTY:Ljava/lang/String; = "persist.vendor.radio.enhance_ecall"

.field private static final INVALID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "QtiEmergencyCallHelper"

.field private static final PRIMARY_STACK_MODEMID:I = 0x0

.field private static final PROVISIONED:I = 0x1

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPhoneIdForECall(Landroid/content/Context;)I
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .line 45
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    .line 47
    .local v0, "scontrol":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 48
    .local v1, "voicePhoneId":I
    const/4 v2, -0x1

    .line 50
    .local v2, "phoneId":I
    nop

    .line 51
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 52
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    .line 54
    .local v4, "phoneCount":I
    invoke-static {p0}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isDeviceInSingleStandby(Landroid/content/Context;)Z

    move-result v5

    const-string v6, "QtiEmergencyCallHelper"

    if-nez v5, :cond_1

    .line 57
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v5

    sget-object v7, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-eq v5, v7, :cond_1

    .line 58
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v5

    array-length v7, v5

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_1

    aget-object v9, v5, v8

    .line 59
    .local v9, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v10, v11, :cond_0

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Call already active on phoneId: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    return v5

    .line 58
    .end local v9    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultDataSubId()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getPhoneId(I)I

    move-result v5

    .line 70
    .local v5, "ddsPhoneId":I
    const/4 v7, 0x0

    .local v7, "phId":I
    :goto_1
    const/4 v8, -0x1

    if-ge v7, v4, :cond_4

    .line 71
    invoke-static {v7}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v9

    .line 72
    .restart local v9    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    .line 73
    .local v10, "ss":I
    if-nez v10, :cond_3

    .line 74
    move v2, v7

    .line 77
    if-eq v1, v8, :cond_2

    .line 78
    if-ne v2, v1, :cond_3

    goto :goto_2

    .line 80
    :cond_2
    if-ne v2, v5, :cond_3

    goto :goto_2

    .line 70
    .end local v9    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v10    # "ss":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 84
    .end local v7    # "phId":I
    :cond_4
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Voice phoneId in service = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    if-ne v2, v8, :cond_6

    .line 87
    const/4 v7, 0x0

    .restart local v7    # "phId":I
    :goto_3
    if-ge v7, v4, :cond_6

    .line 88
    invoke-static {v7}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    .line 89
    .local v10, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getState()I

    move-result v11

    .line 90
    .local v11, "ss":I
    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 91
    move v2, v7

    .line 92
    if-ne v2, v1, :cond_5

    goto :goto_4

    .line 87
    .end local v10    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v11    # "ss":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 96
    .end local v7    # "phId":I
    :cond_6
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Voice phoneId in Limited service = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    if-ne v2, v8, :cond_8

    .line 99
    invoke-static {p0}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->getPrimaryStackPhoneId(Landroid/content/Context;)I

    move-result v2

    .line 100
    const/4 v7, 0x0

    .restart local v7    # "phId":I
    :goto_5
    if-ge v7, v4, :cond_8

    .line 103
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v8

    .line 105
    .local v8, "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    invoke-virtual {v3, v7}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_7

    .line 107
    invoke-virtual {v8, v7}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 109
    move v2, v7

    .line 110
    if-ne v2, v1, :cond_7

    goto :goto_6

    .line 100
    .end local v8    # "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 114
    .end local v7    # "phId":I
    :cond_8
    :goto_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " preferred phoneId ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return v2
.end method

.method public static getPrimaryStackPhoneId(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "modemUuId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 123
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v2, -0x1

    .line 124
    .local v2, "primayStackPhoneId":I
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 125
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    .line 127
    .local v3, "phoneCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const-string v5, "QtiEmergencyCallHelper"

    if-ge v4, v3, :cond_3

    .line 129
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 130
    if-nez v1, :cond_0

    goto :goto_1

    .line 132
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Logical Modem id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " phoneId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 135
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 136
    goto :goto_1

    .line 141
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 142
    move v2, v4

    .line 143
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Primay Stack phone id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " selected"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    goto :goto_2

    .line 127
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 149
    .end local v4    # "i":I
    :cond_3
    :goto_2
    const/4 v4, -0x1

    if-ne v2, v4, :cond_4

    .line 150
    const-string v4, "Returning default phone id"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v2, 0x0

    .line 154
    :cond_4
    return v2
.end method

.method public static isDeviceInSingleStandby(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 158
    const-string v0, "persist.vendor.radio.enhance_ecall"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "QtiEmergencyCallHelper"

    if-nez v0, :cond_0

    .line 159
    const-string v0, "persist.vendor.radio.enhance_ecall not enabled"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return v2

    .line 163
    :cond_0
    nop

    .line 164
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 165
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    .line 169
    .local v4, "phoneCnt":I
    if-ne v4, v1, :cond_1

    .line 170
    return v1

    .line 172
    :cond_1
    const/4 v5, 0x0

    .local v5, "phoneId":I
    :goto_0
    if-ge v5, v4, :cond_4

    .line 174
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v6

    .line 176
    .local v6, "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_3

    .line 177
    invoke-virtual {v6, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v7

    if-eq v7, v1, :cond_2

    goto :goto_1

    .line 172
    .end local v6    # "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 179
    .restart local v6    # "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    :cond_3
    :goto_1
    const-string v2, "modem is in single standby mode"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return v1

    .line 184
    .end local v5    # "phoneId":I
    .end local v6    # "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    :cond_4
    const-string v1, "modem is in dual standby mode"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return v2
.end method

.method public static isEmergencyNumInternal(ILjava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .line 268
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "isEmergencyNum":Z
    const/4 v1, -0x1

    .line 191
    .local v1, "subscriptionId":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    .line 192
    .local v2, "scontrol":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 193
    .local v3, "phones":[Lcom/android/internal/telephony/Phone;
    invoke-static {p0}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isDeviceInSingleStandby(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 195
    .local v6, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 196
    invoke-static {v1, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v7

    or-int/2addr v0, v7

    .line 194
    .end local v6    # "phone":Lcom/android/internal/telephony/Phone;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 199
    :cond_0
    nop

    .line 200
    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v4

    .line 199
    invoke-static {v4, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    .line 203
    :cond_1
    return v0
.end method

.method public static isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "isLocalEmergencyNum":Z
    const/4 v1, -0x1

    .line 209
    .local v1, "subscriptionId":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    .line 210
    .local v2, "scontrol":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 212
    .local v3, "phones":[Lcom/android/internal/telephony/Phone;
    invoke-static {p0}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isDeviceInSingleStandby(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 213
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 214
    .local v6, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 215
    nop

    .line 216
    invoke-static {p0, v1, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v7

    or-int/2addr v0, v7

    .line 213
    .end local v6    # "phone":Lcom/android/internal/telephony/Phone;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 219
    :cond_0
    nop

    .line 220
    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v4

    .line 219
    invoke-static {p0, v4, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    .line 223
    :cond_1
    return v0
.end method

.method public static isPotentialEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "isPotentialEmergencyNum":Z
    const/4 v1, -0x1

    .line 229
    .local v1, "subscriptionId":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    .line 230
    .local v2, "scontrol":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 232
    .local v3, "phones":[Lcom/android/internal/telephony/Phone;
    invoke-static {p0}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isDeviceInSingleStandby(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 233
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 234
    .local v6, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 235
    nop

    .line 236
    invoke-static {v1, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(ILjava/lang/String;)Z

    move-result v7

    or-int/2addr v0, v7

    .line 233
    .end local v6    # "phone":Lcom/android/internal/telephony/Phone;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 239
    :cond_0
    nop

    .line 240
    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v4

    .line 239
    invoke-static {v4, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    .line 243
    :cond_1
    return v0
.end method

.method public static isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "isPotentialLocalEmergencyNum":Z
    const/4 v1, -0x1

    .line 249
    .local v1, "subscriptionId":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    .line 250
    .local v2, "scontrol":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 252
    .local v3, "phones":[Lcom/android/internal/telephony/Phone;
    invoke-static {p0}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isDeviceInSingleStandby(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 253
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 254
    .local v6, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 255
    nop

    .line 256
    invoke-static {p0, v1, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v7

    or-int/2addr v0, v7

    .line 253
    .end local v6    # "phone":Lcom/android/internal/telephony/Phone;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 260
    :cond_0
    nop

    .line 261
    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v4

    .line 260
    invoke-static {p0, v4, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    .line 264
    :cond_1
    return v0
.end method
