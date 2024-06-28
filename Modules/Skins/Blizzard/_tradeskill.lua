local Module = SUI:NewModule("Skins.TradeSkill");

function Module:OnEnable()
    if (SUI:Color()) then
        local f = CreateFrame("Frame")
        f:RegisterEvent("ADDON_LOADED")
        f:SetScript("OnEvent", function(self, event, name)
            if name == "Blizzard_TradeSkillUI" then
                SUI:Skin(TradeSkillFrame)
                SUI:Skin(TradeSkillExpandButtonFrame)
                SUI:Skin(TradeSkillSubClassDropDown)
                SUI:Skin(TradeSkillInvSlotDropDown)
                SUI:Skin(TradeSkillCreateAllButton)
                SUI:Skin(TradeSkillCreateButton)
                SUI:Skin(TradeSkillCancelButton)
                SUI:Skin(TradeSkillListScrollFrame)
                SUI:Skin(TradeSkillFrameEditBox)
                SUI:Skin(TradeSkillInputBox)
            end
        end)
    end
end
