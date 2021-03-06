VERSION 5.00
Begin VB.MDIForm mdi漢字字形 
   BackColor       =   &H8000000C&
   Caption         =   "漢字構形資料庫(中央研究院資訊科學研究所)"
   ClientHeight    =   6936
   ClientLeft      =   168
   ClientTop       =   768
   ClientWidth     =   13584
   Icon            =   "漢字構形資料庫.frx":0000
   LinkMode        =   1  '來源
   LinkTopic       =   "MDIForm1"
   Begin VB.PictureBox pic狀態列 
      Align           =   2  '對齊表單下方
      BorderStyle     =   0  '沒有框線
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   12
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   468
      Left            =   0
      ScaleHeight     =   468
      ScaleWidth      =   13584
      TabIndex        =   18
      Top             =   6468
      Width           =   13584
      Begin VB.TextBox txt狀態 
         BackColor       =   &H80000004&
         BeginProperty Font 
            Name            =   "新細明體"
            Size            =   12
            Charset         =   136
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   384
         Left            =   108
         TabIndex        =   19
         Top             =   84
         Width           =   4392
      End
   End
   Begin VB.PictureBox pic構字符號 
      Align           =   1  '對齊表單上方
      Appearance      =   0  '平面
      BackColor       =   &H80000004&
      ForeColor       =   &H80000004&
      Height          =   492
      Left            =   0
      ScaleHeight     =   468
      ScaleWidth      =   13560
      TabIndex        =   12
      Top             =   0
      Width           =   13584
      Begin VB.ComboBox cbo圖片大小 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   11.4
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   348
         IntegralHeight  =   0   'False
         ItemData        =   "漢字構形資料庫.frx":030A
         Left            =   8016
         List            =   "漢字構形資料庫.frx":030C
         TabIndex        =   27
         ToolTipText     =   "圖片大小(字型點數)"
         Top             =   44
         Width           =   855
      End
      Begin VB.ComboBox cbo解析度 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         ItemData        =   "漢字構形資料庫.frx":030E
         Left            =   6924
         List            =   "漢字構形資料庫.frx":0318
         TabIndex        =   26
         ToolTipText     =   "圖片解析度(dpi)"
         Top             =   44
         Width           =   1020
      End
      Begin VB.ComboBox cbo字型名稱 
         BeginProperty Font 
            Name            =   "標楷體"
            Size            =   12
            Charset         =   136
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   336
         ItemData        =   "漢字構形資料庫.frx":032C
         Left            =   4548
         List            =   "漢字構形資料庫.frx":0336
         TabIndex        =   20
         ToolTipText     =   "字型"
         Top             =   44
         Width           =   1368
      End
      Begin VB.ComboBox cbo字體大小 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   11.4
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   348
         IntegralHeight  =   0   'False
         ItemData        =   "漢字構形資料庫.frx":034A
         Left            =   6000
         List            =   "漢字構形資料庫.frx":037E
         TabIndex        =   17
         ToolTipText     =   "顯示字型大小"
         Top             =   44
         Width           =   855
      End
      Begin VB.ComboBox cbo首筆 
         BeginProperty Font 
            Name            =   "標楷體"
            Size            =   12
            Charset         =   136
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   336
         ItemData        =   "漢字構形資料庫.frx":03C0
         Left            =   3456
         List            =   "漢字構形資料庫.frx":03D6
         TabIndex        =   16
         ToolTipText     =   "首筆"
         Top             =   44
         Width           =   972
      End
      Begin VB.ComboBox cbo筆畫 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   10.8
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   336
         ItemData        =   "漢字構形資料庫.frx":03F4
         Left            =   2376
         List            =   "漢字構形資料庫.frx":03F6
         TabIndex        =   15
         ToolTipText     =   "筆畫"
         Top             =   44
         Width           =   972
      End
      Begin VB.ComboBox cbo符號 
         BeginProperty Font 
            Name            =   "標楷體"
            Size            =   12
            Charset         =   136
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   336
         Left            =   1536
         TabIndex        =   14
         ToolTipText     =   "構字符號"
         Top             =   44
         Width           =   735
      End
      Begin VB.ComboBox cbo符號類型 
         BeginProperty Font 
            Name            =   "標楷體"
            Size            =   12
            Charset         =   136
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   336
         ItemData        =   "漢字構形資料庫.frx":03F8
         Left            =   108
         List            =   "漢字構形資料庫.frx":03FA
         TabIndex        =   13
         ToolTipText     =   "構字符號類型"
         Top             =   44
         Width           =   1335
      End
   End
   Begin VB.PictureBox pic字形屬性 
      Align           =   1  '對齊表單上方
      Appearance      =   0  '平面
      BackColor       =   &H80000004&
      BorderStyle     =   0  '沒有框線
      ForeColor       =   &H80000002&
      Height          =   492
      Left            =   0
      ScaleHeight     =   492
      ScaleWidth      =   13584
      TabIndex        =   0
      Top             =   492
      Width           =   13584
      Begin VB.TextBox txt重文 
         Alignment       =   2  '置中對齊
         BackColor       =   &H80000004&
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   384
         Left            =   1848
         TabIndex        =   25
         ToolTipText     =   "古漢字字型"
         Top             =   48
         Width           =   375
      End
      Begin VB.TextBox Text2 
         Alignment       =   2  '置中對齊
         BackColor       =   &H80000004&
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   384
         Left            =   2772
         TabIndex        =   24
         ToolTipText     =   "筆畫"
         Top             =   48
         Width           =   375
      End
      Begin VB.TextBox txt古漢字 
         Alignment       =   2  '置中對齊
         BeginProperty Font 
            Name            =   "標楷體"
            Size            =   12
            Charset         =   136
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   384
         Left            =   2304
         TabIndex        =   23
         ToolTipText     =   "古漢字"
         Top             =   48
         Width           =   375
      End
      Begin VB.TextBox txt外字集 
         Alignment       =   2  '置中對齊
         BackColor       =   &H80000004&
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   384
         Left            =   960
         TabIndex        =   22
         ToolTipText     =   "外字集"
         Top             =   44
         Width           =   375
      End
      Begin VB.TextBox txt編號 
         Alignment       =   2  '置中對齊
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   384
         Left            =   120
         TabIndex        =   21
         ToolTipText     =   "編號"
         Top             =   44
         Width           =   732
      End
      Begin VB.TextBox txt字形 
         Alignment       =   2  '置中對齊
         BeginProperty Font 
            Name            =   "標楷體"
            Size            =   12
            Charset         =   136
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   384
         Left            =   1404
         TabIndex        =   11
         ToolTipText     =   "輸入字形後，再按Enter查詢字形屬性"
         Top             =   44
         Width           =   375
      End
      Begin VB.TextBox txt扣除部首筆畫 
         Alignment       =   2  '置中對齊
         BackColor       =   &H80000004&
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   384
         Left            =   4176
         TabIndex        =   10
         ToolTipText     =   "筆畫(部首不計)"
         Top             =   48
         Width           =   375
      End
      Begin VB.TextBox txt總筆畫 
         Alignment       =   2  '置中對齊
         BackColor       =   &H80000004&
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   384
         Left            =   3228
         TabIndex        =   9
         ToolTipText     =   "筆畫"
         Top             =   48
         Width           =   375
      End
      Begin VB.TextBox txt部首 
         Alignment       =   2  '置中對齊
         BackColor       =   &H80000004&
         BeginProperty Font 
            Name            =   "標楷體"
            Size            =   12
            Charset         =   136
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   384
         Left            =   3708
         TabIndex        =   8
         ToolTipText     =   "部首"
         Top             =   48
         Width           =   375
      End
      Begin VB.TextBox txt組字字數含異寫 
         Alignment       =   2  '置中對齊
         BackColor       =   &H80000004&
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   384
         Left            =   13080
         TabIndex        =   7
         ToolTipText     =   "組字字數(包含異體字根)"
         Top             =   48
         Width           =   612
      End
      Begin VB.TextBox txt組字字數 
         Alignment       =   2  '置中對齊
         BackColor       =   &H80000004&
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   384
         Left            =   12372
         TabIndex        =   6
         ToolTipText     =   "組字字數"
         Top             =   48
         Width           =   612
      End
      Begin VB.TextBox txt冊數 
         BackColor       =   &H80000004&
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   384
         Left            =   11076
         TabIndex        =   5
         ToolTipText     =   "漢語大字典冊頁字"
         Top             =   48
         Width           =   1212
      End
      Begin VB.TextBox txt注音 
         BackColor       =   &H80000004&
         BeginProperty Font 
            Name            =   "標楷體"
            Size            =   12
            Charset         =   136
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   384
         Left            =   4644
         TabIndex        =   4
         ToolTipText     =   "注音"
         Top             =   48
         Width           =   1095
      End
      Begin VB.TextBox txt內碼 
         Alignment       =   2  '置中對齊
         BackColor       =   &H80000004&
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   384
         Left            =   5832
         TabIndex        =   3
         ToolTipText     =   "Big5"
         Top             =   48
         Width           =   735
      End
      Begin VB.TextBox txt倉頡碼 
         BackColor       =   &H80000004&
         BeginProperty Font 
            Name            =   "標楷體"
            Size            =   12
            Charset         =   136
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   384
         Left            =   6648
         TabIndex        =   2
         ToolTipText     =   "倉頡碼"
         Top             =   48
         Width           =   1572
      End
      Begin VB.TextBox txt構字式 
         BeginProperty Font 
            Name            =   "標楷體"
            Size            =   12
            Charset         =   136
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   384
         Left            =   8340
         TabIndex        =   1
         Text            =   $"漢字構形資料庫.frx":03FC
         ToolTipText     =   "輸入構字式後，再按Enter查詢字形屬性"
         Top             =   48
         Width           =   2580
      End
   End
   Begin VB.Menu mnu_字集 
      Caption         =   "字集"
      Begin VB.Menu mnu_常用字 
         Caption         =   "常用字"
      End
      Begin VB.Menu mnu_Big5 
         Caption         =   "五大碼(Big5)"
      End
      Begin VB.Menu mnu_簡化字總表 
         Caption         =   "簡化字總表"
      End
      Begin VB.Menu mnu_漢語大字典 
         Caption         =   "漢語大字典"
      End
      Begin VB.Menu mnu_line1_1 
         Caption         =   "-"
      End
      Begin VB.Menu mnu_小篆 
         Caption         =   "說文解字"
      End
      Begin VB.Menu mnu_line1_2 
         Caption         =   "-"
      End
      Begin VB.Menu mnu_金文 
         Caption         =   "金文編"
      End
      Begin VB.Menu mnu_金文圖形文字 
         Caption         =   "金文編附錄上(圖形文字)"
      End
      Begin VB.Menu mnu_line1_3 
         Caption         =   "-"
      End
      Begin VB.Menu mnu_甲骨文 
         Caption         =   "殷墟甲骨刻辭類纂"
      End
      Begin VB.Menu mnu_楚系文字 
         Caption         =   "楚系簡帛文字編"
      End
      Begin VB.Menu mnu_line1_4 
         Caption         =   "-"
      End
      Begin VB.Menu mnu_楷書 
         Caption         =   "以上所有楷體字"
      End
      Begin VB.Menu mnu_line1_5 
         Caption         =   "-"
      End
      Begin VB.Menu mnu_結束 
         Caption         =   "結束"
      End
   End
   Begin VB.Menu mnu_字 
      Caption         =   "字形"
      Begin VB.Menu mnu_字形孳乳 
         Caption         =   "部件檢字..."
      End
      Begin VB.Menu mnu_出處檢字 
         Caption         =   "出處檢字..."
      End
      Begin VB.Menu mnu_字形結構 
         Caption         =   "字形結構..."
      End
      Begin VB.Menu mnu_字形演變 
         Caption         =   "字形演變..."
      End
      Begin VB.Menu mnu_字形索引 
         Caption         =   "字形索引..."
      End
      Begin VB.Menu mnu_異體字表 
         Caption         =   "異體字表..."
      End
   End
   Begin VB.Menu mnu_部件 
      Caption         =   "部件"
      Begin VB.Menu mnu_康熙字典部首 
         Caption         =   "康熙字典部首..."
      End
      Begin VB.Menu mnu_說文解字部首 
         Caption         =   "說文解字部首..."
      End
      Begin VB.Menu mnu_line3_2 
         Caption         =   "-"
      End
      Begin VB.Menu mnu_部件代碼 
         Caption         =   "Big5字根..."
         Index           =   1
      End
      Begin VB.Menu mnu_部件代碼 
         Caption         =   "Big5及簡化字字根..."
         Index           =   2
      End
      Begin VB.Menu mnu_部件代碼 
         Caption         =   "字根..."
         Index           =   3
      End
      Begin VB.Menu mnu_部件代碼 
         Caption         =   "小篆獨體字..."
         Index           =   4
      End
      Begin VB.Menu mnu_部件代碼 
         Caption         =   "金文字根..."
         Index           =   5
      End
      Begin VB.Menu mnu_部件代碼 
         Caption         =   "甲骨文字根..."
         Index           =   6
      End
      Begin VB.Menu mnu_部件代碼 
         Caption         =   "楚系簡帛文字字根..."
         Index           =   7
      End
      Begin VB.Menu mnu_部件代碼 
         Caption         =   "部件外字..."
         Index           =   8
      End
      Begin VB.Menu mnuline3_3 
         Caption         =   "-"
      End
      Begin VB.Menu mnu_異體字根 
         Caption         =   "異體字根..."
      End
   End
   Begin VB.Menu mnu_符號 
      Caption         =   "符號"
      Begin VB.Menu mnu_構字符號 
         Caption         =   "構字符號..."
      End
      Begin VB.Menu mnu_圖形文字 
         Caption         =   "圖形文字(未楷化)..."
      End
      Begin VB.Menu mnu_八卦 
         Caption         =   "八卦..."
      End
      Begin VB.Menu mnu_簡牘 
         Caption         =   "簡牘..."
      End
   End
   Begin VB.Menu mnu_字樣 
      Caption         =   "字樣"
      Visible         =   0   'False
      Begin VB.Menu mnu_參考字樣 
         Caption         =   "參考字樣..."
         Enabled         =   0   'False
      End
      Begin VB.Menu mnu_字體風格 
         Caption         =   "字體風格..."
         Enabled         =   0   'False
      End
   End
   Begin VB.Menu mnu編輯 
      Caption         =   "編輯"
      Begin VB.Menu mnu_複製 
         Caption         =   "複製"
         Shortcut        =   ^C
      End
      Begin VB.Menu mnu_複製圖片 
         Caption         =   "複製圖片"
      End
      Begin VB.Menu mnu_複製特殊圖片 
         Caption         =   "複製特殊圖片"
         Visible         =   0   'False
      End
      Begin VB.Menu mnu_edit_複製到Word 
         Caption         =   "複製到Microsoft Word"
         Shortcut        =   ^W
      End
      Begin VB.Menu mnu貼上 
         Caption         =   "貼上"
         Shortcut        =   ^V
      End
      Begin VB.Menu mnu_line5_1 
         Caption         =   "-"
      End
      Begin VB.Menu mnu_字型 
         Caption         =   "設定顯示字型..."
      End
      Begin VB.Menu mnu_圖片 
         Caption         =   "設定複製圖片..."
      End
   End
   Begin VB.Menu mnu_Tool 
      Caption         =   "工具"
      Begin VB.Menu mnu_Tool_ListLikeChar 
         Caption         =   "列出相同出處的字形"
      End
      Begin VB.Menu mnuToolListChar 
         Caption         =   "列出所有字形"
         Visible         =   0   'False
      End
   End
   Begin VB.Menu mnu_選項 
      Caption         =   "選項"
      Begin VB.Menu mnu_部件檢字選項 
         Caption         =   "部件檢字"
         Begin VB.Menu mnu_字形孳乳逐級列出單一部件 
            Caption         =   "部件檢字逐級列出部件與字形(限單一部件)"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnu_字形孳乳只列字形不列部件 
            Caption         =   "部件檢字只列字形不列部件"
         End
         Begin VB.Menu mnu_line6_1 
            Caption         =   "-"
         End
         Begin VB.Menu mnu_字形孳乳遵照輸入部件順序 
            Caption         =   "部件檢字遵照輸入部件順序"
         End
         Begin VB.Menu mnu_字形孳乳包含異寫部件 
            Caption         =   "部件檢字包含異體字根"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnu_字形孳乳採用SQL語法 
            Caption         =   "部件檢字採用SQL Like語法"
         End
      End
      Begin VB.Menu mnu_字形結構選項 
         Caption         =   "字形結構"
         Begin VB.Menu mnu_說文解形順序 
            Caption         =   "字形結構依據說文解形順序列出小篆部件"
            Checked         =   -1  'True
         End
      End
      Begin VB.Menu mnu_字形索引選項 
         Caption         =   "字形索引"
         Begin VB.Menu mnu_遠東漢語大字典選項 
            Caption         =   "漢語大字典(遠東圖書公司)"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnu_建宏漢語大字典選項 
            Caption         =   "漢語大字典(建宏出版社)"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnu_line6_2 
            Caption         =   "-"
         End
         Begin VB.Menu mnu_中文大辭典選項 
            Caption         =   "中文大辭典"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnu_line6_3 
            Caption         =   "-"
         End
         Begin VB.Menu mnu_說文解字詁林選項 
            Caption         =   "說文解字詁林"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnu_中華說文解字選項 
            Caption         =   "說文解字(中華書局)"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnu_line6_4 
            Caption         =   "-"
         End
         Begin VB.Menu mnu_金文編選項 
            Caption         =   "金文編"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnu_金文詁林選項 
            Caption         =   "金文詁林"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnu_殷周金文集成器號選項 
            Caption         =   "殷周金文集成器號"
            Checked         =   -1  'True
            Visible         =   0   'False
         End
         Begin VB.Menu mnu_殷周金文集成引得選項 
            Caption         =   "殷周金文集成引得"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnu_line6_5 
            Caption         =   "-"
         End
         Begin VB.Menu mnu_甲骨刻辭類纂選項 
            Caption         =   "殷墟甲骨刻辭類纂"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnu_甲骨文字詁林選項 
            Caption         =   "甲骨文字詁林"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnu_甲骨文字集釋選項 
            Caption         =   "甲骨文字集釋"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnu_line6_6 
            Caption         =   "-"
         End
         Begin VB.Menu mnu_楚系簡帛文字編選項 
            Caption         =   "楚系簡帛文字編"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnu_楚系文字出處選項 
            Caption         =   "楚系文字出處"
            Checked         =   -1  'True
            Visible         =   0   'False
         End
         Begin VB.Menu mnu_line6_7 
            Caption         =   "-"
         End
         Begin VB.Menu mnu_Unicode選項 
            Caption         =   "Unicode"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnu_Big5選項 
            Caption         =   "Big5"
            Checked         =   -1  'True
         End
      End
      Begin VB.Menu mnu_字形演變選項 
         Caption         =   "字形演變"
         Begin VB.Menu mnu_甲骨文選項 
            Caption         =   "甲骨文"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnu_金文選項 
            Caption         =   "金文"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnu_楚系文字選項 
            Caption         =   "楚系文字"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnu_小篆選項 
            Caption         =   "小篆"
            Checked         =   -1  'True
         End
      End
      Begin VB.Menu mnu_option_複製到Word 
         Caption         =   "複製到Microsoft Word"
         Begin VB.Menu mnu_複製字形到Word 
            Caption         =   "複製成字形或構字式"
         End
         Begin VB.Menu mnu_複製圖片到Word 
            Caption         =   "複製成圖片"
         End
         Begin VB.Menu mnu_複製Unicode字形到Word 
            Caption         =   "複製Unicode字形"
            Enabled         =   0   'False
            Visible         =   0   'False
         End
         Begin VB.Menu mnu_智慧型複製到Word 
            Caption         =   "智慧型複製"
            Checked         =   -1  'True
         End
      End
      Begin VB.Menu mnu_複製選項 
         Caption         =   "其他"
         Begin VB.Menu mnu_複製到剪貼簿 
            Caption         =   "自動複製選取字形到剪貼簿"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnu_顯示風格碼 
            Caption         =   "顯示風格碼"
            Checked         =   -1  'True
            Visible         =   0   'False
         End
      End
      Begin VB.Menu mnu_儲存視窗設定 
         Caption         =   "結束時儲存視窗設定"
         Checked         =   -1  'True
         Enabled         =   0   'False
         Visible         =   0   'False
      End
      Begin VB.Menu mnu_同時設定所有開啟視窗的字型大小及顏色 
         Caption         =   "同時設定所有開啟視窗的字型大小及顏色"
         Checked         =   -1  'True
         Enabled         =   0   'False
         Visible         =   0   'False
      End
   End
   Begin VB.Menu mnu_視窗 
      Caption         =   "視窗"
      WindowList      =   -1  'True
      Begin VB.Menu mnu_水平並排 
         Caption         =   "水平並排"
         Visible         =   0   'False
      End
      Begin VB.Menu mnu_垂直並排 
         Caption         =   "垂直並排"
      End
      Begin VB.Menu mnu_重疊顯示 
         Caption         =   "重疊顯示"
      End
      Begin VB.Menu mnu_新增視窗 
         Caption         =   "新增視窗"
         Enabled         =   0   'False
         Visible         =   0   'False
      End
      Begin VB.Menu mnu_排列圖示 
         Caption         =   "排列圖示"
         Visible         =   0   'False
      End
      Begin VB.Menu mnu_簡易瀏覽 
         Caption         =   "預設開啟(基本)..."
      End
      Begin VB.Menu mnu_最佳瀏覽 
         Caption         =   "預設開啟(進階)..."
      End
   End
   Begin VB.Menu mnu_說明 
      Caption         =   "說明"
      Begin VB.Menu mnu_說明主題 
         Caption         =   "說明主題"
      End
      Begin VB.Menu mnu_line8_1 
         Caption         =   "-"
      End
      Begin VB.Menu mnu_cdp 
         Caption         =   "關於漢字構形資料庫"
      End
   End
