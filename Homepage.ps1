# Set the home page.
Set-Content `
  -Path "C:\\inetpub\\wwwroot\\Default.htm" `
  -Value "
<html lang="en" xmlns="http://www.w3.org/1999/xhtml" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office">
<head>
    <meta charset="utf-8"> <!-- utf-8 works for most cases -->
    <meta name="viewport" content="width=device-width"> <!-- Forcing initial-scale shouldn't be necessary -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge"> <!-- Use the latest (edge) version of IE rendering engine -->
    <meta name="x-apple-disable-message-reformatting">  <!-- Disable auto-scale in iOS 10 Mail entirely -->
    <title></title> <!-- The title tag shows in email notifications, like Android 4.4. -->

    <!-- Web Font / @font-face : BEGIN -->
    <!-- NOTE: If web fonts are not required, lines 10 - 27 can be safely removed. -->

    <!-- Desktop Outlook chokes on web font references and defaults to Times New Roman, so we force a safe fallback font. -->
    <!--[if mso]>
        <style>
            * {
                font-family: sans-serif !important;
            }
        </style>
    <![endif]-->

    <!-- All other clients get the webfont reference; some will render the font and others will silently fail to the fallbacks. More on that here: http://stylecampaign.com/blog/2015/02/webfont-support-in-email/ -->
    <!--[if !mso]><!-->
    <!-- insert web font reference, eg: <link href='https://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'> -->
    <!--<![endif]-->

    <!-- Web Font / @font-face : END -->

    <!-- CSS Reset : BEGIN -->
    <style>

        /* What it does: Remove spaces around the email design added by some email clients. */
        /* Beware: It can remove the padding / margin and add a background color to the compose a reply window. */
        html,
        body {
            margin: 0 auto !important;
            padding: 0 !important;
            height: 100% !important;
            width: 100% !important;
        }

        /* What it does: Stops email clients resizing small text. */
        * {
            -ms-text-size-adjust: 100%;
            -webkit-text-size-adjust: 100%;
        }

        /* What it does: Centers email on Android 4.4 */
        div[style*="margin: 16px 0"] {
            margin: 0 !important;
        }

        /* What it does: Stops Outlook from adding extra spacing to tables. */
        table,
        td {
            mso-table-lspace: 0pt !important;
            mso-table-rspace: 0pt !important;
        }

        /* What it does: Fixes webkit padding issue. Fix for Yahoo mail table alignment bug. Applies table-layout to the first 2 tables then removes for anything nested deeper. */
        table {
            border-spacing: 0 !important;
            border-collapse: collapse !important;
            table-layout: fixed !important;
            margin: 0 auto !important;
        }
        table table table {
            table-layout: auto;
        }

        /* What it does: Uses a better rendering method when resizing images in IE. */
        img {
            -ms-interpolation-mode:bicubic;
        }

        /* What it does: Prevents Windows 10 Mail from underlining links despite inline CSS. Styles for underlined links should be inline. */
        a {
            text-decoration: none;
        }

        /* What it does: A work-around for email clients meddling in triggered links. */
        *[x-apple-data-detectors],  /* iOS */
        .unstyle-auto-detected-links *,
        .aBn {
            border-bottom: 0 !important;
            cursor: default !important;
            color: inherit !important;
            text-decoration: none !important;
            font-size: inherit !important;
            font-family: inherit !important;
            font-weight: inherit !important;
            line-height: inherit !important;
        }

        /* What it does: Prevents Gmail from displaying a download button on large, non-linked images. */
        .a6S {
            display: none !important;
            opacity: 0.01 !important;
        }
        /* If the above doesn't work, add a .g-img class to any image in question. */
        img.g-img + div {
            display: none !important;
        }

        /* What it does: Removes right gutter in Gmail iOS app: https://github.com/TedGoas/Cerberus/issues/89  */
        /* Create one of these media queries for each additional viewport size you'd like to fix */

        /* iPhone 4, 4S, 5, 5S, 5C, and 5SE */
        @media only screen and (min-device-width: 320px) and (max-device-width: 374px) {
            .email-container {
                min-width: 320px !important;
            }
        }
        /* iPhone 6, 6S, 7, 8, and X */
        @media only screen and (min-device-width: 375px) and (max-device-width: 413px) {
            .email-container {
                min-width: 375px !important;
            }
        }
        /* iPhone 6+, 7+, and 8+ */
        @media only screen and (min-device-width: 414px) {
            .email-container {
                min-width: 414px !important;
            }
        }

    </style>
	
    <!-- CSS Reset : END -->
	<!-- Reset list spacing because Outlook ignores much of our inline CSS. -->
	<!--[if mso]>
	<style type="text/css">
		ul,
		ol {
			margin: 0 !important;
		}
		li {
			margin-left: 30px !important;
		}
		li.list-item-first {
			margin-top: 0 !important;
		}
		li.list-item-last {
			margin-bottom: 10px !important;
		}
	</style>
	<![endif]-->
	
	<!--[if (mso)|(IE)]>
