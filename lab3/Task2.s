! Name of package being compiled: Main
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_Thread_InitializeScheduler
	.import	_P_Thread_Run
	.import	_P_Thread_PrintReadyList
	.import	_P_Thread_ThreadStartMain
	.import	_P_Thread_ThreadFinish
	.import	_P_Thread_FatalError
	.import	_P_Thread_SetInterruptsTo
	.import	_P_Thread_TimerInterruptHandler
	.import	Switch
	.import	ThreadStartUp
! Externally visible functions in this package
	.export	_mainEntry
	.export	main
	.export	_P_Main_barber
	.export	_P_Main_customers
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from other packages
	.import	_P_Thread_Thread
! The following class and its methods are from other packages
	.import	_P_Synch_Semaphore
! The following class and its methods are from other packages
	.import	_P_Synch_Mutex
! The following class and its methods are from other packages
	.import	_P_Synch_Mutex2
! The following class and its methods are from other packages
	.import	_P_Synch_Condition
! The following class and its methods are from this package
	.export	_P_Main_SleepingBarber
	.export	_Method_P_Main_SleepingBarber_1
	.export	_Method_P_Main_SleepingBarber_2
	.export	_Method_P_Main_SleepingBarber_3
	.export	_Method_P_Main_SleepingBarber_4
	.export	_Method_P_Main_SleepingBarber_5
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_Thread_readyList
	.import	_P_Thread_currentThread
	.import	_P_Thread_mainThread
	.import	_P_Thread_idleThread
	.import	_P_Thread_threadsToBeDestroyed
	.import	_P_Thread_currentInterruptStatus
! Global variables in this package
	.data
_Global_customerSem:
	.skip	20
_Global_barberSem:
	.skip	20
_Global_cuttingHair:
	.skip	20
_Global_doneHair:
	.skip	20
_Global_lock:
	.skip	20
_Global_sb:
	.skip	16
_Global_bStatus:
	.word	0x00000002		! decimal value = 2
_Global_cStatus:
! Static array
	.word	10		! number of elements
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.align
	.align
! String constants
_StringConst_16:
	.word	8			! length
	.ascii	"        "
	.align
_StringConst_15:
	.word	1			! length
	.ascii	"\t"
	.align
_StringConst_14:
	.word	4			! length
	.ascii	"End\n"
	.align
_StringConst_13:
	.word	6			! length
	.ascii	"Start\n"
	.align
_StringConst_12:
	.word	2			! length
	.ascii	"10"
	.align
_StringConst_11:
	.word	2			! length
	.ascii	"09"
	.align
_StringConst_10:
	.word	2			! length
	.ascii	"08"
	.align
_StringConst_9:
	.word	2			! length
	.ascii	"07"
	.align
_StringConst_8:
	.word	2			! length
	.ascii	"06"
	.align
_StringConst_7:
	.word	2			! length
	.ascii	"05"
	.align
_StringConst_6:
	.word	2			! length
	.ascii	"04"
	.align
_StringConst_5:
	.word	2			! length
	.ascii	"03"
	.align
_StringConst_4:
	.word	2			! length
	.ascii	"02"
	.align
_StringConst_3:
	.word	2			! length
	.ascii	"01"
	.align
_StringConst_2:
	.word	6			! length
	.ascii	"Barber"
	.align
_StringConst_1:
	.word	7			! length
	.ascii	"Barber\t"
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0xd00b7d9f,r3		! .  hashVal = -804553313
	call	_CheckVersion_P_Main_	! .
	cmp	r1,0			! .
	be	_Label_18		! .
	ret				! .
_Label_18:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Task2.c\0"
_packageName:
	.ascii	"Main\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Main_:
	.export	_CheckVersion_P_Main_
	set	0xd00b7d9f,r4		! myHashVal = -804553313
	cmp	r3,r4
	be	_Label_19
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_19:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_20
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_20
! Make sure _P_Thread_ has hash value 0xd98e6cc5 (decimal -644977467)
	set	_packageName,r2
	set	0xd98e6cc5,r3
	call	_CheckVersion_P_Thread_
	.import	_CheckVersion_P_Thread_
	cmp	r1,0
	bne	_Label_20
! Make sure _P_Synch_ has hash value 0x8e356f6d (decimal -1909100691)
	set	_packageName,r2
	set	0x8e356f6d,r3
	call	_CheckVersion_P_Synch_
	.import	_CheckVersion_P_Synch_
	cmp	r1,0
	bne	_Label_20
_Label_20:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION main  ===============
! 
main:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor_main,r1
	push	r1
	mov	12,r13		! source line 12
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	13,r13		! source line 13
	mov	"\0\0CA",r10
	call	_P_Thread_InitializeScheduler
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CA",r10
	call	_function_17_sleepingbarber
! CALL STATEMENT...
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CA",r10
	call	_P_Thread_ThreadFinish
! RETURN STATEMENT...
	mov	15,r13		! source line 15
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_21
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_21:
	.ascii	"main\0"
	.align
! 
! ===============  FUNCTION sleepingbarber  ===============
! 
_function_17_sleepingbarber:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_17_sleepingbarber,r1
	push	r1
	mov	22601,r1
_Label_919:
	push	r0
	sub	r1,1,r1
	bne	_Label_919
	mov	51,r13		! source line 51
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! customersThread
!   NEW ARRAY Constructor...
!   _temp_23 = &_temp_22
	set	-45376,r1
	add	r14,r1,r1
	store	r1,[r14+-4452]
!   _temp_23 = _temp_23 + 4
	load	[r14+-4452],r1
	add	r1,4,r1
	store	r1,[r14+-4452]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_25 = zeros  (sizeInBytes=4092)
	add	r14,-4444,r4
	mov	1023,r3
_Label_920:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_920
!   _temp_25 = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	store	r1,[r14+-4444]
	mov	10,r1
	store	r1,[r14+-4448]
_Label_27:
!   Data Move: *_temp_23 = _temp_25  (sizeInBytes=4092)
	add	r14,-4444,r5
	load	[r14+-4452],r4
	mov	1023,r3
_Label_921:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_921
!   _temp_23 = _temp_23 + 4092
	load	[r14+-4452],r1
	add	r1,4092,r1
	store	r1,[r14+-4452]
!   _temp_24 = _temp_24 + -1
	load	[r14+-4448],r1
	add	r1,-1,r1
	store	r1,[r14+-4448]
!   if intNotZero (_temp_24) then goto _Label_27
	load	[r14+-4448],r1
	cmp	r1,r0
	bne	_Label_27
!   Initialize the array size...
	mov	10,r1
	set	-45376,r2
	store	r1,[r14+r2]
!   _temp_28 = &_temp_22
	set	-45376,r1
	add	r14,r1,r1
	store	r1,[r14+-348]
!   make sure array has size 10
	load	[r14+-348],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: customersThread = *_temp_28  (sizeInBytes=40924)
	load	[r14+-348],r5
	set	-90396,r4
	add	r14,r4,r4
	mov	10231,r3
_Label_922:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_922
! FOR STATEMENT...
	mov	58,r13		! source line 58
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_33 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-344]
!   Calculate and save the FOR-LOOP ending value
!   _temp_34 = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-340]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_33  (sizeInBytes=4)
	load	[r14+-344],r1
	set	-45380,r2
	store	r1,[r14+r2]
_Label_29:
!   Perform the FOR-LOOP termination test
!   if i > _temp_34 then goto _Label_32		
	set	-45380,r1
	load	[r14+r1],r1
	load	[r14+-340],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_32
_Label_30:
	mov	58,r13		! source line 58
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	59,r13		! source line 59
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_31:
!   i = i + 1
	set	-45380,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45380,r2
	store	r1,[r14+r2]
	jmp	_Label_29
! END FOR
_Label_32:
! CALL STATEMENT...
!   _temp_35 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-336]
!   Prepare Argument: offset=8  value=_temp_35  sizeInBytes=4
	load	[r14+-336],r1
	store	r1,[r15+0]
!   Call the function
	mov	61,r13		! source line 61
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	62,r13		! source line 62
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_40 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-332]
!   Calculate and save the FOR-LOOP ending value
!   _temp_41 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-328]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_40  (sizeInBytes=4)
	load	[r14+-332],r1
	set	-45380,r2
	store	r1,[r14+r2]
_Label_36:
!   Perform the FOR-LOOP termination test
!   if i > _temp_41 then goto _Label_39		
	set	-45380,r1
	load	[r14+r1],r1
	load	[r14+-328],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_39
_Label_37:
	mov	62,r13		! source line 62
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_42 = i + 1		(int)
	set	-45380,r1
	load	[r14+r1],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-324]
!   Prepare Argument: offset=8  value=_temp_42  sizeInBytes=4
	load	[r14+-324],r1
	store	r1,[r15+0]
!   Call the function
	mov	63,r13		! source line 63
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=9  sizeInBytes=1
	mov	9,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	64,r13		! source line 64
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_38:
!   i = i + 1
	set	-45380,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45380,r2
	store	r1,[r14+r2]
	jmp	_Label_36
! END FOR
_Label_39:
! CALL STATEMENT...
!   Call the function
	mov	66,r13		! source line 66
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_sb = zeros  (sizeInBytes=16)
	set	_Global_sb,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   _Global_sb = _P_Main_SleepingBarber
	set	_P_Main_SleepingBarber,r1
	set	_Global_sb,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	69,r13		! source line 69
	mov	"\0\0SE",r10
!   _temp_44 = &_Global_cStatus
	set	_Global_cStatus,r1
	store	r1,[r14+-316]
!   _temp_45 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-312]
!   Prepare Argument: offset=12  value=_Global_bStatus  sizeInBytes=4
	set	_Global_bStatus,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_44  sizeInBytes=4
	load	[r14+-316],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Send message Init
	load	[r14+-312],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_lock = zeros  (sizeInBytes=20)
	set	_Global_lock,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_lock = _P_Synch_Mutex
	set	_P_Synch_Mutex,r1
	set	_Global_lock,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	72,r13		! source line 72
	mov	"\0\0SE",r10
!   _temp_47 = &_Global_lock
	set	_Global_lock,r1
	store	r1,[r14+-304]
!   Send message Init
	load	[r14+-304],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	75,r13		! source line 75
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_customerSem = zeros  (sizeInBytes=20)
	set	_Global_customerSem,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_customerSem = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	set	_Global_customerSem,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	76,r13		! source line 76
	mov	"\0\0SE",r10
!   _temp_49 = &_Global_customerSem
	set	_Global_customerSem,r1
	store	r1,[r14+-296]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-296],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	78,r13		! source line 78
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_barberSem = zeros  (sizeInBytes=20)
	set	_Global_barberSem,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_barberSem = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	set	_Global_barberSem,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	79,r13		! source line 79
	mov	"\0\0SE",r10
!   _temp_51 = &_Global_barberSem
	set	_Global_barberSem,r1
	store	r1,[r14+-288]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-288],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	81,r13		! source line 81
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_cuttingHair = zeros  (sizeInBytes=20)
	set	_Global_cuttingHair,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_cuttingHair = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	set	_Global_cuttingHair,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	82,r13		! source line 82
	mov	"\0\0SE",r10
!   _temp_53 = &_Global_cuttingHair
	set	_Global_cuttingHair,r1
	store	r1,[r14+-280]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-280],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_doneHair = zeros  (sizeInBytes=20)
	set	_Global_doneHair,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_doneHair = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	set	_Global_doneHair,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_55 = &_Global_doneHair
	set	_Global_doneHair,r1
	store	r1,[r14+-272]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-272],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	88,r13		! source line 88
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: mainBarberThread = zeros  (sizeInBytes=4092)
	set	-49472,r4
	add	r14,r4,r4
	mov	1023,r3
_Label_923:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_923
!   mainBarberThread = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	set	-49472,r2
	store	r1,[r14+r2]
! SEND STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0SE",r10
!   _temp_57 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-264]
!   _temp_58 = &mainBarberThread
	set	-49472,r1
	add	r14,r1,r1
	store	r1,[r14+-260]
!   Prepare Argument: offset=12  value=_temp_57  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-260],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	90,r13		! source line 90
	mov	"\0\0SE",r10
!   _temp_59 = _P_Main_barber
	set	_P_Main_barber,r1
	store	r1,[r14+-256]
!   _temp_60 = &mainBarberThread
	set	-49472,r1
	add	r14,r1,r1
	store	r1,[r14+-252]
!   Prepare Argument: offset=12  value=_temp_59  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-252],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	93,r13		! source line 93
	mov	"\0\0SE",r10
