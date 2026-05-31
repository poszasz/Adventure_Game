local player = {
    health = 10,
    lvl = 1,
    gold = 50,
    strength = 5,
    quests = {}
}

local HealerAbility = {
    healAllPlayer = 3,
    healOnePlayer = 5,
    healYourself = 5
}

local MageAbility = {
    fireBall = 5,
    fireWall = 2
}

local Assassin = {
    dagger = 3,
    fist = 1
}

local function clearScreen()
    os.execute("cls")
end

function Prologue()
    clearScreen()
    print()
    print("You were an E-rank hunter. The weakest of the weak.")
    print()
    print("During a dungeon break, your entire party was wiped out.")
    print("You survived by playing dead. But something else found you.")
    print()
    print("A hidden quest window appeared.")
    print("You accepted it.")
    print("Now the system calls you PLAYER.")
    print("And the gates... they open only for you.")
    print()
    print("===========================================")
    print()
    print("     Type 'start' to begin the game...")
    print()
    
    while true do
        io.write("> ")
        local answer = io.read()
        
        if answer == "start" then
            print()
            print("You wake up in the Hunter's District.")
            print("The system greets you: 'Welcome, Player.'")
            print()
            break
        else
            print("Type 'start' to begin!")
        end
    end
end

function City()
    while true do
        clearScreen()
        print()
        print()
        print("===========================================")
        print("              HUNTER'S DISTRICT            ")
        print("===========================================")
        print()
        print("You are in the middle of the Hunter's District.")
        print("Guild buildings tower above you. Adventurers rush past.")
        print("A holographic screen floats before your eyes:")
        print()
        print(" Health: " .. player.health)
        print(" Level: " .. player.lvl)
        print(" Gold: " .. player.gold)
        print()
        print("What do you want to do?")
        print()
        print(" 1 - Go to the Hunter's Guild")
        print(" 2 - Visit the market")
        print(" 3 - Check your system status")
        print(" 4 - Exit game")
        print()
        
        io.write("Choose (1/2/3/4): ")
        local choice = io.read()
        
        if choice == "1" then
            GuildHall()
            
        elseif choice == "2" then
            Market()
            
        elseif choice == "3" then
            clearScreen()
            print()
            print("===========================================")
            print("              PLAYER STATUS                ")
            print("===========================================")
            print(" Health: " .. player.health)
            print(" Level: " .. player.lvl)
            print(" Gold: " .. player.gold)
            print(" Strength: " .. player.strength)
            print(" Class: ??? (Not yet awakened)")
            print("===========================================")
            if #player.quests > 0 then
                print()
                print(" Active Quests:")
                for i, quest in ipairs(player.quests) do
                    print("   - " .. quest)
                end
            end
            
            print()
            print("Press Enter to continue...")
            io.read()
            
        elseif choice == "4" then
            print()
            print("You log out from the system...")
            print("Thanks for playing!")
            break  
            
        else
            print()
            print(" Invalid number! Choose 1, 2, 3, or 4.")
            print("Press Enter to continue...")
            io.read()
        end
    end
end

function GuildHall()
    clearScreen()
    print()
    print("You enter the guild hall...")
    print()
    
    while true do
        print("===========================================")
        print("              HUNTER'S GUILD               ")
        print("===========================================")
        print()
        print("The hall is busy with hunters coming and going.")
        print("You see several places you could go:")
        print()
        print(" 1 - Talk to the receptionist (Quests)")
        print(" 2 - Go to the bulletin board")
        print(" 3 - Visit the training area")
        print(" 4 - Leave the guild")
        print()
        
        io.write("Choose (1/2/3/4): ")
        local guildChoice = io.read()
        
        if guildChoice == "1" then
            Receptionist()
            
        elseif guildChoice == "2" then
            Board()
            
        elseif guildChoice == "3" then
            TrainingArea()
            
        elseif guildChoice == "4" then
            print()
            print("You leave the guild hall.")
            print("Press Enter to continue...")
            io.read()
            break
            
        else
            print()
            print(" Invalid choice!")
            print("Press Enter to continue...")
            io.read()
        end
    end
end

function Receptionist()
    clearScreen()
    print()
    print("You walk up to the receptionist.")
    print("She looks at your rank and raises an eyebrow.")
    print()
    print("'An E-rank? We don't get many of you here.'")
    print()
    print(" 1 - Ask about available quests")
    print(" 2 - Ask about ranking up")
    print(" 3 - Go back")
    print()
    
    io.write("Choose (1/2/3): ")
    local receptionChoice = io.read()
    
    if receptionChoice == "1" then
        clearScreen()
        print()
        print("'There's a simple quest.'")
        print("'Goblins in the sewers. Payment: 90 gold.'")
        print()
        print(" 1 - Accept the quest")
        print(" 2 - Decline")
        print()
        
        io.write("Choose (1/2): ")
        local questChoice = io.read()
        
        if questChoice == "1" then
            print()
            print("'Good luck, hunter. You'll need it.'")
            print()
            print(" Quest accepted: Sewer Goblins")
            table.insert(player.quests, "Sewer Goblins")
            print("Press Enter to continue...")
            io.read()
            -- dungeon
        else
            print()
            print("'Come back if you change your mind.'")
            print("Press Enter to continue...")
            io.read()
        end
        
    elseif receptionChoice == "2" then
        clearScreen()
        print()
        print("'You need to complete at least 5 D-rank quests.'")
        print("'And your level needs to be at least 10.'")
        print("'You're not ready yet.'")
        print("Press Enter to continue...")
        io.read()
    else
        print()
        print("You step away from the counter.")
        print("Press Enter to continue...")
        io.read()
    end
