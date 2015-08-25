<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PosterDefine.aspx.cs" Inherits="MailPoster.PosterDefine" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style/style.css" rel="stylesheet">
    <style type="text/css">
        #MailBodyTextArea
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:UpdatePanel ID="MainUpdatePanel" runat="server">
                    <ContentTemplate>
                <script type="text/javascript" language="javascript">
                    function SendingMail() {
                        var StatusLabel = document.getElementById('StatusLabel');
                        if (StatusLabel == undefined) { }
                        else StatusLabel.innerHTML = "正在寄送郵件中......";
                    }
                    function EmptyStateLabel() {
                        var StateLabel = document.getElementById('StateLabel');
                        if (StateLabel == undefined) { }
                        else StateLabel.innerHTML = "";
                        return true;
                    }
                </script>
                <div align="center">
                    <div align="left" style="width:990px">
                        <asp:LinkButton ID="HelperLinkButton" runat="server" 
                            onclick="HelperLinkButton_Click" Font-Bold="True">回到服務說明</asp:LinkButton>
                        &nbsp;
                        <asp:LinkButton ID="SaveAllHelperLinkButton" runat="server" Font-Bold="True" 
                            onclick="SaveAllHelperLinkButton_Click">全部儲存</asp:LinkButton>
                    </div>
                    <table style="width:990px; border:3px double gray" cellspacing="0" border="1">
                        <tr style="background-color:Gray; color:White">
                            <td align="center" width="200">
                                <b>名稱</b></td>
                            <td align="center" width="240">
                                <b>定義</b></td>
                            <td align="center" width="460">
                                <b>說明</b></td>
                            <td align="center" width="90">
                                <b>儲存</b></td>
                        </tr>
                        <tr>
                            <td align="center" style="height:36px">
                                SMTP郵件主機</td>
                            <td align="center">
                                <asp:TextBox ID="MailHostTextBox" runat="server" style="width:98%"></asp:TextBox>
                            </td>
                            <td align="center">
                                指定SMTP的送件主機、例：smtp.gmail.com</td>
                            <td align="center">
                                <asp:LinkButton ID="LinkButtonA" runat="server" onclick="LinkButtonA_Click" 
                                    onclientclick="return EmptyStateLabel();">儲存</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="height:36px">
                                郵件埠</td>
                            <td align="center">
                                <asp:TextBox ID="MailPortTextBox" runat="server" style="width:98%"></asp:TextBox>
                            </td>
                            <td align="center">
                                指定SMTP的送件主機埠、例：25</td>
                            <td align="center">
                                <asp:LinkButton ID="LinkButtonB" runat="server" onclick="LinkButtonA_Click" 
                                    onclientclick="return EmptyStateLabel();">儲存</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="height:36px">
                                是否使用加密連線</td>
                            <td align="center">
                                <asp:CheckBox ID="SSLCheckBox" runat="server" />
                            </td>
                            <td align="center">
                                送件主機是否啟用加密連線</td>
                            <td align="center">
                                <asp:LinkButton ID="LinkButtonC" runat="server" onclick="LinkButtonA_Click" 
                                    onclientclick="return EmptyStateLabel();">儲存</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="height:36px">
                                是否使用HTML內文郵件</td>
                            <td align="center">
                                <asp:CheckBox ID="IsBodyHtmlCheckBox" runat="server" />
                            </td>
                            <td align="center">
                                是否使用HTML內文郵件</td>
                            <td align="center">
                                <asp:LinkButton ID="LinkButtonD" runat="server" onclick="LinkButtonA_Click" 
                                    onclientclick="return EmptyStateLabel();">儲存</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="height:36px">
                                郵件內文編碼</td>
                            <td align="center">
                                <asp:DropDownList ID="BodyEncodingDropDownList" runat="server" style="width:98%">
                                </asp:DropDownList>
                            </td>
                            <td align="center">
                                郵件內文所使用的編碼</td>
                            <td align="center">
                                <asp:LinkButton ID="LinkButtonE" runat="server" onclick="LinkButtonA_Click" 
                                    onclientclick="return EmptyStateLabel();">儲存</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="height:36px">
                                郵件題標編碼</td>
                            <td align="center">
                                <asp:DropDownList ID="SubjectEncodingDropDownList" runat="server" 
                                    style="width:98%">
                                </asp:DropDownList>
                            </td>
                            <td align="center">
                                郵件題標所使用的編碼</td>
                            <td align="center">
                                <asp:LinkButton ID="LinkButtonF" runat="server" onclick="LinkButtonA_Click" 
                                    onclientclick="return EmptyStateLabel();">儲存</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="height:36px">
                                SMTP帳號</td>
                            <td align="center">
                                <asp:TextBox ID="SenderTextBox" runat="server" style="width:98%" 
                                    AutoCompleteType="Disabled" EnableViewState="False"></asp:TextBox>
                            </td>
                            <td align="center">
                                設定SMTP送件者的帳號</td>
                            <td align="center">
                                <asp:LinkButton ID="LinkButtonG" runat="server" onclick="LinkButtonA_Click" 
                                    onclientclick="return EmptyStateLabel();">儲存</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="height:36px">
                                SMTP密碼</td>
                            <td align="center">                        
                                <asp:TextBox ID="SenderPWTextBox" runat="server" style="width:98%" 
                                    TextMode="Password" AutoCompleteType="Disabled" EnableViewState="False"></asp:TextBox>
                            </td>
                            <td align="center">
                                設定SMTP送件者的密碼</td>
                            <td align="center">
                                <asp:LinkButton ID="LinkButtonH" runat="server" onclick="LinkButtonA_Click" 
                                    onclientclick="return EmptyStateLabel();">儲存</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="height:36px">
                                送件者E-Mail</td>
                            <td align="center">                        
                                <asp:TextBox ID="SenderEMailTextBox" runat="server" style="width:98%"></asp:TextBox>
                            </td>
                            <td align="center">
                                設定送件者的E-Mail</td>
                            <td align="center">
                                <asp:LinkButton ID="LinkButtonI" runat="server" onclick="LinkButtonA_Click" 
                                    onclientclick="return EmptyStateLabel();">儲存</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="height:36px">送件者名稱</td>
                            <td align="center">                        
                                <asp:TextBox ID="NameOfSenderTextBox" runat="server" style="width:98%"></asp:TextBox>
                            </td>
                            <td align="center">設定送件者的名稱</td>
                            <td align="center">
                                <asp:LinkButton ID="LinkButtonJ" runat="server" onclick="LinkButtonA_Click" 
                                    onclientclick="return EmptyStateLabel();">儲存</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                    <div align="left" style="width:990px">
                        狀態：<asp:Label ID="StateLabel" 
                            runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                    </div>
                    <div align="left" style="width:990px">
                        <table width="100%" cellspacing="0" border="1">
                            <tr style="background-color:Gray; color:White">
                                <th align="center" colspan="3">測試寄發郵件</th>                            
                            </tr>
                            <tr>
                                <td align="center" style="width:90px">
                                    收件者
                                </td>
                                <td align="center" colspan="2">
                                    <asp:TextBox ID="ToMailTitleTextBox" runat="server" Width="100%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    題標
                                </td>
                                <td align="center" colspan="2">
                                    <asp:TextBox ID="TitleTextBox" runat="server" Width="100%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    內文
                                </td>
                                <td align="center" colspan="2">
                                    <textarea id="MailBodyTextArea" runat="server" name="S1" rows="4"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    狀態
                                </td>
                                <td style="padding-left:4px">
                                    <asp:Label ID="StatusLabel" runat="server" Font-Bold="True" ForeColor="Red">
                                    </asp:Label>
                                </td>
                                <td align="center" style="width:80px">
                                    <asp:Button ID="SendButton" runat="server" Text="寄出" Width="78px" 
                                        onclick="SendButton_Click" onclientclick="SendingMail();" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <asp:ScriptManager ID="MainScriptManager" runat="server">
                </asp:ScriptManager>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