End
Attribute VB_Name = "mdi漢字字形"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private 筆畫 As Integer, 首筆 As Integer, 狀態列 As String, 狀態列1 As String
Private 初始font As String, 初始fontsize As Integer
Private 初始left As Integer, 初始top As Integer, 初始width As Integer, 初始height As Integer
Private 初始save As String * 250

Private path As String

Private Sub 載入初始值()
Dim nDefault As Long, sDefault As String, lret As Long

初始first = GetPrivateProfileInt("Start", "first", nDefault, App.path & "\cdphanzi.ini")

初始left = GetPrivateProfileInt("Window", "left", nDefault, App.path & "\cdphanzi.ini")
初始top = GetPrivateProfileInt("Window", "top", nDefault, App.path & "\cdphanzi.ini")
初始width = GetPrivateProfileInt("Window", "width", nDefault, App.path & "\cdphanzi.ini")
初始height = GetPrivateProfileInt("Window", "height", nDefault, App.path & "\cdphanzi.ini")

字集_常用字 = GetPrivateProfileInt("字集", "常用字", nDefault, App.path & "\cdphanzi.ini")
字集_五大碼 = GetPrivateProfileInt("字集", "五大碼", nDefault, App.path & "\cdphanzi.ini")
字集_簡化字 = GetPrivateProfileInt("字集", "簡化字", nDefault, App.path & "\cdphanzi.ini")
字集_漢語大字典 = GetPrivateProfileInt("字集", "漢語大字典", nDefault, App.path & "\cdphanzi.ini")
字集_說文解字 = GetPrivateProfileInt("字集", "說文解字", nDefault, App.path & "\cdphanzi.ini")
字集_金文編 = GetPrivateProfileInt("字集", "金文編", nDefault, App.path & "\cdphanzi.ini")
字集_金文編圖形文字 = GetPrivateProfileInt("字集", "金文編圖形文字", nDefault, App.path & "\cdphanzi.ini")
字集_甲骨類纂 = GetPrivateProfileInt("字集", "甲骨類纂", nDefault, App.path & "\cdphanzi.ini")
字集_楚系簡帛文字編 = GetPrivateProfileInt("字集", "楚系簡帛文字編", nDefault, App.path & "\cdphanzi.ini")
字集_楷體字 = GetPrivateProfileInt("字集", "楷體字", nDefault, App.path & "\cdphanzi.ini")

孳乳open = GetPrivateProfileInt("字形孳乳", "open", nDefault, App.path & "\cdphanzi.ini")
孳乳winstate = GetPrivateProfileInt("字形孳乳", "winstate", nDefault, App.path & "\cdphanzi.ini")
孳乳left = GetPrivateProfileInt("字形孳乳", "left", nDefault, App.path & "\cdphanzi.ini")
孳乳top = GetPrivateProfileInt("字形孳乳", "top", nDefault, App.path & "\cdphanzi.ini")
孳乳width = GetPrivateProfileInt("字形孳乳", "width", nDefault, App.path & "\cdphanzi.ini")
孳乳height = GetPrivateProfileInt("字形孳乳", "height", nDefault, App.path & "\cdphanzi.ini")

出處open = GetPrivateProfileInt("出處檢字", "open", nDefault, App.path & "\cdphanzi.ini")
出處winstate = GetPrivateProfileInt("出處檢字", "winstate", nDefault, App.path & "\cdphanzi.ini")
出處left = GetPrivateProfileInt("出處檢字", "left", nDefault, App.path & "\cdphanzi.ini")
出處top = GetPrivateProfileInt("出處檢字", "top", nDefault, App.path & "\cdphanzi.ini")
出處width = GetPrivateProfileInt("出處檢字", "width", nDefault, App.path & "\cdphanzi.ini")
出處height = GetPrivateProfileInt("出處檢字", "height", nDefault, App.path & "\cdphanzi.ini")

結構open = GetPrivateProfileInt("字形結構", "open", nDefault, App.path & "\cdphanzi.ini")
結構winstate = GetPrivateProfileInt("字形結構", "winstate", nDefault, App.path & "\cdphanzi.ini")
結構left = GetPrivateProfileInt("字形結構", "left", nDefault, App.path & "\cdphanzi.ini")
結構top = GetPrivateProfileInt("字形結構", "top", nDefault, App.path & "\cdphanzi.ini")
結構width = GetPrivateProfileInt("字形結構", "width", nDefault, App.path & "\cdphanzi.ini")
結構height = GetPrivateProfileInt("字形結構", "height", nDefault, App.path & "\cdphanzi.ini")

異體open = GetPrivateProfileInt("異體字表", "open", nDefault, App.path & "\cdphanzi.ini")
異體winstate = GetPrivateProfileInt("異體字表", "winstate", nDefault, App.path & "\cdphanzi.ini")
異體left = GetPrivateProfileInt("異體字表", "left", nDefault, App.path & "\cdphanzi.ini")
異體top = GetPrivateProfileInt("異體字表", "top", nDefault, App.path & "\cdphanzi.ini")
異體width = GetPrivateProfileInt("異體字表", "width", nDefault, App.path & "\cdphanzi.ini")
異體height = GetPrivateProfileInt("異體字表", "height", nDefault, App.path & "\cdphanzi.ini")

異根open = GetPrivateProfileInt("異體字根", "open", nDefault, App.path & "\cdphanzi.ini")
異根winstate = GetPrivateProfileInt("異體字根", "winstate", nDefault, App.path & "\cdphanzi.ini")
異根left = GetPrivateProfileInt("異體字根", "left", nDefault, App.path & "\cdphanzi.ini")
異根top = GetPrivateProfileInt("異體字根", "top", nDefault, App.path & "\cdphanzi.ini")
異根width = GetPrivateProfileInt("異體字根", "width", nDefault, App.path & "\cdphanzi.ini")
異根height = GetPrivateProfileInt("異體字根", "height", nDefault, App.path & "\cdphanzi.ini")

部件open = GetPrivateProfileInt("構形部件", "open", nDefault, App.path & "\cdphanzi.ini")
部件winstate = GetPrivateProfileInt("構形部件", "winstate", nDefault, App.path & "\cdphanzi.ini")
部件left = GetPrivateProfileInt("構形部件", "left", nDefault, App.path & "\cdphanzi.ini")
部件top = GetPrivateProfileInt("構形部件", "top", nDefault, App.path & "\cdphanzi.ini")
部件width = GetPrivateProfileInt("構形部件", "width", nDefault, App.path & "\cdphanzi.ini")
部件height = GetPrivateProfileInt("構形部件", "height", nDefault, App.path & "\cdphanzi.ini")

演變open = GetPrivateProfileInt("字形演變", "open", nDefault, App.path & "\cdphanzi.ini")
演變winstate = GetPrivateProfileInt("字形演變", "winstate", nDefault, App.path & "\cdphanzi.ini")
演變left = GetPrivateProfileInt("字形演變", "left", nDefault, App.path & "\cdphanzi.ini")
演變top = GetPrivateProfileInt("字形演變", "top", nDefault, App.path & "\cdphanzi.ini")
演變width = GetPrivateProfileInt("字形演變", "width", nDefault, App.path & "\cdphanzi.ini")
演變height = GetPrivateProfileInt("字形演變", "height", nDefault, App.path & "\cdphanzi.ini")

索引open = GetPrivateProfileInt("字形索引", "open", nDefault, App.path & "\cdphanzi.ini")
索引winstate = GetPrivateProfileInt("字形索引", "winstate", nDefault, App.path & "\cdphanzi.ini")
索引left = GetPrivateProfileInt("字形索引", "left", nDefault, App.path & "\cdphanzi.ini")
索引top = GetPrivateProfileInt("字形索引", "top", nDefault, App.path & "\cdphanzi.ini")
索引width = GetPrivateProfileInt("字形索引", "width", nDefault, App.path & "\cdphanzi.ini")
索引height = GetPrivateProfileInt("字形索引", "height", nDefault, App.path & "\cdphanzi.ini")

初始font = String(256, 0)
lret = GetPrivateProfileString("Font", "fontname", "標楷體", 初始font, Len(初始font), App.path & "\cdphanzi.ini")
初始font = Left(初始font, InStr(初始font, Chr(0)) - 1)
初始fontsize = GetPrivateProfileInt("Font", "fontsize", nDefault, App.path & "\cdphanzi.ini")

圖片解析度 = GetPrivateProfileInt("Image", "dpi", nDefault, App.path & "\cdphanzi.ini")
圖片字型大小 = GetPrivateProfileInt("Image", "fontsize", nDefault, App.path & "\cdphanzi.ini")

初始逐級列出 = GetPrivateProfileInt("選項", "逐級列出", nDefault, App.path & "\cdphanzi.ini")
初始部件順序 = GetPrivateProfileInt("選項", "部件順序", nDefault, App.path & "\cdphanzi.ini")
初始異寫部件 = GetPrivateProfileInt("選項", "異寫部件", nDefault, App.path & "\cdphanzi.ini")
初始解形列出 = GetPrivateProfileInt("選項", "解形列出", nDefault, App.path & "\cdphanzi.ini")
初始遠東漢語大字典 = GetPrivateProfileInt("選項", "遠東漢語大字典", nDefault, App.path & "\cdphanzi.ini")
初始建宏漢語大字典 = GetPrivateProfileInt("選項", "建宏漢語大字典", nDefault, App.path & "\cdphanzi.ini")
初始中文大辭典 = GetPrivateProfileInt("選項", "中文大辭典", nDefault, App.path & "\cdphanzi.ini")
初始說文解字詁林 = GetPrivateProfileInt("選項", "說文解字詁林", nDefault, App.path & "\cdphanzi.ini")
初始中華說文解字 = GetPrivateProfileInt("選項", "中華說文解字", nDefault, App.path & "\cdphanzi.ini")
初始金文編 = GetPrivateProfileInt("選項", "金文編", nDefault, App.path & "\cdphanzi.ini")
初始金文詁林 = GetPrivateProfileInt("選項", "金文詁林", nDefault, App.path & "\cdphanzi.ini")
'初始金文器號 = GetPrivateProfileInt("選項", "金文器號", nDefault, App.path & "\cdphanzi.ini")
初始金文引得 = GetPrivateProfileInt("選項", "金文引得", nDefault, App.path & "\cdphanzi.ini")
初始甲骨刻辭類纂 = GetPrivateProfileInt("選項", "甲骨刻辭類纂", nDefault, App.path & "\cdphanzi.ini")
初始甲骨文字詁林 = GetPrivateProfileInt("選項", "甲骨文字詁林", nDefault, App.path & "\cdphanzi.ini")
初始甲骨文字集釋 = GetPrivateProfileInt("選項", "甲骨文字集釋", nDefault, App.path & "\cdphanzi.ini")
初始楚系簡帛文字編 = GetPrivateProfileInt("選項", "楚系簡帛文字編", nDefault, App.path & "\cdphanzi.ini")
'初始楚系文字出處 = GetPrivateProfileInt("選項", "楚系文字出處", nDefault, App.path & "\cdphanzi.ini")
初始Unicode = GetPrivateProfileInt("選項", "Unicode", nDefault, App.path & "\cdphanzi.ini")
初始Big5 = GetPrivateProfileInt("選項", "Big5", nDefault, App.path & "\cdphanzi.ini")
初始甲骨文演變 = GetPrivateProfileInt("選項", "甲骨文演變", nDefault, App.path & "\cdphanzi.ini")
初始金文演變 = GetPrivateProfileInt("選項", "金文演變", nDefault, App.path & "\cdphanzi.ini")
初始楚系文字演變 = GetPrivateProfileInt("選項", "楚系文字演變", nDefault, App.path & "\cdphanzi.ini")
初始小篆演變 = GetPrivateProfileInt("選項", "小篆演變", nDefault, App.path & "\cdphanzi.ini")
初始copy = GetPrivateProfileInt("選項", "copy", nDefault, App.path & "\cdphanzi.ini")
初始字頻 = GetPrivateProfileInt("Window", "字頻", nDefault, App.path & "\cdphanzi.ini")
初始save = GetPrivateProfileInt("選項", "save", nDefault, App.path & "\cdphanzi.ini")
'初始風格碼 = GetPrivateProfileInt("選項", "風格碼", nDefault, App.path & "\cdphanzi.ini")

初始CopyToWord = GetPrivateProfileInt("CopyToWord", "CopyMode", nDefault, App.path & "\cdphanzi.ini")
初始CopyUnicode = GetPrivateProfileInt("CopyToWord", "CopyUnicode", nDefault, App.path & "\cdphanzi.ini")

End Sub

Private Sub 開啟資料庫()

Set 系統資料庫 = OpenDatabase(App.path & "\cdphanzi.mdb")
Set 小篆資料庫 = OpenDatabase(App.path & "\cdpseal.mdb")
Set 金文資料庫 = OpenDatabase(App.path & "\cdpbronz.mdb")
Set 甲骨文資料庫 = OpenDatabase(App.path & "\cdpjiagu.mdb")
Set 楚系文字資料庫 = OpenDatabase(App.path & "\cdpchubs.mdb")

字體名稱

End Sub

Private Sub 儲存結束值()
Dim IniEntry As String * 255
Dim fsuccess As Boolean

If mdi漢字字形.mnu_儲存視窗設定.Checked = True Then
   初始save = 1
Else
   初始save = 0
   Exit Sub
End If

初始first = 2

初始left = mdi漢字字形.Left
初始top = mdi漢字字形.Top
初始height = mdi漢字字形.Height
初始width = mdi漢字字形.Width

If mnu_常用字.Checked Then
    字集_常用字 = 1
Else
    字集_常用字 = 0
End If

If mnu_Big5.Checked Then
    字集_五大碼 = 1
Else
    字集_五大碼 = 0
End If

If mnu_簡化字總表.Checked Then
    字集_簡化字 = 1
Else
    字集_簡化字 = 0
End If

If mnu_漢語大字典.Checked Then
    字集_漢語大字典 = 1
Else
    字集_漢語大字典 = 0
End If

If mnu_小篆.Checked Then
    字集_說文解字 = 1
Else
    字集_說文解字 = 0
End If

If mnu_金文.Checked Then
    字集_金文編 = 1
Else
    字集_金文編 = 0
End If

If mnu_金文圖形文字.Checked Then
    字集_金文編圖形文字 = 1
Else
    字集_金文編圖形文字 = 0
End If

If mnu_甲骨文.Checked Then
    字集_甲骨類纂 = 1
Else
    字集_甲骨類纂 = 0
End If

If mnu_楚系文字.Checked Then
    字集_楚系簡帛文字編 = 1
Else
    字集_楚系簡帛文字編 = 0
End If

If mnu_楷書.Checked Then
    字集_楷體字 = 1
Else
    字集_楷體字 = 0
End If
    
If mdi漢字字形.mnu_字形孳乳逐級列出單一部件.Checked = True Then
   初始逐級列出 = 1
Else
   初始逐級列出 = 0
End If

If mdi漢字字形.mnu_字形孳乳遵照輸入部件順序.Checked = True Then
   初始部件順序 = 1
Else
   初始部件順序 = 0
End If

If mdi漢字字形.mnu_字形孳乳包含異寫部件.Checked = True Then
   初始異寫部件 = 1
Else
   初始異寫部件 = 0
End If

If mdi漢字字形.mnu_說文解形順序.Checked = True Then
    初始解形列出 = 1
Else
    初始解形列出 = 0
End If

If mnu_遠東漢語大字典選項.Checked = True Then
   初始遠東漢語大字典 = 1
Else
   初始遠東漢語大字典 = 0
End If

If mnu_建宏漢語大字典選項.Checked = True Then
   初始建宏漢語大字典 = 1
Else
   初始建宏漢語大字典 = 0
End If

If mnu_中文大辭典選項.Checked = True Then
   初始中文大辭典 = 1
Else
   初始中文大辭典 = 0
End If

If mnu_說文解字詁林選項.Checked = True Then
   初始說文解字詁林 = 1
Else
   初始說文解字詁林 = 0
End If

If mnu_中華說文解字選項.Checked = True Then
   初始中華說文解字 = 1
Else
   初始中華說文解字 = 0
End If

If mnu_金文編選項.Checked = True Then
   初始金文編 = 1
Else
   初始金文編 = 0
End If

If mnu_金文詁林選項.Checked = True Then
   初始金文詁林 = 1
Else
   初始金文詁林 = 0
End If

If mnu_殷周金文集成器號選項.Checked = True Then
   初始金文器號 = 1
Else
   初始金文器號 = 0
End If

If mnu_殷周金文集成引得選項.Checked = True Then
   初始金文引得 = 1
Else
   初始金文引得 = 0
End If

If mnu_甲骨刻辭類纂選項.Checked = True Then
   初始甲骨刻辭類纂 = 1
Else
   初始甲骨刻辭類纂 = 0
End If

If mnu_甲骨文字詁林選項.Checked = True Then
   初始甲骨文字詁林 = 1
Else
   初始甲骨文字詁林 = 0
End If

If mnu_甲骨文字集釋選項.Checked = True Then
   初始甲骨文字集釋 = 1
Else
   初始甲骨文字集釋 = 0
End If

If mnu_楚系簡帛文字編選項.Checked = True Then
   初始楚系簡帛文字編 = 1
Else
   初始楚系簡帛文字編 = 0
End If

If mnu_楚系文字出處選項.Checked = True Then
   初始楚系文字出處 = 1
Else
   初始楚系文字出處 = 0
End If

If mnu_Unicode選項.Checked = True Then
   初始Unicode = 1
Else
   初始Unicode = 0
End If

If mnu_Big5選項.Checked = True Then
   初始Big5 = 1
Else
   初始Big5 = 0
End If

If mnu_甲骨文選項.Checked = True Then
   初始甲骨文演變 = 1
Else
   初始甲骨文演變 = 0
End If

If mnu_金文選項.Checked = True Then
   初始金文演變 = 1
Else
   初始金文演變 = 0
End If

If mnu_楚系文字選項.Checked = True Then
   初始楚系文字演變 = 1
Else
   初始楚系文字演變 = 0
End If

If mnu_小篆選項.Checked = True Then
   初始小篆演變 = 1
Else
   初始小篆演變 = 0
End If

初始font = mdi漢字字形.cbo字型名稱.Text
初始fontsize = mdi漢字字形.cbo字體大小.Text

If mdi漢字字形.mnu_複製到剪貼簿.Checked = True Then
   初始copy = 1
Else
   初始copy = 0
End If

If mdi漢字字形.mnu_顯示風格碼.Checked = True Then
   初始風格碼 = 1
Else
   初始風格碼 = 0
End If

If mnu_複製字形到Word.Checked = True Then
    初始CopyToWord = 1
ElseIf mnu_複製圖片到Word.Checked = True Then
    初始CopyToWord = 2
Else
    初始CopyToWord = 3
End If

If mnu_複製Unicode字形到Word.Checked = True Then
   初始CopyUnicode = 1
Else
   初始CopyUnicode = 0
End If

fsuccess = WritePrivateProfileString("Start", "first", 初始first, App.path & "\cdphanzi.ini")

IniEntry = 初始left
fsuccess = WritePrivateProfileString("Window", "left", IniEntry, App.path & "\cdphanzi.ini")
IniEntry = 初始top
fsuccess = WritePrivateProfileString("Window", "top", IniEntry, App.path & "\cdphanzi.ini")
IniEntry = 初始width
fsuccess = WritePrivateProfileString("Window", "width", IniEntry, App.path & "\cdphanzi.ini")
IniEntry = 初始height
fsuccess = WritePrivateProfileString("Window", "height", IniEntry, App.path & "\cdphanzi.ini")

IniEntry = 初始font
fsuccess = WritePrivateProfileString("Font", "fontname", IniEntry, App.path & "\cdphanzi.ini")
IniEntry = 初始fontsize
fsuccess = WritePrivateProfileString("Font", "fontsize", IniEntry, App.path & "\cdphanzi.ini")

IniEntry = 圖片解析度
fsuccess = WritePrivateProfileString("Image", "dpi", IniEntry, App.path & "\cdphanzi.ini")
IniEntry = 圖片字型大小
fsuccess = WritePrivateProfileString("Image", "fontsize", IniEntry, App.path & "\cdphanzi.ini")

'If 初始save = 1 Then

