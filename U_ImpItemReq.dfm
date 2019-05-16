object F_ImpItemReq: TF_ImpItemReq
  Left = 29
  Top = 217
  BorderStyle = bsDialog
  Caption = 'Importa Itens das Requisi'#231#245'es'
  ClientHeight = 238
  ClientWidth = 712
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 197
    Width = 712
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 520
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 616
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 712
    Height = 197
    Align = alClient
    DataSource = F_DMADO.S_ImportaReq
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'TICK'
        ReadOnly = True
        Title.Caption = 'XX'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODREQ'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODPROD'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        ReadOnly = True
        Width = 290
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDE'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRUNITARIO'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRTOTAL'
        ReadOnly = True
        Visible = True
      end>
  end
end