end

function Board()
    clearScreen()
    print()
    print("You walk to the bulletin board.")
    print("Papers are pinned everywhere with quests.")
    print()
    print("Most of them are too high rank for you.")
    print("One paper catches your eye:")
    print()
    print("'Help wanted: Lost cat in the market district.'")
    print("Reward: 20 gold. Rank: Any.")
    print()
    print(" 1 - Take the cat quest")
    print(" 2 - Leave the board")
    print()
    
    io.write("Choose (1/2): ")
    local boardChoice = io.read()
    
    if boardChoice == "1" then
        print()
        print("You tear the paper off the board.")
        print("✓ Simple quest accepted: Find the lost cat")
        table.insert(player.quests, "Lost Cat")
        print("Press Enter to continue...")
        io.read()
    else
        print()
        print("You step away from the board.")
        print("Press Enter to continue...")
        io.read()
    end
end

function TrainingArea()
    clearScreen()
    print()
    print("You enter the training area.")
    print("Hunters are practicing on training dummies.")
    print("A sparring ring is in the corner.")
    print()
    print(" 1 - Train on the dummy (+1 strength)")
    print(" 2 - Watch other hunters fight")
    print(" 3 - Go back")
    print()
    
    io.write("Choose (1/2/3): ")
    local trainChoice = io.read()
    
    if trainChoice == "1" then
        print()
        print("You punch the training dummy for an hour.")
        print("You feel stronger!")
        player.strength = player.strength + 1
        print("💪 Strength increased to " .. player.strength)
        print("Press Enter to continue...")
        io.read()
        
    elseif trainChoice == "2" then
        print()
        print("You watch an A-rank hunter train.")
        print("You learn a few techniques.")
        print("Press Enter to continue...")
        io.read()
        
    else
        print()
        print("You leave the training area.")
        print("Press Enter to continue...")
        io.read()
    end
end

function Market()
    clearScreen()
    print()
    print("===========================================")
    print("                 MARKET                   ")
    print("===========================================")
    print()
    print("The market is full of vendors shouting offers.")
    print("You see several stalls:")
    print()
    print(" 1 - Weapon shop")
    print(" 2 - Potion shop")
    print(" 3 - Leave the market")
    print()
    
    io.write("Choose (1/2/3): ")
    local marketChoice = io.read()
    
    if marketChoice == "1" then
        clearScreen()
        print()
        print("Weapon shop (Under development)")
        print("Press Enter to continue...")
        io.read()
        
    elseif marketChoice == "2" then
        clearScreen()
        print()
        print("Potion shop (Under development)")
        print("Press Enter to continue...")
        io.read()
        
    else
        print()
        print("You leave the market.")
        print("Press Enter to continue...")
        io.read()
    end
end


function Dungeon()
    clearScreen()
    print()
    print("===========================================")
    print("              SEWER DUNGEON                ")
    print("===========================================")
    print()
    print("You climb down the rusty ladder into the darkness.")
    print("The air smells of damp stone and something rotting.")
    print("Water drips somewhere in the distance. Drip. Drip. Drip.")
    print()
    print("A green glow flickers ahead. Torches? No.")
    print("Goblins.")
    print()
    print("You hear them before you see them.")
    print("Guttural laughs. Clanking weapons. The scraping of claws on stone.")
    print()
    print("Your system screen flickers:")
    print("'Dungeon entered. Clearing reward: 100 gold.'")
    print()
    print("Press Enter to continue...")
    io.read()
    
    -- Itt jön majd a harc
    clearScreen()
    print()
    print("A goblin charges at you with a rusty dagger!")
    print()
    print(" 1 - Fight")
    print(" 2 - Try to sneak past")
    print()
    
    io.write("Choose (1/2): ")
    local fight = io.read()
    
    if fight == "1" then
        print()
        print("You punch the goblin in the face!")
        print("It falls to the ground with a squeal.")
        print("Another one appears... and another...")
        print()
        print("You fight for what feels like hours.")
        print("Your knuckles are bloody. Your body aches.")
        print()
        print("But when the last goblin falls...")
        print("silence.")
        print()
        print("✓ Dungeon cleared!")
        print("✓ Reward: 100 gold")
        print("✓ +50 XP")
        print()
        
        player.gold = player.gold + 100

        for i, quest in ipairs(player.quests) do
            if quest == "Sewer Goblins" then
                table.remove(player.quests, i)
                print("✓ Quest completed: Sewer Goblins!")
                break
            end
        end
        
        print()
        print("You climb back to the surface, exhausted but alive.")
        print("Press Enter to continue...")
        io.read()
        
    elseif fight == "2" then
        print()
        print("You press yourself against the wet wall.")
        print("The goblins run past you, laughing.")
        print("They didn't see you...")
        print()
        print("But they were heading TOWARD the city.")
        print()
        print("You didn't clear the dungeon.")
        print("The gates close behind you. The goblins are someone else's problem now.")
        print()
        print("No reward. No experience.")
        print("Press Enter to continue...")
        io.read()
    else
        print()
        print("While you hesitate, a goblin stabs you in the back.")
        print("-5 health")
        player.health = player.health - 5
        
        if player.health <= 0 then
            print()
            print("💀 YOU DIED 💀")
            print("Game Over...")
            print("Press Enter to exit...")
            io.read()
            os.exit()
        end
        
        print("You barely escape back to the surface.")
        print("Press Enter to continue...")
        io.read()
    end
end
-- A JÁTÉK INDÍTÁSA
Prologue()
City()