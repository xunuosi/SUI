local Module = SUI:NewModule("Skins.SpellBook");

function Module:OnEnable()
    if (SUI:Color()) then
        SUI:Skin(SpellBookFrame)
        SUI:Skin(SpellBookFrameTabButton1)
        SUI:Skin(SpellBookFrameTabButton2)

        for i = 1, MAX_SPELLS do
            local subText = _G["SpellButton".. i .. "SubSpellName"]
            if (subText) then
                subText:SetTextColor(.8, .8, .8)
            end
        end

        for i = 1, GetNumSpellTabs() do
            SUI:Skin(_G["SpellBookSkillLineTab" .. i])
        end

        SpellBookPageText:SetTextColor(.8, .8, .8)

        -- PrimaryProfession1Missing:GetTextColor()
        if (PrimaryProfession1 ~= nil) then
            PrimaryProfession1.missingText:SetTextColor(.8, .8, .8)
        end
        if (PrimaryProfession2 ~= nil) then
            PrimaryProfession2.missingText:SetTextColor(.8, .8, .8)
        end

        if (SecondaryProfession1Missing == nil) then
            return
        end
        SecondaryProfession1Missing:SetTextColor(.85, .7, .6)
        SecondaryProfession2Missing:SetTextColor(.85, .7, .6)
        SecondaryProfession3Missing:SetTextColor(.85, .7, .6)
        SecondaryProfession4Missing:SetTextColor(.85, .7, .6)

        SecondaryProfession1.missingText:SetTextColor(.8, .8, .8)
        SecondaryProfession2.missingText:SetTextColor(.8, .8, .8)
        SecondaryProfession3.missingText:SetTextColor(.8, .8, .8)
        SecondaryProfession4.missingText:SetTextColor(.8, .8, .8)
    end
end