!   _temp_61 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-248]
!   _temp_62 = &customersThread
	set	-90396,r1
	add	r14,r1,r1
	store	r1,[r14+-244]
!   Move address of _temp_62 [0 ] into _temp_63
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-244],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-240]
!   Prepare Argument: offset=12  value=_temp_61  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-240],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	94,r13		! source line 94
	mov	"\0\0SE",r10
!   _temp_64 = _P_Main_customers
	set	_P_Main_customers,r1
	store	r1,[r14+-236]
!   _temp_65 = &customersThread
	set	-90396,r1
	add	r14,r1,r1
	store	r1,[r14+-232]
!   Move address of _temp_65 [0 ] into _temp_66
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-232],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-228]
!   Prepare Argument: offset=12  value=_temp_64  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-228],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	96,r13		! source line 96
	mov	"\0\0SE",r10
!   _temp_67 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-224]
!   _temp_68 = &customersThread
	set	-90396,r1
	add	r14,r1,r1
	store	r1,[r14+-220]
!   Move address of _temp_68 [1 ] into _temp_69
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-220],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-216]
!   Prepare Argument: offset=12  value=_temp_67  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-216],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	97,r13		! source line 97
	mov	"\0\0SE",r10
!   _temp_70 = _P_Main_customers
	set	_P_Main_customers,r1
	store	r1,[r14+-212]
!   _temp_71 = &customersThread
	set	-90396,r1
	add	r14,r1,r1
	store	r1,[r14+-208]
!   Move address of _temp_71 [1 ] into _temp_72
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-208],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-204]
!   Prepare Argument: offset=12  value=_temp_70  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	99,r13		! source line 99
	mov	"\0\0SE",r10
!   _temp_73 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-200]
!   _temp_74 = &customersThread
	set	-90396,r1
	add	r14,r1,r1
	store	r1,[r14+-196]
!   Move address of _temp_74 [2 ] into _temp_75
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-196],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-192]
!   Prepare Argument: offset=12  value=_temp_73  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	100,r13		! source line 100
	mov	"\0\0SE",r10
!   _temp_76 = _P_Main_customers
	set	_P_Main_customers,r1
	store	r1,[r14+-188]
!   _temp_77 = &customersThread
	set	-90396,r1
	add	r14,r1,r1
	store	r1,[r14+-184]
!   Move address of _temp_77 [2 ] into _temp_78
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Prepare Argument: offset=12  value=_temp_76  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	102,r13		! source line 102
	mov	"\0\0SE",r10
!   _temp_79 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-176]
!   _temp_80 = &customersThread
	set	-90396,r1
	add	r14,r1,r1
	store	r1,[r14+-172]
!   Move address of _temp_80 [3 ] into _temp_81
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-172],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-168]
!   Prepare Argument: offset=12  value=_temp_79  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	103,r13		! source line 103
	mov	"\0\0SE",r10
!   _temp_82 = _P_Main_customers
	set	_P_Main_customers,r1
	store	r1,[r14+-164]
!   _temp_83 = &customersThread
	set	-90396,r1
	add	r14,r1,r1
	store	r1,[r14+-160]
!   Move address of _temp_83 [3 ] into _temp_84
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-160],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-156]
!   Prepare Argument: offset=12  value=_temp_82  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	105,r13		! source line 105
	mov	"\0\0SE",r10
!   _temp_85 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-152]
!   _temp_86 = &customersThread
	set	-90396,r1
	add	r14,r1,r1
	store	r1,[r14+-148]
!   Move address of _temp_86 [4 ] into _temp_87
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-148],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-144]
!   Prepare Argument: offset=12  value=_temp_85  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_88 = _P_Main_customers
	set	_P_Main_customers,r1
	store	r1,[r14+-140]
!   _temp_89 = &customersThread
	set	-90396,r1
	add	r14,r1,r1
	store	r1,[r14+-136]
!   Move address of _temp_89 [4 ] into _temp_90
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-136],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   Prepare Argument: offset=12  value=_temp_88  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0SE",r10
!   _temp_91 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-128]
!   _temp_92 = &customersThread
	set	-90396,r1
	add	r14,r1,r1
	store	r1,[r14+-124]
!   Move address of _temp_92 [5 ] into _temp_93
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Prepare Argument: offset=12  value=_temp_91  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	109,r13		! source line 109
	mov	"\0\0SE",r10
!   _temp_94 = _P_Main_customers
	set	_P_Main_customers,r1
	store	r1,[r14+-116]
!   _temp_95 = &customersThread
	set	-90396,r1
	add	r14,r1,r1
	store	r1,[r14+-112]
!   Move address of _temp_95 [5 ] into _temp_96
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-112],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_94  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	111,r13		! source line 111
	mov	"\0\0SE",r10
!   _temp_97 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-104]
!   _temp_98 = &customersThread
	set	-90396,r1
	add	r14,r1,r1
	store	r1,[r14+-100]
!   Move address of _temp_98 [6 ] into _temp_99
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_97  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	112,r13		! source line 112
	mov	"\0\0SE",r10
!   _temp_100 = _P_Main_customers
	set	_P_Main_customers,r1
	store	r1,[r14+-92]
!   _temp_101 = &customersThread
	set	-90396,r1
	add	r14,r1,r1
	store	r1,[r14+-88]
!   Move address of _temp_101 [6 ] into _temp_102
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_100  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	114,r13		! source line 114
	mov	"\0\0SE",r10
!   _temp_103 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-80]
!   _temp_104 = &customersThread
	set	-90396,r1
	add	r14,r1,r1
	store	r1,[r14+-76]
!   Move address of _temp_104 [7 ] into _temp_105
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_103  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	115,r13		! source line 115
	mov	"\0\0SE",r10
!   _temp_106 = _P_Main_customers
	set	_P_Main_customers,r1
	store	r1,[r14+-68]
!   _temp_107 = &customersThread
	set	-90396,r1
	add	r14,r1,r1
	store	r1,[r14+-64]
!   Move address of _temp_107 [7 ] into _temp_108
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_106  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	117,r13		! source line 117
	mov	"\0\0SE",r10
!   _temp_109 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-56]
!   _temp_110 = &customersThread
	set	-90396,r1
	add	r14,r1,r1
	store	r1,[r14+-52]
!   Move address of _temp_110 [8 ] into _temp_111
!     make sure index expr is >= 0
	mov	8,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_109  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	118,r13		! source line 118
	mov	"\0\0SE",r10
!   _temp_112 = _P_Main_customers
	set	_P_Main_customers,r1
	store	r1,[r14+-44]
!   _temp_113 = &customersThread
	set	-90396,r1
	add	r14,r1,r1
	store	r1,[r14+-40]
!   Move address of _temp_113 [8 ] into _temp_114
!     make sure index expr is >= 0
	mov	8,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_112  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	120,r13		! source line 120
	mov	"\0\0SE",r10
!   _temp_115 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-32]
!   _temp_116 = &customersThread
	set	-90396,r1
	add	r14,r1,r1
	store	r1,[r14+-28]
!   Move address of _temp_116 [9 ] into _temp_117
!     make sure index expr is >= 0
	mov	9,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_115  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	121,r13		! source line 121
	mov	"\0\0SE",r10
!   _temp_118 = _P_Main_customers
	set	_P_Main_customers,r1
	store	r1,[r14+-20]
!   _temp_119 = &customersThread
	set	-90396,r1
	add	r14,r1,r1
	store	r1,[r14+-16]
!   Move address of _temp_119 [9 ] into _temp_120
!     make sure index expr is >= 0
	mov	9,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_118  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	121,r13		! source line 121
	mov	"\0\0RE",r10
	set	90408,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_17_sleepingbarber:
	.word	_sourceFileName
	.word	_Label_121
	.word	0		! total size of parameters
	.word	90404		! frame size = 90404
	.word	_Label_122
	.word	-12
	.word	4
	.word	_Label_123
	.word	-16
	.word	4
	.word	_Label_124
	.word	-20
	.word	4
	.word	_Label_125
	.word	-24
	.word	4
	.word	_Label_126
	.word	-28
	.word	4
	.word	_Label_127
	.word	-32
	.word	4
	.word	_Label_128
	.word	-36
	.word	4
	.word	_Label_129
	.word	-40
	.word	4
	.word	_Label_130
	.word	-44
	.word	4
	.word	_Label_131
	.word	-48
	.word	4
	.word	_Label_132
	.word	-52
	.word	4
	.word	_Label_133
	.word	-56
	.word	4
	.word	_Label_134
	.word	-60
	.word	4
	.word	_Label_135
	.word	-64
	.word	4
	.word	_Label_136
	.word	-68
	.word	4
	.word	_Label_137
	.word	-72
	.word	4
	.word	_Label_138
	.word	-76
	.word	4
	.word	_Label_139
	.word	-80
	.word	4
	.word	_Label_140
	.word	-84
	.word	4
	.word	_Label_141
	.word	-88
	.word	4
	.word	_Label_142
	.word	-92
	.word	4
	.word	_Label_143
	.word	-96
	.word	4
	.word	_Label_144
	.word	-100
	.word	4
	.word	_Label_145
	.word	-104
	.word	4
	.word	_Label_146
	.word	-108
	.word	4
	.word	_Label_147
	.word	-112
	.word	4
	.word	_Label_148
	.word	-116
	.word	4
	.word	_Label_149
	.word	-120
	.word	4
	.word	_Label_150
	.word	-124
	.word	4
	.word	_Label_151
	.word	-128
	.word	4
	.word	_Label_152
	.word	-132
	.word	4
	.word	_Label_153
	.word	-136
	.word	4
	.word	_Label_154
	.word	-140
	.word	4
	.word	_Label_155
	.word	-144
	.word	4
	.word	_Label_156
	.word	-148
	.word	4
	.word	_Label_157
	.word	-152
	.word	4
	.word	_Label_158
	.word	-156
	.word	4
	.word	_Label_159
	.word	-160
	.word	4
	.word	_Label_160
	.word	-164
	.word	4
	.word	_Label_161
	.word	-168
	.word	4
	.word	_Label_162
	.word	-172
	.word	4
	.word	_Label_163
	.word	-176
	.word	4
	.word	_Label_164
	.word	-180
	.word	4
	.word	_Label_165
	.word	-184
	.word	4
	.word	_Label_166
	.word	-188
	.word	4
	.word	_Label_167
	.word	-192
	.word	4
	.word	_Label_168
	.word	-196
	.word	4
	.word	_Label_169
	.word	-200
	.word	4
	.word	_Label_170
	.word	-204
	.word	4
	.word	_Label_171
	.word	-208
	.word	4
	.word	_Label_172
	.word	-212
	.word	4
	.word	_Label_173
	.word	-216
	.word	4
	.word	_Label_174
	.word	-220
	.word	4
	.word	_Label_175
	.word	-224
	.word	4
	.word	_Label_176
	.word	-228
	.word	4
	.word	_Label_177
	.word	-232
	.word	4
	.word	_Label_178
	.word	-236
	.word	4
	.word	_Label_179
	.word	-240
	.word	4
	.word	_Label_180
	.word	-244
	.word	4
	.word	_Label_181
	.word	-248
	.word	4
	.word	_Label_182
	.word	-252
	.word	4
	.word	_Label_183
	.word	-256
	.word	4
	.word	_Label_184
	.word	-260
	.word	4
	.word	_Label_185
	.word	-264
	.word	4
	.word	_Label_186
	.word	-268
	.word	4
	.word	_Label_187
	.word	-272
	.word	4
	.word	_Label_188
	.word	-276
	.word	4
	.word	_Label_189
	.word	-280
	.word	4
	.word	_Label_190
	.word	-284
	.word	4
	.word	_Label_191
	.word	-288
	.word	4
	.word	_Label_192
	.word	-292
	.word	4
	.word	_Label_193
	.word	-296
	.word	4
	.word	_Label_194
	.word	-300
	.word	4
	.word	_Label_195
	.word	-304
	.word	4
	.word	_Label_196
	.word	-308
	.word	4
	.word	_Label_197
	.word	-312
	.word	4
	.word	_Label_198
	.word	-316
	.word	4
	.word	_Label_199
	.word	-320
	.word	4
	.word	_Label_200
	.word	-324
	.word	4
	.word	_Label_201
	.word	-328
	.word	4
	.word	_Label_202
	.word	-332
	.word	4
	.word	_Label_203
	.word	-336
	.word	4
	.word	_Label_204
	.word	-340
	.word	4
	.word	_Label_205
	.word	-344
	.word	4
	.word	_Label_206
	.word	-348
	.word	4
	.word	_Label_207
	.word	-352
	.word	4
	.word	_Label_208
	.word	-4444
	.word	4092
	.word	_Label_209
	.word	-4448
	.word	4
	.word	_Label_210
	.word	-4452
	.word	4
	.word	_Label_211
	.word	-45376
	.word	40924
	.word	_Label_212
	.word	-45380
	.word	4
	.word	_Label_213
	.word	-49472
	.word	4092
	.word	_Label_214
	.word	-90396
	.word	40924
	.word	0
