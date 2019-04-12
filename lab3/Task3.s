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
	.export	_P_Main_GamingParlor
	.export	_Method_P_Main_GamingParlor_1
	.export	_Method_P_Main_GamingParlor_2
	.export	_Method_P_Main_GamingParlor_3
	.export	_Method_P_Main_GamingParlor_4
	.export	_Method_P_Main_GamingParlor_5
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
	.export	_P_Main_group_names
	.export	_P_Main_dice_per_group
_P_Main_group_names:
! Static array
	.word	8		! number of elements
	.byte	65			! 'A'
	.byte	66			! 'B'
	.byte	67			! 'C'
	.byte	68			! 'D'
	.byte	69			! 'E'
	.byte	70			! 'F'
	.byte	71			! 'G'
	.byte	72			! 'H'
	.align
_P_Main_dice_per_group:
! Static array
	.word	8		! number of elements
	.word	0x00000004		! decimal value = 4
	.word	0x00000004		! decimal value = 4
	.word	0x00000005		! decimal value = 5
	.word	0x00000005		! decimal value = 5
	.word	0x00000002		! decimal value = 2
	.word	0x00000002		! decimal value = 2
	.word	0x00000001		! decimal value = 1
	.word	0x00000001		! decimal value = 1
	.align
_Global_gamingParlor:
! Static object
	.word	_P_Main_GamingParlor
	.word	0
_Global_front:
	.skip	20
_Global_availableGame:
	.skip	16
_Global_customers:
	.skip	32740
	.align
! String constants
_StringConst_14:
	.word	57			! length
	.ascii	"------------------------------Number of dice now avail = "
	.align
_StringConst_13:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_12:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_11:
	.word	22			! length
	.ascii	"releases and adds back"
	.align
_StringConst_10:
	.word	13			! length
	.ascii	"proceeds with"
	.align
_StringConst_9:
	.word	8			! length
	.ascii	"requests"
	.align
_StringConst_8:
	.word	1			! length
	.ascii	"H"
	.align
_StringConst_7:
	.word	1			! length
	.ascii	"G"
	.align
_StringConst_6:
	.word	1			! length
	.ascii	"F"
	.align
_StringConst_5:
	.word	1			! length
	.ascii	"E"
	.align
_StringConst_4:
	.word	1			! length
	.ascii	"D"
	.align
_StringConst_3:
	.word	1			! length
	.ascii	"C"
	.align
_StringConst_2:
	.word	1			! length
	.ascii	"B"
	.align
_StringConst_1:
	.word	1			! length
	.ascii	"A"
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0x2cd72276,r3		! .  hashVal = 752296566
	call	_CheckVersion_P_Main_	! .
	cmp	r1,0			! .
	be	_Label_17		! .
	ret				! .
_Label_17:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Task3.c\0"
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
	set	0x2cd72276,r4		! myHashVal = 752296566
	cmp	r3,r4
	be	_Label_18
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
_Label_18:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_19
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_19
! Make sure _P_Thread_ has hash value 0xd98e6cc5 (decimal -644977467)
	set	_packageName,r2
	set	0xd98e6cc5,r3
	call	_CheckVersion_P_Thread_
	.import	_CheckVersion_P_Thread_
	cmp	r1,0
	bne	_Label_19
! Make sure _P_Synch_ has hash value 0x8e356f6d (decimal -1909100691)
	set	_packageName,r2
	set	0x8e356f6d,r3
	call	_CheckVersion_P_Synch_
	.import	_CheckVersion_P_Synch_
	cmp	r1,0
	bne	_Label_19
_Label_19:
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
	call	_function_16_gamingparlor
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
	.word	_Label_20
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_20:
	.ascii	"main\0"
	.align
! 
! ===============  FUNCTION gamingparlor  ===============
! 
_function_16_gamingparlor:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_16_gamingparlor,r1
	push	r1
	mov	9269,r1
_Label_281:
	push	r0
	sub	r1,1,r1
	bne	_Label_281
	mov	26,r13		! source line 26
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0SE",r10
!   _temp_21 = &_Global_gamingParlor
	set	_Global_gamingParlor,r1
	set	-37072,r2
	store	r1,[r14+r2]
!   Send message Init
	set	-37072,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	30,r13		! source line 30
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_front = zeros  (sizeInBytes=20)
	set	_Global_front,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_front = _P_Synch_Mutex
	set	_P_Synch_Mutex,r1
	set	_Global_front,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	31,r13		! source line 31
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_availableGame = zeros  (sizeInBytes=16)
	set	_Global_availableGame,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   _Global_availableGame = _P_Synch_Condition
	set	_P_Synch_Condition,r1
	set	_Global_availableGame,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0AS",r10
!   _temp_24 = &_Global_customers
	set	_Global_customers,r1
	set	-37060,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_26 = &_temp_25
	set	-37056,r1
	add	r14,r1,r1
	store	r1,[r14+-4316]
!   _temp_26 = _temp_26 + 4
	load	[r14+-4316],r1
	add	r1,4,r1
	store	r1,[r14+-4316]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_28 = zeros  (sizeInBytes=4092)
	add	r14,-4308,r4
	mov	1023,r3
