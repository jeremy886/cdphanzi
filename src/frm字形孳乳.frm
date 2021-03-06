VERSION 5.00
Object = "{65996203-3B87-11D4-A21F-00E029189826}#6.9#0"; "TLIST6.OCX"
Begin VB.Form frm字形孳乳 
   Caption         =   "部件檢字"
   ClientHeight    =   3600
   ClientLeft      =   60
   ClientTop       =   348
   ClientWidth     =   8280
   BeginProperty Font 
      Name            =   "標楷體"
      Size            =   12
      Charset         =   136
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frm字形孳乳.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   3600
   ScaleWidth      =   8280
   Begin VB.TextBox txt構字式 
      Height          =   360
      HideSelection   =   0   'False
      Left            =   240
      TabIndex        =   0
      ToolTipText     =   "輸入一到多個部件後，再按Enter檢字"
      Top             =   120
      Width           =   4395
   End
   Begin TListProLibCtl.TList tree字形樹狀結構 
      DragIcon        =   "frm字形孳乳.frx":030A
      Height          =   2652
      Left            =   240
      TabIndex        =   1
      Top             =   684
      Width           =   4368
      _Version        =   393225
      _ExtentX        =   7705
      _ExtentY        =   4678
      _StockProps     =   228
      BorderStyle     =   1
      Appearance      =   1
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      SelForeColor    =   -2147483634
      SelBackColor    =   -2147483635
      ShiftStep       =   300
      ItemImageDefHeight=   228
      ItemImageDefWidth=   228
      WidthOfText     =   0
      TabStopDistance =   0
      MarkHeight      =   0
      MarkWidth       =   0
      TitleHeight     =   0
      XOffset         =   0
      TriggerEvents   =   0
      PathSeparator   =   "\"
      Caption         =   ""
      FixedSize       =   0   'False
      ShowChildren    =   0   'False
      ExpandChildren  =   0   'False
      ExpandNewItem   =   0   'False
      Scrollbars      =   3
      PictureOpen     =   "frm字形孳乳.frx":074C
      PictureClosed   =   "frm字形孳乳.frx":085E
      PictureLeaf     =   "frm字形孳乳.frx":0970
      PictureMark     =   "frm字形孳乳.frx":0A82
      ImageStretch    =   0   'False
      NoIntegralHeight=   -1  'True
      DisableNoScroll =   0   'False
      NoPictureRoot   =   0   'False
      MSOutlineAdd    =   0   'False
      BackwardCompatibility=   0   'False
      InvStyle        =   0
      ViewStyle       =   0
      PictureType     =   0
      CurrentIndexMethod=   0
      ViewStyleEx     =   1
      AutoExpand      =   1
      TreeLinesStyle  =   0
      PicInMultiLine  =   0
      ShowCaption     =   0
      ShowTitles      =   0
      AutoScrDuringDragDrop=   0
      DragHighlight   =   0
      MousePointer    =   0
      DefMultiLine    =   0   'False
      SmartDragDrop   =   0   'False
      WidthOfTextMin  =   0
      DrawFocusRect   =   0   'False
      LcPresent       =   -1  'True
      WebTargetFrame  =   ""
      WebURLBase      =   ""
      GradientStyle   =   0
      TransparentBackground=   0   'False
      DefBorderStyle  =   0
      DefPictureAlignment=   5
      DefAlignment    =   0
      DefTextAlignment=   2
      ShowHiddenItems =   0   'False
      DefItemCellBackColor=   583057600
      _InternalVersion=   524290
      ExchangeSerialNumber=   "frm字形孳乳.frx":0B7C
      DragIconStyle   =   0
      ExchangeDefItemCellDef=   "frm字形孳乳.frx":0BC9
      _ChkCounter     =   -1
      TreeLinesHighlightColor=   -2113929196
      TreeLinesShadowColor=   -2113929200
   End
End
Attribute VB_Name = "frm字形孳乳"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private 視窗代碼 As Integer, 視窗 As String, 字根表 As Recordset, 檢字表 As Recordset
Private 細部系統字體 As String
Private 區域字體陣列(0 To 字體個數) As Variant
Private 中斷 As Boolean
Private 總數  As Long, 部數 As String
Private XCheck As Single, YCheck As Single

Private Sub Form_Activate()

現用視窗 = 視窗
現用視窗代碼 = 字形孳乳代碼
'現用視窗代碼 = 視窗代碼
切換選取字形工具列狀態 現用視窗代碼
mdi漢字字形.txt狀態 = 孳乳狀態列

End Sub


Private Sub Form_Load()
Dim i As Integer

啟動字形孳乳 = True
If 初始first <> 1 Then
   If 已載入畫面 = 0 Then
      If 孳乳winstate = 0 Then
         frm字形孳乳.Left = 孳乳left
         frm字形孳乳.Top = 孳乳top
         frm字形孳乳.Height = 孳乳height
         frm字形孳乳.Width = 孳乳width
      Else
         frm字形孳乳.WindowState = 孳乳winstate
      End If
   End If
Else
   txt構字式.Text = "輸入一到多個部件後，再按Enter"
End If

txt構字式.SelStart = 0
txt構字式.SelLength = Len(txt構字式)

If 系統字體 = "楷書" Then
    Set 字根表 = 楷書字根
ElseIf 系統字體 = "小篆" Then
    Set 字根表 = 小篆獨體字
    txt構字式.FontName = "北師大說文小篆"
ElseIf 系統字體 = "金文" Then
    Set 字根表 = 金文字根
    txt構字式.FontName = "中研院金文"
ElseIf 系統字體 = "甲骨文" Then
    Set 字根表 = 甲骨文字根
    txt構字式.FontName = "中研院甲骨文"
