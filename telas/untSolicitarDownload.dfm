object uFrmSolicitarDownload: TuFrmSolicitarDownload
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Download'
  ClientHeight = 112
  ClientWidth = 809
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gProgresso: TGauge
    Left = 0
    Top = 53
    Width = 809
    Height = 20
    Align = alClient
    ForeColor = clNavy
    Progress = 0
    ExplicitLeft = 1
    ExplicitWidth = 820
    ExplicitHeight = 23
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 73
    Width = 809
    Height = 39
    Align = alBottom
    TabOrder = 1
    object btnPararDownload: TBitBtn
      Left = 337
      Top = 1
      Width = 171
      Height = 37
      Align = alLeft
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = '&Parar Download'
      Glyph.Data = {
        12090000424D120900000000000036000000280000001B0000001B0000000100
        180000000000DC08000074120000741200000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFEFFDEDAF9ACA3EF8C80E97B6DE56E60E37B6DE58C80E9ACA4
        EFDEDBF9FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCC6F5776AE55F4FE0
        5F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE0796BE5CDC8F5FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF3F2FD8A7EE85F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE0
        5F4FE05F4FE05F4FE05F4FE05F4FE05F4FE08B7FE9F4F3FDFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFE7E4FA7567E45F4FE05F
        4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE0
        5F4FE05F4FE05F4FE07668E4E7E5FAFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFF4F3FD7668E45F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F
        4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE0
        7466E4F2F1FDFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFEFEFF897DE85F4F
        E05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F
        4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE08B7FE9FFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFCBC6F55F4FE05F4FE05F4FE05F4FE06252E1887C
        E88A7EE88A7EE88A7EE88A7EE88A7EE88A7EE88A7EE88A7EE88A7EE8887CE862
        52E15F4FE05F4FE05F4FE05F4FE0CDC8F5FFFFFFFFFFFF000000FFFFFFFEFEFF
        776AE55F4FE05F4FE05F4FE05F4FE0877BE8FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF877BE85F4FE05F4FE05F4FE05F
        4FE0796BE5FEFEFFFFFFFF000000FFFFFFDCD9F85F4FE05F4FE05F4FE05F4FE0
        5F4FE0897DE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF897DE85F4FE05F4FE05F4FE05F4FE05F4FE0DEDBF9FFFFFF00
        0000FFFFFFABA3EF5F4FE05F4FE05F4FE05F4FE05F4FE0897DE8FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF897DE85F4F
        E05F4FE05F4FE05F4FE05F4FE0ADA5EFFFFFFF000000FFFFFF8A7FE85F4FE05F
        4FE05F4FE05F4FE05F4FE0897DE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF897DE85F4FE05F4FE05F4FE05F4FE05F4F
        E08C81E9FFFFFF000000FFFFFF7A6DE55F4FE05F4FE05F4FE05F4FE05F4FE089
        7DE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF897DE85F4FE05F4FE05F4FE05F4FE05F4FE07B6EE5FFFFFF000000FFFF
        FF6E60E35F4FE05F4FE05F4FE05F4FE05F4FE0897DE8FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF897DE85F4FE05F4FE0
        5F4FE05F4FE05F4FE06F60E3FFFFFF000000FFFFFF796CE55F4FE05F4FE05F4F
        E05F4FE05F4FE0897DE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF897DE85F4FE05F4FE05F4FE05F4FE05F4FE07B6DE5
        FFFFFF000000FFFFFF8A7EE85F4FE05F4FE05F4FE05F4FE05F4FE0897DE8FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF89
        7DE85F4FE05F4FE05F4FE05F4FE05F4FE08B7FE9FFFFFF000000FFFFFFAAA1EE
        5F4FE05F4FE05F4FE05F4FE05F4FE0897DE8FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF897DE85F4FE05F4FE05F4FE05F
        4FE05F4FE0ACA3EFFFFFFF000000FFFFFFDBD8F85F4FE05F4FE05F4FE05F4FE0
        5F4FE0897DE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF897DE85F4FE05F4FE05F4FE05F4FE05F4FE0DDDAF8FFFFFF00
        0000FFFFFFFEFEFF7769E55F4FE05F4FE05F4FE05F4FE0877BE8FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF877BE85F4F
        E05F4FE05F4FE05F4FE0776AE5FEFEFFFFFFFF000000FFFFFFFFFFFFC9C4F55F
        4FE05F4FE05F4FE05F4FE06252E1887CE88A7EE88A7EE88A7EE88A7EE88A7EE8
        8A7EE88A7EE88A7EE88A7EE8887CE86252E15F4FE05F4FE05F4FE05F4FE0CCC6
        F5FFFFFFFFFFFF000000FFFFFFFFFFFFFEFEFF887CE85F4FE05F4FE05F4FE05F
        4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE0
        5F4FE05F4FE05F4FE05F4FE05F4FE08A7EE8FEFEFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFF3F2FD7567E45F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F
        4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE0
        7365E4F2F1FCFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFE6E3
        FA7466E45F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F
        4FE05F4FE05F4FE05F4FE05F4FE05F4FE07466E4E7E4FAFFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F1FD877BE85F4FE05F4F
        E05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F4FE05F
        4FE0897DE8F3F2FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFEFEFFCAC4F57669E45F4FE05F4FE05F4FE05F4F
        E05F4FE05F4FE05F4FE05F4FE05F4FE0776AE5CBC6F5FEFEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFEFFDCD8F8AAA2EF8A7FE87A6DE56E60E37A6DE58A7FE8ABA3
        EFDCD9F8FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
      TabOrder = 0
      OnClick = btnPararDownloadClick
    end
    object btnExibirMensagem: TBitBtn
      Left = 1
      Top = 1
      Width = 149
      Height = 37
      Align = alLeft
      Caption = 'Exibir &mensagem'
      Glyph.Data = {
        12090000424D120900000000000036000000280000001B0000001B0000000100
        180000000000DC08000074120000741200000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F8F7F7F1F0F0F1F0F0F1F0F0F1F0F0F1F0F0F1F0F0F1F0F0F1F0F0F1F0F0F1F0
        F0F1F0F0F1F0F0F1F0F0F3F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFEFEFEA3A2A553535A545B695A65785A65785A6578
        5A65785A65785A65785A65785A65785A65785A65785A65785A65785A65785861
        7151545C7C7B7FF2F1F1FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF7A
        787C5C728F7EB7F779ADEA678EBD6386B16386B16386B16386B16386B16386B1
        6386B16386B16386B16386B16386B1658AB773A2DA7FB9FB6990BF535257F1F0
        F0FFFFFFFFFFFF000000FFFFFFFFFFFFC5C4C45564797FB9FB6385B06588B576
        A9E27AAFEC7AAFEC7AAFEC7AAFEC7AAFEC7AAFEC7AAFEC7AAFEC7AAFEC7AAFEC
        7AAFEC78ADE96A94C65D7BA37AAFED6990BF7B7A7EFFFFFFFFFFFF000000FFFF
        FFFFFFFF70707576A9E2678DBA75A7E07FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7F
        B9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7EB8F9
        5D7BA37FB9FB52545DFFFFFFFFFFFF000000FFFFFFFFFFFF5C5B627FB9FB5D7B
        A37FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7F
        B9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB6A94C673A2DA565D6CF3F2F2
        FFFFFF000000FFFFFFFFFFFF5B5B627FB9FB6182AA7FB9FB7FB9FB7FB9FB7FB9
        FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7F
        B9FB7FB9FB7FB9FB7BB0EE668CB9586171F0EFEFFFFFFF000000FFFFFFFFFFFF
        5B5B627FB9FB6184AD7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9
        FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7DB3F364
        89B6586171F0EFEFFFFFFF000000FFFFFFFFFFFF5B5B627FB9FB6184AD7FB9FB
        7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7EB6F7739FD46F96C271A1D67EB6F77DB6
        F66A84A47FB9FB7FB9FB7FB9FB7FB9FB7DB3F36489B6586171F0EFEFFFFFFF00
        0000FFFFFFFFFFFF5B5B627FB9FB6184AD7FB9FB7FB9FB7FB9FB7FB9FB7AAEE9
        74879D9AA7AECBD7D7DBE6E7C9D4D59AA6B092A1AE8795A37FB9FB7FB9FB7FB9
        FB7FB9FB7DB3F36489B6586171F0EFEFFFFFFF000000FFFFFFFFFFFF5B5B627F
        B9FB6184AD7FB9FB7FB9FB7FB9FB7AAAE2929EAAECFAFBEEFCFDEEFCFDEEFCFD
        EEFCFDEEFCFDEEFCFD919EAA78AAE27FB9FB7FB9FB7FB9FB7DB3F36489B65861
        71F0EFEFFFFFFF000000FFFFFFFFFFFF5B5B627FB9FB6184AD7FB9FB7FB9FB7F
        B9FB7F92A6EEFCFDEEFCFDEEFCFDEEFCFDEEFCFDEEFCFDEEFCFDEEFCFDEDFBFC
        7C8FA37FB9FB7FB9FB7FB9FB7DB3F36489B6586171F0EFEFFFFFFF000000FFFF
        FFFFFFFF5B5B627FB9FB6184AD7FB9FB7FB9FB7FB9FB95A3AFEEFCFDEEFCFDEE
        FCFDEEFCFDEEFCFDEEFCFDEEFCFDEEFCFDEEFCFD95A3AF7FB9FB7FB9FB7FB9FB
        7DB3F36489B6586171F0EFEFFFFFFF000000FFFFFFFFFFFF5B5B627FB9FB6184
        AD7FB9FB7FB9FB7FB9FB8A99AAEEFCFDEEFCFDEEFCFDEEFCFDEEFCFDEEFCFDEE
        FCFDEEFCFDEEFCFD8999AA7FB9FB7FB9FB7FB9FB7EB8FA7BB2F0586171F0EFEF
        FFFFFF000000FFFFFFFFFFFF5B5B627FB9FB6184AD7FB9FB7FB9FB7FB9FB759A
        C5BFCCCFEEFCFDEEFCFDEEFCFDEEFCFDEEFCFDEEFCFDEEFCFDBECBCE759BC67F
        B9FB7FB9FB7FB9FB7CB4F4658AB7586171F0EFEFFFFFFF000000FFFFFFFFFFFF
        5B5B627FB9FB6184AD7FB9FB7FB9FB7FB9FB7FB9FB7699C48B96A0DDE9EAEEFC
        FDEEFCFDEEFCFDDCE8E98A96A07699C47FB9FB7FB9FB7FB9FB7FB9FB7EB6F770
        9DD3586171F0EFEFFFFFFF000000FFFFFFFFFFFF5B5B627FB9FB6184AD7FB9FB
        7FB9FB7FB9FB7FB9FB7FB9FB7DB6F67193BA7388A27D93AB7388A27094BB7EB6
        F77FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7DB5F5688FBF586171F0EFEFFFFFFF00
        0000FFFFFFFFFFFF5B5B627FB9FB6184AD7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB
        7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9
        FB7FB9FB7FB9FB7EB8FA586171F0EFEFFFFFFF000000FFFFFFFFFFFF5B5B627F
        B9FB5F7FA77FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB
        7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB5861
        71F0EFEFFFFFFF000000FFFFFFFFFFFF5E5D647EB8F95D7BA37FB9FB7FB9FB7F
        B9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB
        7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB555B69F8F7F7FFFFFF000000FFFF
        FFFFFFFF8483876D98CC71A0D7658AB77FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7F
        B9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7EB9FB7FB9FB7FB9FB
        7FB9FB7EB7F754545CFFFFFFFFFFFF000000FFFFFFFFFFFFE4E3E34A4D567EB6
        F771A0D75D7CA35F7FA76386B16386B16386B16386B16386B16386B16386B163
        86B16386B16386B16386B16B95C67FB9FB7FB9FB7FB9FB5C728FA3A2A5FFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFBAB9BA4A4D566D98CC7FB9FB7FB9FB7FB9
        FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7FB9FB7F
        B9FB7FB9FB77A8E35564797A787CFEFEFEFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFE4E3E38483875E5E636162696162696162696162696162696162
        696162696162696162696162696162696162696162695E5E64727177C5C4C4FF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
      TabOrder = 1
      OnClick = btnExibirMensagemClick
      ExplicitLeft = -5
      ExplicitTop = 6
    end
    object btnExibirHistoricoDownload: TBitBtn
      Left = 150
      Top = 1
      Width = 187
      Height = 37
      Align = alLeft
      Caption = 'Exibir &hist'#243'rico de downloads'
      Glyph.Data = {
        12090000424D120900000000000036000000280000001B0000001B0000000100
        180000000000DC08000074120000741200000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFEFDFCE3C5FBD2A0FCE0BF
        FDF0DFFDF0DFFDF0DFFDF0DFFDF0DFFDF0DFFDF0DFFDF0DFFDF0DFFDF0DFFDF0
        DFFDF0DFFDF0DFFDF0DFFDF0DFFDF0DFFDF0E0FEF5EAFFFFFEFFFFFFFFFFFF00
        0000FFFFFFFFFBF6F8BE76F5A542F5A542F5A543F8C27EFBDEBBFBDEBBFBDEBB
        FBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDE
        BBFBDEBBFBDEBBFBDEBBFCE7CEFFFEFCFFFFFF000000FFFFFFFACF9BF5A542EE
        9C3AE48D2DF3A23FF5A542FAD09DFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBB
        FBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDE
        BBFDEEDCFFFFFF000000FFFFFFF6AD52F4A341D67B1DD27619DE8627F5A542F8
        BA6FFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBB
        FBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBE1C2FFFFFF000000FEF9
        F2F5A542EF9D3BD27619D27619D67B1DF5A542F6B25DFBDEBBFBDEBBFBDEBBFB
        DEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBB
        FBDEBBFBDEBBFBDEBBFBDEBBFFFDFB000000FEFAF3F6A746F3A240D4781AD276
        19DB8223F5A542F7B76AFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFB
        DEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBE0BE
        FFFFFF000000FEFAF4F6B15DF5A542E99433DA8224EF9D3BF5A542F9C88CFBDE
        BBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFB
        DEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFCE9D2FFFFFF000000FEFAF4F9C686
        F5A94AF5A542F5A542F5A542F7B462FBDDBAFBDEBBFBDEBBFBDEBBFBDEBBFBDE
        BBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFBDEBBFB
        DEBBFBE1C2FEFBF6FFFFFF000000FEFAF4F9CA90F9C788F6B564F6B360F7C17C
        FAD8ADFAD9AFFAD9AFFAD9AFFAD9AFFAD9AFFAD9AFFAD9AFFAD9AFFAD9AFFAD9
        AFFAD9AFFAD9AFFAD9AFFAD9AFFCE6CBFCE7CEFDECD8FFFCF9FFFFFFFFFFFF00
        0000FEFAF4F9CA90F9CA90F9CA90F9C98FF8C88DF8C88DF8C88DF8C88DF8C88D
        F8C98EF9CA90F8C98EF8C88DF8C88DF8C88DF8C88DF9C98FF9CA90F9CA90F9CA
        90FFFCF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFAF4F9CA90F9CA90F9
        CA90EDAF6AD27619D27619D27619D27619D27619D3771BF9CA90DC8A35D27619
        D27619D27619D27619EEB26EF9CA90F9CA90F9CA90FFFCF8FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FEFAF4F9CA90F9CA90F9CA90F6C487EFB674EFB674EF
        B674EFB674EFB674F0B675F9CA90F2BB7BEFB674EFB674EFB674EFB674F6C588
        F9CA90F9CA90F9CA90FFFCF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFA
        F4F9CA90F9CA90F9CA90F3BD7DE5A055E5A055F6C284F9CA90E8A459E5A055E5
        A055E8A55CF9CA90F5C082E5A055E5A055F4BE80F9CA90F9CA90F9CA90FFFCF8
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFAF4F9CA90F9CA90F9CA90EFB6
        73DC8A35DC8A35F3BE7FF9CA90DE903DDC8A35DC8A35DF9242F9CA90F2BB7BDC
        8A35DC8A35F0B877F9CA90F9CA90F9CA90FFFCF8FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000FEFAF4F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA
        90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9
        CA90F9CA90FFFCF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFAF4F9CA90
        F9CA90F9CA90EDB06BD3771BD3771BD3771BE8A45AF9CA90E09545D3771BD377
        1BD3771BD3771BD3771BD3771BEFB36FF9CA90F9CA90F9CA90FFFCF8FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FEFAF4F9CA90F9CA90F9CA90F6C385EEB26E
        EEB26EEEB26EF4BF80F9CA90F2BB7BEEB26EEEB26EEEB26EEEB26EEEB26EEEB2
        6EF5C387F9CA90F9CA90F9CA90FFFCF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FEFAF4F9CA90F9CA90F9CA90F3BE7FE7A459E7A459E7A459E7A459E7A459
        E7A459E7A459F5C183F9CA90E9A860E7A459E7A459F4BF80F9CA90F9CA90F9CA
        90FFFCF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFAF4F9CA90F9CA90F9
        CA90F0B571DA8730DA8730DA8730DA8730DA8730DA8730DA8730F2BA7AF9CA90
        DE8F3CDA8730DA8730F0B776F9CA90F9CA90F9CA90FFFCF8FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FEFAF4F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9
        CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90
        F9CA90F9CA90F9CA90FFFCF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFA
        F4F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9
        CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90FFFCF8
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFAF4F9CA90F9CA90F9CA90F9CA
        90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9
        CA90F9CA90F9CA90F9CA90F9CA90F9CA90FFFCF8FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000FEFAF4F9CA90FAD4A5FEF4E9FAD19EF9CA90F9CA90FAD2A1FEF4
        E7FAD19FF9CA90F9CA90FAD2A0FEF5E9FAD3A2F9CA90F9CA90FAD09DFEF4E7FA
        D3A4F9CA90FFFCF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFAF4FAD4A5
        FFFBF7FFFFFFFEF8F1FAD19EFAD2A1FEFAF5FFFFFFFEF9F2FAD19FFAD2A0FEF9
        F3FFFFFFFEFAF5FAD3A2FAD09DFEF8F1FFFFFFFFFBF6FAD3A4FFFCF8FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFDFAFFFBF8FFFFFFFFFFFFFFFFFFFEF8F0
        FFFBF6FFFFFFFFFFFFFFFFFFFEF9F2FEFAF4FFFFFFFFFFFFFFFFFFFEFAF4FEF9
        F2FFFFFFFFFFFFFFFFFFFFFBF6FFFEFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
      TabOrder = 2
      OnClick = btnExibirHistoricoDownloadClick
      ExplicitLeft = 144
      ExplicitTop = 6
    end
    object btnFechar: TBitBtn
      Left = 696
      Top = 1
      Width = 112
      Height = 37
      Align = alRight
      Caption = '&Fechar'
      Glyph.Data = {
        12090000424D120900000000000036000000280000001B0000001B0000000100
        180000000000DC08000074120000741200000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFDFDFDDAC7D4CCB8CACBB7C9CBB7C9CBB7C9CBB7C9CBB7C9
        CBB7C9CBB7C9CBB7C9CBB7C9CBB7C9CBB7C9CBB7C9CBB7C9CBB7C9CBB7C9CBB7
        C9CBB7C9CCB8CADAC7D4FDFDFDFFFFFFFFFFFF000000FFFFFFFFFFFFD9C7D39F
        90B09BAACC9BAACC9BAACC9BAACC9BAACC9BAACC9BAACC9BAACC9BAACC9BAACC
        9BAACC9BAACC9BAACC9BAACC9BAACC9BAACC9BAACC9BAACC9BAACC9F90B0D9C7
        D4FFFFFFFFFFFF000000FFFFFFFFFFFFCEB9C99AADCE97D3F697D3F697D3F697
        D3F697D3F697D3F697D3F697D3F697D3F697D3F697D3F697D3F697D3F697D3F6
        97D3F697D3F697D3F697D3F697D3F69AADCECEB9C9FFFFFFFFFFFF000000FFFF
        FFFFFFFFCEB9C99AADCE97D3F69C8CB09E749A9B8CC9999DE79C82B598A1EF9D
        7DAE98A2F19D7DAD98A2F19D7DAE98A1EF9C82B5999DE79B8CC99E749A9C8CB0
        97D3F69AADCECEB9C9FFFFFFFFFFFF000000FFFFFFFFFFFFCEB9C99AADCE97D3
        F69E759D9978ED9978ED9978E69C72C09978EC9C72BB9978ED9C71BB9978ED9C
        72BB9978EC9C72C09978E69978ED9978ED9E759D97D3F69AADCECEB9C9FFFFFF
        FFFFFF000000FFFFFFFFFFFFCEB9C99AADCE97D3F69E759D9978ED9978ED9978
        ED9978ED9978ED9978ED9978ED9978ED9978ED9978ED9978ED9978ED9978ED99
        78ED9978ED9E759D97D3F69AADCECEB9C9FFFFFFFFFFFF000000FFFFFFFFFFFF
        CEB9C99AADCE97D3F69E759D9978ED9978EDAB96F1A48CEF9978ED9978ED9978
        ED9978ED9978ED9978ED9978EDA58CEFA994F09978ED9978ED9E759D97D3F69A
        ADCECEB9C9FFFFFFFFFFFF000000FFFFFFFFFFFFCEB9C99AADCE97D3F69E759D
        9978ED9978EDA58CEFD3DCF8A58DEF9978ED9978ED9978ED9978ED9978EDA58D
        EFD3DCF8A48CEF9978ED9978ED9E759D97D3F69AADCECEB9C9FFFFFFFFFFFF00
        0000FFFFFFFFFFFFCEB9C99AADCE97D3F69E759D9978ED9978ED9978EDA58DEF
        D3DCF8A58DEF9978ED9978ED9978EDA48BEFD2DAF8A58DEF9978ED9978ED9978
        ED9E759D97D3F69AADCECEB9C9FFFFFFFFFFFF000000FFFFFFFFFFFFCEB9C99A
        ADCE97D3F69E759D9978ED9978ED9978ED9978EDA48BEFD2DAF8A58DEF9978ED
        A48AEFD2DAF8A58DEF9978ED9978ED9978ED9978ED9E759D97D3F69AADCECEB9
        C9FFFFFFFFFFFF000000FFFFFFFFFFFFD0BAC99CAECE97D3F69E759D9978ED99
        78ED9978ED9978ED9978EDA58DEFD2DCF8B1A1F1D2DCF8A58DEF9978ED9978ED
        9978ED9978ED9978ED9E759D97D3F69DAECED0BAC9FFFFFFFFFFFF000000FFFF
        FFFFFFFFD0BAC9A7B5D0A4DCF89F759D9978ED9978ED9978ED9978ED9978ED99
        78EDB1A1F1DEEFFAB1A1F19978ED9978ED9978ED9978ED9978ED9978ED9F759D
        A4DCF8A7B5D0D0BAC9FFFFFFFFFFFF000000FFFFFFFFFFFFD0BAC9A8B7D0AEE3
        F9A0769D9978ED9978ED9978ED9978ED9978EDA58DEFD2DCF8B1A1F1D2DCF8A5
        8DEF9978ED9978ED9978ED9978ED9978EDA0769DAEE3F9A8B7D0D0BAC9FFFFFF
        FFFFFF000000FFFFFFFFFFFFD0BAC9A8B7D0AEE3F9A0769D9978ED9978ED9978
        ED9978EDA48AEFD2DAF8A58DEF9978EDA48BEFD2DAF8A58DEF9978ED9978ED99
        78ED9978EDA0769DAEE3F9A8B7D0D0BAC9FFFFFFFFFFFF000000FFFFFFFFFFFF
        D0BAC9A8B7D0AEE3F9A0769D9978ED9978ED9978EDA48AEFD3DCF8A690F09978
        ED9978ED9978EDA48BEFD2DBF8A58DEF9978ED9978ED9978EDA0769DAEE3F9A8
        B7D0D0BAC9FFFFFFFFFFFF000000FFFFFFFFFFFFD0BAC9A8B7D0AEE3F9A0769D
        9978ED9978EDA48CEFD3DCF8A58DEF9978ED9978ED9978ED9978ED9978EDA58D
        EFD3DCF8A58CEF9978ED9978EDA0769DAEE3F9A8B7D0D0BAC9FFFFFFFFFFFF00
        0000FFFFFFFFFFFFD0BAC9A8B7D0AEE3F9A0769D9978ED9978EDA994F0A58CEF
        9978ED9978ED9978ED9978ED9978ED9978ED9978EDA48CEFAA97F19978ED9978
        EDA0769DAEE3F9A8B7D0D0BAC9FFFFFFFFFFFF000000FFFFFFFFFFFFD0BAC9A8
        B7D0AEE3F9A0769D9978ED9978ED9978ED9978ED9978ED9978ED9978ED9978ED
        9978ED9978ED9978ED9978ED9978ED9978ED9978EDA0769DAEE3F9A8B7D0D0BA
        C9FFFFFFFFFFFF000000FFFFFFFFFFFFD0BAC9A8B7D0AEE3F9A0769D9978ED99
        78ED9978ED9978ED9978ED9978ED9978ED9978ED9978ED9978ED9978ED9978ED
        9978ED9978ED9978EDA0769DAEE3F9A8B7D0D0BAC9FFFFFFFFFFFF000000FFFF
        FFFFFFFFD0BAC9A8B7D0AEE3F9A390B1A0759AA0759AA0759AA0759AA0759AA0
        759AA0759AA0759AA0759AA0759AA0759AA0759AA0759AA0759AA0759AA391B1
        AEE3F9A8B7D0D0BAC9FFFFFFFFFFFF000000FFFFFFFFFFFFD0BAC9A8B7D0AEE3
        F9AEE3F9AEE3F9AEE3F9AEE3F9AEE3F9AEE3F9AEE3F9AEE3F9AEE3F9AEE3F9AE
        E3F9AEE3F9AEE3F9AEE3F9AEE3F9AEE3F9AEE3F9AEE3F9A8B7D0D0BAC9FFFFFF
        FFFFFF000000FFFFFFFFFFFFD9C7D3A895B2A8B3CDA8B3CDA8B3CDA8B3CDA8B3
        CDA8B3CDA8B3CDA8B3CDA8B3CDA8B3CDA8B3CDA8B3CDA8B3CDA8B3CDA8B3CDA8
        B3CDA8B3CDA8B3CDA8B3CDA895B2D9C7D4FFFFFFFFFFFF000000FFFFFFFFFFFF
        FDFDFDDAC6D3CFB9CACFB9CACFB9CACFB9CACFB9CACFB9CACFB9CACFB9CACFB9
        CACFB9CACFB9CACFB9CACFB9CACFB9CACFB9CACFB9CACFB9CACFB9CACFB9CADA
        C7D3FDFDFDFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
      TabOrder = 3
      OnClick = btnFecharClick
    end
  end
  object pnlURL: TPanel
    Left = 0
    Top = 0
    Width = 809
    Height = 53
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      809
      53)
    object ledtUrl: TLabeledEdit
      Left = 11
      Top = 20
      Width = 639
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 87
      EditLabel.Height = 13
      EditLabel.Caption = 'Informe uma URL:'
      TabOrder = 0
    end
    object btnIniciarDownload: TBitBtn
      Left = 656
      Top = 8
      Width = 142
      Height = 39
      Anchors = [akTop, akRight]
      Caption = 'Iniciar &Download'
      Glyph.Data = {
        12090000424D120900000000000036000000280000001B0000001B0000000100
        180000000000DC08000074120000741200000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFF8AC394449F53449F53449F53449F53449F53449F53
        449F53449F53449F53449F53449F53449F53449F53449F53449F53449F53449F
        53449F53449F538AC394FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF63
        AF70067F1B067F1B067F1B067F1B067F1B067F1B067F1B067F1B067F1B067F1B
        067F1B067F1B067F1B067F1B067F1B067F1B067F1B067F1B067F1B63AF70FFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFB1D7B782BF8D82BF8D82BF8D82
        BF8D82BF8D82BF8D82BF8D82BF8D82BF8D82BF8D82BF8D82BF8D82BF8D82BF8D
        82BF8D82BF8D82BF8D82BF8D82BF8DB1D7B7FFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FBF871B67DF7FBF8FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFEFEFE60AD6D067F1B59AA67FEFEFEFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF85C08F067F
        1B067F1B067F1B86C190FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFAED5B508801D067F1B067F1B067F1B077F1CA8D2
        AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEE6D2
        118525067F1B067F1B067F1B067F1B067F1B0F8423C9E3CEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFE6F2E8218D34067F1B067F1B067F1B067F1B
        067F1B067F1B067F1B1E8C31E3F0E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6
        FAF73A9A4A067F1B067F1B067F1B067F1B067F1B067F1B067F1B067F1B067F1B
        369847F4F9F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9E3CE8BC3958BC3958BC39528
        9139067F1B067F1B067F1B2891398BC3958BC3958BC395C9E3CEFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF449F53067F1B067F1B067F1B44
        9F53FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF449F53067F1B067F1B067F1B449F53FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF449F53067F
        1B067F1B067F1B449F53FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF449F53067F1B067F1B067F1B449F53FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5DAC6B279039279039
        2790395DAC6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF449F54067F1B067F1B067F1B449F54FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4
        D8BA9BCCA49BCCA49BCCA4B4D8BAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9BCCA47ABB857ABB857ABB859B
        CCA4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF449F54067F1B067F1B067F1B449F54FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF76B98248A1
        5848A15848A15876B982FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
      TabOrder = 1
      OnClick = btnIniciarDownloadClick
    end
  end
  object svdDiretorio: TSaveDialog
    Title = 'Escolhar o diret'#243'rio'
    Left = 704
    Top = 32
  end
end