_Label_282:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_282
!   _temp_28 = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	store	r1,[r14+-4308]
	mov	8,r1
	store	r1,[r14+-4312]
_Label_30:
!   Data Move: *_temp_26 = _temp_28  (sizeInBytes=4092)
	add	r14,-4308,r5
	load	[r14+-4316],r4
	mov	1023,r3
_Label_283:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_283
!   _temp_26 = _temp_26 + 4092
	load	[r14+-4316],r1
	add	r1,4092,r1
	store	r1,[r14+-4316]
!   _temp_27 = _temp_27 + -1
	load	[r14+-4312],r1
	add	r1,-1,r1
	store	r1,[r14+-4312]
!   if intNotZero (_temp_27) then goto _Label_30
	load	[r14+-4312],r1
	cmp	r1,r0
	bne	_Label_30
!   Initialize the array size...
	mov	8,r1
	set	-37056,r2
	store	r1,[r14+r2]
!   _temp_31 = &_temp_25
	set	-37056,r1
	add	r14,r1,r1
	store	r1,[r14+-212]
!   make sure array has size 8
	set	-37060,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	8, r2
	cmp	r1,0
	be	_Label_284
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_284:
!   make sure array has size 8
	load	[r14+-212],r1
	load	[r1],r1
	set	8, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_24 = *_temp_31  (sizeInBytes=32740)
	load	[r14+-212],r5
	set	-37060,r4
	load	[r14+r4],r4
	mov	8185,r3
_Label_285:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_285
! SEND STATEMENT...
	mov	34,r13		! source line 34
	mov	"\0\0SE",r10
!   _temp_32 = &_Global_front
	set	_Global_front,r1
	store	r1,[r14+-208]
!   Send message Init
	load	[r14+-208],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	35,r13		! source line 35
	mov	"\0\0SE",r10
!   _temp_33 = &_Global_availableGame
	set	_Global_availableGame,r1
	store	r1,[r14+-204]
!   Send message Init
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	38,r13		! source line 38
	mov	"\0\0SE",r10
!   _temp_34 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-200]
!   _temp_35 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-196]
!   Move address of _temp_35 [0 ] into _temp_36
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-192]
!   Prepare Argument: offset=12  value=_temp_34  sizeInBytes=4
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
	mov	39,r13		! source line 39
	mov	"\0\0SE",r10
!   _temp_37 = _function_15_Play
	set	_function_15_Play,r1
	store	r1,[r14+-188]
!   _temp_38 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-184]
!   Move address of _temp_38 [0 ] into _temp_39
!     make sure index expr is >= 0
	mov	0,r2
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
!   Prepare Argument: offset=12  value=_temp_37  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
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
	mov	41,r13		! source line 41
	mov	"\0\0SE",r10
!   _temp_40 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-176]
!   _temp_41 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-172]
!   Move address of _temp_41 [1 ] into _temp_42
!     make sure index expr is >= 0
	mov	1,r2
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
!   Prepare Argument: offset=12  value=_temp_40  sizeInBytes=4
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
	mov	42,r13		! source line 42
	mov	"\0\0SE",r10
!   _temp_43 = _function_15_Play
	set	_function_15_Play,r1
	store	r1,[r14+-164]
!   _temp_44 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-160]
!   Move address of _temp_44 [1 ] into _temp_45
!     make sure index expr is >= 0
	mov	1,r2
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
!   Prepare Argument: offset=12  value=_temp_43  sizeInBytes=4
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
	mov	44,r13		! source line 44
	mov	"\0\0SE",r10
!   _temp_46 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-152]
!   _temp_47 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-148]
!   Move address of _temp_47 [2 ] into _temp_48
!     make sure index expr is >= 0
	mov	2,r2
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
!   Prepare Argument: offset=12  value=_temp_46  sizeInBytes=4
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
	mov	45,r13		! source line 45
	mov	"\0\0SE",r10
!   _temp_49 = _function_15_Play
	set	_function_15_Play,r1
	store	r1,[r14+-140]
!   _temp_50 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-136]
!   Move address of _temp_50 [2 ] into _temp_51
!     make sure index expr is >= 0
	mov	2,r2
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
!   Prepare Argument: offset=12  value=_temp_49  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=2  sizeInBytes=4
	mov	2,r1
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
	mov	47,r13		! source line 47
	mov	"\0\0SE",r10
!   _temp_52 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-128]
!   _temp_53 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-124]
!   Move address of _temp_53 [3 ] into _temp_54
!     make sure index expr is >= 0
	mov	3,r2
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
!   Prepare Argument: offset=12  value=_temp_52  sizeInBytes=4
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
	mov	48,r13		! source line 48
	mov	"\0\0SE",r10
!   _temp_55 = _function_15_Play
	set	_function_15_Play,r1
	store	r1,[r14+-116]
!   _temp_56 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-112]
!   Move address of _temp_56 [3 ] into _temp_57
!     make sure index expr is >= 0
	mov	3,r2
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
!   Prepare Argument: offset=12  value=_temp_55  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=3  sizeInBytes=4
	mov	3,r1
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
	mov	50,r13		! source line 50
	mov	"\0\0SE",r10