ElseIf 系統字體 = "楚系文字" Then
    Set 字根表 = 楚系文字字根
    txt構字式.FontName = "中研院楚系簡帛文字"
End If
字根表.Index = "字形"

i = 0
Do While 字體陣列(i) <> ""
   區域字體陣列(i) = 字體陣列(i)
   i = i + 1
Loop

tree字形樹狀結構.FontSize = CInt(顯示字型大小)
視窗代碼 = 共用視窗代碼
視窗 = 共用視窗(共用視窗代碼)
'Me.Tag = 共用視窗代碼
Me.Tag = 字形孳乳代碼
tree字形樹狀結構.AddItem ""
'tree字形樹狀結構.ListIndex = 0
tree字形樹狀結構.Image(0) = tree字形樹狀結構.PictureLeaf
現用控制項代碼 = 字形孳乳_檢字方塊

End Sub


Private Sub Form_KeyPress(KeyAscii As Integer)
If KeyAscii = vbKeyEscape Then
   DoEvents
   中斷 = True
End If

End Sub

Private Sub Form_Resize()
Dim frm高度 As Integer

frm高度 = Me.ScaleHeight - txt構字式.Height - txt構字式.Top * 3

If frm高度 > 0 Then
   tree字形樹狀結構.Height = frm高度
End If

If (Me.ScaleWidth - tree字形樹狀結構.Left * 2) > 0 Then
   tree字形樹狀結構.Width = Me.ScaleWidth - tree字形樹狀結構.Left * 2
End If

txt構字式.Width = tree字形樹狀結構.Width

End Sub

Private Sub Form_Unload(Cancel As Integer)
'字根表.Close
mdi漢字字形.mnu_字形孳乳.Enabled = True
計算現用視窗
啟動字形孳乳 = False
End Sub

Private Sub tree字形樹狀結構_GotFocus()

現用視窗代碼 = 字形孳乳代碼
現用控制項代碼 = 字形孳乳_樹狀結構

End Sub

Private Sub txt構字式_DragDrop(Source As Control, x As Single, y As Single)
Dim 字形 As String
Dim 左半部 As String
Dim 右半部 As String


左半部 = Left(txt構字式, txt構字式.SelStart)
右半部 = Right$(txt構字式, Len(txt構字式) - txt構字式.SelLength - txt構字式.SelStart)
 
If TypeOf Source Is ListBox Then
   If Source.ListIndex < 0 Then Exit Sub
   Source.Drag 2       ' End Dragging
   txt構字式 = 左半部 & Source.List(Source.ListIndex) & 右半部
End If

If TypeOf Source Is TList Then
   If Source Is Nothing Then Exit Sub
   Source.Drag 2       ' End Dragging
   Screen.MousePointer = 11
   字形 = Left(Source, 2)
   'txt構字式 = 左半部 & mdi漢字字形.txt字形.Text & 右半部
   txt構字式 = 左半部 & 拖曳字串 & 右半部
   Screen.MousePointer = 0
End If
txt構字式.SetFocus
txt構字式.SelStart = Len(txt構字式)
End Sub

Private Sub txt構字式_GotFocus()

現用視窗代碼 = 字形孳乳代碼
現用控制項代碼 = 字形孳乳_檢字方塊

End Sub

Private Sub txt構字式_KeyPress(KeyAscii As Integer)
Dim 組字式 As String
Dim i As Integer

If KeyAscii = vbKeyReturn Then
   Screen.MousePointer = 11
   
   i = 0
   Do While 字體陣列(i) <> ""
      區域字體陣列(i) = 字體陣列(i)
      i = i + 1
   Loop
   中斷 = False
   載入樹狀 Trim(txt構字式.Text)
   Screen.MousePointer = 0
End If
   
End Sub


Private Sub tree字形樹狀結構_Expand(ByVal i As Long)

'If tree字形樹狀結構.ListIndex <> -1 And Not (tree字形樹狀結構.Image(0) = tree字形樹狀結構.PictureLeaf And tree字形樹狀結構.List(0) = "") Then
   If tree字形樹狀結構.ListCountEx(i) = 1 Then
      If tree字形樹狀結構.List(i + 1) = "" Then
         Screen.MousePointer = 11
         tree字形樹狀結構.RemoveItem (i + 1)
         tree字形樹狀結構.Redraw = False
         載入細部樹狀結構 i
         tree字形樹狀結構.Redraw = True
         Screen.MousePointer = 0
      End If
   End If
   tree字形樹狀結構.Expand(i) = True
'End If

End Sub

Private Sub tree字形樹狀結構_Click()
Dim 字體 As String
Dim 字形 As String
Dim 編號 As Long

If tree字形樹狀結構.ListIndex <> -1 Then
   If tree字形樹狀結構.List(0) <> "" Then
      字體 = 轉換字體(tree字形樹狀結構.ItemFontName(tree字形樹狀結構.ListIndex))
      字形 = tree字形樹狀結構.List(tree字形樹狀結構.ListIndex)
      If Len(字形) = 1 Then
      編號 = tree字形樹狀結構.ItemLngValue(tree字形樹狀結構.ListIndex)
      
      擷取屬性 字體, 字形, 編號
      擷取構字式 字體, 字形, 編號
      If mdi漢字字形.txt字形.font.Name = "標楷體" Then 拖曳字串 = tree字形樹狀結構.List(tree字形樹狀結構.ListIndex)
      
      If 啟動字形結構 Then frm字形結構.載入字形 字體, 字形, 編號
      If 啟動異體字表 Then frm異體字表.載入字形 字體, 字形, 編號
      If 啟動字形演變 Then frm字形演變.載入字形 字體, 字形, 編號
      If 啟動字形索引 Then frm字形索引.載入字形 字體, 字形, 編號
      If 啟動異體字根 Then frm異體字根.載入字形 字體, 字形, 編號
      mdi漢字字形.txt狀態 = 孳乳狀態列
      End If
   End If
