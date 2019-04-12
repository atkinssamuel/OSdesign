code Main

  -- OS Class: Project 3
  --
  -- Samuel Atkins
  --

  -- This package contains the following:
  --     Gaming Parlor
-----------------------------  Main  ---------------------------------

  function main ()
      InitializeScheduler ()
      gamingparlor ()
      ThreadFinish ()
    endFunction

------------------------------- Gaming Parlor ----------------------------------
  var
    gamingParlor: GamingParlor = new GamingParlor
    front: Mutex
    availableGame: Condition
    customers: array [total_groups] of Thread
    -- Hint: Some variables are defined in "Task3.h".

  function gamingparlor()

    gamingParlor.Init()

    front = new Mutex
    availableGame = new Condition
    customers = new array of Thread{total_groups of new Thread}

    front.Init()
    availableGame.Init()
	  

    customers[0].Init ("A")
    customers[0].Fork(Play, 0)

    customers[1].Init ("B")
    customers[1].Fork(Play, 1)

    customers[2].Init ("C")
    customers[2].Fork(Play, 2)

    customers[3].Init ("D")
    customers[3].Fork(Play, 3)

    customers[4].Init ("E")
    customers[4].Fork(Play, 4)

    customers[5].Init ("F")
    customers[5].Fork(Play, 5)

    customers[6].Init ("G")
    customers[6].Fork(Play, 6)

    customers[7].Init ("H")
    customers[7].Fork(Play, 7)

  endFunction
  
  function Play(custNum: int)
    var
        gamesPlayed: int = 0
    while gamesPlayed < 5
      gamesPlayed = gamesPlayed + 1
      gamingParlor.Request(group_names [custNum], dice_per_group [custNum])
      currentThread.Yield() -- play the game, you will only get here as a thread if you have dice
      gamingParlor.Return(group_names [custNum], dice_per_group [custNum])
    endWhile
  endFunction

  behavior GamingParlor
    method Init()
      dice_available = total_dice
    endMethod

    method Request(name: char, nr_of_dice: int)
      front.Lock() -- beginning of critical section (only one thread can request or return at a time, there is order among gamblers)
      self.Print(name, "requests", nr_of_dice)
      while dice_available < nr_of_dice -- while there isn't enough dice to play the game of choice
        availableGame.Wait(&front) -- wait for there to be enough dice to play the game
      endWhile
      dice_available = dice_available - nr_of_dice -- when there is enough dice to play, decrement the available dice
      self.Print(name, "proceeds with", nr_of_dice)
      front.Unlock() -- end of critical section
    endMethod

    method Return(name: char, nr_of_dice: int)
      front.Lock() -- beginning of critical section (only one thread can request or return at a time, there is order among gamblers)
      dice_available = dice_available + nr_of_dice
      self.Print(name, "releases and adds back", nr_of_dice)
      availableGame.Broadcast(&front) -- wakeup EVERYONE that has been waiting
      front.Unlock() -- end of critical section
    endMethod

    method PrintExample()
      ----------------------------- Example -----------------------------
      -- This is an example of using print functions.
      -- You should not use this function in your implementation.

      -- A requests
      self.Request(group_names[0], 4)
      -- B requests
      self.Request(group_names[1], 4)
      -- B returns
      self.Return(group_names[1], 4)
      -- A returns
      self.Return(group_names[0], 4)
      -- C requests
      self.Request(group_names[2], 5)
      -- C returns
      self.Return(group_names[2], 5)

    endMethod

    method Print(name: char, str: String, nr_of_dice: int)
    --
    -- This method prints the current thread's name and the arguments.
    -- It also prints the current number of dice available.
    --
       printChar(name)
       print(" ")
       print(str)
       print(" ")
       printInt(nr_of_dice)
       nl()
       print("------------------------------Number of dice now avail = ")
       printInt(dice_available)
       nl()
    endMethod
  endBehavior

endCode