!   _temp_58 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-104]
!   _temp_59 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-100]
!   Move address of _temp_59 [4 ] into _temp_60
!     make sure index expr is >= 0
	mov	4,r2
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
!   Prepare Argument: offset=12  value=_temp_58  sizeInBytes=4
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
	mov	51,r13		! source line 51
	mov	"\0\0SE",r10
!   _temp_61 = _function_15_Play
	set	_function_15_Play,r1
	store	r1,[r14+-92]
!   _temp_62 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-88]
!   Move address of _temp_62 [4 ] into _temp_63
!     make sure index expr is >= 0
	mov	4,r2
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
!   Prepare Argument: offset=12  value=_temp_61  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
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
	mov	53,r13		! source line 53
	mov	"\0\0SE",r10
!   _temp_64 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-80]
!   _temp_65 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-76]
!   Move address of _temp_65 [5 ] into _temp_66
!     make sure index expr is >= 0
	mov	5,r2
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
!   Prepare Argument: offset=12  value=_temp_64  sizeInBytes=4
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
	mov	54,r13		! source line 54
	mov	"\0\0SE",r10
!   _temp_67 = _function_15_Play
	set	_function_15_Play,r1
	store	r1,[r14+-68]
!   _temp_68 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-64]
!   Move address of _temp_68 [5 ] into _temp_69
!     make sure index expr is >= 0
	mov	5,r2
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
!   Prepare Argument: offset=12  value=_temp_67  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
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
	mov	56,r13		! source line 56
	mov	"\0\0SE",r10
!   _temp_70 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-56]
!   _temp_71 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-52]
!   Move address of _temp_71 [6 ] into _temp_72
!     make sure index expr is >= 0
	mov	6,r2
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
!   Prepare Argument: offset=12  value=_temp_70  sizeInBytes=4
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
	mov	57,r13		! source line 57
	mov	"\0\0SE",r10
!   _temp_73 = _function_15_Play
	set	_function_15_Play,r1
	store	r1,[r14+-44]
!   _temp_74 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-40]
!   Move address of _temp_74 [6 ] into _temp_75
!     make sure index expr is >= 0
	mov	6,r2
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
!   Prepare Argument: offset=12  value=_temp_73  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=6  sizeInBytes=4
	mov	6,r1
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
	mov	59,r13		! source line 59
	mov	"\0\0SE",r10
!   _temp_76 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   _temp_77 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-28]
!   Move address of _temp_77 [7 ] into _temp_78
!     make sure index expr is >= 0
	mov	7,r2
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
!   Prepare Argument: offset=12  value=_temp_76  sizeInBytes=4
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
	mov	60,r13		! source line 60
	mov	"\0\0SE",r10
!   _temp_79 = _function_15_Play
	set	_function_15_Play,r1
	store	r1,[r14+-20]
!   _temp_80 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-16]
!   Move address of _temp_80 [7 ] into _temp_81
!     make sure index expr is >= 0
	mov	7,r2
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
!   Prepare Argument: offset=12  value=_temp_79  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=7  sizeInBytes=4
	mov	7,r1
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
	mov	60,r13		! source line 60
	mov	"\0\0RE",r10
	set	37080,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_16_gamingparlor:
	.word	_sourceFileName
	.word	_Label_82
	.word	0		! total size of parameters
	.word	37076		! frame size = 37076
	.word	_Label_83
	.word	-12
	.word	4
	.word	_Label_84
	.word	-16
	.word	4
	.word	_Label_85
	.word	-20
	.word	4
	.word	_Label_86
	.word	-24
	.word	4
	.word	_Label_87
	.word	-28
	.word	4
	.word	_Label_88
	.word	-32
	.word	4
	.word	_Label_89
	.word	-36
	.word	4
	.word	_Label_90
	.word	-40
	.word	4
	.word	_Label_91
	.word	-44
	.word	4
	.word	_Label_92
	.word	-48
	.word	4
	.word	_Label_93
	.word	-52
	.word	4
	.word	_Label_94
	.word	-56
	.word	4
	.word	_Label_95
	.word	-60
	.word	4
	.word	_Label_96
	.word	-64
	.word	4
	.word	_Label_97
	.word	-68
	.word	4
	.word	_Label_98
	.word	-72
	.word	4
	.word	_Label_99
	.word	-76
	.word	4
	.word	_Label_100
	.word	-80
	.word	4
	.word	_Label_101
	.word	-84
	.word	4
	.word	_Label_102
	.word	-88
	.word	4
	.word	_Label_103
	.word	-92
	.word	4
	.word	_Label_104
	.word	-96
	.word	4
	.word	_Label_105
	.word	-100
	.word	4
	.word	_Label_106
	.word	-104
	.word	4
	.word	_Label_107
	.word	-108
	.word	4
	.word	_Label_108
	.word	-112
	.word	4
	.word	_Label_109
	.word	-116
	.word	4
	.word	_Label_110
	.word	-120
	.word	4
	.word	_Label_111
	.word	-124
	.word	4
	.word	_Label_112
	.word	-128
	.word	4
	.word	_Label_113
	.word	-132
	.word	4
	.word	_Label_114
	.word	-136
	.word	4
	.word	_Label_115
	.word	-140
	.word	4
	.word	_Label_116
	.word	-144
	.word	4
	.word	_Label_117
	.word	-148
	.word	4
	.word	_Label_118
	.word	-152
	.word	4
	.word	_Label_119
	.word	-156
	.word	4
	.word	_Label_120
	.word	-160
	.word	4
	.word	_Label_121
	.word	-164
	.word	4
	.word	_Label_122
	.word	-168
	.word	4
	.word	_Label_123
	.word	-172
	.word	4
	.word	_Label_124
	.word	-176
	.word	4
	.word	_Label_125
	.word	-180
	.word	4
	.word	_Label_126
	.word	-184
	.word	4
	.word	_Label_127
	.word	-188
	.word	4
	.word	_Label_128
	.word	-192
	.word	4
	.word	_Label_129
	.word	-196
	.word	4
	.word	_Label_130
	.word	-200
	.word	4
	.word	_Label_131
	.word	-204
	.word	4
	.word	_Label_132
	.word	-208
	.word	4
	.word	_Label_133
	.word	-212
	.word	4
	.word	_Label_134
	.word	-216
	.word	4
	.word	_Label_135
	.word	-4308
	.word	4092
	.word	_Label_136
	.word	-4312
	.word	4
	.word	_Label_137
	.word	-4316
	.word	4
	.word	_Label_138
	.word	-37056
	.word	32740
	.word	_Label_139
	.word	-37060
	.word	4
	.word	_Label_140
	.word	-37064
	.word	4
	.word	_Label_141
	.word	-37068
	.word	4
	.word	_Label_142
	.word	-37072
	.word	4
	.word	0