_Label_121:
	.ascii	"sleepingbarber\0"
	.align
_Label_122:
	.byte	'?'
	.ascii	"_temp_120\0"
	.align
_Label_123:
	.byte	'?'
	.ascii	"_temp_119\0"
	.align
_Label_124:
	.byte	'?'
	.ascii	"_temp_118\0"
	.align
_Label_125:
	.byte	'?'
	.ascii	"_temp_117\0"
	.align
_Label_126:
	.byte	'?'
	.ascii	"_temp_116\0"
	.align
_Label_127:
	.byte	'?'
	.ascii	"_temp_115\0"
	.align
_Label_128:
	.byte	'?'
	.ascii	"_temp_114\0"
	.align
_Label_129:
	.byte	'?'
	.ascii	"_temp_113\0"
	.align
_Label_130:
	.byte	'?'
	.ascii	"_temp_112\0"
	.align
_Label_131:
	.byte	'?'
	.ascii	"_temp_111\0"
	.align
_Label_132:
	.byte	'?'
	.ascii	"_temp_110\0"
	.align
_Label_133:
	.byte	'?'
	.ascii	"_temp_109\0"
	.align
_Label_134:
	.byte	'?'
	.ascii	"_temp_108\0"
	.align
_Label_135:
	.byte	'?'
	.ascii	"_temp_107\0"
	.align
_Label_136:
	.byte	'?'
	.ascii	"_temp_106\0"
	.align
_Label_137:
	.byte	'?'
	.ascii	"_temp_105\0"
	.align
_Label_138:
	.byte	'?'
	.ascii	"_temp_104\0"
	.align
_Label_139:
	.byte	'?'
	.ascii	"_temp_103\0"
	.align
_Label_140:
	.byte	'?'
	.ascii	"_temp_102\0"
	.align
_Label_141:
	.byte	'?'
	.ascii	"_temp_101\0"
	.align
_Label_142:
	.byte	'?'
	.ascii	"_temp_100\0"
	.align
_Label_143:
	.byte	'?'
	.ascii	"_temp_99\0"
	.align
_Label_144:
	.byte	'?'
	.ascii	"_temp_98\0"
	.align
_Label_145:
	.byte	'?'
	.ascii	"_temp_97\0"
	.align
_Label_146:
	.byte	'?'
	.ascii	"_temp_96\0"
	.align
_Label_147:
	.byte	'?'
	.ascii	"_temp_95\0"
	.align
_Label_148:
	.byte	'?'
	.ascii	"_temp_94\0"
	.align
_Label_149:
	.byte	'?'
	.ascii	"_temp_93\0"
	.align
_Label_150:
	.byte	'?'
	.ascii	"_temp_92\0"
	.align
_Label_151:
	.byte	'?'
	.ascii	"_temp_91\0"
	.align
_Label_152:
	.byte	'?'
	.ascii	"_temp_90\0"
	.align
_Label_153:
	.byte	'?'
	.ascii	"_temp_89\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_88\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_87\0"
	.align
_Label_156:
	.byte	'?'
	.ascii	"_temp_86\0"
	.align
_Label_157:
	.byte	'?'
	.ascii	"_temp_85\0"
	.align
_Label_158:
	.byte	'?'
	.ascii	"_temp_84\0"
	.align
_Label_159:
	.byte	'?'
	.ascii	"_temp_83\0"
	.align
_Label_160:
	.byte	'?'
	.ascii	"_temp_82\0"
	.align
_Label_161:
	.byte	'?'
	.ascii	"_temp_81\0"
	.align
_Label_162:
	.byte	'?'
	.ascii	"_temp_80\0"
	.align
_Label_163:
	.byte	'?'
	.ascii	"_temp_79\0"
	.align
_Label_164:
	.byte	'?'
	.ascii	"_temp_78\0"
	.align
_Label_165:
	.byte	'?'
	.ascii	"_temp_77\0"
	.align
_Label_166:
	.byte	'?'
	.ascii	"_temp_76\0"
	.align
_Label_167:
	.byte	'?'
	.ascii	"_temp_75\0"
	.align
_Label_168:
	.byte	'?'
	.ascii	"_temp_74\0"
	.align
_Label_169:
	.byte	'?'
	.ascii	"_temp_73\0"
	.align
_Label_170:
	.byte	'?'
	.ascii	"_temp_72\0"
	.align
_Label_171:
	.byte	'?'
	.ascii	"_temp_71\0"
	.align
_Label_172:
	.byte	'?'
	.ascii	"_temp_70\0"
	.align
_Label_173:
	.byte	'?'
	.ascii	"_temp_69\0"
	.align
_Label_174:
	.byte	'?'
	.ascii	"_temp_68\0"
	.align
_Label_175:
	.byte	'?'
	.ascii	"_temp_67\0"
	.align
_Label_176:
	.byte	'?'
	.ascii	"_temp_66\0"
	.align
_Label_177:
	.byte	'?'
	.ascii	"_temp_65\0"
	.align
_Label_178:
	.byte	'?'
	.ascii	"_temp_64\0"
	.align
_Label_179:
	.byte	'?'
	.ascii	"_temp_63\0"
	.align
_Label_180:
	.byte	'?'
	.ascii	"_temp_62\0"
	.align
_Label_181:
	.byte	'?'
	.ascii	"_temp_61\0"
	.align
_Label_182:
	.byte	'?'
	.ascii	"_temp_60\0"
	.align
_Label_183:
	.byte	'?'
	.ascii	"_temp_59\0"
	.align
_Label_184:
	.byte	'?'
	.ascii	"_temp_58\0"
	.align
_Label_185:
	.byte	'?'
	.ascii	"_temp_57\0"
	.align
_Label_186:
	.byte	'?'
	.ascii	"_temp_56\0"
	.align
_Label_187:
	.byte	'?'
	.ascii	"_temp_55\0"
	.align
_Label_188:
	.byte	'?'
	.ascii	"_temp_54\0"
	.align
_Label_189:
	.byte	'?'
	.ascii	"_temp_53\0"
	.align
_Label_190:
	.byte	'?'
	.ascii	"_temp_52\0"
	.align
_Label_191:
	.byte	'?'
	.ascii	"_temp_51\0"
	.align
_Label_192:
	.byte	'?'
	.ascii	"_temp_50\0"
	.align
_Label_193:
	.byte	'?'
	.ascii	"_temp_49\0"
	.align
_Label_194:
	.byte	'?'
	.ascii	"_temp_48\0"
	.align
_Label_195:
	.byte	'?'
	.ascii	"_temp_47\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_46\0"
	.align
_Label_197:
	.byte	'?'
	.ascii	"_temp_45\0"
	.align
_Label_198:
	.byte	'?'
	.ascii	"_temp_44\0"
	.align
_Label_199:
	.byte	'?'
	.ascii	"_temp_43\0"
	.align
_Label_200:
	.byte	'?'
	.ascii	"_temp_42\0"
	.align
_Label_201:
	.byte	'?'
	.ascii	"_temp_41\0"
	.align
_Label_202:
	.byte	'?'
	.ascii	"_temp_40\0"
	.align
_Label_203:
	.byte	'?'
	.ascii	"_temp_35\0"
	.align
_Label_204:
	.byte	'?'
	.ascii	"_temp_34\0"
	.align
_Label_205:
	.byte	'?'
	.ascii	"_temp_33\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_28\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_26\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_25\0"
	.align
_Label_209:
	.byte	'?'
	.ascii	"_temp_24\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_23\0"
	.align
_Label_211:
	.byte	'?'
	.ascii	"_temp_22\0"
	.align
_Label_212:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_213:
	.byte	'O'
	.ascii	"mainBarberThread\0"
	.align
_Label_214:
	.byte	'A'
	.ascii	"customersThread\0"
	.align
! 
! ===============  FUNCTION customers  ===============
! 
_P_Main_customers:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Main_customers,r1
	push	r1
	mov	180,r1
_Label_924:
	push	r0
	sub	r1,1,r1
	bne	_Label_924
	mov	125,r13		! source line 125
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! receivedCuts
!   receivedCuts = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-720]
! ASSIGNMENT STATEMENT...
	mov	128,r13		! source line 128
	mov	"\0\0AS",r10
!   receivedCuts = receivedCuts + 1		(int)
	load	[r14+-720],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-720]
! SEND STATEMENT...
	mov	129,r13		! source line 129
	mov	"\0\0SE",r10
!   _temp_215 = &_Global_lock
	set	_Global_lock,r1
	store	r1,[r14+-716]
!   Send message Lock
	load	[r14+-716],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	130,r13		! source line 130
	mov	"\0\0AS",r10
!   _temp_217 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-708]
!   _temp_218 = _temp_217 + 8
	load	[r14+-708],r1
	add	r1,8,r1
	store	r1,[r14+-704]
!   Data Move: _temp_216 = *_temp_218  (sizeInBytes=4)
	load	[r14+-704],r1
	load	[r1],r1
	store	r1,[r14+-712]
!   if intIsZero (_temp_216) then goto _runtimeErrorNullPointer
	load	[r14+-712],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_227 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-672]
!   Data Move: _temp_226 = *_temp_227  (sizeInBytes=4)
	load	[r14+-672],r1
	load	[r1],r1
	store	r1,[r14+-676]
!   if intIsZero (_temp_226) then goto _runtimeErrorNullPointer
	load	[r14+-676],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_226 [0 ] into _temp_228
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-676],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-668]
!   Data Move: _temp_225 = *_temp_228  (sizeInBytes=1)
	load	[r14+-668],r1
	loadb	[r1],r1
	storeb	r1,[r14+-28]
!   _temp_224 = charToInt (_temp_225)
	loadb	[r14+-28],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-680]
!   _temp_223 = _temp_224 - 48		(int)
	load	[r14+-680],r1
	mov	48,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-684]
!   _temp_222 = _temp_223 * 10		(int)
	load	[r14+-684],r1
	mov	10,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-688]
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_232 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-656]
!   Data Move: _temp_231 = *_temp_232  (sizeInBytes=4)
	load	[r14+-656],r1
	load	[r1],r1
	store	r1,[r14+-660]
!   if intIsZero (_temp_231) then goto _runtimeErrorNullPointer
	load	[r14+-660],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_231 [1 ] into _temp_233
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-660],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-652]
!   Data Move: _temp_230 = *_temp_233  (sizeInBytes=1)
	load	[r14+-652],r1
	loadb	[r1],r1
	storeb	r1,[r14+-27]
!   _temp_229 = charToInt (_temp_230)
	loadb	[r14+-27],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-664]
!   _temp_221 = _temp_222 + _temp_229		(int)
	load	[r14+-688],r1
	load	[r14+-664],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-692]
!   _temp_220 = _temp_221 - 48		(int)
	load	[r14+-692],r1
	mov	48,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-696]
!   _temp_219 = _temp_220 - 1		(int)
	load	[r14+-696],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-700]
!   Move address of _temp_216 [_temp_219 ] into _temp_234
!     make sure index expr is >= 0
	load	[r14+-700],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-712],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-648]
!   Data Move: *_temp_234 = 69  (sizeInBytes=1)
	mov	69,r1
	load	[r14+-648],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	131,r13		! source line 131
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_243 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-616]
!   Data Move: _temp_242 = *_temp_243  (sizeInBytes=4)
	load	[r14+-616],r1
	load	[r1],r1
	store	r1,[r14+-620]
!   if intIsZero (_temp_242) then goto _runtimeErrorNullPointer
	load	[r14+-620],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_242 [0 ] into _temp_244
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-620],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-612]
!   Data Move: _temp_241 = *_temp_244  (sizeInBytes=1)
	load	[r14+-612],r1
	loadb	[r1],r1
	storeb	r1,[r14+-26]
!   _temp_240 = charToInt (_temp_241)
	loadb	[r14+-26],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-624]
!   _temp_239 = _temp_240 - 48		(int)
	load	[r14+-624],r1
	mov	48,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-628]
!   _temp_238 = _temp_239 * 10		(int)
	load	[r14+-628],r1
	mov	10,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-632]
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_248 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-600]
!   Data Move: _temp_247 = *_temp_248  (sizeInBytes=4)
	load	[r14+-600],r1
	load	[r1],r1
	store	r1,[r14+-604]