fsuccess = WritePrivateProfileString("字集", "常用字", 字集_常用字, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("字集", "五大碼", 字集_五大碼, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("字集", "簡化字", 字集_簡化字, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("字集", "漢語大字典", 字集_漢語大字典, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("字集", "說文解字", 字集_說文解字, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("字集", "金文編", 字集_金文編, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("字集", "金文編圖形文字", 字集_金文編圖形文字, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("字集", "甲骨類纂", 字集_甲骨類纂, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("字集", "楚系簡帛文字編", 字集_楚系簡帛文字編, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("字集", "楷體字", 字集_楷體字, App.path & "\cdphanzi.ini")


fsuccess = WritePrivateProfileString("字形孳乳", "open", 孳乳open, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("字形孳乳", "winstate", 孳乳winstate, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("字形孳乳", "left", 孳乳left, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("字形孳乳", "top", 孳乳top, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("字形孳乳", "width", 孳乳width, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("字形孳乳", "height", 孳乳height, App.path & "\cdphanzi.ini")

fsuccess = WritePrivateProfileString("出處檢字", "open", 出處open, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("出處檢字", "winstate", 出處winstate, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("出處檢字", "left", 出處left, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("出處檢字", "top", 出處top, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("出處檢字", "width", 出處width, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("出處檢字", "height", 出處height, App.path & "\cdphanzi.ini")

fsuccess = WritePrivateProfileString("字形結構", "open", 結構open, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("字形結構", "winstate", 結構winstate, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("字形結構", "left", 結構left, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("字形結構", "top", 結構top, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("字形結構", "width", 結構width, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("字形結構", "height", 結構height, App.path & "\cdphanzi.ini")

fsuccess = WritePrivateProfileString("異體字表", "open", 異體open, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("異體字表", "winstate", 異體winstate, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("異體字表", "left", 異體left, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("異體字表", "top", 異體top, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("異體字表", "width", 異體width, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("異體字表", "height", 異體height, App.path & "\cdphanzi.ini")

fsuccess = WritePrivateProfileString("異體字根", "open", 異根open, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("異體字根", "winstate", 異根winstate, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("異體字根", "left", 異根left, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("異體字根", "top", 異根top, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("異體字根", "width", 異根width, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("異體字根", "height", 異根height, App.path & "\cdphanzi.ini")

fsuccess = WritePrivateProfileString("構形部件", "open", 部件open, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("構形部件", "winstate", 部件winstate, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("構形部件", "left", 部件left, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("構形部件", "top", 部件top, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("構形部件", "width", 部件width, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("構形部件", "height", 部件height, App.path & "\cdphanzi.ini")

fsuccess = WritePrivateProfileString("字形演變", "open", 演變open, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("字形演變", "winstate", 演變winstate, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("字形演變", "left", 演變left, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("字形演變", "top", 演變top, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("字形演變", "width", 演變width, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("字形演變", "height", 演變height, App.path & "\cdphanzi.ini")

fsuccess = WritePrivateProfileString("字形索引", "open", 索引open, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("字形索引", "winstate", 索引winstate, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("字形索引", "left", 索引left, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("字形索引", "top", 索引top, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("字形索引", "width", 索引width, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("字形索引", "height", 索引height, App.path & "\cdphanzi.ini")

fsuccess = WritePrivateProfileString("選項", "逐級列出", 初始逐級列出, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("選項", "部件順序", 初始部件順序, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("選項", "異寫部件", 初始異寫部件, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("選項", "解形列出", 初始解形列出, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("選項", "遠東漢語大字典", 初始遠東漢語大字典, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("選項", "建宏漢語大字典", 初始建宏漢語大字典, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("選項", "中文大辭典", 初始中文大辭典, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("選項", "說文解字詁林", 初始說文解字詁林, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("選項", "中華說文解字", 初始中華說文解字, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("選項", "金文編", 初始金文編, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("選項", "金文詁林", 初始金文詁林, App.path & "\cdphanzi.ini")
'fsuccess = WritePrivateProfileString("選項", "金文器號", 初始金文器號, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("選項", "金文引得", 初始金文引得, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("選項", "甲骨刻辭類纂", 初始甲骨刻辭類纂, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("選項", "甲骨文字詁林", 初始甲骨文字詁林, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("選項", "甲骨文字集釋", 初始甲骨文字集釋, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("選項", "楚系簡帛文字編", 初始楚系簡帛文字編, App.path & "\cdphanzi.ini")
'fsuccess = WritePrivateProfileString("選項", "楚系文字出處", 初始楚系文字出處, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("選項", "Unicode", 初始Unicode, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("選項", "Big5", 初始Big5, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("選項", "甲骨文演變", 初始甲骨文演變, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("選項", "金文演變", 初始金文演變, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("選項", "楚系文字演變", 初始楚系文字演變, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("選項", "小篆演變", 初始小篆演變, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("選項", "copy", 初始copy, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("選項", "字頻", 初始字頻, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("選項", "save", 初始save, App.path & "\cdphanzi.ini")
'fsuccess = WritePrivateProfileString("選項", "風格碼", 初始風格碼, App.path & "\cdphanzi.ini")

fsuccess = WritePrivateProfileString("CopyToWord", "CopyMode", 初始CopyToWord, App.path & "\cdphanzi.ini")
fsuccess = WritePrivateProfileString("CopyToWord", "CopyUnicode", 初始CopyUnicode, App.path & "\cdphanzi.ini")

'End If

End Sub

Private Sub 初始畫面設定()
Me.show
If 初始first = 1 Then
   mdi漢字字形.WindowState = 2
Else
   mdi漢字字形.Left = 初始left
   mdi漢字字形.Top = 初始top
   mdi漢字字形.Height = 初始height
   mdi漢字字形.Width = 初始width
End If

'mdi漢字字形.tbr字形屬性.ButtonHeight = 360
'mdi漢字字形.tbr選取字形.ButtonHeight = 360

cbo字型名稱.Text = 初始font
If 初始first = 1 Then
   cbo字體大小.Text = 24
Else
   cbo字體大小.Text = 初始fontsize
End If

欄寬 = CInt(cbo字體大小.Text) * 20 + CInt(cbo字體大小.Text) * 20 / 3

End Sub

Private Sub 載入視窗()

If 初始first = 1 Then
   mnu_儲存視窗設定.Checked = True
   mnu_複製到剪貼簿.Checked = True
   mnu_字形孳乳包含異寫部件.Checked = True
   mnu_字形孳乳逐級列出單一部件.Checked = False
   mnu_字形孳乳只列字形不列部件.Checked = True

   'mnu_字形孳乳只列出常用字.Checked = False
   'mnu_字形孳乳只列出電腦用字.Checked = False
   'mnu_字形孳乳列出所有字形.Checked = True
   初始字頻 = 1
   mnu_楷書_Click
   預設瀏覽一
Else
   已載入畫面 = 0
   
   初始字頻 = 1
   
   If CInt(字集_常用字) = 1 Then mnu_常用字_Click
   If CInt(字集_五大碼) = 1 Then mnu_Big5_Click
   If CInt(字集_簡化字) = 1 Then mnu_簡化字總表_Click
   If CInt(字集_漢語大字典) = 1 Then mnu_漢語大字典_Click
   If CInt(字集_說文解字) = 1 Then mnu_小篆_Click
   If CInt(字集_金文編) = 1 Then mnu_金文_Click
   If CInt(字集_金文編圖形文字) = 1 Then mnu_金文圖形文字_Click
   If CInt(字集_甲骨類纂) = 1 Then mnu_甲骨文_Click
   If CInt(字集_楚系簡帛文字編) = 1 Then mnu_楚系文字_Click
   If CInt(字集_楷體字) = 1 Then mnu_楷書_Click
    
   If 部件open = 1 Then
        If 系統字體 = "小篆" Then
            mnu_說文解字部首_Click
        Else
            mnu_康熙字典部首_Click
        End If
   End If
   
   If 結構open = 1 Then
      frm字形結構.Tag = 字形結構代碼
      frm字形結構.show
   End If
   
   If 異體open = 1 Then
      frm異體字表.Tag = 異體字表代碼
      frm異體字表.show
   End If
   
   If 異根open = 1 Then
      frm異體字根.Tag = 異體字根代碼
      frm異體字根.show
   End If

   If 演變open = 1 Then
      frm字形演變.Tag = 字形演變代碼
      frm字形演變.show
   End If

   If 索引open = 1 Then
      frm字形索引.Tag = 字形索引代碼
      frm字形索引.show
   End If

   If 出處open = 1 Then
      frm出處檢字.Tag = 出處檢字代碼
      frm出處檢字.show
   End If
   
   If 孳乳open = 1 Then
      frm字形孳乳.Tag = 字形孳乳代碼
      frm字形孳乳.show
   End If
      
   If 初始逐級列出 = 1 Then
      mnu_字形孳乳逐級列出單一部件.Checked = True
      mnu_字形孳乳只列字形不列部件.Checked = False
   Else
      mnu_字形孳乳逐級列出單一部件.Checked = False
      mnu_字形孳乳只列字形不列部件.Checked = True
   End If
   
   If 初始部件順序 = 1 Then
      mnu_字形孳乳遵照輸入部件順序.Checked = True
   Else
      mnu_字形孳乳遵照輸入部件順序.Checked = False
   End If

   If 初始異寫部件 = 1 Then
      mnu_字形孳乳包含異寫部件.Checked = True
   Else
      mnu_字形孳乳包含異寫部件.Checked = False
   End If

   If 初始解形列出 = 1 Then
      mdi漢字字形.mnu_說文解形順序.Checked = True
   Else
      mdi漢字字形.mnu_說文解形順序.Checked = False
   End If
   
   If 初始遠東漢語大字典 = 1 Then
      mnu_遠東漢語大字典選項.Checked = True
   Else
      mnu_遠東漢語大字典選項.Checked = False
   End If

   If 初始建宏漢語大字典 = 1 Then
      mnu_建宏漢語大字典選項.Checked = True
   Else
      mnu_建宏漢語大字典選項.Checked = False
   End If

   If 初始中文大辭典 = 1 Then
      mnu_中文大辭典選項.Checked = True
   Else
      mnu_中文大辭典選項.Checked = False
   End If

   If 初始說文解字詁林 = 1 Then
      mnu_說文解字詁林選項.Checked = True
   Else
      mnu_說文解字詁林選項.Checked = False
   End If

   If 初始中華說文解字 = 1 Then
      mnu_中華說文解字選項.Checked = True
   Else
      mnu_中華說文解字選項.Checked = False
   End If

   If 初始金文編 = 1 Then
      mnu_金文編選項.Checked = True
   Else
      mnu_金文編選項.Checked = False
   End If

   If 初始金文詁林 = 1 Then
      mnu_金文詁林選項.Checked = True
   Else
      mnu_金文詁林選項.Checked = False
   End If

   'If 初始金文器號 = 1 Then
   '   mnu_殷周金文集成器號選項.Checked = True
   'Else
   '   mnu_殷周金文集成器號選項.Checked = False
   'End If

   If 初始金文引得 = 1 Then
      mnu_殷周金文集成引得選項.Checked = True
   Else
      mnu_殷周金文集成引得選項.Checked = False
   End If

   If 初始甲骨刻辭類纂 = 1 Then
      mnu_甲骨刻辭類纂選項.Checked = True
   Else
      mnu_甲骨刻辭類纂選項.Checked = False
   End If

   If 初始甲骨文字詁林 = 1 Then
      mnu_甲骨文字詁林選項.Checked = True
   Else
      mnu_甲骨文字詁林選項.Checked = False
   End If

   If 初始甲骨文字集釋 = 1 Then
      mnu_甲骨文字集釋選項.Checked = True
   Else
      mnu_甲骨文字集釋選項.Checked = False
   End If

   If 初始楚系簡帛文字編 = 1 Then
      mnu_楚系簡帛文字編選項.Checked = True
   Else
      mnu_楚系簡帛文字編選項.Checked = False
   End If

   'If 初始楚系文字出處 = 1 Then
   '   mnu_楚系文字出處選項.Checked = True
   'Else
   '   mnu_楚系文字出處選項.Checked = False
   'End If

   If 初始Unicode = 1 Then
      mnu_Unicode選項.Checked = True
   Else
      mnu_Unicode選項.Checked = False
   End If

   If 初始Big5 = 1 Then
      mnu_Big5選項.Checked = True
   Else
      mnu_Big5選項.Checked = False
   End If

   If 初始甲骨文演變 = 1 Then
      mnu_甲骨文選項.Checked = True
   Else
      mnu_甲骨文選項.Checked = False
   End If

   If 初始金文演變 = 1 Then
      mnu_金文選項.Checked = True
   Else
      mnu_金文選項.Checked = False
   End If

   If 初始楚系文字演變 = 1 Then
      mnu_楚系文字選項.Checked = True
   Else
      mnu_楚系文字選項.Checked = False
   End If

   If 初始小篆演變 = 1 Then
      mnu_小篆選項.Checked = True
   Else
      mnu_小篆選項.Checked = False
   End If
   
   If 初始save = 1 Then
      mnu_儲存視窗設定.Checked = True
   Else
      mnu_儲存視窗設定.Checked = False
   End If

   If 初始copy = 1 Then
      mnu_複製到剪貼簿.Checked = True
   Else
      mnu_複製到剪貼簿.Checked = False
   End If
   
   'If 初始風格碼 = 1 Then
   '   mnu_顯示風格碼.Checked = True
   'Else
   '   mnu_顯示風格碼.Checked = False
   'End If
    If 初始CopyToWord = 1 Then
        mnu_複製字形到Word.Checked = True
        mnu_複製圖片到Word.Checked = False
        mnu_智慧型複製到Word.Checked = False
    ElseIf 初始CopyToWord = 2 Then
        mnu_複製字形到Word.Checked = False
        mnu_複製圖片到Word.Checked = True
        mnu_智慧型複製到Word.Checked = False
    Else
        mnu_複製字形到Word.Checked = False
        mnu_複製圖片到Word.Checked = False
        mnu_智慧型複製到Word.Checked = True
    End If
   
   已載入畫面 = 1
   
End If

End Sub


Public Sub cbo字型名稱_click()

Dim i As Integer
Dim j As Long

If Len(cbo字型名稱.Text) = 0 Then cbo字型名稱.Text = 顯示字型
If 顯示字型 = cbo字型名稱.Text Then Exit Sub

顯示字型 = cbo字型名稱.Text

For i = 1 To Forms.Count - 1

    If (CInt(Forms(i).Tag) >= Big5字根代碼) And (CInt(Forms(i).Tag) <= 構字符號代碼) Then
       frm部件範例.tree字形樹狀結構.FontName = 顯示字型
       'For j = 0 To frm部件範例.tree字形樹狀結構.ListCount - 1
       '    frm部件範例.tree字形樹狀結構.ItemFontSize(j) = 顯示字型大小
       'Next j
    End If
    
    If CInt(Forms(i).Tag) = 字形孳乳代碼 Then
        frm字形孳乳.tree字形樹狀結構.FontName = 顯示字型
            For j = 0 To frm字形孳乳.tree字形樹狀結構.ListCount - 1
                If frm字形孳乳.tree字形樹狀結構.ItemFontName(j) <> 顯示字型 Then
                    frm字形孳乳.tree字形樹狀結構.ItemFontName(j) = 切換顯示字型(frm字形孳乳.tree字形樹狀結構.ItemFontName(j))
                End If
            Next j
    End If
    
    If CInt(Forms(i).Tag) = 出處檢字代碼 Then
        frm出處檢字.tree字形樹狀結構.FontName = 顯示字型
            For j = 0 To frm出處檢字.tree字形樹狀結構.ListCount - 1
                If frm出處檢字.tree字形樹狀結構.ItemFontName(j) <> 顯示字型 Then
                    frm出處檢字.tree字形樹狀結構.ItemFontName(j) = 切換顯示字型(frm出處檢字.tree字形樹狀結構.ItemFontName(j))
                End If
            Next j
    End If
    
    If CInt(Forms(i).Tag) = 字形結構代碼 Then
            frm字形結構.tree字形樹狀結構.FontName = 顯示字型
            'frm字形結構.tree字形樹狀結構.ItemFontSize(0) = 顯示字型大小
            For j = 0 To frm字形結構.tree字形樹狀結構.ListCount - 1
                If frm字形結構.tree字形樹狀結構.ItemFontName(j) <> 顯示字型 Then
                    frm字形結構.tree字形樹狀結構.ItemFontName(j) = 切換顯示字型(frm字形結構.tree字形樹狀結構.ItemFontName(j))
                End If
            Next j
    End If
    
    If CInt(Forms(i).Tag) = 異體字表代碼 Then
            frm異體字表.tree字形樹狀結構.FontName = 顯示字型
            For j = 0 To frm異體字表.tree字形樹狀結構.ListCount - 1
                If frm異體字表.tree字形樹狀結構.ItemFontName(j) <> 顯示字型 Then
                    frm異體字表.tree字形樹狀結構.ItemFontName(j) = 切換顯示字型(frm異體字表.tree字形樹狀結構.ItemFontName(j))
                End If
            Next j
    End If

    If CInt(Forms(i).Tag) = 異體字根代碼 Then
            frm異體字根.tree字形樹狀結構.FontName = 顯示字型
            For j = 0 To frm異體字根.tree字形樹狀結構.ListCount - 1
                If frm異體字根.tree字形樹狀結構.ItemFontName(j) <> 顯示字型 Then
                    frm異體字根.tree字形樹狀結構.ItemFontName(j) = 切換顯示字型(frm異體字根.tree字形樹狀結構.ItemFontName(j))
                End If
            Next j
    End If

    If CInt(Forms(i).Tag) = 字形演變代碼 Then
       For j = 0 To frm字形演變.tree字形樹狀結構.ListCount - 1
           If frm字形演變.tree字形樹狀結構.ItemFontName(j) <> "北師大說文小篆" And frm字形演變.tree字形樹狀結構.ItemFontName(j) <> "北師大說文重文" And frm字形演變.tree字形樹狀結構.ItemFontName(j) <> "中研院金文" And frm字形演變.tree字形樹狀結構.ItemFontName(j) <> "中研院甲骨文" And frm字形演變.tree字形樹狀結構.ItemFontName(j) <> "中研院楚系簡帛文字" Then
              If frm字形演變.tree字形樹狀結構.ItemCell(j).RTFStyle = 1 Then
                 frm字形演變.tree字形樹狀結構.List(j) = 轉換RTF缺字(Right(frm字形演變.tree字形樹狀結構.ItemTag(j), Len(frm字形演變.tree字形樹狀結構.ItemTag(j)) - 1), 顯示字型)
              Else
                frm字形演變.tree字形樹狀結構.ItemFontName(j) = 切換顯示字型(frm字形演變.tree字形樹狀結構.ItemFontName(j))
              End If
           End If
       Next j
    End If

    If CInt(Forms(i).Tag) = 字形索引代碼 Then
        frm字形索引.tree字形樹狀結構.FontName = 顯示字型
        For j = 0 To frm字形索引.tree字形樹狀結構.ListCount - 1
            If frm字形索引.tree字形樹狀結構.ItemFontName(j) <> 顯示字型 Then
                frm字形索引.tree字形樹狀結構.ItemFontName(j) = 切換顯示字型(frm字形索引.tree字形樹狀結構.ItemFontName(j))
            End If
        Next j
    End If

Next i

End Sub

Private Sub cbo字型名稱_KeyPress(KeyAscii As Integer)

Dim 字型名稱 As String

If KeyAscii = 13 Then
    If Len(cbo字型名稱.Text) = 0 Then cbo字型名稱.Text = 顯示字型
    字型名稱 = cbo字型名稱.Text
    If 字型名稱 = "細明體" Or 字型名稱 = "標楷體" Then
        cbo字型名稱.Text = 字型名稱
        cbo字型名稱_click
    Else
        cbo字型名稱.Text = 顯示字型
    End If
End If

End Sub

Private Sub cbo字型名稱_LostFocus()

If Len(cbo字型名稱.Text) = 0 Then cbo字型名稱.Text = 顯示字型

End Sub

Private Sub cbo字體大小_LostFocus()

If Len(cbo字體大小.Text) = 0 Then cbo字體大小.Text = 顯示字型大小

End Sub

Private Sub cbo解析度_Click()

Dim 字體大小 As Integer

字體大小 = Val(cbo解析度.Text)
If 字體大小 > 0 Then 圖片解析度 = 字體大小

End Sub

Private Sub cbo解析度_KeyPress(KeyAscii As Integer)

If Val(cbo解析度.Text) > 0 Then 圖片解析度 = Val(cbo解析度.Text)

End Sub

Private Sub cbo圖片大小_Click()

Dim 字體大小 As Integer

字體大小 = Val(cbo圖片大小.Text)
If 字體大小 > 0 Then 圖片字型大小 = 字體大小

End Sub

Private Sub cbo圖片大小_KeyPress(KeyAscii As Integer)

Dim 字體大小 As Integer

If KeyAscii = 13 Then
   If Len(cbo圖片大小.Text) = 0 Then cbo圖片大小.Text = 圖片字型大小
   字體大小 = Val(cbo圖片大小.Text)
   If 字體大小 >= 8 And 字體大小 <= 1000 Then
      cbo圖片大小_Click
   ElseIf 字體大小 < 8 Then
      cbo圖片大小.Text = 8
      cbo圖片大小_Click
   ElseIf 字體大小 > 1000 Then
      cbo圖片大小.Text = 1000
      cbo圖片大小_Click
   End If
End If

End Sub

Private Sub MDIForm_Load()

Dim i As Integer
Dim 組字符號表 As Recordset
Dim ret As Long, lendata As Long, WinPath As String, path As String

載入初始值
初始畫面設定

If 初始first = 1 Then
   初始left = mdi漢字字形.Left
   初始top = mdi漢字字形.Top
   初始height = mdi漢字字形.Height
   初始width = mdi漢字字形.Width
End If

'Me.show

系統字體 = "楷書"
開啟資料庫

Set 檢字表 = 系統資料庫.OpenRecordset("檢字表")
Set 常用符號及部件類型 = 系統資料庫.OpenRecordset("常用符號及部件類型")
Set 組字符號表 = 系統資料庫.OpenRecordset("符號")
Set 康熙部首 = 系統資料庫.OpenRecordset("康熙部首")
Set 說文部首 = 系統資料庫.OpenRecordset("說文部首")
Set 異寫字根 = 系統資料庫.OpenRecordset("異寫字根")
Set 異體字表 = 系統資料庫.OpenRecordset("異體字表")

Set 楷書檢字表 = 系統資料庫.OpenRecordset("檢字表")
Set 楷書字根 = 系統資料庫.OpenRecordset("字根")
Set 楷書異寫字根 = 系統資料庫.OpenRecordset("異寫字根")
Set 楷書異體字表 = 系統資料庫.OpenRecordset("異體字表")

Set 小篆檢字表 = 小篆資料庫.OpenRecordset("檢字表")
Set 小篆獨體字 = 小篆資料庫.OpenRecordset("字根")
Set 小篆異寫字根 = 小篆資料庫.OpenRecordset("異寫字根")
Set 小篆異體字表 = 小篆資料庫.OpenRecordset("異體字表")

Set 金文檢字表 = 金文資料庫.OpenRecordset("檢字表")
Set 金文補遺表 = 金文資料庫.OpenRecordset("補遺")
Set 金文字根 = 金文資料庫.OpenRecordset("字根")
Set 金文異寫字根 = 金文資料庫.OpenRecordset("異寫字根")
Set 金文異體字表 = 金文資料庫.OpenRecordset("異體字表")
Set 金文異寫字表 = 金文資料庫.OpenRecordset("異寫字表")
Set 金文集成器名 = 金文資料庫.OpenRecordset("集成器名")
Set 金文集成引得 = 金文資料庫.OpenRecordset("集成引得")
Set 金文詁林 = 金文資料庫.OpenRecordset("金文詁林")

Set 甲骨文檢字表 = 甲骨文資料庫.OpenRecordset("檢字表")
Set 甲骨文字根 = 甲骨文資料庫.OpenRecordset("字根")
Set 甲骨文異寫字根 = 甲骨文資料庫.OpenRecordset("異寫字根")
Set 甲骨文異體字表 = 甲骨文資料庫.OpenRecordset("異體字表")
Set 甲骨文異寫字表 = 甲骨文資料庫.OpenRecordset("異寫字表")

Set 楚系文字檢字表 = 楚系文字資料庫.OpenRecordset("檢字表")
Set 楚系文字補遺表 = 楚系文字資料庫.OpenRecordset("補遺")
Set 楚系文字字根 = 楚系文字資料庫.OpenRecordset("字根")
Set 楚系文字異寫字根 = 楚系文字資料庫.OpenRecordset("異寫字根")
Set 楚系文字異體字表 = 楚系文字資料庫.OpenRecordset("異體字表")
Set 楚系文字異寫字表 = 楚系文字資料庫.OpenRecordset("異寫字表")

異體字表.Index = "編號"
異寫字根.Index = "字根"
檢字表.Index = "字形"

楷書異體字表.Index = "編號"
楷書異寫字根.Index = "字根"
楷書檢字表.Index = "字形"

小篆異體字表.Index = "編號"
小篆異寫字根.Index = "字根"
小篆檢字表.Index = "字形"

金文異體字表.Index = "編號"
金文異寫字表.Index = "編號"
金文異寫字根.Index = "字根"
金文檢字表.Index = "字形"
金文補遺表.Index = "楷書編號"
金文集成引得.Index = "楷書編號"
金文集成器名.Index = "器號"
金文詁林.Index = "字頭"

甲骨文異體字表.Index = "編號"
甲骨文異寫字表.Index = "編號"
甲骨文異寫字根.Index = "字根"
甲骨文檢字表.Index = "字形"

楚系文字異體字表.Index = "編號"
楚系文字異寫字表.Index = "編號"
楚系文字異寫字根.Index = "字根"
楚系文字檢字表.Index = "字形"
楚系文字補遺表.Index = "楷書編號"

現用字體 = "標楷體"
顯示字型 = cbo字型名稱
顯示字型大小 = cbo字體大小

組字符號表.MoveFirst
For i = 1 To 14
    組字符號陣列(組字符號表.Fields("編號")) = 組字符號表.Fields("字形")
    組字符號表.MoveNext
Next i
組字符號表.Close

Do Until 常用符號及部件類型.EOF
   cbo符號類型.AddItem 常用符號及部件類型.Fields("說明")
   cbo符號類型.ItemData(cbo符號類型.NewIndex) = 常用符號及部件類型.Fields("類型")
   常用符號及部件類型.MoveNext
Loop

cbo符號類型.ListIndex = 0
cbo筆畫.AddItem "1-99"

For i = 1 To 99
    cbo筆畫.AddItem i
    cbo筆畫.ItemData(i) = i
Next i


cbo解析度.List(0) = "72"
cbo解析度.List(1) = "120"
cbo解析度.List(2) = "300"
cbo解析度.List(3) = "450"
cbo解析度.List(4) = "600"
cbo解析度.List(5) = "750"
cbo解析度.List(6) = "900"
cbo解析度.List(7) = "1050"
cbo解析度.List(8) = "1200"
cbo解析度.List(9) = "1800"
cbo解析度.List(10) = "2400"
cbo解析度.Text = 圖片解析度

cbo圖片大小.List(0) = "8"
cbo圖片大小.List(1) = "9"
cbo圖片大小.List(2) = "10"
cbo圖片大小.List(3) = "11"
cbo圖片大小.List(4) = "12"
cbo圖片大小.List(5) = "14"
cbo圖片大小.List(6) = "16"
cbo圖片大小.List(7) = "18"
cbo圖片大小.List(8) = "20"
cbo圖片大小.List(9) = "22"
cbo圖片大小.List(10) = "24"
cbo圖片大小.List(11) = "26"
cbo圖片大小.List(12) = "28"
cbo圖片大小.List(13) = "36"
cbo圖片大小.List(14) = "48"
cbo圖片大小.List(15) = "72"
cbo圖片大小.Text = 圖片字型大小

複製圖片到Word = False

設定工具列初始狀態

共用視窗(mdi漢字字形代碼) = "mdi漢字字形"
共用視窗(構字符號代碼) = "構字符號"
共用視窗(簡牘代碼) = "簡牘"
共用視窗(八卦代碼) = "八卦"
共用視窗(圖形文字代碼) = "圖形文字"
共用視窗(康熙部首代碼) = "康熙字典部首"
共用視窗(說文部首代碼) = "說文解字部首"
共用視窗(Big5字根代碼) = "Big5字根"
共用視窗(Big5及簡化字字根代碼) = "Big5及簡化字字根"
共用視窗(字根代碼) = "字根"
共用視窗(小篆獨體字代碼) = "小篆獨體字"
共用視窗(金文字根代碼) = "金文字根"
共用視窗(甲骨文字根代碼) = "甲骨文字根"
共用視窗(楚系簡帛文字字根代碼) = "楚系簡帛文字字根"
共用視窗(部件外字代碼) = "部件外字"
共用視窗(字形孳乳代碼) = "字形孳乳"
共用視窗(出處檢字代碼) = "出處檢字"
共用視窗(字形結構代碼) = "字形結構"
共用視窗(字形索引代碼) = "字形索引"
共用視窗(異體字表代碼) = "異體字表"
共用視窗(異體字根代碼) = "異體字根"

現用視窗 = "mdi漢字字形"
現用視窗代碼 = mdi漢字字形代碼
Me.Tag = mdi漢字字形代碼

筆畫首筆查詢 = True
'筆畫 = 1
筆畫 = 0
首筆 = 0
啟動字形結構 = False
啟動異體字表 = False

For i = 0 To 2
    視窗代碼(i) = True
Next i

載入視窗


lendata = 255
path = String(lendata, Chr(0))
ret = GetWindowsDirectory(path, lendata)
WinPath = Left(path, InStr(path, Chr(0)) - 1)
暫存目錄 = WinPath & "\Temp\CdphanziTempDir"
If Dir(暫存目錄, vbDirectory) = "" Then MkDir 暫存目錄
bmpcount = 0
WordWasNotRunning = True

預設瀏覽模式 = -1
簡易瀏覽模式 = True

End Sub

Private Sub cbo字體大小_Click()
Dim i As Integer
Dim j As Long

If Len(cbo字體大小.Text) = 0 Then cbo字體大小.Text = 顯示字型大小
If 顯示字型大小 = cbo字體大小.Text Then Exit Sub

顯示字型大小 = cbo字體大小.Text

欄寬 = CInt(顯示字型大小) * 20 + CInt(顯示字型大小) * 20 / 3

For i = 1 To Forms.Count - 1

    If (CInt(Forms(i).Tag) >= Big5字根代碼) And (CInt(Forms(i).Tag) <= 構字符號代碼) Then
       frm部件範例.tree字形樹狀結構.FontSize = 顯示字型大小
       For j = 0 To frm部件範例.tree字形樹狀結構.ListCount - 1
           frm部件範例.tree字形樹狀結構.ItemFontSize(j) = 顯示字型大小
       Next j
    End If
    
    If CInt(Forms(i).Tag) = 字形孳乳代碼 Then
       frm字形孳乳.tree字形樹狀結構.FontSize = 顯示字型大小
       For j = 0 To frm字形孳乳.tree字形樹狀結構.ListCount - 1
           frm字形孳乳.tree字形樹狀結構.ItemFontSize(j) = 顯示字型大小
       Next j
    End If
    
    If CInt(Forms(i).Tag) = 出處檢字代碼 Then
       frm出處檢字.tree字形樹狀結構.FontSize = 顯示字型大小
       For j = 0 To frm出處檢字.tree字形樹狀結構.ListCount - 1
           frm出處檢字.tree字形樹狀結構.ItemFontSize(j) = 顯示字型大小
       Next j
    End If
    
    If CInt(Forms(i).Tag) = 字形結構代碼 Then
       frm字形結構.tree字形樹狀結構.FontSize = 顯示字型大小
       For j = 0 To frm字形結構.tree字形樹狀結構.ListCount - 1
           frm字形結構.tree字形樹狀結構.ItemFontSize(j) = 顯示字型大小
       Next j
    End If
    
    If CInt(Forms(i).Tag) = 異體字表代碼 Then
       frm異體字表.tree字形樹狀結構.FontSize = 顯示字型大小
       For j = 0 To frm異體字表.tree字形樹狀結構.ListCount - 1
           frm異體字表.tree字形樹狀結構.ItemFontSize(j) = 顯示字型大小
       Next j
    End If

    If CInt(Forms(i).Tag) = 異體字根代碼 Then
       frm異體字根.tree字形樹狀結構.FontSize = 顯示字型大小
       For j = 0 To frm異體字根.tree字形樹狀結構.ListCount - 1
           frm異體字根.tree字形樹狀結構.ItemFontSize(j) = 顯示字型大小
       Next j
    End If

    If CInt(Forms(i).Tag) = 字形演變代碼 Then
       frm字形演變.tree字形樹狀結構.FontSize = 顯示字型大小
       For j = 0 To frm字形演變.tree字形樹狀結構.ListCount - 1
          If Len(frm字形演變.tree字形樹狀結構.List(j)) = 1 Then
            frm字形演變.tree字形樹狀結構.ItemFontSize(j) = 顯示字型大小
          End If
       Next j
    End If

    If CInt(Forms(i).Tag) = 字形索引代碼 Then
       frm字形索引.tree字形樹狀結構.FontSize = 顯示字型大小
       For j = 0 To frm字形索引.tree字形樹狀結構.ListCount - 1
          If Len(frm字形索引.tree字形樹狀結構.List(j)) = 1 Then
            frm字形索引.tree字形樹狀結構.ItemFontSize(j) = 顯示字型大小
          End If
       Next j
    End If

Next i

End Sub


Private Sub cbo字體大小_KeyPress(KeyAscii As Integer)

Dim 字體大小 As Integer

If KeyAscii = 13 Then
   If Len(cbo字體大小.Text) = 0 Then cbo字體大小.Text = 顯示字型大小
   字體大小 = Val(cbo字體大小.Text)
   If 字體大小 >= 10 And 字體大小 <= 1000 Then
      cbo字體大小_Click
   ElseIf 字體大小 < 10 Then
      cbo字體大小.Text = 10
      cbo字體大小_Click
   ElseIf 字體大小 > 1000 Then
      cbo字體大小.Text = 1000
      cbo字體大小_Click
   End If
End If

End Sub

Private Sub cbo符號_Click()
Dim 字形 As String, 部件序 As String
Dim 編號 As Long, 連接符號 As Integer

字形 = cbo符號.List(cbo符號.ListIndex)
編號 = 0

檢字表.Index = "字形"
檢字表.Seek "=", cbo符號.List(cbo符號.ListIndex)
If Not 檢字表.NoMatch Then
   txt字形.Text = 字形
   txt內碼.Text = 檢字表.Fields("BIG5")
   txt倉頡碼.Text = 轉換英文到倉頡(檢字表.Fields("倉頡"))
   部件序 = 檢字表.Fields("部件序")
   If Not IsNull(檢字表.Fields("編號")) Then
      編號 = 檢字表.Fields("編號")
   Else
      編號 = 0
   End If
   連接符號 = 檢字表.Fields("連接符號")
   擷取屬性 "標楷體", 字形, 編號
   擷取構字式 "標楷體", 字形, 編號
   If 啟動字形結構 And (連接符號 <> 9) Then frm字形結構.載入字形 "標楷體", 字形, 編號
   If 啟動異體字表 And (連接符號 <> 9) Then frm異體字表.載入字形 "標楷體", 字形, 編號
   If 啟動字形演變 And (連接符號 <> 9) Then frm字形演變.載入字形 "標楷體", 字形, 編號
   If 啟動異體字根 And (連接符號 <> 9) Then frm異體字根.載入字形 "標楷體", 字形, 編號
End If

End Sub


Private Sub cbo首筆_Click()
首筆 = cbo首筆.ItemData(cbo首筆.ListIndex)
If Not 筆畫首筆查詢 Then Exit Sub
frm部件範例.部件查詢 筆畫, 首筆

End Sub

Private Sub cbo符號類型_Click()
Dim 字形表 As Recordset
Dim SQL陳述式 As String

SQL陳述式 = "SELECT 編號,字形 From 常用符號及部件 Where 類型 = " & cbo符號類型.ItemData(cbo符號類型.ListIndex) & " ORDER BY 編號"
Set 字形表 = 系統資料庫.OpenRecordset(SQL陳述式)

cbo符號.Clear

Do Until 字形表.EOF
   cbo符號.AddItem 字形表.Fields("字形")
   字形表.MoveNext
Loop
If cbo符號.ListCount > 0 Then cbo符號.ListIndex = 0
   
End Sub


Private Sub cbo筆畫_Click()
If cbo筆畫.ListIndex = -1 Then cbo筆畫.ListIndex = 0
筆畫 = cbo筆畫.ItemData(cbo筆畫.ListIndex)
If Not 筆畫首筆查詢 Then Exit Sub
frm部件範例.部件查詢 筆畫, 首筆

End Sub

Private Sub cbo筆畫_KeyPress(KeyAscii As Integer)

Dim 筆畫數 As Integer

If KeyAscii = 13 Then
   筆畫數 = Val(cbo筆畫.Text)
   If cbo筆畫.Text = "1-99" Then
      cbo筆畫.ListIndex = -1
   ElseIf 筆畫數 >= 1 And 筆畫數 <= 99 Then
      cbo筆畫.ListIndex = 筆畫數
   End If
End If

End Sub

Private Sub MDIForm_QueryUnload(Cancel As Integer, UnloadMode As Integer)
計算結束視窗
End Sub


Private Sub MDIForm_Unload(Cancel As Integer)
異寫字根.Close
常用符號及部件類型.Close
檢字表.Close
康熙部首.Close
說文部首.Close
系統資料庫.Close
小篆資料庫.Close
儲存結束值

End Sub

Private Sub 字體名稱()
Dim 暫存表 As Recordset
Dim i As Integer
Dim 暫存陣列 As Variant

Set 暫存表 = 系統資料庫.OpenRecordset("字體")
暫存表.MoveFirst

i = 0
Do Until 暫存表.EOF
   字體陣列(暫存表.Fields("編號")) = 暫存表.Fields("名稱")
   i = i + 1
   暫存表.MoveNext
Loop

暫存表.Close

End Sub

Private Sub mnu_Big5_Click()

初始字頻 = 2

If mnu_Big5.Checked = False Then
   mnu_常用字.Checked = False
   mnu_Big5.Checked = True
   mnu_簡化字總表.Checked = False
   mnu_漢語大字典.Checked = False
   mnu_楷書.Checked = False
   mnu_小篆.Checked = False
   mnu_金文.Checked = False
   mnu_金文圖形文字.Checked = False
   mnu_甲骨文.Checked = False
   mnu_楚系文字.Checked = False
   If 啟動字形孳乳 Then frm字形孳乳.txt構字式.FontName = "標楷體"
   系統字體 = "楷書"
End If

End Sub

Private Sub mnu_Big5選項_Click()

If mnu_Big5選項.Checked = True Then
   mnu_Big5選項.Checked = False
Else
   mnu_Big5選項.Checked = True
End If

End Sub

Private Sub mnu_cdp_Click()
frm版本.show 1
End Sub

Private Sub mnu_edit_複製到Word_Click()

If mnu_複製字形到Word.Checked = True Then
    mnu_複製_Click
    WordApp.Selection.Paste
ElseIf mnu_複製圖片到Word.Checked Then
    複製圖片到Word = True
    複製到Word的圖片大小 = WordApp.Selection.font.Size
    mnu_貼圖到Word_Click
    複製圖片到Word = False
Else
    mnu_複製_Click
    If 複製Big5字元 Then
        WordApp.Selection.Paste
    Else
        複製圖片到Word = True
        複製到Word的圖片大小 = WordApp.Selection.font.Size
        mnu_貼圖到Word_Click
        複製圖片到Word = False
    End If
End If

End Sub

Private Sub mnu_Tool_Click()

If InStr(1, txt構字式, "ヾ") > 0 Then
    mnu_Tool_ListLikeChar.Enabled = True
Else
    mnu_Tool_ListLikeChar.Enabled = False
End If

'If mnu_常用字.Checked = True Then
'    mnuToolListChar.Caption = "列出所有常用字..."
'    mnuToolListChar.Enabled = 啟動字形孳乳
'ElseIf mnu_Big5.Checked = True Then
'    mnuToolListChar.Caption = "列出五大碼所有字形..."
'    mnuToolListChar.Enabled = 啟動字形孳乳
'ElseIf mnu_簡化字總表.Checked = True Then
'    mnuToolListChar.Caption = "列出所有簡化字..."
'    mnuToolListChar.Enabled = 啟動字形孳乳
'ElseIf mnu_漢語大字典.Checked = True Then
'    mnuToolListChar.Caption = "列出《漢語大字典》所有字形..."
'    mnuToolListChar.Enabled = False
'ElseIf mnu_楷書.Checked = True Then
'    mnuToolListChar.Caption = "列出所有楷書字形..."
'    mnuToolListChar.Enabled = False
'ElseIf mnu_小篆.Checked = True Then
'    mnuToolListChar.Caption = "列出《說文解字》所有字形..."
'    mnuToolListChar.Enabled = 啟動字形孳乳
'ElseIf mnu_金文.Checked = True Then
'    mnuToolListChar.Caption = "列出《金文編》所有字形..."
'    mnuToolListChar.Enabled = 啟動字形孳乳
'ElseIf mnu_金文圖形文字.Checked = True Then
'    mnuToolListChar.Caption = "列出《金文編》附錄上所有字形..."
'    mnuToolListChar.Enabled = 啟動字形孳乳
'ElseIf mnu_甲骨文.Checked = True Then
'    mnuToolListChar.Caption = "列出《殷墟甲骨刻辭類纂》所有字形..."
'    mnuToolListChar.Enabled = 啟動字形孳乳
'ElseIf mnu_楚系文字.Checked = True Then
'    mnuToolListChar.Caption = "列出《楚系簡帛文字編》所有字形..."
'    mnuToolListChar.Enabled = 啟動字形孳乳
'End If

End Sub

Private Sub mnu_Tool_ListLikeChar_Click()

Dim tagFont As Integer, tagDuplicate As Integer, tagEnd As Integer

If Not 啟動出處檢字 Then frm出處檢字.show
frm出處檢字.SetFocus

tagFont = InStr(1, txt構字式, "ヾ")
tagDuplicate = InStr(1, txt構字式, ";")
tagEnd = InStr(1, txt構字式, "��")

If tagDuplicate = 0 Then
   frm出處檢字.cbo出處 = Mid(txt構字式, tagFont + 1, tagEnd - tagFont - 1)
Else
   frm出處檢字.cbo出處 = Mid(txt構字式, tagFont + 1, tagDuplicate - tagFont - 1)
End If

frm出處檢字.cbo出處_KeyPress vbKeyReturn

End Sub

Private Sub mnu_Unicode選項_Click()

If mnu_Unicode選項.Checked = True Then
   mnu_Unicode選項.Checked = False
Else
   mnu_Unicode選項.Checked = True
End If

End Sub

Private Sub mnu_八卦_Click()

共用視窗代碼 = 八卦代碼
frm部件範例.Form_Load
frm部件範例.show
frm部件範例.SetFocus

End Sub

Private Sub mnu_小篆_Click()

If mnu_小篆.Checked = False Then
   mnu_常用字.Checked = False
   mnu_Big5.Checked = False
   mnu_簡化字總表.Checked = False
   mnu_漢語大字典.Checked = False
   mnu_楷書.Checked = False
   mnu_小篆.Checked = True
   mnu_金文.Checked = False
   mnu_金文圖形文字.Checked = False
   mnu_甲骨文.Checked = False
   mnu_楚系文字.Checked = False
   If 啟動字形孳乳 Then frm字形孳乳.txt構字式.FontName = "北師大說文小篆"
   mnu_楷書.Checked = False
   系統字體 = "小篆"
End If

End Sub

Private Sub mnu_小篆選項_Click()

If mnu_小篆選項.Checked = True Then
   mnu_小篆選項.Checked = False
Else
   mnu_小篆選項.Checked = True
End If

End Sub

Private Sub mnu_中文大辭典選項_Click()

If mnu_中文大辭典選項.Checked = True Then
   mnu_中文大辭典選項.Checked = False
Else
   mnu_中文大辭典選項.Checked = True
End If

End Sub

Private Sub mnu_中華說文解字選項_Click()

If mnu_中華說文解字選項.Checked = True Then
   mnu_中華說文解字選項.Checked = False
Else
   mnu_中華說文解字選項.Checked = True
End If

End Sub

Private Sub mnu_出處檢字_Click()

共用視窗代碼 = 出處檢字代碼
frm出處檢字.show
frm出處檢字.SetFocus

End Sub

Private Sub mnu_甲骨文_Click()

If mnu_甲骨文.Checked = False Then
   mnu_常用字.Checked = False
   mnu_Big5.Checked = False
   mnu_簡化字總表.Checked = False
   mnu_漢語大字典.Checked = False
   mnu_楷書.Checked = False
   mnu_小篆.Checked = False
   mnu_金文.Checked = False
   mnu_金文圖形文字.Checked = False
   mnu_甲骨文.Checked = True
   mnu_楚系文字.Checked = False
   If 啟動字形孳乳 Then frm字形孳乳.txt構字式.FontName = "中研院甲骨文"
   mnu_楷書.Checked = False
   系統字體 = "甲骨文"
End If

End Sub

Private Sub mnu_金文圖形文字_Click()

If mnu_金文圖形文字.Checked = False Then
   mnu_常用字.Checked = False
   mnu_Big5.Checked = False
   mnu_簡化字總表.Checked = False
   mnu_漢語大字典.Checked = False
   mnu_楷書.Checked = False
   mnu_小篆.Checked = False
   mnu_金文.Checked = False
   mnu_金文圖形文字.Checked = True
   mnu_甲骨文.Checked = False
   mnu_楚系文字.Checked = False
   If 啟動字形孳乳 Then frm字形孳乳.txt構字式.FontName = "中研院金文"
   mnu_楷書.Checked = False
   系統字體 = "金文"
End If

End Sub

Private Sub mnu_智慧型複製到Word_Click()

If mnu_智慧型複製到Word.Checked = False Then
   mnu_複製字形到Word.Checked = False
   mnu_複製圖片到Word.Checked = False
   mnu_智慧型複製到Word.Checked = True
End If

End Sub

Private Sub mnu_貼圖到Word_Click()

On Error GoTo ExitSub

mnu_複製圖片_Click
If Len(暫存圖檔) > 0 Then
    WordApp.ActiveDocument.InlineShapes.AddPicture 暫存圖檔, False, True, WordApp.Selection.Range
     WordApp.Selection.MoveRight
'                選取構字式.SetRange Start:=選取構字式.End, End:=選取構字式.End + 1
'                選取構字式.font = 字型
    WordApp.ActiveDocument.InlineShapes(WordApp.ActiveDocument.InlineShapes.Count).AlternativeText = "●＝" & 替代文字
    WordApp.Selection.Paragraphs.BaseLineAlignment = wdBaselineAlignCenter
End If

ExitSub:

End Sub

Private Sub mnu_楚系文字_Click()

If mnu_楚系文字.Checked = False Then
   mnu_常用字.Checked = False
   mnu_Big5.Checked = False
   mnu_簡化字總表.Checked = False
   mnu_漢語大字典.Checked = False
   mnu_楷書.Checked = False
   mnu_小篆.Checked = False
   mnu_金文.Checked = False
   mnu_金文圖形文字.Checked = False
   mnu_甲骨文.Checked = False
   mnu_楚系文字.Checked = True
   If 啟動字形孳乳 Then frm字形孳乳.txt構字式.FontName = "中研院楚系簡帛文字"
   mnu_楷書.Checked = False
   系統字體 = "楚系文字"
End If

End Sub

Private Sub mnu_甲骨文字詁林選項_Click()

If mnu_甲骨文字詁林選項.Checked = True Then
   mnu_甲骨文字詁林選項.Checked = False
Else
   mnu_甲骨文字詁林選項.Checked = True
End If

End Sub

Private Sub mnu_甲骨文字集釋選項_Click()

If mnu_甲骨文字集釋選項.Checked = True Then
   mnu_甲骨文字集釋選項.Checked = False
Else
   mnu_甲骨文字集釋選項.Checked = True
End If

End Sub


Private Sub mnu_楚系文字出處選項_Click()

If mnu_楚系文字出處選項.Checked = True Then
   mnu_楚系文字出處選項.Checked = False
Else
   mnu_楚系文字出處選項.Checked = True
End If

End Sub

Private Sub mnu_楚系簡帛文字編選項_Click()

If mnu_楚系簡帛文字編選項.Checked = True Then
   mnu_楚系簡帛文字編選項.Checked = False
Else
   mnu_楚系簡帛文字編選項.Checked = True
End If

End Sub

Private Sub mnu_甲骨文選項_Click()

If mnu_甲骨文選項.Checked = True Then
   mnu_甲骨文選項.Checked = False
Else
   mnu_甲骨文選項.Checked = True
End If

End Sub

Private Sub mnu_楚系文字選項_Click()

If mnu_楚系文字選項.Checked = True Then
   mnu_楚系文字選項.Checked = False
Else
   mnu_楚系文字選項.Checked = True
End If

End Sub

Private Sub mnu_甲骨刻辭類纂選項_Click()

If mnu_甲骨刻辭類纂選項.Checked = True Then
   mnu_甲骨刻辭類纂選項.Checked = False
Else
   mnu_甲骨刻辭類纂選項.Checked = True
End If

End Sub

Private Sub mnu_字形索引_Click()

共用視窗代碼 = 字形索引代碼
frm字形索引.show
frm字形索引.SetFocus

End Sub

Private Sub mnu_字形孳乳包含異寫部件_Click()

If mnu_字形孳乳包含異寫部件.Checked = True Then
   mnu_字形孳乳包含異寫部件.Checked = False
Else
   mnu_字形孳乳包含異寫部件.Checked = True
End If

End Sub

Private Sub mnu_字形孳乳只列出常用字_Click()

初始字頻 = 5

'If mnu_字形孳乳只列出常用字.Checked = False Then
   'mnu_字形孳乳只列出常用字.Checked = True
   'mnu_字形孳乳只列出電腦用字.Checked = False
   'mnu_字形孳乳列出所有字形.Checked = False
'End If

End Sub


Private Sub mnu_字形孳乳只列出電腦用字_Click()

初始字頻 = 2

'If mnu_字形孳乳只列出電腦用字.Checked = False Then
   'mnu_字形孳乳只列出電腦用字.Checked = True
   'mnu_字形孳乳只列出常用字.Checked = False
   'mnu_字形孳乳列出所有字形.Checked = False
'End If

End Sub

Private Sub mnu_字形孳乳列出所有字形_Click()

初始字頻 = 1

'If mnu_字形孳乳列出所有字形.Checked = False Then
   'mnu_字形孳乳列出所有字形.Checked = True
   'mnu_字形孳乳只列出常用字.Checked = False
   'mnu_字形孳乳只列出電腦用字.Checked = False
'End If

End Sub

Private Sub mnu_字形孳乳採用SQL語法_Click()

If mnu_字形孳乳採用SQL語法.Checked = True Then
   mnu_字形孳乳採用SQL語法.Checked = False
   frm字形孳乳.Caption = "部件檢字"
Else
   mnu_字形孳乳採用SQL語法.Checked = True
   frm字形孳乳.Caption = "部件檢字(SQL Like)"
End If

End Sub

Private Sub mnu_字形孳乳逐級列出單一部件_Click()

初始逐級列出 = 1

If mnu_字形孳乳逐級列出單一部件.Checked = False Then
   mnu_字形孳乳逐級列出單一部件.Checked = True
   mnu_字形孳乳只列字形不列部件.Checked = False
End If

End Sub


Private Sub mnu_字形孳乳只列字形不列部件_Click()

初始逐級列出 = 0

If mnu_字形孳乳只列字形不列部件.Checked = False Then
   mnu_字形孳乳逐級列出單一部件.Checked = False
   mnu_字形孳乳只列字形不列部件.Checked = True
End If

End Sub


Private Sub mnu_字形孳乳遵照輸入部件順序_Click()

If mnu_字形孳乳遵照輸入部件順序.Checked = True Then
   mnu_字形孳乳遵照輸入部件順序.Checked = False
Else
   mnu_字形孳乳遵照輸入部件順序.Checked = True
End If

End Sub

Private Sub mnu_字形演變_Click()

'mnu_字形演變.Enabled = False
共用視窗代碼 = 字形演變代碼
frm字形演變.show
frm字形演變.SetFocus

End Sub

Private Sub mnu_字型_Click()

frm字型.show 1
cbo字型名稱_click
cbo字體大小_Click

End Sub

Private Sub mnu_金文_Click()

If mnu_金文.Checked = False Then
   mnu_常用字.Checked = False
   mnu_Big5.Checked = False
   mnu_簡化字總表.Checked = False
   mnu_漢語大字典.Checked = False
   mnu_楷書.Checked = False
   mnu_小篆.Checked = False
   mnu_金文.Checked = True
   mnu_金文圖形文字.Checked = False
   mnu_甲骨文.Checked = False
   mnu_楚系文字.Checked = False
   If 啟動字形孳乳 Then frm字形孳乳.txt構字式.FontName = "中研院金文"
   mnu_楷書.Checked = False
   系統字體 = "金文"
End If

End Sub

Private Sub mnu_金文詁林選項_Click()

If mnu_金文詁林選項.Checked = True Then
   mnu_金文詁林選項.Checked = False
Else
   mnu_金文詁林選項.Checked = True
End If

End Sub

Private Sub mnu_金文編選項_Click()

If mnu_金文編選項.Checked = True Then
   mnu_金文編選項.Checked = False
Else
   mnu_金文編選項.Checked = True
End If

End Sub

Private Sub mnu_金文選項_Click()

If mnu_金文選項.Checked = True Then
   mnu_金文選項.Checked = False
Else
   mnu_金文選項.Checked = True
End If

End Sub

Private Sub mnu_建宏漢語大字典選項_Click()

If mnu_建宏漢語大字典選項.Checked = True Then
   mnu_建宏漢語大字典選項.Checked = False
Else
   mnu_建宏漢語大字典選項.Checked = True
End If

End Sub

Private Sub mnu_殷周金文集成器號選項_Click()

If mnu_殷周金文集成器號選項.Checked = True Then
   mnu_殷周金文集成器號選項.Checked = False
Else
   mnu_殷周金文集成器號選項.Checked = True
End If

End Sub

Private Sub mnu_殷周金文集成引得選項_Click()

If mnu_殷周金文集成引得選項.Checked = True Then
   mnu_殷周金文集成引得選項.Checked = False
Else
   mnu_殷周金文集成引得選項.Checked = True
End If

End Sub

Private Sub mnu_常用字_Click()

初始字頻 = 5

If mnu_常用字.Checked = False Then
   mnu_常用字.Checked = True
   mnu_Big5.Checked = False
   mnu_簡化字總表.Checked = False
   mnu_漢語大字典.Checked = False
   mnu_楷書.Checked = False
   mnu_小篆.Checked = False
   mnu_金文.Checked = False
   mnu_金文圖形文字.Checked = False
   mnu_甲骨文.Checked = False
   mnu_楚系文字.Checked = False
   If 啟動字形孳乳 Then frm字形孳乳.txt構字式.FontName = "標楷體"
   系統字體 = "楷書"
End If

End Sub

Private Sub mnu_康熙字典部首_Click()

共用視窗代碼 = 康熙部首代碼
frm部件範例.Form_Load
frm部件範例.show
frm部件範例.SetFocus

End Sub

Private Sub mnu_異體字根_Click()
'mnu_異體字根.Enabled = False
共用視窗代碼 = 異體字根代碼
frm異體字根.show
frm異體字根.SetFocus

End Sub

Private Sub mnu_圖片_Click()

frm圖片設定.show 1

End Sub

Private Sub mnu_構字符號_Click()

共用視窗代碼 = 構字符號代碼
frm部件範例.Form_Load
frm部件範例.show
frm部件範例.SetFocus

End Sub

Private Sub mnu_圖形文字_Click()

共用視窗代碼 = 圖形文字代碼
frm部件範例.Form_Load
frm部件範例.show
frm部件範例.SetFocus

End Sub


Private Sub mnu_部件代碼_Click(Index As Integer)
Dim i As Integer

'For i = 符號代碼 To 部件外字代碼
'    mnu_部件代碼(i).Checked = False
'Next i

'mnu_部件代碼(Index).Checked = True
共用視窗代碼 = Index
frm部件範例.Form_Load
frm部件範例.show
frm部件範例.SetFocus

End Sub

Private Sub mnu_結束_Click()
'計算結束視窗
Unload mdi漢字字形
End

End Sub

Private Sub mnu_字形孳乳_Click()
'mnu_字形孳乳.Enabled = False
共用視窗代碼 = 字形孳乳代碼
frm字形孳乳.show
frm字形孳乳.SetFocus

End Sub

Private Sub mnu_字形結構_Click()
'mnu_字形結構.Enabled = False
共用視窗代碼 = 字形結構代碼
frm字形結構.show
frm字形結構.SetFocus

End Sub

Private Sub mnu_異體字表_Click()
'mnu_異體字表.Enabled = False
共用視窗代碼 = 異體字表代碼
frm異體字表.show
frm異體字表.SetFocus

End Sub


Private Sub mnu_水平並排_Click()
mdi漢字字形.Arrange 1
End Sub

Private Sub mnu_垂直並排_Click()
'frm異體字表.SetFocus
'frm字形結構.SetFocus
'frm字形孳乳.SetFocus

mdi漢字字形.Arrange 2
End Sub

Private Sub mnu_重疊顯示_Click()
'frm異體字表.SetFocus
'frm字形結構.SetFocus
'frm字形孳乳.SetFocus

mdi漢字字形.Arrange 0
End Sub

Private Sub mnu_排列圖示_Click()
mdi漢字字形.Arrange 3
End Sub

Private Sub mnu_最佳瀏覽_click()

frm預設瀏覽.show 1

If Not 改變預設瀏覽 Then Exit Sub

Select Case 預設瀏覽模式
    Case 1: 預設瀏覽一
    Case 2: 預設瀏覽二
    Case 3: 預設瀏覽三
    Case 4: 預設瀏覽四
End Select

End Sub

Private Sub mnu_楷書_Click()

初始字頻 = 1

If mnu_楷書.Checked = False Then
   mnu_常用字.Checked = False
   mnu_Big5.Checked = False
   mnu_簡化字總表.Checked = False
   mnu_漢語大字典.Checked = False
   mnu_楷書.Checked = True
   mnu_小篆.Checked = False
   mnu_金文.Checked = False
   mnu_金文圖形文字.Checked = False
   mnu_甲骨文.Checked = False
   mnu_楚系文字.Checked = False
   If 啟動字形孳乳 Then frm字形孳乳.txt構字式.FontName = "標楷體"
   系統字體 = "楷書"
End If

End Sub

Private Sub mnu_漢語大字典_Click()

初始字頻 = 1

If mnu_漢語大字典.Checked = False Then
   mnu_常用字.Checked = False
   mnu_Big5.Checked = False
   mnu_簡化字總表.Checked = False
   mnu_漢語大字典.Checked = True
   mnu_楷書.Checked = False
   mnu_小篆.Checked = False
   mnu_金文.Checked = False
   mnu_金文圖形文字.Checked = False
   mnu_甲骨文.Checked = False
   mnu_楚系文字.Checked = False
   If 啟動字形孳乳 Then frm字形孳乳.txt構字式.FontName = "標楷體"
   系統字體 = "楷書"
End If

End Sub

Private Sub mnu_說文解字部首_Click()

共用視窗代碼 = 說文部首代碼
frm部件範例.Form_Load
frm部件範例.show
frm部件範例.SetFocus

End Sub

Private Sub mnu_說文解字詁林選項_Click()

If mnu_說文解字詁林選項.Checked = True Then
   mnu_說文解字詁林選項.Checked = False
Else
   mnu_說文解字詁林選項.Checked = True
End If

End Sub

Private Sub mnu_說文解形順序_Click()

If mnu_說文解形順序.Checked = False Then
   mnu_說文解形順序.Checked = True
   初始解形列出 = 1
Else
   mnu_說文解形順序.Checked = False
   初始解形列出 = 0
End If

End Sub

Private Sub mnu_遠東漢語大字典選項_Click()

If mnu_遠東漢語大字典選項.Checked = True Then
   mnu_遠東漢語大字典選項.Checked = False
Else
   mnu_遠東漢語大字典選項.Checked = True
End If

End Sub

Private Sub mnu_複製_Click()

Dim 樹狀結構 As TList, 節點標記 As String, 節點類別 As Integer, CopyText As String

CopyText = ""
節點類別 = -1
複製Big5字元 = False

Select Case 現用視窗代碼

Case mdi漢字字形代碼

    Select Case 現用控制項代碼
    
    Case mdi漢字字形_編號方塊
        CopyText = txt編號.SelText
        GoTo CopyBegin
    
    Case mdi漢字字形_外字集方塊
        CopyText = txt外字集.SelText
        GoTo CopyBegin
    
    Case mdi漢字字形_字形方塊
        CopyText = txt字形.SelText
        GoTo CopyBegin
    
    Case mdi漢字字形_重文方塊
        CopyText = txt重文.SelText
        GoTo CopyBegin
    
    Case mdi漢字字形_古漢字方塊
        CopyText = txt古漢字.SelText
        GoTo CopyBegin
    
    Case mdi漢字字形_總筆畫方塊
        CopyText = txt總筆畫.SelText
        GoTo CopyBegin
    
    Case mdi漢字字形_部首方塊
        CopyText = txt部首.SelText
        GoTo CopyBegin
    
    Case mdi漢字字形_扣除部首筆畫方塊
        CopyText = txt扣除部首筆畫.SelText
        GoTo CopyBegin
    
    Case mdi漢字字形_注音方塊
        CopyText = txt注音.SelText
        GoTo CopyBegin
    
    Case mdi漢字字形_內碼方塊
        CopyText = txt內碼.SelText
        GoTo CopyBegin
    
    Case mdi漢字字形_倉頡碼方塊
        CopyText = txt倉頡碼.SelText
        GoTo CopyBegin
    
    Case mdi漢字字形_構字式方塊
        CopyText = txt構字式.SelText
        GoTo CopyBegin
    
    Case mdi漢字字形_冊數方塊
        CopyText = txt冊數.SelText
        GoTo CopyBegin
    
    Case mdi漢字字形_組字字數方塊
        CopyText = txt組字字數.SelText
        GoTo CopyBegin
    
    Case mdi漢字字形_組字字數含異寫方塊
        CopyText = txt組字字數含異寫.SelText
        GoTo CopyBegin
    
    Case Else
        Exit Sub
        
    End Select

Case Big5字根代碼 To 構字符號代碼
    If frm部件範例.tree字形樹狀結構.ListIndex > -1 Then
        Set 樹狀結構 = frm部件範例.tree字形樹狀結構
    Else
        Exit Sub
    End If


Case 字形孳乳代碼
    If 現用控制項代碼 = 字形孳乳_檢字方塊 Then
        CopyText = frm字形孳乳.txt構字式.SelText
        GoTo CopyBegin
    ElseIf 現用控制項代碼 = 字形孳乳_樹狀結構 Then
        If frm字形孳乳.tree字形樹狀結構.ListIndex > -1 Then
            Set 樹狀結構 = frm字形孳乳.tree字形樹狀結構
        End If
    Else
        Exit Sub
    End If
    
Case 出處檢字代碼
    If 現用控制項代碼 = 出處檢字_檢字方塊 Then
        CopyText = frm出處檢字.cbo出處.SelText
        GoTo CopyBegin
    ElseIf 現用控制項代碼 = 出處檢字_樹狀結構 Then
        If frm出處檢字.tree字形樹狀結構.ListIndex > -1 Then
            Set 樹狀結構 = frm出處檢字.tree字形樹狀結構
        End If
    Else
        Exit Sub
    End If
    
Case 字形結構代碼
    If frm字形結構.tree字形樹狀結構.ListIndex > -1 Then
        Set 樹狀結構 = frm字形結構.tree字形樹狀結構
    Else
        Exit Sub
    End If
    
Case 字形演變代碼
    If frm字形演變.tree字形樹狀結構.ListIndex > -1 Then
        Set 樹狀結構 = frm字形演變.tree字形樹狀結構
    Else
        Exit Sub
    End If
    
Case 異體字表代碼
    If frm異體字表.tree字形樹狀結構.ListIndex > -1 Then
        Set 樹狀結構 = frm異體字表.tree字形樹狀結構
    Else
        Exit Sub
    End If
    
Case 異體字根代碼
    If frm異體字根.tree字形樹狀結構.ListIndex > -1 Then
        Set 樹狀結構 = frm異體字根.tree字形樹狀結構
    Else
        Exit Sub
    End If
    
Case 字形索引代碼
    If frm字形索引.tree字形樹狀結構.ListIndex > -1 Then
        Set 樹狀結構 = frm字形索引.tree字形樹狀結構
    Else
        Exit Sub
    End If
    
Case Else
    Exit Sub
End Select

節點標記 = 樹狀結構.ItemTag(樹狀結構.ListIndex)
If Len(節點標記) > 0 Then 節點類別 = CInt(Left(節點標記, 1))

Select Case 節點類別

Case 字形節點標記
    If 複製風格碼 Then
        CopyText = txt構字式
    Else
        CopyText = txt字形
    End If
Case 構字式節點標記
    CopyText = txt構字式
Case 器名節點標記
    CopyText = Right(節點標記, Len(節點標記) - 1)
Case 其他節點標記
    CopyText = 樹狀結構.List(樹狀結構.ListIndex)

End Select

On Error GoTo CopyErr
CopyBegin:

If Len(CopyText) > 0 Then
    Clipboard.Clear
    If Len(CopyText) = 1 Then
        楷書檢字表.Index = "字形"
        楷書檢字表.Seek "=", CopyText
        If Not 楷書檢字表.NoMatch Then
            If 楷書檢字表.Fields("編號") <= 13060 Then 複製Big5字元 = True
        End If
    End If
    Clipboard.SetText CopyText
End If

CopyErr:

End Sub

Private Sub mnu_複製Unicode字形到Word_Click()

If mnu_複製Unicode字形到Word.Checked = True Then
   mnu_複製Unicode字形到Word.Checked = False
Else
   mnu_複製Unicode字形到Word.Checked = True
End If

End Sub

Private Sub mnu_複製字形到Word_Click()

If mnu_複製字形到Word.Checked = False Then
   mnu_複製字形到Word.Checked = True
   mnu_複製圖片到Word.Checked = False
   mnu_智慧型複製到Word.Checked = False
End If

End Sub


Private Sub mnu_複製特殊圖片_Click()

Dim 字型 As CDPFONT, 字形 As String, Success As Boolean

字型.Name = "cdp000"
字型.Size = 9
字形 = "丫"
替代文字 = "��"

bmpcount = bmpcount + 1
暫存圖檔 = 暫存目錄 & "\" & "~hz" & CStr(bmpcount) & ".bmp"
字形轉成圖片 字型, 字形, 暫存圖檔, 圖片解析度, Success

WordApp.ActiveDocument.InlineShapes.AddPicture 暫存圖檔, False, True, WordApp.Selection.Range
WordApp.Selection.MoveRight
WordApp.ActiveDocument.InlineShapes(WordApp.ActiveDocument.InlineShapes.Count).AlternativeText = "●＝" & 替代文字
WordApp.Selection.Paragraphs.BaseLineAlignment = wdBaselineAlignCenter
    
End Sub

Private Sub mnu_複製圖片_Click()

Dim 樹狀結構 As TList, 字型 As CDPFONT, 字形 As String, Success As Boolean

Select Case 現用視窗代碼

Case Big5字根代碼 To 構字符號代碼
    If frm部件範例.tree字形樹狀結構.ListIndex > -1 Then
        Set 樹狀結構 = frm部件範例.tree字形樹狀結構
    Else
        Exit Sub
    End If

Case 字形孳乳代碼
    If 現用控制項代碼 = 字形孳乳_檢字方塊 Then
        GoTo CopyGlyphErr
    ElseIf 現用控制項代碼 = 字形孳乳_樹狀結構 Then
        If frm字形孳乳.tree字形樹狀結構.ListIndex > -1 Then
            Set 樹狀結構 = frm字形孳乳.tree字形樹狀結構
        End If
    Else
        Exit Sub
    End If
    
Case 出處檢字代碼
    If 現用控制項代碼 = 出處檢字_檢字方塊 Then
        GoTo CopyGlyphErr
    ElseIf 現用控制項代碼 = 出處檢字_樹狀結構 Then
        If frm出處檢字.tree字形樹狀結構.ListIndex > -1 Then
            Set 樹狀結構 = frm出處檢字.tree字形樹狀結構
        End If
    Else
        Exit Sub
    End If
    
Case 字形結構代碼
    If frm字形結構.tree字形樹狀結構.ListIndex > -1 Then
        Set 樹狀結構 = frm字形結構.tree字形樹狀結構
    Else
        Exit Sub
    End If
    
Case 字形演變代碼
    If frm字形演變.tree字形樹狀結構.ListIndex > -1 Then
        Set 樹狀結構 = frm字形演變.tree字形樹狀結構
    Else
        Exit Sub
    End If
    
Case 異體字表代碼
    If frm異體字表.tree字形樹狀結構.ListIndex > -1 Then
        Set 樹狀結構 = frm異體字表.tree字形樹狀結構
    Else
        Exit Sub
    End If
    
Case 異體字根代碼
    If frm異體字根.tree字形樹狀結構.ListIndex > -1 Then
        Set 樹狀結構 = frm異體字根.tree字形樹狀結構
    Else
        Exit Sub
    End If
    
Case 字形索引代碼
    If frm字形索引.tree字形樹狀結構.ListIndex > -1 Then
        Set 樹狀結構 = frm字形索引.tree字形樹狀結構
    Else
        Exit Sub
    End If
    
Case Else
    Exit Sub
End Select


字型.Name = 樹狀結構.ItemFontName(樹狀結構.ListIndex)
字型.Size = 圖片字型大小
If 複製圖片到Word And 複製到Word的圖片大小 > 0 Then
    字型.Size = 複製到Word的圖片大小
End If

字型.Bold = 樹狀結構.ItemFontBold(樹狀結構.ListIndex)
字型.Italic = 樹狀結構.ItemFontItalic(樹狀結構.ListIndex)
字型.Underline = 樹狀結構.ItemFontUnder(樹狀結構.ListIndex)
字型.StrikeThrough = 樹狀結構.ItemFontStrike(樹狀結構.ListIndex)
字型.color = 0

字形 = 樹狀結構.List(樹狀結構.ListIndex)

If Len(字形) <> 1 Then GoTo CopyGlyphErr

bmpcount = bmpcount + 1
暫存圖檔 = 暫存目錄 & "\" & "~hz" & CStr(bmpcount) & ".bmp"
字形轉成圖片 字型, 字形, 暫存圖檔, 圖片解析度, Success

替代文字 = Clipboard.GetText

Clipboard.Clear
Clipboard.SetData LoadPicture(暫存圖檔), vbCFBitmap

On Error GoTo CopyGlyphErr

CopyGlyphErr:

End Sub

Private Sub mnu_複製圖片到Word_Click()

If mnu_複製圖片到Word.Checked = False Then
   mnu_複製字形到Word.Checked = False
   mnu_複製圖片到Word.Checked = True
   mnu_智慧型複製到Word.Checked = False
End If

End Sub

Private Sub mnu_選項_Click()

If 啟動字形孳乳 Then
    If mnu_字形孳乳採用SQL語法.Checked = True Then
        mnu_字形孳乳逐級列出單一部件.Enabled = False
        mnu_字形孳乳只列字形不列部件.Enabled = False
    Else
        mnu_字形孳乳逐級列出單一部件.Enabled = True
        mnu_字形孳乳只列字形不列部件.Enabled = True
    End If
    If 系統字體 = "楷書" Then
        mnu_字形孳乳包含異寫部件.Enabled = True
    Else
        mnu_字形孳乳包含異寫部件.Enabled = False
    End If
    mnu_字形孳乳採用SQL語法.Enabled = True
Else
    mnu_字形孳乳逐級列出單一部件.Enabled = False
    mnu_字形孳乳只列字形不列部件.Enabled = False
    mnu_字形孳乳包含異寫部件.Enabled = False
    mnu_字形孳乳採用SQL語法.Enabled = False
End If

End Sub

Private Sub mnu_儲存視窗設定_Click()

If mnu_儲存視窗設定.Checked = False Then
   mnu_儲存視窗設定.Checked = True
Else
   mnu_儲存視窗設定.Checked = False
End If

End Sub

Private Sub mnu_說明主題_Click()
Dim istring As String, iret As Integer

Screen.MousePointer = ccHourglass
istring = "winhlp32.exe " & App.path & "\cdphanzi.hlp"
Shell istring, 1
Screen.MousePointer = ccDefault

End Sub

Private Sub mnu_複製到剪貼簿_Click()

If mnu_複製到剪貼簿.Checked = False Then
   mnu_複製到剪貼簿.Checked = True
Else
   mnu_複製到剪貼簿.Checked = False
End If

End Sub

Private Sub mnu_簡化字總表_Click()

初始字頻 = 1

If mnu_簡化字總表.Checked = False Then
   mnu_常用字.Checked = False
   mnu_Big5.Checked = False
   mnu_簡化字總表.Checked = True
   mnu_漢語大字典.Checked = False
   mnu_楷書.Checked = False
   mnu_小篆.Checked = False
   mnu_金文.Checked = False
   mnu_金文圖形文字.Checked = False
   mnu_甲骨文.Checked = False
   mnu_楚系文字.Checked = False
   If 啟動字形孳乳 Then frm字形孳乳.txt構字式.FontName = "標楷體"
   系統字體 = "楷書"
End If


End Sub

Private Sub mnu_簡易瀏覽_Click()

frm簡易瀏覽.show 1

If Not 改變預設瀏覽 Then Exit Sub

Select Case 預設瀏覽模式
    Case 1: 簡易瀏覽一
    Case 2: 簡易瀏覽二
    Case 3: 簡易瀏覽三
    Case 4: 簡易瀏覽四
End Select

End Sub


Private Sub mnu_簡牘_Click()

共用視窗代碼 = 簡牘代碼
frm部件範例.Form_Load
frm部件範例.show
frm部件範例.SetFocus

End Sub

Private Sub mnu_顯示風格碼_Click()

If mnu_顯示風格碼.Checked = False Then
   mnu_顯示風格碼.Checked = True
Else
   mnu_顯示風格碼.Checked = False
End If

End Sub

Private Sub mnuToolListChar_Click()

frm字形孳乳.列出選定字集中的所有字形

End Sub

Private Sub mnu貼上_Click()

Select Case 現用視窗代碼

Case mdi漢字字形代碼

    If 現用控制項代碼 = mdi漢字字形_編號方塊 Then
        txt編號.SelText = Clipboard.GetText
    ElseIf 現用控制項代碼 = mdi漢字字形_字形方塊 Then
        txt字形.SelText = Clipboard.GetText
    ElseIf 現用控制項代碼 = mdi漢字字形_構字式方塊 Then
        txt構字式.SelText = Clipboard.GetText
    End If

Case 字形孳乳代碼
    If 現用控制項代碼 = 字形孳乳_檢字方塊 Then
        frm字形孳乳.txt構字式.SelText = Clipboard.GetText
    End If
    
Case 出處檢字代碼
    If 現用控制項代碼 = 出處檢字_檢字方塊 Then
        frm出處檢字.cbo出處.Text = Clipboard.GetText
    End If
    
    
Case Else
    Exit Sub
End Select

End Sub

Private Sub mnu編輯_Click()

On Error Resume Next
Set WordApp = GetObject(, "word.application")
If Err.Number <> 0 Then
    WordWasNotRunning = True
    Err.Clear
Else
    WordWasNotRunning = False
End If

mnu_edit_複製到Word.Enabled = False
If Not WordWasNotRunning Then
    If WordApp.Documents.Count > 0 Then mnu_edit_複製到Word.Enabled = True
End If

End Sub

Private Sub txt內碼_GotFocus()

txt內碼.SelStart = 0
txt內碼.SelLength = Len(txt內碼)
現用視窗代碼 = mdi漢字字形代碼
現用控制項代碼 = mdi漢字字形_內碼方塊

End Sub

Private Sub txt冊數_GotFocus()

txt冊數.SelStart = 0
txt冊數.SelLength = Len(txt冊數.Text)
現用視窗代碼 = mdi漢字字形代碼
現用控制項代碼 = mdi漢字字形_冊數方塊

End Sub


Private Sub txt古漢字_GotFocus()

txt古漢字.SelStart = 0
txt古漢字.SelLength = Len(txt古漢字.Text)
現用視窗代碼 = mdi漢字字形代碼
現用控制項代碼 = mdi漢字字形_古漢字方塊

End Sub

Private Sub txt外字集_GotFocus()

txt外字集.SelStart = 0
txt外字集.SelLength = Len(txt外字集.Text)
現用視窗代碼 = mdi漢字字形代碼
現用控制項代碼 = mdi漢字字形_外字集方塊

End Sub

Private Sub txt外字集_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)

Select Case txt外字集.Text

    Case 0: txt外字集.ToolTipText = "標楷體(細明體)"
    Case 1: txt外字集.ToolTipText = "標楷體(細明體)外字集一"
    Case 2: txt外字集.ToolTipText = "標楷體(細明體)外字集二"
    Case 3: txt外字集.ToolTipText = "標楷體(細明體)外字集三"
    Case 4: txt外字集.ToolTipText = "標楷體(細明體)外字集四"
    Case 5: txt外字集.ToolTipText = "標楷體(細明體)外字集五"
    Case 6: txt外字集.ToolTipText = "標楷體(細明體)外字集六"
    Case 7: txt外字集.ToolTipText = "標楷體(細明體)外字集七"
    Case 8: txt外字集.ToolTipText = "標楷體(細明體)外字集八"
    Case 9: txt外字集.ToolTipText = "標楷體(細明體)外字集九"

End Select

End Sub

Private Sub txt字形_Change()

txt字形.SelStart = 0
txt字形.SelLength = Len(txt字形.Text)
txt字形.FontSize = 12

If mnu_複製到剪貼簿.Checked = True Then
   On Error GoTo Label1
   Clipboard.Clear
   Clipboard.SetText txt字形.Text
Label1: End If

End Sub

Private Sub txt字形_GotFocus()

txt字形.SelStart = 0
txt字形.SelLength = Len(txt字形.Text)
現用視窗代碼 = mdi漢字字形代碼
現用控制項代碼 = mdi漢字字形_字形方塊

End Sub

Private Sub txt字形_KeyPress(KeyAscii As Integer)
Dim 字形 As String, 編號 As Long, 字體 As Integer, temp As Integer
Dim 楷書編號 As Long, 小篆編號 As Long, 金文編號 As Long, 甲骨文編號 As Long, 楚系文字編號 As Long
Dim 暫存組字式 As String

mdi漢字字形.txt字形.FontName = "標楷體"
If KeyAscii = vbKeyReturn Then
   If Len(Trim(txt字形.Text)) <> 0 Then
      字形 = txt字形.Text
      Set 檢字表 = 楷書檢字表
      檢字表.Index = "字形"
      檢字表.Seek "=", 字形
      If 檢字表.NoMatch Then
         楷書編號 = -1
      Else
         楷書編號 = 檢字表.Fields("編號")
         If Not IsNull(檢字表.Fields("小篆編號")) Then
            小篆編號 = 檢字表.Fields("小篆編號")
         Else
            小篆編號 = -1
         End If
         If Not IsNull(檢字表.Fields("金文編號")) Then
            金文編號 = 檢字表.Fields("金文編號")
         Else
            金文編號 = -1
         End If
         If Not IsNull(檢字表.Fields("甲骨文編號")) Then
            甲骨文編號 = 檢字表.Fields("甲骨文編號")
         Else
            甲骨文編號 = -1
         End If
         If Not IsNull(檢字表.Fields("楚系文字編號")) Then
            楚系文字編號 = 檢字表.Fields("楚系文字編號")
         Else
           楚系文字編號 = -1
         End If
      End If
            
      If 楷書編號 > 0 Then
         擷取屬性 "標楷體", txt字形.Text, 楷書編號
         擷取構字式 "標楷體", txt字形.Text, 楷書編號
         If 系統字體 = "小篆" And 小篆編號 > 0 Then
            If 啟動字形結構 Then frm字形結構.載入字形 "北師大說文小篆", txt字形.Text, 小篆編號
            If 啟動異體字表 Then frm異體字表.載入字形 "北師大說文小篆", txt字形.Text, 小篆編號
            If 啟動字形演變 Then frm字形演變.載入字形 "北師大說文小篆", txt字形.Text, 小篆編號
            If 啟動字形索引 Then frm字形索引.載入字形 "北師大說文小篆", txt字形.Text, 小篆編號
            If 啟動異體字根 Then frm異體字根.載入字形 "北師大說文小篆", txt字形.Text, 小篆編號
         ElseIf 系統字體 = "金文" And 金文編號 > 0 Then
            If 啟動字形結構 Then frm字形結構.載入字形 "中研院金文", txt字形.Text, 金文編號
            If 啟動異體字表 Then frm異體字表.載入字形 "中研院金文", txt字形.Text, 金文編號
            If 啟動字形演變 Then frm字形演變.載入字形 "中研院金文", txt字形.Text, 金文編號
            If 啟動字形索引 Then frm字形索引.載入字形 "中研院金文", txt字形.Text, 金文編號
            If 啟動異體字根 Then frm異體字根.載入字形 "中研院金文", txt字形.Text, 金文編號
         ElseIf 系統字體 = "甲骨文" And 甲骨文編號 > 0 Then
            If 啟動字形結構 Then frm字形結構.載入字形 "中研院甲骨文", txt字形.Text, 甲骨文編號
            If 啟動異體字表 Then frm異體字表.載入字形 "中研院甲骨文", txt字形.Text, 甲骨文編號
            If 啟動字形演變 Then frm字形演變.載入字形 "中研院甲骨文", txt字形.Text, 甲骨文編號
            If 啟動字形索引 Then frm字形索引.載入字形 "中研院甲骨文", txt字形.Text, 甲骨文編號
            If 啟動異體字根 Then frm異體字根.載入字形 "中研院甲骨文", txt字形.Text, 甲骨文編號
         ElseIf 系統字體 = "楚系文字" And 楚系文字編號 > 0 Then
            If 啟動字形結構 Then frm字形結構.載入字形 "中研院楚系簡帛文字", txt字形.Text, 楚系文字編號
            If 啟動異體字表 Then frm異體字表.載入字形 "中研院楚系簡帛文字", txt字形.Text, 楚系文字編號
            If 啟動字形演變 Then frm字形演變.載入字形 "中研院楚系簡帛文字", txt字形.Text, 楚系文字編號
            If 啟動字形索引 Then frm字形索引.載入字形 "中研院楚系簡帛文字", txt字形.Text, 楚系文字編號
            If 啟動異體字根 Then frm異體字根.載入字形 "中研院楚系簡帛文字", txt字形.Text, 楚系文字編號
         Else
            If 啟動字形結構 Then frm字形結構.載入字形 "標楷體", txt字形.Text, 楷書編號
            If 啟動異體字表 Then frm異體字表.載入字形 "標楷體", txt字形.Text, 楷書編號
            If 啟動字形演變 Then frm字形演變.載入字形 "標楷體", txt字形.Text, 楷書編號
            If 啟動字形索引 Then frm字形索引.載入字形 "標楷體", txt字形.Text, 楷書編號
            If 啟動異體字根 Then frm異體字根.載入字形 "標楷體", txt字形.Text, 楷書編號
         End If
      Else
         '找不到
         mdi漢字字形.txt組字字數.Text = ""
         mdi漢字字形.txt字形.Text = ""
         mdi漢字字形.txt總筆畫.Text = ""
         mdi漢字字形.txt部首.Text = ""
         mdi漢字字形.txt扣除部首筆畫.Text = ""
         mdi漢字字形.txt注音.Text = ""
         mdi漢字字形.txt內碼.Text = ""
         mdi漢字字形.txt倉頡碼.Text = ""
         'mdi漢字字形.txt構字式.Text = ""
         mdi漢字字形.txt冊數.Text = ""
         
         '給定空白值
         If Len(狀態列1) > 10 Then
            狀態列 = "0 個字根" & 狀態列1
         Else
            狀態列 = "0 個字根"
         End If
         mdi漢字字形.txt狀態 = 狀態列
      End If
   End If
End If
'mdi漢字字形.txt字形.FontName = "標楷體"
'If KeyAscii = vbKeyReturn Then
'   字形 = txt字形.Text
'   檢字表.Index = "字形"
'   檢字表.Seek "=", 字形
'   If Not 檢字表.NoMatch() Then
'      編號 = 檢字表.Fields("編號")
'      擷取屬性 "標楷體", 字形, 編號
'      擷取構字式 "標楷體", 字形, 編號
'      If 啟動字形結構 Then frm字形結構.載入字形 "標楷體", mdi漢字字形.txt字形.Text, 編號
'      If 啟動異體字表 Then frm異體字表.載入字形 "標楷體", mdi漢字字形.txt字形.Text, 編號
'      If 啟動字形演變 Then frm字形演變.載入字形 "標楷體", mdi漢字字形.txt字形.Text, 編號
'      If 啟動字形索引 Then frm字形索引.載入字形 "標楷體", mdi漢字字形.txt字形.Text, 編號
'      If 啟動異體字根 Then frm異體字根.載入字形 "標楷體", mdi漢字字形.txt字形.Text, 編號
'   Else
         '找不到
'         mdi漢字字形.txt組字字數.Text = ""
'         'mdi漢字字形.txt字形.Text = ""
'         mdi漢字字形.txt總筆畫.Text = ""
'         mdi漢字字形.txt部首.Text = ""
'         mdi漢字字形.txt扣除部首筆畫.Text = ""
'         mdi漢字字形.txt注音.Text = ""
'         mdi漢字字形.txt內碼.Text = ""
'         mdi漢字字形.txt倉頡碼.Text = ""
'         mdi漢字字形.txt構字式.Text = ""
'         mdi漢字字形.txt冊數.Text = ""
'
         '給定空白值
'         If Len(狀態列1) > 10 Then
'            狀態列 = "0 個字根" & 狀態列1
'         Else
'            狀態列 = "0 個字根"
'         End If
'         mdi漢字字形.txt狀態 = 狀態列
'   End If
'End If
End Sub

Private Sub txt扣除部首筆畫_GotFocus()

txt扣除部首筆畫.SelStart = 0
txt扣除部首筆畫.SelLength = Len(txt扣除部首筆畫.Text)
現用視窗代碼 = mdi漢字字形代碼
現用控制項代碼 = mdi漢字字形_扣除部首筆畫方塊

End Sub

Private Sub txt注音_GotFocus()

txt注音.SelStart = 0
txt注音.SelLength = Len(txt注音.Text)
現用視窗代碼 = mdi漢字字形代碼
現用控制項代碼 = mdi漢字字形_注音方塊

End Sub




Private Sub txt重文_GotFocus()

txt重文.SelStart = 0
txt重文.SelLength = Len(txt重文.Text)
現用視窗代碼 = mdi漢字字形代碼
現用控制項代碼 = mdi漢字字形_重文方塊

End Sub

Private Sub txt重文_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)

If IsNumeric(txt重文.Text) Then txt重文.ToolTipText = 字體陣列(CInt(txt重文.Text))

End Sub

Private Sub txt倉頡碼_GotFocus()

txt倉頡碼.SelStart = 0
txt倉頡碼.SelLength = Len(txt倉頡碼.Text)
現用視窗代碼 = mdi漢字字形代碼
現用控制項代碼 = mdi漢字字形_倉頡碼方塊

End Sub

Private Sub txt組字字數含異寫_GotFocus()

現用視窗代碼 = mdi漢字字形代碼
現用控制項代碼 = mdi漢字字形_組字字數含異寫方塊

End Sub

Private Sub txt構字式_Change()
If mnu_複製到剪貼簿.Checked = True Then
   If Not 檢字表.NoMatch Then
      If 檢字表.Fields("字體") <> 0 Then
         On Error GoTo Lable2
         Clipboard.Clear
         Clipboard.SetText txt構字式.Text
Lable2: End If
   End If
   If 複製風格碼 Then Clipboard.SetText txt構字式.Text
End If

End Sub

'Private Sub txt構字式_DragDrop(Source As Control, X As Single, Y As Single)
'Dim 字形 As String
'Dim 左半部 As String
'Dim 右半部 As String

'左半部 = Left(txt構字式, txt構字式.SelStart)'
'右半部 = Right$(txt構字式, Len(txt構字式) - txt構字式.SelStart)
  
'If TypeOf Source Is ListBox Then
'   If Source.ListIndex < 0 Then Exit Sub
'   Source.Drag 2       ' End Dragging
'   txt構字式 = 左半部 & Source.List(Source.ListIndex) & 右半部
'End If

'If TypeOf Source Is TList Then
'   If Source Is Nothing Then Exit Sub
'   Source.Drag 2       ' End Dragging
'   Screen.MousePointer = 11
'   字形 = Left(Source, 2)
'   'txt構字式 = 左半部 & mdi漢字字形.txt字形.Text & 右半部
'   txt構字式 = 左半部 & 拖曳字串 & 右半部
'   Screen.MousePointer = 0
'End If
'txt構字式.SetFocus
'txt構字式.SelStart = Len(txt構字式)

'End Sub

Private Sub txt構字式_GotFocus()

txt構字式.SelStart = 0
txt構字式.SelLength = Len(txt構字式.Text)
現用視窗代碼 = mdi漢字字形代碼
現用控制項代碼 = mdi漢字字形_構字式方塊

End Sub

Private Sub txt構字式_KeyPress(KeyAscii As Integer)
Dim 字根序 As String
Dim 楷書編號 As Long, 小篆編號 As Long, 金文編號 As Long, 甲骨文編號 As Long, 楚系文字編號 As Long
Dim 暫存組字式 As String

If KeyAscii = vbKeyReturn Then
   If Len(Trim(txt構字式.Text)) <> 0 Then
      楷書編號 = 字形查詢()
      If 楷書編號 > 0 Then
        Set 檢字表 = 楷書檢字表
        檢字表.Index = "編號"
        檢字表.Seek "=", 楷書編號
        If Not IsNull(檢字表.Fields("小篆編號")) Then
            小篆編號 = 檢字表.Fields("小篆編號")
        Else
            小篆編號 = -1
        End If
        If Not IsNull(檢字表.Fields("金文編號")) Then
            金文編號 = 檢字表.Fields("金文編號")
        Else
            金文編號 = -1
        End If
        If Not IsNull(檢字表.Fields("甲骨文編號")) Then
            甲骨文編號 = 檢字表.Fields("甲骨文編號")
        Else
            甲骨文編號 = -1
        End If
        If Not IsNull(檢字表.Fields("楚系文字編號")) Then
            楚系文字編號 = 檢字表.Fields("楚系文字編號")
        Else
            楚系文字編號 = -1
        End If

      End If
      
      If 楷書編號 > 0 Then
         擷取屬性 "標楷體", txt字形.Text, 楷書編號
         擷取構字式 "標楷體", txt字形.Text, 楷書編號
         If 系統字體 = "小篆" And 小篆編號 > 0 Then
            If 啟動字形結構 Then frm字形結構.載入字形 "北師大說文小篆", txt字形.Text, 小篆編號
            If 啟動異體字表 Then frm異體字表.載入字形 "北師大說文小篆", txt字形.Text, 小篆編號
            If 啟動字形演變 Then frm字形演變.載入字形 "北師大說文小篆", txt字形.Text, 小篆編號
            If 啟動字形索引 Then frm字形索引.載入字形 "北師大說文小篆", txt字形.Text, 小篆編號
            If 啟動異體字根 Then frm異體字根.載入字形 "北師大說文小篆", txt字形.Text, 小篆編號
         ElseIf 系統字體 = "金文" And 金文編號 > 0 Then
            If 啟動字形結構 Then frm字形結構.載入字形 "中研院金文", txt字形.Text, 金文編號
            If 啟動異體字表 Then frm異體字表.載入字形 "中研院金文", txt字形.Text, 金文編號
            If 啟動字形演變 Then frm字形演變.載入字形 "中研院金文", txt字形.Text, 金文編號
            If 啟動字形索引 Then frm字形索引.載入字形 "中研院金文", txt字形.Text, 金文編號
            If 啟動異體字根 Then frm異體字根.載入字形 "中研院金文", txt字形.Text, 金文編號
         ElseIf 系統字體 = "甲骨文" And 甲骨文編號 > 0 Then
            If 啟動字形結構 Then frm字形結構.載入字形 "中研院甲骨文", txt字形.Text, 甲骨文編號
            If 啟動異體字表 Then frm異體字表.載入字形 "中研院甲骨文", txt字形.Text, 甲骨文編號
            If 啟動字形演變 Then frm字形演變.載入字形 "中研院甲骨文", txt字形.Text, 甲骨文編號
            If 啟動字形索引 Then frm字形索引.載入字形 "中研院甲骨文", txt字形.Text, 甲骨文編號
            If 啟動異體字根 Then frm異體字根.載入字形 "中研院甲骨文", txt字形.Text, 甲骨文編號
         ElseIf 系統字體 = "楚系文字" And 楚系文字編號 > 0 Then
            If 啟動字形結構 Then frm字形結構.載入字形 "中研院楚系簡帛文字", txt字形.Text, 楚系文字編號
            If 啟動異體字表 Then frm異體字表.載入字形 "中研院楚系簡帛文字", txt字形.Text, 楚系文字編號
            If 啟動字形演變 Then frm字形演變.載入字形 "中研院楚系簡帛文字", txt字形.Text, 楚系文字編號
            If 啟動字形索引 Then frm字形索引.載入字形 "中研院楚系簡帛文字", txt字形.Text, 楚系文字編號
            If 啟動異體字根 Then frm異體字根.載入字形 "中研院楚系簡帛文字", txt字形.Text, 楚系文字編號
         Else
            If 啟動字形結構 Then frm字形結構.載入字形 "標楷體", txt字形.Text, 楷書編號
            If 啟動異體字表 Then frm異體字表.載入字形 "標楷體", txt字形.Text, 楷書編號
            If 啟動字形演變 Then frm字形演變.載入字形 "標楷體", txt字形.Text, 楷書編號
            If 啟動字形索引 Then frm字形索引.載入字形 "標楷體", txt字形.Text, 楷書編號
            If 啟動異體字根 Then frm異體字根.載入字形 "標楷體", txt字形.Text, 楷書編號
         End If
      Else
         '找不到
         mdi漢字字形.txt組字字數.Text = ""
         mdi漢字字形.txt字形.Text = ""
         mdi漢字字形.txt總筆畫.Text = ""
         mdi漢字字形.txt部首.Text = ""
         mdi漢字字形.txt扣除部首筆畫.Text = ""
         mdi漢字字形.txt注音.Text = ""
         mdi漢字字形.txt內碼.Text = ""
         mdi漢字字形.txt倉頡碼.Text = ""
         'mdi漢字字形.txt構字式.Text = ""
         mdi漢字字形.txt冊數.Text = ""
         
         '給定空白值
         If Len(狀態列1) > 10 Then
            狀態列 = "0 個字根" & 狀態列1
         Else
            狀態列 = "0 個字根"
         End If
         mdi漢字字形.txt狀態 = 狀態列
      End If
   End If
End If

End Sub

Private Function 字形查詢() As Long
Dim 組字式 As String, 字根序 As String, 運算符號 As Integer, 構字式 As String, 異體構字式 As String
Dim i As Integer, j As Integer, 組字符號 As Integer, 重覆次數 As Integer, 方便符號 As Integer
Dim 重覆字 As String, 字根組 As String, 相似字串 As String, 暫存組字式 As String
Dim 首筆構字式 As String, 分解符號 As Boolean

On Error GoTo 字形查詢錯誤

運算符號 = 4
重覆次數 = 0
組字式 = ""
構字式 = ""
相似字串 = ""
首筆構字式 = ""
分解符號 = False

字形查詢 = -1

If Len(Trim(txt構字式.Text)) = 1 Then
   檢字表.Index = "字形"
   檢字表.Seek "=", Trim(txt構字式.Text)
   If Not 檢字表.NoMatch Then 字形查詢 = 檢字表.Fields("編號")
   Exit Function
End If

i = 1
Do While i <= Len(Trim(txt構字式.Text))
 
   組字符號 = 是否為組字符號(Mid(txt構字式.Text, i, 1), 1, 14)

   If 組字符號 <> 12 And 組字符號 <> 13 Then
      If 組字符號 >= 1 And 組字符號 <= 3 Then
         運算符號 = 組字符號
      ElseIf Len(txt構字式) = 2 Then
         運算符號 = 5
         組字式 = txt構字式
         Exit Do
      End If
      If 組字符號 >= 4 Or 組字符號 = 0 Then
         組字式 = 組字式 & Mid(txt構字式, i, 1)
         If Len(txt構字式) = 1 And 組字符號 = 0 Then 運算符號 = 0
      End If
   Else
      運算符號 = 4
      組字式 = 組字式 & Mid(txt構字式, 2, Len(txt構字式) - 2)
      Exit Do
   End If
   i = i + 1
Loop
    
If 組字式 = "" Then 組字式 = Trim(txt構字式.Text)

構字式 = 組字式

'先用分解+部件序搜尋

If Len(構字式) > 1 Or (Len(構字式) = 1 And 組字符號 = 0) Then
   檢字表.Index = "構字式"
   檢字表.Seek "=", 運算符號, 構字式
   If Not 檢字表.NoMatch Then
      字形查詢 = 檢字表.Fields("編號")
      If 運算符號 > 0 Then
         If 檢字表.Fields("字體") <> 0 Or IsNull(檢字表.Fields("字形")) Then
            首筆構字式 = 尋找組字式(檢字表.Fields("連接符號"), 檢字表.Fields("部件序"))
         Else
            首筆構字式 = 檢字表.Fields("字形")
         End If
      End If
      檢字表.MoveNext
      Do Until 檢字表.EOF Or 檢字表.Fields("部件序") <> 構字式
         If 檢字表.Fields("連接符號") = 運算符號 Then
            字形查詢 = 檢字表.Fields("編號")
            分解符號 = True
         Else
            If 檢字表.Fields("字體") <> 0 Or IsNull(檢字表.Fields("字形")) Then
               暫存組字式 = 尋找組字式(檢字表.Fields("連接符號"), 檢字表.Fields("部件序"))
            Else
               暫存組字式 = 檢字表.Fields("字形")
            End If
            相似字串 = 相似字串 & "[" & 暫存組字式 & "]"
         End If
         檢字表.MoveNext
      Loop
      If 分解符號 = True Then 相似字串 = 首筆構字式 & 相似字串
      If Len(相似字串) > 0 Then 狀態列1 = ",相似字形: " & 相似字串
      Exit Function
   End If
Else
   字形查詢 = 0
   txt字形.Text = 構字式
   Exit Function
End If
       
'部件序not found,改用字根序
'是組字符號
i = 1
構字式 = ""
檢字表.Index = "字形"
Do While i <= Len(組字式)
   方便符號 = 是否為組字符號(Mid(組字式, i, 1), 4, 11)
   Select Case 方便符號
          Case 4, 5
               重覆次數 = 2
          Case 6, 7, 8
               重覆次數 = 3
          Case 9, 10, 11
               重覆次數 = 4
   End Select
   If 方便符號 > 0 Then
      i = i + 1
      檢字表.Seek "=", Mid(組字式, i, 1)
      If Not 檢字表.NoMatch Then
         '尋找該重覆字的字形,若分解不為0,則繼續往下找出所有該字形之字根
         If 檢字表.Fields("連接符號") <> 0 Then
            重覆字 = 字根序查詢(檢字表.Fields("字根序"))
         Else
            重覆字 = Mid(組字式, i, 1)
         End If
      End If
      For j = 1 To 重覆次數
          構字式 = 構字式 & 重覆字
      Next j
   '不是組字符號
   Else
       檢字表.Index = "字形"
       檢字表.Seek "=", Mid(組字式, i, 1)
       If Not 檢字表.NoMatch Then
          Do Until 檢字表.EOF Or 檢字表.Fields("字形") <> Mid(組字式, i, 1)
             If 檢字表.Fields("字體") = 0 And 檢字表.Fields("字形") = Mid(組字式, i, 1) Then
                If 檢字表.Fields("連接符號") <> 0 Then
                   構字式 = 構字式 & 字根序查詢(檢字表.Fields("字根序"))
                Else
                   構字式 = 構字式 & 檢字表.Fields("字根序")
                End If
             End If
             檢字表.MoveNext
          Loop
       End If
   End If
   i = i + 1
Loop
    
'先用字根序搜尋

檢字表.Index = "字根序"
檢字表.Seek "=", 構字式

If Not 檢字表.NoMatch Then
   字形查詢 = 檢字表.Fields("編號")
   If 運算符號 > 0 Then
      If 檢字表.Fields("字體") <> 0 Or IsNull(檢字表.Fields("字形")) Then
         首筆構字式 = 尋找組字式(檢字表.Fields("連接符號"), 檢字表.Fields("部件序"))
      Else
         首筆構字式 = 檢字表.Fields("字形")
      End If
   End If
   檢字表.MoveNext
   Do Until 檢字表.EOF Or 檢字表.Fields("部件序") <> 構字式
      If 檢字表.Fields("連接符號") = 運算符號 Then
         字形查詢 = 檢字表.Fields("編號")
         分解符號 = True
      Else
         If 檢字表.Fields("字體") <> 0 Or IsNull(檢字表.Fields("字形")) Then
            暫存組字式 = 尋找組字式(檢字表.Fields("連接符號"), 檢字表.Fields("部件序"))
         Else
            暫存組字式 = 檢字表.Fields("字形")
         End If
         相似字串 = 相似字串 & "[" & 暫存組字式 & "]"
      End If
      檢字表.MoveNext
   Loop
   If 分解符號 = True Then 相似字串 = 首筆構字式 & 相似字串
   If Len(相似字串) > 0 Then 狀態列1 = ",相似字形: " & 相似字串
   Exit Function
End If
   
'若用字根序搜尋不到,則改用字根序二搜尋
異體構字式 = ""
For i = 1 To Len(構字式)
    異寫字根.Seek "=", Mid(構字式, i, 1)
    If Not 異寫字根.NoMatch Then
        異體構字式 = 異體構字式 & 異寫字根.Fields("異寫")
    Else
        異體構字式 = 異體構字式 & Mid(構字式, i, 1)
    End If
Next i

檢字表.Index = "字根序二"
檢字表.Seek "=", 異體構字式

If Not 檢字表.NoMatch Then
   字形查詢 = 檢字表.Fields("編號")
   If 運算符號 > 0 Then
      If 檢字表.Fields("字體") <> 0 Or IsNull(檢字表.Fields("字形")) Then
         首筆構字式 = 尋找組字式(檢字表.Fields("連接符號"), 檢字表.Fields("部件序"))
      Else
         首筆構字式 = 檢字表.Fields("字形")
      End If
   End If
   檢字表.MoveNext
   Do Until 檢字表.EOF Or 檢字表.Fields("部件序") <> 構字式
      If 檢字表.Fields("連接符號") = 運算符號 Then
         字形查詢 = 檢字表.Fields("編號")
         分解符號 = True
      Else
         If 檢字表.Fields("字體") <> 0 Or IsNull(檢字表.Fields("字形")) Then
            暫存組字式 = 尋找組字式(檢字表.Fields("連接符號"), 檢字表.Fields("部件序"))
         Else
            暫存組字式 = 檢字表.Fields("字形")
         End If
         相似字串 = 相似字串 & "[" & 暫存組字式 & "]"
      End If
      檢字表.MoveNext
   Loop
   If 分解符號 = True Then 相似字串 = 首筆構字式 & 相似字串
   If Len(相似字串) > 0 Then 狀態列1 = ",相似字形: " & 相似字串
   Exit Function
End If
   

'若用字根序搜尋不到,則改用字根組搜尋

字根組 = 字根排序(構字式)
檢字表.Index = "字根組"
檢字表.Seek "=", 字根組
If Not 檢字表.NoMatch Then
   字形查詢 = 檢字表.Fields("編號")
   If 運算符號 > 0 Then
      If 檢字表.Fields("字體") <> 0 Or IsNull(檢字表.Fields("字形")) Then
         首筆構字式 = 尋找組字式(檢字表.Fields("連接符號"), 檢字表.Fields("部件序"))
      Else
         首筆構字式 = 檢字表.Fields("字形")
      End If
   End If
   檢字表.MoveNext
   Do Until 檢字表.EOF Or 檢字表.Fields("部件序") <> 構字式
      If 檢字表.Fields("連接符號") = 運算符號 Then
         字形查詢 = 檢字表.Fields("編號")
         分解符號 = True
      Else
         If 檢字表.Fields("字體") <> 0 Or IsNull(檢字表.Fields("字形")) Then
            暫存組字式 = 尋找組字式(檢字表.Fields("連接符號"), 檢字表.Fields("部件序"))
         Else
            暫存組字式 = 檢字表.Fields("字形")
         End If
         相似字串 = 相似字串 & "[" & 暫存組字式 & "]"
      End If
      檢字表.MoveNext
   Loop
   If 分解符號 = True Then 相似字串 = 首筆構字式 & 相似字串
   If Len(相似字串) > 0 Then 狀態列1 = ",相似字形: " & 相似字串
   Exit Function
End If

'若用字根序搜尋不到,則改用字根組二搜尋

異體構字式 = ""
For i = 1 To Len(字根組)
    異寫字根.Seek "=", Mid(字根組, i, 1)
    If Not 異寫字根.NoMatch Then
        異體構字式 = 異體構字式 & 異寫字根.Fields("異寫")
    Else
        異體構字式 = 異體構字式 & Mid(字根組, i, 1)
    End If
Next i

異體構字式 = 字根排序(異體構字式)
檢字表.Index = "字根組二"
檢字表.Seek "=", 異體構字式
If Not 檢字表.NoMatch Then
   字形查詢 = 檢字表.Fields("編號")
   If 運算符號 > 0 Then
      If 檢字表.Fields("字體") <> 0 Or IsNull(檢字表.Fields("字形")) Then
         首筆構字式 = 尋找組字式(檢字表.Fields("連接符號"), 檢字表.Fields("部件序"))
      Else
         首筆構字式 = 檢字表.Fields("字形")
      End If
   End If
   檢字表.MoveNext
   Do Until 檢字表.EOF Or 檢字表.Fields("部件序") <> 構字式
      If 檢字表.Fields("連接符號") = 運算符號 Then
         字形查詢 = 檢字表.Fields("編號")
         分解符號 = True
      Else
         If 檢字表.Fields("字體") <> 0 Or IsNull(檢字表.Fields("字形")) Then
            暫存組字式 = 尋找組字式(檢字表.Fields("連接符號"), 檢字表.Fields("部件序"))
         Else
            暫存組字式 = 檢字表.Fields("字形")
         End If
         相似字串 = 相似字串 & "[" & 暫存組字式 & "]"
      End If
      檢字表.MoveNext
   Loop
   If 分解符號 = True Then 相似字串 = 首筆構字式 & 相似字串
   If Len(相似字串) > 0 Then 狀態列1 = ",相似字形: " & 相似字串
   Exit Function
End If

字形查詢錯誤:

End Function

Private Function 字根序查詢(字根序 As String) As String
Dim i As Integer, varBookMark As Variant
Dim 組字式 As String

varBookMark = 檢字表.Bookmark
檢字表.Index = "字形"
組字式 = ""
For i = 1 To Len(字根序)
    檢字表.Seek "=", Mid(字根序, i, 1)
    If Not 檢字表.NoMatch Then
       If 檢字表.Fields("連接符號") <> 0 And 檢字表.Fields("連接符號") <> 9 Then
          組字式 = 組字式 & 字根序查詢(檢字表.Fields("字根序"))
       Else
          組字式 = 組字式 & 檢字表.Fields("字根序")
       End If
    End If
Next i
字根序查詢 = 組字式
檢字表.Bookmark = varBookMark

End Function


Private Sub txt部首_GotFocus()

txt部首.SelStart = 0
txt部首.SelLength = Len(txt部首.Text)
現用視窗代碼 = mdi漢字字形代碼
現用控制項代碼 = mdi漢字字形_部首方塊

End Sub

Private Sub txt組字字數_GotFocus()

txt組字字數.SelStart = 0
txt組字字數.SelLength = Len(txt組字字數.Text)
現用視窗代碼 = mdi漢字字形代碼
現用控制項代碼 = mdi漢字字形_組字字數方塊

End Sub

Private Sub txt編號_GotFocus()

txt編號.SelStart = 0
txt編號.SelLength = Len(txt編號.Text)
現用視窗代碼 = mdi漢字字形代碼
現用控制項代碼 = mdi漢字字形_編號方塊

End Sub

Private Sub txt編號_KeyPress(KeyAscii As Integer)

Dim 楷書編號 As Long, 小篆編號 As Long, 金文編號 As Long, 甲骨文編號 As Long, 楚系文字編號 As Long
Dim 暫存組字式 As String

If KeyAscii = vbKeyReturn Then
   If IsNumeric(txt編號.Text) Then
      楷書編號 = CLng(txt編號.Text)
      If 楷書編號 > 0 Then
        Set 檢字表 = 楷書檢字表
        檢字表.Index = "編號"
        檢字表.Seek "=", 楷書編號
        If 檢字表.NoMatch Then GoTo 找不到
        If Not IsNull(檢字表.Fields("小篆編號")) Then
            小篆編號 = 檢字表.Fields("小篆編號")
        Else
            小篆編號 = -1
        End If
        If Not IsNull(檢字表.Fields("金文編號")) Then
            金文編號 = 檢字表.Fields("金文編號")
        Else
            金文編號 = -1
        End If
        If Not IsNull(檢字表.Fields("甲骨文編號")) Then
            甲骨文編號 = 檢字表.Fields("甲骨文編號")
        Else
            甲骨文編號 = -1
        End If
        If Not IsNull(檢字表.Fields("楚系文字編號")) Then
            楚系文字編號 = 檢字表.Fields("楚系文字編號")
        Else
            楚系文字編號 = -1
        End If

      End If
      
      If 楷書編號 > 0 Then
         擷取屬性 "標楷體", txt字形.Text, 楷書編號
         擷取構字式 "標楷體", txt字形.Text, 楷書編號
         If 系統字體 = "小篆" And 小篆編號 > 0 Then
            If 啟動字形結構 Then frm字形結構.載入字形 "北師大說文小篆", txt字形.Text, 小篆編號
            If 啟動異體字表 Then frm異體字表.載入字形 "北師大說文小篆", txt字形.Text, 小篆編號
            If 啟動字形演變 Then frm字形演變.載入字形 "北師大說文小篆", txt字形.Text, 小篆編號
            If 啟動字形索引 Then frm字形索引.載入字形 "北師大說文小篆", txt字形.Text, 小篆編號
            If 啟動異體字根 Then frm異體字根.載入字形 "北師大說文小篆", txt字形.Text, 小篆編號
         ElseIf 系統字體 = "金文" And 金文編號 > 0 Then
            If 啟動字形結構 Then frm字形結構.載入字形 "中研院金文", txt字形.Text, 金文編號
            If 啟動異體字表 Then frm異體字表.載入字形 "中研院金文", txt字形.Text, 金文編號
            If 啟動字形演變 Then frm字形演變.載入字形 "中研院金文", txt字形.Text, 金文編號
            If 啟動字形索引 Then frm字形索引.載入字形 "中研院金文", txt字形.Text, 金文編號
            If 啟動異體字根 Then frm異體字根.載入字形 "中研院金文", txt字形.Text, 金文編號
         ElseIf 系統字體 = "甲骨文" And 甲骨文編號 > 0 Then
            If 啟動字形結構 Then frm字形結構.載入字形 "中研院甲骨文", txt字形.Text, 甲骨文編號
            If 啟動異體字表 Then frm異體字表.載入字形 "中研院甲骨文", txt字形.Text, 甲骨文編號
            If 啟動字形演變 Then frm字形演變.載入字形 "中研院甲骨文", txt字形.Text, 甲骨文編號
            If 啟動字形索引 Then frm字形索引.載入字形 "中研院甲骨文", txt字形.Text, 甲骨文編號
            If 啟動異體字根 Then frm異體字根.載入字形 "中研院甲骨文", txt字形.Text, 甲骨文編號
         ElseIf 系統字體 = "楚系文字" And 楚系文字編號 > 0 Then
            If 啟動字形結構 Then frm字形結構.載入字形 "中研院楚系簡帛文字", txt字形.Text, 楚系文字編號
            If 啟動異體字表 Then frm異體字表.載入字形 "中研院楚系簡帛文字", txt字形.Text, 楚系文字編號
            If 啟動字形演變 Then frm字形演變.載入字形 "中研院楚系簡帛文字", txt字形.Text, 楚系文字編號
            If 啟動字形索引 Then frm字形索引.載入字形 "中研院楚系簡帛文字", txt字形.Text, 楚系文字編號
            If 啟動異體字根 Then frm異體字根.載入字形 "中研院楚系簡帛文字", txt字形.Text, 楚系文字編號
         Else
            If 啟動字形結構 Then frm字形結構.載入字形 "標楷體", txt字形.Text, 楷書編號
            If 啟動異體字表 Then frm異體字表.載入字形 "標楷體", txt字形.Text, 楷書編號
            If 啟動字形演變 Then frm字形演變.載入字形 "標楷體", txt字形.Text, 楷書編號
            If 啟動字形索引 Then frm字形索引.載入字形 "標楷體", txt字形.Text, 楷書編號
            If 啟動異體字根 Then frm異體字根.載入字形 "標楷體", txt字形.Text, 楷書編號
         End If
      Else
找不到:
         mdi漢字字形.txt組字字數.Text = ""
         mdi漢字字形.txt字形.Text = ""
         mdi漢字字形.txt總筆畫.Text = ""
         mdi漢字字形.txt部首.Text = ""
         mdi漢字字形.txt扣除部首筆畫.Text = ""
         mdi漢字字形.txt注音.Text = ""
         mdi漢字字形.txt內碼.Text = ""
         mdi漢字字形.txt倉頡碼.Text = ""
         'mdi漢字字形.txt構字式.Text = ""
         mdi漢字字形.txt冊數.Text = ""
         
         '給定空白值
         If Len(狀態列1) > 10 Then
            狀態列 = "0 個字根" & 狀態列1
         Else
            狀態列 = "0 個字根"
         End If
         mdi漢字字形.txt狀態 = 狀態列
      End If
   End If
End If

End Sub

Private Sub txt總筆畫_GotFocus()

txt總筆畫.SelStart = 0
txt總筆畫.SelLength = Len(txt總筆畫.Text)
現用視窗代碼 = mdi漢字字形代碼
現用控制項代碼 = mdi漢字字形_總筆畫方塊

End Sub

Public Sub 簡易瀏覽一()
Dim i As Integer
Dim 均寬 As Integer
Dim 均高 As Integer

i = 1
Do While i <= Forms.Count - 1
    Select Case CInt(Forms(i).Tag)
        Case 字形結構代碼, 異體字根代碼, 異體字表代碼, 字形演變代碼, 字形索引代碼
            Unload Forms(i)
        Case Else
            i = i + 1
    End Select
Loop

If 系統字體 = "小篆" Or 系統字體 = "金文" Or 系統字體 = "甲骨文" Or 系統字體 = "楚系文字" Then
    mnu_說文解字部首_Click
Else
    mnu_康熙字典部首_Click
End If

frm字形結構.Tag = 字形結構代碼
frm字形結構.show
frm字形結構.SetFocus

'frm字形索引.Tag = 字形索引代碼
'frm字形索引.show
'frm字形索引.SetFocus

'frm異體字根.Tag = 15
'frm異體字根.show
'frm異體字根.Visible = False

'frm字形演變.Tag = 16
'frm字形演變.show
'frm字形演變.Visible = False

frm字形孳乳.Tag = 字形孳乳代碼
frm字形孳乳.show
frm字形孳乳.SetFocus

mdi漢字字形.Arrange 2

'frm字形結構.Height = frm字形孳乳.Height / 2
'frm部件範例.Height = frm字形結構.Height
'frm字形演變.Height = frm字形演變.Height

'frm字形演變.Left = frm字形結構.Left
'frm字形演變.Width = frm字形結構.Width
'frm字形演變.Height = frm字形結構.Height - 1
'frm字形演變.Top = frm字形結構.Height

'frm異體字根.Left = frm部件範例.Left
'frm異體字根.Width = frm部件範例.Width
'frm異體字根.Height = frm部件範例.Height - 1
'frm異體字根.Top = frm部件範例.Height

'frm字形演變.Visible = True
'frm異體字根.Visible = True
frm字形孳乳.SetFocus

End Sub

Public Sub 簡易瀏覽二()

Dim i As Integer
Dim 均寬 As Integer
Dim 均高 As Integer

i = 1
Do While i <= Forms.Count - 1
    Select Case CInt(Forms(i).Tag)
        Case Big5字根代碼 To 構字符號代碼, 異體字根代碼, 字形演變代碼, 字形索引代碼
            Unload Forms(i)
        Case Else
            i = i + 1
    End Select
Loop

'mnu_部件代碼_Click 3
frm字形結構.Tag = 字形結構代碼
frm字形結構.show
frm字形結構.SetFocus

frm異體字表.Tag = 異體字表代碼
frm異體字表.show
frm異體字表.SetFocus

'frm異體字根.Tag = 15
'frm異體字根.show
'frm異體字根.Visible = False

'frm字形演變.Tag = 16
'frm字形演變.show
'frm字形演變.Visible = False

frm字形孳乳.Tag = 字形孳乳代碼
frm字形孳乳.show
frm字形孳乳.SetFocus

mdi漢字字形.Arrange 2

'frm字形結構.Height = frm字形孳乳.Height / 2
'frm部件範例.Height = frm字形結構.Height
'frm字形演變.Height = frm字形演變.Height

'frm字形演變.Left = frm字形結構.Left
'frm字形演變.Width = frm字形結構.Width
'frm字形演變.Height = frm字形結構.Height - 1
'frm字形演變.Top = frm字形結構.Height

'frm異體字根.Left = frm部件範例.Left
'frm異體字根.Width = frm部件範例.Width
'frm異體字根.Height = frm部件範例.Height - 1
'frm異體字根.Top = frm部件範例.Height

'frm字形演變.Visible = True
'frm異體字根.Visible = True
frm字形孳乳.SetFocus

End Sub

Public Sub 簡易瀏覽三()

Dim i As Integer
Dim 均寬 As Integer
Dim 均高 As Integer

i = 1
Do While i <= Forms.Count - 1
    Select Case CInt(Forms(i).Tag)
        Case Big5字根代碼 To 構字符號代碼, 異體字根代碼, 字形演變代碼, 字形結構代碼
            Unload Forms(i)
        Case Else
            i = i + 1
    End Select
Loop

frm字形索引.Tag = 字形索引代碼
frm字形索引.show
frm字形索引.SetFocus

frm異體字表.Tag = 異體字表代碼
frm異體字表.show
frm異體字表.SetFocus

frm字形孳乳.Tag = 字形孳乳代碼
frm字形孳乳.show
frm字形孳乳.SetFocus

mdi漢字字形.Arrange 2

frm字形孳乳.SetFocus

End Sub

Public Sub 簡易瀏覽四()

Dim i As Integer
Dim 均寬 As Integer
Dim 均高 As Integer

i = 1
Do While i <= Forms.Count - 1
    Select Case CInt(Forms(i).Tag)
        Case Big5字根代碼 To 構字符號代碼, 異體字根代碼, 字形演變代碼, 異體字表代碼
            Unload Forms(i)
        Case Else
            i = i + 1
    End Select
Loop

frm字形索引.Tag = 字形索引代碼
frm字形索引.show
frm字形索引.SetFocus

frm字形結構.Tag = 字形結構代碼
frm字形結構.show
frm字形結構.SetFocus

frm字形孳乳.Tag = 字形孳乳代碼
frm字形孳乳.show
frm字形孳乳.SetFocus

mdi漢字字形.Arrange 2

frm字形孳乳.SetFocus

End Sub
Public Sub 預設瀏覽一()

Dim i As Integer
Dim 均寬 As Integer
Dim 均高 As Integer

i = 1
Do While i <= Forms.Count - 1
    Select Case CInt(Forms(i).Tag)
        Case Big5字根代碼 To 構字符號代碼, 異體字根代碼, 字形索引代碼
            Unload Forms(i)
        Case Else
            i = i + 1
    End Select
Loop

'mnu_部件代碼_Click 3
frm字形結構.Tag = 字形結構代碼
frm字形結構.show
frm字形結構.SetFocus

frm異體字表.Tag = 異體字表代碼
frm異體字表.show
frm異體字表.SetFocus

'frm異體字根.Tag = 15
'frm異體字根.show
'frm異體字根.Visible = False

frm字形演變.Tag = 字形演變代碼
frm字形演變.show
frm字形演變.Visible = False

frm字形孳乳.Tag = 字形孳乳代碼
frm字形孳乳.show
frm字形孳乳.SetFocus

mdi漢字字形.Arrange 2

frm字形結構.Height = frm字形孳乳.Height / 2
'frm部件範例.Height = frm字形結構.Height
'frm字形演變.Height = frm字形演變.Height

frm字形演變.Left = frm字形結構.Left
frm字形演變.Width = frm字形結構.Width
frm字形演變.Height = frm字形結構.Height - 1
frm字形演變.Top = frm字形結構.Height

'frm異體字根.Left = frm部件範例.Left
'frm異體字根.Width = frm部件範例.Width
'frm異體字根.Height = frm部件範例.Height - 1
'frm異體字根.Top = frm部件範例.Height

frm字形演變.Visible = True
'frm異體字根.Visible = True
frm字形孳乳.SetFocus

End Sub

Public Sub 預設瀏覽二()

Dim i As Integer
Dim 均寬 As Integer
Dim 均高 As Integer

i = 1
Do While i <= Forms.Count - 1
    Select Case CInt(Forms(i).Tag)
        Case Big5字根代碼 To 構字符號代碼, 異體字根代碼, 字形索引代碼
            Unload Forms(i)
        Case Else
            i = i + 1
    End Select
Loop

frm異體字表.Tag = 異體字表代碼
frm異體字表.show
frm異體字表.SetFocus

frm字形結構.Tag = 字形結構代碼
frm字形結構.show
frm字形結構.SetFocus

frm字形演變.Tag = 字形演變代碼
frm字形演變.show
frm字形演變.Visible = False

frm字形孳乳.Tag = 字形孳乳代碼
frm字形孳乳.show
frm字形孳乳.SetFocus

mdi漢字字形.Arrange 2

frm異體字表.Height = frm字形孳乳.Height / 2

frm字形演變.Left = frm異體字表.Left
frm字形演變.Width = frm異體字表.Width
frm字形演變.Height = frm異體字表.Height - 1
frm字形演變.Top = frm異體字表.Height

frm字形演變.Visible = True
frm字形孳乳.SetFocus

End Sub
Public Sub 預設瀏覽三()

Dim i As Integer
Dim 均寬 As Integer
Dim 均高 As Integer

i = 1
Do While i <= Forms.Count - 1
    Select Case CInt(Forms(i).Tag)
        Case Big5字根代碼 To 構字符號代碼, 異體字根代碼
            Unload Forms(i)
        Case Else
            i = i + 1
    End Select
Loop

frm字形索引.Tag = 字形索引代碼
frm字形索引.show
frm字形索引.SetFocus

frm字形結構.Tag = 字形結構代碼
frm字形結構.show
frm字形結構.SetFocus

frm異體字表.Tag = 異體字表代碼
frm異體字表.show
frm異體字表.Visible = False

frm字形演變.Tag = 字形演變代碼
frm字形演變.show
frm字形演變.Visible = False

frm字形孳乳.Tag = 字形孳乳代碼
frm字形孳乳.show
frm字形孳乳.SetFocus

mdi漢字字形.Arrange 2

frm字形結構.Height = frm字形孳乳.Height / 2
frm字形索引.Height = frm字形結構.Height

frm異體字表.Left = frm字形結構.Left
frm異體字表.Width = frm字形結構.Width
frm異體字表.Height = frm字形結構.Height - 1
frm異體字表.Top = frm字形結構.Height

frm字形演變.Left = frm字形索引.Left
frm字形演變.Width = frm字形索引.Width
frm字形演變.Height = frm字形索引.Height - 1
frm字形演變.Top = frm字形索引.Height

frm異體字表.Visible = True
frm字形演變.Visible = True
frm字形孳乳.SetFocus

End Sub

Public Sub 預設瀏覽四()

Dim i As Integer
Dim 均寬 As Integer
Dim 均高 As Integer

i = 1
Do While i <= Forms.Count - 1
    Select Case CInt(Forms(i).Tag)
        Case 字形演變代碼, 字形索引代碼
            Unload Forms(i)
        Case Else
            i = i + 1
    End Select
Loop

If 系統字體 = "小篆" Then
    mnu_說文解字部首_Click
Else
    mnu_康熙字典部首_Click
End If

frm字形結構.Tag = 字形結構代碼
frm字形結構.show
frm字形結構.SetFocus

frm異體字表.Tag = 異體字表代碼
frm異體字表.show
frm異體字表.Visible = False

frm異體字根.Tag = 異體字根代碼
frm異體字根.show
frm異體字根.Visible = False

frm字形孳乳.Tag = 字形孳乳代碼
frm字形孳乳.show
frm字形孳乳.SetFocus

mdi漢字字形.Arrange 2

frm字形結構.Height = frm字形孳乳.Height / 2
frm部件範例.Height = frm字形結構.Height

frm異體字表.Left = frm字形結構.Left
frm異體字表.Width = frm字形結構.Width
frm異體字表.Height = frm字形結構.Height - 1
frm異體字表.Top = frm字形結構.Height

frm異體字根.Left = frm部件範例.Left
frm異體字根.Width = frm部件範例.Width
frm異體字根.Height = frm部件範例.Height - 1
frm異體字根.Top = frm部件範例.Height

frm異體字表.Visible = True
frm異體字根.Visible = True
frm字形孳乳.SetFocus

End Sub