_Label_82:
	.ascii	"gamingparlor\0"
	.align
_Label_83:
	.byte	'?'
	.ascii	"_temp_81\0"
	.align
_Label_84:
	.byte	'?'
	.ascii	"_temp_80\0"
	.align
_Label_85:
	.byte	'?'
	.ascii	"_temp_79\0"
	.align
_Label_86:
	.byte	'?'
	.ascii	"_temp_78\0"
	.align
_Label_87:
	.byte	'?'
	.ascii	"_temp_77\0"
	.align
_Label_88:
	.byte	'?'
	.ascii	"_temp_76\0"
	.align
_Label_89:
	.byte	'?'
	.ascii	"_temp_75\0"
	.align
_Label_90:
	.byte	'?'
	.ascii	"_temp_74\0"
	.align
_Label_91:
	.byte	'?'
	.ascii	"_temp_73\0"
	.align
_Label_92:
	.byte	'?'
	.ascii	"_temp_72\0"
	.align
_Label_93:
	.byte	'?'
	.ascii	"_temp_71\0"
	.align
_Label_94:
	.byte	'?'
	.ascii	"_temp_70\0"
	.align
_Label_95:
	.byte	'?'
	.ascii	"_temp_69\0"
	.align
_Label_96:
	.byte	'?'
	.ascii	"_temp_68\0"
	.align
_Label_97:
	.byte	'?'
	.ascii	"_temp_67\0"
	.align
_Label_98:
	.byte	'?'
	.ascii	"_temp_66\0"
	.align
_Label_99:
	.byte	'?'
	.ascii	"_temp_65\0"
	.align
_Label_100:
	.byte	'?'
	.ascii	"_temp_64\0"
	.align
_Label_101:
	.byte	'?'
	.ascii	"_temp_63\0"
	.align
_Label_102:
	.byte	'?'
	.ascii	"_temp_62\0"
	.align
_Label_103:
	.byte	'?'
	.ascii	"_temp_61\0"
	.align
_Label_104:
	.byte	'?'
	.ascii	"_temp_60\0"
	.align
_Label_105:
	.byte	'?'
	.ascii	"_temp_59\0"
	.align
_Label_106:
	.byte	'?'
	.ascii	"_temp_58\0"
	.align
_Label_107:
	.byte	'?'
	.ascii	"_temp_57\0"
	.align
_Label_108:
	.byte	'?'
	.ascii	"_temp_56\0"
	.align
_Label_109:
	.byte	'?'
	.ascii	"_temp_55\0"
	.align
_Label_110:
	.byte	'?'
	.ascii	"_temp_54\0"
	.align
_Label_111:
	.byte	'?'
	.ascii	"_temp_53\0"
	.align
_Label_112:
	.byte	'?'
	.ascii	"_temp_52\0"
	.align
_Label_113:
	.byte	'?'
	.ascii	"_temp_51\0"
	.align
_Label_114:
	.byte	'?'
	.ascii	"_temp_50\0"
	.align
_Label_115:
	.byte	'?'
	.ascii	"_temp_49\0"
	.align
_Label_116:
	.byte	'?'
	.ascii	"_temp_48\0"
	.align
_Label_117:
	.byte	'?'
	.ascii	"_temp_47\0"
	.align
_Label_118:
	.byte	'?'
	.ascii	"_temp_46\0"
	.align
_Label_119:
	.byte	'?'
	.ascii	"_temp_45\0"
	.align
_Label_120:
	.byte	'?'
	.ascii	"_temp_44\0"
	.align
_Label_121:
	.byte	'?'
	.ascii	"_temp_43\0"
	.align
