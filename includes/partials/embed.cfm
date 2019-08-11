<cfoutput>
	<cfif node.data.keyExists( 'url' ) >
		<cfset embedData = bookService.resolveURLEmbedData( node.data.url )>
		<div class="embed">
			<div class="embed-title">
				#encodeForHTML( embedData.pageTitle )#
			</div>
			<div class="embed-desc">
				#encodeForHTML( embedData.pageDescription )#
			</div>
			<cfif len( embedData.pageIcon ) >
				<!--- TODO: Cache this locally as an asset --->
				<img style="max-height:100%" src="#embedData.pageIcon#" />
			</cfif>
			<span class="link"><a href="#embedData.embedURL#" target="_blank">#embedData.embdedHost#</a></span>
		</div>
	<cfelse>
		Unknown embed type!<br>
		node.data: #serializeJSON( node.data )#
	</cfif>
</cfoutput>