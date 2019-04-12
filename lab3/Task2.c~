code Main

  -- OS Class: Project 3
  --
  -- Samuel Atkins
  --

  -- This package contains the following:
  --     Sleeping Barber
-----------------------------  Main  ---------------------------------

  function main ()
      InitializeScheduler ()
      sleepingbarber ()
      ThreadFinish ()
    endFunction

-----------------------------  Sleeping Barber --------------------------------
  -- In the Producer/Consumer and Dining Philosophers problems, we tried to print the activity
  -- of each thread in a different column so that you could see what each thread was doing.
  -- The actual events in this problem can be reduced to a single letter, such as:
  --
  --         E = Enter
  --         S = Sit in waiting chair
  --         B = Begin haircut
  --         F = Finish haircut
  --         L = Leave
  --         start = Barber begins haircut
  --         end = Barber ends haircut
  --
  -- The status of the chairs should be printed every time you print a line. If there are 5
  -- chairs, of which 2 are occupied, print 2 X's and 3 -'s.  For example:
  --
  --         XX---
  --

  enum Start, End
  
  var
    customerSem: Semaphore
    barberSem: Semaphore
    cuttingHair: Semaphore
    doneHair: Semaphore
    lock: Mutex
    sb: SleepingBarber
    bStatus: int = End
    cStatus: array[nrCustomers] of char = 
             new array of char { nrCustomers of 'L' }
    -- Hint: Some variables are defined in "Task2.h".

  function sleepingbarber()
    var
      i: int
      mainBarberThread: Thread
      customersThread: array[10] of Thread = new array of Thread{10 of new Thread}

    -- print initial line
    for i = 0 to nrChairs
        printChar(' ')
    endFor
    print("Barber\t")
    for i = 0 to nrCustomers - 1
        printInt(i+1)
        printChar('\t')
    endFor
    nl()

    sb = new SleepingBarber
    sb.Init(bStatus, &cStatus, 0)

    lock = new Mutex
    lock.Init()

    -- Semaphore initialization:
    customerSem = new Semaphore
    customerSem.Init(0)

    barberSem = new Semaphore
    barberSem.Init(0)

    cuttingHair = new Semaphore
    cuttingHair.Init(0)

    doneHair = new Semaphore
    doneHair.Init(0)
    
    -- Initializing barber thread:
    mainBarberThread = new Thread
    mainBarberThread.Init("Barber")
    mainBarberThread.Fork(barber, nrChairs)

    -- Initializing all customer threads:
    customersThread[0].Init ("01")
    customersThread[0].Fork(customers, 1)

    customersThread[1].Init ("02")
    customersThread[1].Fork(customers, 1)

    customersThread[2].Init ("03")
    customersThread[2].Fork(customers, 1)

    customersThread[3].Init ("04")
    customersThread[3].Fork(customers, 1)

    customersThread[4].Init ("05")
    customersThread[4].Fork(customers, 1)

    customersThread[5].Init ("06")
    customersThread[5].Fork(customers, 1)

    customersThread[6].Init ("07")
    customersThread[6].Fork(customers, 1)

    customersThread[7].Init ("08")
    customersThread[7].Fork(customers, 1)

    customersThread[8].Init ("09")
    customersThread[8].Fork(customers, 1)

    customersThread[9].Init ("10")
    customersThread[9].Fork(customers, 1)

  endFunction

function customers()
	var
	  receivedCuts: int = 0
	receivedCuts = receivedCuts + 1
	lock.Lock()
	sb.customerStatus[(charToInt(currentThread.name[0]) - charToInt('0'))*10 + charToInt(currentThread.name[1]) - charToInt('0') - 1] = 'E'
	sb.printCustomerStatus((charToInt(currentThread.name[0]) - charToInt('0'))*10 + charToInt(currentThread.name[1]) - charToInt('0') - 1)
		
	if sb.availChairs < nrChairs -- if there is an available chair for the customer to sit in
	  sb.availChairs = sb.availChairs + 1 -- one less available chair
	  sb.customerStatus[(charToInt(currentThread.name[0]) - charToInt('0'))*10 + charToInt(currentThread.name[1]) - charToInt('0') - 1] = 'S' -- customer 'S' (sits)
	  sb.printCustomerStatus((charToInt(currentThread.name[0]) - charToInt('0'))*10 + charToInt(currentThread.name[1]) - charToInt('0') - 1)	
	  lock.Unlock()

	  customerSem.Up() 
	  barberSem.Down() -- try to acquire the barber, sleep otherwise
			
	  sb.customerStatus[(charToInt(currentThread.name[0]) - charToInt('0'))*10 + charToInt(currentThread.name[1]) - charToInt('0') - 1] = 'B' -- customer 'B' (begins)
	  sb.printCustomerStatus((charToInt(currentThread.name[0]) - charToInt('0'))*10 + charToInt(currentThread.name[1]) - charToInt('0') - 1)
	  cuttingHair.Up() 
	  currentThread.Yield() -- get haircut
		        
	  sb.customerStatus[(charToInt(currentThread.name[0]) - charToInt('0'))*10 + charToInt(currentThread.name[1]) - charToInt('0') - 1] = 'F' -- customer 'F' (finishes haircut)
	  sb.printCustomerStatus((charToInt(currentThread.name[0]) - charToInt('0'))*10 + charToInt(currentThread.name[1]) - charToInt('0') - 1)
	  cuttingHair.Up() 
	  doneHair.Down() -- haircut over when barber is finished
	else
	  lock.Unlock()
	endIf

	sb.customerStatus[(charToInt(currentThread.name[0]) - charToInt('0'))*10 + charToInt(currentThread.name[1]) - charToInt('0') - 1] = 'L'
	sb.printCustomerStatus((charToInt(currentThread.name[0]) - charToInt('0'))*10 + charToInt(currentThread.name[1]) - charToInt('0') - 1)
