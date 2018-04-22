require "selectAction/version"

module SelectAction
	def self.getOptionHtml(pkId, primarySel, secondarySel, selectDetail)	
		@PSHtml = ''
		@brands.find_each do |priItem|
			@PSHtml += '<option value="' + priItem.id.to_s
			if priItem.id.to_s == pkId
				@PSHtml += '" selected>'+ priItem.name
			else
				@PSHtml += '">'+ priItem.selectDetail["prDisp"]
			end				
			@PSHtml += '</option>'
		end
		@SSHtml = '<option value="-1">Select</option>'
		secondarySel.find_each do |secItem|
			@SSHtml += '<option value="' + secItem.id.to_s
			@SSHtml += '">'+ secItem.selectDetail["secDisp"]
			@SSHtml += '</option>'
		end
	end
end