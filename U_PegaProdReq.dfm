object F_PegaProdReq: TF_PegaProdReq
  Left = 269
  Top = 163
  BorderStyle = bsDialog
  Caption = 'Importa Produtos'
  ClientHeight = 297
  ClientWidth = 486
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 486
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 62
      Height = 13
      Caption = 'Procurar Por:'
    end
    object Edit1: TEdit
      Left = 76
      Top = 12
      Width = 325
      Height = 21
      TabOrder = 0
    end
    object Button1: TButton
      Left = 402
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Localiza'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 256
    Width = 486
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    object Button2: TButton
      Left = 296
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 392
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 1
      OnClick = Button3Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 486
    Height = 215
    Align = alClient
    DataSource = F_DMADO.S_Produto
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyPress = DBGrid1KeyPress
  end
end