!   if intIsZero (_temp_247) then goto _runtimeErrorNullPointer
	load	[r14+-604],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_247 [1 ] into _temp_249
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-604],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-596]
!   Data Move: _temp_246 = *_temp_249  (sizeInBytes=1)
	load	[r14+-596],r1
	loadb	[r1],r1
	storeb	r1,[r14+-25]
!   _temp_245 = charToInt (_temp_246)
	loadb	[r14+-25],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-608]
!   _temp_237 = _temp_238 + _temp_245		(int)
	load	[r14+-632],r1
	load	[r14+-608],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-636]
!   _temp_236 = _temp_237 - 48		(int)
	load	[r14+-636],r1
	mov	48,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-640]
!   _temp_235 = _temp_236 - 1		(int)
	load	[r14+-640],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-644]
!   _temp_250 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-592]
!   Prepare Argument: offset=12  value=_temp_235  sizeInBytes=4
	load	[r14+-644],r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-592],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	133,r13		! source line 133
	mov	"\0\0IF",r10
!   _temp_254 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-584]
!   _temp_255 = _temp_254 + 12
	load	[r14+-584],r1
	add	r1,12,r1
	store	r1,[r14+-580]
!   Data Move: _temp_253 = *_temp_255  (sizeInBytes=4)
	load	[r14+-580],r1
	load	[r1],r1
	store	r1,[r14+-588]
!   if _temp_253 >= 5 then goto _Label_252		(int)
	load	[r14+-588],r1
	mov	5,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_252
!	jmp	_Label_251
_Label_251:
! THEN...
	mov	134,r13		! source line 134
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	134,r13		! source line 134
	mov	"\0\0AS",r10
!   _temp_256 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-576]
!   _temp_257 = _temp_256 + 12
	load	[r14+-576],r1
	add	r1,12,r1
	store	r1,[r14+-572]
!   _temp_260 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-560]
!   _temp_261 = _temp_260 + 12
	load	[r14+-560],r1
	add	r1,12,r1
	store	r1,[r14+-556]
!   Data Move: _temp_259 = *_temp_261  (sizeInBytes=4)
	load	[r14+-556],r1
	load	[r1],r1
	store	r1,[r14+-564]
!   _temp_258 = _temp_259 + 1		(int)
	load	[r14+-564],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-568]
!   Data Move: *_temp_257 = _temp_258  (sizeInBytes=4)
	load	[r14+-568],r1
	load	[r14+-572],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	135,r13		! source line 135
	mov	"\0\0AS",r10
!   _temp_263 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-548]
!   _temp_264 = _temp_263 + 8
	load	[r14+-548],r1
	add	r1,8,r1
	store	r1,[r14+-544]
!   Data Move: _temp_262 = *_temp_264  (sizeInBytes=4)
	load	[r14+-544],r1
	load	[r1],r1
	store	r1,[r14+-552]
!   if intIsZero (_temp_262) then goto _runtimeErrorNullPointer
	load	[r14+-552],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_273 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-512]
!   Data Move: _temp_272 = *_temp_273  (sizeInBytes=4)
	load	[r14+-512],r1
	load	[r1],r1
	store	r1,[r14+-516]
!   if intIsZero (_temp_272) then goto _runtimeErrorNullPointer
	load	[r14+-516],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_272 [0 ] into _temp_274
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-516],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-508]
!   Data Move: _temp_271 = *_temp_274  (sizeInBytes=1)
	load	[r14+-508],r1
	loadb	[r1],r1
	storeb	r1,[r14+-24]
!   _temp_270 = charToInt (_temp_271)
	loadb	[r14+-24],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-520]
!   _temp_269 = _temp_270 - 48		(int)
	load	[r14+-520],r1
	mov	48,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-524]
!   _temp_268 = _temp_269 * 10		(int)
	load	[r14+-524],r1
	mov	10,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-528]
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_278 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-496]
!   Data Move: _temp_277 = *_temp_278  (sizeInBytes=4)
	load	[r14+-496],r1
	load	[r1],r1
	store	r1,[r14+-500]
!   if intIsZero (_temp_277) then goto _runtimeErrorNullPointer
	load	[r14+-500],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_277 [1 ] into _temp_279
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-500],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-492]
!   Data Move: _temp_276 = *_temp_279  (sizeInBytes=1)
	load	[r14+-492],r1
	loadb	[r1],r1
	storeb	r1,[r14+-23]
!   _temp_275 = charToInt (_temp_276)
	loadb	[r14+-23],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-504]
!   _temp_267 = _temp_268 + _temp_275		(int)
	load	[r14+-528],r1
	load	[r14+-504],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-532]
!   _temp_266 = _temp_267 - 48		(int)
	load	[r14+-532],r1
	mov	48,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-536]
!   _temp_265 = _temp_266 - 1		(int)
	load	[r14+-536],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-540]
!   Move address of _temp_262 [_temp_265 ] into _temp_280
!     make sure index expr is >= 0
	load	[r14+-540],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-552],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-488]
!   Data Move: *_temp_280 = 83  (sizeInBytes=1)
	mov	83,r1
	load	[r14+-488],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	136,r13		! source line 136
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_289 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-456]
!   Data Move: _temp_288 = *_temp_289  (sizeInBytes=4)
	load	[r14+-456],r1
	load	[r1],r1
	store	r1,[r14+-460]
!   if intIsZero (_temp_288) then goto _runtimeErrorNullPointer
	load	[r14+-460],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_288 [0 ] into _temp_290
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-460],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-452]
!   Data Move: _temp_287 = *_temp_290  (sizeInBytes=1)
	load	[r14+-452],r1
	loadb	[r1],r1
	storeb	r1,[r14+-22]
!   _temp_286 = charToInt (_temp_287)
	loadb	[r14+-22],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-464]
!   _temp_285 = _temp_286 - 48		(int)
	load	[r14+-464],r1
	mov	48,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-468]
!   _temp_284 = _temp_285 * 10		(int)
	load	[r14+-468],r1
	mov	10,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-472]
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_294 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-440]
!   Data Move: _temp_293 = *_temp_294  (sizeInBytes=4)
	load	[r14+-440],r1
	load	[r1],r1
	store	r1,[r14+-444]
!   if intIsZero (_temp_293) then goto _runtimeErrorNullPointer
	load	[r14+-444],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_293 [1 ] into _temp_295
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-444],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-436]
!   Data Move: _temp_292 = *_temp_295  (sizeInBytes=1)
	load	[r14+-436],r1
	loadb	[r1],r1
	storeb	r1,[r14+-21]
!   _temp_291 = charToInt (_temp_292)
	loadb	[r14+-21],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-448]
!   _temp_283 = _temp_284 + _temp_291		(int)
	load	[r14+-472],r1
	load	[r14+-448],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-476]
!   _temp_282 = _temp_283 - 48		(int)
	load	[r14+-476],r1
	mov	48,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-480]
!   _temp_281 = _temp_282 - 1		(int)
	load	[r14+-480],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-484]
!   _temp_296 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-432]
!   Prepare Argument: offset=12  value=_temp_281  sizeInBytes=4
	load	[r14+-484],r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-432],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	137,r13		! source line 137
	mov	"\0\0SE",r10
!   _temp_297 = &_Global_lock
	set	_Global_lock,r1
	store	r1,[r14+-428]
!   Send message Unlock
	load	[r14+-428],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	139,r13		! source line 139
	mov	"\0\0SE",r10
!   _temp_298 = &_Global_customerSem
	set	_Global_customerSem,r1
	store	r1,[r14+-424]
!   Send message Up
	load	[r14+-424],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	140,r13		! source line 140
	mov	"\0\0SE",r10
!   _temp_299 = &_Global_barberSem
	set	_Global_barberSem,r1
	store	r1,[r14+-420]
!   Send message Down
	load	[r14+-420],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	142,r13		! source line 142
	mov	"\0\0AS",r10
!   _temp_301 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-412]
!   _temp_302 = _temp_301 + 8
	load	[r14+-412],r1
	add	r1,8,r1
	store	r1,[r14+-408]
!   Data Move: _temp_300 = *_temp_302  (sizeInBytes=4)
	load	[r14+-408],r1
	load	[r1],r1
	store	r1,[r14+-416]
!   if intIsZero (_temp_300) then goto _runtimeErrorNullPointer
	load	[r14+-416],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_311 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-376]
!   Data Move: _temp_310 = *_temp_311  (sizeInBytes=4)
	load	[r14+-376],r1
	load	[r1],r1
	store	r1,[r14+-380]
!   if intIsZero (_temp_310) then goto _runtimeErrorNullPointer
	load	[r14+-380],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_310 [0 ] into _temp_312
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-380],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-372]
!   Data Move: _temp_309 = *_temp_312  (sizeInBytes=1)
	load	[r14+-372],r1
	loadb	[r1],r1
	storeb	r1,[r14+-20]
!   _temp_308 = charToInt (_temp_309)
	loadb	[r14+-20],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-384]
!   _temp_307 = _temp_308 - 48		(int)
	load	[r14+-384],r1
	mov	48,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-388]
!   _temp_306 = _temp_307 * 10		(int)
	load	[r14+-388],r1
	mov	10,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_316 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-360]
!   Data Move: _temp_315 = *_temp_316  (sizeInBytes=4)
	load	[r14+-360],r1
	load	[r1],r1
	store	r1,[r14+-364]
!   if intIsZero (_temp_315) then goto _runtimeErrorNullPointer
	load	[r14+-364],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_315 [1 ] into _temp_317
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-364],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-356]
!   Data Move: _temp_314 = *_temp_317  (sizeInBytes=1)
	load	[r14+-356],r1
	loadb	[r1],r1
	storeb	r1,[r14+-19]
!   _temp_313 = charToInt (_temp_314)
	loadb	[r14+-19],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-368]
!   _temp_305 = _temp_306 + _temp_313		(int)
	load	[r14+-392],r1
	load	[r14+-368],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-396]
!   _temp_304 = _temp_305 - 48		(int)
	load	[r14+-396],r1
	mov	48,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-400]
!   _temp_303 = _temp_304 - 1		(int)
	load	[r14+-400],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-404]
!   Move address of _temp_300 [_temp_303 ] into _temp_318
!     make sure index expr is >= 0
	load	[r14+-404],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-416],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-352]
!   Data Move: *_temp_318 = 66  (sizeInBytes=1)
	mov	66,r1
	load	[r14+-352],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	143,r13		! source line 143
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_327 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-320]
!   Data Move: _temp_326 = *_temp_327  (sizeInBytes=4)
	load	[r14+-320],r1
	load	[r1],r1
	store	r1,[r14+-324]
!   if intIsZero (_temp_326) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_326 [0 ] into _temp_328
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-324],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-316]
!   Data Move: _temp_325 = *_temp_328  (sizeInBytes=1)
	load	[r14+-316],r1
	loadb	[r1],r1
	storeb	r1,[r14+-18]
!   _temp_324 = charToInt (_temp_325)
	loadb	[r14+-18],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-328]
!   _temp_323 = _temp_324 - 48		(int)
	load	[r14+-328],r1
	mov	48,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-332]
!   _temp_322 = _temp_323 * 10		(int)
	load	[r14+-332],r1
	mov	10,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-336]
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_332 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-304]
!   Data Move: _temp_331 = *_temp_332  (sizeInBytes=4)
	load	[r14+-304],r1
	load	[r1],r1
	store	r1,[r14+-308]
!   if intIsZero (_temp_331) then goto _runtimeErrorNullPointer
	load	[r14+-308],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_331 [1 ] into _temp_333
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-308],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-300]
!   Data Move: _temp_330 = *_temp_333  (sizeInBytes=1)
	load	[r14+-300],r1
	loadb	[r1],r1
	storeb	r1,[r14+-17]
!   _temp_329 = charToInt (_temp_330)
	loadb	[r14+-17],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-312]
!   _temp_321 = _temp_322 + _temp_329		(int)
	load	[r14+-336],r1
	load	[r14+-312],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-340]
!   _temp_320 = _temp_321 - 48		(int)
	load	[r14+-340],r1
	mov	48,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-344]
!   _temp_319 = _temp_320 - 1		(int)
	load	[r14+-344],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-348]
!   _temp_334 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-296]
!   Prepare Argument: offset=12  value=_temp_319  sizeInBytes=4
	load	[r14+-348],r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-296],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0SE",r10
!   _temp_335 = &_Global_cuttingHair
	set	_Global_cuttingHair,r1
	store	r1,[r14+-292]
!   Send message Up
	load	[r14+-292],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	145,r13		! source line 145
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	147,r13		! source line 147
	mov	"\0\0AS",r10