End If

End Sub

Private Sub tree字形樹狀結構_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
' Initiates dragging only after moving at least 100 twips with the mouse depressed
If (Button And 1) And (XCheck > 0) And (YCheck > 0) And ((Abs(XCheck - x) > 150) Or (Abs(YCheck - y) > 150)) Then
    XCheck = 0
    YCheck = 0  ' Reset mouse coordinates
    If tree字形樹狀結構.ListIndex >= 0 Then
        tree字形樹狀結構.BeforeDrag
        tree字形樹狀結構.Drag 1         ' Start drag
    End If
End If

'If Button = 1 Then
'    tree字形樹狀結構.BeforeDrag
'    tree字形樹狀結構.Drag 1
'End If

End Sub

Public Function 建構組字式(組字式 As String) As String
Dim 字形編號堆疊(100) As Integer, 字形堆疊(100) As String
Dim maxid As Integer
Dim i As Integer, j As Integer, temp As Integer, temp2 As String
Dim 構字式 As String, 符號 As String

If mdi漢字字形.mnu_字形孳乳採用SQL語法.Checked And 組字式 = "*" Then
    建構組字式 = "*"
    Exit Function
End If

If 系統字體 = "楷書" Then
    Set 檢字表 = 楷書檢字表
    Set 字根表 = 楷書字根
ElseIf 系統字體 = "小篆" Then
    Set 檢字表 = 小篆檢字表
    Set 字根表 = 小篆獨體字
ElseIf 系統字體 = "金文" Then
    Set 檢字表 = 金文檢字表
    Set 字根表 = 金文字根
ElseIf 系統字體 = "甲骨文" Then
    Set 檢字表 = 甲骨文檢字表
    Set 字根表 = 甲骨文字根
ElseIf 系統字體 = "楚系文字" Then
    Set 檢字表 = 楚系文字檢字表
    Set 字根表 = 楚系文字字根
End If
檢字表.Index = "字形"
字根表.Index = "字形"
maxid = 0
符號 = "*"
    
If 欄位別 = "部件序" Or 欄位別 = "部件序二" Then
   構字式 = 符號 & 組字式 & 符號
ElseIf 欄位別 = "字根序" Or 欄位別 = "字根序二" Then
       If mdi漢字字形.mnu_字形孳乳採用SQL語法.Checked Then
            構字式 = ""
       Else
            構字式 = 符號
       End If
       For i = 1 To Len(組字式)
           檢字表.Seek "=", Mid(組字式, i, 1)
           If Not 檢字表.NoMatch Then
              Do While Not 檢字表.EOF And 檢字表.Fields("字形") = Mid(組字式, i, 1)     '標楷體
                ' If 檢字表.Fields("字體") = 0 Then
                    構字式 = 構字式 & 檢字表.Fields(欄位別)
                    Exit Do
                'End If
                 檢字表.MoveNext
              Loop
           ElseIf mdi漢字字形.mnu_字形孳乳採用SQL語法.Checked And 是否為萬用字元(Mid(組字式, i, 1)) Then
                構字式 = 構字式 & Mid(組字式, i, 1)
           End If
           If Not mdi漢字字形.mnu_字形孳乳採用SQL語法.Checked Then 構字式 = 構字式 & 符號
       Next
Else
   '欄位別=字根組 OR 字根組二
    maxid = 0
    For i = 1 To Len(組字式)
        檢字表.Seek "=", Mid(組字式, i, 1)
        If Not 檢字表.NoMatch Then
           Do While Not 檢字表.EOF
              If Not IsNull(檢字表.Fields("字形")) Then
'              If 檢字表.Fields("字體") = 0 Then
                 If Not IsNull(檢字表.Fields(欄位別)) Then
                    For j = 1 To Len(檢字表.Fields(欄位別))
                        字形堆疊(maxid) = Mid(檢字表.Fields(欄位別), j, 1)
                        maxid = maxid + 1
                    Next j
                 End If
                 Exit Do
              End If
              檢字表.MoveNext
           Loop
        End If
    Next
 
    For i = 0 To maxid - 1
        字根表.Seek "=", 字形堆疊(i)
        If Not 字根表.NoMatch Then
           字形編號堆疊(i) = 字根表.Fields("編號")
        End If
    Next
  
    For i = 0 To maxid - 2
        For j = i + 1 To maxid - 1
            If 字形編號堆疊(i) > 字形編號堆疊(j) Then
               temp = 字形編號堆疊(i)
               字形編號堆疊(i) = 字形編號堆疊(j)
               字形編號堆疊(j) = temp
               temp2 = 字形堆疊(i)
               字形堆疊(i) = 字形堆疊(j)
               字形堆疊(j) = temp2
            End If
        Next
    Next
       
    構字式 = 符號
       
    For i = 0 To maxid - 1
        構字式 = 構字式 & 字形堆疊(i) & 符號
    Next
End If

建構組字式 = 構字式
End Function


Private Sub 載入樹狀(組字式 As String)
Dim 字形表 As Recordset
Dim SQL陳述式 As String
Dim i As Integer, 字數 As Integer
Dim 樹根 As String
Dim 字形 As String, 字根 As String
Dim 字型檔 As String
Dim 百分比 As Long
Dim wd As String, 暫存組字式 As String, 次數 As Integer, times As Integer
Dim 孳乳總數 As Long, 逐級列出條件 As String
Dim 字集篩選 As String, 字集組字字數 As String
Dim 非字 As Boolean, 部件 As Boolean, 字集欄位 As String

