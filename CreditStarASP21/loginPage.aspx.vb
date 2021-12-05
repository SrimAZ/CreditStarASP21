Imports System.Data.SqlClient



Public Class WebForm5
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


    Protected Sub LoginButton_Click(sender As Object, e As EventArgs)
        Dim connection As New SqlConnection("Server= SAMSNG-PC; Database = TestDB; Integrated Security = true")

        Dim command As New SqlCommand("select * from Login_Details where Username = @username and Password = @password", connection)
    End Sub

    Protected Sub EmployeeID_TextChanged(sender As Object, e As EventArgs) Handles EmployeeID.TextChanged

    End Sub

    Protected Sub LoginButton_Click1(sender As Object, e As EventArgs)

    End Sub

    Protected Sub LoginButton_Click2(sender As Object, e As EventArgs) Handles LoginButton.Click

    End Sub
End Class