_Label_122:
	.byte	'?'
	.ascii	"_temp_42\0"
	.align
_Label_123:
	.byte	'?'
	.ascii	"_temp_41\0"
	.align
_Label_124:
	.byte	'?'
	.ascii	"_temp_40\0"
	.align
_Label_125:
	.byte	'?'
	.ascii	"_temp_39\0"
	.align
_Label_126:
	.byte	'?'
	.ascii	"_temp_38\0"
	.align
_Label_127:
	.byte	'?'
	.ascii	"_temp_37\0"
	.align
_Label_128:
	.byte	'?'
	.ascii	"_temp_36\0"
	.align
_Label_129:
	.byte	'?'
	.ascii	"_temp_35\0"
	.align
_Label_130:
	.byte	'?'
	.ascii	"_temp_34\0"
	.align
_Label_131:
	.byte	'?'
	.ascii	"_temp_33\0"
	.align
_Label_132:
	.byte	'?'
	.ascii	"_temp_32\0"
	.align
_Label_133:
	.byte	'?'
	.ascii	"_temp_31\0"
	.align
_Label_134:
	.byte	'?'
	.ascii	"_temp_29\0"
	.align
_Label_135:
	.byte	'?'
	.ascii	"_temp_28\0"
	.align
_Label_136:
	.byte	'?'
	.ascii	"_temp_27\0"
	.align
_Label_137:
	.byte	'?'
	.ascii	"_temp_26\0"
	.align
_Label_138:
	.byte	'?'
	.ascii	"_temp_25\0"
	.align
_Label_139:
	.byte	'?'
	.ascii	"_temp_24\0"
	.align
_Label_140:
	.byte	'?'
	.ascii	"_temp_23\0"
	.align
_Label_141:
	.byte	'?'
	.ascii	"_temp_22\0"
	.align
_Label_142:
	.byte	'?'
	.ascii	"_temp_21\0"
	.align
! 
! ===============  FUNCTION Play  ===============
! 
_function_15_Play:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_15_Play,r1
	push	r1
	mov	17,r1
_Label_286:
	push	r0
	sub	r1,1,r1
	bne	_Label_286
	mov	64,r13		! source line 64
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! gamesPlayed
!   gamesPlayed = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
! WHILE STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0WH",r10
_Label_143:
!   if gamesPlayed >= 5 then goto _Label_145		(int)
	load	[r14+-64],r1
	mov	5,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_145
!	jmp	_Label_144
_Label_144:
	mov	67,r13		! source line 67
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0AS",r10
!   gamesPlayed = gamesPlayed + 1		(int)
	load	[r14+-64],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! SEND STATEMENT...
	mov	69,r13		! source line 69
	mov	"\0\0SE",r10
!   _temp_147 = &_P_Main_group_names
	set	_P_Main_group_names,r1
	store	r1,[r14+-60]
!   Move address of _temp_147 [custNum ] into _temp_148
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	store	r2,[r14+-56]
!   Data Move: _temp_146 = *_temp_148  (sizeInBytes=1)
	load	[r14+-56],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   _temp_150 = &_P_Main_dice_per_group
	set	_P_Main_dice_per_group,r1
	store	r1,[r14+-48]
!   Move address of _temp_150 [custNum ] into _temp_151
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-44]
!   Data Move: _temp_149 = *_temp_151  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   _temp_152 = &_Global_gamingParlor
	set	_Global_gamingParlor,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_146  sizeInBytes=1
	loadb	[r14+-10],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_149  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+8]
!   Send message Request
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	70,r13		! source line 70
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
	mov	71,r13		! source line 71
	mov	"\0\0SE",r10
!   _temp_154 = &_P_Main_group_names
	set	_P_Main_group_names,r1
	store	r1,[r14+-36]
!   Move address of _temp_154 [custNum ] into _temp_155
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
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
	store	r2,[r14+-32]
!   Data Move: _temp_153 = *_temp_155  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   _temp_157 = &_P_Main_dice_per_group
	set	_P_Main_dice_per_group,r1
	store	r1,[r14+-24]
!   Move address of _temp_157 [custNum ] into _temp_158
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   Data Move: _temp_156 = *_temp_158  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_159 = &_Global_gamingParlor
	set	_Global_gamingParlor,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_153  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_156  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+8]
!   Send message Return
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END WHILE...
	jmp	_Label_143
_Label_145:
! RETURN STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_15_Play:
	.word	_sourceFileName
	.word	_Label_160
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_161
	.word	8
	.word	4
	.word	_Label_162
	.word	-16
	.word	4
	.word	_Label_163
	.word	-20
	.word	4
	.word	_Label_164
	.word	-24
	.word	4
	.word	_Label_165
	.word	-28
	.word	4
	.word	_Label_166
	.word	-32
	.word	4
	.word	_Label_167
	.word	-36
	.word	4
	.word	_Label_168
	.word	-9
	.word	1
	.word	_Label_169
	.word	-40
	.word	4
	.word	_Label_170
	.word	-44
	.word	4
	.word	_Label_171
	.word	-48
	.word	4
	.word	_Label_172
	.word	-52
	.word	4
	.word	_Label_173
	.word	-56
	.word	4
	.word	_Label_174
	.word	-60
	.word	4
	.word	_Label_175
	.word	-10
	.word	1
	.word	_Label_176
	.word	-64
	.word	4
	.word	0