mdi漢字字形.txt狀態 = "字形載入中  ......       " & " , 欲中斷請按 Esc 鍵"
Screen.MousePointer = ccHourglass

tree字形樹狀結構.Clear
樹根 = 組字式

If (Len(組字式) = 2 And Mid(組字式, 1, 1) >= "��" And Mid(組字式, 1, 1) <= "��") Then
    wd = Mid(組字式, 1, 1)
    If wd = "��" Or wd = "��" Then
       次數 = 2
    ElseIf wd = "��" Or wd = "��" Or wd = "��" Then
       次數 = 3
    ElseIf wd = "��" Or wd = "��" Or wd = "��" Then
       次數 = 4
    End If
    暫存組字式 = Mid(組字式, 2, 1)
    For times = 1 To 次數 - 1
        暫存組字式 = 暫存組字式 + 暫存組字式
    Next times
    組字式 = 暫存組字式
End If

If mdi漢字字形.mnu_字形孳乳採用SQL語法.Checked = True Then
    If mdi漢字字形.mnu_字形孳乳包含異寫部件.Checked = True Then
        欄位別 = "字根序二"
    Else
        欄位別 = "字根序"
    End If
    GoTo 開始建構組字式
End If

If mdi漢字字形.mnu_字形孳乳包含異寫部件.Checked = True And 系統字體 = "楷書" Then    '包含異寫
   If Len(組字式) = 1 Then
     '檢查是否為相似字根
      異寫字根.Seek "=", 組字式
      If Not 異寫字根.NoMatch Then
         組字式 = 異寫字根.Fields("異寫")
      End If
      If mdi漢字字形.mnu_字形孳乳逐級列出單一部件.Checked = True Then
         欄位別 = "部件序二"
      Else
         欄位別 = "字根序二"
      End If
   Else
      If mdi漢字字形.mnu_字形孳乳遵照輸入部件順序.Checked = True Then
         欄位別 = "字根序二"
      Else
         欄位別 = "字根組二"
      End If
   End If
Else
   '不包含異寫
   If mdi漢字字形.mnu_字形孳乳逐級列出單一部件.Checked = True And Len(組字式) = 1 Then
      欄位別 = "部件序"
   Else
      If Len(組字式) = 1 Or mdi漢字字形.mnu_字形孳乳遵照輸入部件順序.Checked = True Then
         欄位別 = "字根序"
      Else
         欄位別 = "字根組"
      End If
   End If
End If

開始建構組字式:

If 系統字體 = "小篆" Then
    If 欄位別 = "部件序二" Then 欄位別 = "部件序"
    If 欄位別 = "字根序二" Then 欄位別 = "字根序"
    If 欄位別 = "字根組二" Then 欄位別 = "字根組"
    For i = 1 To Len(組字式)
        字根 = Mid(組字式, i, 1)
        小篆異寫字根.Seek "=", 字根
        If Not 小篆異寫字根.NoMatch Then Mid(組字式, i, 1) = 小篆異寫字根.Fields("異寫")
    Next i
    樹根 = 組字式
End If

If 系統字體 = "金文" Then
    If 欄位別 = "部件序二" Then 欄位別 = "部件序"
    If 欄位別 = "字根序二" Then 欄位別 = "字根序"
    If 欄位別 = "字根組二" Then 欄位別 = "字根組"
    For i = 1 To Len(組字式)
        字根 = Mid(組字式, i, 1)
        金文異寫字根.Seek "=", 字根
        If Not 金文異寫字根.NoMatch Then Mid(組字式, i, 1) = 金文異寫字根.Fields("異寫")
    Next i
    樹根 = 組字式
End If

If 系統字體 = "甲骨文" Then
    If 欄位別 = "部件序二" Then 欄位別 = "部件序"
    If 欄位別 = "字根序二" Then 欄位別 = "字根序"
    If 欄位別 = "字根組二" Then 欄位別 = "字根組"
    For i = 1 To Len(組字式)
        字根 = Mid(組字式, i, 1)
        甲骨文異寫字根.Seek "=", 字根
        If Not 甲骨文異寫字根.NoMatch Then Mid(組字式, i, 1) = 甲骨文異寫字根.Fields("異寫")
    Next i
    樹根 = 組字式
End If

If 系統字體 = "楚系文字" Then
    If 欄位別 = "部件序二" Then 欄位別 = "部件序"
    If 欄位別 = "字根序二" Then 欄位別 = "字根序"
    If 欄位別 = "字根組二" Then 欄位別 = "字根組"
    For i = 1 To Len(組字式)
        字根 = Mid(組字式, i, 1)
        楚系文字異寫字根.Seek "=", 字根
        If Not 楚系文字異寫字根.NoMatch Then Mid(組字式, i, 1) = 楚系文字異寫字根.Fields("異寫")
    Next i
    樹根 = 組字式
End If

組字式 = 建構組字式(組字式)

If mdi漢字字形.mnu_常用字.Checked = True Then
    字集欄位 = "常用字"
    字集篩選 = "常用字 > 0"
    字集組字字數 = "[組字字數(常用字)]"
ElseIf mdi漢字字形.mnu_Big5.Checked = True Then
    字集欄位 = "Big5"
    字集篩選 = "編號 > 0 and 編號 <= 13053"
    字集組字字數 = "[組字字數(Big5)]"
ElseIf mdi漢字字形.mnu_簡化字總表.Checked = True Then
    字集欄位 = "簡化字"
    字集篩選 = "簡化字 > 0"
    字集組字字數 = "[組字字數(簡化字)]"
ElseIf mdi漢字字形.mnu_漢語大字典.Checked = True Then
    字集欄位 = "漢語大字典"
    字集篩選 = "漢語大字典 > 0"
    字集組字字數 = "[組字字數(漢語大字典)]"
