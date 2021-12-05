﻿Imports System.Data.SqlClient
Imports Oracle.ManagedDataAccess.Client
Imports System.Threading
Imports System.Data.OleDb
Imports System.Windows.Forms


Public Class WebForm5
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub LoginButton_Click(sender As Object, e As EventArgs) Handles LoginButton.Click
        Try
            Dim oradb As String = "TNS_ADMIN=C:\Users\91809\Oracle\network\admin;USER ID=MIS531GROUP03;PASSWORD=<Enter here>;DATA SOURCE=128.196.27.219:1521/ORCL;PERSIST SECURITY INFO=True"
            Dim conn As New OracleConnection(oradb)
            Dim cmd As New OracleCommand()
            Dim reader As OracleDataReader
            conn.Open()
            cmd.Connection = conn

            Dim ip_email As String = UserEmailLogin.Text
            Dim ip_pwd As String = PwdInput.Text
            Dim v_email As String = ""
            Dim v_pwd As String = ""

            Dim sql1 As String = "select userid from user_login_details where userid = '" + ip_email + "'"
            cmd = New OracleCommand(sql1, conn)
            cmd.CommandType = CommandType.Text
            If cmd.ExecuteReader() Is Nothing Then
                Console.WriteLine("User Not Found")
                v_email = ""
            Else
                reader = cmd.ExecuteReader()
                reader.Read()
                v_email = reader.GetString(0)
            End If

            Dim sql2 As String = "select userpwd from user_login_details where userid = '" + ip_email + "'"
            cmd = New OracleCommand(sql2, conn)
            cmd.CommandType = CommandType.Text
            If cmd.ExecuteReader() Is Nothing Then
                Console.WriteLine("User Not Found")
                v_pwd = ""
            Else
                reader = cmd.ExecuteReader()
                reader.Read()
                v_pwd = reader.GetString(0)
            End If

            Dim sql3 As String = "select userid from users where useremail = '" + ip_email + "'"
            cmd = New OracleCommand(sql3, conn)
            cmd.CommandType = CommandType.Text
            If cmd.ExecuteReader() Is Nothing Then
                Console.WriteLine("User Not Found")
                v_pwd = ""
                MessageBox.Show("User does not exist. Please sign up.")
                Response.Redirect("SignUpPage.aspx")
            Else
                reader = cmd.ExecuteReader()
                reader.Read()
                Session("UIDLI") = reader.GetString(0)
            End If

            Dim sql4 As String = "select usergroupid from users where useremail = '" + ip_email + "'"
            cmd = New OracleCommand(sql4, conn)
            cmd.CommandType = CommandType.Text
            reader = cmd.ExecuteReader()
            reader.Read()
            Dim gid As String = reader.GetString(0)


            conn.Close()

            If v_email = ip_email And v_pwd = ip_pwd Then
                MessageBox.Show("User Login Successful")
                If gid = "UGRP102" Then
                    Response.Redirect("employeeMaster.aspx")
                Else
                    Response.Redirect("employeeMaster.aspx")
                End If
            Else
                MessageBox.Show("User Login Failed")
                Response.Redirect("LogInPage.aspx")
            End If

        Catch ex As Exception When ex.Message <> "Thread was being aborted."
            MessageBox.Show("Please try again!")
        End Try
    End Sub
End Class