_Label_160:
	.ascii	"Play\0"
	.align
_Label_161:
	.byte	'I'
	.ascii	"custNum\0"
	.align
_Label_162:
	.byte	'?'
	.ascii	"_temp_159\0"
	.align
_Label_163:
	.byte	'?'
	.ascii	"_temp_158\0"
	.align
_Label_164:
	.byte	'?'
	.ascii	"_temp_157\0"
	.align
_Label_165:
	.byte	'?'
	.ascii	"_temp_156\0"
	.align
_Label_166:
	.byte	'?'
	.ascii	"_temp_155\0"
	.align
_Label_167:
	.byte	'?'
	.ascii	"_temp_154\0"
	.align
_Label_168:
	.byte	'C'
	.ascii	"_temp_153\0"
	.align
_Label_169:
	.byte	'?'
	.ascii	"_temp_152\0"
	.align
_Label_170:
	.byte	'?'
	.ascii	"_temp_151\0"
	.align
_Label_171:
	.byte	'?'
	.ascii	"_temp_150\0"
	.align
_Label_172:
	.byte	'?'
	.ascii	"_temp_149\0"
	.align
_Label_173:
	.byte	'?'
	.ascii	"_temp_148\0"
	.align
_Label_174:
	.byte	'?'
	.ascii	"_temp_147\0"
	.align
_Label_175:
	.byte	'C'
	.ascii	"_temp_146\0"
	.align
_Label_176:
	.byte	'I'
	.ascii	"gamesPlayed\0"
	.align
! 
! ===============  CLASS GamingParlor  ===============
! 
! Dispatch Table:
! 
_P_Main_GamingParlor:
	.word	_Label_177
	jmp	_Method_P_Main_GamingParlor_1	! 4:	Init
	jmp	_Method_P_Main_GamingParlor_2	! 8:	Request
	jmp	_Method_P_Main_GamingParlor_3	! 12:	Return
	jmp	_Method_P_Main_GamingParlor_4	! 16:	PrintExample
	jmp	_Method_P_Main_GamingParlor_5	! 20:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_177:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_178
	.word	_sourceFileName
	.word	16		! line number
	.word	8		! size of instances, in bytes
	.word	_P_Main_GamingParlor
	.word	_P_System_Object
	.word	0
_Label_178:
	.ascii	"GamingParlor\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Main_GamingParlor_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_GamingParlor_1,r1
	push	r1
	mov	76,r13		! source line 76
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	77,r13		! source line 77
	mov	"\0\0AS",r10
!   dice_available = 8		(4 bytes)
	mov	8,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	77,r13		! source line 77
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_GamingParlor_1:
	.word	_sourceFileName
	.word	_Label_179
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_180
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_179:
	.ascii	"GamingParlor"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_180:
	.ascii	"Pself\0"
	.align
! 
! ===============  METHOD Request  ===============
! 
_Method_P_Main_GamingParlor_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_GamingParlor_2,r1
	push	r1
	mov	12,r1
_Label_287:
	push	r0
	sub	r1,1,r1
	bne	_Label_287
	mov	80,r13		! source line 80
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	81,r13		! source line 81
	mov	"\0\0SE",r10
!   _temp_181 = &_Global_front
	set	_Global_front,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	82,r13		! source line 82
	mov	"\0\0SE",r10
!   _temp_182 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_183) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=name  sizeInBytes=1
	loadb	[r14+12],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_182  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nr_of_dice  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+12]
!   Send message Print
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! WHILE STATEMENT...
	mov	83,r13		! source line 83
	mov	"\0\0WH",r10
_Label_184:
!   if dice_available >= nr_of_dice then goto _Label_186		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_186
!	jmp	_Label_185
_Label_185:
	mov	83,r13		! source line 83
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_187 = &_Global_front
	set	_Global_front,r1
	store	r1,[r14+-28]
!   _temp_188 = &_Global_availableGame
	set	_Global_availableGame,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_187  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_184
_Label_186:
! ASSIGNMENT STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0AS",r10
!   dice_available = dice_available - nr_of_dice		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	87,r13		! source line 87
	mov	"\0\0SE",r10
!   _temp_189 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-20]
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_190) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=name  sizeInBytes=1
	loadb	[r14+12],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_189  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nr_of_dice  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+12]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	88,r13		! source line 88
	mov	"\0\0SE",r10
!   _temp_191 = &_Global_front
	set	_Global_front,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	88,r13		! source line 88
	mov	"\0\0RE",r10
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_GamingParlor_2:
	.word	_sourceFileName
	.word	_Label_192
	.word	12		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_193
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_194
	.word	12
	.word	1
	.word	_Label_195
	.word	16
	.word	4
	.word	_Label_196
	.word	-12
	.word	4
	.word	_Label_197
	.word	-16
	.word	4
	.word	_Label_198
	.word	-20
	.word	4
	.word	_Label_199
	.word	-24
	.word	4
	.word	_Label_200
	.word	-28
	.word	4
	.word	_Label_201
	.word	-32
	.word	4
	.word	_Label_202
	.word	-36
	.word	4
	.word	_Label_203
	.word	-40
	.word	4
	.word	0