ElseIf mdi漢字字形.mnu_金文圖形文字.Checked = True Then
    字集欄位 = "編號"
    字集篩選 = "編號>0 and 圖形文字>0"
    字集組字字數 = "[組字字數(圖形文字)]"
Else
    字集欄位 = "編號"
    字集篩選 = "編號 > 0"
    字集組字字數 = "組字字數"
End If


If 初始逐級列出 = 1 And Mid(欄位別, 1, 2) = "部件" Then
   '逐級列出條件 = " ( " & 字集組字字數 & " > 1 or ( " & 字集組字字數 & " = 1 and " & 字集篩選 & " ) )"
   逐級列出條件 = " ( " & 字集組字字數 & " > 0 )"
Else
   逐級列出條件 = " (  " & 字集篩選 & " ) "
End If

If Mid(欄位別, 1, 2) = "字根" Then
   If 系統字體 = "楷書" Then
        SQL陳述式 = "SELECT * From 檢字表 Where 編號>0 and " & 逐級列出條件 & " and " & 欄位別 & " Like '" & 組字式 & "'  ORDER BY 部首筆畫排序,組字字數 DESC "
   Else
        SQL陳述式 = "SELECT * From 檢字表 Where 編號>0 and " & 逐級列出條件 & " and " & 欄位別 & " Like '" & 組字式 & "'  ORDER BY 編號,組字字數 DESC "
   End If
Else
   If 系統字體 = "楷書" Then
        SQL陳述式 = "SELECT * From 檢字表 Where (字形='" & 樹根 & "') or ( " & 逐級列出條件 & " And " & 欄位別 & " Like '" & 組字式 & "')  ORDER BY 部首筆畫排序,組字字數 DESC "
   Else
        SQL陳述式 = "SELECT * From 檢字表 Where (字形='" & 樹根 & "') or ( " & 逐級列出條件 & " And " & 欄位別 & " Like '" & 組字式 & "')  ORDER BY 編號,組字字數 DESC "
   End If
End If

DoEvents

樹根序數 = 0
孳乳總數 = 0
總數 = 0

