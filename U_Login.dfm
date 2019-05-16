object F_Login: TF_Login
  Left = 278
  Top = 220
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Login'
  ClientHeight = 206
  ClientWidth = 350
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
  object Label1: TLabel
    Left = 80
    Top = 112
    Width = 29
    Height = 13
    Caption = 'Login:'
  end
  object Label2: TLabel
    Left = 80
    Top = 138
    Width = 34
    Height = 13
    Caption = 'Senha:'
  end
  object RadioGroup1: TRadioGroup
    Left = 80
    Top = 16
    Width = 185
    Height = 73
    Caption = 'Selecione o Banco de Dados:'
    ItemIndex = 0
    Items.Strings = (
      'MySQL'
      'Firebird')
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 120
    Top = 168
    Width = 97
    Height = 25
    TabOrder = 1
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object Edit1: TEdit
    Left = 120
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'ALBERT'
  end
  object Edit2: TEdit
    Left = 120
    Top = 136
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 3
    Text = '123'
  end
end