endFunction

function barber()
	while true -- because the barber is always working, he never quits
	  customerSem.Down() -- tries to get a customer
	  lock.Lock()
	  sb.availChairs = sb.availChairs - 1 -- critical section
	  lock.Unlock()

	  sb.barberStatus = Start
	  sb.printBarberStatus()
	  barberSem.Up() -- accept a customer
		
	  cuttingHair.Down() -- begin haircut when customer ready
	  currentThread.Yield()
	  cuttingHair.Down() -- finish haircut when customer ready
		
	  sb.barberStatus = End
	  sb.printBarberStatus()
	  doneHair.Up() -- signal to customer that you're done 
	endWhile
endFunction

  -- implementation of SleepingBarber class
  behavior SleepingBarber
    method Init(bStat: int, cStat: ptr to array of char, numOfChair: int)
      self.barberStatus = bStat
      self.customerStatus = cStat
      self.availChairs = numOfChair
    endMethod

    method printExample()
      ----------------------------- Example -----------------------------
      -- This is an example of using print functions.
      -- You should not use this function in your implementation.

      -- Customer 1 enter.
      self.customerStatus[0] = 'E'
      self.printCustomerStatus(0)

      -- Customer 1 sit in waiting chair.
      self.customerStatus[0] = 'S'
      self.availChairs = self.availChairs - 1
      self.printCustomerStatus(0)

      -- Customer 2 enter.
      self.customerStatus[1] = 'E'
      self.printCustomerStatus(1)

      -- Customer 2 sit in waiting chair.
      self.customerStatus[1] = 'S'
      self.availChairs = self.availChairs - 1
      self.printCustomerStatus(1)

      -- Barber begins haircut. Customer begins haircut and chair becomes available.
      self.barberStatus = Start
      self.availChairs = self.availChairs + 1
      self.printBarberStatus()

      -- Customer 1 begins haircut.
      self.customerStatus[0] = 'B'
      self.printCustomerStatus(0)

      -- Barber ends haircut.
      self.barberStatus = End
      self.printBarberStatus()

      -- Customer 1 finish haircut.
      self.customerStatus[0] = 'F'
      self.printCustomerStatus(0)

      -- Customer 1 leave.
      self.customerStatus[0] = 'L'
      self.printCustomerStatus(0)

      -- Barber begins haircut. Customer begins haircut and chair becomes available.
      self.barberStatus = Start
      self.availChairs = self.availChairs + 1
      self.printBarberStatus()

      -- Customer 2 begins haircut.
      self.customerStatus[1] = 'B'
      self.printCustomerStatus(1)

      -- Barber ends haircut.
      self.barberStatus = End
      self.printBarberStatus()

      -- Customer 2 finish haircut.
      self.customerStatus[1] = 'F'
      self.printCustomerStatus(1)

      -- Customer 2 leave.
      self.customerStatus[1] = 'L'
      self.printCustomerStatus(1)
      -----------------------------  End  -----------------------------
    endMethod

    method printBarberStatus()
      var
	 oldStatus: int
      oldStatus = SetInterruptsTo (DISABLED)	
      self.printChairs()
      if self.barberStatus == Start
         print("Start\n")
      else
         print("End\n")
      endIf
      oldStatus = SetInterruptsTo (oldStatus)
    endMethod

    method printCustomerStatus(customer: int)
      var 
	  i: int
	  oldStatus: int
      oldStatus = SetInterruptsTo (DISABLED)
      self.printChairs()
      print("\t")
      print("        ")
      for i = 0 to nrCustomers - 1
        if (i != customer)
          printChar(' ')
        else
          printChar(self.customerStatus[i])
        endIf
        printChar('\t')
      endFor
      nl()
      oldStatus = SetInterruptsTo (oldStatus)
    endMethod

    method printChairs()
      var 
        i: int
	oldStatus: int
      oldStatus = SetInterruptsTo (DISABLED)
      for i = 1 to self.availChairs
        printChar('X')
      endFor
      for i = 1 to (nrChairs - self.availChairs)
        printChar('-')
      endFor
      printChar(' ')
      oldStatus = SetInterruptsTo (oldStatus)
    endMethod

  endBehavior

endCode