'If 組字式 <> "" And 組字式 <> "*" And 組字式 <> "**" Then
If 組字式 <> "" And 組字式 <> "**" Then
   tree字形樹狀結構.Redraw = False
   
    If 系統字體 = "楷書" Then
        Set 字形表 = 系統資料庫.OpenRecordset(SQL陳述式)
    ElseIf 系統字體 = "小篆" Then
        Set 字形表 = 小篆資料庫.OpenRecordset(SQL陳述式)
    ElseIf 系統字體 = "金文" Then
        Set 字形表 = 金文資料庫.OpenRecordset(SQL陳述式)
    ElseIf 系統字體 = "甲骨文" Then
        Set 字形表 = 甲骨文資料庫.OpenRecordset(SQL陳述式)
    ElseIf 系統字體 = "楚系文字" Then
        Set 字形表 = 楚系文字資料庫.OpenRecordset(SQL陳述式)
    End If
   
   If Not 字形表.EOF Then
   
      字形表.MoveLast
      總數 = 字形表.RecordCount
            
      If 組字式 <> "*" Then
        tree字形樹狀結構.AddItem 樹根
      Else
        tree字形樹狀結構.AddItem "＊"
      End If
      If 系統字體 = "楷書" Then
        tree字形樹狀結構.ItemFontName(0) = 顯示字型 '現用字體
      ElseIf 系統字體 = "小篆" Then
        tree字形樹狀結構.ItemFontName(0) = "北師大說文小篆"
      ElseIf 系統字體 = "金文" Then
        tree字形樹狀結構.ItemFontName(0) = "中研院金文"
      ElseIf 系統字體 = "甲骨文" Then
        tree字形樹狀結構.ItemFontName(0) = "中研院甲骨文"
      ElseIf 系統字體 = "楚系文字" Then
        tree字形樹狀結構.ItemFontName(0) = "中研院楚系簡帛文字"
      End If
      
      tree字形樹狀結構.ItemLngValue(0) = -999999
      If Len(樹根) = 1 Then
         tree字形樹狀結構.ItemTag(0) = 字形節點標記
      Else
         tree字形樹狀結構.ItemTag(0) = 其他節點標記
      End If
        
      tree字形樹狀結構.Expand(0) = True
    
      字形表.MoveFirst

      Do Until 字形表.EOF
         If 中斷 = True Then Exit Do
         
         百分比 = 樹根序數 / 總數 * 100
         mdi漢字字形.txt狀態 = "字形載入已完成 " & 百分比 & " % , 欲中斷請按 Esc 鍵"
         
         If Not IsNull(字形表.Fields("字形")) And 字形表.Fields("字形") <> "" Then
            字形 = 字形表.Fields("字形")
         Else
            If Not IsNull(字形表.Fields("字碼")) And 字形表.Fields("字碼") <> "" Then
               字形 = 字形表.Fields("字碼")
            Else
               字形 = "●"
            End If
         End If
           
         字數 = 字形表.Fields(字集組字字數)
         If 字集欄位 <> "Big5" Then
            If IsNull(字形表.Fields(字集欄位)) Then
                非字 = True
            ElseIf 字形表.Fields(字集欄位) = 0 Then
                非字 = True
            Else
                非字 = False
            End If
         Else
            If 字形表.Fields("編號") > 0 And 字形表.Fields("編號") <= 13053 Then
                非字 = False
            ElseIf 字形表.Fields("編號") > 13053 Then
                非字 = True
            Else
                非字 = False
            End If
         End If
         
         If 字數 > 1 Then
            部件 = True
         ElseIf 字數 = 1 And 非字 Then
            部件 = True
         Else
            部件 = False
         End If
                    
         If Not (區域字體陣列(字形表.Fields("字體")) = 轉換字體(tree字形樹狀結構.ItemFontName(0)) And 字形 = tree字形樹狀結構.List(0)) Then
            If Not ((欄位別 = "部件序" Or 欄位別 = "部件序二") And (字形表.Fields("連接符號") = 0)) Then
               樹根序數 = 樹根序數 + 1
               If 部件 Then
                  tree字形樹狀結構.AddItem 字形, 0
                  tree字形樹狀結構.ItemFontName(tree字形樹狀結構.NewIndex) = 轉換顯示字型(區域字體陣列(字形表.Fields("字體")))
                  tree字形樹狀結構.ItemLngValue(tree字形樹狀結構.NewIndex) = 字形表.Fields("編號")
                  If Not IsNull(字形表.Fields("字形")) Then
                     tree字形樹狀結構.ItemTag(tree字形樹狀結構.NewIndex) = 字形節點標記
                  Else
                     tree字形樹狀結構.ItemTag(tree字形樹狀結構.NewIndex) = 構字式節點標記
                  End If

                  If Mid(欄位別, 1, 2) = "字根" Then
                     tree字形樹狀結構.Image(tree字形樹狀結構.NewIndex) = tree字形樹狀結構.PictureLeaf
                  Else
                     If 字形表.Fields("連接符號") = 0 Then
                        tree字形樹狀結構.Image(tree字形樹狀結構.NewIndex) = tree字形樹狀結構.PictureLeaf
                     Else
                        tree字形樹狀結構.Image(tree字形樹狀結構.NewIndex) = tree字形樹狀結構.PictureClosed
                        tree字形樹狀結構.AddItem "", tree字形樹狀結構.NewIndex
                     End If
                  End If
               Else
                  tree字形樹狀結構.AddItem 字形, 0
                  tree字形樹狀結構.Image(tree字形樹狀結構.NewIndex) = tree字形樹狀結構.PictureLeaf
                  tree字形樹狀結構.ItemFontName(tree字形樹狀結構.NewIndex) = 轉換顯示字型(區域字體陣列(字形表.Fields("字體")))
                  tree字形樹狀結構.ItemLngValue(tree字形樹狀結構.NewIndex) = 字形表.Fields("編號")
                  If Not IsNull(字形表.Fields("字形")) Then
                     tree字形樹狀結構.ItemTag(tree字形樹狀結構.NewIndex) = 字形節點標記
                  Else
                     tree字形樹狀結構.ItemTag(tree字形樹狀結構.NewIndex) = 構字式節點標記
                  End If

               End If
             End If
         Else
            If 欄位別 = "部件序" Or 系統字體 <> "楷書" Then
                孳乳總數 = 字形表.Fields("組字字數")
            ElseIf 欄位別 = "部件序二" Then
                孳乳總數 = 字形表.Fields("組字字數二")
            Else
                樹根序數 = 樹根序數 + 1
            End If
            
            If 部件 Then
               tree字形樹狀結構.Image(0) = tree字形樹狀結構.PictureOpen
            Else
               If Len(樹根) = 1 Then
                  tree字形樹狀結構.Image(0) = tree字形樹狀結構.PictureLeaf
               Else
                  tree字形樹狀結構.Image(0) = tree字形樹狀結構.PictureOpen
               End If
            End If
            tree字形樹狀結構.ItemFontName(0) = 轉換顯示字型(區域字體陣列(字形表.Fields("字體")))
            tree字形樹狀結構.ItemLngValue(0) = 字形表.Fields("編號")
            If Len(樹根) = 1 Then
               tree字形樹狀結構.ItemTag(0) = 字形節點標記
            Else
               tree字形樹狀結構.ItemTag(0) = 其他節點標記
            End If
         End If
         
         字形表.MoveNext
         
         If (tree字形樹狀結構.ListCount + 10) Mod 50 = 0 Then
            tree字形樹狀結構.Redraw = True
            Screen.MousePointer = ccDefault
            DoEvents
            tree字形樹狀結構.Redraw = False
            Screen.MousePointer = ccHourglass
         End If
         
      Loop
   Else
      總數 = 0
   End If
End If

If 總數 > 0 Then
    If tree字形樹狀結構.ItemLngValue(0) = -999999 And Len(tree字形樹狀結構.List(0)) = 1 Then

        If 系統字體 = "小篆" Then
            Set 檢字表 = 小篆檢字表
        ElseIf 系統字體 = "中研院金文" Then
            Set 檢字表 = 金文檢字表
        ElseIf 系統字體 = "中研院甲骨文" Then
            Set 檢字表 = 甲骨文檢字表
        ElseIf 系統字體 = "中研院楚系簡帛文字" Then
            Set 檢字表 = 楚系文字檢字表
        Else
            Set 檢字表 = 楷書檢字表
        End If
   
        檢字表.Index = "字形"
        檢字表.Seek "=", tree字形樹狀結構.List(0)
        If Not 檢字表.NoMatch Then
            If 檢字表.Fields("編號") = 0 And 系統字體 = "小篆" Then
                tree字形樹狀結構.ItemFontName(0) = "標楷體"
                tree字形樹狀結構.ItemLngValue(0) = 檢字表.Fields("楷書編號")
            Else
                tree字形樹狀結構.ItemLngValue(0) = 檢字表.Fields("編號")
            End If
        End If
    End If

End If

If Mid(欄位別, 1, 3) <> "部件序" Then 孳乳總數 = 樹根序數

tree字形樹狀結構.Redraw = True
孳乳狀態列 = "載入完畢！ 共 " & 總數 & " 個字形(部件)"
mdi漢字字形.txt狀態 = 孳乳狀態列
'mdi漢字字形.sbar狀態列.Visible = True