_Label_192:
	.ascii	"GamingParlor"
	.ascii	"::"
	.ascii	"Request\0"
	.align
_Label_193:
	.ascii	"Pself\0"
	.align
_Label_194:
	.byte	'C'
	.ascii	"name\0"
	.align
_Label_195:
	.byte	'I'
	.ascii	"nr_of_dice\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_191\0"
	.align
_Label_197:
	.byte	'?'
	.ascii	"_temp_190\0"
	.align
_Label_198:
	.byte	'?'
	.ascii	"_temp_189\0"
	.align
_Label_199:
	.byte	'?'
	.ascii	"_temp_188\0"
	.align
_Label_200:
	.byte	'?'
	.ascii	"_temp_187\0"
	.align
_Label_201:
	.byte	'?'
	.ascii	"_temp_183\0"
	.align
_Label_202:
	.byte	'?'
	.ascii	"_temp_182\0"
	.align
_Label_203:
	.byte	'?'
	.ascii	"_temp_181\0"
	.align
! 
! ===============  METHOD Return  ===============
! 
_Method_P_Main_GamingParlor_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_GamingParlor_3,r1
	push	r1
	mov	10,r1
_Label_288:
	push	r0
	sub	r1,1,r1
	bne	_Label_288
	mov	91,r13		! source line 91
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	92,r13		! source line 92
	mov	"\0\0SE",r10
!   _temp_204 = &_Global_front
	set	_Global_front,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	93,r13		! source line 93
	mov	"\0\0AS",r10
!   dice_available = dice_available + nr_of_dice		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	94,r13		! source line 94
	mov	"\0\0SE",r10
!   _temp_205 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-28]
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_206) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=name  sizeInBytes=1
	loadb	[r14+12],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_205  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nr_of_dice  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+12]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	95,r13		! source line 95
	mov	"\0\0SE",r10
!   _temp_207 = &_Global_front
	set	_Global_front,r1
	store	r1,[r14+-20]
!   _temp_208 = &_Global_availableGame
	set	_Global_availableGame,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_207  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	96,r13		! source line 96
	mov	"\0\0SE",r10
!   _temp_209 = &_Global_front
	set	_Global_front,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	96,r13		! source line 96
	mov	"\0\0RE",r10
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_GamingParlor_3:
	.word	_sourceFileName
	.word	_Label_210
	.word	12		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_211
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_212
	.word	12
	.word	1
	.word	_Label_213
	.word	16
	.word	4
	.word	_Label_214
	.word	-12
	.word	4
	.word	_Label_215
	.word	-16
	.word	4
	.word	_Label_216
	.word	-20
	.word	4
	.word	_Label_217
	.word	-24
	.word	4
	.word	_Label_218
	.word	-28
	.word	4
	.word	_Label_219
	.word	-32
	.word	4
	.word	0
_Label_210:
	.ascii	"GamingParlor"
	.ascii	"::"
	.ascii	"Return\0"
	.align
_Label_211:
	.ascii	"Pself\0"
	.align
_Label_212:
	.byte	'C'
	.ascii	"name\0"
	.align
_Label_213:
	.byte	'I'
	.ascii	"nr_of_dice\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_207\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_206\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_205\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_204\0"
	.align
! 
! ===============  METHOD PrintExample  ===============
! 
_Method_P_Main_GamingParlor_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_GamingParlor_4,r1
	push	r1
	mov	23,r1
_Label_289:
	push	r0
	sub	r1,1,r1
	bne	_Label_289
	mov	99,r13		! source line 99
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	105,r13		! source line 105
	mov	"\0\0SE",r10
!   _temp_221 = &_P_Main_group_names
	set	_P_Main_group_names,r1
	store	r1,[r14+-88]
!   Move address of _temp_221 [0 ] into _temp_222
!     make sure index expr is >= 0
	mov	0,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Data Move: _temp_220 = *_temp_222  (sizeInBytes=1)
	load	[r14+-84],r1
	loadb	[r1],r1
	storeb	r1,[r14+-14]
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_223) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_220  sizeInBytes=1
	loadb	[r14+-14],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message Request
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0SE",r10
!   _temp_225 = &_P_Main_group_names
	set	_P_Main_group_names,r1
	store	r1,[r14+-76]
!   Move address of _temp_225 [1 ] into _temp_226
!     make sure index expr is >= 0
	mov	1,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Data Move: _temp_224 = *_temp_226  (sizeInBytes=1)
	load	[r14+-72],r1
	loadb	[r1],r1
	storeb	r1,[r14+-13]
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_227) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_224  sizeInBytes=1
	loadb	[r14+-13],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message Request
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	109,r13		! source line 109
	mov	"\0\0SE",r10
!   _temp_229 = &_P_Main_group_names
	set	_P_Main_group_names,r1
	store	r1,[r14+-64]
!   Move address of _temp_229 [1 ] into _temp_230
!     make sure index expr is >= 0
	mov	1,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   Data Move: _temp_228 = *_temp_230  (sizeInBytes=1)
	load	[r14+-60],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
	load	[r14+8],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_231) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_228  sizeInBytes=1
	loadb	[r14+-12],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message Return
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	111,r13		! source line 111
	mov	"\0\0SE",r10
