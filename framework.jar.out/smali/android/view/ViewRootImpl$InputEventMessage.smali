.class Landroid/view/ViewRootImpl$InputEventMessage;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InputEventMessage"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0xa

.field private static sPool:Landroid/view/ViewRootImpl$InputEventMessage;

.field private static sPoolSize:I

.field private static final sPoolSync:Ljava/lang/Object;


# instance fields
.field mMessage:Landroid/os/Message;

.field mNext:Landroid/view/ViewRootImpl$InputEventMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4136
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSync:Ljava/lang/Object;

    .line 4138
    const/4 v0, 0x0

    sput v0, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSize:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 4142
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4143
    iput-object p1, p0, Landroid/view/ViewRootImpl$InputEventMessage;->mMessage:Landroid/os/Message;

    .line 4144
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl$InputEventMessage;->mNext:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 4145
    return-void
.end method

.method public static obtain(Landroid/os/Message;)Landroid/view/ViewRootImpl$InputEventMessage;
    .locals 3
    .parameter "msg"

    .prologue
    .line 4152
    sget-object v2, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSync:Ljava/lang/Object;

    monitor-enter v2

    .line 4153
    :try_start_0
    sget-object v1, Landroid/view/ViewRootImpl$InputEventMessage;->sPool:Landroid/view/ViewRootImpl$InputEventMessage;

    if-eqz v1, :cond_0

    .line 4154
    sget-object v0, Landroid/view/ViewRootImpl$InputEventMessage;->sPool:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 4155
    .local v0, m:Landroid/view/ViewRootImpl$InputEventMessage;
    iget-object v1, v0, Landroid/view/ViewRootImpl$InputEventMessage;->mNext:Landroid/view/ViewRootImpl$InputEventMessage;

    sput-object v1, Landroid/view/ViewRootImpl$InputEventMessage;->sPool:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 4156
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/ViewRootImpl$InputEventMessage;->mNext:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 4157
    sget v1, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSize:I

    .line 4158
    iput-object p0, v0, Landroid/view/ViewRootImpl$InputEventMessage;->mMessage:Landroid/os/Message;

    .line 4159
    monitor-exit v2

    .line 4162
    .end local v0           #m:Landroid/view/ViewRootImpl$InputEventMessage;
    :goto_0
    return-object v0

    .line 4161
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4162
    new-instance v0, Landroid/view/ViewRootImpl$InputEventMessage;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$InputEventMessage;-><init>(Landroid/os/Message;)V

    goto :goto_0

    .line 4161
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public recycle()V
    .locals 3

    .prologue
    .line 4169
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputEventMessage;->mMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 4170
    sget-object v1, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 4171
    :try_start_0
    sget v0, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSize:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 4172
    sget-object v0, Landroid/view/ViewRootImpl$InputEventMessage;->sPool:Landroid/view/ViewRootImpl$InputEventMessage;

    iput-object v0, p0, Landroid/view/ViewRootImpl$InputEventMessage;->mNext:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 4173
    sput-object p0, Landroid/view/ViewRootImpl$InputEventMessage;->sPool:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 4174
    sget v0, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSize:I

    .line 4176
    :cond_0
    monitor-exit v1

    .line 4178
    return-void

    .line 4176
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method