細部系統字體 = 系統字體

Screen.MousePointer = ccDefault

End Sub

Public Sub 載入細部樹狀結構(i As Long)
Dim 細部字形表 As Recordset
Dim 組字式 As String, 字形 As String
Dim SQL陳述式 As String, 細部總數 As Long
Dim 字型檔 As String, 逐級列出條件 As String
Dim 編號 As Long, 字數 As Integer
Dim 字集篩選 As String, 字集組字字數 As String
Dim 非字 As Boolean, 部件 As Boolean, 字集欄位 As String


If mdi漢字字形.mnu_字形孳乳包含異寫部件.Checked = True Then    '包含異寫
   If Len(tree字形樹狀結構.List(i)) = 1 Then
      '檢查是否為異寫字根
      異寫字根.Seek "=", tree字形樹狀結構.List(i)
      If Not 異寫字根.NoMatch Then
         組字式 = 異寫字根.Fields("異寫")
      Else
         組字式 = tree字形樹狀結構.List(i)
      End If
      If mdi漢字字形.mnu_字形孳乳逐級列出單一部件.Checked = True Then
         欄位別 = "部件序二"
      Else
         欄位別 = "字根序二"
      End If
   Else
      欄位別 = "字根組二"
   End If
Else
   '不包含異寫
   組字式 = tree字形樹狀結構.List(i)
   If mdi漢字字形.mnu_字形孳乳逐級列出單一部件.Checked = True And Len(組字式) = 1 Then
      欄位別 = "部件序"
   Else
      If Len(組字式) = 1 Then
         欄位別 = "字根序"
      Else
         欄位別 = "字根組"
      End If
   End If
End If

If 細部系統字體 = "小篆" Or 細部系統字體 = "金文" Or 細部系統字體 = "甲骨文" Or 細部系統字體 = "楚系文字" Then
    If 欄位別 = "部件序二" Then 欄位別 = "部件序"
    If 欄位別 = "字根序二" Then 欄位別 = "字根序"
    If 欄位別 = "字根組二" Then 欄位別 = "字根組"
    'For i = 1 To Len(組字式)
    '    字根 = Mid(組字式, i, 1)
    '    小篆異寫字根.Seek "=", 字根
    '    If Not 小篆異寫字根.NoMatch Then Mid(組字式, i, 1) = 小篆異寫字根.Fields("異寫")
    'Next i
    '樹根 = 組字式
End If

組字式 = 建構組字式(組字式)

'If 初始逐級列出 = 1 Then
'   逐級列出條件 = " ( 組字字數 > 1 or ( 組字字數 =1 and 字頻 >= " & Trim(初始字頻) & " ) )"
'Else
'   逐級列出條件 = " ( 字頻 >= " & Trim(初始字頻) & " ) "
'End If

If mdi漢字字形.mnu_常用字.Checked = True Then
    字集欄位 = "常用字"
    字集篩選 = "常用字 > 0"
    字集組字字數 = "[組字字數(常用字)]"
ElseIf mdi漢字字形.mnu_Big5.Checked = True Then
    字集欄位 = "Big5"
    字集篩選 = "編號 > 0 and 編號 <= 13053"
    字集組字字數 = "[組字字數(Big5)]"
ElseIf mdi漢字字形.mnu_簡化字總表.Checked = True Then
    字集欄位 = "簡化字"
    字集篩選 = "簡化字 > 0"
    字集組字字數 = "[組字字數(簡化字)]"
ElseIf mdi漢字字形.mnu_漢語大字典.Checked = True Then
    字集欄位 = "漢語大字典"
    字集篩選 = "漢語大字典 > 0"
    字集組字字數 = "[組字字數(漢語大字典)]"
Else
    字集欄位 = "編號"
    字集篩選 = "編號 > 0"
    字集組字字數 = "組字字數"
End If


If 初始逐級列出 = 1 And Mid(欄位別, 1, 2) = "部件" Then
   '逐級列出條件 = " ( " & 字集組字字數 & " > 1 or ( " & 字集組字字數 & " = 1 and " & 字集篩選 & " ) )"
   逐級列出條件 = " ( " & 字集組字字數 & " > 0 )"
Else
   逐級列出條件 = " (  " & 字集篩選 & " ) "
End If

If Mid(欄位別, 1, 2) = "字根" Then
    If 細部系統字體 = "楷書" Then
        SQL陳述式 = "SELECT * From 檢字表 Where 編號>0 and " & 逐級列出條件 & " and " & 欄位別 & " Like '" & 組字式 & "'  ORDER BY 部首筆畫排序,組字字數 DESC "
    Else
        SQL陳述式 = "SELECT * From 檢字表 Where 編號>0 and " & 逐級列出條件 & " and " & 欄位別 & " Like '" & 組字式 & "'  ORDER BY 編號,組字字數 DESC "
    End If
Else
    If 細部系統字體 = "楷書" Then
        SQL陳述式 = "SELECT * From 檢字表 Where (字形='" & tree字形樹狀結構.List(i) & "') or ( " & 逐級列出條件 & " And " & 欄位別 & " Like '" & 組字式 & "')  ORDER BY 部首筆畫排序,組字字數 DESC "
    Else
        SQL陳述式 = "SELECT * From 檢字表 Where (字形='" & tree字形樹狀結構.List(i) & "') or ( " & 逐級列出條件 & " And " & 欄位別 & " Like '" & 組字式 & "')  ORDER BY 編號,組字字數 DESC "
    End If
End If

If 細部系統字體 = "楷書" Then
    Set 細部字形表 = 系統資料庫.OpenRecordset(SQL陳述式)
