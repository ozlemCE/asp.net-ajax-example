<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="IstanbulGezi.Anasayfa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 32px;
        }
        </style>
</head>
<body>
   <form id="form2" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
       
          
             <div colspan="2" align="center" class="auto-style1" ><i><b><font face="tahoma" size="4" color="maroon">İstanbul Gezilecek Yerler </font></b> </i></div>   
         
                       <asp:UpdatePanel ID="UpdatePanel1" runat="server">

                        <ContentTemplate>
                             <table width="100%">
                              <td valign="top">                <asp:ListBox ID="listYerler" runat="server" Height="358px" Width="154px" >
                    </asp:ListBox>
                      </td>                <td width="100%" valign="top">   
                                        &nbsp;&nbsp;
                                        <asp:Label ID="yerLbl" runat="server" Text="Label"></asp:Label>
                                        <br />
                         <br /> &nbsp;<asp:Image ID="imgResim" runat="server" Height="500px" Width="984px" />
                               <br />
                                       <div>
                                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:ImageButton ID="geriBtn" runat="server" Height="45px" ImageUrl="~/geri.png" Width="45px" OnClick="geriBtn_Click" />
                                       <asp:ImageButton ID="ileriBtn" runat="server" Height="45px" ImageUrl="~/ileri.png" Width="45px" OnClick="ileriBtn_Click" />
                                      </div>
                               <br />
                               <asp:Label ID="aciklamaLbl" runat="server" Text="Label"></asp:Label>

                          <asp:Timer ID="Timer1" runat="server" Interval="5000" OnTick="Timer1_Tick">
                         </asp:Timer>
                    </td>
                            </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="listYerler" EventName="SelectedIndexChanged" />
                        </Triggers>
                    </asp:UpdatePanel>
                
                  </td>            </tr>        </table>    </div>    </form>
</body>
</html>
