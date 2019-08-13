<cfoutput>
	<cfif node.data.keyExists( 'url' ) >
		<cfset embedData = bookService.resolveURLEmbedData( node.data.url )>
		<div class="embed">
			<table colspacing=0 class="no-border">
				<tr>
					<td>
						<div class="embed-title">
							#encodeForHTML( embedData.pageTitle )#
						</div>
						<cfif embedData.pageDescription is not "">
							<div class="embed-desc">
								#encodeForHTML( embedData.pageDescription )#
							</div>
						</cfif>
						<span class="link"><a href="#embedData.embedURL#" target="_blank">#embedData.embdedHost#</a></span>
					</td>
					<cfif len( embedData.pageIcon ) >
					<td width="40">
							<!--- TODO: Cache this locally as an asset --->
							<img width="40" src="#embedData.pageIcon#" />
						</td>
					</cfif>
				</tr>
			</table>
		</div>
	<cfelse>
		Unknown embed type!<br>
		node.data: #serializeJSON( node.data )#
	</cfif>
</cfoutput>