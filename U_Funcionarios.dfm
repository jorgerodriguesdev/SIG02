object F_Funcionarios: TF_Funcionarios
  Left = 70
  Top = 76
  BorderStyle = bsDialog
  Caption = 'Cadastro de Funcion'#225'rios'
  ClientHeight = 460
  ClientWidth = 678
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanEdits: TPanel
    Left = 0
    Top = 49
    Width = 678
    Height = 315
    Align = alClient
    BevelInner = bvLowered
    BevelWidth = 2
    Color = clTeal
    TabOrder = 3
    object Bevel2: TBevel
      Left = 424
      Top = 240
      Width = 233
      Height = 57
    end
    object Label2: TLabel
      Left = 488
      Top = 21
      Width = 58
      Height = 16
      Caption = 'coddpto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 16
      Width = 39
      Height = 16
      Caption = 'nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 72
      Width = 67
      Height = 16
      Caption = 'endereco'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 44
      Width = 39
      Height = 16
      Caption = 'email'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 104
      Width = 42
      Height = 16
      Caption = 'bairro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 192
      Top = 104
      Width = 49
      Height = 16
      Caption = 'cidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 376
      Top = 104
      Width = 27
      Height = 16
      Caption = 'cep'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 552
      Top = 112
      Width = 49
      Height = 16
      Caption = 'estado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 16
      Top = 144
      Width = 31
      Height = 16
      Caption = 'fone'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 168
      Top = 144
      Width = 48
      Height = 16
      Caption = 'celular'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 488
      Top = 144
      Width = 22
      Height = 16
      Caption = 'cpf'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 16
      Top = 184
      Width = 15
      Height = 16
      Caption = 'rg'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 176
      Top = 187
      Width = 56
      Height = 16
      Caption = 'orgaorg'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 328
      Top = 144
      Width = 44
      Height = 16
      Caption = 'posse'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 376
      Top = 192
      Width = 41
      Height = 16
      Caption = 'cargo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 552
      Top = 184
      Width = 68
      Height = 16
      Caption = 'comissao'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 32
      Top = 232
      Width = 35
      Height = 16
      Caption = 'login'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 24
      Top = 272
      Width = 43
      Height = 16
      Caption = 'senha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn7: TBitBtn
      Left = 437
      Top = 249
      Width = 100
      Height = 40
      Hint = 'Clique aqui para cancelar a opera'#231#227'o'
      Caption = 'Ca&ncelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 19
      OnClick = BitBtn7Click
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000007077707077
        70707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000FF9790FF9790FF9790FF97900000000000
        00707770707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000000000FFC8CFFFC8CFFFC8CFFFC8CFFFC8CFFFC8CFFF9790FF97
        90000000707770707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        000000FF9790FF9790FFC8CFFFC8CFFFC8CF00C8FFFFFFFFFFFFFFFFC8CFFFC8
        CFFF9790000000707770707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        000000FF9790FF9790FFC8CFFFC8CF00C8FF90302F00C8FFFFC8CFFFFFFFFFC8
        CFFF9790000000000000707770707770707770FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        CF6760FF9790FF9790FF9790FFC8CF00C8FF90302F00C8FFFFC8CFFFC8CFFFFF
        FFFFC8CFFF9790000000000000707770707770707770FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        CF6760FF9790FF9790FF97900000A000C8FF90302F00C8FF000090FFC8CFFFFF
        FFFFC8CFFF9790000000000080000000707770707770707770FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000CF6760
        FF9790FF979000C8FF00C8FF00C8FF90302F90302F90302F00C8FF00C8FF00C8
        FFFFC8CFFF9790000000000080000060000000707770707770707770FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000CF6760
        FF979000C8FF90302F90302F90302F90302FFF979090302F90302F90302F9030
        2F00C8FFFF9790000000000080000060000080000000707770707770707770FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000CF6760
        FF9790CF676000C8FF00C8FF00C8FF90302F90302F90302F00C8FF00C8FF00C8
        FFFFC8CFFF97900000000000A000006000008000006000000070777070777070
        7770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000CF6760
        FF9790CF6760FF9790FF97900000A000C8FF90302F00C8FF000090FFC8CFFFC8
        CFFFC8CF0000000000A00000A000009000008000006000008000000070777070
        7770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000CF6760
        FF9790CF6760FF9790FF9790FF979000C8FF90302F00C8FFFFC8CFFFC8CFFFC8
        CFFFC8CF0000000000A00000900000A00000A000006000008000000070777070
        7770707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000CF6760
        FF9790CF6760FF9790FFFFFFFF979000C8FF90302F00C8FFFFC8CFFFC8CFFF97
        900000000000CF0000CF0000A00000900000A00000A000006000000000000070
        7770707770707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        CF6760FF9790CF6760FF9790FF9790FF979000C8FFFF9790FF9790FF9790FF97
        900000000000CF0000CF0000CF0000A00000A00000900000A000000000008000
        0000707770707770707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        CF6760FF9790FF9790CF6760CF6760FF9790FF9790FF9790FF9790FF97900000
        000000DF0000FF0000CF0000CF0000CF0000A00000900000A000000000008000
        0090000000707770707770707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        000000CF6760CF6760FF9790FF9790FF9790FF9790FF97900000000000000000
        DF0000A00000DF0000FF0000CF0000CF0000CF0000A00000900000000000A000
        0080000090000000707770707770707770707770FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000000000CF6760CF6760CF67600000000000000000DF0000FF0000
        DF0000DF0000A00000DF0000FF0000CF0000CF0000CF0000000000A000009000
        00A0000080000090000000707770707770707770707770FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000000000000000000000DF0000FF9097FF0000DF0000
        DF0000FF0000DF0000A00000DF0000DF0000DF0000CF0000000000CF0000A000
        00900000A0000080000090000000707770707770707770707770FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000000000800000CF0000DF0000FF9097FF0000
        DF0000FF0000DF0000DF0000A00000DF0000FF0000000000CF0000CF0000CF00
        00A00000900000A0000080000090000000707770707770707770FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000800000CF0000DF0000FF9097
        FF0000DF0000FF0000DF0000DF0000A00000DF0000000000FF0000CF0000CF00
        00CF0000A00000900000A0000080000000707770707770FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000800000CF0000DF0000
        FF9097FF0000DF0000FF0000DF0000DF0000000000A00000DF0000FF0000CF00
        00CF0000CF0000A00000900000A0000080000000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000800000CF0000
        DF0000FF9097FF0000DF0000000000000000FF0000DF0000A00000DF0000DF00
        00DF0000CF0000CF0000900000A00000A0000000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000800000
        CF0000DF0000000000009097FF0000DF0000FF0000DF0000DF0000A00000DF00
        00FF0000CF0000CF0000CF0000A0000090000000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000
        000000000000000000DF0000FF9097FF0000DF0000DF0000FF0000DF0000A000
        00DF0000DF0000DF0000CF0000CF000090000000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF0000000000800000CF0000DF0000FF9097FF0000DF0000FF0000DF0000DF00
        00A00000DF0000FF0000CF0000CF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000000000800000CF0000DF0000FF9097FF0000DF0000FF0000DF00
        00DF0000A00000DF0000FF0000CF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF0000000000800000CF0000DF0000FF9097FF0000DF0000FF00
        00DF0000DF0000A00000DF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF0000000000800000CF0000CF0000FF9097FF0000DF00
        00DF0000FF0000DF0000A0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF0000000000800000CF0000CF0000FF9097FF00
        00DF0000DF0000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000CF0000CF0000DF90
        97FF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object BitBtn8: TBitBtn
      Left = 549
      Top = 249
      Width = 100
      Height = 40
      Hint = 'Clique aqui para confirmar a opera'#231#227'o'
      Caption = 'Con&firmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 20
      OnClick = BitBtn8Click
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFF0000000000000000007077707077707077707077707077707077
        7070777070777070777070777070777000000000000000000070777070777070
        7770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF0000000000DF0000800000007077707077707077707077707077
        7070777040404040404000000000000090C86060672F60672F00000070777070
        7770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF0000000000DF0000CF000090000080000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF00000000000050505050505090C86060672F60672F60672F00000070
        7770707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF0000000000DF0000CF000090000080000000FFFFFFFFFFFFFFFFFF0000
        0000000000000050505050505050505090C86060672F60672F60672F00000000
        0000707770707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000000000DF0000CF0000DF0000DF00008000008000000000000000000000C8
        FF00C8FF00000050505050505050505090C86060672F60672F60672F00000000
        C8FF000000707770707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000000000DF0000CF0000DF0000DF00008000008000000000C8FF00C8FF00C8
        FF00C8FF00000050505050505050505000000000000000000060672F00000000
        C8FF00C8FF000000707770707770707770FFFFFFFFFFFFFFFFFFFFFFFF000000
        0000DF0000CFCFC8FF6067FF0000DF0000CF00009000008000000000C8FF00C8
        FF00C8FF000000505050000000000000CF306090006090006000000000000000
        C8FF00C8FF00C8FF000000707770707770707770FFFFFFFFFFFFFFFFFF000000
        0000DF0000CFCFC8FF6067FF0000DF0000CF00009000008000000000C8FF00C8
        FF00C8FF000000000000603060603060CF306090006090006090006000000000
        C8FF00C8FF00C8FF000000000000707770707770707770FFFFFF0000000000DF
        0000CFCFC8FF6067FF6067FF0000000000DF0000CF0000900000800000000000
        00000000000000603060603060603060CF306090006090006090006000000000
        000000C8FF00C8FF000000CF302F0000007077707077707077700000006067FF
        6067FF6067FFCFC8FF0000002FC8FF0000000000DF000080000080000000FF30
        00FF3000000000603060603060603060CF306000000090006090006000000000
        008000000000C8FF000000CF302FCF302F000000707770707770FFFFFF000000
        6067FF6067FF6067FF0000002FC8FF0000000000DF0000CF0000900000800000
        00FF30000000006030606030600000000000000067FF00000090006000000000
        0060000080000000000000CF302FCF302F000000FFFFFFFFFFFFFFFFFFFFFFFF
        0000000000000000000000000000000000000000000000DF0000800000800000
        00FF30000000000000000000002F67902F97FF0067FF0067FF00000000000000
        0060000080000080000000CF302FCF302F000000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000CF3060CF30600000000000DF0000CF0000900000
        800000000000002F67902F67902F67902F97FF0067FF0067FF0067FF00000000
        00DF000080000080000000000000CF302F000000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000CF3060CF3060CF30600000000000DF0000800000
        800000000000002F67902F67902F67902F97FF0067FF0067FF0067FF00000000
        00000000DF0000800000000067FF000000000000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000CF3060CF30600000000000000000DF0000CF0000
        900000800000002F67902F67902F67902F97FF0067FF0067FF0067FF00000090
        00000000000000DF0000000067FF0067FF000000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000000000FF972F0000000000000000DF0000
        800000800000002F97FF2F97FFFFFFFFFFFFFF2FFFFF0067FF0067FF00000090
        00009000000000000000000067FF0067FF000000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000FF972FFF972FFF972F0000000000000000DF0000
        CFCFC8FF6067FF000000FFFFFF2FFFFF2FFFFF2FFFFF2FFFFF0067FF00000090
        00009000009000000000002FFFFF0067FF000000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000FF972FFF972FFF972F00000000A800000000CFC8
        FF6067FF6067FF0000002FFFFF2FFFFF2FFFFF2FFFFF2FFFFF2FFFFF00000090
        00009000009000000000000000002FFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000FF972FFF972FFF972F000000FFFFFF0000006067
        FF6067FF00000000D8000000002FFFFF2FFFFF2FFFFF000000000000FF670090
        0000900000900000000000900060000000000000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000FF972FFF972FFFFFFFFFFFFF00000000D8000000
        0000000000FF0000D80000D800000000000000000000FF6700FF6700FF6700FF
        6700900000900000000000900060900060000000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFC860FFC860FFC86000000000D8
        0000FF0000D8000000000000000000DF000000FF6700FF6700FF6700FF6700FF
        6700FF6700900000000000900060900060000000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000FFC860FFC860FFC860FFC860FFC860FFC8600000
        000000000000000000DF0000FF0000DF0000DF000000FF6700FF6700FF6700FF
        6700000000000000900060900060900060000000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF000000FFC860FFC860FFC860FFC8600000000000
        000000000000DF0000FF0000DF0000DF0000FF0000DF000000FF670000000000
        0000FF3090FF3090FF3090900060900060000000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC860000000000000CFFF90CFFF
        90CFFF900000000000DF0000FF0000DF0000DF0000FF000000000000FF3090FF
        3090FF3090FF3090FF3090FF3090900060000000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000CFFF90CFFF90CFFF90CFFF
        90CFFF90CFFF900000000000DF0000FF0000000000002F97FF2F97FF000000FF
        3090FF3090FF3090FF3090FF3090FF3090000000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000CFFF90CFFF90CFFF
        90CFFF90CFFF90CFFF900000000000002F97FF2F97FF2F97FF2F97FF2F97FF00
        0000FF3090FF3090FF3090000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000CFFF90CFFF
        90CFFF900000000000002FFFFF0000002F97FF2F97FF2F97FF2F97FF2F97FF2F
        97FF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000
        000000002FFFFF2FFFFF2FFFFF2FFFFF0000002F97FF2F97FF2F97FF2F97FF00
        0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        002FFFFF2FFFFF2FFFFF2FFFFF2FFFFF2FFFFF0000002F97FF000000000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF0000002FFFFF2FFFFF2FFFFF2FFFFFFFFFFF000000000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000002FFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object CheckBox1: TCheckBox
      Left = 248
      Top = 264
      Width = 121
      Height = 17
      Hint = 
        'Marque essa op'#231#227'o caso o funcion'#225'rio tenha acesso total ao siste' +
        'ma'
      Caption = 'Acesso Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 18
    end
    object EditNome: TEdit
      Left = 60
      Top = 15
      Width = 413
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 50
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 552
      Top = 16
      Width = 41
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 64
      Top = 44
      Width = 593
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 255
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 89
      Top = 72
      Width = 568
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object Edit5: TEdit
      Left = 61
      Top = 101
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object Edit6: TEdit
      Left = 247
      Top = 102
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object Edit7: TEdit
      Left = 408
      Top = 104
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object Edit8: TEdit
      Left = 608
      Top = 104
      Width = 41
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 7
    end
    object Edit12: TEdit
      Left = 40
      Top = 184
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 12
    end
    object Edit13: TEdit
      Left = 240
      Top = 184
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 13
    end
    object Edit14: TEdit
      Left = 424
      Top = 184
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 14
    end
    object Edit15: TEdit
      Left = 624
      Top = 184
      Width = 41
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 15
    end
    object Edit17: TEdit
      Left = 72
      Top = 232
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 16
    end
    object Edit18: TEdit
      Left = 72
      Top = 272
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      PasswordChar = '*'
      TabOrder = 17
    end
    object MaskEdit1: TMaskEdit
      Left = 53
      Top = 140
      Width = 84
      Height = 21
      EditMask = '(##)####-####;0;_'
      MaxLength = 13
      TabOrder = 8
    end
    object MaskEdit2: TMaskEdit
      Left = 221
      Top = 140
      Width = 84
      Height = 21
      EditMask = '(##)####-####;0;_'
      MaxLength = 13
      TabOrder = 9
    end
    object MaskEdit3: TMaskEdit
      Left = 381
      Top = 140
      Width = 79
      Height = 21
      EditMask = '##/##/####;1;_'
      MaxLength = 10
      TabOrder = 10
      Text = '  /  /    '
    end
    object MaskEdit4: TMaskEdit
      Left = 517
      Top = 140
      Width = 92
      Height = 21
      EditMask = '###.###.###-##;0;_'
      MaxLength = 14
      TabOrder = 11
    end
  end
  object PanGrid: TPanel
    Left = 0
    Top = 49
    Width = 678
    Height = 315
    Align = alClient
    BevelInner = bvLowered
    BevelWidth = 2
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 4
      Top = 4
      Width = 670
      Height = 307
      Hint = 'Clique duas vezes para alterar os dados'
      Align = alClient
      DataSource = F_Dados.S_Funcionario
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = BitBtn2Click
      OnKeyPress = DBGrid1KeyPress
      OnTitleClick = DBGrid1TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'codigo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'coddpto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'Departamento'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'Nome'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'endereco'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'Endere'#231'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'email'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'E-Mail'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bairro'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'Bairro'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cidade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'Cidade'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cep'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'CEP'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'estado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'Estado'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fone'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'Fone'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'celular'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'Celular'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cpf'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'CPF'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'rg'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'RG'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'orgaorg'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'Org'#227'o Expedidor'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'posse'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'Data da Posse'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cargo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'Cargo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'comissao'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'Comiss'#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'auditoria'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'Auditoria'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'actotal'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'Acesso Total'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object PanTitulo: TPanel
    Left = 0
    Top = 0
    Width = 678
    Height = 49
    Align = alTop
    BevelInner = bvLowered
    Caption = 'Cadastro de Funcion'#225'rios - Visualizando'
    Color = 16755285
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object PanBotoes: TPanel
    Left = 0
    Top = 364
    Width = 678
    Height = 96
    Align = alBottom
    BevelInner = bvLowered
    Color = 16755285
    TabOrder = 2
    object Bevel1: TBevel
      Left = 11
      Top = 8
      Width = 654
      Height = 33
    end
    object Label9: TLabel
      Left = 20
      Top = 17
      Width = 92
      Height = 16
      Caption = 'Procurar Por:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 581
      Top = 14
      Width = 73
      Height = 22
      Hint = 'Clique aqui para localizar o texto ao lado - Atalho <F2>'
      Caption = 'Localiza'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object BitBtn1: TBitBtn
      Left = 10
      Top = 46
      Width = 100
      Height = 40
      Hint = 'Clique aqui para incluir dados'
      Caption = '&Incluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000505050505050FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000000000A09F9F707770000000505050505050FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF000000000000DFD8DFA09F9FA09F9F70777070777000000050505050
        5050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000A09F9F707770DFD8DFA09F9FA09F9F70777070777040404000000050
        5050505050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000A09F9F707770DFD8DFA09F9FA09F9F70777070777040404070777000
        0000505050505050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000A09F9F707770DFD8DFA09F9FA09F9F70777070777040404070777070
        7770000000505050505050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000A09F9F707770DFD8DFA09F9FA09F9F70777070777040404070777070
        7770707770000000505050505050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000A09F9F707770DFD8DFA09F9F0000A070777070777040404070777070
        7770707770000000505050505050505050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000A09F9F707770DFD8DFFF302FA09F9F70777070777040404070777070
        7770707770000000505050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000A09F9F707770DFD8DFA09F9FA09F9F70777070777040404070777070
        7770707770000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000A09F9F707770DFD8DFA09F9FFFFFFFFFFFFF70777040404070777070
        7770707770000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000A09F9F707770FFFFFFFFFFFFA09F9FA09F9FA09F9F40404070777070
        7770707770000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000FFFFFFFFFFFFA09F9FA09F9FFFFFFFFFFFFFFFFFFFDFD8DF70777070
        7770707770000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000505050505050FFFF
        FFFFFFFF000000A09F9FFFFFFFFFFFFFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DF70
        7770707770000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF000000000000A09F9F7077700000005050505050
        50FFFFFFFFFFFF000000DFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDF
        D8DF707770000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000000000DFD8DFA09F9FA09F9F7077707077700000005050
        50505050FFFFFFFFFFFF000000DFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDF
        D8DFDFD8DF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000A09F9F707770DFD8DFA09F9FA09F9F7077707077704040400000
        00505050505050FFFFFFFFFFFF000000DFD8DFDFD8DFDFD8DFDFD8DFDFD8DF00
        0000000000FFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000A09F9F707770DFD8DFA09F9FA09F9F7077707077704040407077
        70000000505050505050FFFFFFFFFFFF000000DFD8DFDFD8DF000000000000FF
        FFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000A09F9F707770DFD8DFA09F9FA09F9F7077707077704040407077
        70707770000000505050505050FFFFFFFFFFFF000000000000FFFFFFFFFFFFFF
        FFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000A09F9F707770DFD8DFA09F9FA09F9F7077707077704040407077
        70707770707770000000505050505050FFFFFFFFFFFFFFFFFFFFFFFF00000000
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000A09F9F707770DFD8DFA09F9F0000A07077707077704040407077
        70707770707770000000505050505050FFFFFFFFFFFF00000000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000A09F9F707770DFD8DFFF302FA09F9F7077707077704040407077
        70707770707770000000FFFFFFFFFFFF00000000000000000000000000000000
        0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000A09F9F707770DFD8DFA09F9FA09F9F7077707077704040407077
        70707770707770000000000000000000000000000000FFFFFFFFFFFFFFFFFF00
        0000404040000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000A09F9F707770DFD8DFA09F9FFFFFFFFFFFFF7077704040407077
        70707770707770000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF000000404040404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000A09F9F707770FFFFFFFFFFFFA09F9FA09F9FA09F9F4040407077
        70707770707770000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF404040707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFA09F9FA09F9FFFFFFFFFFFFFFFFFFFDFD8DF7077
        70707770707770000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF707770DFD8DF707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000A09F9FFFFFFFFFFFFFDFD8DFDFD8DFDFD8DFDFD8DFDFD8
        DF707770707770000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF707770DFD8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000DFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8
        DFDFD8DF707770000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF000000DFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8
        DFDFD8DFDFD8DF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000DFD8DFDFD8DFDFD8DFDFD8DFDFD8
        DF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000DFD8DFDFD8DF0000000000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object BitBtn2: TBitBtn
      Left = 121
      Top = 46
      Width = 100
      Height = 40
      Hint = 'Clique aqui para alterar o registro selecionado'
      Caption = '&Alterar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000050
        5050505050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF9097909097909097909097909097909097909097909097
        90909790909790909790909790909790909790000000000000A09F9F70777000
        0000505050505050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF0000000000000000009097909097909097909097909097909097
        90909790909790909790909790000000000000DFD8DFA09F9FA09F9F70777070
        7770000000505050505050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF0000000000DF0000800000009097909097909097909097909097
        90909790909790909790000000A09F9F707770DFD8DFA09F9FA09F9F70777070
        7770404040000000505050505050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF0000000000DF0000CF000090000080000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000A09F9F707770DFD8DFA09F9FA09F9F70777070
        7770404040707770000000505050505050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF0000000000DF0000CF000090000080000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000A09F9F707770DFD8DFA09F9FA09F9F70777070
        7770404040707770707770000000505050505050FFFFFFFFFFFFFFFFFFFFFFFF
        0000000000DF0000CF0000DF0000DF000080000080000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000A09F9F707770DFD8DFA09F9FA09F9F70777070
        7770404040707770707770707770000000505050505050FFFFFFFFFFFFFFFFFF
        0000000000DF0000CF0000DF0000DF000080000080000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000A09F9F707770DFD8DFA09F9F0000A070777070
        7770404040707770707770707770000000505050505050505050FFFFFF000000
        0000DF0000CFCFC8FF6067FF0000DF0000CF000090000080000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000A09F9F707770DFD8DFFF302FA09F9F70777070
        7770404040707770707770707770000000505050FFFFFFFFFFFFFFFFFF000000
        0000DF0000CFCFC8FF6067FF0000DF0000CF000090000080000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000A09F9F707770DFD8DFA09F9FA09F9F70777070
        7770404040707770707770707770000000FFFFFFFFFFFFFFFFFF0000000000DF
        0000CFCFC8FF6067FF6067FF0000000000DF0000CF000090000080000000FFFF
        FFFFFFFFFFFFFFFFFFFF000000A09F9F707770DFD8DFA09F9FFFFFFFFFFFFF70
        7770404040707770707770707770000000FFFFFFFFFFFFFFFFFF0000006067FF
        6067FF6067FFCFC8FF000000FFFFFF0000000000DF000080000080000000FFFF
        FFFFFFFFFFFFFFFFFFFF000000A09F9F707770FFFFFFFFFFFFA09F9FA09F9FA0
        9F9F404040707770707770707770000000FFFFFFFFFFFFFFFFFFFFFFFF000000
        6067FF6067FF6067FF000000FFFFFF0000000000DF0000CF0000900000800000
        00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFA09F9FA09F9FFFFFFFFFFFFFFF
        FFFFDFD8DF707770707770707770000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        000000000000000000FFFFFFFFFFFFFFFFFF0000000000DF0000800000800000
        00505050505050FFFFFFFFFFFF000000A09F9FFFFFFFFFFFFFDFD8DFDFD8DFDF
        D8DFDFD8DFDFD8DF707770707770000000000000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000DF0000CF0000900000
        80000000505050505050FFFFFFFFFFFF000000DFD8DFDFD8DFDFD8DFDFD8DFDF
        D8DFDFD8DFDFD8DFDFD8DF707770000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000DFD8DF0000000000DF0000800000
        80000000000000505050505050FFFFFFFFFFFF000000DFD8DFDFD8DFDFD8DFDF
        D8DFDFD8DFDFD8DFDFD8DFDFD8DF000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF000000A09F9F7077700000000000DF0000CF0000
        90000080000000000000505050505050FFFFFFFFFFFF000000DFD8DFDFD8DFDF
        D8DFDFD8DFDFD8DF000000000000FFFFFFFFFFFF000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF000000A09F9F707770DFD8DF0000000000DF0000
        80000080000000707770000000505050505050FFFFFFFFFFFF000000DFD8DFDF
        D8DF000000000000FFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF000000A09F9F707770DFD8DF0000000000DF0000
        DFCFC8FF6067FF000000707770000000505050505050FFFFFFFFFFFF00000000
        0000FFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF000000A09F9F707770DFD8DFA09F9F000000CFC8
        FF6067FF6067FF000000707770707770000000505050505050FFFFFFFFFFFFFF
        FFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF000000A09F9F707770DFD8DFA09F9F0000006067
        FF6067FF000000707770707770707770000000505050505050FFFFFFFFFFFF00
        0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF000000A09F9F707770DFD8DFFF302FA09F9F0000
        00000000404040707770707770707770000000FFFFFFFFFFFF00000000000000
        0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF000000A09F9F707770DFD8DFA09F9FA09F9F7077
        70707770404040707770707770707770000000000000000000000000000000FF
        FFFFFFFFFFFFFFFF000000404040000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF000000A09F9F707770DFD8DFA09F9FFFFFFFFFFF
        FF707770404040707770707770707770000000000000000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000404040404040FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF000000A09F9F707770FFFFFFFFFFFFA09F9FA09F
        9FA09F9F404040707770707770707770000000FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF404040707770707770FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFA09F9FA09F9FFFFFFFFFFF
        FFFFFFFFDFD8DF707770707770707770000000FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF707770DFD8DF707770FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000A09F9FFFFFFFFFFFFFDFD8DFDFD8
        DFDFD8DFDFD8DFDFD8DF707770707770000000FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF707770FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000DFD8DFDFD8DFDFD8DFDFD8
        DFDFD8DFDFD8DFDFD8DFDFD8DF707770000000FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000DFD8DFDFD8DFDFD8
        DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DF000000FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000DFD8DFDFD8
        DFDFD8DFDFD8DFDFD8DF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000DFD8
        DFDFD8DF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object BitBtn3: TBitBtn
      Left = 232
      Top = 48
      Width = 100
      Height = 38
      Hint = 'Clique aqui para excluir o registro selecionado'
      Caption = '&Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn3Click
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00000000000000909790909790909790FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000000000FFFFFFFFFFFF000000000000000000000000FFFF
        FF90C8FF6097CF000000000000909790909790FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF0000006097CF6097CF00000000000090C8FF90C8FF6097CF6097CF0000
        00FFFFFF90C8FF6097CF6097CF000000909790909790FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        00000090C8FF90C8FF6097CF6097CF000000FFFFFF90C8FF90C8FF6097CF6097
        CF000000FFFFFF90C8FF6097CF6097CF000000909790909790FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        000000FFFFFF90C8FF90C8FF6097CF6097CF000000FFFFFF90C8FF90C8FF6097
        CF6097CF000000FFFFFF90C8FF6097CF6097CF000000909790909790FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        000000000000FFFFFF90C8FF90C8FF6097CF6097CF000000FFFFFF90C8FF90C8
        FF6097CF6097CF000000FFFFFF90C8FF6097CF6097CF000000909790909790FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000090C8FF
        6097CF6097CF000000FFFFFF90C8FF90C8FF6097CF6097CF000000FFFFFF90C8
        FF90C8FF6097CF6097CF000000FFFFFF90C8FF6097CF6097CF00000090979090
        9790FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF
        90C8FF6097CF6097CF000000FFFFFF90C8FF90C8FF6097CF6097CF0000005050
        5050505090C8FF6097CF6097CF000000FFFFFF90C8FF6097CF6097CF00000090
        9790909790FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        FFFFFF90C8FF6097CF6097CF000000FFFFFF90C8FF90C8FF5050505050500000
        0000000000000000000050505050505000000090C8FF90C8FF6097CF6097CF00
        0000909790909790FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        000000FFFFFF90C8FF6097CF6097CF0000005050505050500000000000009097
        909097901F201F1F201F00000050505050505000000090C8FF90C8FF6097CF60
        97CF000000909790909790FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFF90C8FF6097CF6097CF000000000000909790909790BFBF
        BFBFBFBF1F201F1F201F1F201F00000050505050505090C8FF90C8FF90C8FF60
        97CF6097CF000000909790909790FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFFFF90C8FF000000909790909790BFBFBFBFBFBF1F20
        1F1F201F9097901F201F0000001F201F00000050505050505090C8FF90C8FF90
        C8FF6097CF6097CF000000909790909790FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000FFFFFF000000BFBFBFBFBFBF1F201F1F201F9097
        909097909097901F201F0000000000001F201F00000050505050505090C8FF90
        C8FF90C8FF6097CF6097CF000000909790909790FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000000000001F201F1F201F9097909097909097
        90BFBFBFBFBFBF9097900000001F201F0000001F201F00000050505050505090
        C8FF90C8FF90C8FF6097CF6097CF000000909790909790FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000909790909790909790BFBFBFBFBF
        BF909790909790909790BFBFBF1F201F1F201F0000001F201F00000050505090
        C8FF90C8FF90C8FF90C8FF6097CF6097CF000000909790909790FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000909790BFBFBFBFBFBF9097909097
        90909790BFBFBFBFBFBFBFBFBFBFBFBF1F201F1F201F0000001F201F00000090
        C8FF90C8FF90C8FF90C8FF90C8FF6097CF6097CF000000909790FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBF909790909790909790BFBF
        BFBFBFBF60979060979090C8CFBFBFBFBFBFBF1F201F1F201F00000000000090
        C8FF90C8FF90C8FF90C8FF90C8FF90C8FF6097CF000000909790FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000909790BFBFBFBFBFBF1F20
        1F60979090C8CF90FFFFCFFFFFCFFFFF1F201FBFBFBF1F201F1F201F00000090
        C8FF90C8FF90C8FF90C8FF90C8FF90C8FF6097CF000000BFBFBFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF909790909790909790909790000000BFBFBF1F201F1F20
        1F1F201FCFFFFFCFFFFF1F201F1F201F909790BFBFBFBFBFBF00000000000090
        C8FF90C8FF90C8FF90C8FF90C8FF6097CF000000000000909790FFFFFFFFFFFF
        FFFFFFFFFFFF909790909790909790909790909790909790000000BFBFBF1F20
        1F1F201F1F201F1F201F909790909790BFBFBF00000000000090C8FF90C8FF90
        C8FF90C8FF90C8FFFFFFFFFFFFFF0000000000002F6790000000FFFFFFFFFFFF
        FFFFFFFFFFFF909790000000000000000000000000000000000000000000BFBF
        BF1F201F1F201F909790BFBFBF0000000000006097CF6097CFFFFFFFFFFFFF90
        C8FFFFFFFFFFFFFF0000000000006097CF2F67902F6790000000FFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFFFF90C8FF6097CF6097CF6097CF6097CF6097CF0000
        00BFBFBFBFBFBF00000000000090C8FF90C8FF90C8FF90C8FF6097CF6097CF60
        97CF00000000000090C8FF90C8FF90C8FF6097CF2F6790000000FFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFFFF90C8FF90C8FF90C8FF90C8FF90C8FF90C8FF90C8
        FF00000000000090C8FF90C8FF90C8FF90C8FF90C8FFFFFFFFFFFFFF00000000
        000090C8FF90C8FF90C8FF90C8FF90C8FF90C8FF6097CF000000FFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFF90
        C8FF90C8FF90C8FF90C8FF90C8FF90C8FF000000000000FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000FFFFFFFFFFFF000000FF
        FFFF90C8FF90C8FF90C8FF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object BitBtn4: TBitBtn
      Left = 454
      Top = 46
      Width = 100
      Height = 40
      Hint = 
        'Clique aqui para imprimir os registros que est'#227'o sendo visualiza' +
        'dos'
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn4Click
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4040404040
        40FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4040404040400000004040
        40404040FFFFFF000000000000404040404040404040FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4040404040400000000000000F0F0F0000
        000000000000009097901F201F000000505050404040404040FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF4040404040404040400000000000009097909097902F302F0F0F
        0F0000009097909097901F201F1F201F000000505050505050404040FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        4040404040404040400000000000009097909097909097909097901F201F1F20
        1F1F201F0000009097900F0F0F2F302F1F201F000000606760404040404040FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        404040000000000000909790909790909790909790FFFFFFFFFFFFBFBFBF0F0F
        0F1F201F0000009097901F201F0F0F0F2F302F0F0F0F00000060676040404040
        4040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        000000909790909790909790909790FFFFFFFFFFFFBFBFBFBFBFBFBFBFBFBFBF
        BF0000000000009097901F201F2F302F0F0F0F1F201F0F0F0F00000050505040
        4040404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000909790
        909790909790909790FFFFFFFFFFFFBFBFBFBFBFBFBFBFBFBFBFBF0F0F0F2F30
        2F9097909097909097901F201F1F201F1F201F1F201F2F302F0F0F0F00000050
        5050404040404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000909790
        909790FFFFFFFFFFFFBFBFBFBFBFBFBFBFBFBFBFBF1F201F1F201F9097909097
        909097909097909097900F0F0F0F0F0F1F201F0000001F201F2F302F0F0F0F00
        0000606760404040404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000F0F0F
        FFFFFFBFBFBFBFBFBFBFBFBFBFBFBF0F0F0F2F302F9097909097909097907077
        70909790909790BFBFBFBFBFBF2F302F0F0F0F0000000000001F201F1F201F1F
        201F000000505050404040404040FFFFFFFFFFFFFFFFFFFFFFFF000000909790
        0F0F0FBFBFBFBFBFBF1F201F0F0F0F9097909097909097909097909097909097
        90FFFFFFFFFFFFBFBFBFBFBFBFBFBFBF1F201F0000000F0F0F0000000F0F0F2F
        302F1F201F000000505050404040404040FFFFFFFFFFFFFFFFFF000000909790
        9097901F201F0F0F0F909790909790909790707770909790909790FFFFFFFFFF
        FFBFBFBFBFBFBF90C8CFBFBFBFCF9790BFBFBF0000001F201F1F201F0000001F
        201F0F0F0F1F201F000000606760404040404040FFFFFFFFFFFF000000909790
        909790909790909790909790909790909790909790FFFFFFFFFFFFA09F9FBFBF
        BF90C8CFBFBFBFBFBFBFBFBFBF909790909790FFFFFF0F0F0F1F201F1F201F00
        00002F302F0F0F0F1F201F000000505050404040404040FFFFFF000000909790
        909790909790909790909790909790FFFFFFFFFFFFBFBFBFCF9790CFC8CFBFBF
        BFBFBFBFBFBFBF909790909790FFFFFFFFFFFFBFBFBF90C8CF2F002F2F302F0F
        0F0F0000001F201F2F302F0F0F0F000000505050404040404040000000909790
        909790909790909790FFFFFFFFFFFFBFBFBFBFBFBF90C8CFBFBFBFBFBFBFBFBF
        BF909790707770FFFFFFFFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF1F201F2F
        302F1F201F0000000F0F0F1F201F2F302F000000505050404040000000909790
        909790FFFFFFFFFFFFBFBFBFCF97CF90C8CFBFBFBFBFBFBFBFBFBF9097909097
        90FFFFFFFFFFFFBFBFBFBFBFBF90C8CFFFFFFFA09F9FBFBFBFBFBFBFBFBFBF1F
        00004040400F0F0F0000002F302F0F0F0F404040000000404040000000FFFFFF
        FFFFFFCF97CFBFBFBF90C8CFBFBFBFBFBFBFBFBFBF909790909790FFFFFFFFFF
        FFBFBFBFBFBFBFBFBFBFFFFFFFEFF8FF609790FFFFFFBFBFBFBFBFBFBFBFBFBF
        BFBF0F0F0F2F302F0040000000002F302F0F0F0F000000404040000000FFFFFF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF909790909790FFFFFFFFFFFFBFBFBFBFBF
        BFBFBFBFFFFFFFFFFFFF60979060979090C8CF90C8CF90FFFFA09F9FBFBFBFBF
        BFBFBFBFBF2F00001F201F1F201F0000001F201F000000FFFFFFFFFFFF000000
        FFFFFFBFBFBFBFBFBF909790909790FFFFFFFFFFFFBFBFBFBFBFBFBFBFBFFFFF
        FFFFFFFF90979060979090C8CF90C8CF90C8FF90FFFFCFFFFFCFFFFFBFBFBFBF
        BFBF90C8CFBFBFBF1F201F2F302F0F0F0F000000000000FFFFFFFFFFFFFFFFFF
        000000909790909790FFFFFFFFFFFFBFBFBFBFBFBFBFBFBFFFFFFFFFFFFF6097
        9060979090C8CF90C8CF90FFFF90C8FFCFFFCFCFFFFFCFFFFFFFFFFFFFFFFFBF
        BFBFBFBFBFBFBFBFCF97CF0F0F0F2F302F0F0F0F000000FFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFBFBFBF90C8CFBFBFBFFFFFFFFFFFFF1F201F0F0F0F90C8
        CF90C8CF90FFFF90C8FFCFFFFFCFFFFFCFFFFFCFFFFFFFFFFFFFFFFF0F0F0FFF
        FFFFBFBFBFBFBFBFBFBFBFBFBFBF1F201F1F201F000000FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFFFFBFBFBFBFBFBF1F201F0F0F0F1F201F1F201F1F20
        1F90FFFFCFFFFFCFFFFFCFFFFFCFFFFFFFFFFFFFFFFF1F201F0F0F0F90979090
        9790FFFFFF90C8CFBFBFBFBFBFBFBFBFBF0F0F0F000000FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000FFFFFFBFBFBFBFBFBF1F201F1F201F1F201F0F0F
        0FCFFFFFCFFFFFCFFFFFFFFFFFFFFFFF0F0F0F0F0F0F909790909790909790FF
        FFFFFFFFFFBFBFBFBFBFBFCFC8CF000000000000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFBFBFBFBFBFBF1F201F0F0F0F2F30
        2F0F0F0FFFFFFFFFFFFF0F0F0F1F201F909790909790909790FFFFFFFFFFFFBF
        BFBFBFBFBFBFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFBFBFBFBFBFBF1F201F0F0F
        0F1F201F0F0F0F1F201F909790909790909790FFFFFFFFFFFFA09F9FBFBFBFCF
        C8CF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFBFBFBFBFBFBF2F30
        2F0F0F0F909790909790909790FFFFFFFFFFFFA09F9FBFBFBFCFC8CF00000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFBFBFBF90C8
        CF1F201F0F0F0FFFFFFFFFFFFFA09F9FBFBFBFCFC8CF000000000000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFCFC8CF000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFBFBFBFBFBFBFCFC8CF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00FFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object BitBtn5: TBitBtn
      Left = 566
      Top = 46
      Width = 100
      Height = 40
      Hint = 'Clique aqui para retornar para o formul'#225'rio principal'
      Caption = '&Retornar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn5Click
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000
        00707770707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000009097905050
        50000000505050707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000009097909097909097905050
        50505050000000505050707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000000000009097909097909097909097909097905050
        50505050505050000000505050707770707770FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000000000909790909790909790909790909790909790FFFFFFBFBF
        BF505050505050505050000000505050707770707770FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        000000909790909790909790909790909790909790FFFFFFFFFFFFBFBFBFBFBF
        BFBFBFBF505050505050505050000000505050707770707770FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000909790
        909790909790909790909790909790FFFFFFFFFFFFBFBFBFBFBFBF505050FFFF
        FFBFBFBFBFBFBF505050505050505050000000505050707770707770FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000909790
        909790909790909790FFFFFFFFFFFFBFBFBFBFBFBF505050505050FFFFFF5050
        50FFFFFFBFBFBFBFBFBF505050505050505050000000707770707770707770FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000909790
        909790FFFFFFFFFFFFBFBFBFBFBFBF505050505050505050FFFFFFBFBFBFBFBF
        BF505050FFFFFFBFBFBFBFBFBF50505050505050505000000070777070777070
        7770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF
        FFFFFFBFBFBFBFBFBF505050505050FFFFFF505050BFBFBF505050FFFFFFBFBF
        BFBFBFBF505050FFFFFFBFBFBFBFBFBF50505050505050505000000070777070
        7770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF
        BFBFBF505050505050BFBFBFBFBFBF505050FFFFFFBFBFBFBFBFBF505050FFFF
        FF505050BFBFBF505050FFFFFFBFBFBFBFBFBF50505050505050505000000070
        7770707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        FFFFFFBFBFBF505050FFFFFFBFBFBFBFBFBF505050FFFFFF505050BFBFBF5050
        50FFFFFFBFBFBFBFBFBF505050FFFFFFBFBFBFBFBFBF50505050505050505000
        0000707770707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        000000FFFFFFBFBFBF505050FFFFFF505050BFBFBF505050FFFFFFBFBFBFBFBF
        BF505050FFFFFFBFBFBFBFBFBF505050FFFFFFBFBFBFBFBFBF50505050505050
        5050000000707770707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFBFBFBF505050FFFFFFBFBFBFBFBFBF505050FFFFFF5050
        50BFBFBF505050FFFFFFBFBFBFBFBFBF505050FFFFFFBFBFBFBFBFBF50505050
        5050505050000000707770707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFFFFBFBFBF505050FFFFFF505050BFBFBF505050FFFF
        FFBFBFBFBFBFBF505050FFFFFFBFBFBFBFBFBF505050FFFFFFBFBFBFBFBFBF50
        5050505050505050000000707770707770707770FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000FFFFFFBFBFBF505050FFFFFFBFBFBFBFBFBF5050
        50FFFFFF505050BFBFBF505050FFFFFFBFBFBFBFBFBF505050FFFFFFBFBFBFBF
        BFBF505050505050505050000000707770707770707770FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFBFBFBF505050FFFFFF505050BFBF
        BF505050FFFFFFBFBFBFBFBFBF505050FFFFFFBFBFBFBFBFBF505050FFFFFFBF
        BFBFBFBFBF505050505050505050000000707770707770707770FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFBFBFBF505050FFFFFFBFBF
        BFBFBFBF505050FFFFFF505050BFBFBF505050FFFFFFBFBFBFBFBFBF505050FF
        FFFFBFBFBFBFBFBF505050505050505050000000707770707770FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFBFBFBF505050FFFF
        FF505050BFBFBF505050FFFFFFBFBFBFBFBFBF505050FFFFFF505050BFBFBF50
        5050FFFFFFBFBFBFBFBFBF505050505050505050000000707770FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFBFBFBF5050
        50FFFFFFBFBFBFBFBFBF505050FFFFFF505050BFBFBF505050FFFFFFBFBFBFBF
        BFBF505050FFFFFFBFBFBFBFBFBF505050505050000000707770FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFBFBF
        BF505050FFFFFF505050BFBFBF505050FFFFFFBFBFBFBFBFBF505050FFFFFFBF
        BFBFBFBFBF505050FFFFFFBFBFBFBFBFBF505050000000FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFBFBFBF505050FFFFFFBFBFBFBFBFBF505050FFFFFF505050BFBFBF50505050
        5050505050FFFFFFBFBFBFBFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00FFFFFFBFBFBF505050FFFFFF505050BFBFBF505050FFFFFF505050505050FF
        FFFFFFFFFFBFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000FFFFFFBFBFBF505050FFFFFFBFBFBF505050505050FFFFFFFFFFFFBF
        BFBF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF000000FFFFFFBFBFBF505050505050FFFFFFFFFFFFBFBFBF00000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFBFBFBFFFFFFFBFBFBF000000000000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFF000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object BitBtn6: TBitBtn
      Left = 343
      Top = 47
      Width = 100
      Height = 38
      Hint = 'Clique aqui para consultar o registro selecionado'
      Caption = '&Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn6Click
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFF
        FF90C8FF6097CF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000000000000000FFFFFF00000090C8FF90C8FF6097CF2F67900000
        00FFFFFF90C8FF6097CF6097CF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        00000090C8FF6097CF6097CF000000000000FFFFFF90C8FF90C8FF6097CF2F67
        90000000FFFFFF90C8FF6097CF6097CF000000FFFFFF000000000000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        000000FFFFFF90C8FF90C8FF6097CF2F6790000000FFFFFF90C8FF90C8FF6097
        CF6097CF0000006097CF6097CF6097CF0000000000004040402FC8FF000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        000000000000FFFFFF90C8FF90C8FF6097CF2F6790000000FFFFFF90C8FF90C8
        FF6097CF6097CF0000000000000000002FC8FF2FC8FF505050FFFFFF2FC8FF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000090C8FF
        6097CF2F6790000000FFFFFF90C8FF90C8FF6097CF6097CF0000006097CF6097
        CF6097CF1F00000000002FC8FF2FC8FF90FFFF2FC8FF2F302FFFFFFF90FFFF2F
        C8FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF
        90C8FF6097CF6097CF000000FFFFFF90C8FF90C8FF6097CF6097CF0000000000
        0000000000C8FF2FC8FF90FFFF90FFFF2FC8FF2F302FFFFFFF90C8FF90FFFF90
        FFFF2FC8FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        FFFFFF90C8FF6097CF6097CF0000006097CF6097CF6097CF0000000000002FC8
        FF2FC8FFCFC8CF90FFFF90C8FF90FFFF2FC8FF2F302FFFFFFF90FFFF90C8FF90
        FFFF90C8FF2FC8FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        000000FFFFFF90C8FF6097CF6097CF0000000000000000002FC8CF90FFFF90FF
        FF90FFFF90FFFF90FFFF90FFFF2FC8FF2F302FFFFFFF90FFFF90FFFF90FFFF90
        FFFF90FFFF90FFFF2FC8FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF0000006097CF6097CF0000000000002FC8FF2FC8FF90C8FF90FFFF90C8
        FF90FFFF2FC8FF2FC8FF2FC8FF2FC8FF4040402FFFFF2FC8FF2FC8FF2FC8FF2F
        C8FF2FC8FF2FC8FF2FC8FF2FC8FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF0000000000002FC8FF2FC8FF90FFFF90FFFF90FFFF90FFFF90FF
        FF4040404040402F302F5050501F201F4040402F302F4040402F302F4040402F
        302F4040402F302F404040404040000000000000FFFFFFFFFFFFFFFFFFFFFFFF
        0000000000002FC8FF2FC8FF2FC8FF2FC8FF2FC8FF2FC8FF2FC8FF2FC8FF2F30
        2FFFFFFF90C8FF90FFFF60FFFFCFFFFF90FFFF90C8FF90FFFF90FFFF90C8FF90
        FFFF90C8FF90FFFF90FFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000
        2FC8FF4040404040402F302F4040404040404040402F302F4040404040404040
        40FFFFFF90FFFF90FFFFCFC8CF90FFFF90C8FF90FFFF90FFFF90C8FF90FFFF90
        FFFF90FFFF0000000000006097CF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        000000FFFFFFFFFFFF90FFFF90C8FF90FFFF90C8FF90FFFF90C8FF90FFFF2F30
        2FFFFFFF90C8FF90FFFF90C8FF90FFFF90FFFF90FFFF90C8FF90FFFF90FFFF00
        00000000006097CF6097CF6097CF6097CF000000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFF90FFFF90FFFF90FFFF90FFFF90FFFF2F302FFFFF
        FF90FFFF90FFFF90FFFF90FFFF90FFFF90C8FF90FFFF90FFFF00000000000090
        C8FF90C8FF90C8FF90C8FF90C8FF6097CF2F6790000000FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFFFFFFFFFF90C8FF90FFFF90C8FF90FFFF404040FFFF
        FF90FFFF90C8FF90FFFF90C8FF90FFFF90FFFF0000000000006097CF90C8FF90
        C8FF90C8FF90C8FF90C8CF90C8FF90C8FF6097CF000000FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF90FFFF90FFFF90FFFF2F302FFFFF
        FF90C8FF90FFFF90FFFF90FFFF0000000000006097CF6097CF60979090C8FF90
        C8FFFFFFFFFFFFFF90C8FF90C8FF90FFFF2F6790000000FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF404040FFFFFF90FF
        FF90FFFF90FFFF0000000000006097CF6097CF6097CF90C8FF90C8FF90C8FF90
        C8FFFFFFFFFFFFFF90C8FF90C8FF6097CF2F6790000000FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF2F302FFFFFFFFFFF
        FF0000000000000000006097CF6097CF6097CFFFFFFFFFFFFF90C8FF90C8FF90
        C8FF90C8FF90C8FFFFFFFFFFFFFF2F67902F67902F6790000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFF4040400000000000
        006097CF6097CF6097CF6097CF6097CF6097CF6097CF6097CFFFFFFFFFFFFF90
        C8FFFFFFFFFFFFFF2F67902F67906097CF2F67902F6790000000FFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFFFF90C8FF6097CF6097CF0000000000006097CF6097
        CF6097CF6097CF90C8FF90C8FF90C8FF90C8FF90C8FF90C8FF6097CF6097CF60
        97CF2F67902F679090C8FF90C8FF90C8FF6097CF2F6790000000FFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFFFF90C8FF90C8FF90C8FF90C8FF90C8FF90C8FF90C8
        FF90C8FF90C8FF90C8FF90C8FF90C8FF90C8FF90C8FFFFFFFFFFFFFF2F67902F
        679090C8FF90C8FF90C8FF90C8FF90C8FF90C8FF6097CF000000FFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFF90
        C8FF90C8FF90C8FF90C8FF90C8FF90C8FF000000000000FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000FFFFFFFFFFFF000000FF
        FFFF90C8FF90C8FF90C8FF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object EditProcura: TEdit
      Left = 117
      Top = 14
      Width = 463
      Height = 21
      Hint = 'Insira o texto para localiza'#231#227'o - Atalho <F2>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnKeyDown = EditProcuraKeyDown
    end
  end
end