!   _temp_337 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-284]
!   _temp_338 = _temp_337 + 8
	load	[r14+-284],r1
	add	r1,8,r1
	store	r1,[r14+-280]
!   Data Move: _temp_336 = *_temp_338  (sizeInBytes=4)
	load	[r14+-280],r1
	load	[r1],r1
	store	r1,[r14+-288]
!   if intIsZero (_temp_336) then goto _runtimeErrorNullPointer
	load	[r14+-288],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_347 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-248]
!   Data Move: _temp_346 = *_temp_347  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r1],r1
	store	r1,[r14+-252]
!   if intIsZero (_temp_346) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_346 [0 ] into _temp_348
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-252],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-244]
!   Data Move: _temp_345 = *_temp_348  (sizeInBytes=1)
	load	[r14+-244],r1
	loadb	[r1],r1
	storeb	r1,[r14+-16]
!   _temp_344 = charToInt (_temp_345)
	loadb	[r14+-16],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-256]
!   _temp_343 = _temp_344 - 48		(int)
	load	[r14+-256],r1
	mov	48,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
!   _temp_342 = _temp_343 * 10		(int)
	load	[r14+-260],r1
	mov	10,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_352 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-232]
!   Data Move: _temp_351 = *_temp_352  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r1],r1
	store	r1,[r14+-236]
!   if intIsZero (_temp_351) then goto _runtimeErrorNullPointer
	load	[r14+-236],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_351 [1 ] into _temp_353
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-236],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-228]
!   Data Move: _temp_350 = *_temp_353  (sizeInBytes=1)
	load	[r14+-228],r1
	loadb	[r1],r1
	storeb	r1,[r14+-15]
!   _temp_349 = charToInt (_temp_350)
	loadb	[r14+-15],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-240]
!   _temp_341 = _temp_342 + _temp_349		(int)
	load	[r14+-264],r1
	load	[r14+-240],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
!   _temp_340 = _temp_341 - 48		(int)
	load	[r14+-268],r1
	mov	48,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
!   _temp_339 = _temp_340 - 1		(int)
	load	[r14+-272],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
!   Move address of _temp_336 [_temp_339 ] into _temp_354
!     make sure index expr is >= 0
	load	[r14+-276],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-288],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-224]
!   Data Move: *_temp_354 = 70  (sizeInBytes=1)
	mov	70,r1
	load	[r14+-224],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_363 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-192]
!   Data Move: _temp_362 = *_temp_363  (sizeInBytes=4)
	load	[r14+-192],r1
	load	[r1],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_362) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_362 [0 ] into _temp_364
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-196],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-188]
!   Data Move: _temp_361 = *_temp_364  (sizeInBytes=1)
	load	[r14+-188],r1
	loadb	[r1],r1
	storeb	r1,[r14+-14]
!   _temp_360 = charToInt (_temp_361)
	loadb	[r14+-14],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-200]
!   _temp_359 = _temp_360 - 48		(int)
	load	[r14+-200],r1
	mov	48,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-204]
!   _temp_358 = _temp_359 * 10		(int)
	load	[r14+-204],r1
	mov	10,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-208]
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_368 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-176]
!   Data Move: _temp_367 = *_temp_368  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_367) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_367 [1 ] into _temp_369
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-180],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
!   Data Move: _temp_366 = *_temp_369  (sizeInBytes=1)
	load	[r14+-172],r1
	loadb	[r1],r1
	storeb	r1,[r14+-13]
!   _temp_365 = charToInt (_temp_366)
	loadb	[r14+-13],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-184]
!   _temp_357 = _temp_358 + _temp_365		(int)
	load	[r14+-208],r1
	load	[r14+-184],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
!   _temp_356 = _temp_357 - 48		(int)
	load	[r14+-212],r1
	mov	48,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-216]
!   _temp_355 = _temp_356 - 1		(int)
	load	[r14+-216],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-220]
!   _temp_370 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=12  value=_temp_355  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0SE",r10
!   _temp_371 = &_Global_cuttingHair
	set	_Global_cuttingHair,r1
	store	r1,[r14+-164]
!   Send message Up
	load	[r14+-164],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	150,r13		! source line 150
	mov	"\0\0SE",r10
!   _temp_372 = &_Global_doneHair
	set	_Global_doneHair,r1
	store	r1,[r14+-160]
!   Send message Down
	load	[r14+-160],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_373
_Label_252:
! ELSE...
	mov	152,r13		! source line 152
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	152,r13		! source line 152
	mov	"\0\0SE",r10
!   _temp_374 = &_Global_lock
	set	_Global_lock,r1
	store	r1,[r14+-156]
!   Send message Unlock
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_373:
! ASSIGNMENT STATEMENT...
	mov	155,r13		! source line 155
	mov	"\0\0AS",r10
!   _temp_376 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-148]
!   _temp_377 = _temp_376 + 8
	load	[r14+-148],r1
	add	r1,8,r1
	store	r1,[r14+-144]
!   Data Move: _temp_375 = *_temp_377  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_375) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_386 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-112]
!   Data Move: _temp_385 = *_temp_386  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_385) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_385 [0 ] into _temp_387
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-116],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   Data Move: _temp_384 = *_temp_387  (sizeInBytes=1)
	load	[r14+-108],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   _temp_383 = charToInt (_temp_384)
	loadb	[r14+-12],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-120]
!   _temp_382 = _temp_383 - 48		(int)
	load	[r14+-120],r1
	mov	48,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_381 = _temp_382 * 10		(int)
	load	[r14+-124],r1
	mov	10,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_391 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-96]
!   Data Move: _temp_390 = *_temp_391  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_390) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_390 [1 ] into _temp_392
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-92]
!   Data Move: _temp_389 = *_temp_392  (sizeInBytes=1)
	load	[r14+-92],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   _temp_388 = charToInt (_temp_389)
	loadb	[r14+-11],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-104]
!   _temp_380 = _temp_381 + _temp_388		(int)
	load	[r14+-128],r1
	load	[r14+-104],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-132]
!   _temp_379 = _temp_380 - 48		(int)
	load	[r14+-132],r1
	mov	48,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   _temp_378 = _temp_379 - 1		(int)
	load	[r14+-136],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
!   Move address of _temp_375 [_temp_378 ] into _temp_393
!     make sure index expr is >= 0
	load	[r14+-140],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-152],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   Data Move: *_temp_393 = 76  (sizeInBytes=1)
	mov	76,r1
	load	[r14+-88],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	156,r13		! source line 156
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_402 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-56]
!   Data Move: _temp_401 = *_temp_402  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_401) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_401 [0 ] into _temp_403
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   Data Move: _temp_400 = *_temp_403  (sizeInBytes=1)
	load	[r14+-52],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   _temp_399 = charToInt (_temp_400)
	loadb	[r14+-10],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-64]
!   _temp_398 = _temp_399 - 48		(int)
	load	[r14+-64],r1
	mov	48,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
!   _temp_397 = _temp_398 * 10		(int)
	load	[r14+-68],r1
	mov	10,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_407 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-40]
!   Data Move: _temp_406 = *_temp_407  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_406) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_406 [1 ] into _temp_408
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Data Move: _temp_405 = *_temp_408  (sizeInBytes=1)
	load	[r14+-36],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   _temp_404 = charToInt (_temp_405)
	loadb	[r14+-9],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-48]
!   _temp_396 = _temp_397 + _temp_404		(int)
	load	[r14+-72],r1
	load	[r14+-48],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
!   _temp_395 = _temp_396 - 48		(int)
	load	[r14+-76],r1
	mov	48,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   _temp_394 = _temp_395 - 1		(int)
	load	[r14+-80],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
