﻿@using System.Web.Mvc.Html
@using Umbraco.Web
@using $rootnamespace$.Models
@using $rootnamespace$.Controllers.SurfaceControllers
@model ForgottenPasswordViewModel

@{
    Html.EnableClientValidation(true);
    Html.EnableUnobtrusiveJavaScript(true);
}

@using(Html.BeginUmbracoForm<AuthSurfaceController>("HandleForgottenPassword") )
{
	@Html.AntiForgeryToken()
    @Html.ValidationSummary(true)

    <fieldset>
        <legend>Forgotten Password</legend>

        
		<div class="editor-label">
            @Html.LabelFor(model => model.EmailAddress)
        </div>

        <div class="editor-field">
            @Html.EditorFor(model => model.EmailAddress)
            @Html.ValidationMessageFor(model => model.EmailAddress)
        </div>

        <p>
            <input type="submit" value="Remind Me" />
        </p>
    </fieldset>
}