!   _temp_233 = &_P_Main_group_names
	set	_P_Main_group_names,r1
	store	r1,[r14+-52]
!   Move address of _temp_233 [0 ] into _temp_234
!     make sure index expr is >= 0
	mov	0,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Data Move: _temp_232 = *_temp_234  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_235) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_232  sizeInBytes=1
	loadb	[r14+-11],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message Return
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	113,r13		! source line 113
	mov	"\0\0SE",r10
!   _temp_237 = &_P_Main_group_names
	set	_P_Main_group_names,r1
	store	r1,[r14+-40]
!   Move address of _temp_237 [2 ] into _temp_238
!     make sure index expr is >= 0
	mov	2,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Data Move: _temp_236 = *_temp_238  (sizeInBytes=1)
	load	[r14+-36],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_239) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_236  sizeInBytes=1
	loadb	[r14+-10],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Send message Request
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	115,r13		! source line 115
	mov	"\0\0SE",r10
!   _temp_241 = &_P_Main_group_names
	set	_P_Main_group_names,r1
	store	r1,[r14+-28]
!   Move address of _temp_241 [2 ] into _temp_242
!     make sure index expr is >= 0
	mov	2,r2
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
	store	r2,[r14+-24]
!   Data Move: _temp_240 = *_temp_242  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_243) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_240  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Send message Return
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	115,r13		! source line 115
	mov	"\0\0RE",r10
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_GamingParlor_4:
	.word	_sourceFileName
	.word	_Label_244
	.word	4		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_245
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_246
	.word	-20
	.word	4
	.word	_Label_247
	.word	-24
	.word	4
	.word	_Label_248
	.word	-28
	.word	4
	.word	_Label_249
	.word	-9
	.word	1
	.word	_Label_250
	.word	-32
	.word	4
	.word	_Label_251
	.word	-36
	.word	4
	.word	_Label_252
	.word	-40
	.word	4
	.word	_Label_253
	.word	-10
	.word	1
	.word	_Label_254
	.word	-44
	.word	4
	.word	_Label_255
	.word	-48
	.word	4
	.word	_Label_256
	.word	-52
	.word	4
	.word	_Label_257
	.word	-11
	.word	1
	.word	_Label_258
	.word	-56
	.word	4
	.word	_Label_259
	.word	-60
	.word	4
	.word	_Label_260
	.word	-64
	.word	4
	.word	_Label_261
	.word	-12
	.word	1
	.word	_Label_262
	.word	-68
	.word	4
	.word	_Label_263
	.word	-72
	.word	4
	.word	_Label_264
	.word	-76
	.word	4
	.word	_Label_265
	.word	-13
	.word	1
	.word	_Label_266
	.word	-80
	.word	4
	.word	_Label_267
	.word	-84
	.word	4
	.word	_Label_268
	.word	-88
	.word	4
	.word	_Label_269
	.word	-14
	.word	1
	.word	0
_Label_244:
	.ascii	"GamingParlor"
	.ascii	"::"
	.ascii	"PrintExample\0"
	.align
_Label_245:
	.ascii	"Pself\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_249:
	.byte	'C'
	.ascii	"_temp_240\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_253:
	.byte	'C'
	.ascii	"_temp_236\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_257:
	.byte	'C'
	.ascii	"_temp_232\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_261:
	.byte	'C'
	.ascii	"_temp_228\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_265:
	.byte	'C'
	.ascii	"_temp_224\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_269:
	.byte	'C'
	.ascii	"_temp_220\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Main_GamingParlor_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_GamingParlor_5,r1
	push	r1
	mov	4,r1
_Label_290:
	push	r0
	sub	r1,1,r1
	bne	_Label_290
	mov	119,r13		! source line 119
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=1
	loadb	[r14+12],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	124,r13		! source line 124
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   _temp_270 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_270  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	125,r13		! source line 125
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=str  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	126,r13		! source line 126
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_271 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_271  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nr_of_dice  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	128,r13		! source line 128
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	129,r13		! source line 129
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_272 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_272  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	130,r13		! source line 130
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=dice_available  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+4],r1
	store	r1,[r15+0]
!   Call the function
	mov	131,r13		! source line 131
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	132,r13		! source line 132
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	132,r13		! source line 132
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_GamingParlor_5:
	.word	_sourceFileName
	.word	_Label_273
	.word	16		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_274
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_275
	.word	12
	.word	1
	.word	_Label_276
	.word	16
	.word	4
	.word	_Label_277
	.word	20
	.word	4
	.word	_Label_278
	.word	-12
	.word	4
	.word	_Label_279
	.word	-16
	.word	4
	.word	_Label_280
	.word	-20
	.word	4
	.word	0
_Label_273:
	.ascii	"GamingParlor"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_274:
	.ascii	"Pself\0"
	.align
_Label_275:
	.byte	'C'
	.ascii	"name\0"
	.align
_Label_276:
	.byte	'P'
	.ascii	"str\0"
	.align
_Label_277:
	.byte	'I'
	.ascii	"nr_of_dice\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