!   _temp_409 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_394  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! RETURN STATEMENT...
	mov	156,r13		! source line 156
	mov	"\0\0RE",r10
	add	r15,724,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Main_customers:
	.word	_sourceFileName
	.word	_Label_410
	.word	0		! total size of parameters
	.word	720		! frame size = 720
	.word	_Label_411
	.word	-32
	.word	4
	.word	_Label_412
	.word	-36
	.word	4
	.word	_Label_413
	.word	-40
	.word	4
	.word	_Label_414
	.word	-44
	.word	4
	.word	_Label_415
	.word	-9
	.word	1
	.word	_Label_416
	.word	-48
	.word	4
	.word	_Label_417
	.word	-52
	.word	4
	.word	_Label_418
	.word	-56
	.word	4
	.word	_Label_419
	.word	-60
	.word	4
	.word	_Label_420
	.word	-10
	.word	1
	.word	_Label_421
	.word	-64
	.word	4
	.word	_Label_422
	.word	-68
	.word	4
	.word	_Label_423
	.word	-72
	.word	4
	.word	_Label_424
	.word	-76
	.word	4
	.word	_Label_425
	.word	-80
	.word	4
	.word	_Label_426
	.word	-84
	.word	4
	.word	_Label_427
	.word	-88
	.word	4
	.word	_Label_428
	.word	-92
	.word	4
	.word	_Label_429
	.word	-96
	.word	4
	.word	_Label_430
	.word	-100
	.word	4
	.word	_Label_431
	.word	-11
	.word	1
	.word	_Label_432
	.word	-104
	.word	4
	.word	_Label_433
	.word	-108
	.word	4
	.word	_Label_434
	.word	-112
	.word	4
	.word	_Label_435
	.word	-116
	.word	4
	.word	_Label_436
	.word	-12
	.word	1
	.word	_Label_437
	.word	-120
	.word	4
	.word	_Label_438
	.word	-124
	.word	4
	.word	_Label_439
	.word	-128
	.word	4
	.word	_Label_440
	.word	-132
	.word	4
	.word	_Label_441
	.word	-136
	.word	4
	.word	_Label_442
	.word	-140
	.word	4
	.word	_Label_443
	.word	-144
	.word	4
	.word	_Label_444
	.word	-148
	.word	4
	.word	_Label_445
	.word	-152
	.word	4
	.word	_Label_446
	.word	-156
	.word	4
	.word	_Label_447
	.word	-160
	.word	4
	.word	_Label_448
	.word	-164
	.word	4
	.word	_Label_449
	.word	-168
	.word	4
	.word	_Label_450
	.word	-172
	.word	4
	.word	_Label_451
	.word	-176
	.word	4
	.word	_Label_452
	.word	-180
	.word	4
	.word	_Label_453
	.word	-13
	.word	1
	.word	_Label_454
	.word	-184
	.word	4
	.word	_Label_455
	.word	-188
	.word	4
	.word	_Label_456
	.word	-192
	.word	4
	.word	_Label_457
	.word	-196
	.word	4
	.word	_Label_458
	.word	-14
	.word	1
	.word	_Label_459
	.word	-200
	.word	4
	.word	_Label_460
	.word	-204
	.word	4
	.word	_Label_461
	.word	-208
	.word	4
	.word	_Label_462
	.word	-212
	.word	4
	.word	_Label_463
	.word	-216
	.word	4
	.word	_Label_464
	.word	-220
	.word	4
	.word	_Label_465
	.word	-224
	.word	4
	.word	_Label_466
	.word	-228
	.word	4
	.word	_Label_467
	.word	-232
	.word	4
	.word	_Label_468
	.word	-236
	.word	4
	.word	_Label_469
	.word	-15
	.word	1
	.word	_Label_470
	.word	-240
	.word	4
	.word	_Label_471
	.word	-244
	.word	4
	.word	_Label_472
	.word	-248
	.word	4
	.word	_Label_473
	.word	-252
	.word	4
	.word	_Label_474
	.word	-16
	.word	1
	.word	_Label_475
	.word	-256
	.word	4
	.word	_Label_476
	.word	-260
	.word	4
	.word	_Label_477
	.word	-264
	.word	4
	.word	_Label_478
	.word	-268
	.word	4
	.word	_Label_479
	.word	-272
	.word	4
	.word	_Label_480
	.word	-276
	.word	4
	.word	_Label_481
	.word	-280
	.word	4
	.word	_Label_482
	.word	-284
	.word	4
	.word	_Label_483
	.word	-288
	.word	4
	.word	_Label_484
	.word	-292
	.word	4
	.word	_Label_485
	.word	-296
	.word	4
	.word	_Label_486
	.word	-300
	.word	4
	.word	_Label_487
	.word	-304
	.word	4
	.word	_Label_488
	.word	-308
	.word	4
	.word	_Label_489
	.word	-17
	.word	1
	.word	_Label_490
	.word	-312
	.word	4
	.word	_Label_491
	.word	-316
	.word	4
	.word	_Label_492
	.word	-320
	.word	4
	.word	_Label_493
	.word	-324
	.word	4
	.word	_Label_494
	.word	-18
	.word	1
	.word	_Label_495
	.word	-328
	.word	4
	.word	_Label_496
	.word	-332
	.word	4
	.word	_Label_497
	.word	-336
	.word	4
	.word	_Label_498
	.word	-340
	.word	4
	.word	_Label_499
	.word	-344
	.word	4
	.word	_Label_500
	.word	-348
	.word	4
	.word	_Label_501
	.word	-352
	.word	4
	.word	_Label_502
	.word	-356
	.word	4
	.word	_Label_503
	.word	-360
	.word	4
	.word	_Label_504
	.word	-364
	.word	4
	.word	_Label_505
	.word	-19
	.word	1
	.word	_Label_506
	.word	-368
	.word	4
	.word	_Label_507
	.word	-372
	.word	4
	.word	_Label_508
	.word	-376
	.word	4
	.word	_Label_509
	.word	-380
	.word	4
	.word	_Label_510
	.word	-20
	.word	1
	.word	_Label_511
	.word	-384
	.word	4
	.word	_Label_512
	.word	-388
	.word	4
	.word	_Label_513
	.word	-392
	.word	4
	.word	_Label_514
	.word	-396
	.word	4
	.word	_Label_515
	.word	-400
	.word	4
	.word	_Label_516
	.word	-404
	.word	4
	.word	_Label_517
	.word	-408
	.word	4
	.word	_Label_518
	.word	-412
	.word	4
	.word	_Label_519
	.word	-416
	.word	4
	.word	_Label_520
	.word	-420
	.word	4
	.word	_Label_521
	.word	-424
	.word	4
	.word	_Label_522
	.word	-428
	.word	4
	.word	_Label_523
	.word	-432
	.word	4
	.word	_Label_524
	.word	-436
	.word	4
	.word	_Label_525
	.word	-440
	.word	4
	.word	_Label_526
	.word	-444
	.word	4
	.word	_Label_527
	.word	-21
	.word	1
	.word	_Label_528
	.word	-448
	.word	4
	.word	_Label_529
	.word	-452
	.word	4
	.word	_Label_530
	.word	-456
	.word	4
	.word	_Label_531
	.word	-460
	.word	4
	.word	_Label_532
	.word	-22
	.word	1
	.word	_Label_533
	.word	-464
	.word	4
	.word	_Label_534
	.word	-468
	.word	4
	.word	_Label_535
	.word	-472
	.word	4
	.word	_Label_536
	.word	-476
	.word	4
	.word	_Label_537
	.word	-480
	.word	4
	.word	_Label_538
	.word	-484
	.word	4
	.word	_Label_539
	.word	-488
	.word	4
	.word	_Label_540
	.word	-492
	.word	4
	.word	_Label_541
	.word	-496
	.word	4
	.word	_Label_542
	.word	-500
	.word	4
	.word	_Label_543
	.word	-23
	.word	1
	.word	_Label_544
	.word	-504
	.word	4
	.word	_Label_545
	.word	-508
	.word	4
	.word	_Label_546
	.word	-512
	.word	4
	.word	_Label_547
	.word	-516
	.word	4
	.word	_Label_548
	.word	-24
	.word	1
	.word	_Label_549
	.word	-520
	.word	4
	.word	_Label_550
	.word	-524
	.word	4
	.word	_Label_551
	.word	-528
	.word	4
	.word	_Label_552
	.word	-532
	.word	4
	.word	_Label_553
	.word	-536
	.word	4
	.word	_Label_554
	.word	-540
	.word	4
	.word	_Label_555
	.word	-544
	.word	4
	.word	_Label_556
	.word	-548
	.word	4
	.word	_Label_557
	.word	-552
	.word	4
	.word	_Label_558
	.word	-556
	.word	4
	.word	_Label_559
	.word	-560
	.word	4
	.word	_Label_560
	.word	-564
	.word	4
	.word	_Label_561
	.word	-568
	.word	4
	.word	_Label_562
	.word	-572
	.word	4
	.word	_Label_563
	.word	-576
	.word	4
	.word	_Label_564
	.word	-580
	.word	4
	.word	_Label_565
	.word	-584
	.word	4
	.word	_Label_566
	.word	-588
	.word	4
	.word	_Label_567
	.word	-592
	.word	4
	.word	_Label_568
	.word	-596
	.word	4
	.word	_Label_569
	.word	-600
	.word	4
	.word	_Label_570
	.word	-604
	.word	4
	.word	_Label_571
	.word	-25
	.word	1
	.word	_Label_572
	.word	-608
	.word	4
	.word	_Label_573
	.word	-612
	.word	4
	.word	_Label_574
	.word	-616
	.word	4
	.word	_Label_575
	.word	-620
	.word	4
	.word	_Label_576
	.word	-26
	.word	1
	.word	_Label_577
	.word	-624
	.word	4
	.word	_Label_578
	.word	-628
	.word	4
	.word	_Label_579
	.word	-632
	.word	4
	.word	_Label_580
	.word	-636
	.word	4
	.word	_Label_581
	.word	-640
	.word	4
	.word	_Label_582
	.word	-644
	.word	4
	.word	_Label_583
	.word	-648
	.word	4
	.word	_Label_584
	.word	-652
	.word	4
	.word	_Label_585
	.word	-656
	.word	4
	.word	_Label_586
	.word	-660
	.word	4
	.word	_Label_587
	.word	-27
	.word	1
	.word	_Label_588
	.word	-664
	.word	4
	.word	_Label_589
	.word	-668
	.word	4
	.word	_Label_590
	.word	-672
	.word	4
	.word	_Label_591
	.word	-676
	.word	4
	.word	_Label_592
	.word	-28
	.word	1
	.word	_Label_593
	.word	-680
	.word	4
	.word	_Label_594
	.word	-684
	.word	4
	.word	_Label_595
	.word	-688
	.word	4
	.word	_Label_596
	.word	-692
	.word	4
	.word	_Label_597
	.word	-696
	.word	4
	.word	_Label_598
	.word	-700
	.word	4
	.word	_Label_599
	.word	-704
	.word	4
	.word	_Label_600
	.word	-708
	.word	4
	.word	_Label_601
	.word	-712
	.word	4
	.word	_Label_602
	.word	-716
	.word	4
	.word	_Label_603
	.word	-720
	.word	4
	.word	0
_Label_410:
	.ascii	"customers\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_406\0"
	.align
_Label_415:
	.byte	'C'
	.ascii	"_temp_405\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_403\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_420:
	.byte	'C'
	.ascii	"_temp_400\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_431:
	.byte	'C'
	.ascii	"_temp_389\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_435:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_436:
	.byte	'C'
	.ascii	"_temp_384\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_441:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_444:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_447:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_453:
	.byte	'C'
	.ascii	"_temp_366\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_458:
	.byte	'C'
	.ascii	"_temp_361\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_469:
	.byte	'C'
	.ascii	"_temp_350\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_474:
	.byte	'C'
	.ascii	"_temp_345\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_489:
	.byte	'C'
	.ascii	"_temp_330\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_329\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_494:
	.byte	'C'
	.ascii	"_temp_325\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_505:
	.byte	'C'
	.ascii	"_temp_314\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_510:
	.byte	'C'
	.ascii	"_temp_309\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_521:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_522:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_527:
	.byte	'C'
	.ascii	"_temp_292\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_532:
	.byte	'C'
	.ascii	"_temp_287\0"
	.align
_Label_533:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_534:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_535:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_536:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_539:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_541:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_543:
	.byte	'C'
	.ascii	"_temp_276\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_548:
	.byte	'C'
	.ascii	"_temp_271\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_550:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_551:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_552:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_553:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_554:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_555:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_556:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_557:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_561:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_563:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_571:
	.byte	'C'
	.ascii	"_temp_246\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_576:
	.byte	'C'
	.ascii	"_temp_241\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_585:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_586:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_587:
	.byte	'C'
	.ascii	"_temp_230\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_591:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_592:
	.byte	'C'
	.ascii	"_temp_225\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_603:
	.byte	'I'
	.ascii	"receivedCuts\0"
	.align
! 
! ===============  FUNCTION barber  ===============
! 
_P_Main_barber:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Main_barber,r1
	push	r1
	mov	20,r1
_Label_925:
	push	r0
	sub	r1,1,r1
	bne	_Label_925
	mov	159,r13		! source line 159
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	160,r13		! source line 160
	mov	"\0\0WH",r10
_Label_604:
!	jmp	_Label_605
_Label_605:
	mov	160,r13		! source line 160
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	161,r13		! source line 161
	mov	"\0\0SE",r10
!   _temp_607 = &_Global_customerSem
	set	_Global_customerSem,r1
	store	r1,[r14+-84]
!   Send message Down
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	162,r13		! source line 162
	mov	"\0\0SE",r10
!   _temp_608 = &_Global_lock
	set	_Global_lock,r1
	store	r1,[r14+-80]
!   Send message Lock
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	163,r13		! source line 163
	mov	"\0\0AS",r10
!   _temp_609 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-76]
!   _temp_610 = _temp_609 + 12
	load	[r14+-76],r1
	add	r1,12,r1
	store	r1,[r14+-72]
!   _temp_613 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-60]
!   _temp_614 = _temp_613 + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-56]
!   Data Move: _temp_612 = *_temp_614  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   _temp_611 = _temp_612 - 1		(int)
	load	[r14+-64],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
!   Data Move: *_temp_610 = _temp_611  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r14+-72],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0SE",r10
!   _temp_615 = &_Global_lock
	set	_Global_lock,r1
	store	r1,[r14+-52]
!   Send message Unlock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0AS",r10
!   _temp_616 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-48]
!   _temp_617 = _temp_616 + 4
	load	[r14+-48],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_617 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-44],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	167,r13		! source line 167
	mov	"\0\0SE",r10
!   _temp_618 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-40]
!   Send message printBarberStatus
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	168,r13		! source line 168
	mov	"\0\0SE",r10
!   _temp_619 = &_Global_barberSem
	set	_Global_barberSem,r1
	store	r1,[r14+-36]
!   Send message Up
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	170,r13		! source line 170
	mov	"\0\0SE",r10
!   _temp_620 = &_Global_cuttingHair
	set	_Global_cuttingHair,r1
	store	r1,[r14+-32]
!   Send message Down
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	171,r13		! source line 171
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	172,r13		! source line 172
	mov	"\0\0SE",r10
!   _temp_621 = &_Global_cuttingHair
	set	_Global_cuttingHair,r1
	store	r1,[r14+-28]
!   Send message Down
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0AS",r10
!   _temp_622 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-24]
!   _temp_623 = _temp_622 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_623 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	175,r13		! source line 175
	mov	"\0\0SE",r10
!   _temp_624 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-16]
!   Send message printBarberStatus
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	176,r13		! source line 176
	mov	"\0\0SE",r10
!   _temp_625 = &_Global_doneHair
	set	_Global_doneHair,r1
	store	r1,[r14+-12]
!   Send message Up
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END WHILE...
	jmp	_Label_604
_Label_606:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Main_barber:
	.word	_sourceFileName
	.word	_Label_626
	.word	0		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_627
	.word	-12
	.word	4
	.word	_Label_628
	.word	-16
	.word	4
	.word	_Label_629
	.word	-20
	.word	4
	.word	_Label_630
	.word	-24
	.word	4
	.word	_Label_631
	.word	-28
	.word	4
	.word	_Label_632
	.word	-32
	.word	4
	.word	_Label_633
	.word	-36
	.word	4
	.word	_Label_634
	.word	-40
	.word	4
	.word	_Label_635
	.word	-44
	.word	4
	.word	_Label_636
	.word	-48
	.word	4
	.word	_Label_637
	.word	-52
	.word	4
	.word	_Label_638
	.word	-56
	.word	4
	.word	_Label_639
	.word	-60
	.word	4
	.word	_Label_640
	.word	-64
	.word	4
	.word	_Label_641
	.word	-68
	.word	4
	.word	_Label_642
	.word	-72
	.word	4
	.word	_Label_643
	.word	-76
	.word	4
	.word	_Label_644
	.word	-80
	.word	4
	.word	_Label_645
	.word	-84
	.word	4
	.word	0
_Label_626:
	.ascii	"barber\0"
	.align
_Label_627:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_628:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_629:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
! 
! ===============  CLASS SleepingBarber  ===============
! 
! Dispatch Table:
! 
_P_Main_SleepingBarber:
	.word	_Label_646
	jmp	_Method_P_Main_SleepingBarber_1	! 4:	Init
	jmp	_Method_P_Main_SleepingBarber_2	! 8:	printExample
	jmp	_Method_P_Main_SleepingBarber_3	! 12:	printBarberStatus
	jmp	_Method_P_Main_SleepingBarber_4	! 16:	printCustomerStatus
	jmp	_Method_P_Main_SleepingBarber_5	! 20:	printChairs
	.word	0