<xml:namespace ns="urn:schemas-microsoft-com:vml" prefix="v" />
<style>v\: * { behavior:url(#default#VML); display:inline-block }</style>
<!<![endif]-->
<!--[if (gte mso 9)|(IE)]>
<style>
.hide {
	display: none;
}
</style>
<![endif]-->


    <!-- Progressive Enhancements : BEGIN -->
    <style>

	    /* What it does: Hover styles for buttons */
	    .button-td,
	    .button-a {
	        transition: all 100ms ease-in;
	    }
	    .button-td-primary:hover,
	    .button-a-primary:hover {
	        background: #555555 !important;
	        border-color: #555555 !important;
	    }

	    /* Media Queries */
	    @media screen and (max-width: 480px) {

	        /* What it does: Forces elements to resize to the full width of their container. Useful for resizing images beyond their max-width. */
	        .fluid {
	            width: 100% !important;
	            max-width: 100% !important;
	            height: auto !important;
	            margin-left: auto !important;
	            margin-right: auto !important;
	        }

	        /* What it does: Forces table cells into full-width rows. */
	        .stack-column,
	        .stack-column-center {
	            display: block !important;
	            width: 100% !important;
	            max-width: 100% !important;
	            direction: ltr !important;
	        }
	        /* And center justify these ones. */
	        .stack-column-center {
	            text-align: center !important;
	        }

	        /* What it does: Generic utility class for centering. Useful for images, buttons, and nested tables. */
	        .center-on-narrow {
	            text-align: center !important;
	            display: block !important;
	            margin-left: auto !important;
	            margin-right: auto !important;
	            float: none !important;
	        }
	        table.center-on-narrow {
	            display: inline-block !important;
	        }

	        /* What it does: Adjust typography on small screens to improve readability */
	        .email-container p {
	            font-size: 17px !important;
	        }
	    }

    </style>
    <!-- Progressive Enhancements : END -->

    <!-- What it does: Makes background images in 72ppi Outlook render at correct size. -->
    <!--[if gte mso 9]>
    <xml>
        <o:OfficeDocumentSettings>
            <o:AllowPNG/>
            <o:PixelsPerInch>96</o:PixelsPerInch>
        </o:OfficeDocumentSettings>
    </xml>
    <![endif]-->

</head>
<!--
	The email background color (#5D3D6B) is defined in three places:
	1. body tag: for most email clients
	2. center tag: for Gmail and Inbox mobile apps and web versions of Gmail, GSuite, Inbox, Yahoo, AOL, Libero, Comcast, freenet, Mail.ru, Orange.fr
	3. mso conditional: For Windows 10 Mail
-->
<body width="100%" style="margin: 0; padding: 0 !important; mso-line-height-rule: exactly; background-color: #5D3D6B;">
	<center style="width: 100%; background-color: #5D3D6B;">
    <!--[if mso | IE]>
    <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="100%" style="background-color: #5D3D6B;">
    <tr>
    <td>
    <![endif]-->

        <!-- Visually Hidden Preheader Text : BEGIN -->
        <div style="display: none; font-size: 1px; line-height: 1px; max-height: 0px; max-width: 0px; opacity: 0; overflow: hidden; mso-hide: all; font-family: sans-serif;">
           Employee Engagement Newsletter
        </div>
        <!-- Visually Hidden Preheader Text : END -->

        <!-- Create white space after the desired preview text so email clients don’t pull other distracting text into the inbox preview. Extend as necessary. -->
        <!-- Preview Text Spacing Hack : BEGIN -->
        <div style="display: none; font-size: 1px; line-height: 1px; max-height: 0px; max-width: 0px; opacity: 0; overflow: hidden; mso-hide: all; font-family: sans-serif;">
	        &zwnj;&nbsp;&zwnj;&nbsp;&zwnj;&nbsp;&zwnj;&nbsp;&zwnj;&nbsp;&zwnj;&nbsp;&zwnj;&nbsp;&zwnj;&nbsp;&zwnj;&nbsp;&zwnj;&nbsp;&zwnj;&nbsp;&zwnj;&nbsp;&zwnj;&nbsp;&zwnj;&nbsp;&zwnj;&nbsp;&zwnj;&nbsp;&zwnj;&nbsp;&zwnj;&nbsp;
        </div>
        <!-- Preview Text Spacing Hack : END -->

        <!--
            Set the email width. Defined in two places:
            1. max-width for all clients except Desktop Windows Outlook, allowing the email to squish on narrow but never go wider than 680px.
            2. MSO tags for Desktop Windows Outlook enforce a 680px width.
            Note: The Fluid and Responsive templates have a different width (600px). The hybrid grid is more "fragile", and I've found that 680px is a good width. Change with caution.
        -->
        <div style="max-width: 680px; margin: 0 auto;" class="email-container">
            <!--[if mso]>
            <table align="center" role="presentation" cellspacing="0" cellpadding="0" border="0" width="680">
            <tr>
            <td>
            <![endif]-->

	        <!-- Email Body : BEGIN -->
	        <table role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%" style="margin: 0 auto;">
		        <!-- Email Header : BEGIN -->
	            <tr>
	                <td style="padding: 20px 0; text-align: center">
	                    <img src="http://www.softcat.com/assets/template/images/layout/softcat-logo.png" width="150" height="50" alt="alt_text" border="0" style="height: auto; background: #5D3D6B; font-family: sans-serif; font-size: 15px; line-height: 15px; color: #555555;">
	                </td>
	            </tr>
		        <!-- Email Header : END -->

	            <!-- Hero Image, Flush : BEGIN -->
                <tr>
                    <td style="background-color: #b3d452;">
                        <img src="https://image.ibb.co/d2AwEe/rangers2.jpg" width="680" height="" alt="alt_text" border="0" style="width: 100%; max-width: 680px; height: auto; background: #dddddd; font-family: sans-serif; font-size: 15px; line-height: 15px; color: #555555; margin: auto;" class="fluid g-img">
                    </td>
                </tr>
                <!-- Hero Image, Flush : END -->

                <!-- 1 Column Text + Button : BEGIN -->
                <tr>
                    <td style="background-color: #9BB831;">
                        <table role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%">
						<tr>
						<img src="https://image.ibb.co/jJjOcz/newsletter2.jpg" width="680" height="" alt="alt_text" border="0" style="width: 100%; max-width: 680px; height: auto; background: #dddddd; font-family: sans-serif; font-size: 15px; line-height: 15px; color: #555555; margin: auto;" class="fluid g-img">
						</tr>
						
                            <tr>
                                <td style="padding: 20px; font-family: sans-serif; font-size: 15px; line-height: 20px; color: #ffffff;">
                                    
                                    <p style="margin: 0 0 10px;"><span style="font-size:17px"><b>Hello and welcome to the 1st edition of the Employee Engagement Newsletter!</b></span> <br><br>I know what you're thinking, another long sales orientated email to read ... <b>But wait!</b><br><br> This newsletter has been designed entirely targeted towards Managed Services, Hurahh!<br><br> Going forward, this will be a monthly newsletter which includes both social and strategic updates for all things "Managed Services". Including such favourites as:</p>
                                    <ul style="padding: 0; margin: 0; list-style-type: disc;">
										<li style="margin:0 0 10px 30px;" class="list-item-first">Team Updates</li>
										<li style="margin:0 0 10px 30px;">Movers and Shakers</li>
										<li style="margin:0 0 10px 30px;">"Get to know" section</li>
										<li style="margin:0 0 10px 30px;">Upcoming Birthdays</li>
										<li style="margin: 0 0 0 30px;" class="list-item-last">Above and Beyond award winnners</li>
									</ul>
									                                    

                                </td>
								<tr>
								<td style="background-color: #8ca52e;padding: 0px 30px 10px 30px; font-family: sans-serif; font-size: 15px; line-height: 15px; color: #ffffff;">
								<p style="margin: 0 0 10px;"><br>Now please contain your excitement and strap in, as we take you on a <a style="color:white;text-decoration:underline" href="https://gph.is/2AmePHo">mind-blowing</a> Safari around Managed Services... in email format.</p>
								
								</td>
								</tr>
                            </tr>
                            

                        </table>
                    </td>
                </tr>
                <!-- 1 Column Text + Button : END -->

                <!-- Background Image with Text : BEGIN -->
                <tr>
                    <td>
					&nbsp;&nbsp;
                    </td>
                </tr>
                <!-- Background Image with Text : END -->
				
				<!-- 1 Column Text + Button : BEGIN -->
																												<!-- ABOVE AND BEYOND -->
			
                <tr>
                    <td style="background-color: #FABA54;">
                        <table role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%">
                            <tr>
                                <td style="padding: 20px 20px 0 20px; font-family: sans-serif; font-size: 15px; line-height: 20px; color: #ffffff;">
                                    <h1 style="margin: 0 0 0px; font-size: 25px; line-height: 30px; color: #ffffff; font-weight: normal;">Above and Beyond Award!<img src="https://image.ibb.co/j3SBUe/award.png" width="100"  align="left" style="padding:0px 20px 20px 0"></h1> 
                                    <p style="margin: 0 0 10px;">This Month the Above and Beyond award goes tooooooo ....</p>
                                    
                                </td>
                            </tr>
							
							
                            

                        </table>
                    </td>
                </tr>
                <!-- 1 Column Text + Button : END -->
				
				
				
				 <!-- Thumbnail Right, Text Left : BEGIN -->
                <tr>
                    <!-- dir=rtl is where the magic happens. This can be changed to dir=ltr to swap the alignment on wide while maintaining stack order on narrow. -->
                    <td dir="rtl" height="100%" valign="top" width="100%" style="padding: 10px 0; background-color: #ffffff;">
                        <!--[if mso]>
                        <table align="center" role="presentation" border="0" cellspacing="0" cellpadding="0" width="660" style="width: 660px;">
                        <tr>
                        <td valign="top" width="660">
                        <![endif]-->
                        <table align="center" role="presentation" border="0" cellpadding="0" cellspacing="0" width="100%" style="max-width:660px;">
                            <tr>
                                <td align="center" valign="top" style="font-size:0; padding: 10px 0;">
                                    <!--[if mso]>
                                    <table role="presentation" border="0" cellspacing="0" cellpadding="0" width="660" style="width: 660px;">
                                    <tr>
                                    <td valign="top" width="220" style="width: 220px;">
                                    <![endif]-->
                                    <div style="display:inline-block; margin: 0 -2px; max-width: 200px; min-width:160px; vertical-align:top; width:100%;" class="stack-column">
                                        <table role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%">
                                            <tr>
                                                <td dir="ltr">
												
												<!--[if (gte mso 9)|(IE)]>
<v:oval xmlns:v="urn:schemas-microsoft-com:vml" xmlns:w="urn:schemas-microsoft-com:office:word" style="height:200px;width:200px;" fill="t" stroke="f">
    <v:fill type="frame" src="https://image.ibb.co/fqWuHz/WayA.jpg" style="height:200px;width:200px;"/></v:oval>
<![endif]-->
<!--[if !IE]><!-->
												<table class="hide" border="0" cellpadding="0" cellspacing="0" role="presentation" width="100" style="width: 100px; mso-hide: all;">
												<tr>
												<div style="width: 100%; max-width: 200px; height: auto; background: #dddddd; font-family: sans-serif; font-size: 15px; line-height: 20px; color: #555555;-webkit-border-radius: 50%; -moz-border-radius: 50%; border-radius: 50%; overflow:hidden!important; mso-hide: all;"><img src="https://image.ibb.co/fqWuHz/WayA.jpg" border="0" width="200" height="200" alt="" style="display: block;" /></div>
                                                 </tr>  
												 </table>
												 <!--<![endif]-->
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <!--[if mso]>
                                    </td>
                                    <td valign="top" width="440" style="width: 440px;">
                                    <![endif]-->
                                    <div style="display:inline-block; margin: 0 -2px; max-width:66.66%; min-width:320px; vertical-align:top;" class="stack-column">
                                        <table role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%">
                                            <tr>
                                                <td dir="ltr" style="font-family: sans-serif; font-size: 15px; line-height: 20px; color: #555555; padding: 0px 0px 0; text-align: left;" class="center-on-narrow">
                                                    <h2 style=" margin: 0 0 10px 0; font-family: sans-serif; font-size: 18px; line-height: 22px; color: #333333; font-weight: bold;">Congratulations to <span style="font-weight:1000;">Alex Way</span></h2>
                                                    <p style="margin: 0 0 10px 0;">9 people voted for Alex, some of their comments are below:</p>
                                                    <ul style="padding: 0; margin: 0; list-style-type: disc;">
										<li style="margin:0 0 10px 30px;" class="list-item-first">What an awesome dude - Michael K</li>
										<li style="margin:0 0 10px 30px;">Knows his S#*t - Richard G</li>
										<li style="margin: 0 0 0 30px;" class="list-item-last">Always looking to improve things - Deborah N</li>
									</ul>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <!--[if mso]>
                                    </td>
                                    </tr>
                                    </table>
                                    <![endif]-->
                                </td>
                            </tr>
							
							
                        </table>
                        <!--[if mso]>
                        </td>
                        </tr>
                        </table>
                        <![endif]-->
                    </td>
                </tr>
				
				<tr>
                                <td style="padding: 20px  20px 20px 20px;background-color: #DEA53E;">
                                    <!-- Button : BEGIN -->
                                    <table align="center" role="presentation" cellspacing="0" cellpadding="0" border="0" style="margin: auto;">
                                        <tr>
										
										
										
									
                                            <td class="button-td button-td-primary" style="border-radius: 4px; background: #ffffff;">
											     <a class="button-a button-a-primary" href="https://forms.office.com/Pages/ResponsePage.aspx?id=8THUwwI-YkyoJXnNj54gU2U4HhElJrlIm0riMdQ20whUOEtCSzVOSVZYMjFaQ1NVS0pSUTQ5V0xBNy4u" style="background: #ffffff; border: 0px solid #000000; font-family: sans-serif; font-size: 15px; line-height: 15px; text-decoration: none; padding: 13px 17px; color: #8F5DA4; display: block; border-radius: 4px;">Are Ya Gunna Vote Doe?<a>
											</td>
                                        </tr>
                                    </table>
                                    <!-- Button : END -->
                                </td>
                            </tr>
                <!-- Thumbnail Right, Text Left : END -->
				
				  <!-- Background Image with Text : BEGIN -->
                <tr>
                    <td>
					&nbsp;&nbsp;
                    </td>
                </tr>
                <!-- Background Image with Text : END -->
				
				<!-- 3 Even Columns : BEGIN -->
                <tr>
                    <td height="100%" valign="top" width="100%" style="padding: 0px 0 10px 0; background-color: #097db5;">
                        <!--[if mso]>
                        <table align="center" role="presentation" border="0" cellspacing="0" cellpadding="0" width="660">
                        <tr>
                        <td valign="top" width="660">
                        <![endif]-->
						
						<table style="background-color: #0A8FCF; " role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%">
                            <tr>
                                <td style="padding: 20px; font-family: sans-serif; font-size: 15px; line-height: 20px; color: #ffffff;">
                                     <h1 style="text-align:center;font-family:sans-serif;margin: 0 0 0px; font-size: 25px; line-height: 30px; color: #ffffff; font-weight: 700;">Welcome Aboard!<img src="https://image.ibb.co/iK3Z79/female_technologist.png" width="50"  align="left"><img src="https://image.ibb.co/nHU7S9/male_technologist.png" width="50"  align="right"></h1>
									
									
                                 
									
									
                                    <p style="margin: 0 0 10px;text-align:center">&nbsp;&nbsp;Please give a warm welcome to our latest <span style="text-decoration: line-through">victims</span> new starters!</p>
                                   
                                </td>
                            </tr>
                            

                        </table>
						
                        <table align="center" role="presentation" border="0" cellpadding="0" cellspacing="0" width="100%" style="padding:10px;max-width:660px;">
                            <tr>
							
							
							
                                <td align="center" valign="top" style="font-size:0;">
                                    <!--[if mso]>
                                    <table role="presentation" border="0" cellspacing="0" cellpadding="0" width="660">
                                    <tr>
                                    <td valign="top" width="220">
                                    <![endif]-->
                                    <div style="display:inline-block; margin: 0 -2px; max-width:33.33%; min-width:220px; vertical-align:top; width:100%;" class="stack-column">
									
                                        <table role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%">
										
										
                                            <tr>
											
                                                <td style="padding: 10px 10px;">
												
                                                    <table role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%" style="font-size: 14px;text-align: left;">
                                                        <tr>
                                                            <td>
															
                                                                <img src="https://image.ibb.co/mpxOSz/Cockerton_C200px.jpg" width="200" height="" border="0" alt="alt_text" class="center-on-narrow" style="width: 100%; max-width: 200px; height: auto; background: #dddddd; font-family: sans-serif; font-size: 15px; line-height: 20px; color: #555555;">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-family: sans-serif; font-size: 15px; line-height: 20px; color: #ffffff; padding-top: 10px;" class="stack-column-center">
																<h2>Chris Cockerton</h2>
                                                                <p style="margin: 0;">Service Assurance Apprentice</p>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <!--[if mso]>
                                    </td>
                                    <td valign="top" width="220">
                                    <![endif]-->
                                    <div style="display:inline-block; margin: 0 -2px; max-width:33.33%; min-width:220px; vertical-align:top; width:100%;" class="stack-column">
                                        <table role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%">
                                            <tr>
                                                <td style="padding: 10px 10px;">
                                                    <table role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%" style="font-size: 14px;text-align: left;">
                                                        <tr>
                                                            <td>
                                                                <img src="https://image.ibb.co/gvyV7z/Oxley_L200px.jpg" width="200" height="" border="0" alt="alt_text" class="center-on-narrow" style="width: 100%; max-width: 200px; height: auto; background: #dddddd; font-family: sans-serif; font-size: 15px; line-height: 20px; color: #555555;">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-family: sans-serif; font-size: 15px; line-height: 20px; color: #ffffff; padding-top: 10px;" class="stack-column-center">
                                                                <h2>Luke Oxley</h2>
                                                                <p style="margin: 0;">Check Point Security Engineer</p>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <!--[if mso]>
                                    </td>
                                    <td valign="top" width="220">
                                    <![endif]-->
                                    <div style="display:inline-block; margin: 0 -2px; max-width:33.33%; min-width:220px; vertical-align:top; width:100%;" class="stack-column">
                                        <table role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%">
                                            <tr>
                                                <td style="padding: 10px 10px;">
                                                    <table role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%" style="font-size: 14px;text-align: left;">
                                                        <tr>
                                                            <td>
                                                                <img src="https://image.ibb.co/bRSOSz/Sheikh_A200px.jpg" width="200" height="" border="0" alt="alt_text" class="center-on-narrow" style="width: 100%; max-width: 200px; height: auto; background: #dddddd; font-family: sans-serif; font-size: 15px; line-height: 20px; color: #555555;">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-family: sans-serif; font-size: 15px; line-height: 20px; color: #ffffff; padding-top: 10px;" class="stack-column-center">
                                                                <h2>Abas Sheikh</h2>
                                                                <p style="margin: 0;">Infrastructure Support Engineer</p>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <!--[if mso]>
                                    </td>
                                    </tr>
                                    </table>
                                    <![endif]-->
                                </td>
                            </tr>
                        </table>
                        <!--[if mso]>
                        </td>
                        </tr>
                        </table>
                        <![endif]-->
                    </td>
                </tr>
                <!-- 3 Even Columns : END -->
				
				<!-- 3 Even Columns : BEGIN -->
                <tr>
                    <td height="100%" valign="top" width="100%" style="padding: 0px 0 10px 0; background-color: #097db5;">
                        <!--[if mso]>
                        <table align="center" role="presentation" border="0" cellspacing="0" cellpadding="0" width="660">
                        <tr>
                        <td valign="top" width="660">
                        <![endif]-->
						
						<table style="background-color: #0A8FCF; " role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%">
                            <tr>
                                <td style="padding: 20px; font-family: sans-serif; font-size: 15px; line-height: 20px; color: #ffffff;">
                                     <h1 style="text-align:center;font-family:sans-serif;margin: 0 0 0px; font-size: 25px; line-height: 30px; color: #ffffff; font-weight: 700;">Movers and Shakers<img src="https://image.ibb.co/gwnFB9/dancerfemale.png" width="50"  align="left"><img src="https://image.ibb.co/kmVrjU/man_dancing.png" width="50"  align="right"></h1>
									
									
                                 
									
									
                                    
                                   
                                </td>
                            </tr>
                            

                        </table>
						
                        <table align="center" role="presentation" border="0" cellpadding="0" cellspacing="0" width="100%" style="padding:10px;max-width:660px;">
                            <tr>
							
							
							
                                <td align="center" valign="top" style="font-size:0;">
                                    <!--[if mso]>
                                    <table role="presentation" border="0" cellspacing="0" cellpadding="0" width="660">
                                    <tr>
                                    <td valign="top" width="150">
                                    <![endif]-->
                                    <div style="display:inline-block; margin: 0 -2px; max-width:25%; min-width:150px; vertical-align:top; width:100%;" class="stack-column">
									
                                        <table role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%">
										
										
                                            <tr>
											
                                                <td style="padding: 10px 10px;">
												
                                                    <table role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%" style="font-size: 14px;text-align: left;">
                                                        <tr>
                                                            <td>
															
                                                                <img src="https://image.ibb.co/da4n8p/Thackeray_M200px.jpg" width="145" height="" border="0" alt="alt_text" class="center-on-narrow" style="width: 100%; max-width: 200px; height: auto; background: #dddddd; font-family: sans-serif; font-size: 15px; line-height: 20px; color: #555555;">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-family: sans-serif; font-size: 15px; line-height: 20px; color: #ffffff; padding-top: 10px;" class="stack-column-center">
																<h2>Michael Thackeray</h2>
                                                                <p style="margin: 0;">Michael has been promoted to the <b>Service Desk Team Leader</b></p>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <!--[if mso]>
                                    </td>
                                    <td valign="top" width="150">
                                    <![endif]-->
                                    <div style="display:inline-block; margin: 0 -2px;max-width:25%; min-width:150px; vertical-align:top; width:100%;" class="stack-column">
                                        <table role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%">
                                            <tr>
                                                <td style="padding: 10px 10px;">
                                                    <table role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%" style="font-size: 14px;text-align: left;">
                                                        <tr>
                                                            <td>
                                                                <img src="https://image.ibb.co/bJTuM9/grousen.png" width="145" height="" border="0" alt="alt_text" class="center-on-narrow" style="width: 100%; max-width: 200px; height: auto; background: #dddddd; font-family: sans-serif; font-size: 15px; line-height: 20px; color: #555555;">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-family: sans-serif; font-size: 15px; line-height: 20px; color: #ffffff; padding-top: 10px;" class="stack-column-center">
                                                                <h2>Nikki Grouse</h2>
                                                                <p style="margin: 0;">Nikki has been promoted to <b>Support Team Leader</b></p>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <!--[if mso]>
                                    </td>
                                    <td valign="top" width="150">
                                    <![endif]-->
                                    <div style="display:inline-block; margin: 0 -2px; max-width:25%; min-width:150px; vertical-align:top; width:100%;" class="stack-column">
                                        <table role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%">
                                            <tr>
                                                <td style="padding: 10px 10px;">
                                                    <table role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%" style="font-size: 14px;text-align: left;">
                                                        <tr>
                                                            <td>
                                                                <img src="https://image.ibb.co/n0f8g9/townsendg.png" width="145" height="" border="0" alt="alt_text" class="center-on-narrow" style="width: 100%; max-width: 200px; height: auto; background: #dddddd; font-family: sans-serif; font-size: 15px; line-height: 20px; color: #555555;">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-family: sans-serif; font-size: 15px; line-height: 20px; color: #ffffff; padding-top: 10px;" class="stack-column-center">
                                                                <h2>Giles Townsend</h2>
                                                                <p style="margin: 0;">Giles hs been promoted to <b>Services Integration Team Leader</b></p>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
									 <!--[if mso]>
                                    </td>
                                    <td valign="top" width="150">
                                    <![endif]-->
                                    <div style="display:inline-block; margin: 0 -2px; max-width:25%; min-width:150px; vertical-align:top; width:100%;" class="stack-column">
                                        <table role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%">
                                            <tr>
                                                <td style="padding: 10px 10px;">
                                                    <table role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%" style="font-size: 14px;text-align: left;">
                                                        <tr>
                                                            <td>
                                                                <img src="https://image.ibb.co/cXHbZU/Mason_Am200px.jpg" width="145" height="" border="0" alt="alt_text" class="center-on-narrow" style="width: 100%; max-width: 200px; height: auto; background: #dddddd; font-family: sans-serif; font-size: 15px; line-height: 20px; color: #555555;">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-family: sans-serif; font-size: 15px; line-height: 20px; color: #ffffff; padding-top: 10px;" class="stack-column-center">
                                                                <h2>Amanda Mason</h2>
                                                                <p style="margin: 0;">Amanda is moving out of the OC to start in the Services Portfolio team as <b>Services Portfolio Programme Manager</b></p>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <!--[if mso]>
                                    </td>
                                    </tr>
                                    </table>
                                    <![endif]-->
                                </td>
                            </tr>
                        </table>
                        <!--[if mso]>
                        </td>
                        </tr>
                        </table>
                        <![endif]-->
                    </td>
                </tr>
                <!-- 3 Even Columns : END -->
				
				  <!-- Background Image with Text : BEGIN -->
                <tr>
                    <td>
					&nbsp;&nbsp;
                    </td>
                </tr>
                <!-- Background Image with Text : END -->

               <!-- 1 Column Text + Button : BEGIN -->
                <tr>
                    <td style="background-color: #CD519C;">
                        <table role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%">
                            <tr>
                                <td style="padding: 20px; font-family: sans-serif; font-size: 15px; line-height: 20px; color: #ffffff;">
                                    <h1 style="margin: 0 0 0px; font-size: 25px; line-height: 30px; color: #ffffff; font-weight: normal;">&nbsp;Who's Bringing in Cake?<img style="padding-right:10px" src="https://image.ibb.co/h1RoSz/birthday.png" width="50"  align="left"></h1>
									
									
                                    <p style="margin: 0 0 10px;">&nbsp;&nbsp;Wishing a very <b>Happy Birthday</b> to all of the following big girls and boys for the coming month:</p>
                                    <ul style="padding: 0; margin: 0; list-style-type: disc;">
										<li style="margin:30px 0 0px 30px;" class="list-item-first">Adam Goodwin</li>
										<li style="margin:0 0 0px 30px;">Daniel Edwards</li>
										<li style="margin: 0 0 0 30px;" class="list-item-last">Giles Townsend</li>
										<li style="margin: 0 0 0 30px;" class="list-item-last">Konrad Bobko</li>
										<li style="margin: 0 0 0 30px;" class="list-item-last">Robert Allen</li>
										<li style="margin: 0 0 0 30px;" class="list-item-last">Tom Whitton</li>
										
										
										
									</ul>
                                </td>
                            </tr>
                            

                        </table>
                    </td>
                </tr>
                <!-- 1 Column Text + Button : END -->
				
				  <!-- Background Image with Text : BEGIN -->
                <tr>
                    <td>
					&nbsp;&nbsp;
                    </td>
                </tr>
                <!-- Background Image with Text : END -->
				
				
				
				  <!-- Background Image with Text : BEGIN -->
                <tr>
                    <td>
					&nbsp;&nbsp;
                    </td>
                </tr>
                <!-- Background Image with Text : END -->
				
				<!-- Thumbnail Left, Text Right : BEGIN -->
                <tr>
                    <!-- dir=ltr is where the magic happens. This can be changed to dir=rtl to swap the alignment on wide while maintaining stack order on narrow. -->
                    <td dir="ltr" height="100%" valign="top" width="100%" style="padding: 0px 0; background-color: #DEA53E;">
                        <!--[if mso]>
                        <table align="center" role="presentation" border="0" cellspacing="0" cellpadding="0" width="660" style="width: 660px;">
                        <tr>
                        <td valign="top" width="650" style="width: 650px;">
                        <![endif]-->
						
						 <table role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%" style="background-color:#FABA54">
                            <tr>
                                <td style="padding: 30px 30px 10px 30px; font-family: sans-serif; font-size: 15px; line-height: 20px; color: #ffffff;">
                                     <h1 style="font-family:sans-serif;margin: 0 0 0px; font-size: 25px; line-height: 30px; color: #ffffff; font-weight: normal;">&nbsp;You Got the Love <img style="padding-right:10px" src="https://image.ibb.co/fLfKje/heart.png" width="50"  align="left"></h1>
									
									
                                 
									
									
                                    <p style="margin: 0 0 10px;">&nbsp;&nbsp;Congratulations to the following big cheeses for recieving that sweet sweet love:</p>
                                   
                                </td>
                            </tr>
                            

                        </table>
                        <table align="center" role="presentation" border="0" cellpadding="0" cellspacing="0" width="100%" style="padding:10px 0 0 0;background-color:#DEA53E;max-width:660px;">
						<tr>
						
						
						<td>
						
						
						
						
						</td></tr>
                            <tr>
                                <td align="center" valign="top" style="font-size:0; padding: 20px 0 0 0;">
                                    <!--[if mso]>
                                    <table role="presentation" border="0" cellspacing="0" cellpadding="0" width="660" style="width: 660px;">
                                    <tr>
                                    <td valign="top" width="220" style="width: 220px;">
                                    <![endif]-->
                                    <div style="display:inline-block; margin: 0 -2px; max-width: 100px; min-width:100px; vertical-align:top; width:100%;" class="stack-column">
                                        <table role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%">
                                            <tr>
                                                <td dir="ltr" style="padding: 0 0px 0px 10px;">
                                                    <img src="https://image.ibb.co/mm2FPe/KirkhamM.jpg" width="100" height="" border="0" alt="alt_text" class="center-on-narrow" style="width: 100%; max-width: 100px; height: auto; background: #dddddd; font-family: sans-serif; font-size: 15px; line-height: 15px; color: #555555;">
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <!--[if mso]>
                                    </td>
                                    <td valign="top" width="440" style="width: 440px;">
                                    <![endif]-->
                                    <div style="display:inline-block; margin: 0 -2px; max-width:66.66%; min-width:320px; vertical-align:top;" class="stack-column">
                                        <table role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%">
                                            <tr>
                                                <td dir="ltr" style="font-family: sans-serif; font-size: 15px; line-height: 20px; color: #ffffff; padding: 0px 0px 0px 10px; text-align: left;" class="center-on-narrow">
                                                    <h2 style="margin: 0 0 10px; font-size: 25px; line-height: 30px; color: #ffffff; font-weight: normal;">Michael Kirkham</h2> 
                                                    <p style="margin: 0 0 10px 0;font-family: sans-serif;">Staying back till 7 on Tuesday on a conference call with a client and 3rd party resolving a client’s outage. Quality work mate!</p>
                                                   
                                                </td>
												
												
                                            </tr>
											
											
											
                                        </table>
										
										
                                    </div>
                                    <!--[if mso]>
                                    </td>
                                    </tr>
                                    </table>
                                    <![endif]-->
                                </td>
                            </tr>
							
							<tr>
                                <td align="center" valign="top" style="font-size:0; padding: 10px 0;">
                                    <!--[if mso]>
                                    <table role="presentation" border="0" cellspacing="0" cellpadding="0" width="660" style="width: 660px;">
                                    <tr>
                                    <td valign="top" width="220" style="width: 220px;">
                                    <![endif]-->
                                    <div style="display:inline-block; margin: 0 -2px; max-width: 100px; min-width:100px; vertical-align:top; width:100%;" class="stack-column">
                                        <table role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%">
                                            <tr>
                                                <td dir="ltr" style="padding: 0 0px 0px 10px;">
                                                    <img src="https://image.ibb.co/ncJEje/lyndley.jpg" width="100" height="" border="0" alt="alt_text" class="center-on-narrow" style="width: 100%; max-width: 100px; height: auto; background: #dddddd; font-family: sans-serif; font-size: 15px; line-height: 15px; color: #555555;">
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <!--[if mso]>
                                    </td>
                                    <td valign="top" width="440" style="width: 440px;">
                                    <![endif]-->
                                    <div style="display:inline-block; margin: 0 -2px; max-width:66.66%; min-width:320px; vertical-align:top;" class="stack-column">
                                        <table role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%">
                                            <tr>
                                                <td dir="ltr" style="font-family: sans-serif; font-size: 15px; line-height: 20px; color: #ffffff; padding: 0px 0px 0px 10px; text-align: left;" class="center-on-narrow">
                                                    <h2 style="margin: 0 0 10px; font-size: 25px; line-height: 30px; color: #ffffff; font-weight: normal;">Peter Lyndley</h2> 
                                                    <p style="margin: 0 0 10px 0;font-family: sans-serif;">I’m *delighted* with the service we’ve had to date; Peter Lyndley in particular has been fantastic; he let me know he’d picked up on something odd while he was doing something else, so we’ve enjoyed service well beyond SLA</p>
                                                   
                                                </td>
												
												
                                            </tr>
											
											
											
                                        </table>
										
										
                                    </div>
                                    <!--[if mso]>
                                    </td>
                                    </tr>
                                    </table>
                                    <![endif]-->
                                </td>
                            </tr>
                        </table>
                        <!--[if mso]>
                        </td>
                        </tr>
                        </table>
                        <![endif]-->
                    </td>
                </tr>
                <!-- Thumbnail Left, Text Right : END -->


                <!-- Clear Spacer : BEGIN -->
                <tr>
                    <td aria-hidden="true" height="30" style="font-size: 0px; line-height: 0px;">
                        &nbsp;
                    </td>
                </tr>
                <!-- Clear Spacer : END -->
				
				  <!-- 1 Column Text + Button : BEGIN -->
                <tr>
                    <td style="background-color: #0A8FCF;">
                        <table role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%">
                            <tr>
                                <td style="padding: 20px; font-family: sans-serif; font-size: 15px; line-height: 20px; color: #ffffff;">
                                    <h1 style="margin: 0 0 0px; font-size: 25px; line-height: 30px; color: #ffffff; font-weight: normal;">&nbsp;Reminders<img style="padding-right:10px" src="https://image.ibb.co/eYyZqU/calendar.png" width="50"  align="left"></h1>
									
									
                                    <p style="margin: 0 0 10px;">&nbsp;&nbsp;If you haven't already, take a moment and have a gander at the following: </p>
                                    <ul style="padding: 10px 0 0 0; margin: 0; list-style-type: disc;">
										<li style="margin:0 0 10px 30px;" class="list-item-first"><b>Non-Sales Employee of the Year & Non-Sales Team of the Year 2018</b> - <a href="http://topcat.softcat.com/sites/departments/Marketing/surveys/Lists/NonSales_EOTY_and_NonSales_TOTY_2018/overview.aspx">Vote here</a></li>
										<li style="margin:0 0 10px 30px;"><b>John's getting wet</b> - If you havn't already, consider sponsoring our very own JBP - <a href="https://www.justgiving.com/fundraising/john-binnington-pearce ">Sponsor here</a> </li>
										
									</ul>
                                </td>
                            </tr>
                            

                        </table>
                    </td>
                </tr>
                <!-- 1 Column Text + Button : END -->
				
				 <!-- Clear Spacer : BEGIN -->
                <tr>
                    <td aria-hidden="true" height="30" style="font-size: 0px; line-height: 0px;">
                        &nbsp;
                    </td>
                </tr>
                <!-- Clear Spacer : END -->

                <!-- 1 Column Text : BEGIN -->
                
                                <td style="padding: 20px  20px 20px 20px;background-color: #CD519C;">
                                    <!-- Button : BEGIN -->
                                    <table align="center" role="presentation" cellspacing="0" cellpadding="0" border="0" style="margin: auto;">
                                        <tr>
										
										<td style="padding-right:10px;font-family: sans-serif; font-size: 15px; line-height: 20px; color: #ffffff;">
										Is there something you would like to see in the next Newsletter? 
										</td>
										
									<td style="padding-right:20px;font-family: sans-serif; font-size: 15px; line-height: 20px; color: #ffffff;">
									<img src="https://image.ibb.co/f2L4hz/shrug.png" width="35"  align="left">
									</td>
									
                                            <td class="button-td button-td-primary" style="border-radius: 4px; background: #ffffff;">
											     <a class="button-a button-a-primary" href="mailto:employeeengagementteam@softcat.com?Subject=Newsletter%20Feedback" style="background: #ffffff; border: 0px solid #000000; font-family: sans-serif; font-size: 15px; line-height: 15px; text-decoration: none; padding: 13px 17px; color: #8F5DA4; display: block; border-radius: 4px;">Have Your Say!<a>
											</td>
                                        </tr>
                                    </table>
                                    <!-- Button : END -->
                                </td>
                            </tr>
                <!-- 1 Column Text : END -->

            </table>
            <!-- Email Body : END -->

            <!-- Email Footer : BEGIN -->
            <table role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%" style="max-width: 680px;">
                <tr>
                    <td style="padding: 20px; font-family: sans-serif; font-size: 12px; line-height: 15px; text-align: center; color: #888888;">
                       
                    </td>
                </tr>
            </table>
            <!-- Email Footer : END -->

            <!--[if mso]>
            </td>
            </tr>
            </table>
            <![endif]-->
        </div>

        

    <!--[if mso | IE]>
    </td>
    </tr>
    </table>
    <![endif]-->
    </center>
</body>
</html>"