ElseIf 細部系統字體 = "小篆" Then
    Set 細部字形表 = 小篆資料庫.OpenRecordset(SQL陳述式)
ElseIf 細部系統字體 = "金文" Then
    Set 細部字形表 = 金文資料庫.OpenRecordset(SQL陳述式)
ElseIf 細部系統字體 = "甲骨文" Then
    Set 細部字形表 = 甲骨文資料庫.OpenRecordset(SQL陳述式)
ElseIf 細部系統字體 = "楚系文字" Then
    Set 細部字形表 = 楚系文字資料庫.OpenRecordset(SQL陳述式)
End If
   
細部字形表.MoveLast
細部總數 = 細部字形表.RecordCount

細部字形表.MoveFirst

   If Not 細部字形表.EOF Then
      
      Do Until 細部字形表.EOF
        
         If Not IsNull(細部字形表.Fields("字形")) Then
            字形 = 細部字形表.Fields("字形")
         Else
            If Not IsNull(細部字形表.Fields("字碼")) Then
              字形 = 細部字形表.Fields("字碼")
            Else
              字形 = "●"
            End If
         End If
         
         '字數 = 細部字形表.Fields("組字字數")
         字數 = 細部字形表.Fields(字集組字字數)
         If 字集欄位 <> "Big5" Then
            If IsNull(細部字形表.Fields(字集欄位)) Then
                非字 = True
            ElseIf 細部字形表.Fields(字集欄位) = 0 Then
                非字 = True
            Else
                非字 = False
            End If
         Else
            If 細部字形表.Fields("編號") > 0 And 細部字形表.Fields("編號") <= 13053 Then
                非字 = False
            ElseIf 細部字形表.Fields("編號") > 13053 Then
                非字 = True
            Else
                非字 = False
            End If
         End If
         
         If 字數 > 1 Then
            部件 = True
         ElseIf 字數 = 1 And 非字 Then
            部件 = True
         Else
            部件 = False
         End If
         
         If Not (區域字體陣列(細部字形表.Fields("字體")) = 轉換字體(tree字形樹狀結構.ItemFontName(i)) And 字形 = tree字形樹狀結構.List(i)) Then
            If Not ((欄位別 = "部件序" Or 欄位別 = "部件序二") And (細部字形表.Fields("連接符號") = 0)) Then
               If 部件 Then
                  tree字形樹狀結構.AddItem 字形, i
                  tree字形樹狀結構.ItemFontName(tree字形樹狀結構.NewIndex) = 轉換顯示字型(區域字體陣列(細部字形表.Fields("字體")))
                  tree字形樹狀結構.ItemLngValue(tree字形樹狀結構.NewIndex) = 細部字形表.Fields("編號")
                  If Not IsNull(細部字形表.Fields("字形")) Then
                     tree字形樹狀結構.ItemTag(tree字形樹狀結構.NewIndex) = 字形節點標記
                  Else
                     tree字形樹狀結構.ItemTag(tree字形樹狀結構.NewIndex) = 構字式節點標記
                  End If
                  
                  If Mid(欄位別, 1, 2) = "字根" Then
                     tree字形樹狀結構.Image(tree字形樹狀結構.NewIndex) = tree字形樹狀結構.PictureLeaf
                  Else
                     If 細部字形表.Fields("連接符號") = 0 Then
                        tree字形樹狀結構.Image(tree字形樹狀結構.NewIndex) = tree字形樹狀結構.PictureLeaf
                     Else
                        tree字形樹狀結構.Image(tree字形樹狀結構.NewIndex) = tree字形樹狀結構.PictureClosed
                        tree字形樹狀結構.AddItem "", tree字形樹狀結構.NewIndex
                     End If
                  End If
               Else
                  tree字形樹狀結構.AddItem 字形, i
                  tree字形樹狀結構.Image(tree字形樹狀結構.NewIndex) = tree字形樹狀結構.PictureLeaf
                  tree字形樹狀結構.ItemFontName(tree字形樹狀結構.NewIndex) = 轉換顯示字型(區域字體陣列(細部字形表.Fields("字體")))
                  tree字形樹狀結構.ItemLngValue(tree字形樹狀結構.NewIndex) = 細部字形表.Fields("編號")
                  If Not IsNull(細部字形表.Fields("字形")) Then
                     tree字形樹狀結構.ItemTag(tree字形樹狀結構.NewIndex) = 字形節點標記
                  Else
                     tree字形樹狀結構.ItemTag(tree字形樹狀結構.NewIndex) = 構字式節點標記
                  End If
               End If
            End If
         End If
         細部字形表.MoveNext
      Loop
   End If
  
   孳乳狀態列 = "載入完畢！ 共 " & 細部總數 & " 個字形(部件)"
   mdi漢字字形.txt狀態 = 孳乳狀態列
   'mdi漢字字形.sbar狀態列.Visible = True

End Sub

Private Sub tree字形樹狀結構_DragOver(Source As Control, x As Single, y As Single, State As Integer)

tree字形樹狀結構.OnDragOver x, y, State

End Sub


Private Sub tree字形樹狀結構_LostFocus()

tree字形樹狀結構.ListIndex = -1

End Sub

Private Sub tree字形樹狀結構_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)

XCheck = x
YCheck = y

End Sub

Public Sub 列出選定字集中的所有字形()

Dim 部件 As String, LikeSQL As Boolean

部件 = txt構字式
LikeSQL = mdi漢字字形.mnu_字形孳乳採用SQL語法.Checked

txt構字式 = "*"
mdi漢字字形.mnu_字形孳乳採用SQL語法.Checked = True
txt構字式_KeyPress (vbKeyReturn)

txt構字式 = 部件
mdi漢字字形.mnu_字形孳乳採用SQL語法.Checked = LikeSQL

End Sub