! 
! Class descriptor:
! 
_Label_646:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_647
	.word	_sourceFileName
	.word	14		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Main_SleepingBarber
	.word	_P_System_Object
	.word	0
_Label_647:
	.ascii	"SleepingBarber\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Main_SleepingBarber_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_1,r1
	push	r1
	mov	6,r1
_Label_926:
	push	r0
	sub	r1,1,r1
	bne	_Label_926
	mov	182,r13		! source line 182
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	183,r13		! source line 183
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_648) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_649 = _temp_648 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_649 = bStat  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-28],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	184,r13		! source line 184
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_650) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_651 = _temp_650 + 8
	load	[r14+-24],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_651 = cStat  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	185,r13		! source line 185
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_652) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_653 = _temp_652 + 12
	load	[r14+-16],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_653 = numOfChair  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	185,r13		! source line 185
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_1:
	.word	_sourceFileName
	.word	_Label_654
	.word	16		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_655
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_656
	.word	12
	.word	4
	.word	_Label_657
	.word	16
	.word	4
	.word	_Label_658
	.word	20
	.word	4
	.word	_Label_659
	.word	-12
	.word	4
	.word	_Label_660
	.word	-16
	.word	4
	.word	_Label_661
	.word	-20
	.word	4
	.word	_Label_662
	.word	-24
	.word	4
	.word	_Label_663
	.word	-28
	.word	4
	.word	_Label_664
	.word	-32
	.word	4
	.word	0
_Label_654:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_655:
	.ascii	"Pself\0"
	.align
_Label_656:
	.byte	'I'
	.ascii	"bStat\0"
	.align
_Label_657:
	.byte	'P'
	.ascii	"cStat\0"
	.align
_Label_658:
	.byte	'I'
	.ascii	"numOfChair\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
! 
! ===============  METHOD printExample  ===============
! 
_Method_P_Main_SleepingBarber_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_2,r1
	push	r1
	mov	88,r1
_Label_927:
	push	r0
	sub	r1,1,r1
	bne	_Label_927
	mov	188,r13		! source line 188
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-348]
!   if intIsZero (_temp_666) then goto _runtimeErrorNullPointer
	load	[r14+-348],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_667 = _temp_666 + 8
	load	[r14+-348],r1
	add	r1,8,r1
	store	r1,[r14+-344]
!   Data Move: _temp_665 = *_temp_667  (sizeInBytes=4)
	load	[r14+-344],r1
	load	[r1],r1
	store	r1,[r14+-352]
!   if intIsZero (_temp_665) then goto _runtimeErrorNullPointer
	load	[r14+-352],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_665 [0 ] into _temp_668
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-352],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-340]
!   Data Move: *_temp_668 = 69  (sizeInBytes=1)
	mov	69,r1
	load	[r14+-340],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-336]
!   if intIsZero (_temp_669) then goto _runtimeErrorNullPointer
	load	[r14+-336],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-336],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-328]
!   if intIsZero (_temp_671) then goto _runtimeErrorNullPointer
	load	[r14+-328],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_672 = _temp_671 + 8
	load	[r14+-328],r1
	add	r1,8,r1
	store	r1,[r14+-324]
!   Data Move: _temp_670 = *_temp_672  (sizeInBytes=4)
	load	[r14+-324],r1
	load	[r1],r1
	store	r1,[r14+-332]
!   if intIsZero (_temp_670) then goto _runtimeErrorNullPointer
	load	[r14+-332],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_670 [0 ] into _temp_673
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-332],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-320]
!   Data Move: *_temp_673 = 83  (sizeInBytes=1)
	mov	83,r1
	load	[r14+-320],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	199,r13		! source line 199
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-316]
!   if intIsZero (_temp_674) then goto _runtimeErrorNullPointer
	load	[r14+-316],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_675 = _temp_674 + 12
	load	[r14+-316],r1
	add	r1,12,r1
	store	r1,[r14+-312]
	load	[r14+8],r1
	store	r1,[r14+-300]
!   if intIsZero (_temp_678) then goto _runtimeErrorNullPointer
	load	[r14+-300],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_679 = _temp_678 + 12
	load	[r14+-300],r1
	add	r1,12,r1
	store	r1,[r14+-296]
!   Data Move: _temp_677 = *_temp_679  (sizeInBytes=4)
	load	[r14+-296],r1
	load	[r1],r1
	store	r1,[r14+-304]
!   _temp_676 = _temp_677 - 1		(int)
	load	[r14+-304],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-308]
!   Data Move: *_temp_675 = _temp_676  (sizeInBytes=4)
	load	[r14+-308],r1
	load	[r14+-312],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	200,r13		! source line 200
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-292]
!   if intIsZero (_temp_680) then goto _runtimeErrorNullPointer
	load	[r14+-292],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-292],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	203,r13		! source line 203
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-284]
!   if intIsZero (_temp_682) then goto _runtimeErrorNullPointer
	load	[r14+-284],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_683 = _temp_682 + 8
	load	[r14+-284],r1
	add	r1,8,r1
	store	r1,[r14+-280]
!   Data Move: _temp_681 = *_temp_683  (sizeInBytes=4)
	load	[r14+-280],r1
	load	[r1],r1
	store	r1,[r14+-288]
!   if intIsZero (_temp_681) then goto _runtimeErrorNullPointer
	load	[r14+-288],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_681 [1 ] into _temp_684
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-288],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-276]
!   Data Move: *_temp_684 = 69  (sizeInBytes=1)
	mov	69,r1
	load	[r14+-276],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	204,r13		! source line 204
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-272]
!   if intIsZero (_temp_685) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-272],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	207,r13		! source line 207
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-264]
!   if intIsZero (_temp_687) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_688 = _temp_687 + 8
	load	[r14+-264],r1
	add	r1,8,r1
	store	r1,[r14+-260]
!   Data Move: _temp_686 = *_temp_688  (sizeInBytes=4)
	load	[r14+-260],r1
	load	[r1],r1
	store	r1,[r14+-268]
!   if intIsZero (_temp_686) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_686 [1 ] into _temp_689
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-268],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-256]
!   Data Move: *_temp_689 = 83  (sizeInBytes=1)
	mov	83,r1
	load	[r14+-256],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	208,r13		! source line 208
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-252]
!   if intIsZero (_temp_690) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_691 = _temp_690 + 12
	load	[r14+-252],r1
	add	r1,12,r1
	store	r1,[r14+-248]
	load	[r14+8],r1
	store	r1,[r14+-236]
!   if intIsZero (_temp_694) then goto _runtimeErrorNullPointer
	load	[r14+-236],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_695 = _temp_694 + 12
	load	[r14+-236],r1
	add	r1,12,r1
	store	r1,[r14+-232]
!   Data Move: _temp_693 = *_temp_695  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r1],r1
	store	r1,[r14+-240]
!   _temp_692 = _temp_693 - 1		(int)
	load	[r14+-240],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-244]
!   Data Move: *_temp_691 = _temp_692  (sizeInBytes=4)
	load	[r14+-244],r1
	load	[r14+-248],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	209,r13		! source line 209
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-228]
!   if intIsZero (_temp_696) then goto _runtimeErrorNullPointer
	load	[r14+-228],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-228],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	212,r13		! source line 212
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-224]
!   if intIsZero (_temp_697) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_698 = _temp_697 + 4
	load	[r14+-224],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Data Move: *_temp_698 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-220],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	213,r13		! source line 213
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-216]
!   if intIsZero (_temp_699) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_700 = _temp_699 + 12
	load	[r14+-216],r1
	add	r1,12,r1
	store	r1,[r14+-212]
	load	[r14+8],r1
	store	r1,[r14+-200]
!   if intIsZero (_temp_703) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_704 = _temp_703 + 12
	load	[r14+-200],r1
	add	r1,12,r1
	store	r1,[r14+-196]
!   Data Move: _temp_702 = *_temp_704  (sizeInBytes=4)
	load	[r14+-196],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   _temp_701 = _temp_702 + 1		(int)
	load	[r14+-204],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-208]
!   Data Move: *_temp_700 = _temp_701  (sizeInBytes=4)
	load	[r14+-208],r1
	load	[r14+-212],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	214,r13		! source line 214
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_705) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printBarberStatus
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	217,r13		! source line 217
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_707) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_708 = _temp_707 + 8
	load	[r14+-184],r1
	add	r1,8,r1
	store	r1,[r14+-180]
!   Data Move: _temp_706 = *_temp_708  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_706) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_706 [0 ] into _temp_709
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-188],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-176]
!   Data Move: *_temp_709 = 66  (sizeInBytes=1)
	mov	66,r1
	load	[r14+-176],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	218,r13		! source line 218
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-172]
!   if intIsZero (_temp_710) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-172],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	221,r13		! source line 221
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-168]
!   if intIsZero (_temp_711) then goto _runtimeErrorNullPointer
	load	[r14+-168],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_712 = _temp_711 + 4
	load	[r14+-168],r1
	add	r1,4,r1
	store	r1,[r14+-164]
!   Data Move: *_temp_712 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-164],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	222,r13		! source line 222
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_713) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printBarberStatus
	load	[r14+-160],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	225,r13		! source line 225
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_715) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_716 = _temp_715 + 8
	load	[r14+-152],r1
	add	r1,8,r1
	store	r1,[r14+-148]
!   Data Move: _temp_714 = *_temp_716  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if intIsZero (_temp_714) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_714 [0 ] into _temp_717
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-156],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-144]
!   Data Move: *_temp_717 = 70  (sizeInBytes=1)
	mov	70,r1
	load	[r14+-144],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	226,r13		! source line 226
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_718) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-140],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	229,r13		! source line 229
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_720) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_721 = _temp_720 + 8
	load	[r14+-132],r1
	add	r1,8,r1
	store	r1,[r14+-128]
!   Data Move: _temp_719 = *_temp_721  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   if intIsZero (_temp_719) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_719 [0 ] into _temp_722
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-136],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Data Move: *_temp_722 = 76  (sizeInBytes=1)
	mov	76,r1
	load	[r14+-124],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	230,r13		! source line 230
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_723) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_724) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_725 = _temp_724 + 4
	load	[r14+-116],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Data Move: *_temp_725 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-112],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_726) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_727 = _temp_726 + 12
	load	[r14+-108],r1
	add	r1,12,r1
	store	r1,[r14+-104]
	load	[r14+8],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_730) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_731 = _temp_730 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_729 = *_temp_731  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   _temp_728 = _temp_729 + 1		(int)
	load	[r14+-96],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
!   Data Move: *_temp_727 = _temp_728  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r14+-104],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_732) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printBarberStatus
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	238,r13		! source line 238
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_734) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_735 = _temp_734 + 8
	load	[r14+-76],r1
	add	r1,8,r1
	store	r1,[r14+-72]
!   Data Move: _temp_733 = *_temp_735  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_733) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_733 [1 ] into _temp_736
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-80],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-68]
!   Data Move: *_temp_736 = 66  (sizeInBytes=1)
	mov	66,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	239,r13		! source line 239
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_737) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	242,r13		! source line 242
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_738) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_739 = _temp_738 + 4
	load	[r14+-60],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_739 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-56],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	243,r13		! source line 243
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_740) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printBarberStatus
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	246,r13		! source line 246
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_742) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_743 = _temp_742 + 8
	load	[r14+-44],r1
	add	r1,8,r1
	store	r1,[r14+-40]
