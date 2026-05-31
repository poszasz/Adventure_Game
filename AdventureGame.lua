local player = {
    health = 10,  
    lvl = 1
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

function Prologue()
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
        print()
        print()
        print("You are in the middle of the Hunter's District.")
        print("Guild buildings tower above you. Adventurers rush past.")
        print("A holographic screen floats before your eyes:")
        print()
        print(" Health: " .. player.health)
        print(" Level: " .. player.lvl)
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
            print()
            print("You enter the guild hall...")
            print("(Under development)")
            print("Press Enter to continue...")
            io.read()

            
        elseif choice == "2" then
            print()
            print("You browse the market stalls...")
            print("(Under development)")
            print("Press Enter to continue...")
            io.read()

            
        elseif choice == "3" then
            print()
            print("===========================================")
            print("              PLAYER STATUS                ")
            print("===========================================")
            print(" Health: " .. player.health)
            print(" Level: " .. player.lvl)
            print(" Class: ??? (Not yet awakened)")
            print("===========================================")
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
            print("Invalid number! Choose 1, 2, 3, or 4.")
            print("Press Enter to continue...")
            io.read()
        end
    end
end

Prologue()
City()