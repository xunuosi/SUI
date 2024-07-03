local Module = SUI:NewModule("Chat.Quickjoin");

function Module:OnEnable()
    local db = SUI.db.profile.chat.quickjoin
    if (FriendsMicroButton == nil) then
        return
    end
    if (db) then
        FriendsMicroButton:Show()
        FriendsMicroButton.Show = function()
        end
    else
        FriendsMicroButton:Hide()
        FriendsMicroButton.Show = function()
        end
    end
end