!   Data Move: _temp_741 = *_temp_743  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_741) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_741 [1 ] into _temp_744
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-48],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Data Move: *_temp_744 = 70  (sizeInBytes=1)
	mov	70,r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	247,r13		! source line 247
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_745) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_747) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_748 = _temp_747 + 8
	load	[r14+-24],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Data Move: _temp_746 = *_temp_748  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_746) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_746 [1 ] into _temp_749
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: *_temp_749 = 76  (sizeInBytes=1)
	mov	76,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_750) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! RETURN STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0RE",r10
	add	r15,356,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_2:
	.word	_sourceFileName
	.word	_Label_751
	.word	4		! total size of parameters
	.word	352		! frame size = 352
	.word	_Label_752
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_753
	.word	-12
	.word	4
	.word	_Label_754
	.word	-16
	.word	4
	.word	_Label_755
	.word	-20
	.word	4
	.word	_Label_756
	.word	-24
	.word	4
	.word	_Label_757
	.word	-28
	.word	4
	.word	_Label_758
	.word	-32
	.word	4
	.word	_Label_759
	.word	-36
	.word	4
	.word	_Label_760
	.word	-40
	.word	4
	.word	_Label_761
	.word	-44
	.word	4
	.word	_Label_762
	.word	-48
	.word	4
	.word	_Label_763
	.word	-52
	.word	4
	.word	_Label_764
	.word	-56
	.word	4
	.word	_Label_765
	.word	-60
	.word	4
	.word	_Label_766
	.word	-64
	.word	4
	.word	_Label_767
	.word	-68
	.word	4
	.word	_Label_768
	.word	-72
	.word	4
	.word	_Label_769
	.word	-76
	.word	4
	.word	_Label_770
	.word	-80
	.word	4
	.word	_Label_771
	.word	-84
	.word	4
	.word	_Label_772
	.word	-88
	.word	4
	.word	_Label_773
	.word	-92
	.word	4
	.word	_Label_774
	.word	-96
	.word	4
	.word	_Label_775
	.word	-100
	.word	4
	.word	_Label_776
	.word	-104
	.word	4
	.word	_Label_777
	.word	-108
	.word	4
	.word	_Label_778
	.word	-112
	.word	4
	.word	_Label_779
	.word	-116
	.word	4
	.word	_Label_780
	.word	-120
	.word	4
	.word	_Label_781
	.word	-124
	.word	4
	.word	_Label_782
	.word	-128
	.word	4
	.word	_Label_783
	.word	-132
	.word	4
	.word	_Label_784
	.word	-136
	.word	4
	.word	_Label_785
	.word	-140
	.word	4
	.word	_Label_786
	.word	-144
	.word	4
	.word	_Label_787
	.word	-148
	.word	4
	.word	_Label_788
	.word	-152
	.word	4
	.word	_Label_789
	.word	-156
	.word	4
	.word	_Label_790
	.word	-160
	.word	4
	.word	_Label_791
	.word	-164
	.word	4
	.word	_Label_792
	.word	-168
	.word	4
	.word	_Label_793
	.word	-172
	.word	4
	.word	_Label_794
	.word	-176
	.word	4
	.word	_Label_795
	.word	-180
	.word	4
	.word	_Label_796
	.word	-184
	.word	4
	.word	_Label_797
	.word	-188
	.word	4
	.word	_Label_798
	.word	-192
	.word	4
	.word	_Label_799
	.word	-196
	.word	4
	.word	_Label_800
	.word	-200
	.word	4
	.word	_Label_801
	.word	-204
	.word	4
	.word	_Label_802
	.word	-208
	.word	4
	.word	_Label_803
	.word	-212
	.word	4
	.word	_Label_804
	.word	-216
	.word	4
	.word	_Label_805
	.word	-220
	.word	4
	.word	_Label_806
	.word	-224
	.word	4
	.word	_Label_807
	.word	-228
	.word	4
	.word	_Label_808
	.word	-232
	.word	4
	.word	_Label_809
	.word	-236
	.word	4
	.word	_Label_810
	.word	-240
	.word	4
	.word	_Label_811
	.word	-244
	.word	4
	.word	_Label_812
	.word	-248
	.word	4
	.word	_Label_813
	.word	-252
	.word	4
	.word	_Label_814
	.word	-256
	.word	4
	.word	_Label_815
	.word	-260
	.word	4
	.word	_Label_816
	.word	-264
	.word	4
	.word	_Label_817
	.word	-268
	.word	4
	.word	_Label_818
	.word	-272
	.word	4
	.word	_Label_819
	.word	-276
	.word	4
	.word	_Label_820
	.word	-280
	.word	4
	.word	_Label_821
	.word	-284
	.word	4
	.word	_Label_822
	.word	-288
	.word	4
	.word	_Label_823
	.word	-292
	.word	4
	.word	_Label_824
	.word	-296
	.word	4
	.word	_Label_825
	.word	-300
	.word	4
	.word	_Label_826
	.word	-304
	.word	4
	.word	_Label_827
	.word	-308
	.word	4
	.word	_Label_828
	.word	-312
	.word	4
	.word	_Label_829
	.word	-316
	.word	4
	.word	_Label_830
	.word	-320
	.word	4
	.word	_Label_831
	.word	-324
	.word	4
	.word	_Label_832
	.word	-328
	.word	4
	.word	_Label_833
	.word	-332
	.word	4
	.word	_Label_834
	.word	-336
	.word	4
	.word	_Label_835
	.word	-340
	.word	4
	.word	_Label_836
	.word	-344
	.word	4
	.word	_Label_837
	.word	-348
	.word	4
	.word	_Label_838
	.word	-352
	.word	4
	.word	0
_Label_751:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"printExample\0"
	.align
_Label_752:
	.ascii	"Pself\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_781:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_782:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_784:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_711\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_710\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_709\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_708\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_707\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_706\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_705\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_703\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_698\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_697\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_696\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_695\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_694\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_812:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_813:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_814:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_817:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_824:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_827:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_829:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_830:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_832:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_833:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_834:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_835:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_836:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_837:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
! 
! ===============  METHOD printBarberStatus  ===============
! 
_Method_P_Main_SleepingBarber_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_3,r1
	push	r1
	mov	8,r1
_Label_928:
	push	r0
	sub	r1,1,r1
	bne	_Label_928
	mov	255,r13		! source line 255
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	258,r13		! source line 258
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	258,r13		! source line 258
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! SEND STATEMENT...
	mov	259,r13		! source line 259
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_839) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printChairs
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	260,r13		! source line 260
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_843) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_844 = _temp_843 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Data Move: _temp_842 = *_temp_844  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_842 != 1 then goto _Label_841		(int)
	load	[r14+-28],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_841
!	jmp	_Label_840
_Label_840:
! THEN...
	mov	261,r13		! source line 261
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_845 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_845  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	261,r13		! source line 261
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_846
_Label_841:
! ELSE...
	mov	263,r13		! source line 263
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_847 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_847  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	263,r13		! source line 263
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_846:
! ASSIGNMENT STATEMENT...
	mov	265,r13		! source line 265
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	265,r13		! source line 265
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! RETURN STATEMENT...
	mov	265,r13		! source line 265
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_3:
	.word	_sourceFileName
	.word	_Label_848
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_849
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_850
	.word	-12
	.word	4
	.word	_Label_851
	.word	-16
	.word	4
	.word	_Label_852
	.word	-20
	.word	4
	.word	_Label_853
	.word	-24
	.word	4
	.word	_Label_854
	.word	-28
	.word	4
	.word	_Label_855
	.word	-32
	.word	4
	.word	_Label_856
	.word	-36
	.word	4
	.word	0
_Label_848:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"printBarberStatus\0"
	.align
_Label_849:
	.ascii	"Pself\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_856:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD printCustomerStatus  ===============
! 
_Method_P_Main_SleepingBarber_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_4,r1
	push	r1
	mov	13,r1
_Label_929:
	push	r0
	sub	r1,1,r1
	bne	_Label_929
	mov	268,r13		! source line 268
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	272,r13		! source line 272
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	272,r13		! source line 272
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	273,r13		! source line 273
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_857) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printChairs
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   _temp_858 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_858  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	274,r13		! source line 274
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_859 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_859  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	275,r13		! source line 275
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	276,r13		! source line 276
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_864 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_865 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_864  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-52]
_Label_860:
!   Perform the FOR-LOOP termination test
!   if i > _temp_865 then goto _Label_863		
	load	[r14+-52],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_863
_Label_861:
	mov	276,r13		! source line 276
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	277,r13		! source line 277
	mov	"\0\0IF",r10
!   if i == customer then goto _Label_867		(int)
	load	[r14+-52],r1
	load	[r14+12],r2
	cmp	r1,r2
	be	_Label_867
!	jmp	_Label_866
_Label_866:
! THEN...
	mov	278,r13		! source line 278
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	278,r13		! source line 278
	mov	"\0\0CE",r10
	call	printChar
	jmp	_Label_868
_Label_867:
! ELSE...
	mov	280,r13		! source line 280
	mov	"\0\0EL",r10
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_871) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_872 = _temp_871 + 8
	load	[r14+-24],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Data Move: _temp_870 = *_temp_872  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_870) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_870 [i ] into _temp_873
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_869 = *_temp_873  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Prepare Argument: offset=8  value=_temp_869  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	280,r13		! source line 280
	mov	"\0\0CE",r10
	call	printChar
! END IF...
_Label_868:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=9  sizeInBytes=1
	mov	9,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	282,r13		! source line 282
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_862:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_860
! END FOR
_Label_863:
! CALL STATEMENT...
!   Call the function
	mov	284,r13		! source line 284
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	285,r13		! source line 285
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	285,r13		! source line 285
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	285,r13		! source line 285
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_4:
	.word	_sourceFileName
	.word	_Label_874
	.word	8		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_875
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_876
	.word	12
	.word	4
	.word	_Label_877
	.word	-16
	.word	4
	.word	_Label_878
	.word	-20
	.word	4
	.word	_Label_879
	.word	-24
	.word	4
	.word	_Label_880
	.word	-28
	.word	4
	.word	_Label_881
	.word	-9
	.word	1
	.word	_Label_882
	.word	-32
	.word	4
	.word	_Label_883
	.word	-36
	.word	4
	.word	_Label_884
	.word	-40
	.word	4
	.word	_Label_885
	.word	-44
	.word	4
	.word	_Label_886
	.word	-48
	.word	4
	.word	_Label_887
	.word	-52
	.word	4
	.word	_Label_888
	.word	-56
	.word	4
	.word	0
_Label_874:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"printCustomerStatus\0"
	.align
_Label_875:
	.ascii	"Pself\0"
	.align
_Label_876:
	.byte	'I'
	.ascii	"customer\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_881:
	.byte	'C'
	.ascii	"_temp_869\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_865\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_864\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_859\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_858\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_857\0"
	.align
_Label_887:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_888:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD printChairs  ===============
! 
_Method_P_Main_SleepingBarber_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_5,r1
	push	r1
	mov	12,r1
_Label_930:
	push	r0
	sub	r1,1,r1
	bne	_Label_930
	mov	288,r13		! source line 288
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	292,r13		! source line 292
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	292,r13		! source line 292
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! FOR STATEMENT...
	mov	293,r13		! source line 293
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_893 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_895) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_896 = _temp_895 + 12
	load	[r14+-36],r1
	add	r1,12,r1
	store	r1,[r14+-32]
!   Data Move: _temp_894 = *_temp_896  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_893  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-48]
_Label_889:
!   Perform the FOR-LOOP termination test
!   if i > _temp_894 then goto _Label_892		
	load	[r14+-48],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_892
_Label_890:
	mov	293,r13		! source line 293
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=88  sizeInBytes=1
	mov	88,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	294,r13		! source line 294
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_891:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_889
! END FOR
_Label_892:
! FOR STATEMENT...
	mov	296,r13		! source line 296
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_901 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_904) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_905 = _temp_904 + 12
	load	[r14+-16],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_903 = *_temp_905  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_902 = 5 - _temp_903		(int)
	mov	5,r1
	load	[r14+-20],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_901  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-48]
_Label_897:
!   Perform the FOR-LOOP termination test
!   if i > _temp_902 then goto _Label_900		
	load	[r14+-48],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_900
_Label_898:
	mov	296,r13		! source line 296
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=45  sizeInBytes=1
	mov	45,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	297,r13		! source line 297
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_899:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_897
! END FOR
_Label_900:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	299,r13		! source line 299
	mov	"\0\0CE",r10
	call	printChar
! ASSIGNMENT STATEMENT...
	mov	300,r13		! source line 300
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	300,r13		! source line 300
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	300,r13		! source line 300
	mov	"\0\0RE",r10
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_5:
	.word	_sourceFileName
	.word	_Label_906
	.word	4		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_907
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_908
	.word	-12
	.word	4
	.word	_Label_909
	.word	-16
	.word	4
	.word	_Label_910
	.word	-20
	.word	4
	.word	_Label_911
	.word	-24
	.word	4
	.word	_Label_912
	.word	-28
	.word	4
	.word	_Label_913
	.word	-32
	.word	4
	.word	_Label_914
	.word	-36
	.word	4
	.word	_Label_915
	.word	-40
	.word	4
	.word	_Label_916
	.word	-44
	.word	4
	.word	_Label_917
	.word	-48
	.word	4
	.word	_Label_918
	.word	-52
	.word	4
	.word	0
_Label_906:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"printChairs\0"
	.align
_Label_907:
	.ascii	"Pself\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_905\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_904\0"
	.align
_Label_910:
	.byte	'?'
	.ascii	"_temp_903\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_902\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_901\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_917:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_918:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
