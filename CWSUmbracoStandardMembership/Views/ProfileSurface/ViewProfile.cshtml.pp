@using $rootnamespace$.Code
@using $rootnamespace$.Controllers.SurfaceControllers
@using $rootnamespace$.Models
@using UmbracoStandardMembership.Code
@model ViewProfileViewModel


<h3>View Profile</h3>

<h2>@Model.Name</h2>
<img src="@(Helpers.gravatarURL(Model.EmailAddress))" alt="@Model.Name"/>
<h3>Email: @Model.EmailAddress</h3>

<h3>Description: @Model.Description</h3>

<h3>LinkedIn: @Model.LinkedIn</h3>
<h3>Skype: @Model.Skype</h3>
<h3>Twitter: @Model.Twitter</h3>

<h3>Member ID: @Model.MemberID</h3>
<h3>Member Type: @Model.MemberType</h3>
<h3>No Of Logins: @Model.NumberOfLogins</h3>
<h3>No of profile views: @Model.NumberOfProfileViews</h3>
<h3>Last Login Date: @Model.LastLoginDate</h3>