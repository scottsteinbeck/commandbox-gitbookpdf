<cfoutput> 
	<div class="api-method-response-example">
		<div class="status-code status-code-#left(node.data.httpCode,1)#">
			<span class="status-bullet">&##9679;</span>
			#node.data.httpCode#: #BookService.getHTTPCodeDesc(node.data.httpCode)#
		</div>
		<div>#innerContent#</div>
	</div> 
</cfoutput>