! Name of package being compiled: Kernel
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
	.import	_P_System_PrintMemory
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
	.import	_P_BitMap_TestBitMap
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.export	_P_Kernel_InitFirstProcess
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
	.export	_Method_P_Kernel_ProcessManager_6
	.export	_Method_P_Kernel_ProcessManager_7
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following class and its methods are from this package
	.export	_P_Kernel_DiskDriver
	.export	_Method_P_Kernel_DiskDriver_1
	.export	_Method_P_Kernel_DiskDriver_2
	.export	_Method_P_Kernel_DiskDriver_3
	.export	_Method_P_Kernel_DiskDriver_4
	.export	_Method_P_Kernel_DiskDriver_5
! The following class and its methods are from this package
	.export	_P_Kernel_FileManager
	.export	_Method_P_Kernel_FileManager_1
	.export	_Method_P_Kernel_FileManager_2
	.export	_Method_P_Kernel_FileManager_3
	.export	_Method_P_Kernel_FileManager_4
	.export	_Method_P_Kernel_FileManager_5
	.export	_Method_P_Kernel_FileManager_6
	.export	_Method_P_Kernel_FileManager_7
	.export	_Method_P_Kernel_FileManager_8
! The following class and its methods are from this package
	.export	_P_Kernel_FileControlBlock
	.export	_Method_P_Kernel_FileControlBlock_1
	.export	_Method_P_Kernel_FileControlBlock_2
! The following class and its methods are from this package
	.export	_P_Kernel_OpenFile
	.export	_Method_P_Kernel_OpenFile_1
	.export	_Method_P_Kernel_OpenFile_2
	.export	_Method_P_Kernel_OpenFile_3
	.export	_Method_P_Kernel_OpenFile_4
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
	.export	_P_Kernel_diskDriver
	.export	_P_Kernel_fileManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1316
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_frameManager:
	.skip	56
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_fileManager:
	.skip	800
	.align
! String constants
_StringConst_198:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_197:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_196:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_195:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_194:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_193:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_192:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_191:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_190:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_189:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_188:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_187:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_186:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_185:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_184:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_183:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_182:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_181:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_180:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_179:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_178:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_177:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_176:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_175:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_174:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_173:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_172:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_171:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_170:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_169:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_168:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_167:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_166:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_165:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_164:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_163:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_162:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_161:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_160:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_159:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_158:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_157:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_156:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_155:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_154:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_153:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_152:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_151:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_150:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_149:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_148:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_147:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_146:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_145:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_144:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_143:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_142:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_141:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_140:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_139:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_138:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_137:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_136:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_135:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_134:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_133:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_132:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_131:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_130:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_129:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_128:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_127:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_126:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_125:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_124:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_123:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_122:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_121:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_120:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_119:
	.word	29			! length
	.ascii	"should never have been called"
	.align
_StringConst_118:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_117:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_116:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_115:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_114:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_113:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_112:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_111:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_110:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_109:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_108:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_107:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_106:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_105:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_104:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_103:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_102:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_101:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_100:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_99:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_98:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_97:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_96:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_95:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_94:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_93:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_92:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_91:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_90:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_89:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_88:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_87:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_86:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_85:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_84:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_83:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_82:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_81:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_80:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_79:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_78:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_77:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_76:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_75:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_74:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_73:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_72:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_71:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_70:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_69:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_68:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_67:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_66:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_65:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_64:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_63:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_62:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_61:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_60:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_59:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_58:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_57:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_56:
	.word	25			! length
	.ascii	"Handle_Sys_Close invoked!"
	.align
_StringConst_55:
	.word	16			! length
	.ascii	"newCurrentPos = "
	.align
_StringConst_54:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_53:
	.word	24			! length
	.ascii	"Handle_Sys_Seek invoked!"
	.align
_StringConst_52:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_51:
	.word	22			! length
	.ascii	"virt addr of buffer = "
	.align
_StringConst_50:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_49:
	.word	25			! length
	.ascii	"Handle_Sys_Write invoked!"
	.align
_StringConst_48:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_47:
	.word	22			! length
	.ascii	"virt addr of buffer = "
	.align
_StringConst_46:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_45:
	.word	24			! length
	.ascii	"Handle_Sys_Read invoked!"
	.align
_StringConst_44:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_43:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_42:
	.word	24			! length
	.ascii	"Handle_Sys_Open invoked!"
	.align
_StringConst_41:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_40:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_39:
	.word	24			! length
	.ascii	"Handle_Sys_Read invoked!"
	.align
_StringConst_38:
	.word	1			! length
	.ascii	"0"
	.align
_StringConst_37:
	.word	47			! length
	.ascii	"Syscall \'Shutdown\' was invoked by a user thread"
	.align
_StringConst_36:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_35:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_34:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_33:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_32:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_31:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_29:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_25:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_24:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_23:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_22:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_21:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_20:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_19:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_18:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_17:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_16:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_15:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_14:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_13:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_12:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_11:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_10:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_9:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_8:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_7:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_6:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_5:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_4:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_3:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
_StringConst_2:
	.word	12			! length
	.ascii	"TestProgram3"
	.align
_StringConst_1:
	.word	11			! length
	.ascii	"UserProgram"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
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
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0xde553bfd,r4		! myHashVal = -564839427
	cmp	r3,r4
	be	_Label_208
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
_Label_208:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_209
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_209
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_209
_Label_209:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_P_Kernel_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitFirstProcess,r1
	push	r1
	mov	8,r1
_Label_3373:
	push	r0
	sub	r1,1,r1
	bne	_Label_3373
	mov	8,r13		! source line 8
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	11,r13		! source line 11
	mov	"\0\0AS",r10
	mov	11,r13		! source line 11
	mov	"\0\0SE",r10
!   _temp_210 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-24]
!   Send message GetANewThread
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=thPt  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! SEND STATEMENT...
	mov	13,r13		! source line 13
	mov	"\0\0SE",r10
!   _temp_211 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-20]
!   if intIsZero (thPt) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_211  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	15,r13		! source line 15
	mov	"\0\0SE",r10
!   _temp_212 = _function_207_StartUserProcess
	set	_function_207_StartUserProcess,r1
	store	r1,[r14+-16]
!   _temp_213 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-12]
!   if intIsZero (thPt) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_212  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_213  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	15,r13		! source line 15
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_214
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_215
	.word	-12
	.word	4
	.word	_Label_216
	.word	-16
	.word	4
	.word	_Label_217
	.word	-20
	.word	4
	.word	_Label_218
	.word	-24
	.word	4
	.word	_Label_219
	.word	-28
	.word	4
	.word	0
_Label_214:
	.ascii	"InitFirstProcess\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_219:
	.byte	'P'
	.ascii	"thPt\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_207_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_207_StartUserProcess,r1
	push	r1
	mov	23,r1
_Label_3374:
	push	r0
	sub	r1,1,r1
	bne	_Label_3374
	mov	18,r13		! source line 18
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0AS",r10
	mov	27,r13		! source line 27
	mov	"\0\0SE",r10
!   _temp_220 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   Send message GetANewProcess
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=PCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! ASSIGNMENT STATEMENT...
	mov	29,r13		! source line 29
	mov	"\0\0AS",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_221 = PCB + 24
	load	[r14+-68],r1
	add	r1,24,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_221 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-60],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	31,r13		! source line 31
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_222 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_222 = PCB  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r14+-56],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0AS",r10
	mov	32,r13		! source line 32
	mov	"\0\0SE",r10
!   _temp_223 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=arg  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=filePt  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! ASSIGNMENT STATEMENT...
	mov	34,r13		! source line 34
	mov	"\0\0AS",r10
	mov	34,r13		! source line 34
	mov	"\0\0SE",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_225 = PCB + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_224 = _temp_225		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   if intIsZero (filePt) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_224  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	36,r13		! source line 36
	mov	"\0\0SE",r10
!   _temp_226 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=filePt  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	38,r13		! source line 38
	mov	"\0\0AS",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_228 = PCB + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   _temp_229 = _temp_228 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_227 = *_temp_229  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_227 * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
! ASSIGNMENT STATEMENT...
	mov	39,r13		! source line 39
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_230 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_230 [999 ] into _temp_231
!     make sure index expr is >= 0
	mov	999,r2
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
!   initSystemStackTop = _temp_231		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	40,r13		! source line 40
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	40,r13		! source line 40
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=functionPlaceholder  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! SEND STATEMENT...
	mov	41,r13		! source line 41
	mov	"\0\0SE",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_232 = PCB + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_233 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_233 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-12],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+8]
!   Call the function
	mov	43,r13		! source line 43
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0RE",r10
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_207_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_234
	.word	4		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_235
	.word	8
	.word	4
	.word	_Label_236
	.word	-12
	.word	4
	.word	_Label_237
	.word	-16
	.word	4
	.word	_Label_238
	.word	-20
	.word	4
	.word	_Label_239
	.word	-24
	.word	4
	.word	_Label_240
	.word	-28
	.word	4
	.word	_Label_241
	.word	-32
	.word	4
	.word	_Label_242
	.word	-36
	.word	4
	.word	_Label_243
	.word	-40
	.word	4
	.word	_Label_244
	.word	-44
	.word	4
	.word	_Label_245
	.word	-48
	.word	4
	.word	_Label_246
	.word	-52
	.word	4
	.word	_Label_247
	.word	-56
	.word	4
	.word	_Label_248
	.word	-60
	.word	4
	.word	_Label_249
	.word	-64
	.word	4
	.word	_Label_250
	.word	-68
	.word	4
	.word	_Label_251
	.word	-72
	.word	4
	.word	_Label_252
	.word	-76
	.word	4
	.word	_Label_253
	.word	-80
	.word	4
	.word	_Label_254
	.word	-84
	.word	4
	.word	_Label_255
	.word	-88
	.word	4
	.word	0
_Label_234:
	.ascii	"StartUserProcess\0"
	.align
_Label_235:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_250:
	.byte	'P'
	.ascii	"PCB\0"
	.align
_Label_251:
	.byte	'P'
	.ascii	"filePt\0"
	.align
_Label_252:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_253:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_254:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_255:
	.byte	'I'
	.ascii	"functionPlaceholder\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_3375:
	push	r0
	sub	r1,1,r1
	bne	_Label_3375
	mov	46,r13		! source line 46
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	53,r13		! source line 53
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_256 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_256  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	54,r13		! source line 54
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	55,r13		! source line 55
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	56,r13		! source line 56
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	57,r13		! source line 57
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_3376:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3376
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	58,r13		! source line 58
	mov	"\0\0SE",r10
!   _temp_260 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-44]
!   _temp_261 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_260  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	59,r13		! source line 59
	mov	"\0\0AS",r10
!   _temp_262 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_263 = _temp_262 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_263 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	60,r13		! source line 60
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_3377:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3377
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	61,r13		! source line 61
	mov	"\0\0SE",r10
!   _temp_265 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-24]
!   _temp_266 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_265  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	62,r13		! source line 62
	mov	"\0\0SE",r10
!   _temp_267 = _function_206_IdleFunction
	set	_function_206_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_268 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_267  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	63,r13		! source line 63
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	64,r13		! source line 64
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	65,r13		! source line 65
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	66,r13		! source line 66
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	66,r13		! source line 66
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_269
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_270
	.word	-12
	.word	4
	.word	_Label_271
	.word	-16
	.word	4
	.word	_Label_272
	.word	-20
	.word	4
	.word	_Label_273
	.word	-24
	.word	4
	.word	_Label_274
	.word	-28
	.word	4
	.word	_Label_275
	.word	-32
	.word	4
	.word	_Label_276
	.word	-36
	.word	4
	.word	_Label_277
	.word	-40
	.word	4
	.word	_Label_278
	.word	-44
	.word	4
	.word	_Label_279
	.word	-48
	.word	4
	.word	_Label_280
	.word	-52
	.word	4
	.word	_Label_281
	.word	-56
	.word	4
	.word	_Label_282
	.word	-60
	.word	4
	.word	0
_Label_269:
	.ascii	"InitializeScheduler\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_206_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_206_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3378:
	push	r0
	sub	r1,1,r1
	bne	_Label_3378
	mov	71,r13		! source line 71
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	81,r13		! source line 81
	mov	"\0\0WH",r10
_Label_283:
!	jmp	_Label_284
_Label_284:
	mov	81,r13		! source line 81
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	82,r13		! source line 82
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	82,r13		! source line 82
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	83,r13		! source line 83
	mov	"\0\0IF",r10
	mov	83,r13		! source line 83
	mov	"\0\0SE",r10
!   _temp_288 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_286 else goto _Label_287
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_287
	jmp	_Label_286
_Label_286:
! THEN...
	mov	84,r13		! source line 84
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	84,r13		! source line 84
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_289
_Label_287:
! ELSE...
	mov	86,r13		! source line 86
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_289:
! END WHILE...
	jmp	_Label_283
_Label_285:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_206_IdleFunction:
	.word	_sourceFileName
	.word	_Label_290
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_291
	.word	8
	.word	4
	.word	_Label_292
	.word	-12
	.word	4
	.word	_Label_293
	.word	-16
	.word	4
	.word	0
_Label_290:
	.ascii	"IdleFunction\0"
	.align
_Label_291:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_293:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_3379:
	push	r0
	sub	r1,1,r1
	bne	_Label_3379
	mov	93,r13		! source line 93
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	109,r13		! source line 109
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_296 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_296 ) then goto _Label_295		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_295
!	jmp	_Label_294
_Label_294:
! THEN...
	mov	110,r13		! source line 110
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_298 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_298 [0 ] into _temp_299
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_297 = _temp_299		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_297  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	110,r13		! source line 110
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_295:
! ASSIGNMENT STATEMENT...
	mov	112,r13		! source line 112
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	113,r13		! source line 113
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_300 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_300 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	119,r13		! source line 119
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	123,r13		! source line 123
	mov	"\0\0WH",r10
_Label_301:
	mov	123,r13		! source line 123
	mov	"\0\0SE",r10
!   _temp_305 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_304  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_304 then goto _Label_303 else goto _Label_302
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_302
	jmp	_Label_303
_Label_302:
	mov	123,r13		! source line 123
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0AS",r10
	mov	124,r13		! source line 124
	mov	"\0\0SE",r10
!   _temp_306 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0SE",r10
!   _temp_307 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_301
_Label_303:
! IF STATEMENT...
	mov	128,r13		! source line 128
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_310 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_310 ) then goto _Label_309		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_309
!	jmp	_Label_308
_Label_308:
! THEN...
	mov	129,r13		! source line 129
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_312 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_312 [0 ] into _temp_313
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
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
	store	r2,[r14+-28]
!   _temp_311 = _temp_313		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_311  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	129,r13		! source line 129
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	130,r13		! source line 130
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_315 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_314 = *_temp_315  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_314) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_316 = _temp_314 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_309:
! RETURN STATEMENT...
	mov	128,r13		! source line 128
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_317
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_318
	.word	8
	.word	4
	.word	_Label_319
	.word	-16
	.word	4
	.word	_Label_320
	.word	-20
	.word	4
	.word	_Label_321
	.word	-24
	.word	4
	.word	_Label_322
	.word	-28
	.word	4
	.word	_Label_323
	.word	-32
	.word	4
	.word	_Label_324
	.word	-36
	.word	4
	.word	_Label_325
	.word	-40
	.word	4
	.word	_Label_326
	.word	-44
	.word	4
	.word	_Label_327
	.word	-48
	.word	4
	.word	_Label_328
	.word	-52
	.word	4
	.word	_Label_329
	.word	-9
	.word	1
	.word	_Label_330
	.word	-56
	.word	4
	.word	_Label_331
	.word	-60
	.word	4
	.word	_Label_332
	.word	-64
	.word	4
	.word	_Label_333
	.word	-68
	.word	4
	.word	_Label_334
	.word	-72
	.word	4
	.word	_Label_335
	.word	-76
	.word	4
	.word	_Label_336
	.word	-80
	.word	4
	.word	0
_Label_317:
	.ascii	"Run\0"
	.align
_Label_318:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_329:
	.byte	'C'
	.ascii	"_temp_304\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_335:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_336:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_3380:
	push	r0
	sub	r1,1,r1
	bne	_Label_3380
	mov	136,r13		! source line 136
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	143,r13		! source line 143
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	143,r13		! source line 143
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_337 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_337  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	144,r13		! source line 144
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	145,r13		! source line 145
	mov	"\0\0SE",r10
!   _temp_338 = _function_205_ThreadPrintShort
	set	_function_205_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_339 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_338  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	146,r13		! source line 146
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	146,r13		! source line 146
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	146,r13		! source line 146
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_340
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_341
	.word	-12
	.word	4
	.word	_Label_342
	.word	-16
	.word	4
	.word	_Label_343
	.word	-20
	.word	4
	.word	_Label_344
	.word	-24
	.word	4
	.word	0
_Label_340:
	.ascii	"PrintReadyList\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_343:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_344:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_3381:
	push	r0
	sub	r1,1,r1
	bne	_Label_3381
	mov	151,r13		! source line 151
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	163,r13		! source line 163
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	163,r13		! source line 163
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_345 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_345  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_347 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_346 = *_temp_347  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_346  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	165,r13		! source line 165
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	166,r13		! source line 166
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_348 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_348  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	167,r13		! source line 167
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	167,r13		! source line 167
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_349
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_350
	.word	-12
	.word	4
	.word	_Label_351
	.word	-16
	.word	4
	.word	_Label_352
	.word	-20
	.word	4
	.word	_Label_353
	.word	-24
	.word	4
	.word	_Label_354
	.word	-28
	.word	4
	.word	_Label_355
	.word	-32
	.word	4
	.word	0
_Label_349:
	.ascii	"ThreadStartMain\0"
	.align
_Label_350:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_351:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_352:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_354:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_355:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_3382:
	push	r0
	sub	r1,1,r1
	bne	_Label_3382
	mov	172,r13		! source line 172
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	183,r13		! source line 183
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	183,r13		! source line 183
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	187,r13		! source line 187
	mov	"\0\0SE",r10
!   _temp_356 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	188,r13		! source line 188
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_357 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_357  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	190,r13		! source line 190
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	190,r13		! source line 190
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_358
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_359
	.word	-12
	.word	4
	.word	_Label_360
	.word	-16
	.word	4
	.word	_Label_361
	.word	-20
	.word	4
	.word	0
_Label_358:
	.ascii	"ThreadFinish\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_361:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_3383:
	push	r0
	sub	r1,1,r1
	bne	_Label_3383
	mov	195,r13		! source line 195
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	203,r13		! source line 203
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	203,r13		! source line 203
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_362 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_362  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	204,r13		! source line 204
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	205,r13		! source line 205
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_364		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_364
!	jmp	_Label_363
_Label_363:
! THEN...
	mov	206,r13		! source line 206
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_365 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_365  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	206,r13		! source line 206
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_367 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_366 = *_temp_367  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_366  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	207,r13		! source line 207
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_364:
! CALL STATEMENT...
!   _temp_368 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_368  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	209,r13		! source line 209
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	210,r13		! source line 210
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_369 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_369  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	211,r13		! source line 211
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_370 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_370  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	212,r13		! source line 212
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	213,r13		! source line 213
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	213,r13		! source line 213
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_371
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_372
	.word	8
	.word	4
	.word	_Label_373
	.word	-12
	.word	4
	.word	_Label_374
	.word	-16
	.word	4
	.word	_Label_375
	.word	-20
	.word	4
	.word	_Label_376
	.word	-24
	.word	4
	.word	_Label_377
	.word	-28
	.word	4
	.word	_Label_378
	.word	-32
	.word	4
	.word	_Label_379
	.word	-36
	.word	4
	.word	_Label_380
	.word	-40
	.word	4
	.word	0
_Label_371:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_372:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_366\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_380:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_3384:
	push	r0
	sub	r1,1,r1
	bne	_Label_3384
	mov	218,r13		! source line 218
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	231,r13		! source line 231
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	232,r13		! source line 232
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_382		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_382
!	jmp	_Label_381
_Label_381:
! THEN...
	mov	234,r13		! source line 234
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	235,r13		! source line 235
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_383
_Label_382:
! ELSE...
	mov	237,r13		! source line 237
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	237,r13		! source line 237
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	238,r13		! source line 238
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_383:
! RETURN STATEMENT...
	mov	240,r13		! source line 240
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_384
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_385
	.word	8
	.word	4
	.word	_Label_386
	.word	-12
	.word	4
	.word	0
_Label_384:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_385:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_386:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_205_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_205_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3385:
	push	r0
	sub	r1,1,r1
	bne	_Label_3385
	mov	679,r13		! source line 679
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	686,r13		! source line 686
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	687,r13		! source line 687
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_390		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_390
!   _temp_389 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_391
_Label_390:
!   _temp_389 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_391:
!   if _temp_389 then goto _Label_388 else goto _Label_387
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_387
	jmp	_Label_388
_Label_387:
! THEN...
	mov	688,r13		! source line 688
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_392 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_392  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	688,r13		! source line 688
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	689,r13		! source line 689
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_388:
! CALL STATEMENT...
!   _temp_393 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_393  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	691,r13		! source line 691
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_395 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_394 = *_temp_395  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_394  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	692,r13		! source line 692
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_396 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_396  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	693,r13		! source line 693
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	694,r13		! source line 694
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_405 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_404 = *_temp_405  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_399
	cmp	r1,2
	be	_Label_400
	cmp	r1,3
	be	_Label_401
	cmp	r1,4
	be	_Label_402
	cmp	r1,5
	be	_Label_403
	jmp	_Label_397
! CASE 1...
_Label_399:
! CALL STATEMENT...
!   _temp_406 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_406  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	696,r13		! source line 696
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	697,r13		! source line 697
	mov	"\0\0BR",r10
	jmp	_Label_398
! CASE 2...
_Label_400:
! CALL STATEMENT...
!   _temp_407 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_407  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	699,r13		! source line 699
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	700,r13		! source line 700
	mov	"\0\0BR",r10
	jmp	_Label_398
! CASE 3...
_Label_401:
! CALL STATEMENT...
!   _temp_408 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_408  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	702,r13		! source line 702
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	703,r13		! source line 703
	mov	"\0\0BR",r10
	jmp	_Label_398
! CASE 4...
_Label_402:
! CALL STATEMENT...
!   _temp_409 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_409  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	705,r13		! source line 705
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	706,r13		! source line 706
	mov	"\0\0BR",r10
	jmp	_Label_398
! CASE 5...
_Label_403:
! CALL STATEMENT...
!   _temp_410 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_410  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	708,r13		! source line 708
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	709,r13		! source line 709
	mov	"\0\0BR",r10
	jmp	_Label_398
! DEFAULT CASE...
_Label_397:
! CALL STATEMENT...
!   _temp_411 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_411  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	711,r13		! source line 711
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_398:
! CALL STATEMENT...
!   _temp_412 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_412  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	713,r13		! source line 713
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_413 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_413  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	714,r13		! source line 714
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_414 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_414  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	715,r13		! source line 715
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	716,r13		! source line 716
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	718,r13		! source line 718
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	718,r13		! source line 718
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	718,r13		! source line 718
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_205_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_415
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_416
	.word	8
	.word	4
	.word	_Label_417
	.word	-16
	.word	4
	.word	_Label_418
	.word	-20
	.word	4
	.word	_Label_419
	.word	-24
	.word	4
	.word	_Label_420
	.word	-28
	.word	4
	.word	_Label_421
	.word	-32
	.word	4
	.word	_Label_422
	.word	-36
	.word	4
	.word	_Label_423
	.word	-40
	.word	4
	.word	_Label_424
	.word	-44
	.word	4
	.word	_Label_425
	.word	-48
	.word	4
	.word	_Label_426
	.word	-52
	.word	4
	.word	_Label_427
	.word	-56
	.word	4
	.word	_Label_428
	.word	-60
	.word	4
	.word	_Label_429
	.word	-64
	.word	4
	.word	_Label_430
	.word	-68
	.word	4
	.word	_Label_431
	.word	-72
	.word	4
	.word	_Label_432
	.word	-76
	.word	4
	.word	_Label_433
	.word	-9
	.word	1
	.word	_Label_434
	.word	-80
	.word	4
	.word	0
_Label_415:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_416:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_406\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_405\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_433:
	.byte	'C'
	.ascii	"_temp_389\0"
	.align
_Label_434:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_204_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_204_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3386:
	push	r0
	sub	r1,1,r1
	bne	_Label_3386
	mov	1069,r13		! source line 1069
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_435 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_435  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1073,r13		! source line 1073
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1074,r13		! source line 1074
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1074,r13		! source line 1074
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_204_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_436
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_437
	.word	8
	.word	4
	.word	_Label_438
	.word	-12
	.word	4
	.word	0
_Label_436:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_437:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	19,r1
_Label_3387:
	push	r0
	sub	r1,1,r1
	bne	_Label_3387
	mov	1079,r13		! source line 1079
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1093,r13		! source line 1093
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_440 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_439 = *_temp_440  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_439) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_441 = _temp_439 + 28
	load	[r14+-72],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_441 = exitStatus  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1096,r13		! source line 1096
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1096,r13		! source line 1096
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	1100,r13		! source line 1100
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_442 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_442 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-60],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1103,r13		! source line 1103
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1103,r13		! source line 1103
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	1106,r13		! source line 1106
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_445 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_444 = *_temp_445  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_444) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_446 = _temp_444 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_443 = _temp_446		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-56]
!   _temp_447 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_443  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1107,r13		! source line 1107
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_449 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_448 = *_temp_449  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_450 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_448  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message TurnIntoZombie
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1110,r13		! source line 1110
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_452 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_451 = *_temp_452  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_451) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_453 = _temp_451 + 24
	load	[r14+-24],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_453 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1111,r13		! source line 1111
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_454 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_454 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	1114,r13		! source line 1114
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! RETURN STATEMENT...
	mov	1114,r13		! source line 1114
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_455
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_456
	.word	8
	.word	4
	.word	_Label_457
	.word	-12
	.word	4
	.word	_Label_458
	.word	-16
	.word	4
	.word	_Label_459
	.word	-20
	.word	4
	.word	_Label_460
	.word	-24
	.word	4
	.word	_Label_461
	.word	-28
	.word	4
	.word	_Label_462
	.word	-32
	.word	4
	.word	_Label_463
	.word	-36
	.word	4
	.word	_Label_464
	.word	-40
	.word	4
	.word	_Label_465
	.word	-44
	.word	4
	.word	_Label_466
	.word	-48
	.word	4
	.word	_Label_467
	.word	-52
	.word	4
	.word	_Label_468
	.word	-56
	.word	4
	.word	_Label_469
	.word	-60
	.word	4
	.word	_Label_470
	.word	-64
	.word	4
	.word	_Label_471
	.word	-68
	.word	4
	.word	_Label_472
	.word	-72
	.word	4
	.word	_Label_473
	.word	-76
	.word	4
	.word	0
_Label_455:
	.ascii	"ProcessFinish\0"
	.align
_Label_456:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_473:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_3388:
	push	r0
	sub	r1,1,r1
	bne	_Label_3388
	mov	1600,r13		! source line 1600
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1610,r13		! source line 1610
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1612,r13		! source line 1612
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1613,r13		! source line 1613
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1613,r13		! source line 1613
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_474
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_474:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	7,r1
_Label_3389:
	push	r0
	sub	r1,1,r1
	bne	_Label_3389
	mov	1618,r13		! source line 1618
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1629,r13		! source line 1629
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1631,r13		! source line 1631
	mov	"\0\0IF",r10
!   _temp_478 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_479 = _temp_478 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_477 = *_temp_479  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_477 == 0 then goto _Label_476		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_476
!	jmp	_Label_475
_Label_475:
! THEN...
	mov	1632,r13		! source line 1632
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1632,r13		! source line 1632
	mov	"\0\0SE",r10
!   _temp_481 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_482 = _temp_481 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_480 = *_temp_482  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_480) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_476:
! RETURN STATEMENT...
	mov	1631,r13		! source line 1631
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_483
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_484
	.word	-12
	.word	4
	.word	_Label_485
	.word	-16
	.word	4
	.word	_Label_486
	.word	-20
	.word	4
	.word	_Label_487
	.word	-24
	.word	4
	.word	_Label_488
	.word	-28
	.word	4
	.word	_Label_489
	.word	-32
	.word	4
	.word	0
_Label_483:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_482\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_481\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_480\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_479\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_478\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_477\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	1639,r13		! source line 1639
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1648,r13		! source line 1648
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1648,r13		! source line 1648
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_490
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_490:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_3390:
	push	r0
	sub	r1,1,r1
	bne	_Label_3390
	mov	1653,r13		! source line 1653
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1659,r13		! source line 1659
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_491 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_491  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1660,r13		! source line 1660
	mov	"\0\0CA",r10
	call	_function_203_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1660,r13		! source line 1660
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_492
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_493
	.word	-12
	.word	4
	.word	0
_Label_492:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_491\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3391:
	push	r0
	sub	r1,1,r1
	bne	_Label_3391
	mov	1665,r13		! source line 1665
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1671,r13		! source line 1671
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_494 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_494  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1672,r13		! source line 1672
	mov	"\0\0CA",r10
	call	_function_203_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1672,r13		! source line 1672
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_495
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_496
	.word	-12
	.word	4
	.word	0
_Label_495:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_494\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3392:
	push	r0
	sub	r1,1,r1
	bne	_Label_3392
	mov	1677,r13		! source line 1677
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1683,r13		! source line 1683
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_497 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_497  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1684,r13		! source line 1684
	mov	"\0\0CA",r10
	call	_function_203_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1684,r13		! source line 1684
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_498
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_499
	.word	-12
	.word	4
	.word	0
_Label_498:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_497\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3393:
	push	r0
	sub	r1,1,r1
	bne	_Label_3393
	mov	1689,r13		! source line 1689
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1695,r13		! source line 1695
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_500 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_500  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1696,r13		! source line 1696
	mov	"\0\0CA",r10
	call	_function_203_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1696,r13		! source line 1696
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_501
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_502
	.word	-12
	.word	4
	.word	0
_Label_501:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_500\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3394:
	push	r0
	sub	r1,1,r1
	bne	_Label_3394
	mov	1701,r13		! source line 1701
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1707,r13		! source line 1707
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_503 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_503  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1708,r13		! source line 1708
	mov	"\0\0CA",r10
	call	_function_203_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1708,r13		! source line 1708
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_504
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_505
	.word	-12
	.word	4
	.word	0
_Label_504:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_503\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_3395:
	push	r0
	sub	r1,1,r1
	bne	_Label_3395
	mov	1713,r13		! source line 1713
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1719,r13		! source line 1719
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_506 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_506  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1720,r13		! source line 1720
	mov	"\0\0CA",r10
	call	_function_203_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1720,r13		! source line 1720
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_507
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_508
	.word	-12
	.word	4
	.word	0
_Label_507:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3396:
	push	r0
	sub	r1,1,r1
	bne	_Label_3396
	mov	1725,r13		! source line 1725
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1731,r13		! source line 1731
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_509 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_509  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1732,r13		! source line 1732
	mov	"\0\0CA",r10
	call	_function_203_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1732,r13		! source line 1732
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_510
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_511
	.word	-12
	.word	4
	.word	0
_Label_510:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_509\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_203_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_203_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3397:
	push	r0
	sub	r1,1,r1
	bne	_Label_3397
	mov	1737,r13		! source line 1737
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_512 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_512  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1742,r13		! source line 1742
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1743,r13		! source line 1743
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_513 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_513  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1744,r13		! source line 1744
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1747,r13		! source line 1747
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_517 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_516 = *_temp_517  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_516 == 0 then goto _Label_515		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_515
!	jmp	_Label_514
_Label_514:
! THEN...
	mov	1748,r13		! source line 1748
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1748,r13		! source line 1748
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_519 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_518 = *_temp_519  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_518) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_520
_Label_515:
! ELSE...
	mov	1750,r13		! source line 1750
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_521 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_521  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1750,r13		! source line 1750
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_520:
! SEND STATEMENT...
	mov	1752,r13		! source line 1752
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1758,r13		! source line 1758
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1758,r13		! source line 1758
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_203_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_522
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_523
	.word	8
	.word	4
	.word	_Label_524
	.word	-12
	.word	4
	.word	_Label_525
	.word	-16
	.word	4
	.word	_Label_526
	.word	-20
	.word	4
	.word	_Label_527
	.word	-24
	.word	4
	.word	_Label_528
	.word	-28
	.word	4
	.word	_Label_529
	.word	-32
	.word	4
	.word	_Label_530
	.word	-36
	.word	4
	.word	0
_Label_522:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_523:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_521\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_519\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_518\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_517\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_516\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_513\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_512\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_3398:
	push	r0
	sub	r1,1,r1
	bne	_Label_3398
	mov	1763,r13		! source line 1763
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1770,r13		! source line 1770
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1784,r13		! source line 1784
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3399
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_531
_Label_3399:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_531
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_531
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_545,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_545:
	jmp	_Label_537	! 1:	
	jmp	_Label_544	! 2:	
	jmp	_Label_534	! 3:	
	jmp	_Label_533	! 4:	
	jmp	_Label_536	! 5:	
	jmp	_Label_535	! 6:	
	jmp	_Label_538	! 7:	
	jmp	_Label_539	! 8:	
	jmp	_Label_540	! 9:	
	jmp	_Label_541	! 10:	
	jmp	_Label_542	! 11:	
	jmp	_Label_543	! 12:	
! CASE 4...
_Label_533:
! RETURN STATEMENT...
	mov	1786,r13		! source line 1786
	mov	"\0\0RE",r10
!   Call the function
	mov	1786,r13		! source line 1786
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_546  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_546  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_534:
! CALL STATEMENT...
!   Call the function
	mov	1788,r13		! source line 1788
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1789,r13		! source line 1789
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_535:
! RETURN STATEMENT...
	mov	1791,r13		! source line 1791
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1791,r13		! source line 1791
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_547  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_547  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_536:
! RETURN STATEMENT...
	mov	1793,r13		! source line 1793
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1793,r13		! source line 1793
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_548  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_548  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_537:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1795,r13		! source line 1795
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1796,r13		! source line 1796
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_538:
! RETURN STATEMENT...
	mov	1798,r13		! source line 1798
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1798,r13		! source line 1798
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_549  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_549  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_539:
! RETURN STATEMENT...
	mov	1800,r13		! source line 1800
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1800,r13		! source line 1800
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_550  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_550  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_540:
! RETURN STATEMENT...
	mov	1802,r13		! source line 1802
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1802,r13		! source line 1802
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_551  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_551  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_541:
! RETURN STATEMENT...
	mov	1804,r13		! source line 1804
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1804,r13		! source line 1804
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_552  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_552  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_542:
! RETURN STATEMENT...
	mov	1806,r13		! source line 1806
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1806,r13		! source line 1806
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_553  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_553  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_543:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1808,r13		! source line 1808
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1809,r13		! source line 1809
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_544:
! CALL STATEMENT...
!   Call the function
	mov	1811,r13		! source line 1811
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1812,r13		! source line 1812
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_531:
! CALL STATEMENT...
!   _temp_554 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_554  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1814,r13		! source line 1814
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1815,r13		! source line 1815
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1816,r13		! source line 1816
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_555 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_555  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1817,r13		! source line 1817
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_532:
! RETURN STATEMENT...
	mov	1819,r13		! source line 1819
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_556
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_557
	.word	8
	.word	4
	.word	_Label_558
	.word	12
	.word	4
	.word	_Label_559
	.word	16
	.word	4
	.word	_Label_560
	.word	20
	.word	4
	.word	_Label_561
	.word	24
	.word	4
	.word	_Label_562
	.word	-12
	.word	4
	.word	_Label_563
	.word	-16
	.word	4
	.word	_Label_564
	.word	-20
	.word	4
	.word	_Label_565
	.word	-24
	.word	4
	.word	_Label_566
	.word	-28
	.word	4
	.word	_Label_567
	.word	-32
	.word	4
	.word	_Label_568
	.word	-36
	.word	4
	.word	_Label_569
	.word	-40
	.word	4
	.word	_Label_570
	.word	-44
	.word	4
	.word	_Label_571
	.word	-48
	.word	4
	.word	0
_Label_556:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_557:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_558:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_559:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_560:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_561:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_563:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_571:
	.byte	'?'
	.ascii	"_temp_546\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	1,r1
_Label_3400:
	push	r0
	sub	r1,1,r1
	bne	_Label_3400
	mov	1824,r13		! source line 1824
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1826,r13		! source line 1826
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1826,r13		! source line 1826
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_572
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_573
	.word	8
	.word	4
	.word	0
_Label_572:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_573:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	2,r1
_Label_3401:
	push	r0
	sub	r1,1,r1
	bne	_Label_3401
	mov	1831,r13		! source line 1831
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_574 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_574  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1833,r13		! source line 1833
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1833,r13		! source line 1833
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_575
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_576
	.word	-12
	.word	4
	.word	0
_Label_575:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	1,r1
_Label_3402:
	push	r0
	sub	r1,1,r1
	bne	_Label_3402
	mov	1838,r13		! source line 1838
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1840,r13		! source line 1840
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1840,r13		! source line 1840
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_577
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_577:
	.ascii	"Handle_Sys_Yield\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	56,r1
_Label_3403:
	push	r0
	sub	r1,1,r1
	bne	_Label_3403
	mov	1845,r13		! source line 1845
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1854,r13		! source line 1854
	mov	"\0\0AS",r10
	mov	1854,r13		! source line 1854
	mov	"\0\0SE",r10
!   _temp_578 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-200]
!   Send message GetANewThread
	load	[r14+-200],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-212]
! ASSIGNMENT STATEMENT...
	mov	1855,r13		! source line 1855
	mov	"\0\0AS",r10
	mov	1855,r13		! source line 1855
	mov	"\0\0SE",r10
!   _temp_579 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-196]
!   Send message GetANewProcess
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=newPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! SEND STATEMENT...
	mov	1856,r13		! source line 1856
	mov	"\0\0SE",r10
!   _temp_580 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-192]
!   if intIsZero (newTh) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_580  sizeInBytes=4
	load	[r14+-192],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-212],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1857,r13		! source line 1857
	mov	"\0\0AS",r10
!   if intIsZero (newPC) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_581 = newPC + 24
	load	[r14+-216],r1
	add	r1,24,r1
	store	r1,[r14+-188]
!   Data Move: *_temp_581 = newTh  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1858,r13		! source line 1858
	mov	"\0\0AS",r10
!   if intIsZero (newPC) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_582 = newPC + 16
	load	[r14+-216],r1
	add	r1,16,r1
	store	r1,[r14+-184]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_585 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_584 = *_temp_585  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_584) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_586 = _temp_584 + 12
	load	[r14+-176],r1
	add	r1,12,r1
	store	r1,[r14+-168]
!   Data Move: _temp_583 = *_temp_586  (sizeInBytes=4)
	load	[r14+-168],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   Data Move: *_temp_582 = _temp_583  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r14+-184],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1859,r13		! source line 1859
	mov	"\0\0AS",r10
!   if intIsZero (newTh) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_587 = newTh + 4160
	load	[r14+-212],r1
	add	r1,4160,r1
	store	r1,[r14+-164]
!   Data Move: *_temp_587 = newPC  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r14+-164],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1860,r13		! source line 1860
	mov	"\0\0AS",r10
!   if intIsZero (newTh) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_588 = newTh + 76
	load	[r14+-212],r1
	add	r1,76,r1
	store	r1,[r14+-160]
!   Data Move: *_temp_588 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-160],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (newTh) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_590 = newTh + 4096
	load	[r14+-212],r1
	add	r1,4096,r1
	store	r1,[r14+-152]
!   Move address of _temp_590 [0 ] into _temp_591
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-148]
!   _temp_589 = _temp_591		(4 bytes)
	load	[r14+-148],r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_589  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	1864,r13		! source line 1864
	mov	"\0\0CE",r10
	call	SaveUserRegs
! ASSIGNMENT STATEMENT...
	mov	1865,r13		! source line 1865
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1865,r13		! source line 1865
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=functionPlaceholder  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-220]
! ASSIGNMENT STATEMENT...
	mov	1868,r13		! source line 1868
	mov	"\0\0AS",r10
!   if intIsZero (newTh) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_592 = newTh + 68
	load	[r14+-212],r1
	add	r1,68,r1
	store	r1,[r14+-144]
!   if intIsZero (newTh) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_594 = newTh + 88
	load	[r14+-212],r1
	add	r1,88,r1
	store	r1,[r14+-136]
!   Move address of _temp_594 [999 ] into _temp_595
!     make sure index expr is >= 0
	mov	999,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   _temp_593 = _temp_595		(4 bytes)
	load	[r14+-132],r1
	store	r1,[r14+-140]
!   Data Move: *_temp_592 = _temp_593  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-144],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1872,r13		! source line 1872
	mov	"\0\0SE",r10
!   if intIsZero (newPC) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_597 = newPC + 32
	load	[r14+-216],r1
	add	r1,32,r1
	store	r1,[r14+-124]
!   _temp_596 = _temp_597		(4 bytes)
	load	[r14+-124],r1
	store	r1,[r14+-128]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_600 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_599 = *_temp_600  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_599) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_601 = _temp_599 + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   _temp_602 = _temp_601 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Data Move: _temp_598 = *_temp_602  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   _temp_603 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=12  value=_temp_596  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_598  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! FOR STATEMENT...
	mov	1875,r13		! source line 1875
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_608 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-96]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_612 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_611 = *_temp_612  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_611) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_613 = _temp_611 + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   _temp_614 = _temp_613 + 4
	load	[r14+-76],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Data Move: _temp_610 = *_temp_614  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   _temp_609 = _temp_610 - 1		(int)
	load	[r14+-88],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_608  (sizeInBytes=4)
	load	[r14+-96],r1
	store	r1,[r14+-204]
_Label_604:
!   Perform the FOR-LOOP termination test
!   if j > _temp_609 then goto _Label_607		
	load	[r14+-204],r1
	load	[r14+-92],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_607
_Label_605:
	mov	1875,r13		! source line 1875
	mov	"\0\0FB",r10
! CALL STATEMENT...
	mov	1876,r13		! source line 1876
	mov	"\0\0SE",r10
!   if intIsZero (newPC) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_616 = newPC + 32
	load	[r14+-216],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=j  sizeInBytes=4
	load	[r14+-204],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_615  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
	mov	1876,r13		! source line 1876
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_619 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_618 = *_temp_619  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_618) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_620 = _temp_618 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=j  sizeInBytes=4
	load	[r14+-204],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_617  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_615  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_617  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	1876,r13		! source line 1876
	mov	"\0\0CE",r10
	call	MemoryCopy
! IF STATEMENT...
	mov	1877,r13		! source line 1877
	mov	"\0\0IF",r10
	mov	1877,r13		! source line 1877
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_625 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_624 = *_temp_625  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_624) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_626 = _temp_624 + 32
	load	[r14+-44],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=j  sizeInBytes=4
	load	[r14+-204],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_623  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_627 = _temp_623 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_627 then goto _Label_622 else goto _Label_621
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_621
	jmp	_Label_622
_Label_621:
! THEN...
	mov	1878,r13		! source line 1878
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1878,r13		! source line 1878
	mov	"\0\0SE",r10
!   if intIsZero (newPC) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_628 = newPC + 32
	load	[r14+-216],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=j  sizeInBytes=4
	load	[r14+-204],r1
	store	r1,[r15+4]
!   Send message SetWritable
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,48,r2
	call	r2
	jmp	_Label_629
_Label_622:
! ELSE...
	mov	1880,r13		! source line 1880
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	1880,r13		! source line 1880
	mov	"\0\0SE",r10
!   if intIsZero (newPC) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_630 = newPC + 32
	load	[r14+-216],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=j  sizeInBytes=4
	load	[r14+-204],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! END IF...
_Label_629:
!   Increment the FOR-LOOP index variable and jump back
_Label_606:
!   j = j + 1
	load	[r14+-204],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-204]
	jmp	_Label_604
! END FOR
_Label_607:
! ASSIGNMENT STATEMENT...
	mov	1885,r13		! source line 1885
	mov	"\0\0AS",r10
!   Call the function
	mov	1885,r13		! source line 1885
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
! SEND STATEMENT...
	mov	1888,r13		! source line 1888
	mov	"\0\0SE",r10
!   _temp_631 = _function_202_ResumeChildAfterFork
	set	_function_202_ResumeChildAfterFork,r1
	store	r1,[r14+-24]
!   if intIsZero (newTh) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_631  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=oldPC  sizeInBytes=4
	load	[r14+-208],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-212],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1889,r13		! source line 1889
	mov	"\0\0RE",r10
!   if intIsZero (newPC) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_633 = newPC + 12
	load	[r14+-216],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: _temp_632 = *_temp_633  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_632  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,228,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_634
	.word	0		! total size of parameters
	.word	224		! frame size = 224
	.word	_Label_635
	.word	-16
	.word	4
	.word	_Label_636
	.word	-20
	.word	4
	.word	_Label_637
	.word	-24
	.word	4
	.word	_Label_638
	.word	-28
	.word	4
	.word	_Label_639
	.word	-32
	.word	4
	.word	_Label_640
	.word	-9
	.word	1
	.word	_Label_641
	.word	-36
	.word	4
	.word	_Label_642
	.word	-40
	.word	4
	.word	_Label_643
	.word	-44
	.word	4
	.word	_Label_644
	.word	-10
	.word	1
	.word	_Label_645
	.word	-48
	.word	4
	.word	_Label_646
	.word	-52
	.word	4
	.word	_Label_647
	.word	-56
	.word	4
	.word	_Label_648
	.word	-60
	.word	4
	.word	_Label_649
	.word	-64
	.word	4
	.word	_Label_650
	.word	-68
	.word	4
	.word	_Label_651
	.word	-72
	.word	4
	.word	_Label_652
	.word	-76
	.word	4
	.word	_Label_653
	.word	-80
	.word	4
	.word	_Label_654
	.word	-84
	.word	4
	.word	_Label_655
	.word	-88
	.word	4
	.word	_Label_656
	.word	-92
	.word	4
	.word	_Label_657
	.word	-96
	.word	4
	.word	_Label_658
	.word	-100
	.word	4
	.word	_Label_659
	.word	-104
	.word	4
	.word	_Label_660
	.word	-108
	.word	4
	.word	_Label_661
	.word	-112
	.word	4
	.word	_Label_662
	.word	-116
	.word	4
	.word	_Label_663
	.word	-120
	.word	4
	.word	_Label_664
	.word	-124
	.word	4
	.word	_Label_665
	.word	-128
	.word	4
	.word	_Label_666
	.word	-132
	.word	4
	.word	_Label_667
	.word	-136
	.word	4
	.word	_Label_668
	.word	-140
	.word	4
	.word	_Label_669
	.word	-144
	.word	4
	.word	_Label_670
	.word	-148
	.word	4
	.word	_Label_671
	.word	-152
	.word	4
	.word	_Label_672
	.word	-156
	.word	4
	.word	_Label_673
	.word	-160
	.word	4
	.word	_Label_674
	.word	-164
	.word	4
	.word	_Label_675
	.word	-168
	.word	4
	.word	_Label_676
	.word	-172
	.word	4
	.word	_Label_677
	.word	-176
	.word	4
	.word	_Label_678
	.word	-180
	.word	4
	.word	_Label_679
	.word	-184
	.word	4
	.word	_Label_680
	.word	-188
	.word	4
	.word	_Label_681
	.word	-192
	.word	4
	.word	_Label_682
	.word	-196
	.word	4
	.word	_Label_683
	.word	-200
	.word	4
	.word	_Label_684
	.word	-204
	.word	4
	.word	_Label_685
	.word	-208
	.word	4
	.word	_Label_686
	.word	-212
	.word	4
	.word	_Label_687
	.word	-216
	.word	4
	.word	_Label_688
	.word	-220
	.word	4
	.word	0
_Label_634:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_640:
	.byte	'C'
	.ascii	"_temp_627\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_644:
	.byte	'C'
	.ascii	"_temp_623\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_684:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_685:
	.byte	'I'
	.ascii	"oldPC\0"
	.align
_Label_686:
	.byte	'P'
	.ascii	"newTh\0"
	.align
_Label_687:
	.byte	'P'
	.ascii	"newPC\0"
	.align
_Label_688:
	.byte	'I'
	.ascii	"functionPlaceholder\0"
	.align
! 
! ===============  FUNCTION ResumeChildAfterFork  ===============
! 
_function_202_ResumeChildAfterFork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_202_ResumeChildAfterFork,r1
	push	r1
	mov	17,r1
_Label_3404:
	push	r0
	sub	r1,1,r1
	bne	_Label_3404
	mov	1892,r13		! source line 1892
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1898,r13		! source line 1898
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1898,r13		! source line 1898
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=functionPlaceholder  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1900,r13		! source line 1900
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_690 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_689 = *_temp_690  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_689) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_691 = _temp_689 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Send message SetToThisPageTable
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_693 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_693 [0 ] into _temp_694
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_692 = _temp_694		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_692  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1901,r13		! source line 1901
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	1902,r13		! source line 1902
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_695 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_695 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1903,r13		! source line 1903
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_696 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-24]
!   Move address of _temp_696 [14 ] into _temp_697
!     make sure index expr is >= 0
	mov	14,r2
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
!   Data Move: initUserStackTop = *_temp_697  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1904,r13		! source line 1904
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_698 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-16]
!   Move address of _temp_698 [999 ] into _temp_699
!     make sure index expr is >= 0
	mov	999,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   initSystemStackTop = _temp_699		(4 bytes)
	load	[r14+-12],r1
	store	r1,[r14+-64]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=PC  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+8]
!   Call the function
	mov	1906,r13		! source line 1906
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1906,r13		! source line 1906
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_202_ResumeChildAfterFork:
	.word	_sourceFileName
	.word	_Label_700
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_701
	.word	8
	.word	4
	.word	_Label_702
	.word	-12
	.word	4
	.word	_Label_703
	.word	-16
	.word	4
	.word	_Label_704
	.word	-20
	.word	4
	.word	_Label_705
	.word	-24
	.word	4
	.word	_Label_706
	.word	-28
	.word	4
	.word	_Label_707
	.word	-32
	.word	4
	.word	_Label_708
	.word	-36
	.word	4
	.word	_Label_709
	.word	-40
	.word	4
	.word	_Label_710
	.word	-44
	.word	4
	.word	_Label_711
	.word	-48
	.word	4
	.word	_Label_712
	.word	-52
	.word	4
	.word	_Label_713
	.word	-56
	.word	4
	.word	_Label_714
	.word	-60
	.word	4
	.word	_Label_715
	.word	-64
	.word	4
	.word	0
_Label_700:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_701:
	.byte	'I'
	.ascii	"PC\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_698\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_697\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_696\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_695\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_694\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_713:
	.byte	'I'
	.ascii	"functionPlaceholder\0"
	.align
_Label_714:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_715:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	30,r1
_Label_3405:
	push	r0
	sub	r1,1,r1
	bne	_Label_3405
	mov	1911,r13		! source line 1911
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	1916,r13		! source line 1916
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_720 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-112]
!   Calculate and save the FOR-LOOP ending value
!   _temp_721 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-108]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_720  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+-116]
_Label_716:
!   Perform the FOR-LOOP termination test
!   if j > _temp_721 then goto _Label_719		
	load	[r14+-116],r1
	load	[r14+-108],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_719
_Label_717:
	mov	1916,r13		! source line 1916
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1919,r13		! source line 1919
	mov	"\0\0IF",r10
!   _temp_727 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-100]
!   _temp_728 = _temp_727 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Move address of _temp_728 [j ] into _temp_729
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-96],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-92]
!   _temp_730 = _temp_729 + 16
	load	[r14+-92],r1
	add	r1,16,r1
	store	r1,[r14+-88]
!   Data Move: _temp_726 = *_temp_730  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_733 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_732 = *_temp_733  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_732) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_734 = _temp_732 + 12
	load	[r14+-80],r1
	add	r1,12,r1
	store	r1,[r14+-72]
!   Data Move: _temp_731 = *_temp_734  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_726 != _temp_731 then goto _Label_723		(int)
	load	[r14+-104],r1
	load	[r14+-84],r2
	cmp	r1,r2
	bne	_Label_723
!	jmp	_Label_725
_Label_725:
!   _temp_736 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_737 = _temp_736 + 4
	load	[r14+-64],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Move address of _temp_737 [j ] into _temp_738
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   _temp_739 = _temp_738 + 12
	load	[r14+-56],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: _temp_735 = *_temp_739  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_735 != processID then goto _Label_723		(int)
	load	[r14+-68],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_723
!	jmp	_Label_724
_Label_724:
!   _temp_741 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_742 = _temp_741 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_742 [j ] into _temp_743
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_744 = _temp_743 + 20
	load	[r14+-36],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_740 = *_temp_744  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_740 == 3 then goto _Label_723		(int)
	load	[r14+-48],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_723
!	jmp	_Label_722
_Label_722:
! THEN...
	mov	1920,r13		! source line 1920
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1920,r13		! source line 1920
	mov	"\0\0AS",r10
	mov	1920,r13		! source line 1920
	mov	"\0\0SE",r10
!   _temp_746 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_747 = _temp_746 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_747 [j ] into _temp_748
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_745 = _temp_748		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_749 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_745  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message WaitForZombie
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=exitStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-120]
! RETURN STATEMENT...
	mov	1921,r13		! source line 1921
	mov	"\0\0RE",r10
!   ReturnResult: exitStatus  (sizeInBytes=4)
	load	[r14+-120],r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_723:
!   Increment the FOR-LOOP index variable and jump back
_Label_718:
!   j = j + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_716
! END FOR
_Label_719:
! RETURN STATEMENT...
	mov	1925,r13		! source line 1925
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_750
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_751
	.word	8
	.word	4
	.word	_Label_752
	.word	-12
	.word	4
	.word	_Label_753
	.word	-16
	.word	4
	.word	_Label_754
	.word	-20
	.word	4
	.word	_Label_755
	.word	-24
	.word	4
	.word	_Label_756
	.word	-28
	.word	4
	.word	_Label_757
	.word	-32
	.word	4
	.word	_Label_758
	.word	-36
	.word	4
	.word	_Label_759
	.word	-40
	.word	4
	.word	_Label_760
	.word	-44
	.word	4
	.word	_Label_761
	.word	-48
	.word	4
	.word	_Label_762
	.word	-52
	.word	4
	.word	_Label_763
	.word	-56
	.word	4
	.word	_Label_764
	.word	-60
	.word	4
	.word	_Label_765
	.word	-64
	.word	4
	.word	_Label_766
	.word	-68
	.word	4
	.word	_Label_767
	.word	-72
	.word	4
	.word	_Label_768
	.word	-76
	.word	4
	.word	_Label_769
	.word	-80
	.word	4
	.word	_Label_770
	.word	-84
	.word	4
	.word	_Label_771
	.word	-88
	.word	4
	.word	_Label_772
	.word	-92
	.word	4
	.word	_Label_773
	.word	-96
	.word	4
	.word	_Label_774
	.word	-100
	.word	4
	.word	_Label_775
	.word	-104
	.word	4
	.word	_Label_776
	.word	-108
	.word	4
	.word	_Label_777
	.word	-112
	.word	4
	.word	_Label_778
	.word	-116
	.word	4
	.word	_Label_779
	.word	-120
	.word	4
	.word	0
_Label_750:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_751:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_778:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_779:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	64,r1
_Label_3406:
	push	r0
	sub	r1,1,r1
	bne	_Label_3406
	mov	1930,r13		! source line 1930
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-204,r4
	mov	23,r3
_Label_3407:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3407
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-204]
! ASSIGNMENT STATEMENT...
	mov	1940,r13		! source line 1940
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1940,r13		! source line 1940
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=functionPlaceholder  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	1941,r13		! source line 1941
	mov	"\0\0AS",r10
	mov	1941,r13		! source line 1941
	mov	"\0\0SE",r10
!   _temp_781 = &fileName
	add	r14,-228,r1
	store	r1,[r14+-108]
!   _temp_782 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-104]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_784 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_783 = *_temp_784  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_783) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_785 = _temp_783 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_781  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_782  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=functionPlaceholder  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! IF STATEMENT...
	mov	1942,r13		! source line 1942
	mov	"\0\0IF",r10
!   if functionPlaceholder >= 0 then goto _Label_787		(int)
	load	[r14+-248],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_787
!	jmp	_Label_786
_Label_786:
! THEN...
	mov	1943,r13		! source line 1943
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1943,r13		! source line 1943
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_787:
! SEND STATEMENT...
	mov	1945,r13		! source line 1945
	mov	"\0\0SE",r10
!   _temp_788 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-88]
!   Send message Init
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1946,r13		! source line 1946
	mov	"\0\0AS",r10
	mov	1946,r13		! source line 1946
	mov	"\0\0SE",r10
!   _temp_789 = &fileName
	add	r14,-228,r1
	store	r1,[r14+-84]
!   _temp_790 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_789  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=filePt  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! IF STATEMENT...
	mov	1947,r13		! source line 1947
	mov	"\0\0IF",r10
!   if intIsZero (filePt) then goto _Label_791
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_791
	jmp	_Label_792
_Label_791:
! THEN...
	mov	1948,r13		! source line 1948
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1948,r13		! source line 1948
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_792:
! ASSIGNMENT STATEMENT...
	mov	1950,r13		! source line 1950
	mov	"\0\0AS",r10
	mov	1950,r13		! source line 1950
	mov	"\0\0SE",r10
!   _temp_793 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-76]
!   if intIsZero (filePt) then goto _runtimeErrorNullPointer
	load	[r14+-244],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_793  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-244],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! IF STATEMENT...
	mov	1951,r13		! source line 1951
	mov	"\0\0IF",r10
!   if initPC >= 0 then goto _Label_795		(int)
	load	[r14+-240],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_795
!	jmp	_Label_794
_Label_794:
! THEN...
	mov	1952,r13		! source line 1952
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1952,r13		! source line 1952
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_795:
! SEND STATEMENT...
	mov	1954,r13		! source line 1954
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_798 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_797 = *_temp_798  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_797) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_799 = _temp_797 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   _temp_796 = _temp_799		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-72]
!   _temp_800 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_796  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1955,r13		! source line 1955
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_802 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_801 = *_temp_802  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_801) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_803 = _temp_801 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_803 = newAddrSpace  (sizeInBytes=92)
	add	r14,-204,r5
	load	[r14+-44],r4
	mov	23,r3
_Label_3408:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3408
! SEND STATEMENT...
	mov	1956,r13		! source line 1956
	mov	"\0\0SE",r10
!   _temp_804 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=filePt  sizeInBytes=4
	load	[r14+-244],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1957,r13		! source line 1957
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_805 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_805 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1958,r13		! source line 1958
	mov	"\0\0AS",r10
!   _temp_807 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-28]
!   _temp_808 = _temp_807 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_806 = *_temp_808  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   initUserStackTop = _temp_806 * 8192		(int)
	load	[r14+-32],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	1959,r13		! source line 1959
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_809 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_809 [999 ] into _temp_810
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
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
	store	r2,[r14+-16]
!   initSystemStackTop = _temp_810		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-236]
! SEND STATEMENT...
	mov	1960,r13		! source line 1960
	mov	"\0\0SE",r10
!   _temp_811 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-12]
!   Send message SetToThisPageTable
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+8]
!   Call the function
	mov	1961,r13		! source line 1961
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1962,r13		! source line 1962
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_812
	.word	4		! total size of parameters
	.word	256		! frame size = 256
	.word	_Label_813
	.word	8
	.word	4
	.word	_Label_814
	.word	-12
	.word	4
	.word	_Label_815
	.word	-16
	.word	4
	.word	_Label_816
	.word	-20
	.word	4
	.word	_Label_817
	.word	-24
	.word	4
	.word	_Label_818
	.word	-28
	.word	4
	.word	_Label_819
	.word	-32
	.word	4
	.word	_Label_820
	.word	-36
	.word	4
	.word	_Label_821
	.word	-40
	.word	4
	.word	_Label_822
	.word	-44
	.word	4
	.word	_Label_823
	.word	-48
	.word	4
	.word	_Label_824
	.word	-52
	.word	4
	.word	_Label_825
	.word	-56
	.word	4
	.word	_Label_826
	.word	-60
	.word	4
	.word	_Label_827
	.word	-64
	.word	4
	.word	_Label_828
	.word	-68
	.word	4
	.word	_Label_829
	.word	-72
	.word	4
	.word	_Label_830
	.word	-76
	.word	4
	.word	_Label_831
	.word	-80
	.word	4
	.word	_Label_832
	.word	-84
	.word	4
	.word	_Label_833
	.word	-88
	.word	4
	.word	_Label_834
	.word	-92
	.word	4
	.word	_Label_835
	.word	-96
	.word	4
	.word	_Label_836
	.word	-100
	.word	4
	.word	_Label_837
	.word	-104
	.word	4
	.word	_Label_838
	.word	-108
	.word	4
	.word	_Label_839
	.word	-112
	.word	4
	.word	_Label_840
	.word	-204
	.word	92
	.word	_Label_841
	.word	-228
	.word	24
	.word	_Label_842
	.word	-232
	.word	4
	.word	_Label_843
	.word	-236
	.word	4
	.word	_Label_844
	.word	-240
	.word	4
	.word	_Label_845
	.word	-244
	.word	4
	.word	_Label_846
	.word	-248
	.word	4
	.word	0
_Label_812:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_813:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_814:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_817:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_807\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_806\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_804\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_824:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_827:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_829:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_830:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_832:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_833:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_834:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_835:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_836:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_837:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_839:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_840:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_841:
	.byte	'A'
	.ascii	"fileName\0"
	.align
_Label_842:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_843:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_844:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_845:
	.byte	'P'
	.ascii	"filePt\0"
	.align
_Label_846:
	.byte	'I'
	.ascii	"functionPlaceholder\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	21,r1
_Label_3409:
	push	r0
	sub	r1,1,r1
	bne	_Label_3409
	mov	1967,r13		! source line 1967
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1972,r13		! source line 1972
	mov	"\0\0AS",r10
	mov	1972,r13		! source line 1972
	mov	"\0\0SE",r10
!   _temp_847 = &fileName
	add	r14,-76,r1
	store	r1,[r14+-48]
!   _temp_848 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_850 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_849 = *_temp_850  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_849) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_851 = _temp_849 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_847  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_848  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=functionPlaceholder  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_852 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_852  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1973,r13		! source line 1973
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1974,r13		! source line 1974
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_853 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_853  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1975,r13		! source line 1975
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_854 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_854  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1976,r13		! source line 1976
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1977,r13		! source line 1977
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_855 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_855  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1978,r13		! source line 1978
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_856 = &fileName
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_856  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1979,r13		! source line 1979
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1980,r13		! source line 1980
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1981,r13		! source line 1981
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_857
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_858
	.word	8
	.word	4
	.word	_Label_859
	.word	-12
	.word	4
	.word	_Label_860
	.word	-16
	.word	4
	.word	_Label_861
	.word	-20
	.word	4
	.word	_Label_862
	.word	-24
	.word	4
	.word	_Label_863
	.word	-28
	.word	4
	.word	_Label_864
	.word	-32
	.word	4
	.word	_Label_865
	.word	-36
	.word	4
	.word	_Label_866
	.word	-40
	.word	4
	.word	_Label_867
	.word	-44
	.word	4
	.word	_Label_868
	.word	-48
	.word	4
	.word	_Label_869
	.word	-52
	.word	4
	.word	_Label_870
	.word	-76
	.word	24
	.word	0
_Label_857:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_858:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_856\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_855\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_854\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_853\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_869:
	.byte	'I'
	.ascii	"functionPlaceholder\0"
	.align
_Label_870:
	.byte	'A'
	.ascii	"fileName\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	21,r1
_Label_3410:
	push	r0
	sub	r1,1,r1
	bne	_Label_3410
	mov	1986,r13		! source line 1986
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1991,r13		! source line 1991
	mov	"\0\0AS",r10
	mov	1991,r13		! source line 1991
	mov	"\0\0SE",r10
!   _temp_871 = &fileName
	add	r14,-76,r1
	store	r1,[r14+-48]
!   _temp_872 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_874 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_873 = *_temp_874  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_873) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_875 = _temp_873 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_871  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_872  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=functionPlaceholder  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_876 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_876  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1992,r13		! source line 1992
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1993,r13		! source line 1993
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_877 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_877  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1994,r13		! source line 1994
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_878 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_878  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1995,r13		! source line 1995
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1996,r13		! source line 1996
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_879 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_879  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1997,r13		! source line 1997
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_880 = &fileName
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_880  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1998,r13		! source line 1998
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1999,r13		! source line 1999
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2000,r13		! source line 2000
	mov	"\0\0RE",r10
!   ReturnResult: 5000  (sizeInBytes=4)
	mov	5000,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_881
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_882
	.word	8
	.word	4
	.word	_Label_883
	.word	-12
	.word	4
	.word	_Label_884
	.word	-16
	.word	4
	.word	_Label_885
	.word	-20
	.word	4
	.word	_Label_886
	.word	-24
	.word	4
	.word	_Label_887
	.word	-28
	.word	4
	.word	_Label_888
	.word	-32
	.word	4
	.word	_Label_889
	.word	-36
	.word	4
	.word	_Label_890
	.word	-40
	.word	4
	.word	_Label_891
	.word	-44
	.word	4
	.word	_Label_892
	.word	-48
	.word	4
	.word	_Label_893
	.word	-52
	.word	4
	.word	_Label_894
	.word	-76
	.word	24
	.word	0
_Label_881:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_882:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_880\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_879\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_878\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_877\0"
	.align
_Label_887:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_888:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_889:
	.byte	'?'
	.ascii	"_temp_874\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_893:
	.byte	'I'
	.ascii	"functionPlaceholder\0"
	.align
_Label_894:
	.byte	'A'
	.ascii	"fileName\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	6,r1
_Label_3411:
	push	r0
	sub	r1,1,r1
	bne	_Label_3411
	mov	2005,r13		! source line 2005
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_895 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_895  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2007,r13		! source line 2007
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2008,r13		! source line 2008
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_896 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_896  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2009,r13		! source line 2009
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2010,r13		! source line 2010
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2011,r13		! source line 2011
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_897 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_897  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2012,r13		! source line 2012
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_898 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_898  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2013,r13		! source line 2013
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	2014,r13		! source line 2014
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_899 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_899  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2015,r13		! source line 2015
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2016,r13		! source line 2016
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2017,r13		! source line 2017
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2018,r13		! source line 2018
	mov	"\0\0RE",r10
!   ReturnResult: 6000  (sizeInBytes=4)
	mov	6000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_900
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_901
	.word	8
	.word	4
	.word	_Label_902
	.word	12
	.word	4
	.word	_Label_903
	.word	16
	.word	4
	.word	_Label_904
	.word	-12
	.word	4
	.word	_Label_905
	.word	-16
	.word	4
	.word	_Label_906
	.word	-20
	.word	4
	.word	_Label_907
	.word	-24
	.word	4
	.word	_Label_908
	.word	-28
	.word	4
	.word	0
_Label_900:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_901:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_902:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_903:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_899\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_898\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	6,r1
_Label_3412:
	push	r0
	sub	r1,1,r1
	bne	_Label_3412
	mov	2023,r13		! source line 2023
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_909 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_909  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2025,r13		! source line 2025
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2026,r13		! source line 2026
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_910 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_910  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2027,r13		! source line 2027
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2028,r13		! source line 2028
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2029,r13		! source line 2029
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_911 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_911  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2030,r13		! source line 2030
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_912 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_912  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2031,r13		! source line 2031
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	2032,r13		! source line 2032
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_913 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_913  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2033,r13		! source line 2033
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2034,r13		! source line 2034
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2035,r13		! source line 2035
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2036,r13		! source line 2036
	mov	"\0\0RE",r10
!   ReturnResult: 7000  (sizeInBytes=4)
	mov	7000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_914
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_915
	.word	8
	.word	4
	.word	_Label_916
	.word	12
	.word	4
	.word	_Label_917
	.word	16
	.word	4
	.word	_Label_918
	.word	-12
	.word	4
	.word	_Label_919
	.word	-16
	.word	4
	.word	_Label_920
	.word	-20
	.word	4
	.word	_Label_921
	.word	-24
	.word	4
	.word	_Label_922
	.word	-28
	.word	4
	.word	0
_Label_914:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_915:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_916:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_917:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_913\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	4,r1
_Label_3413:
	push	r0
	sub	r1,1,r1
	bne	_Label_3413
	mov	2041,r13		! source line 2041
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_923 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_923  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2043,r13		! source line 2043
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2044,r13		! source line 2044
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_924 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_924  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2045,r13		! source line 2045
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2046,r13		! source line 2046
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2047,r13		! source line 2047
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_925 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_925  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2048,r13		! source line 2048
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2049,r13		! source line 2049
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2050,r13		! source line 2050
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2051,r13		! source line 2051
	mov	"\0\0RE",r10
!   ReturnResult: 8000  (sizeInBytes=4)
	mov	8000,r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_926
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_927
	.word	8
	.word	4
	.word	_Label_928
	.word	12
	.word	4
	.word	_Label_929
	.word	-12
	.word	4
	.word	_Label_930
	.word	-16
	.word	4
	.word	_Label_931
	.word	-20
	.word	4
	.word	0
_Label_926:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_927:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_928:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_929:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_931:
	.byte	'?'
	.ascii	"_temp_923\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	3,r1
_Label_3414:
	push	r0
	sub	r1,1,r1
	bne	_Label_3414
	mov	2056,r13		! source line 2056
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_932 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_932  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2058,r13		! source line 2058
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2059,r13		! source line 2059
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_933 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_933  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2060,r13		! source line 2060
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2061,r13		! source line 2061
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2062,r13		! source line 2062
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2062,r13		! source line 2062
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_934
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_935
	.word	8
	.word	4
	.word	_Label_936
	.word	-12
	.word	4
	.word	_Label_937
	.word	-16
	.word	4
	.word	0
_Label_934:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_935:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_201_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_201_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3415:
	push	r0
	sub	r1,1,r1
	bne	_Label_3415
	mov	2652,r13		! source line 2652
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2654,r13		! source line 2654
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2655,r13		! source line 2655
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2656,r13		! source line 2656
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_938 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_938  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2657,r13		! source line 2657
	mov	"\0\0AS",r10
!   _temp_939 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_939) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_941 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_941) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_940 = *_temp_941  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_939 = _temp_940  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2658,r13		! source line 2658
	mov	"\0\0AS",r10
!   _temp_942 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_942) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_944 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_944) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_943 = *_temp_944  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_942 = _temp_943  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2659,r13		! source line 2659
	mov	"\0\0AS",r10
!   _temp_945 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_945) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_947 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_947) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_946 = *_temp_947  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_945 = _temp_946  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2659,r13		! source line 2659
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_201_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_948
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_949
	.word	8
	.word	4
	.word	_Label_950
	.word	12
	.word	4
	.word	_Label_951
	.word	-16
	.word	4
	.word	_Label_952
	.word	-9
	.word	1
	.word	_Label_953
	.word	-20
	.word	4
	.word	_Label_954
	.word	-24
	.word	4
	.word	_Label_955
	.word	-10
	.word	1
	.word	_Label_956
	.word	-28
	.word	4
	.word	_Label_957
	.word	-32
	.word	4
	.word	_Label_958
	.word	-11
	.word	1
	.word	_Label_959
	.word	-36
	.word	4
	.word	_Label_960
	.word	-12
	.word	1
	.word	_Label_961
	.word	-40
	.word	4
	.word	_Label_962
	.word	-44
	.word	4
	.word	0
_Label_948:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_949:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_950:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_951:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_952:
	.byte	'C'
	.ascii	"_temp_946\0"
	.align
_Label_953:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_954:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_955:
	.byte	'C'
	.ascii	"_temp_943\0"
	.align
_Label_956:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_957:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_958:
	.byte	'C'
	.ascii	"_temp_940\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_960:
	.byte	'C'
	.ascii	"_temp_938\0"
	.align
_Label_961:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_962:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_200_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_200_printFCB,r1
	push	r1
	mov	3,r1
_Label_3416:
	push	r0
	sub	r1,1,r1
	bne	_Label_3416
	mov	2662,r13		! source line 2662
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_964 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_963 = *_temp_964  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_963  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2663,r13		! source line 2663
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2664,r13		! source line 2664
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2664,r13		! source line 2664
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_200_printFCB:
	.word	_sourceFileName
	.word	_Label_965
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_966
	.word	8
	.word	4
	.word	_Label_967
	.word	-12
	.word	4
	.word	_Label_968
	.word	-16
	.word	4
	.word	0
_Label_965:
	.ascii	"printFCB\0"
	.align
_Label_966:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_964\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_963\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_199_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_199_printOpen,r1
	push	r1
	mov	4,r1
_Label_3417:
	push	r0
	sub	r1,1,r1
	bne	_Label_3417
	mov	2667,r13		! source line 2667
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_969 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_969  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2668,r13		! source line 2668
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_970 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_970  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2669,r13		! source line 2669
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_971 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_971  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2670,r13		! source line 2670
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2671,r13		! source line 2671
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2671,r13		! source line 2671
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_199_printOpen:
	.word	_sourceFileName
	.word	_Label_972
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_973
	.word	8
	.word	4
	.word	_Label_974
	.word	-12
	.word	4
	.word	_Label_975
	.word	-16
	.word	4
	.word	_Label_976
	.word	-20
	.word	4
	.word	0
_Label_972:
	.ascii	"printOpen\0"
	.align
_Label_973:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_971\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_970\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_977
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_977:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_978
	.word	_sourceFileName
	.word	125		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_978:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_3418:
	push	r0
	sub	r1,1,r1
	bne	_Label_3418
	mov	269,r13		! source line 269
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_980		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_980
!	jmp	_Label_979
_Label_979:
! THEN...
	mov	271,r13		! source line 271
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_981 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_981  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	271,r13		! source line 271
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_980:
! ASSIGNMENT STATEMENT...
	mov	273,r13		! source line 273
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	274,r13		! source line 274
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	274,r13		! source line 274
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_983
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_984
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_985
	.word	12
	.word	4
	.word	_Label_986
	.word	-12
	.word	4
	.word	_Label_987
	.word	-16
	.word	4
	.word	0
_Label_983:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_984:
	.ascii	"Pself\0"
	.align
_Label_985:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_986:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_987:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_3419:
	push	r0
	sub	r1,1,r1
	bne	_Label_3419
	mov	279,r13		! source line 279
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	283,r13		! source line 283
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	283,r13		! source line 283
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	284,r13		! source line 284
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_989		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_989
!	jmp	_Label_988
_Label_988:
! THEN...
	mov	285,r13		! source line 285
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_990 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_990  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	285,r13		! source line 285
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_989:
! ASSIGNMENT STATEMENT...
	mov	287,r13		! source line 287
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	288,r13		! source line 288
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_992		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_992
!	jmp	_Label_991
_Label_991:
! THEN...
	mov	289,r13		! source line 289
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	289,r13		! source line 289
	mov	"\0\0AS",r10
	mov	289,r13		! source line 289
	mov	"\0\0SE",r10
!   _temp_993 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	290,r13		! source line 290
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_994 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_994 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	291,r13		! source line 291
	mov	"\0\0SE",r10
!   _temp_995 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_992:
! ASSIGNMENT STATEMENT...
	mov	293,r13		! source line 293
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	293,r13		! source line 293
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	293,r13		! source line 293
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_996
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_997
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_998
	.word	-12
	.word	4
	.word	_Label_999
	.word	-16
	.word	4
	.word	_Label_1000
	.word	-20
	.word	4
	.word	_Label_1001
	.word	-24
	.word	4
	.word	_Label_1002
	.word	-28
	.word	4
	.word	_Label_1003
	.word	-32
	.word	4
	.word	0
_Label_996:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_997:
	.ascii	"Pself\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_995\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_994\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_993\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_1002:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1003:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_3420:
	push	r0
	sub	r1,1,r1
	bne	_Label_3420
	mov	298,r13		! source line 298
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	301,r13		! source line 301
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	301,r13		! source line 301
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	302,r13		! source line 302
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_1005		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1005
!	jmp	_Label_1004
_Label_1004:
! THEN...
	mov	303,r13		! source line 303
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1006 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1006  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	303,r13		! source line 303
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1005:
! ASSIGNMENT STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_1008		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1008
!	jmp	_Label_1007
_Label_1007:
! THEN...
	mov	307,r13		! source line 307
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0SE",r10
!   _temp_1009 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_1008:
! ASSIGNMENT STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	310,r13		! source line 310
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_1010
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1011
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1012
	.word	-12
	.word	4
	.word	_Label_1013
	.word	-16
	.word	4
	.word	_Label_1014
	.word	-20
	.word	4
	.word	0
_Label_1010:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1011:
	.ascii	"Pself\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_1009\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_1006\0"
	.align
_Label_1014:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1015
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1015:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1016
	.word	_sourceFileName
	.word	138		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1016:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_3421:
	push	r0
	sub	r1,1,r1
	bne	_Label_3421
	mov	333,r13		! source line 333
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_1018
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1019
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1020
	.word	-12
	.word	4
	.word	0
_Label_1018:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1019:
	.ascii	"Pself\0"
	.align
_Label_1020:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_3422:
	push	r0
	sub	r1,1,r1
	bne	_Label_3422
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1022		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1022
!	jmp	_Label_1021
_Label_1021:
! THEN...
	mov	343,r13		! source line 343
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1023 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1023  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	343,r13		! source line 343
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1022:
! ASSIGNMENT STATEMENT...
	mov	345,r13		! source line 345
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	345,r13		! source line 345
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	346,r13		! source line 346
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_1027		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1027
!   _temp_1026 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1028
_Label_1027:
!   _temp_1026 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1028:
!   if _temp_1026 then goto _Label_1025 else goto _Label_1024
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1024
	jmp	_Label_1025
_Label_1024:
! THEN...
	mov	347,r13		! source line 347
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	347,r13		! source line 347
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_1029
_Label_1025:
! ELSE...
	mov	349,r13		! source line 349
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	349,r13		! source line 349
	mov	"\0\0SE",r10
!   _temp_1030 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	350,r13		! source line 350
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_1029:
! ASSIGNMENT STATEMENT...
	mov	352,r13		! source line 352
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	352,r13		! source line 352
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	352,r13		! source line 352
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_1031
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1032
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1033
	.word	-16
	.word	4
	.word	_Label_1034
	.word	-9
	.word	1
	.word	_Label_1035
	.word	-20
	.word	4
	.word	_Label_1036
	.word	-24
	.word	4
	.word	0
_Label_1031:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1032:
	.ascii	"Pself\0"
	.align
_Label_1033:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1034:
	.byte	'C'
	.ascii	"_temp_1026\0"
	.align
_Label_1035:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1036:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_3423:
	push	r0
	sub	r1,1,r1
	bne	_Label_3423
	mov	357,r13		! source line 357
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	361,r13		! source line 361
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1038		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1038
!	jmp	_Label_1037
_Label_1037:
! THEN...
	mov	362,r13		! source line 362
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1039 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1039  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	362,r13		! source line 362
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1038:
! ASSIGNMENT STATEMENT...
	mov	364,r13		! source line 364
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	364,r13		! source line 364
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	365,r13		! source line 365
	mov	"\0\0AS",r10
	mov	365,r13		! source line 365
	mov	"\0\0SE",r10
!   _temp_1040 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	366,r13		! source line 366
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_1042		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1042
!	jmp	_Label_1041
_Label_1041:
! THEN...
	mov	367,r13		! source line 367
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	367,r13		! source line 367
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1043 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1043 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	368,r13		! source line 368
	mov	"\0\0SE",r10
!   _temp_1044 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	369,r13		! source line 369
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_1045
_Label_1042:
! ELSE...
	mov	371,r13		! source line 371
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	371,r13		! source line 371
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_1045:
! ASSIGNMENT STATEMENT...
	mov	373,r13		! source line 373
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	373,r13		! source line 373
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	373,r13		! source line 373
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_1046
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1047
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1048
	.word	-12
	.word	4
	.word	_Label_1049
	.word	-16
	.word	4
	.word	_Label_1050
	.word	-20
	.word	4
	.word	_Label_1051
	.word	-24
	.word	4
	.word	_Label_1052
	.word	-28
	.word	4
	.word	_Label_1053
	.word	-32
	.word	4
	.word	0
_Label_1046:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1047:
	.ascii	"Pself\0"
	.align
_Label_1048:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1049:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1050:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1051:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1052:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1053:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_3424:
	push	r0
	sub	r1,1,r1
	bne	_Label_3424
	mov	378,r13		! source line 378
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	379,r13		! source line 379
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1056		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1056
!	jmp	_Label_1055
_Label_1055:
!   _temp_1054 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1057
_Label_1056:
!   _temp_1054 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1057:
!   ReturnResult: _temp_1054  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_1058
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1059
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1060
	.word	-9
	.word	1
	.word	0
_Label_1058:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1059:
	.ascii	"Pself\0"
	.align
_Label_1060:
	.byte	'C'
	.ascii	"_temp_1054\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1061
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1061:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1062
	.word	_sourceFileName
	.word	152		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1062:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_3425:
	push	r0
	sub	r1,1,r1
	bne	_Label_3425
	mov	419,r13		! source line 419
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	420,r13		! source line 420
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	420,r13		! source line 420
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_1064
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1065
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1066
	.word	-12
	.word	4
	.word	0
_Label_1064:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1065:
	.ascii	"Pself\0"
	.align
_Label_1066:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_3426:
	push	r0
	sub	r1,1,r1
	bne	_Label_3426
	mov	425,r13		! source line 425
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0IF",r10
	mov	428,r13		! source line 428
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1069  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1069 then goto _Label_1068 else goto _Label_1067
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1067
	jmp	_Label_1068
_Label_1067:
! THEN...
	mov	429,r13		! source line 429
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1070 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1070  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	429,r13		! source line 429
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1068:
! ASSIGNMENT STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	431,r13		! source line 431
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0SE",r10
!   _temp_1071 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	436,r13		! source line 436
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_1072
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1073
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1074
	.word	12
	.word	4
	.word	_Label_1075
	.word	-16
	.word	4
	.word	_Label_1076
	.word	-20
	.word	4
	.word	_Label_1077
	.word	-9
	.word	1
	.word	_Label_1078
	.word	-24
	.word	4
	.word	0
_Label_1072:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1073:
	.ascii	"Pself\0"
	.align
_Label_1074:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1075:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1076:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1077:
	.byte	'C'
	.ascii	"_temp_1069\0"
	.align
_Label_1078:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_3427:
	push	r0
	sub	r1,1,r1
	bne	_Label_3427
	mov	441,r13		! source line 441
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	445,r13		! source line 445
	mov	"\0\0IF",r10
	mov	445,r13		! source line 445
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1081  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1081 then goto _Label_1080 else goto _Label_1079
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1079
	jmp	_Label_1080
_Label_1079:
! THEN...
	mov	446,r13		! source line 446
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1082 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1082  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	446,r13		! source line 446
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1080:
! ASSIGNMENT STATEMENT...
	mov	448,r13		! source line 448
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	448,r13		! source line 448
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	449,r13		! source line 449
	mov	"\0\0AS",r10
	mov	449,r13		! source line 449
	mov	"\0\0SE",r10
!   _temp_1083 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	450,r13		! source line 450
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_1085		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1085
!	jmp	_Label_1084
_Label_1084:
! THEN...
	mov	451,r13		! source line 451
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	451,r13		! source line 451
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1086 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1086 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	452,r13		! source line 452
	mov	"\0\0SE",r10
!   _temp_1087 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1085:
! ASSIGNMENT STATEMENT...
	mov	454,r13		! source line 454
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	454,r13		! source line 454
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	454,r13		! source line 454
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_1088
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1089
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1090
	.word	12
	.word	4
	.word	_Label_1091
	.word	-16
	.word	4
	.word	_Label_1092
	.word	-20
	.word	4
	.word	_Label_1093
	.word	-24
	.word	4
	.word	_Label_1094
	.word	-28
	.word	4
	.word	_Label_1095
	.word	-9
	.word	1
	.word	_Label_1096
	.word	-32
	.word	4
	.word	_Label_1097
	.word	-36
	.word	4
	.word	0
_Label_1088:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1089:
	.ascii	"Pself\0"
	.align
_Label_1090:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1095:
	.byte	'C'
	.ascii	"_temp_1081\0"
	.align
_Label_1096:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1097:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_3428:
	push	r0
	sub	r1,1,r1
	bne	_Label_3428
	mov	459,r13		! source line 459
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0IF",r10
	mov	463,r13		! source line 463
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1100  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1100 then goto _Label_1099 else goto _Label_1098
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1098
	jmp	_Label_1099
_Label_1098:
! THEN...
	mov	464,r13		! source line 464
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1101 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1101  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	464,r13		! source line 464
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1099:
! ASSIGNMENT STATEMENT...
	mov	466,r13		! source line 466
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	466,r13		! source line 466
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	467,r13		! source line 467
	mov	"\0\0WH",r10
_Label_1102:
!	jmp	_Label_1103
_Label_1103:
	mov	467,r13		! source line 467
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	468,r13		! source line 468
	mov	"\0\0AS",r10
	mov	468,r13		! source line 468
	mov	"\0\0SE",r10
!   _temp_1105 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	469,r13		! source line 469
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_1106
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1106
	jmp	_Label_1107
_Label_1106:
! THEN...
	mov	470,r13		! source line 470
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	470,r13		! source line 470
	mov	"\0\0BR",r10
	jmp	_Label_1104
! END IF...
_Label_1107:
! ASSIGNMENT STATEMENT...
	mov	472,r13		! source line 472
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1108 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1108 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	473,r13		! source line 473
	mov	"\0\0SE",r10
!   _temp_1109 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1102
_Label_1104:
! ASSIGNMENT STATEMENT...
	mov	475,r13		! source line 475
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	475,r13		! source line 475
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	475,r13		! source line 475
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_1110
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1111
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1112
	.word	12
	.word	4
	.word	_Label_1113
	.word	-16
	.word	4
	.word	_Label_1114
	.word	-20
	.word	4
	.word	_Label_1115
	.word	-24
	.word	4
	.word	_Label_1116
	.word	-28
	.word	4
	.word	_Label_1117
	.word	-9
	.word	1
	.word	_Label_1118
	.word	-32
	.word	4
	.word	_Label_1119
	.word	-36
	.word	4
	.word	0
_Label_1110:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1111:
	.ascii	"Pself\0"
	.align
_Label_1112:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1105\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1117:
	.byte	'C'
	.ascii	"_temp_1100\0"
	.align
_Label_1118:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1119:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1120
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_1120:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1121
	.word	_sourceFileName
	.word	165		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1121:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_3429:
	push	r0
	sub	r1,1,r1
	bne	_Label_3429
	mov	486,r13		! source line 486
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	491,r13		! source line 491
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	492,r13		! source line 492
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	494,r13		! source line 494
	mov	"\0\0AS",r10
!   _temp_1122 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1122) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1122 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	495,r13		! source line 495
	mov	"\0\0AS",r10
!   _temp_1123 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1123 [0 ] into _temp_1124
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Data Move: *_temp_1124 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	496,r13		! source line 496
	mov	"\0\0AS",r10
!   _temp_1125 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1125 [999 ] into _temp_1126
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
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
	store	r2,[r14+-172]
!   Data Move: *_temp_1126 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	497,r13		! source line 497
	mov	"\0\0AS",r10
!   _temp_1127 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1127 [999 ] into _temp_1128
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
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
	store	r2,[r14+-164]
!   stackTop = _temp_1128		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	498,r13		! source line 498
	mov	"\0\0AS",r10
!   _temp_1129 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1131 = &_temp_1130
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1131 = _temp_1131 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1133:
!   Data Move: *_temp_1131 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1131 = _temp_1131 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1132 = _temp_1132 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1132) then goto _Label_1133
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1133
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1134 = &_temp_1130
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3430
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3430:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1129 = *_temp_1134  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3431:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3431
! ASSIGNMENT STATEMENT...
	mov	499,r13		! source line 499
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	500,r13		! source line 500
	mov	"\0\0AS",r10
!   _temp_1135 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1137 = &_temp_1136
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1137 = _temp_1137 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1139:
!   Data Move: *_temp_1137 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1137 = _temp_1137 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1138 = _temp_1138 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1138) then goto _Label_1139
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1139
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1140 = &_temp_1136
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3432
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3432:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1135 = *_temp_1140  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3433:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3433
! RETURN STATEMENT...
	mov	500,r13		! source line 500
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_1141
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1142
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1143
	.word	12
	.word	4
	.word	_Label_1144
	.word	-12
	.word	4
	.word	_Label_1145
	.word	-16
	.word	4
	.word	_Label_1146
	.word	-20
	.word	4
	.word	_Label_1147
	.word	-84
	.word	64
	.word	_Label_1148
	.word	-88
	.word	4
	.word	_Label_1149
	.word	-92
	.word	4
	.word	_Label_1150
	.word	-96
	.word	4
	.word	_Label_1151
	.word	-100
	.word	4
	.word	_Label_1152
	.word	-156
	.word	56
	.word	_Label_1153
	.word	-160
	.word	4
	.word	_Label_1154
	.word	-164
	.word	4
	.word	_Label_1155
	.word	-168
	.word	4
	.word	_Label_1156
	.word	-172
	.word	4
	.word	_Label_1157
	.word	-176
	.word	4
	.word	_Label_1158
	.word	-180
	.word	4
	.word	_Label_1159
	.word	-184
	.word	4
	.word	_Label_1160
	.word	-188
	.word	4
	.word	0
_Label_1141:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1142:
	.ascii	"Pself\0"
	.align
_Label_1143:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_3434:
	push	r0
	sub	r1,1,r1
	bne	_Label_3434
	mov	505,r13		! source line 505
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	516,r13		! source line 516
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	516,r13		! source line 516
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	518,r13		! source line 518
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	520,r13		! source line 520
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	521,r13		! source line 521
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1161 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1161  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	522,r13		! source line 522
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	523,r13		! source line 523
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1163 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1162  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	524,r13		! source line 524
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	524,r13		! source line 524
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	524,r13		! source line 524
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_1164
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1165
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1166
	.word	12
	.word	4
	.word	_Label_1167
	.word	16
	.word	4
	.word	_Label_1168
	.word	-12
	.word	4
	.word	_Label_1169
	.word	-16
	.word	4
	.word	_Label_1170
	.word	-20
	.word	4
	.word	_Label_1171
	.word	-24
	.word	4
	.word	_Label_1172
	.word	-28
	.word	4
	.word	0
_Label_1164:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1165:
	.ascii	"Pself\0"
	.align
_Label_1166:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1167:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1171:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1172:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_3435:
	push	r0
	sub	r1,1,r1
	bne	_Label_3435
	mov	529,r13		! source line 529
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	545,r13		! source line 545
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1175 == _P_Kernel_currentThread then goto _Label_1174		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1174
!	jmp	_Label_1173
_Label_1173:
! THEN...
	mov	546,r13		! source line 546
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1176 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1176  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	546,r13		! source line 546
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1174:
! ASSIGNMENT STATEMENT...
	mov	548,r13		! source line 548
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	548,r13		! source line 548
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	552,r13		! source line 552
	mov	"\0\0AS",r10
	mov	552,r13		! source line 552
	mov	"\0\0SE",r10
!   _temp_1177 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	553,r13		! source line 553
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_1179		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1179
!	jmp	_Label_1178
_Label_1178:
! THEN...
	mov	557,r13		! source line 557
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	557,r13		! source line 557
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1181		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1181
!	jmp	_Label_1180
_Label_1180:
! THEN...
	mov	558,r13		! source line 558
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1182 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1182  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	558,r13		! source line 558
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1181:
! ASSIGNMENT STATEMENT...
	mov	560,r13		! source line 560
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	561,r13		! source line 561
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1184 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1183  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	562,r13		! source line 562
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_1179:
! ASSIGNMENT STATEMENT...
	mov	564,r13		! source line 564
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	564,r13		! source line 564
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	564,r13		! source line 564
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_1185
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1186
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1187
	.word	-12
	.word	4
	.word	_Label_1188
	.word	-16
	.word	4
	.word	_Label_1189
	.word	-20
	.word	4
	.word	_Label_1190
	.word	-24
	.word	4
	.word	_Label_1191
	.word	-28
	.word	4
	.word	_Label_1192
	.word	-32
	.word	4
	.word	_Label_1193
	.word	-36
	.word	4
	.word	_Label_1194
	.word	-40
	.word	4
	.word	_Label_1195
	.word	-44
	.word	4
	.word	0
_Label_1185:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1186:
	.ascii	"Pself\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1193:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1194:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1195:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_3436:
	push	r0
	sub	r1,1,r1
	bne	_Label_3436
	mov	569,r13		! source line 569
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	581,r13		! source line 581
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1197		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1197
!	jmp	_Label_1196
_Label_1196:
! THEN...
	mov	582,r13		! source line 582
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1198 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1198  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	582,r13		! source line 582
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1197:
! IF STATEMENT...
	mov	585,r13		! source line 585
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1201 == _P_Kernel_currentThread then goto _Label_1200		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1200
!	jmp	_Label_1199
_Label_1199:
! THEN...
	mov	586,r13		! source line 586
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1202 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1202  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	586,r13		! source line 586
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1200:
! ASSIGNMENT STATEMENT...
	mov	591,r13		! source line 591
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	592,r13		! source line 592
	mov	"\0\0AS",r10
	mov	592,r13		! source line 592
	mov	"\0\0SE",r10
!   _temp_1203 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	593,r13		! source line 593
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_1204
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1204
	jmp	_Label_1205
_Label_1204:
! THEN...
	mov	594,r13		! source line 594
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1206 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1206  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	594,r13		! source line 594
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1205:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	596,r13		! source line 596
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_1207
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1208
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1209
	.word	-12
	.word	4
	.word	_Label_1210
	.word	-16
	.word	4
	.word	_Label_1211
	.word	-20
	.word	4
	.word	_Label_1212
	.word	-24
	.word	4
	.word	_Label_1213
	.word	-28
	.word	4
	.word	_Label_1214
	.word	-32
	.word	4
	.word	0
_Label_1207:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1208:
	.ascii	"Pself\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1214:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_3437:
	push	r0
	sub	r1,1,r1
	bne	_Label_3437
	mov	601,r13		! source line 601
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	607,r13		! source line 607
	mov	"\0\0IF",r10
!   _temp_1218 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1218 [0 ] into _temp_1219
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_1217 = *_temp_1219  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1217 == 606348324 then goto _Label_1216		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1216
!	jmp	_Label_1215
_Label_1215:
! THEN...
	mov	608,r13		! source line 608
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1220 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1220  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	608,r13		! source line 608
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_1221
_Label_1216:
! ELSE...
	mov	609,r13		! source line 609
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	609,r13		! source line 609
	mov	"\0\0IF",r10
!   _temp_1225 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1225 [999 ] into _temp_1226
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
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
	store	r2,[r14+-16]
!   Data Move: _temp_1224 = *_temp_1226  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1224 == 606348324 then goto _Label_1223		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1223
!	jmp	_Label_1222
_Label_1222:
! THEN...
	mov	610,r13		! source line 610
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1227 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1227  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	610,r13		! source line 610
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1223:
! END IF...
_Label_1221:
! RETURN STATEMENT...
	mov	607,r13		! source line 607
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_1228
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1229
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1230
	.word	-12
	.word	4
	.word	_Label_1231
	.word	-16
	.word	4
	.word	_Label_1232
	.word	-20
	.word	4
	.word	_Label_1233
	.word	-24
	.word	4
	.word	_Label_1234
	.word	-28
	.word	4
	.word	_Label_1235
	.word	-32
	.word	4
	.word	_Label_1236
	.word	-36
	.word	4
	.word	_Label_1237
	.word	-40
	.word	4
	.word	0
_Label_1228:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1229:
	.ascii	"Pself\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_3438:
	push	r0
	sub	r1,1,r1
	bne	_Label_3438
	mov	616,r13		! source line 616
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	622,r13		! source line 622
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	622,r13		! source line 622
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_1238 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1238  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	623,r13		! source line 623
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	624,r13		! source line 624
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1239 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1239  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	625,r13		! source line 625
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1240  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1241 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1241  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1242 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1242  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	629,r13		! source line 629
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1247 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1248 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1247  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1243:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1248 then goto _Label_1246		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1246
_Label_1244:
	mov	629,r13		! source line 629
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1249 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1249  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1250 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1250  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1251 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1251  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1253 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1253 [i ] into _temp_1254
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
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
	store	r2,[r14+-140]
!   Data Move: _temp_1252 = *_temp_1254  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1252  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1255 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1255  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	634,r13		! source line 634
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1257 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1257 [i ] into _temp_1258
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
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
	store	r2,[r14+-124]
!   Data Move: _temp_1256 = *_temp_1258  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1256  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1259 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1259  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	636,r13		! source line 636
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1245:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1243
! END FOR
_Label_1246:
! CALL STATEMENT...
!   _temp_1260 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-116]
!   _temp_1261 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1260  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1261  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	638,r13		! source line 638
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1262 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-108]
!   _temp_1264 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1264 [0 ] into _temp_1265
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   _temp_1263 = _temp_1265		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1262  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1263  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	639,r13		! source line 639
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	640,r13		! source line 640
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_1268
	cmp	r1,2
	be	_Label_1269
	cmp	r1,3
	be	_Label_1270
	cmp	r1,4
	be	_Label_1271
	cmp	r1,5
	be	_Label_1272
	jmp	_Label_1266
! CASE 1...
_Label_1268:
! CALL STATEMENT...
!   _temp_1273 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1273  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	642,r13		! source line 642
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	643,r13		! source line 643
	mov	"\0\0BR",r10
	jmp	_Label_1267
! CASE 2...
_Label_1269:
! CALL STATEMENT...
!   _temp_1274 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1274  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	645,r13		! source line 645
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	646,r13		! source line 646
	mov	"\0\0BR",r10
	jmp	_Label_1267
! CASE 3...
_Label_1270:
! CALL STATEMENT...
!   _temp_1275 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1275  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	648,r13		! source line 648
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	649,r13		! source line 649
	mov	"\0\0BR",r10
	jmp	_Label_1267
! CASE 4...
_Label_1271:
! CALL STATEMENT...
!   _temp_1276 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1276  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	651,r13		! source line 651
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	652,r13		! source line 652
	mov	"\0\0BR",r10
	jmp	_Label_1267
! CASE 5...
_Label_1272:
! CALL STATEMENT...
!   _temp_1277 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1277  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	655,r13		! source line 655
	mov	"\0\0BR",r10
	jmp	_Label_1267
! DEFAULT CASE...
_Label_1266:
! CALL STATEMENT...
!   _temp_1278 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1278  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	657,r13		! source line 657
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1267:
! CALL STATEMENT...
!   _temp_1279 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1279  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	659,r13		! source line 659
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	660,r13		! source line 660
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1280 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1280  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	662,r13		! source line 662
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	663,r13		! source line 663
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1285 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1286 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1285  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1281:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1286 then goto _Label_1284		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1284
_Label_1282:
	mov	663,r13		! source line 663
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1287 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1287  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1288 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1288  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	665,r13		! source line 665
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1289 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1289  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	666,r13		! source line 666
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1291 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1291 [i ] into _temp_1292
!     make sure index expr is >= 0
	load	[r14+-192],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_1290 = *_temp_1292  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1290  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1293 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1293  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	668,r13		! source line 668
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1295 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1295 [i ] into _temp_1296
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
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
	store	r2,[r14+-16]
!   Data Move: _temp_1294 = *_temp_1296  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1294  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1297 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1297  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1283:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1281
! END FOR
_Label_1284:
! ASSIGNMENT STATEMENT...
	mov	672,r13		! source line 672
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	672,r13		! source line 672
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	672,r13		! source line 672
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_1298
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1299
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1300
	.word	-12
	.word	4
	.word	_Label_1301
	.word	-16
	.word	4
	.word	_Label_1302
	.word	-20
	.word	4
	.word	_Label_1303
	.word	-24
	.word	4
	.word	_Label_1304
	.word	-28
	.word	4
	.word	_Label_1305
	.word	-32
	.word	4
	.word	_Label_1306
	.word	-36
	.word	4
	.word	_Label_1307
	.word	-40
	.word	4
	.word	_Label_1308
	.word	-44
	.word	4
	.word	_Label_1309
	.word	-48
	.word	4
	.word	_Label_1310
	.word	-52
	.word	4
	.word	_Label_1311
	.word	-56
	.word	4
	.word	_Label_1312
	.word	-60
	.word	4
	.word	_Label_1313
	.word	-64
	.word	4
	.word	_Label_1314
	.word	-68
	.word	4
	.word	_Label_1315
	.word	-72
	.word	4
	.word	_Label_1316
	.word	-76
	.word	4
	.word	_Label_1317
	.word	-80
	.word	4
	.word	_Label_1318
	.word	-84
	.word	4
	.word	_Label_1319
	.word	-88
	.word	4
	.word	_Label_1320
	.word	-92
	.word	4
	.word	_Label_1321
	.word	-96
	.word	4
	.word	_Label_1322
	.word	-100
	.word	4
	.word	_Label_1323
	.word	-104
	.word	4
	.word	_Label_1324
	.word	-108
	.word	4
	.word	_Label_1325
	.word	-112
	.word	4
	.word	_Label_1326
	.word	-116
	.word	4
	.word	_Label_1327
	.word	-120
	.word	4
	.word	_Label_1328
	.word	-124
	.word	4
	.word	_Label_1329
	.word	-128
	.word	4
	.word	_Label_1330
	.word	-132
	.word	4
	.word	_Label_1331
	.word	-136
	.word	4
	.word	_Label_1332
	.word	-140
	.word	4
	.word	_Label_1333
	.word	-144
	.word	4
	.word	_Label_1334
	.word	-148
	.word	4
	.word	_Label_1335
	.word	-152
	.word	4
	.word	_Label_1336
	.word	-156
	.word	4
	.word	_Label_1337
	.word	-160
	.word	4
	.word	_Label_1338
	.word	-164
	.word	4
	.word	_Label_1339
	.word	-168
	.word	4
	.word	_Label_1340
	.word	-172
	.word	4
	.word	_Label_1341
	.word	-176
	.word	4
	.word	_Label_1342
	.word	-180
	.word	4
	.word	_Label_1343
	.word	-184
	.word	4
	.word	_Label_1344
	.word	-188
	.word	4
	.word	_Label_1345
	.word	-192
	.word	4
	.word	_Label_1346
	.word	-196
	.word	4
	.word	0
_Label_1298:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1299:
	.ascii	"Pself\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1304:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1288\0"
	.align
_Label_1310:
	.byte	'?'
	.ascii	"_temp_1287\0"
	.align
_Label_1311:
	.byte	'?'
	.ascii	"_temp_1286\0"
	.align
_Label_1312:
	.byte	'?'
	.ascii	"_temp_1285\0"
	.align
_Label_1313:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1314:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1265\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1262\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1240\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1239\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1345:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1346:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1347
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1347:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1348
	.word	_sourceFileName
	.word	192		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1348:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	11495,r1
_Label_3439:
	push	r0
	sub	r1,1,r1
	bne	_Label_3439
	mov	728,r13		! source line 728
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1349 = _StringConst_97
	set	_StringConst_97,r1
	set	-45976,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1349  sizeInBytes=4
	set	-45976,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	736,r13		! source line 736
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	738,r13		! source line 738
	mov	"\0\0AS",r10
!   _temp_1350 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45972,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1352 = &_temp_1351
	set	-45968,r1
	add	r14,r1,r1
	store	r1,[r14+-4324]
!   _temp_1352 = _temp_1352 + 4
	load	[r14+-4324],r1
	add	r1,4,r1
	store	r1,[r14+-4324]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1354 = zeros  (sizeInBytes=4164)
	add	r14,-4316,r4
	mov	1041,r3
_Label_3440:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3440
!   _temp_1354 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4316]
	mov	10,r1
	store	r1,[r14+-4320]
_Label_1356:
!   Data Move: *_temp_1352 = _temp_1354  (sizeInBytes=4164)
	add	r14,-4316,r5
	load	[r14+-4324],r4
	mov	1041,r3
_Label_3441:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3441
!   _temp_1352 = _temp_1352 + 4164
	load	[r14+-4324],r1
	add	r1,4164,r1
	store	r1,[r14+-4324]
!   _temp_1353 = _temp_1353 + -1
	load	[r14+-4320],r1
	add	r1,-1,r1
	store	r1,[r14+-4320]
!   if intNotZero (_temp_1353) then goto _Label_1356
	load	[r14+-4320],r1
	cmp	r1,r0
	bne	_Label_1356
!   Initialize the array size...
	mov	10,r1
	set	-45968,r2
	store	r1,[r14+r2]
!   _temp_1357 = &_temp_1351
	set	-45968,r1
	add	r14,r1,r1
	store	r1,[r14+-148]
!   make sure array has size 10
	set	-45972,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3442
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3442:
!   make sure array has size 10
	load	[r14+-148],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1350 = *_temp_1357  (sizeInBytes=41644)
	load	[r14+-148],r5
	set	-45972,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3443:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3443
! ASSIGNMENT STATEMENT...
	mov	739,r13		! source line 739
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! FOR STATEMENT...
	mov	740,r13		! source line 740
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1363 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-140]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1364 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-136]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1363  (sizeInBytes=4)
	load	[r14+-140],r1
	set	-45980,r2
	store	r1,[r14+r2]
_Label_1359:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1364 then goto _Label_1362		
	set	-45980,r1
	load	[r14+r1],r1
	load	[r14+-136],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1362
_Label_1360:
	mov	740,r13		! source line 740
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	741,r13		! source line 741
	mov	"\0\0AS",r10
!   _temp_1365 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-132]
!   Move address of _temp_1365 [i ] into _temp_1366
!     make sure index expr is >= 0
	set	-45980,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-132],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-128]
!   _temp_1367 = _temp_1366 + 76
	load	[r14+-128],r1
	add	r1,76,r1
	store	r1,[r14+-124]
!   Data Move: *_temp_1367 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-124],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	742,r13		! source line 742
	mov	"\0\0AS",r10
!   _temp_1368 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-120]
!   Move address of _temp_1368 [i ] into _temp_1369
!     make sure index expr is >= 0
	set	-45980,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-120],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-116]
!   _temp_1370 = _temp_1369 + 12
	load	[r14+-116],r1
	add	r1,12,r1
	store	r1,[r14+-112]
!   NEW ARRAY Constructor...
!   _temp_1372 = &_temp_1371
	add	r14,-108,r1
	store	r1,[r14+-52]
!   _temp_1372 = _temp_1372 + 4
	load	[r14+-52],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Next value...
	mov	13,r1
	store	r1,[r14+-48]
_Label_1374:
!   Data Move: *_temp_1372 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-52],r2
	store	r1,[r2]
!   _temp_1372 = _temp_1372 + 4
	load	[r14+-52],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_1373 = _temp_1373 + -1
	load	[r14+-48],r1
	add	r1,-1,r1
	store	r1,[r14+-48]
!   if intNotZero (_temp_1373) then goto _Label_1374
	load	[r14+-48],r1
	cmp	r1,r0
	bne	_Label_1374
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-108]
!   _temp_1375 = &_temp_1371
	add	r14,-108,r1
	store	r1,[r14+-44]
!   make sure array has size 13
	load	[r14+-112],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3444
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3444:
!   make sure array has size 13
	load	[r14+-44],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1370 = *_temp_1375  (sizeInBytes=56)
	load	[r14+-44],r5
	load	[r14+-112],r4
	mov	14,r3
_Label_3445:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3445
! SEND STATEMENT...
	mov	743,r13		! source line 743
	mov	"\0\0SE",r10
!   _temp_1377 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1377 [i ] into _temp_1378
!     make sure index expr is >= 0
	set	-45980,r2
	load	[r14+r2],r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1376 = _temp_1378		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   _temp_1379 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1376  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message AddToFront
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1361:
!   i = i + 1
	set	-45980,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45980,r2
	store	r1,[r14+r2]
	jmp	_Label_1359
! END FOR
_Label_1362:
! ASSIGNMENT STATEMENT...
	mov	745,r13		! source line 745
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	746,r13		! source line 746
	mov	"\0\0SE",r10
!   _temp_1381 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	747,r13		! source line 747
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadBecameFree = zeros  (sizeInBytes=16)
	set	41680,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aThreadBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r11
	set	41680,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	748,r13		! source line 748
	mov	"\0\0SE",r10
!   _temp_1383 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	748,r13		! source line 748
	mov	"\0\0RE",r10
	set	45984,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_1384
	.word	4		! total size of parameters
	.word	45980		! frame size = 45980
	.word	_Label_1385
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1386
	.word	-12
	.word	4
	.word	_Label_1387
	.word	-16
	.word	4
	.word	_Label_1388
	.word	-20
	.word	4
	.word	_Label_1389
	.word	-24
	.word	4
	.word	_Label_1390
	.word	-28
	.word	4
	.word	_Label_1391
	.word	-32
	.word	4
	.word	_Label_1392
	.word	-36
	.word	4
	.word	_Label_1393
	.word	-40
	.word	4
	.word	_Label_1394
	.word	-44
	.word	4
	.word	_Label_1395
	.word	-48
	.word	4
	.word	_Label_1396
	.word	-52
	.word	4
	.word	_Label_1397
	.word	-108
	.word	56
	.word	_Label_1398
	.word	-112
	.word	4
	.word	_Label_1399
	.word	-116
	.word	4
	.word	_Label_1400
	.word	-120
	.word	4
	.word	_Label_1401
	.word	-124
	.word	4
	.word	_Label_1402
	.word	-128
	.word	4
	.word	_Label_1403
	.word	-132
	.word	4
	.word	_Label_1404
	.word	-136
	.word	4
	.word	_Label_1405
	.word	-140
	.word	4
	.word	_Label_1406
	.word	-144
	.word	4
	.word	_Label_1407
	.word	-148
	.word	4
	.word	_Label_1408
	.word	-152
	.word	4
	.word	_Label_1409
	.word	-4316
	.word	4164
	.word	_Label_1410
	.word	-4320
	.word	4
	.word	_Label_1411
	.word	-4324
	.word	4
	.word	_Label_1412
	.word	-45968
	.word	41644
	.word	_Label_1413
	.word	-45972
	.word	4
	.word	_Label_1414
	.word	-45976
	.word	4
	.word	_Label_1415
	.word	-45980
	.word	4
	.word	0
_Label_1384:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1385:
	.ascii	"Pself\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1375\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1363\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1415:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_3446:
	push	r0
	sub	r1,1,r1
	bne	_Label_3446
	mov	753,r13		! source line 753
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	760,r13		! source line 760
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	760,r13		! source line 760
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1416 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1416  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	761,r13		! source line 761
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	762,r13		! source line 762
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1421 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1422 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1421  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1417:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1422 then goto _Label_1420		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1420
_Label_1418:
	mov	762,r13		! source line 762
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1423 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1423  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	763,r13		! source line 763
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	764,r13		! source line 764
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1424 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1424  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	765,r13		! source line 765
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1426 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1426 [i ] into _temp_1427
!     make sure index expr is >= 0
	load	[r14+-56],r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_1425 = _temp_1427		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1425  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	766,r13		! source line 766
	mov	"\0\0CA",r10
	call	_function_205_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1419:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1417
! END FOR
_Label_1420:
! CALL STATEMENT...
!   _temp_1428 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1428  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	768,r13		! source line 768
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	769,r13		! source line 769
	mov	"\0\0SE",r10
!   _temp_1429 = _function_204_PrintObjectAddr
	set	_function_204_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1430 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1429  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	770,r13		! source line 770
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	771,r13		! source line 771
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	771,r13		! source line 771
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	771,r13		! source line 771
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_1431
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1432
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1433
	.word	-12
	.word	4
	.word	_Label_1434
	.word	-16
	.word	4
	.word	_Label_1435
	.word	-20
	.word	4
	.word	_Label_1436
	.word	-24
	.word	4
	.word	_Label_1437
	.word	-28
	.word	4
	.word	_Label_1438
	.word	-32
	.word	4
	.word	_Label_1439
	.word	-36
	.word	4
	.word	_Label_1440
	.word	-40
	.word	4
	.word	_Label_1441
	.word	-44
	.word	4
	.word	_Label_1442
	.word	-48
	.word	4
	.word	_Label_1443
	.word	-52
	.word	4
	.word	_Label_1444
	.word	-56
	.word	4
	.word	_Label_1445
	.word	-60
	.word	4
	.word	0
_Label_1431:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1432:
	.ascii	"Pself\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1444:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1445:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	10,r1
_Label_3447:
	push	r0
	sub	r1,1,r1
	bne	_Label_3447
	mov	776,r13		! source line 776
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	783,r13		! source line 783
	mov	"\0\0SE",r10
!   _temp_1446 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	784,r13		! source line 784
	mov	"\0\0WH",r10
_Label_1447:
	mov	784,r13		! source line 784
	mov	"\0\0SE",r10
!   _temp_1450 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1448 else goto _Label_1449
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1449
	jmp	_Label_1448
_Label_1448:
	mov	784,r13		! source line 784
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	785,r13		! source line 785
	mov	"\0\0SE",r10
!   _temp_1451 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1452 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1451  sizeInBytes=4
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
	jmp	_Label_1447
_Label_1449:
! ASSIGNMENT STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0AS",r10
	mov	787,r13		! source line 787
	mov	"\0\0SE",r10
!   _temp_1453 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=item  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	788,r13		! source line 788
	mov	"\0\0AS",r10
!   if intIsZero (item) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1454 = item + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1454 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	789,r13		! source line 789
	mov	"\0\0SE",r10
!   _temp_1455 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
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
	mov	790,r13		! source line 790
	mov	"\0\0RE",r10
!   ReturnResult: item  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_1456
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1457
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1458
	.word	-12
	.word	4
	.word	_Label_1459
	.word	-16
	.word	4
	.word	_Label_1460
	.word	-20
	.word	4
	.word	_Label_1461
	.word	-24
	.word	4
	.word	_Label_1462
	.word	-28
	.word	4
	.word	_Label_1463
	.word	-32
	.word	4
	.word	_Label_1464
	.word	-36
	.word	4
	.word	_Label_1465
	.word	-40
	.word	4
	.word	0
_Label_1456:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1457:
	.ascii	"Pself\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1450\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1465:
	.byte	'P'
	.ascii	"item\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	11,r1
_Label_3448:
	push	r0
	sub	r1,1,r1
	bne	_Label_3448
	mov	795,r13		! source line 795
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	796,r13		! source line 796
	mov	"\0\0SE",r10
!   _temp_1466 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	797,r13		! source line 797
	mov	"\0\0IF",r10
	mov	797,r13		! source line 797
	mov	"\0\0SE",r10
!   _temp_1469 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1467 else goto _Label_1468
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1468
	jmp	_Label_1467
_Label_1467:
! THEN...
	mov	798,r13		! source line 798
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	798,r13		! source line 798
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1470 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_1470 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-36],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	799,r13		! source line 799
	mov	"\0\0SE",r10
!   _temp_1471 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	800,r13		! source line 800
	mov	"\0\0SE",r10
!   _temp_1472 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1473 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1472  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
	jmp	_Label_1474
_Label_1468:
! ELSE...
	mov	802,r13		! source line 802
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	802,r13		! source line 802
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1475 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1475 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	803,r13		! source line 803
	mov	"\0\0SE",r10
!   _temp_1476 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1474:
! SEND STATEMENT...
	mov	805,r13		! source line 805
	mov	"\0\0SE",r10
!   _temp_1477 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
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
	mov	805,r13		! source line 805
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_1478
	.word	8		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1479
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1480
	.word	12
	.word	4
	.word	_Label_1481
	.word	-12
	.word	4
	.word	_Label_1482
	.word	-16
	.word	4
	.word	_Label_1483
	.word	-20
	.word	4
	.word	_Label_1484
	.word	-24
	.word	4
	.word	_Label_1485
	.word	-28
	.word	4
	.word	_Label_1486
	.word	-32
	.word	4
	.word	_Label_1487
	.word	-36
	.word	4
	.word	_Label_1488
	.word	-40
	.word	4
	.word	_Label_1489
	.word	-44
	.word	4
	.word	0
_Label_1478:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1479:
	.ascii	"Pself\0"
	.align
_Label_1480:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1466\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1490
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1490:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1491
	.word	_sourceFileName
	.word	213		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1491:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	3,r1
_Label_3449:
	push	r0
	sub	r1,1,r1
	bne	_Label_3449
	mov	823,r13		! source line 823
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	825,r13		! source line 825
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	826,r13		! source line 826
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_3450:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3450
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	827,r13		! source line 827
	mov	"\0\0SE",r10
!   _temp_1493 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	827,r13		! source line 827
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_1494
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1495
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1496
	.word	-12
	.word	4
	.word	_Label_1497
	.word	-16
	.word	4
	.word	0
_Label_1494:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1495:
	.ascii	"Pself\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1493\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1492\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	4,r1
_Label_3451:
	push	r0
	sub	r1,1,r1
	bne	_Label_3451
	mov	837,r13		! source line 837
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	842,r13		! source line 842
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1498) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	843,r13		! source line 843
	mov	"\0\0SE",r10
!   _temp_1499 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1500 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1500  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	844,r13		! source line 844
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	845,r13		! source line 845
	mov	"\0\0CA",r10
	call	_function_205_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	855,r13		! source line 855
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	855,r13		! source line 855
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_1501
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1502
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1503
	.word	-12
	.word	4
	.word	_Label_1504
	.word	-16
	.word	4
	.word	_Label_1505
	.word	-20
	.word	4
	.word	0
_Label_1501:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1502:
	.ascii	"Pself\0"
	.align
_Label_1503:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1504:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1505:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_3452:
	push	r0
	sub	r1,1,r1
	bne	_Label_3452
	mov	860,r13		! source line 860
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1506 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1506  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	864,r13		! source line 864
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1507  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	865,r13		! source line 865
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1508 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1508  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	866,r13		! source line 866
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	867,r13		! source line 867
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1509 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1509  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	868,r13		! source line 868
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	869,r13		! source line 869
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1511		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1511
!	jmp	_Label_1510
_Label_1510:
! THEN...
	mov	870,r13		! source line 870
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1512 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1512  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	870,r13		! source line 870
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1513
_Label_1511:
! ELSE...
	mov	871,r13		! source line 871
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	871,r13		! source line 871
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1515		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1515
!	jmp	_Label_1514
_Label_1514:
! THEN...
	mov	872,r13		! source line 872
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1516 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1516  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	872,r13		! source line 872
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1517
_Label_1515:
! ELSE...
	mov	873,r13		! source line 873
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	873,r13		! source line 873
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1519		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1519
!	jmp	_Label_1518
_Label_1518:
! THEN...
	mov	874,r13		! source line 874
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1520 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1520  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	874,r13		! source line 874
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1521
_Label_1519:
! ELSE...
	mov	876,r13		! source line 876
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1522 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1522  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	876,r13		! source line 876
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1521:
! END IF...
_Label_1517:
! END IF...
_Label_1513:
! CALL STATEMENT...
!   _temp_1523 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1523  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	878,r13		! source line 878
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	879,r13		! source line 879
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1524 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1524  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	880,r13		! source line 880
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	881,r13		! source line 881
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	882,r13		! source line 882
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	882,r13		! source line 882
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_1525
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1526
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1527
	.word	-12
	.word	4
	.word	_Label_1528
	.word	-16
	.word	4
	.word	_Label_1529
	.word	-20
	.word	4
	.word	_Label_1530
	.word	-24
	.word	4
	.word	_Label_1531
	.word	-28
	.word	4
	.word	_Label_1532
	.word	-32
	.word	4
	.word	_Label_1533
	.word	-36
	.word	4
	.word	_Label_1534
	.word	-40
	.word	4
	.word	_Label_1535
	.word	-44
	.word	4
	.word	_Label_1536
	.word	-48
	.word	4
	.word	0
_Label_1525:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1526:
	.ascii	"Pself\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1523\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1516\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1537
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	jmp	_Method_P_Kernel_ProcessManager_6	! 24:	TurnIntoZombie
	jmp	_Method_P_Kernel_ProcessManager_7	! 28:	WaitForZombie
	.word	0
! 
! Class descriptor:
! 
_Label_1537:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1538
	.word	_sourceFileName
	.word	233		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1538:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	396,r1
_Label_3453:
	push	r0
	sub	r1,1,r1
	bne	_Label_3453
	mov	893,r13		! source line 893
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	900,r13		! source line 900
	mov	"\0\0AS",r10
!   _temp_1539 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1580]
!   NEW ARRAY Constructor...
!   _temp_1541 = &_temp_1540
	add	r14,-1576,r1
	store	r1,[r14+-332]
!   _temp_1541 = _temp_1541 + 4
	load	[r14+-332],r1
	add	r1,4,r1
	store	r1,[r14+-332]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1543 = zeros  (sizeInBytes=124)
	add	r14,-324,r4
	mov	31,r3
_Label_3454:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3454
!   _temp_1543 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-324]
	mov	10,r1
	store	r1,[r14+-328]
_Label_1545:
!   Data Move: *_temp_1541 = _temp_1543  (sizeInBytes=124)
	add	r14,-324,r5
	load	[r14+-332],r4
	mov	31,r3
_Label_3455:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3455
!   _temp_1541 = _temp_1541 + 124
	load	[r14+-332],r1
	add	r1,124,r1
	store	r1,[r14+-332]
!   _temp_1542 = _temp_1542 + -1
	load	[r14+-328],r1
	add	r1,-1,r1
	store	r1,[r14+-328]
!   if intNotZero (_temp_1542) then goto _Label_1545
	load	[r14+-328],r1
	cmp	r1,r0
	bne	_Label_1545
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1576]
!   _temp_1546 = &_temp_1540
	add	r14,-1576,r1
	store	r1,[r14+-196]
!   make sure array has size 10
	load	[r14+-1580],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3456
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3456:
!   make sure array has size 10
	load	[r14+-196],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1539 = *_temp_1546  (sizeInBytes=1244)
	load	[r14+-196],r5
	load	[r14+-1580],r4
	mov	311,r3
_Label_3457:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3457
! ASSIGNMENT STATEMENT...
	mov	901,r13		! source line 901
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1248,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1248]
! SEND STATEMENT...
	mov	902,r13		! source line 902
	mov	"\0\0SE",r10
!   _temp_1548 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-188]
!   Send message Init
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	903,r13		! source line 903
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1268,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! SEND STATEMENT...
	mov	904,r13		! source line 904
	mov	"\0\0SE",r10
!   _temp_1550 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-180]
!   Send message Init
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	905,r13		! source line 905
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1296,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1296]
! SEND STATEMENT...
	mov	906,r13		! source line 906
	mov	"\0\0SE",r10
!   _temp_1552 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-172]
!   Send message Init
	load	[r14+-172],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	907,r13		! source line 907
	mov	"\0\0AS",r10
!   nextPid = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! ASSIGNMENT STATEMENT...
	mov	908,r13		! source line 908
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1284,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1284]
! FOR STATEMENT...
	mov	909,r13		! source line 909
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1558 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-164]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1559 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-160]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1558  (sizeInBytes=4)
	load	[r14+-164],r1
	store	r1,[r14+-1584]
_Label_1554:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1559 then goto _Label_1557		
	load	[r14+-1584],r1
	load	[r14+-160],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1557
_Label_1555:
	mov	909,r13		! source line 909
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	910,r13		! source line 910
	mov	"\0\0AS",r10
!   _temp_1560 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-156]
!   Move address of _temp_1560 [i ] into _temp_1561
!     make sure index expr is >= 0
	load	[r14+-1584],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-152]
!   _temp_1562 = _temp_1561 + 20
	load	[r14+-152],r1
	add	r1,20,r1
	store	r1,[r14+-148]
!   Data Move: *_temp_1562 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-148],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	911,r13		! source line 911
	mov	"\0\0AS",r10
!   _temp_1563 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-144]
!   Move address of _temp_1563 [i ] into _temp_1564
!     make sure index expr is >= 0
	load	[r14+-1584],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   _temp_1565 = _temp_1564 + 32
	load	[r14+-140],r1
	add	r1,32,r1
	store	r1,[r14+-136]
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1566 = zeros  (sizeInBytes=92)
	add	r14,-132,r4
	mov	23,r3
_Label_3458:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3458
!   _temp_1566 = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-132]
!   Data Move: *_temp_1565 = _temp_1566  (sizeInBytes=92)
	add	r14,-132,r5
	load	[r14+-136],r4
	mov	23,r3
_Label_3459:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3459
! SEND STATEMENT...
	mov	912,r13		! source line 912
	mov	"\0\0SE",r10
!   _temp_1568 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1568 [i ] into _temp_1569
!     make sure index expr is >= 0
	load	[r14+-1584],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1570 = _temp_1569 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	913,r13		! source line 913
	mov	"\0\0SE",r10
!   _temp_1572 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1572 [i ] into _temp_1573
!     make sure index expr is >= 0
	load	[r14+-1584],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1571 = _temp_1573		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1574 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1571  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToFront
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1556:
!   i = i + 1
	load	[r14+-1584],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1584]
	jmp	_Label_1554
! END FOR
_Label_1557:
! RETURN STATEMENT...
	mov	909,r13		! source line 909
	mov	"\0\0RE",r10
	add	r15,1588,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1575
	.word	4		! total size of parameters
	.word	1584		! frame size = 1584
	.word	_Label_1576
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1577
	.word	-12
	.word	4
	.word	_Label_1578
	.word	-16
	.word	4
	.word	_Label_1579
	.word	-20
	.word	4
	.word	_Label_1580
	.word	-24
	.word	4
	.word	_Label_1581
	.word	-28
	.word	4
	.word	_Label_1582
	.word	-32
	.word	4
	.word	_Label_1583
	.word	-36
	.word	4
	.word	_Label_1584
	.word	-40
	.word	4
	.word	_Label_1585
	.word	-132
	.word	92
	.word	_Label_1586
	.word	-136
	.word	4
	.word	_Label_1587
	.word	-140
	.word	4
	.word	_Label_1588
	.word	-144
	.word	4
	.word	_Label_1589
	.word	-148
	.word	4
	.word	_Label_1590
	.word	-152
	.word	4
	.word	_Label_1591
	.word	-156
	.word	4
	.word	_Label_1592
	.word	-160
	.word	4
	.word	_Label_1593
	.word	-164
	.word	4
	.word	_Label_1594
	.word	-168
	.word	4
	.word	_Label_1595
	.word	-172
	.word	4
	.word	_Label_1596
	.word	-176
	.word	4
	.word	_Label_1597
	.word	-180
	.word	4
	.word	_Label_1598
	.word	-184
	.word	4
	.word	_Label_1599
	.word	-188
	.word	4
	.word	_Label_1600
	.word	-192
	.word	4
	.word	_Label_1601
	.word	-196
	.word	4
	.word	_Label_1602
	.word	-200
	.word	4
	.word	_Label_1603
	.word	-324
	.word	124
	.word	_Label_1604
	.word	-328
	.word	4
	.word	_Label_1605
	.word	-332
	.word	4
	.word	_Label_1606
	.word	-1576
	.word	1244
	.word	_Label_1607
	.word	-1580
	.word	4
	.word	_Label_1608
	.word	-1584
	.word	4
	.word	0
_Label_1575:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1576:
	.ascii	"Pself\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1574\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1573\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1572\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1571\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1570\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1569\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1568\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1567\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1566\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1565\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1564\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1563\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1562\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1561\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1560\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1559\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1558\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1553\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1608:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_3460:
	push	r0
	sub	r1,1,r1
	bne	_Label_3460
	mov	919,r13		! source line 919
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	926,r13		! source line 926
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	926,r13		! source line 926
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1609 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1609  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	927,r13		! source line 927
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1614 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1615 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1614  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1610:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1615 then goto _Label_1613		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1613
_Label_1611:
	mov	928,r13		! source line 928
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1616 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1616  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	929,r13		! source line 929
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	930,r13		! source line 930
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1617 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1617  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	931,r13		! source line 931
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	932,r13		! source line 932
	mov	"\0\0SE",r10
!   _temp_1618 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1618 [i ] into _temp_1619
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1612:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1610
! END FOR
_Label_1613:
! CALL STATEMENT...
!   _temp_1620 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1620  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	934,r13		! source line 934
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	935,r13		! source line 935
	mov	"\0\0SE",r10
!   _temp_1621 = _function_204_PrintObjectAddr
	set	_function_204_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1622 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1621  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	936,r13		! source line 936
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	937,r13		! source line 937
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	937,r13		! source line 937
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	937,r13		! source line 937
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_1623
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1624
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1625
	.word	-12
	.word	4
	.word	_Label_1626
	.word	-16
	.word	4
	.word	_Label_1627
	.word	-20
	.word	4
	.word	_Label_1628
	.word	-24
	.word	4
	.word	_Label_1629
	.word	-28
	.word	4
	.word	_Label_1630
	.word	-32
	.word	4
	.word	_Label_1631
	.word	-36
	.word	4
	.word	_Label_1632
	.word	-40
	.word	4
	.word	_Label_1633
	.word	-44
	.word	4
	.word	_Label_1634
	.word	-48
	.word	4
	.word	_Label_1635
	.word	-52
	.word	4
	.word	_Label_1636
	.word	-56
	.word	4
	.word	0
_Label_1623:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1624:
	.ascii	"Pself\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1622\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1621\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1620\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1619\0"
	.align
_Label_1629:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1630:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1632:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1633:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1634:
	.byte	'?'
	.ascii	"_temp_1609\0"
	.align
_Label_1635:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1636:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_3461:
	push	r0
	sub	r1,1,r1
	bne	_Label_3461
	mov	942,r13		! source line 942
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	949,r13		! source line 949
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	949,r13		! source line 949
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1637 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1637  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	950,r13		! source line 950
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	951,r13		! source line 951
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1642 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1643 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1642  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1638:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1643 then goto _Label_1641		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1641
_Label_1639:
	mov	951,r13		! source line 951
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1644 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1644  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	952,r13		! source line 952
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	953,r13		! source line 953
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	954,r13		! source line 954
	mov	"\0\0SE",r10
!   _temp_1645 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1645 [i ] into _temp_1646
!     make sure index expr is >= 0
	load	[r14+-48],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1640:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1638
! END FOR
_Label_1641:
! CALL STATEMENT...
!   _temp_1647 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1647  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	956,r13		! source line 956
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	957,r13		! source line 957
	mov	"\0\0SE",r10
!   _temp_1648 = _function_204_PrintObjectAddr
	set	_function_204_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1649 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1648  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	958,r13		! source line 958
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	959,r13		! source line 959
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_1650
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1651
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1652
	.word	-12
	.word	4
	.word	_Label_1653
	.word	-16
	.word	4
	.word	_Label_1654
	.word	-20
	.word	4
	.word	_Label_1655
	.word	-24
	.word	4
	.word	_Label_1656
	.word	-28
	.word	4
	.word	_Label_1657
	.word	-32
	.word	4
	.word	_Label_1658
	.word	-36
	.word	4
	.word	_Label_1659
	.word	-40
	.word	4
	.word	_Label_1660
	.word	-44
	.word	4
	.word	_Label_1661
	.word	-48
	.word	4
	.word	_Label_1662
	.word	-52
	.word	4
	.word	0
_Label_1650:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1651:
	.ascii	"Pself\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1649\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1648\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1658:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1659:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1660:
	.byte	'?'
	.ascii	"_temp_1637\0"
	.align
_Label_1661:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1662:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	11,r1
_Label_3462:
	push	r0
	sub	r1,1,r1
	bne	_Label_3462
	mov	964,r13		! source line 964
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	971,r13		! source line 971
	mov	"\0\0SE",r10
!   _temp_1663 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	972,r13		! source line 972
	mov	"\0\0WH",r10
_Label_1664:
	mov	972,r13		! source line 972
	mov	"\0\0SE",r10
!   _temp_1667 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1665 else goto _Label_1666
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1666
	jmp	_Label_1665
_Label_1665:
	mov	972,r13		! source line 972
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0SE",r10
!   _temp_1668 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   _temp_1669 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1668  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1664
_Label_1666:
! ASSIGNMENT STATEMENT...
	mov	975,r13		! source line 975
	mov	"\0\0AS",r10
	mov	975,r13		! source line 975
	mov	"\0\0SE",r10
!   _temp_1670 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=item  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	976,r13		! source line 976
	mov	"\0\0AS",r10
!   if intIsZero (item) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1671 = item + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1671 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	977,r13		! source line 977
	mov	"\0\0AS",r10
!   if intIsZero (item) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1672 = item + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1672 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1312],r1
	load	[r14+-16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	978,r13		! source line 978
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1312],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1312]
! SEND STATEMENT...
	mov	979,r13		! source line 979
	mov	"\0\0SE",r10
!   _temp_1673 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	mov	980,r13		! source line 980
	mov	"\0\0RE",r10
!   ReturnResult: item  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1674
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1675
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1676
	.word	-12
	.word	4
	.word	_Label_1677
	.word	-16
	.word	4
	.word	_Label_1678
	.word	-20
	.word	4
	.word	_Label_1679
	.word	-24
	.word	4
	.word	_Label_1680
	.word	-28
	.word	4
	.word	_Label_1681
	.word	-32
	.word	4
	.word	_Label_1682
	.word	-36
	.word	4
	.word	_Label_1683
	.word	-40
	.word	4
	.word	_Label_1684
	.word	-44
	.word	4
	.word	0
_Label_1674:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1675:
	.ascii	"Pself\0"
	.align
_Label_1676:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1677:
	.byte	'?'
	.ascii	"_temp_1672\0"
	.align
_Label_1678:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1679:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1680:
	.byte	'?'
	.ascii	"_temp_1669\0"
	.align
_Label_1681:
	.byte	'?'
	.ascii	"_temp_1668\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1684:
	.byte	'P'
	.ascii	"item\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	2,r1
_Label_3463:
	push	r0
	sub	r1,1,r1
	bne	_Label_3463
	mov	985,r13		! source line 985
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1685 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1685  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	990,r13		! source line 990
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	990,r13		! source line 990
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1686
	.word	8		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_1687
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1688
	.word	12
	.word	4
	.word	_Label_1689
	.word	-12
	.word	4
	.word	0
_Label_1686:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1687:
	.ascii	"Pself\0"
	.align
_Label_1688:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1689:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
! 
! ===============  METHOD TurnIntoZombie  ===============
! 
_Method_P_Kernel_ProcessManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_6,r1
	push	r1
	mov	65,r1
_Label_3464:
	push	r0
	sub	r1,1,r1
	bne	_Label_3464
	mov	995,r13		! source line 995
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1000,r13		! source line 1000
	mov	"\0\0SE",r10
!   _temp_1690 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-252]
!   _temp_1691 = _temp_1690 + 1248
	load	[r14+-252],r1
	add	r1,1248,r1
	store	r1,[r14+-248]
!   Send message Lock
	load	[r14+-248],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	1002,r13		! source line 1002
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1696 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-244]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1697 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-240]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_1696  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+-256]
_Label_1692:
!   Perform the FOR-LOOP termination test
!   if j > _temp_1697 then goto _Label_1695		
	load	[r14+-256],r1
	load	[r14+-240],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1695
_Label_1693:
	mov	1002,r13		! source line 1002
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1004,r13		! source line 1004
	mov	"\0\0IF",r10
!   _temp_1701 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-232]
!   _temp_1702 = _temp_1701 + 4
	load	[r14+-232],r1
	add	r1,4,r1
	store	r1,[r14+-228]
!   Move address of _temp_1702 [j ] into _temp_1703
!     make sure index expr is >= 0
	load	[r14+-256],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-228],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-224]
!   _temp_1704 = _temp_1703 + 12
	load	[r14+-224],r1
	add	r1,12,r1
	store	r1,[r14+-220]
!   Data Move: _temp_1700 = *_temp_1704  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-236]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1706 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-212]
!   Data Move: _temp_1705 = *_temp_1706  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-216]
!   if _temp_1700 != _temp_1705 then goto _Label_1699		(int)
	load	[r14+-236],r1
	load	[r14+-216],r2
	cmp	r1,r2
	bne	_Label_1699
!	jmp	_Label_1698
_Label_1698:
! THEN...
	mov	1005,r13		! source line 1005
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1005,r13		! source line 1005
	mov	"\0\0AS",r10
!   _temp_1707 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-208]
!   _temp_1708 = _temp_1707 + 4
	load	[r14+-208],r1
	add	r1,4,r1
	store	r1,[r14+-204]
!   Move address of _temp_1708 [j ] into _temp_1709
!     make sure index expr is >= 0
	load	[r14+-256],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-204],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-200]
!   parentPcb = _temp_1709		(4 bytes)
	load	[r14+-200],r1
	store	r1,[r14+-260]
! END IF...
_Label_1699:
!   Increment the FOR-LOOP index variable and jump back
_Label_1694:
!   j = j + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_1692
! END FOR
_Label_1695:
! FOR STATEMENT...
	mov	1008,r13		! source line 1008
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1714 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-196]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1715 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-192]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_1714  (sizeInBytes=4)
	load	[r14+-196],r1
	store	r1,[r14+-256]
_Label_1710:
!   Perform the FOR-LOOP termination test
!   if j > _temp_1715 then goto _Label_1713		
	load	[r14+-256],r1
	load	[r14+-192],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1713
_Label_1711:
	mov	1008,r13		! source line 1008
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1010,r13		! source line 1010
	mov	"\0\0IF",r10
!   _temp_1720 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-184]
!   _temp_1721 = _temp_1720 + 4
	load	[r14+-184],r1
	add	r1,4,r1
	store	r1,[r14+-180]
!   Move address of _temp_1721 [j ] into _temp_1722
!     make sure index expr is >= 0
	load	[r14+-256],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-176]
!   _temp_1723 = _temp_1722 + 20
	load	[r14+-176],r1
	add	r1,20,r1
	store	r1,[r14+-172]
!   Data Move: _temp_1719 = *_temp_1723  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if _temp_1719 != 2 then goto _Label_1717		(int)
	load	[r14+-188],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1717
!	jmp	_Label_1718
_Label_1718:
!   _temp_1725 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-164]
!   _temp_1726 = _temp_1725 + 4
	load	[r14+-164],r1
	add	r1,4,r1
	store	r1,[r14+-160]
!   Move address of _temp_1726 [j ] into _temp_1727
!     make sure index expr is >= 0
	load	[r14+-256],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-156]
!   _temp_1728 = _temp_1727 + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-152]
!   Data Move: _temp_1724 = *_temp_1728  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1730 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Data Move: _temp_1729 = *_temp_1730  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if _temp_1724 != _temp_1729 then goto _Label_1717		(int)
	load	[r14+-168],r1
	load	[r14+-148],r2
	cmp	r1,r2
	bne	_Label_1717
!	jmp	_Label_1716
_Label_1716:
! THEN...
	mov	1012,r13		! source line 1012
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1012,r13		! source line 1012
	mov	"\0\0AS",r10
!   _temp_1731 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-140]
!   _temp_1732 = _temp_1731 + 4
	load	[r14+-140],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_1732 [j ] into _temp_1733
!     make sure index expr is >= 0
	load	[r14+-256],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   _temp_1734 = _temp_1733 + 20
	load	[r14+-132],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: *_temp_1734 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-128],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1013,r13		! source line 1013
	mov	"\0\0SE",r10
!   _temp_1736 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-120]
!   _temp_1737 = _temp_1736 + 4
	load	[r14+-120],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Move address of _temp_1737 [j ] into _temp_1738
!     make sure index expr is >= 0
	load	[r14+-256],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-112]
!   _temp_1735 = _temp_1738		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-124]
!   _temp_1739 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-108]
!   _temp_1740 = _temp_1739 + 1284
	load	[r14+-108],r1
	add	r1,1284,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_1735  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1016,r13		! source line 1016
	mov	"\0\0SE",r10
!   _temp_1742 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   _temp_1743 = _temp_1742 + 1248
	load	[r14+-96],r1
	add	r1,1248,r1
	store	r1,[r14+-92]
!   _temp_1741 = _temp_1743		(4 bytes)
	load	[r14+-92],r1
	store	r1,[r14+-100]
!   _temp_1744 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_1745 = _temp_1744 + 1268
	load	[r14+-88],r1
	add	r1,1268,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_1741  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_1717:
!   Increment the FOR-LOOP index variable and jump back
_Label_1712:
!   j = j + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_1710
! END FOR
_Label_1713:
! IF STATEMENT...
	mov	1019,r13		! source line 1019
	mov	"\0\0IF",r10
!   if intIsZero (parentPcb) then goto _Label_1747
	load	[r14+-260],r1
	cmp	r1,r0
	be	_Label_1747
!	jmp	_Label_1748
_Label_1748:
!   if intIsZero (parentPcb) then goto _runtimeErrorNullPointer
	load	[r14+-260],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1750 = parentPcb + 20
	load	[r14+-260],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1749 = *_temp_1750  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_1749 != 1 then goto _Label_1747		(int)
	load	[r14+-80],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1747
!	jmp	_Label_1746
_Label_1746:
! THEN...
	mov	1021,r13		! source line 1021
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1021,r13		! source line 1021
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1751 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_1751 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-72],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1022,r13		! source line 1022
	mov	"\0\0SE",r10
!   _temp_1753 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_1754 = _temp_1753 + 1248
	load	[r14+-64],r1
	add	r1,1248,r1
	store	r1,[r14+-60]
!   _temp_1752 = _temp_1754		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   _temp_1755 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   _temp_1756 = _temp_1755 + 1296
	load	[r14+-56],r1
	add	r1,1296,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_1752  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
	jmp	_Label_1757
_Label_1747:
! ELSE...
	mov	1025,r13		! source line 1025
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1025,r13		! source line 1025
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1758 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_1758 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1026,r13		! source line 1026
	mov	"\0\0SE",r10
!   _temp_1759 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_1760 = _temp_1759 + 1284
	load	[r14+-44],r1
	add	r1,1284,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1027,r13		! source line 1027
	mov	"\0\0SE",r10
!   _temp_1762 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_1763 = _temp_1762 + 1248
	load	[r14+-32],r1
	add	r1,1248,r1
	store	r1,[r14+-28]
!   _temp_1761 = _temp_1763		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1764 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_1765 = _temp_1764 + 1268
	load	[r14+-24],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1761  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_1757:
! SEND STATEMENT...
	mov	1031,r13		! source line 1031
	mov	"\0\0SE",r10
!   _temp_1766 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_1767 = _temp_1766 + 1248
	load	[r14+-16],r1
	add	r1,1248,r1
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
	mov	1031,r13		! source line 1031
	mov	"\0\0RE",r10
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_6:
	.word	_sourceFileName
	.word	_Label_1768
	.word	8		! total size of parameters
	.word	260		! frame size = 260
	.word	_Label_1769
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1770
	.word	12
	.word	4
	.word	_Label_1771
	.word	-12
	.word	4
	.word	_Label_1772
	.word	-16
	.word	4
	.word	_Label_1773
	.word	-20
	.word	4
	.word	_Label_1774
	.word	-24
	.word	4
	.word	_Label_1775
	.word	-28
	.word	4
	.word	_Label_1776
	.word	-32
	.word	4
	.word	_Label_1777
	.word	-36
	.word	4
	.word	_Label_1778
	.word	-40
	.word	4
	.word	_Label_1779
	.word	-44
	.word	4
	.word	_Label_1780
	.word	-48
	.word	4
	.word	_Label_1781
	.word	-52
	.word	4
	.word	_Label_1782
	.word	-56
	.word	4
	.word	_Label_1783
	.word	-60
	.word	4
	.word	_Label_1784
	.word	-64
	.word	4
	.word	_Label_1785
	.word	-68
	.word	4
	.word	_Label_1786
	.word	-72
	.word	4
	.word	_Label_1787
	.word	-76
	.word	4
	.word	_Label_1788
	.word	-80
	.word	4
	.word	_Label_1789
	.word	-84
	.word	4
	.word	_Label_1790
	.word	-88
	.word	4
	.word	_Label_1791
	.word	-92
	.word	4
	.word	_Label_1792
	.word	-96
	.word	4
	.word	_Label_1793
	.word	-100
	.word	4
	.word	_Label_1794
	.word	-104
	.word	4
	.word	_Label_1795
	.word	-108
	.word	4
	.word	_Label_1796
	.word	-112
	.word	4
	.word	_Label_1797
	.word	-116
	.word	4
	.word	_Label_1798
	.word	-120
	.word	4
	.word	_Label_1799
	.word	-124
	.word	4
	.word	_Label_1800
	.word	-128
	.word	4
	.word	_Label_1801
	.word	-132
	.word	4
	.word	_Label_1802
	.word	-136
	.word	4
	.word	_Label_1803
	.word	-140
	.word	4
	.word	_Label_1804
	.word	-144
	.word	4
	.word	_Label_1805
	.word	-148
	.word	4
	.word	_Label_1806
	.word	-152
	.word	4
	.word	_Label_1807
	.word	-156
	.word	4
	.word	_Label_1808
	.word	-160
	.word	4
	.word	_Label_1809
	.word	-164
	.word	4
	.word	_Label_1810
	.word	-168
	.word	4
	.word	_Label_1811
	.word	-172
	.word	4
	.word	_Label_1812
	.word	-176
	.word	4
	.word	_Label_1813
	.word	-180
	.word	4
	.word	_Label_1814
	.word	-184
	.word	4
	.word	_Label_1815
	.word	-188
	.word	4
	.word	_Label_1816
	.word	-192
	.word	4
	.word	_Label_1817
	.word	-196
	.word	4
	.word	_Label_1818
	.word	-200
	.word	4
	.word	_Label_1819
	.word	-204
	.word	4
	.word	_Label_1820
	.word	-208
	.word	4
	.word	_Label_1821
	.word	-212
	.word	4
	.word	_Label_1822
	.word	-216
	.word	4
	.word	_Label_1823
	.word	-220
	.word	4
	.word	_Label_1824
	.word	-224
	.word	4
	.word	_Label_1825
	.word	-228
	.word	4
	.word	_Label_1826
	.word	-232
	.word	4
	.word	_Label_1827
	.word	-236
	.word	4
	.word	_Label_1828
	.word	-240
	.word	4
	.word	_Label_1829
	.word	-244
	.word	4
	.word	_Label_1830
	.word	-248
	.word	4
	.word	_Label_1831
	.word	-252
	.word	4
	.word	_Label_1832
	.word	-256
	.word	4
	.word	_Label_1833
	.word	-260
	.word	4
	.word	0
_Label_1768:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_1769:
	.ascii	"Pself\0"
	.align
_Label_1770:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1767\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1765\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1764\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1763\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1762\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1761\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1760\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1759\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1758\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1756\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1755\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1752\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1750\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1745\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1744\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1743\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1742\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1741\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1739\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1738\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1808:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1809:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1810:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1818:
	.byte	'?'
	.ascii	"_temp_1709\0"
	.align
_Label_1819:
	.byte	'?'
	.ascii	"_temp_1708\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1824:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1825:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1827:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1828:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1829:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1830:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1831:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1832:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_1833:
	.byte	'P'
	.ascii	"parentPcb\0"
	.align
! 
! ===============  METHOD WaitForZombie  ===============
! 
_Method_P_Kernel_ProcessManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_7,r1
	push	r1
	mov	23,r1
_Label_3465:
	push	r0
	sub	r1,1,r1
	bne	_Label_3465
	mov	1036,r13		! source line 1036
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1040,r13		! source line 1040
	mov	"\0\0SE",r10
!   _temp_1834 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_1835 = _temp_1834 + 1248
	load	[r14+-88],r1
	add	r1,1248,r1
	store	r1,[r14+-84]
!   Send message Lock
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1043,r13		! source line 1043
	mov	"\0\0WH",r10
_Label_1836:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1840 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1839 = *_temp_1840  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_1839 == 2 then goto _Label_1838		(int)
	load	[r14+-80],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1838
!	jmp	_Label_1837
_Label_1837:
	mov	1043,r13		! source line 1043
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1044,r13		! source line 1044
	mov	"\0\0SE",r10
!   _temp_1842 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-68]
!   _temp_1843 = _temp_1842 + 1248
	load	[r14+-68],r1
	add	r1,1248,r1
	store	r1,[r14+-64]
!   _temp_1841 = _temp_1843		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-72]
!   _temp_1844 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-60]
!   _temp_1845 = _temp_1844 + 1296
	load	[r14+-60],r1
	add	r1,1296,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_1841  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1836
_Label_1838:
! ASSIGNMENT STATEMENT...
	mov	1048,r13		! source line 1048
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1846 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: exitStatus = *_temp_1846  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-92]
! ASSIGNMENT STATEMENT...
	mov	1052,r13		! source line 1052
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1847 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_1847 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1053,r13		! source line 1053
	mov	"\0\0SE",r10
!   _temp_1848 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_1849 = _temp_1848 + 1284
	load	[r14+-44],r1
	add	r1,1284,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=proc  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1054,r13		! source line 1054
	mov	"\0\0SE",r10
!   _temp_1851 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_1852 = _temp_1851 + 1248
	load	[r14+-32],r1
	add	r1,1248,r1
	store	r1,[r14+-28]
!   _temp_1850 = _temp_1852		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1853 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_1854 = _temp_1853 + 1268
	load	[r14+-24],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1850  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1057,r13		! source line 1057
	mov	"\0\0SE",r10
!   _temp_1855 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_1856 = _temp_1855 + 1248
	load	[r14+-16],r1
	add	r1,1248,r1
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
	mov	1060,r13		! source line 1060
	mov	"\0\0RE",r10
!   ReturnResult: exitStatus  (sizeInBytes=4)
	load	[r14+-92],r1
	store	r1,[r14+8]
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_7:
	.word	_sourceFileName
	.word	_Label_1857
	.word	8		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_1858
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1859
	.word	12
	.word	4
	.word	_Label_1860
	.word	-12
	.word	4
	.word	_Label_1861
	.word	-16
	.word	4
	.word	_Label_1862
	.word	-20
	.word	4
	.word	_Label_1863
	.word	-24
	.word	4
	.word	_Label_1864
	.word	-28
	.word	4
	.word	_Label_1865
	.word	-32
	.word	4
	.word	_Label_1866
	.word	-36
	.word	4
	.word	_Label_1867
	.word	-40
	.word	4
	.word	_Label_1868
	.word	-44
	.word	4
	.word	_Label_1869
	.word	-48
	.word	4
	.word	_Label_1870
	.word	-52
	.word	4
	.word	_Label_1871
	.word	-56
	.word	4
	.word	_Label_1872
	.word	-60
	.word	4
	.word	_Label_1873
	.word	-64
	.word	4
	.word	_Label_1874
	.word	-68
	.word	4
	.word	_Label_1875
	.word	-72
	.word	4
	.word	_Label_1876
	.word	-76
	.word	4
	.word	_Label_1877
	.word	-80
	.word	4
	.word	_Label_1878
	.word	-84
	.word	4
	.word	_Label_1879
	.word	-88
	.word	4
	.word	_Label_1880
	.word	-92
	.word	4
	.word	0
_Label_1857:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_1858:
	.ascii	"Pself\0"
	.align
_Label_1859:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_1860:
	.byte	'?'
	.ascii	"_temp_1856\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1855\0"
	.align
_Label_1862:
	.byte	'?'
	.ascii	"_temp_1854\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1853\0"
	.align
_Label_1864:
	.byte	'?'
	.ascii	"_temp_1852\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1851\0"
	.align
_Label_1866:
	.byte	'?'
	.ascii	"_temp_1850\0"
	.align
_Label_1867:
	.byte	'?'
	.ascii	"_temp_1849\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1848\0"
	.align
_Label_1869:
	.byte	'?'
	.ascii	"_temp_1847\0"
	.align
_Label_1870:
	.byte	'?'
	.ascii	"_temp_1846\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1845\0"
	.align
_Label_1872:
	.byte	'?'
	.ascii	"_temp_1844\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1843\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1842\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1841\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1840\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1839\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1835\0"
	.align
_Label_1879:
	.byte	'?'
	.ascii	"_temp_1834\0"
	.align
_Label_1880:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1881
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1881:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1882
	.word	_sourceFileName
	.word	256		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1882:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	14,r1
_Label_3466:
	push	r0
	sub	r1,1,r1
	bne	_Label_3466
	mov	1124,r13		! source line 1124
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1883 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1883  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1130,r13		! source line 1130
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1131,r13		! source line 1131
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1132,r13		! source line 1132
	mov	"\0\0SE",r10
!   _temp_1885 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=512  sizeInBytes=4
	mov	512,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1133,r13		! source line 1133
	mov	"\0\0AS",r10
!   numberFreeFrames = 512		(4 bytes)
	mov	512,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1134,r13		! source line 1134
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1135,r13		! source line 1135
	mov	"\0\0SE",r10
!   _temp_1887 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1136,r13		! source line 1136
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,40,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1137,r13		! source line 1137
	mov	"\0\0SE",r10
!   _temp_1889 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1143,r13		! source line 1143
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1894 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1895 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1894  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1890:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1895 then goto _Label_1893		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1893
_Label_1891:
	mov	1143,r13		! source line 1143
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1146,r13		! source line 1146
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1898 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1898) then goto _Label_1897
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1897
!	jmp	_Label_1896
_Label_1896:
! THEN...
	mov	1147,r13		! source line 1147
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1899 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1899  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1147,r13		! source line 1147
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1897:
!   Increment the FOR-LOOP index variable and jump back
_Label_1892:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1890
! END FOR
_Label_1893:
! RETURN STATEMENT...
	mov	1143,r13		! source line 1143
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_1900
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1901
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1902
	.word	-12
	.word	4
	.word	_Label_1903
	.word	-16
	.word	4
	.word	_Label_1904
	.word	-20
	.word	4
	.word	_Label_1905
	.word	-24
	.word	4
	.word	_Label_1906
	.word	-28
	.word	4
	.word	_Label_1907
	.word	-32
	.word	4
	.word	_Label_1908
	.word	-36
	.word	4
	.word	_Label_1909
	.word	-40
	.word	4
	.word	_Label_1910
	.word	-44
	.word	4
	.word	_Label_1911
	.word	-48
	.word	4
	.word	_Label_1912
	.word	-52
	.word	4
	.word	_Label_1913
	.word	-56
	.word	4
	.word	0
_Label_1900:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1901:
	.ascii	"Pself\0"
	.align
_Label_1902:
	.byte	'?'
	.ascii	"_temp_1899\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1895\0"
	.align
_Label_1905:
	.byte	'?'
	.ascii	"_temp_1894\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1889\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1886\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1885\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1913:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_3467:
	push	r0
	sub	r1,1,r1
	bne	_Label_3467
	mov	1154,r13		! source line 1154
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1158,r13		! source line 1158
	mov	"\0\0SE",r10
!   _temp_1914 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1915 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1915  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1159,r13		! source line 1159
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1916 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1916  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1160,r13		! source line 1160
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1917 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1917  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1161,r13		! source line 1161
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1162,r13		! source line 1162
	mov	"\0\0SE",r10
!   _temp_1918 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1163,r13		! source line 1163
	mov	"\0\0SE",r10
!   _temp_1919 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
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
	mov	1163,r13		! source line 1163
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_1920
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1921
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1922
	.word	-12
	.word	4
	.word	_Label_1923
	.word	-16
	.word	4
	.word	_Label_1924
	.word	-20
	.word	4
	.word	_Label_1925
	.word	-24
	.word	4
	.word	_Label_1926
	.word	-28
	.word	4
	.word	_Label_1927
	.word	-32
	.word	4
	.word	0
_Label_1920:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1921:
	.ascii	"Pself\0"
	.align
_Label_1922:
	.byte	'?'
	.ascii	"_temp_1919\0"
	.align
_Label_1923:
	.byte	'?'
	.ascii	"_temp_1918\0"
	.align
_Label_1924:
	.byte	'?'
	.ascii	"_temp_1917\0"
	.align
_Label_1925:
	.byte	'?'
	.ascii	"_temp_1916\0"
	.align
_Label_1926:
	.byte	'?'
	.ascii	"_temp_1915\0"
	.align
_Label_1927:
	.byte	'?'
	.ascii	"_temp_1914\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_3468:
	push	r0
	sub	r1,1,r1
	bne	_Label_3468
	mov	1168,r13		! source line 1168
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1176,r13		! source line 1176
	mov	"\0\0SE",r10
!   _temp_1928 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1179,r13		! source line 1179
	mov	"\0\0WH",r10
_Label_1929:
!   if numberFreeFrames >= 1 then goto _Label_1931		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1931
!	jmp	_Label_1930
_Label_1930:
	mov	1179,r13		! source line 1179
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1180,r13		! source line 1180
	mov	"\0\0SE",r10
!   _temp_1932 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1933 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1932  sizeInBytes=4
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
	jmp	_Label_1929
_Label_1931:
! ASSIGNMENT STATEMENT...
	mov	1184,r13		! source line 1184
	mov	"\0\0AS",r10
	mov	1184,r13		! source line 1184
	mov	"\0\0SE",r10
!   _temp_1934 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1185,r13		! source line 1185
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1188,r13		! source line 1188
	mov	"\0\0SE",r10
!   _temp_1935 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1191,r13		! source line 1191
	mov	"\0\0AS",r10
!   _temp_1936 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1936		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1193,r13		! source line 1193
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_1937
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1938
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1939
	.word	-12
	.word	4
	.word	_Label_1940
	.word	-16
	.word	4
	.word	_Label_1941
	.word	-20
	.word	4
	.word	_Label_1942
	.word	-24
	.word	4
	.word	_Label_1943
	.word	-28
	.word	4
	.word	_Label_1944
	.word	-32
	.word	4
	.word	_Label_1945
	.word	-36
	.word	4
	.word	_Label_1946
	.word	-40
	.word	4
	.word	0
_Label_1937:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1938:
	.ascii	"Pself\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1936\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1935\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1934\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1933\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1932\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
_Label_1945:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1946:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	18,r1
_Label_3469:
	push	r0
	sub	r1,1,r1
	bne	_Label_3469
	mov	1198,r13		! source line 1198
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1203,r13		! source line 1203
	mov	"\0\0SE",r10
!   _temp_1947 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-56]
!   Send message Lock
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1204,r13		! source line 1204
	mov	"\0\0WH",r10
_Label_1948:
!   if numFramesNeeded <= numberFreeFrames then goto _Label_1950		(int)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1950
!	jmp	_Label_1949
_Label_1949:
	mov	1204,r13		! source line 1204
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1205,r13		! source line 1205
	mov	"\0\0SE",r10
!   _temp_1951 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   _temp_1952 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_1951  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1948
_Label_1950:
! FOR STATEMENT...
	mov	1207,r13		! source line 1207
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1957 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1958 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1957  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-60]
_Label_1953:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1958 then goto _Label_1956		
	load	[r14+-60],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1956
_Label_1954:
	mov	1207,r13		! source line 1207
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1208,r13		! source line 1208
	mov	"\0\0AS",r10
	mov	1208,r13		! source line 1208
	mov	"\0\0SE",r10
!   _temp_1959 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Send message FindZeroAndSet
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
! ASSIGNMENT STATEMENT...
	mov	1209,r13		! source line 1209
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1210,r13		! source line 1210
	mov	"\0\0AS",r10
!   _temp_1960 = f * 8192		(int)
	load	[r14+-64],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   frameAddr = 1048576 + _temp_1960		(int)
	set	1048576,r1
	load	[r14+-32],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! SEND STATEMENT...
	mov	1211,r13		! source line 1211
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frameAddr  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1212,r13		! source line 1212
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1961 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1964 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1963 = *_temp_1964  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1962 = _temp_1963 + 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_1961 = _temp_1962  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_1955:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_1953
! END FOR
_Label_1956:
! SEND STATEMENT...
	mov	1214,r13		! source line 1214
	mov	"\0\0SE",r10
!   _temp_1965 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
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
	mov	1214,r13		! source line 1214
	mov	"\0\0RE",r10
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1966
	.word	12		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1967
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1968
	.word	12
	.word	4
	.word	_Label_1969
	.word	16
	.word	4
	.word	_Label_1970
	.word	-12
	.word	4
	.word	_Label_1971
	.word	-16
	.word	4
	.word	_Label_1972
	.word	-20
	.word	4
	.word	_Label_1973
	.word	-24
	.word	4
	.word	_Label_1974
	.word	-28
	.word	4
	.word	_Label_1975
	.word	-32
	.word	4
	.word	_Label_1976
	.word	-36
	.word	4
	.word	_Label_1977
	.word	-40
	.word	4
	.word	_Label_1978
	.word	-44
	.word	4
	.word	_Label_1979
	.word	-48
	.word	4
	.word	_Label_1980
	.word	-52
	.word	4
	.word	_Label_1981
	.word	-56
	.word	4
	.word	_Label_1982
	.word	-60
	.word	4
	.word	_Label_1983
	.word	-64
	.word	4
	.word	_Label_1984
	.word	-68
	.word	4
	.word	0
_Label_1966:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1967:
	.ascii	"Pself\0"
	.align
_Label_1968:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1969:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1965\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1964\0"
	.align
_Label_1972:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_1973:
	.byte	'?'
	.ascii	"_temp_1962\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
_Label_1975:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
_Label_1976:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_1977:
	.byte	'?'
	.ascii	"_temp_1958\0"
	.align
_Label_1978:
	.byte	'?'
	.ascii	"_temp_1957\0"
	.align
_Label_1979:
	.byte	'?'
	.ascii	"_temp_1952\0"
	.align
_Label_1980:
	.byte	'?'
	.ascii	"_temp_1951\0"
	.align
_Label_1981:
	.byte	'?'
	.ascii	"_temp_1947\0"
	.align
_Label_1982:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1983:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1984:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	19,r1
_Label_3470:
	push	r0
	sub	r1,1,r1
	bne	_Label_3470
	mov	1219,r13		! source line 1219
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1226,r13		! source line 1226
	mov	"\0\0SE",r10
!   _temp_1985 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-60]
!   Send message Lock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1227,r13		! source line 1227
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1986 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Data Move: numFramesReturned = *_temp_1986  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-72]
! FOR STATEMENT...
	mov	1228,r13		! source line 1228
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1991 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1992 = numFramesReturned - 1		(int)
	load	[r14+-72],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1991  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-64]
_Label_1987:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1992 then goto _Label_1990		
	load	[r14+-64],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1990
_Label_1988:
	mov	1228,r13		! source line 1228
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1229,r13		! source line 1229
	mov	"\0\0AS",r10
	mov	1229,r13		! source line 1229
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	1230,r13		! source line 1230
	mov	"\0\0AS",r10
!   _temp_1993 = frameAddr - 1048576		(int)
	load	[r14+-76],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   f = _temp_1993 div 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! SEND STATEMENT...
	mov	1231,r13		! source line 1231
	mov	"\0\0SE",r10
!   _temp_1994 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=f  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1232,r13		! source line 1232
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames + 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1233,r13		! source line 1233
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1995 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1998 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1997 = *_temp_1998  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_1996 = _temp_1997 - 1		(int)
	load	[r14+-28],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Data Move: *_temp_1995 = _temp_1996  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r14+-36],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_1989:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1987
! END FOR
_Label_1990:
! SEND STATEMENT...
	mov	1235,r13		! source line 1235
	mov	"\0\0SE",r10
!   _temp_1999 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_2000 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1999  sizeInBytes=4
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
	mov	1236,r13		! source line 1236
	mov	"\0\0SE",r10
!   _temp_2001 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
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
	mov	1236,r13		! source line 1236
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_2002
	.word	8		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_2003
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2004
	.word	12
	.word	4
	.word	_Label_2005
	.word	-12
	.word	4
	.word	_Label_2006
	.word	-16
	.word	4
	.word	_Label_2007
	.word	-20
	.word	4
	.word	_Label_2008
	.word	-24
	.word	4
	.word	_Label_2009
	.word	-28
	.word	4
	.word	_Label_2010
	.word	-32
	.word	4
	.word	_Label_2011
	.word	-36
	.word	4
	.word	_Label_2012
	.word	-40
	.word	4
	.word	_Label_2013
	.word	-44
	.word	4
	.word	_Label_2014
	.word	-48
	.word	4
	.word	_Label_2015
	.word	-52
	.word	4
	.word	_Label_2016
	.word	-56
	.word	4
	.word	_Label_2017
	.word	-60
	.word	4
	.word	_Label_2018
	.word	-64
	.word	4
	.word	_Label_2019
	.word	-68
	.word	4
	.word	_Label_2020
	.word	-72
	.word	4
	.word	_Label_2021
	.word	-76
	.word	4
	.word	0
_Label_2002:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2003:
	.ascii	"Pself\0"
	.align
_Label_2004:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2005:
	.byte	'?'
	.ascii	"_temp_2001\0"
	.align
_Label_2006:
	.byte	'?'
	.ascii	"_temp_2000\0"
	.align
_Label_2007:
	.byte	'?'
	.ascii	"_temp_1999\0"
	.align
_Label_2008:
	.byte	'?'
	.ascii	"_temp_1998\0"
	.align
_Label_2009:
	.byte	'?'
	.ascii	"_temp_1997\0"
	.align
_Label_2010:
	.byte	'?'
	.ascii	"_temp_1996\0"
	.align
_Label_2011:
	.byte	'?'
	.ascii	"_temp_1995\0"
	.align
_Label_2012:
	.byte	'?'
	.ascii	"_temp_1994\0"
	.align
_Label_2013:
	.byte	'?'
	.ascii	"_temp_1993\0"
	.align
_Label_2014:
	.byte	'?'
	.ascii	"_temp_1992\0"
	.align
_Label_2015:
	.byte	'?'
	.ascii	"_temp_1991\0"
	.align
_Label_2016:
	.byte	'?'
	.ascii	"_temp_1986\0"
	.align
_Label_2017:
	.byte	'?'
	.ascii	"_temp_1985\0"
	.align
_Label_2018:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2019:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2020:
	.byte	'I'
	.ascii	"numFramesReturned\0"
	.align
_Label_2021:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2022
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_2022:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2023
	.word	_sourceFileName
	.word	275		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2023:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_3471:
	push	r0
	sub	r1,1,r1
	bne	_Label_3471
	mov	1248,r13		! source line 1248
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1252,r13		! source line 1252
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1253,r13		! source line 1253
	mov	"\0\0AS",r10
!   _temp_2024 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2026 = &_temp_2025
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2026 = _temp_2026 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2028:
!   Data Move: *_temp_2026 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2026 = _temp_2026 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2027 = _temp_2027 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2027) then goto _Label_2028
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2028
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2029 = &_temp_2025
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3472
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3472:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2024 = *_temp_2029  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3473:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3473
! RETURN STATEMENT...
	mov	1253,r13		! source line 1253
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_2030
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2031
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2032
	.word	-12
	.word	4
	.word	_Label_2033
	.word	-16
	.word	4
	.word	_Label_2034
	.word	-20
	.word	4
	.word	_Label_2035
	.word	-104
	.word	84
	.word	_Label_2036
	.word	-108
	.word	4
	.word	0
_Label_2030:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2031:
	.ascii	"Pself\0"
	.align
_Label_2032:
	.byte	'?'
	.ascii	"_temp_2029\0"
	.align
_Label_2033:
	.byte	'?'
	.ascii	"_temp_2027\0"
	.align
_Label_2034:
	.byte	'?'
	.ascii	"_temp_2026\0"
	.align
_Label_2035:
	.byte	'?'
	.ascii	"_temp_2025\0"
	.align
_Label_2036:
	.byte	'?'
	.ascii	"_temp_2024\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_3474:
	push	r0
	sub	r1,1,r1
	bne	_Label_3474
	mov	1258,r13		! source line 1258
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2037 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2037  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1263,r13		! source line 1263
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2038 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2038  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1264,r13		! source line 1264
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1265,r13		! source line 1265
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2043 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2044 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2043  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2039:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2044 then goto _Label_2042		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2042
_Label_2040:
	mov	1265,r13		! source line 1265
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2045 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2045  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1266,r13		! source line 1266
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2047 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2047 [i ] into _temp_2048
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
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
	store	r2,[r14+-136]
!   _temp_2046 = _temp_2048		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2046  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1267,r13		! source line 1267
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2049 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2049  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1268,r13		! source line 1268
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2051 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2051 [i ] into _temp_2052
!     make sure index expr is >= 0
	load	[r14+-168],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Data Move: _temp_2050 = *_temp_2052  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2050  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1269,r13		! source line 1269
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2053 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2053  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1270,r13		! source line 1270
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2054 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2054  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1271,r13		! source line 1271
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2055 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2055  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1272,r13		! source line 1272
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1273,r13		! source line 1273
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2057) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2056  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2056  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1273,r13		! source line 1273
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2058 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2058  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1274,r13		! source line 1274
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1275,r13		! source line 1275
	mov	"\0\0IF",r10
	mov	1275,r13		! source line 1275
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_2062) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_2061  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2061) then goto _Label_2060
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2060
!	jmp	_Label_2059
_Label_2059:
! THEN...
	mov	1276,r13		! source line 1276
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1276,r13		! source line 1276
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2064) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_2063  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2063  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1276,r13		! source line 1276
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2065
_Label_2060:
! ELSE...
	mov	1278,r13		! source line 1278
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2066 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2066  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1278,r13		! source line 1278
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2065:
! CALL STATEMENT...
!   _temp_2067 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2067  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1280,r13		! source line 1280
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1281,r13		! source line 1281
	mov	"\0\0IF",r10
	mov	1281,r13		! source line 1281
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_2070) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_2068 else goto _Label_2069
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2069
	jmp	_Label_2068
_Label_2068:
! THEN...
	mov	1282,r13		! source line 1282
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2071 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2071  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1282,r13		! source line 1282
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2072
_Label_2069:
! ELSE...
	mov	1284,r13		! source line 1284
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2073 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2073  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1284,r13		! source line 1284
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2072:
! CALL STATEMENT...
!   _temp_2074 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2074  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1286,r13		! source line 1286
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1287,r13		! source line 1287
	mov	"\0\0IF",r10
	mov	1287,r13		! source line 1287
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_2077) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_2075 else goto _Label_2076
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2076
	jmp	_Label_2075
_Label_2075:
! THEN...
	mov	1288,r13		! source line 1288
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2078 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2078  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1288,r13		! source line 1288
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2079
_Label_2076:
! ELSE...
	mov	1290,r13		! source line 1290
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2080 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2080  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1290,r13		! source line 1290
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2079:
! CALL STATEMENT...
!   _temp_2081 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2081  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1292,r13		! source line 1292
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1293,r13		! source line 1293
	mov	"\0\0IF",r10
	mov	1293,r13		! source line 1293
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_2084) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_2082 else goto _Label_2083
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2083
	jmp	_Label_2082
_Label_2082:
! THEN...
	mov	1294,r13		! source line 1294
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2085 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2085  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1294,r13		! source line 1294
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2086
_Label_2083:
! ELSE...
	mov	1296,r13		! source line 1296
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2087 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2087  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1296,r13		! source line 1296
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2086:
! CALL STATEMENT...
!   _temp_2088 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2088  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1298,r13		! source line 1298
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1299,r13		! source line 1299
	mov	"\0\0IF",r10
	mov	1299,r13		! source line 1299
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2091) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_2089 else goto _Label_2090
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2090
	jmp	_Label_2089
_Label_2089:
! THEN...
	mov	1300,r13		! source line 1300
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2092 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2092  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1300,r13		! source line 1300
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2093
_Label_2090:
! ELSE...
	mov	1302,r13		! source line 1302
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2094 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2094  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1302,r13		! source line 1302
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2093:
! CALL STATEMENT...
!   Call the function
	mov	1304,r13		! source line 1304
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2041:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2039
! END FOR
_Label_2042:
! RETURN STATEMENT...
	mov	1265,r13		! source line 1265
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_2095
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2096
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2097
	.word	-12
	.word	4
	.word	_Label_2098
	.word	-16
	.word	4
	.word	_Label_2099
	.word	-20
	.word	4
	.word	_Label_2100
	.word	-24
	.word	4
	.word	_Label_2101
	.word	-28
	.word	4
	.word	_Label_2102
	.word	-32
	.word	4
	.word	_Label_2103
	.word	-36
	.word	4
	.word	_Label_2104
	.word	-40
	.word	4
	.word	_Label_2105
	.word	-44
	.word	4
	.word	_Label_2106
	.word	-48
	.word	4
	.word	_Label_2107
	.word	-52
	.word	4
	.word	_Label_2108
	.word	-56
	.word	4
	.word	_Label_2109
	.word	-60
	.word	4
	.word	_Label_2110
	.word	-64
	.word	4
	.word	_Label_2111
	.word	-68
	.word	4
	.word	_Label_2112
	.word	-72
	.word	4
	.word	_Label_2113
	.word	-76
	.word	4
	.word	_Label_2114
	.word	-80
	.word	4
	.word	_Label_2115
	.word	-84
	.word	4
	.word	_Label_2116
	.word	-88
	.word	4
	.word	_Label_2117
	.word	-92
	.word	4
	.word	_Label_2118
	.word	-96
	.word	4
	.word	_Label_2119
	.word	-100
	.word	4
	.word	_Label_2120
	.word	-104
	.word	4
	.word	_Label_2121
	.word	-108
	.word	4
	.word	_Label_2122
	.word	-112
	.word	4
	.word	_Label_2123
	.word	-116
	.word	4
	.word	_Label_2124
	.word	-120
	.word	4
	.word	_Label_2125
	.word	-124
	.word	4
	.word	_Label_2126
	.word	-128
	.word	4
	.word	_Label_2127
	.word	-132
	.word	4
	.word	_Label_2128
	.word	-136
	.word	4
	.word	_Label_2129
	.word	-140
	.word	4
	.word	_Label_2130
	.word	-144
	.word	4
	.word	_Label_2131
	.word	-148
	.word	4
	.word	_Label_2132
	.word	-152
	.word	4
	.word	_Label_2133
	.word	-156
	.word	4
	.word	_Label_2134
	.word	-160
	.word	4
	.word	_Label_2135
	.word	-164
	.word	4
	.word	_Label_2136
	.word	-168
	.word	4
	.word	0
_Label_2095:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2096:
	.ascii	"Pself\0"
	.align
_Label_2097:
	.byte	'?'
	.ascii	"_temp_2094\0"
	.align
_Label_2098:
	.byte	'?'
	.ascii	"_temp_2092\0"
	.align
_Label_2099:
	.byte	'?'
	.ascii	"_temp_2091\0"
	.align
_Label_2100:
	.byte	'?'
	.ascii	"_temp_2088\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2087\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2085\0"
	.align
_Label_2103:
	.byte	'?'
	.ascii	"_temp_2084\0"
	.align
_Label_2104:
	.byte	'?'
	.ascii	"_temp_2081\0"
	.align
_Label_2105:
	.byte	'?'
	.ascii	"_temp_2080\0"
	.align
_Label_2106:
	.byte	'?'
	.ascii	"_temp_2078\0"
	.align
_Label_2107:
	.byte	'?'
	.ascii	"_temp_2077\0"
	.align
_Label_2108:
	.byte	'?'
	.ascii	"_temp_2074\0"
	.align
_Label_2109:
	.byte	'?'
	.ascii	"_temp_2073\0"
	.align
_Label_2110:
	.byte	'?'
	.ascii	"_temp_2071\0"
	.align
_Label_2111:
	.byte	'?'
	.ascii	"_temp_2070\0"
	.align
_Label_2112:
	.byte	'?'
	.ascii	"_temp_2067\0"
	.align
_Label_2113:
	.byte	'?'
	.ascii	"_temp_2066\0"
	.align
_Label_2114:
	.byte	'?'
	.ascii	"_temp_2064\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2062\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2061\0"
	.align
_Label_2118:
	.byte	'?'
	.ascii	"_temp_2058\0"
	.align
_Label_2119:
	.byte	'?'
	.ascii	"_temp_2057\0"
	.align
_Label_2120:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2121:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2122:
	.byte	'?'
	.ascii	"_temp_2054\0"
	.align
_Label_2123:
	.byte	'?'
	.ascii	"_temp_2053\0"
	.align
_Label_2124:
	.byte	'?'
	.ascii	"_temp_2052\0"
	.align
_Label_2125:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2126:
	.byte	'?'
	.ascii	"_temp_2050\0"
	.align
_Label_2127:
	.byte	'?'
	.ascii	"_temp_2049\0"
	.align
_Label_2128:
	.byte	'?'
	.ascii	"_temp_2048\0"
	.align
_Label_2129:
	.byte	'?'
	.ascii	"_temp_2047\0"
	.align
_Label_2130:
	.byte	'?'
	.ascii	"_temp_2046\0"
	.align
_Label_2131:
	.byte	'?'
	.ascii	"_temp_2045\0"
	.align
_Label_2132:
	.byte	'?'
	.ascii	"_temp_2044\0"
	.align
_Label_2133:
	.byte	'?'
	.ascii	"_temp_2043\0"
	.align
_Label_2134:
	.byte	'?'
	.ascii	"_temp_2038\0"
	.align
_Label_2135:
	.byte	'?'
	.ascii	"_temp_2037\0"
	.align
_Label_2136:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_3475:
	push	r0
	sub	r1,1,r1
	bne	_Label_3475
	mov	1310,r13		! source line 1310
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1315,r13		! source line 1315
	mov	"\0\0RE",r10
!   _temp_2139 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2139 [entry ] into _temp_2140
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2138 = *_temp_2140  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2137 = _temp_2138 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2137  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_2141
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2142
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2143
	.word	12
	.word	4
	.word	_Label_2144
	.word	-12
	.word	4
	.word	_Label_2145
	.word	-16
	.word	4
	.word	_Label_2146
	.word	-20
	.word	4
	.word	_Label_2147
	.word	-24
	.word	4
	.word	0
_Label_2141:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2142:
	.ascii	"Pself\0"
	.align
_Label_2143:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2144:
	.byte	'?'
	.ascii	"_temp_2140\0"
	.align
_Label_2145:
	.byte	'?'
	.ascii	"_temp_2139\0"
	.align
_Label_2146:
	.byte	'?'
	.ascii	"_temp_2138\0"
	.align
_Label_2147:
	.byte	'?'
	.ascii	"_temp_2137\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_3476:
	push	r0
	sub	r1,1,r1
	bne	_Label_3476
	mov	1320,r13		! source line 1320
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1324,r13		! source line 1324
	mov	"\0\0RE",r10
!   _temp_2150 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2150 [entry ] into _temp_2151
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2149 = *_temp_2151  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2148 = _temp_2149 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2148  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_2152
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2153
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2154
	.word	12
	.word	4
	.word	_Label_2155
	.word	-12
	.word	4
	.word	_Label_2156
	.word	-16
	.word	4
	.word	_Label_2157
	.word	-20
	.word	4
	.word	_Label_2158
	.word	-24
	.word	4
	.word	0
_Label_2152:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2153:
	.ascii	"Pself\0"
	.align
_Label_2154:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2155:
	.byte	'?'
	.ascii	"_temp_2151\0"
	.align
_Label_2156:
	.byte	'?'
	.ascii	"_temp_2150\0"
	.align
_Label_2157:
	.byte	'?'
	.ascii	"_temp_2149\0"
	.align
_Label_2158:
	.byte	'?'
	.ascii	"_temp_2148\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_3477:
	push	r0
	sub	r1,1,r1
	bne	_Label_3477
	mov	1329,r13		! source line 1329
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1334,r13		! source line 1334
	mov	"\0\0AS",r10
!   _temp_2159 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2159 [entry ] into _temp_2160
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_2164 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2164 [entry ] into _temp_2165
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2163 = *_temp_2165  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2162 = _temp_2163 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2161 = _temp_2162 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2160 = _temp_2161  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1334,r13		! source line 1334
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_2166
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2167
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2168
	.word	12
	.word	4
	.word	_Label_2169
	.word	16
	.word	4
	.word	_Label_2170
	.word	-12
	.word	4
	.word	_Label_2171
	.word	-16
	.word	4
	.word	_Label_2172
	.word	-20
	.word	4
	.word	_Label_2173
	.word	-24
	.word	4
	.word	_Label_2174
	.word	-28
	.word	4
	.word	_Label_2175
	.word	-32
	.word	4
	.word	_Label_2176
	.word	-36
	.word	4
	.word	0
_Label_2166:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2167:
	.ascii	"Pself\0"
	.align
_Label_2168:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2169:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2170:
	.byte	'?'
	.ascii	"_temp_2165\0"
	.align
_Label_2171:
	.byte	'?'
	.ascii	"_temp_2164\0"
	.align
_Label_2172:
	.byte	'?'
	.ascii	"_temp_2163\0"
	.align
_Label_2173:
	.byte	'?'
	.ascii	"_temp_2162\0"
	.align
_Label_2174:
	.byte	'?'
	.ascii	"_temp_2161\0"
	.align
_Label_2175:
	.byte	'?'
	.ascii	"_temp_2160\0"
	.align
_Label_2176:
	.byte	'?'
	.ascii	"_temp_2159\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_3478:
	push	r0
	sub	r1,1,r1
	bne	_Label_3478
	mov	1339,r13		! source line 1339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1343,r13		! source line 1343
	mov	"\0\0RE",r10
!   _temp_2180 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2180 [entry ] into _temp_2181
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
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
	store	r2,[r14+-16]
!   Data Move: _temp_2179 = *_temp_2181  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2178 = _temp_2179 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2178) then goto _Label_2182
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2182
!   _temp_2177 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2183
_Label_2182:
!   _temp_2177 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2183:
!   ReturnResult: _temp_2177  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_2184
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2185
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2186
	.word	12
	.word	4
	.word	_Label_2187
	.word	-16
	.word	4
	.word	_Label_2188
	.word	-20
	.word	4
	.word	_Label_2189
	.word	-24
	.word	4
	.word	_Label_2190
	.word	-28
	.word	4
	.word	_Label_2191
	.word	-9
	.word	1
	.word	0
_Label_2184:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2185:
	.ascii	"Pself\0"
	.align
_Label_2186:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2187:
	.byte	'?'
	.ascii	"_temp_2181\0"
	.align
_Label_2188:
	.byte	'?'
	.ascii	"_temp_2180\0"
	.align
_Label_2189:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2190:
	.byte	'?'
	.ascii	"_temp_2178\0"
	.align
_Label_2191:
	.byte	'C'
	.ascii	"_temp_2177\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_3479:
	push	r0
	sub	r1,1,r1
	bne	_Label_3479
	mov	1348,r13		! source line 1348
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1352,r13		! source line 1352
	mov	"\0\0RE",r10
!   _temp_2195 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2195 [entry ] into _temp_2196
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
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
	store	r2,[r14+-16]
!   Data Move: _temp_2194 = *_temp_2196  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2193 = _temp_2194 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2193) then goto _Label_2197
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2197
!   _temp_2192 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2198
_Label_2197:
!   _temp_2192 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2198:
!   ReturnResult: _temp_2192  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_2199
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2200
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2201
	.word	12
	.word	4
	.word	_Label_2202
	.word	-16
	.word	4
	.word	_Label_2203
	.word	-20
	.word	4
	.word	_Label_2204
	.word	-24
	.word	4
	.word	_Label_2205
	.word	-28
	.word	4
	.word	_Label_2206
	.word	-9
	.word	1
	.word	0
_Label_2199:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2200:
	.ascii	"Pself\0"
	.align
_Label_2201:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2202:
	.byte	'?'
	.ascii	"_temp_2196\0"
	.align
_Label_2203:
	.byte	'?'
	.ascii	"_temp_2195\0"
	.align
_Label_2204:
	.byte	'?'
	.ascii	"_temp_2194\0"
	.align
_Label_2205:
	.byte	'?'
	.ascii	"_temp_2193\0"
	.align
_Label_2206:
	.byte	'C'
	.ascii	"_temp_2192\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_3480:
	push	r0
	sub	r1,1,r1
	bne	_Label_3480
	mov	1357,r13		! source line 1357
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1361,r13		! source line 1361
	mov	"\0\0RE",r10
!   _temp_2210 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2210 [entry ] into _temp_2211
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
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
	store	r2,[r14+-16]
!   Data Move: _temp_2209 = *_temp_2211  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2208 = _temp_2209 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2208) then goto _Label_2212
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2212
!   _temp_2207 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2213
_Label_2212:
!   _temp_2207 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2213:
!   ReturnResult: _temp_2207  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_2214
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2215
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2216
	.word	12
	.word	4
	.word	_Label_2217
	.word	-16
	.word	4
	.word	_Label_2218
	.word	-20
	.word	4
	.word	_Label_2219
	.word	-24
	.word	4
	.word	_Label_2220
	.word	-28
	.word	4
	.word	_Label_2221
	.word	-9
	.word	1
	.word	0
_Label_2214:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2215:
	.ascii	"Pself\0"
	.align
_Label_2216:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2217:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2218:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2219:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2220:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2221:
	.byte	'C'
	.ascii	"_temp_2207\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_3481:
	push	r0
	sub	r1,1,r1
	bne	_Label_3481
	mov	1366,r13		! source line 1366
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1370,r13		! source line 1370
	mov	"\0\0RE",r10
!   _temp_2225 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2225 [entry ] into _temp_2226
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
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
	store	r2,[r14+-16]
!   Data Move: _temp_2224 = *_temp_2226  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2223 = _temp_2224 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2223) then goto _Label_2227
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2227
!   _temp_2222 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2228
_Label_2227:
!   _temp_2222 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2228:
!   ReturnResult: _temp_2222  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_2229
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2230
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2231
	.word	12
	.word	4
	.word	_Label_2232
	.word	-16
	.word	4
	.word	_Label_2233
	.word	-20
	.word	4
	.word	_Label_2234
	.word	-24
	.word	4
	.word	_Label_2235
	.word	-28
	.word	4
	.word	_Label_2236
	.word	-9
	.word	1
	.word	0
_Label_2229:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2230:
	.ascii	"Pself\0"
	.align
_Label_2231:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2226\0"
	.align
_Label_2233:
	.byte	'?'
	.ascii	"_temp_2225\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2224\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2236:
	.byte	'C'
	.ascii	"_temp_2222\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_3482:
	push	r0
	sub	r1,1,r1
	bne	_Label_3482
	mov	1375,r13		! source line 1375
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0AS",r10
!   _temp_2237 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2237 [entry ] into _temp_2238
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
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
	store	r2,[r14+-28]
!   _temp_2241 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2241 [entry ] into _temp_2242
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2240 = *_temp_2242  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2239 = _temp_2240 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2238 = _temp_2239  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_2243
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2244
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2245
	.word	12
	.word	4
	.word	_Label_2246
	.word	-12
	.word	4
	.word	_Label_2247
	.word	-16
	.word	4
	.word	_Label_2248
	.word	-20
	.word	4
	.word	_Label_2249
	.word	-24
	.word	4
	.word	_Label_2250
	.word	-28
	.word	4
	.word	_Label_2251
	.word	-32
	.word	4
	.word	0
_Label_2243:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2244:
	.ascii	"Pself\0"
	.align
_Label_2245:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2246:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2248:
	.byte	'?'
	.ascii	"_temp_2240\0"
	.align
_Label_2249:
	.byte	'?'
	.ascii	"_temp_2239\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_3483:
	push	r0
	sub	r1,1,r1
	bne	_Label_3483
	mov	1384,r13		! source line 1384
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1388,r13		! source line 1388
	mov	"\0\0AS",r10
!   _temp_2252 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2252 [entry ] into _temp_2253
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
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
	store	r2,[r14+-28]
!   _temp_2256 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2256 [entry ] into _temp_2257
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2255 = *_temp_2257  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2254 = _temp_2255 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2253 = _temp_2254  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1388,r13		! source line 1388
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_2258
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2259
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2260
	.word	12
	.word	4
	.word	_Label_2261
	.word	-12
	.word	4
	.word	_Label_2262
	.word	-16
	.word	4
	.word	_Label_2263
	.word	-20
	.word	4
	.word	_Label_2264
	.word	-24
	.word	4
	.word	_Label_2265
	.word	-28
	.word	4
	.word	_Label_2266
	.word	-32
	.word	4
	.word	0
_Label_2258:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2259:
	.ascii	"Pself\0"
	.align
_Label_2260:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2261:
	.byte	'?'
	.ascii	"_temp_2257\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2256\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2255\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2254\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2253\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2252\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_3484:
	push	r0
	sub	r1,1,r1
	bne	_Label_3484
	mov	1393,r13		! source line 1393
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1397,r13		! source line 1397
	mov	"\0\0AS",r10
!   _temp_2267 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2267 [entry ] into _temp_2268
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
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
	store	r2,[r14+-28]
!   _temp_2271 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2271 [entry ] into _temp_2272
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2270 = *_temp_2272  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2269 = _temp_2270 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2268 = _temp_2269  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1397,r13		! source line 1397
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_2273
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2274
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2275
	.word	12
	.word	4
	.word	_Label_2276
	.word	-12
	.word	4
	.word	_Label_2277
	.word	-16
	.word	4
	.word	_Label_2278
	.word	-20
	.word	4
	.word	_Label_2279
	.word	-24
	.word	4
	.word	_Label_2280
	.word	-28
	.word	4
	.word	_Label_2281
	.word	-32
	.word	4
	.word	0
_Label_2273:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2274:
	.ascii	"Pself\0"
	.align
_Label_2275:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2272\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2270\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2269\0"
	.align
_Label_2280:
	.byte	'?'
	.ascii	"_temp_2268\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2267\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_3485:
	push	r0
	sub	r1,1,r1
	bne	_Label_3485
	mov	1402,r13		! source line 1402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1406,r13		! source line 1406
	mov	"\0\0AS",r10
!   _temp_2282 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2282 [entry ] into _temp_2283
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
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
	store	r2,[r14+-28]
!   _temp_2286 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2286 [entry ] into _temp_2287
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2285 = *_temp_2287  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2284 = _temp_2285 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2283 = _temp_2284  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1406,r13		! source line 1406
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_2288
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2289
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2290
	.word	12
	.word	4
	.word	_Label_2291
	.word	-12
	.word	4
	.word	_Label_2292
	.word	-16
	.word	4
	.word	_Label_2293
	.word	-20
	.word	4
	.word	_Label_2294
	.word	-24
	.word	4
	.word	_Label_2295
	.word	-28
	.word	4
	.word	_Label_2296
	.word	-32
	.word	4
	.word	0
_Label_2288:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2289:
	.ascii	"Pself\0"
	.align
_Label_2290:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2287\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2286\0"
	.align
_Label_2293:
	.byte	'?'
	.ascii	"_temp_2285\0"
	.align
_Label_2294:
	.byte	'?'
	.ascii	"_temp_2284\0"
	.align
_Label_2295:
	.byte	'?'
	.ascii	"_temp_2283\0"
	.align
_Label_2296:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_3486:
	push	r0
	sub	r1,1,r1
	bne	_Label_3486
	mov	1411,r13		! source line 1411
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1415,r13		! source line 1415
	mov	"\0\0AS",r10
!   _temp_2297 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2297 [entry ] into _temp_2298
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
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
	store	r2,[r14+-28]
!   _temp_2301 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2301 [entry ] into _temp_2302
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2300 = *_temp_2302  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2299 = _temp_2300 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2298 = _temp_2299  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1415,r13		! source line 1415
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_2303
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2304
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2305
	.word	12
	.word	4
	.word	_Label_2306
	.word	-12
	.word	4
	.word	_Label_2307
	.word	-16
	.word	4
	.word	_Label_2308
	.word	-20
	.word	4
	.word	_Label_2309
	.word	-24
	.word	4
	.word	_Label_2310
	.word	-28
	.word	4
	.word	_Label_2311
	.word	-32
	.word	4
	.word	0
_Label_2303:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2304:
	.ascii	"Pself\0"
	.align
_Label_2305:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2306:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2307:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2308:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2309:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2310:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2311:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_3487:
	push	r0
	sub	r1,1,r1
	bne	_Label_3487
	mov	1420,r13		! source line 1420
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1424,r13		! source line 1424
	mov	"\0\0AS",r10
!   _temp_2312 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2312 [entry ] into _temp_2313
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
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
	store	r2,[r14+-28]
!   _temp_2316 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2316 [entry ] into _temp_2317
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2315 = *_temp_2317  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2314 = _temp_2315 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2313 = _temp_2314  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1424,r13		! source line 1424
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_2318
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2319
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2320
	.word	12
	.word	4
	.word	_Label_2321
	.word	-12
	.word	4
	.word	_Label_2322
	.word	-16
	.word	4
	.word	_Label_2323
	.word	-20
	.word	4
	.word	_Label_2324
	.word	-24
	.word	4
	.word	_Label_2325
	.word	-28
	.word	4
	.word	_Label_2326
	.word	-32
	.word	4
	.word	0
_Label_2318:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2319:
	.ascii	"Pself\0"
	.align
_Label_2320:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2321:
	.byte	'?'
	.ascii	"_temp_2317\0"
	.align
_Label_2322:
	.byte	'?'
	.ascii	"_temp_2316\0"
	.align
_Label_2323:
	.byte	'?'
	.ascii	"_temp_2315\0"
	.align
_Label_2324:
	.byte	'?'
	.ascii	"_temp_2314\0"
	.align
_Label_2325:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2326:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_3488:
	push	r0
	sub	r1,1,r1
	bne	_Label_3488
	mov	1429,r13		! source line 1429
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1433,r13		! source line 1433
	mov	"\0\0AS",r10
!   _temp_2327 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2327 [entry ] into _temp_2328
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
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
	store	r2,[r14+-28]
!   _temp_2331 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2331 [entry ] into _temp_2332
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2330 = *_temp_2332  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2329 = _temp_2330 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2328 = _temp_2329  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1433,r13		! source line 1433
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_2333
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2334
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2335
	.word	12
	.word	4
	.word	_Label_2336
	.word	-12
	.word	4
	.word	_Label_2337
	.word	-16
	.word	4
	.word	_Label_2338
	.word	-20
	.word	4
	.word	_Label_2339
	.word	-24
	.word	4
	.word	_Label_2340
	.word	-28
	.word	4
	.word	_Label_2341
	.word	-32
	.word	4
	.word	0
_Label_2333:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2334:
	.ascii	"Pself\0"
	.align
_Label_2335:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2332\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2331\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2330\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_3489:
	push	r0
	sub	r1,1,r1
	bne	_Label_3489
	mov	1438,r13		! source line 1438
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0AS",r10
!   _temp_2342 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2342 [entry ] into _temp_2343
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
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
	store	r2,[r14+-28]
!   _temp_2346 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2346 [entry ] into _temp_2347
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2345 = *_temp_2347  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2344 = _temp_2345 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2343 = _temp_2344  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_2348
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2349
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2350
	.word	12
	.word	4
	.word	_Label_2351
	.word	-12
	.word	4
	.word	_Label_2352
	.word	-16
	.word	4
	.word	_Label_2353
	.word	-20
	.word	4
	.word	_Label_2354
	.word	-24
	.word	4
	.word	_Label_2355
	.word	-28
	.word	4
	.word	_Label_2356
	.word	-32
	.word	4
	.word	0
_Label_2348:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2349:
	.ascii	"Pself\0"
	.align
_Label_2350:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2351:
	.byte	'?'
	.ascii	"_temp_2347\0"
	.align
_Label_2352:
	.byte	'?'
	.ascii	"_temp_2346\0"
	.align
_Label_2353:
	.byte	'?'
	.ascii	"_temp_2345\0"
	.align
_Label_2354:
	.byte	'?'
	.ascii	"_temp_2344\0"
	.align
_Label_2355:
	.byte	'?'
	.ascii	"_temp_2343\0"
	.align
_Label_2356:
	.byte	'?'
	.ascii	"_temp_2342\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_3490:
	push	r0
	sub	r1,1,r1
	bne	_Label_3490
	mov	1447,r13		! source line 1447
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2358 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2358 [0 ] into _temp_2359
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
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
	store	r2,[r14+-16]
!   _temp_2357 = _temp_2359		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2360 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2357  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2360  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1453,r13		! source line 1453
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1453,r13		! source line 1453
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_2361
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2362
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2363
	.word	-12
	.word	4
	.word	_Label_2364
	.word	-16
	.word	4
	.word	_Label_2365
	.word	-20
	.word	4
	.word	_Label_2366
	.word	-24
	.word	4
	.word	0
_Label_2361:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2362:
	.ascii	"Pself\0"
	.align
_Label_2363:
	.byte	'?'
	.ascii	"_temp_2360\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2359\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2358\0"
	.align
_Label_2366:
	.byte	'?'
	.ascii	"_temp_2357\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_3491:
	push	r0
	sub	r1,1,r1
	bne	_Label_3491
	mov	1458,r13		! source line 1458
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1473,r13		! source line 1473
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2367
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2367
	jmp	_Label_2368
_Label_2367:
! THEN...
	mov	1474,r13		! source line 1474
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1474,r13		! source line 1474
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2369
_Label_2368:
! ELSE...
	mov	1475,r13		! source line 1475
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1475,r13		! source line 1475
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2371		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2371
!	jmp	_Label_2370
_Label_2370:
! THEN...
	mov	1476,r13		! source line 1476
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1476,r13		! source line 1476
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2371:
! END IF...
_Label_2369:
! ASSIGNMENT STATEMENT...
	mov	1478,r13		! source line 1478
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1479,r13		! source line 1479
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1482,r13		! source line 1482
	mov	"\0\0WH",r10
_Label_2372:
!	jmp	_Label_2373
_Label_2373:
	mov	1482,r13		! source line 1482
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1483,r13		! source line 1483
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2376		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2376
!	jmp	_Label_2375
_Label_2375:
! THEN...
	mov	1484,r13		! source line 1484
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2377 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2377  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1484,r13		! source line 1484
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1485,r13		! source line 1485
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2376:
! IF STATEMENT...
	mov	1487,r13		! source line 1487
	mov	"\0\0IF",r10
	mov	1487,r13		! source line 1487
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2381) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2380  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2380 then goto _Label_2379 else goto _Label_2378
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2378
	jmp	_Label_2379
_Label_2378:
! THEN...
	mov	1488,r13		! source line 1488
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2382 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2382  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1488,r13		! source line 1488
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1489,r13		! source line 1489
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2379:
! ASSIGNMENT STATEMENT...
	mov	1491,r13		! source line 1491
	mov	"\0\0AS",r10
	mov	1491,r13		! source line 1491
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2384) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2383  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2383 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1493,r13		! source line 1493
	mov	"\0\0WH",r10
_Label_2385:
!   if offset >= 8192 then goto _Label_2387		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2387
!	jmp	_Label_2386
_Label_2386:
	mov	1493,r13		! source line 1493
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2388 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2388  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1497,r13		! source line 1497
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1498,r13		! source line 1498
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1499,r13		! source line 1499
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1500,r13		! source line 1500
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1501,r13		! source line 1501
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2390		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2390
!	jmp	_Label_2389
_Label_2389:
! THEN...
	mov	1502,r13		! source line 1502
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1502,r13		! source line 1502
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2390:
! END WHILE...
	jmp	_Label_2385
_Label_2387:
! ASSIGNMENT STATEMENT...
	mov	1505,r13		! source line 1505
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1506,r13		! source line 1506
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2372
_Label_2374:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2391
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2392
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2393
	.word	12
	.word	4
	.word	_Label_2394
	.word	16
	.word	4
	.word	_Label_2395
	.word	20
	.word	4
	.word	_Label_2396
	.word	-9
	.word	1
	.word	_Label_2397
	.word	-16
	.word	4
	.word	_Label_2398
	.word	-20
	.word	4
	.word	_Label_2399
	.word	-24
	.word	4
	.word	_Label_2400
	.word	-28
	.word	4
	.word	_Label_2401
	.word	-10
	.word	1
	.word	_Label_2402
	.word	-32
	.word	4
	.word	_Label_2403
	.word	-36
	.word	4
	.word	_Label_2404
	.word	-40
	.word	4
	.word	_Label_2405
	.word	-44
	.word	4
	.word	_Label_2406
	.word	-48
	.word	4
	.word	0
_Label_2391:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2392:
	.ascii	"Pself\0"
	.align
_Label_2393:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2394:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2395:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2396:
	.byte	'C'
	.ascii	"_temp_2388\0"
	.align
_Label_2397:
	.byte	'?'
	.ascii	"_temp_2384\0"
	.align
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2383\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2382\0"
	.align
_Label_2400:
	.byte	'?'
	.ascii	"_temp_2381\0"
	.align
_Label_2401:
	.byte	'C'
	.ascii	"_temp_2380\0"
	.align
_Label_2402:
	.byte	'?'
	.ascii	"_temp_2377\0"
	.align
_Label_2403:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2404:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2405:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2406:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_3492:
	push	r0
	sub	r1,1,r1
	bne	_Label_3492
	mov	1512,r13		! source line 1512
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1523,r13		! source line 1523
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2407
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2407
	jmp	_Label_2408
_Label_2407:
! THEN...
	mov	1524,r13		! source line 1524
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1524,r13		! source line 1524
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2409
_Label_2408:
! ELSE...
	mov	1525,r13		! source line 1525
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1525,r13		! source line 1525
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2411		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2411
!	jmp	_Label_2410
_Label_2410:
! THEN...
	mov	1526,r13		! source line 1526
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1526,r13		! source line 1526
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2411:
! END IF...
_Label_2409:
! ASSIGNMENT STATEMENT...
	mov	1528,r13		! source line 1528
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1529,r13		! source line 1529
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1530,r13		! source line 1530
	mov	"\0\0WH",r10
_Label_2412:
!	jmp	_Label_2413
_Label_2413:
	mov	1530,r13		! source line 1530
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1531,r13		! source line 1531
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2418		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2418
	jmp	_Label_2415
_Label_2418:
	mov	1532,r13		! source line 1532
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2420) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2419  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2419 then goto _Label_2417 else goto _Label_2415
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2415
	jmp	_Label_2417
_Label_2417:
	mov	1533,r13		! source line 1533
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2422) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_2421  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2421 then goto _Label_2416 else goto _Label_2415
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2415
	jmp	_Label_2416
_Label_2415:
! THEN...
	mov	1534,r13		! source line 1534
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1534,r13		! source line 1534
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2416:
! ASSIGNMENT STATEMENT...
	mov	1536,r13		! source line 1536
	mov	"\0\0AS",r10
	mov	1536,r13		! source line 1536
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2424) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2423  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2423 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1537,r13		! source line 1537
	mov	"\0\0WH",r10
_Label_2425:
!   if offset >= 8192 then goto _Label_2427		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2427
!	jmp	_Label_2426
_Label_2426:
	mov	1537,r13		! source line 1537
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1538,r13		! source line 1538
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2428 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2428  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1539,r13		! source line 1539
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1540,r13		! source line 1540
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1541,r13		! source line 1541
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1542,r13		! source line 1542
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1543,r13		! source line 1543
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2430		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2430
!	jmp	_Label_2429
_Label_2429:
! THEN...
	mov	1544,r13		! source line 1544
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1544,r13		! source line 1544
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2430:
! END WHILE...
	jmp	_Label_2425
_Label_2427:
! ASSIGNMENT STATEMENT...
	mov	1547,r13		! source line 1547
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1548,r13		! source line 1548
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2412
_Label_2414:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2431
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2432
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2433
	.word	12
	.word	4
	.word	_Label_2434
	.word	16
	.word	4
	.word	_Label_2435
	.word	20
	.word	4
	.word	_Label_2436
	.word	-9
	.word	1
	.word	_Label_2437
	.word	-16
	.word	4
	.word	_Label_2438
	.word	-20
	.word	4
	.word	_Label_2439
	.word	-24
	.word	4
	.word	_Label_2440
	.word	-10
	.word	1
	.word	_Label_2441
	.word	-28
	.word	4
	.word	_Label_2442
	.word	-11
	.word	1
	.word	_Label_2443
	.word	-32
	.word	4
	.word	_Label_2444
	.word	-36
	.word	4
	.word	_Label_2445
	.word	-40
	.word	4
	.word	_Label_2446
	.word	-44
	.word	4
	.word	0
_Label_2431:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2432:
	.ascii	"Pself\0"
	.align
_Label_2433:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2434:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2435:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2436:
	.byte	'C'
	.ascii	"_temp_2428\0"
	.align
_Label_2437:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2438:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2439:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2440:
	.byte	'C'
	.ascii	"_temp_2421\0"
	.align
_Label_2441:
	.byte	'?'
	.ascii	"_temp_2420\0"
	.align
_Label_2442:
	.byte	'C'
	.ascii	"_temp_2419\0"
	.align
_Label_2443:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2444:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2445:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2446:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_3493:
	push	r0
	sub	r1,1,r1
	bne	_Label_3493
	mov	1554,r13		! source line 1554
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1578,r13		! source line 1578
	mov	"\0\0IF",r10
	mov	1578,r13		! source line 1578
	mov	"\0\0SE",r10
!   _temp_2450 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2451) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2450  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2449  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2449 >= 4 then goto _Label_2448		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2448
!	jmp	_Label_2447
_Label_2447:
! THEN...
	mov	1581,r13		! source line 1581
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1581,r13		! source line 1581
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2448:
! IF STATEMENT...
	mov	1585,r13		! source line 1585
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2453		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2453
!	jmp	_Label_2452
_Label_2452:
! THEN...
	mov	1586,r13		! source line 1586
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1586,r13		! source line 1586
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2453:
! ASSIGNMENT STATEMENT...
	mov	1589,r13		! source line 1589
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1591,r13		! source line 1591
	mov	"\0\0RE",r10
	mov	1591,r13		! source line 1591
	mov	"\0\0SE",r10
!   _temp_2456 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2455 = _temp_2456 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2457 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2458) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2455  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2457  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2454  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2454  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_2459
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2460
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2461
	.word	12
	.word	4
	.word	_Label_2462
	.word	16
	.word	4
	.word	_Label_2463
	.word	20
	.word	4
	.word	_Label_2464
	.word	-12
	.word	4
	.word	_Label_2465
	.word	-16
	.word	4
	.word	_Label_2466
	.word	-20
	.word	4
	.word	_Label_2467
	.word	-24
	.word	4
	.word	_Label_2468
	.word	-28
	.word	4
	.word	_Label_2469
	.word	-32
	.word	4
	.word	_Label_2470
	.word	-36
	.word	4
	.word	_Label_2471
	.word	-40
	.word	4
	.word	_Label_2472
	.word	-44
	.word	4
	.word	0
_Label_2459:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2460:
	.ascii	"Pself\0"
	.align
_Label_2461:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2462:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2463:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2458\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2457\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2456\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2455\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2454\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2451\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2450\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2449\0"
	.align
_Label_2472:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2473
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2473:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2474
	.word	_sourceFileName
	.word	307		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2474:
	.ascii	"DiskDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_DiskDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_1,r1
	push	r1
	mov	7,r1
_Label_3494:
	push	r0
	sub	r1,1,r1
	bne	_Label_3494
	mov	2088,r13		! source line 2088
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2475 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2475  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2089,r13		! source line 2089
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2090,r13		! source line 2090
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2091,r13		! source line 2091
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2092,r13		! source line 2092
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2093,r13		! source line 2093
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2094,r13		! source line 2094
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2095,r13		! source line 2095
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2096,r13		! source line 2096
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semUsedInSynchMethods = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semUsedInSynchMethods = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	2097,r13		! source line 2097
	mov	"\0\0SE",r10
!   _temp_2477 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2098,r13		! source line 2098
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: diskBusy = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   diskBusy = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	2099,r13		! source line 2099
	mov	"\0\0SE",r10
!   _temp_2479 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2099,r13		! source line 2099
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_1:
	.word	_sourceFileName
	.word	_Label_2480
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2481
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2482
	.word	-12
	.word	4
	.word	_Label_2483
	.word	-16
	.word	4
	.word	_Label_2484
	.word	-20
	.word	4
	.word	_Label_2485
	.word	-24
	.word	4
	.word	_Label_2486
	.word	-28
	.word	4
	.word	0
_Label_2480:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2481:
	.ascii	"Pself\0"
	.align
_Label_2482:
	.byte	'?'
	.ascii	"_temp_2479\0"
	.align
_Label_2483:
	.byte	'?'
	.ascii	"_temp_2478\0"
	.align
_Label_2484:
	.byte	'?'
	.ascii	"_temp_2477\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2476\0"
	.align
_Label_2486:
	.byte	'?'
	.ascii	"_temp_2475\0"
	.align
! 
! ===============  METHOD SynchReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_2,r1
	push	r1
	mov	16,r1
_Label_3495:
	push	r0
	sub	r1,1,r1
	bne	_Label_3495
	mov	2104,r13		! source line 2104
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2117,r13		! source line 2117
	mov	"\0\0SE",r10
!   _temp_2487 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2118,r13		! source line 2118
	mov	"\0\0WH",r10
_Label_2488:
!	jmp	_Label_2489
_Label_2489:
	mov	2118,r13		! source line 2118
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2120,r13		! source line 2120
	mov	"\0\0SE",r10
!   _temp_2491 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2492) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2491  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartReadSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	2122,r13		! source line 2122
	mov	"\0\0SE",r10
!   _temp_2493 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2125,r13		! source line 2125
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2502 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2496
	cmp	r1,2
	be	_Label_2497
	cmp	r1,3
	be	_Label_2498
	cmp	r1,4
	be	_Label_2499
	cmp	r1,5
	be	_Label_2500
	cmp	r1,6
	be	_Label_2501
	jmp	_Label_2494
! CASE 1...
_Label_2496:
! SEND STATEMENT...
	mov	2127,r13		! source line 2127
	mov	"\0\0SE",r10
!   _temp_2503 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2128,r13		! source line 2128
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2497:
! CALL STATEMENT...
!   _temp_2504 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2504  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2130,r13		! source line 2130
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2498:
! CALL STATEMENT...
!   _temp_2505 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2505  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2132,r13		! source line 2132
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2499:
! CALL STATEMENT...
!   _temp_2506 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2506  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2134,r13		! source line 2134
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2500:
! BREAK STATEMENT...
	mov	2138,r13		! source line 2138
	mov	"\0\0BR",r10
	jmp	_Label_2495
! CASE 6...
_Label_2501:
! CALL STATEMENT...
!   _temp_2507 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2507  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2140,r13		! source line 2140
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2494:
! CALL STATEMENT...
!   _temp_2508 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2508  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2142,r13		! source line 2142
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2495:
! END WHILE...
	jmp	_Label_2488
_Label_2490:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2509
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2510
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2511
	.word	12
	.word	4
	.word	_Label_2512
	.word	16
	.word	4
	.word	_Label_2513
	.word	20
	.word	4
	.word	_Label_2514
	.word	-12
	.word	4
	.word	_Label_2515
	.word	-16
	.word	4
	.word	_Label_2516
	.word	-20
	.word	4
	.word	_Label_2517
	.word	-24
	.word	4
	.word	_Label_2518
	.word	-28
	.word	4
	.word	_Label_2519
	.word	-32
	.word	4
	.word	_Label_2520
	.word	-36
	.word	4
	.word	_Label_2521
	.word	-40
	.word	4
	.word	_Label_2522
	.word	-44
	.word	4
	.word	_Label_2523
	.word	-48
	.word	4
	.word	_Label_2524
	.word	-52
	.word	4
	.word	0
_Label_2509:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2510:
	.ascii	"Pself\0"
	.align
_Label_2511:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2512:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2513:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2514:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2515:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2516:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2502\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2523:
	.byte	'?'
	.ascii	"_temp_2491\0"
	.align
_Label_2524:
	.byte	'?'
	.ascii	"_temp_2487\0"
	.align
! 
! ===============  METHOD StartReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_3,r1
	push	r1
	mov	2151,r13		! source line 2151
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2166,r13		! source line 2166
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2169,r13		! source line 2169
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2170,r13		! source line 2170
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2171,r13		! source line 2171
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2172,r13		! source line 2172
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2172,r13		! source line 2172
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_3:
	.word	_sourceFileName
	.word	_Label_2525
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2526
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2527
	.word	12
	.word	4
	.word	_Label_2528
	.word	16
	.word	4
	.word	_Label_2529
	.word	20
	.word	4
	.word	_Label_2530
	.word	24
	.word	4
	.word	0
_Label_2525:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2526:
	.ascii	"Pself\0"
	.align
_Label_2527:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2528:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2529:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2530:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  METHOD SynchWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_4,r1
	push	r1
	mov	16,r1
_Label_3496:
	push	r0
	sub	r1,1,r1
	bne	_Label_3496
	mov	2177,r13		! source line 2177
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2189,r13		! source line 2189
	mov	"\0\0SE",r10
!   _temp_2531 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2190,r13		! source line 2190
	mov	"\0\0WH",r10
_Label_2532:
!	jmp	_Label_2533
_Label_2533:
	mov	2190,r13		! source line 2190
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2191,r13		! source line 2191
	mov	"\0\0SE",r10
!   _temp_2535 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2536) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2535  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartWriteSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2193,r13		! source line 2193
	mov	"\0\0SE",r10
!   _temp_2537 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2196,r13		! source line 2196
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2546 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2540
	cmp	r1,2
	be	_Label_2541
	cmp	r1,3
	be	_Label_2542
	cmp	r1,4
	be	_Label_2543
	cmp	r1,5
	be	_Label_2544
	cmp	r1,6
	be	_Label_2545
	jmp	_Label_2538
! CASE 1...
_Label_2540:
! SEND STATEMENT...
	mov	2198,r13		! source line 2198
	mov	"\0\0SE",r10
!   _temp_2547 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2199,r13		! source line 2199
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2541:
! CALL STATEMENT...
!   _temp_2548 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2548  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2201,r13		! source line 2201
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2542:
! CALL STATEMENT...
!   _temp_2549 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2549  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2203,r13		! source line 2203
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2543:
! CALL STATEMENT...
!   _temp_2550 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2550  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2205,r13		! source line 2205
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2544:
! BREAK STATEMENT...
	mov	2209,r13		! source line 2209
	mov	"\0\0BR",r10
	jmp	_Label_2539
! CASE 6...
_Label_2545:
! CALL STATEMENT...
!   _temp_2551 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2551  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2211,r13		! source line 2211
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2538:
! CALL STATEMENT...
!   _temp_2552 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2552  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2213,r13		! source line 2213
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2539:
! END WHILE...
	jmp	_Label_2532
_Label_2534:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2553
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2554
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2555
	.word	12
	.word	4
	.word	_Label_2556
	.word	16
	.word	4
	.word	_Label_2557
	.word	20
	.word	4
	.word	_Label_2558
	.word	-12
	.word	4
	.word	_Label_2559
	.word	-16
	.word	4
	.word	_Label_2560
	.word	-20
	.word	4
	.word	_Label_2561
	.word	-24
	.word	4
	.word	_Label_2562
	.word	-28
	.word	4
	.word	_Label_2563
	.word	-32
	.word	4
	.word	_Label_2564
	.word	-36
	.word	4
	.word	_Label_2565
	.word	-40
	.word	4
	.word	_Label_2566
	.word	-44
	.word	4
	.word	_Label_2567
	.word	-48
	.word	4
	.word	_Label_2568
	.word	-52
	.word	4
	.word	0
_Label_2553:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2554:
	.ascii	"Pself\0"
	.align
_Label_2555:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2556:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2557:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2558:
	.byte	'?'
	.ascii	"_temp_2552\0"
	.align
_Label_2559:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2560:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2562:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2563:
	.byte	'?'
	.ascii	"_temp_2547\0"
	.align
_Label_2564:
	.byte	'?'
	.ascii	"_temp_2546\0"
	.align
_Label_2565:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2566:
	.byte	'?'
	.ascii	"_temp_2536\0"
	.align
_Label_2567:
	.byte	'?'
	.ascii	"_temp_2535\0"
	.align
_Label_2568:
	.byte	'?'
	.ascii	"_temp_2531\0"
	.align
! 
! ===============  METHOD StartWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_5,r1
	push	r1
	mov	2222,r13		! source line 2222
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2237,r13		! source line 2237
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2239,r13		! source line 2239
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2240,r13		! source line 2240
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2241,r13		! source line 2241
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2242,r13		! source line 2242
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2242,r13		! source line 2242
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_5:
	.word	_sourceFileName
	.word	_Label_2569
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2570
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2571
	.word	12
	.word	4
	.word	_Label_2572
	.word	16
	.word	4
	.word	_Label_2573
	.word	20
	.word	4
	.word	_Label_2574
	.word	24
	.word	4
	.word	0
_Label_2569:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2570:
	.ascii	"Pself\0"
	.align
_Label_2571:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2572:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2573:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2574:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2575
	jmp	_Method_P_Kernel_FileManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FileManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FileManager_4	! 12:	FindFCB
	jmp	_Method_P_Kernel_FileManager_3	! 16:	Open
	jmp	_Method_P_Kernel_FileManager_5	! 20:	Close
	jmp	_Method_P_Kernel_FileManager_6	! 24:	Flush
	jmp	_Method_P_Kernel_FileManager_7	! 28:	SynchRead
	jmp	_Method_P_Kernel_FileManager_8	! 32:	SynchWrite
	.word	0
! 
! Class descriptor:
! 
_Label_2575:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2576
	.word	_sourceFileName
	.word	330		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2576:
	.ascii	"FileManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_1,r1
	push	r1
	mov	238,r1
_Label_3497:
	push	r0
	sub	r1,1,r1
	bne	_Label_3497
	mov	2253,r13		! source line 2253
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2577 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2577  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2260,r13		! source line 2260
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2261,r13		! source line 2261
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fileManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fileManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	2262,r13		! source line 2262
	mov	"\0\0SE",r10
!   _temp_2579 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-932]
!   Send message Init
	load	[r14+-932],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2265,r13		! source line 2265
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fcbFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,444,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   fcbFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+444]
! ASSIGNMENT STATEMENT...
	mov	2266,r13		! source line 2266
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,428,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+428]
! SEND STATEMENT...
	mov	2267,r13		! source line 2267
	mov	"\0\0SE",r10
!   _temp_2582 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-920]
!   Send message Init
	load	[r14+-920],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2268,r13		! source line 2268
	mov	"\0\0AS",r10
!   _temp_2583 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2585 = &_temp_2584
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2585 = _temp_2585 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2587 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3498:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3498
!   _temp_2587 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2589:
!   Data Move: *_temp_2585 = _temp_2587  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3499:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3499
!   _temp_2585 = _temp_2585 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2586 = _temp_2586 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2586) then goto _Label_2589
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2589
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2590 = &_temp_2584
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3500
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3500:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2583 = *_temp_2590  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3501:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3501
! FOR STATEMENT...
	mov	2270,r13		! source line 2270
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2595 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2596 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2595  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2591:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2596 then goto _Label_2594		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2594
_Label_2592:
	mov	2270,r13		! source line 2270
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2271,r13		! source line 2271
	mov	"\0\0AS",r10
!   _temp_2597 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2597 [i ] into _temp_2598
!     make sure index expr is >= 0
	load	[r14+-944],r2
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
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-440]
!   _temp_2599 = _temp_2598 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2599 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2272,r13		! source line 2272
	mov	"\0\0SE",r10
!   _temp_2600 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2600 [i ] into _temp_2601
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-432],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-428]
!   Send message Init
	load	[r14+-428],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2273,r13		! source line 2273
	mov	"\0\0SE",r10
!   _temp_2603 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2603 [i ] into _temp_2604
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-420],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   _temp_2602 = _temp_2604		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2605 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2602  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-412],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2593:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2591
! END FOR
_Label_2594:
! ASSIGNMENT STATEMENT...
	mov	2277,r13		! source line 2277
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openFileFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,756,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openFileFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+756]
! ASSIGNMENT STATEMENT...
	mov	2278,r13		! source line 2278
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,740,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+740]
! SEND STATEMENT...
	mov	2279,r13		! source line 2279
	mov	"\0\0SE",r10
!   _temp_2608 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-400]
!   Send message Init
	load	[r14+-400],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2280,r13		! source line 2280
	mov	"\0\0AS",r10
!   _temp_2609 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2611 = &_temp_2610
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2611 = _temp_2611 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2613 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3502:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3502
!   _temp_2613 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2615:
!   Data Move: *_temp_2611 = _temp_2613  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3503:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3503
!   _temp_2611 = _temp_2611 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2612 = _temp_2612 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2612) then goto _Label_2615
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2615
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2616 = &_temp_2610
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3504
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3504:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2609 = *_temp_2616  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3505:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3505
! FOR STATEMENT...
	mov	2282,r13		! source line 2282
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2621 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2622 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2621  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2617:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2622 then goto _Label_2620		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2620
_Label_2618:
	mov	2282,r13		! source line 2282
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2283,r13		! source line 2283
	mov	"\0\0AS",r10
!   _temp_2623 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2623 [i ] into _temp_2624
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_2625 = _temp_2624 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2625 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2284,r13		! source line 2284
	mov	"\0\0SE",r10
!   _temp_2627 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2627 [i ] into _temp_2628
!     make sure index expr is >= 0
	load	[r14+-944],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_2626 = _temp_2628		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2629 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2626  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2619:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2617
! END FOR
_Label_2620:
! ASSIGNMENT STATEMENT...
	mov	2288,r13		! source line 2288
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3506:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3506
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2289,r13		! source line 2289
	mov	"\0\0AS",r10
!   _temp_2631 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2632 = _temp_2631 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2632 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2294,r13		! source line 2294
	mov	"\0\0AS",r10
	mov	2294,r13		! source line 2294
	mov	"\0\0SE",r10
!   _temp_2633 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Send message GetAFrame
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=directoryFrame  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+768]
! SEND STATEMENT...
	mov	2295,r13		! source line 2295
	mov	"\0\0SE",r10
!   _temp_2634 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=directoryFrame  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2295,r13		! source line 2295
	mov	"\0\0RE",r10
	add	r15,956,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_1:
	.word	_sourceFileName
	.word	_Label_2635
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2636
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2637
	.word	-12
	.word	4
	.word	_Label_2638
	.word	-16
	.word	4
	.word	_Label_2639
	.word	-20
	.word	4
	.word	_Label_2640
	.word	-24
	.word	4
	.word	_Label_2641
	.word	-28
	.word	4
	.word	_Label_2642
	.word	-32
	.word	4
	.word	_Label_2643
	.word	-36
	.word	4
	.word	_Label_2644
	.word	-40
	.word	4
	.word	_Label_2645
	.word	-44
	.word	4
	.word	_Label_2646
	.word	-48
	.word	4
	.word	_Label_2647
	.word	-52
	.word	4
	.word	_Label_2648
	.word	-56
	.word	4
	.word	_Label_2649
	.word	-60
	.word	4
	.word	_Label_2650
	.word	-64
	.word	4
	.word	_Label_2651
	.word	-68
	.word	4
	.word	_Label_2652
	.word	-72
	.word	4
	.word	_Label_2653
	.word	-100
	.word	28
	.word	_Label_2654
	.word	-104
	.word	4
	.word	_Label_2655
	.word	-108
	.word	4
	.word	_Label_2656
	.word	-392
	.word	284
	.word	_Label_2657
	.word	-396
	.word	4
	.word	_Label_2658
	.word	-400
	.word	4
	.word	_Label_2659
	.word	-404
	.word	4
	.word	_Label_2660
	.word	-408
	.word	4
	.word	_Label_2661
	.word	-412
	.word	4
	.word	_Label_2662
	.word	-416
	.word	4
	.word	_Label_2663
	.word	-420
	.word	4
	.word	_Label_2664
	.word	-424
	.word	4
	.word	_Label_2665
	.word	-428
	.word	4
	.word	_Label_2666
	.word	-432
	.word	4
	.word	_Label_2667
	.word	-436
	.word	4
	.word	_Label_2668
	.word	-440
	.word	4
	.word	_Label_2669
	.word	-444
	.word	4
	.word	_Label_2670
	.word	-448
	.word	4
	.word	_Label_2671
	.word	-452
	.word	4
	.word	_Label_2672
	.word	-456
	.word	4
	.word	_Label_2673
	.word	-460
	.word	4
	.word	_Label_2674
	.word	-500
	.word	40
	.word	_Label_2675
	.word	-504
	.word	4
	.word	_Label_2676
	.word	-508
	.word	4
	.word	_Label_2677
	.word	-912
	.word	404
	.word	_Label_2678
	.word	-916
	.word	4
	.word	_Label_2679
	.word	-920
	.word	4
	.word	_Label_2680
	.word	-924
	.word	4
	.word	_Label_2681
	.word	-928
	.word	4
	.word	_Label_2682
	.word	-932
	.word	4
	.word	_Label_2683
	.word	-936
	.word	4
	.word	_Label_2684
	.word	-940
	.word	4
	.word	_Label_2685
	.word	-944
	.word	4
	.word	0
_Label_2635:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2636:
	.ascii	"Pself\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2634\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2633\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2632\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2631\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2630\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2626\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2621\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2616\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2655:
	.byte	'?'
	.ascii	"_temp_2611\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2659:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2603\0"
	.align
_Label_2664:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2666:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2669:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2671:
	.byte	'?'
	.ascii	"_temp_2595\0"
	.align
_Label_2672:
	.byte	'?'
	.ascii	"_temp_2590\0"
	.align
_Label_2673:
	.byte	'?'
	.ascii	"_temp_2588\0"
	.align
_Label_2674:
	.byte	'?'
	.ascii	"_temp_2587\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2586\0"
	.align
_Label_2676:
	.byte	'?'
	.ascii	"_temp_2585\0"
	.align
_Label_2677:
	.byte	'?'
	.ascii	"_temp_2584\0"
	.align
_Label_2678:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2679:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2680:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2681:
	.byte	'?'
	.ascii	"_temp_2580\0"
	.align
_Label_2682:
	.byte	'?'
	.ascii	"_temp_2579\0"
	.align
_Label_2683:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2684:
	.byte	'?'
	.ascii	"_temp_2577\0"
	.align
_Label_2685:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_2,r1
	push	r1
	mov	29,r1
_Label_3507:
	push	r0
	sub	r1,1,r1
	bne	_Label_3507
	mov	2302,r13		! source line 2302
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2304,r13		! source line 2304
	mov	"\0\0SE",r10
!   _temp_2686 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2687 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2687  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2305,r13		! source line 2305
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2306,r13		! source line 2306
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2692 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2693 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2692  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2688:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2693 then goto _Label_2691		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2691
_Label_2689:
	mov	2306,r13		! source line 2306
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2694 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2694  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2307,r13		! source line 2307
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2308,r13		! source line 2308
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2695 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2695  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2309,r13		! source line 2309
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2310,r13		! source line 2310
	mov	"\0\0SE",r10
!   _temp_2696 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2696 [i ] into _temp_2697
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Print
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2690:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2688
! END FOR
_Label_2691:
! CALL STATEMENT...
!   _temp_2698 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2698  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2312,r13		! source line 2312
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2313,r13		! source line 2313
	mov	"\0\0SE",r10
!   _temp_2699 = _function_200_printFCB
	set	_function_200_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2700 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2699  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	2314,r13		! source line 2314
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2701 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2701  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2315,r13		! source line 2315
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2316,r13		! source line 2316
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2706 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2707 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2706  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2702:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2707 then goto _Label_2705		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2705
_Label_2703:
	mov	2316,r13		! source line 2316
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2708 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2708  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2317,r13		! source line 2317
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2318,r13		! source line 2318
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2709 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2709  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2319,r13		! source line 2319
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2711 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2711 [i ] into _temp_2712
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_2710 = _temp_2712		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2710  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2320,r13		! source line 2320
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2713 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2713  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2321,r13		! source line 2321
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2322,r13		! source line 2322
	mov	"\0\0SE",r10
!   _temp_2714 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2714 [i ] into _temp_2715
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2704:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2702
! END FOR
_Label_2705:
! CALL STATEMENT...
!   _temp_2716 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2716  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2324,r13		! source line 2324
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2325,r13		! source line 2325
	mov	"\0\0SE",r10
!   _temp_2717 = _function_199_printOpen
	set	_function_199_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2718 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2717  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2326,r13		! source line 2326
	mov	"\0\0SE",r10
!   _temp_2719 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2326,r13		! source line 2326
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_2:
	.word	_sourceFileName
	.word	_Label_2720
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2721
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2722
	.word	-12
	.word	4
	.word	_Label_2723
	.word	-16
	.word	4
	.word	_Label_2724
	.word	-20
	.word	4
	.word	_Label_2725
	.word	-24
	.word	4
	.word	_Label_2726
	.word	-28
	.word	4
	.word	_Label_2727
	.word	-32
	.word	4
	.word	_Label_2728
	.word	-36
	.word	4
	.word	_Label_2729
	.word	-40
	.word	4
	.word	_Label_2730
	.word	-44
	.word	4
	.word	_Label_2731
	.word	-48
	.word	4
	.word	_Label_2732
	.word	-52
	.word	4
	.word	_Label_2733
	.word	-56
	.word	4
	.word	_Label_2734
	.word	-60
	.word	4
	.word	_Label_2735
	.word	-64
	.word	4
	.word	_Label_2736
	.word	-68
	.word	4
	.word	_Label_2737
	.word	-72
	.word	4
	.word	_Label_2738
	.word	-76
	.word	4
	.word	_Label_2739
	.word	-80
	.word	4
	.word	_Label_2740
	.word	-84
	.word	4
	.word	_Label_2741
	.word	-88
	.word	4
	.word	_Label_2742
	.word	-92
	.word	4
	.word	_Label_2743
	.word	-96
	.word	4
	.word	_Label_2744
	.word	-100
	.word	4
	.word	_Label_2745
	.word	-104
	.word	4
	.word	_Label_2746
	.word	-108
	.word	4
	.word	_Label_2747
	.word	-112
	.word	4
	.word	_Label_2748
	.word	-116
	.word	4
	.word	0
_Label_2720:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2721:
	.ascii	"Pself\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2719\0"
	.align
_Label_2723:
	.byte	'?'
	.ascii	"_temp_2718\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2717\0"
	.align
_Label_2725:
	.byte	'?'
	.ascii	"_temp_2716\0"
	.align
_Label_2726:
	.byte	'?'
	.ascii	"_temp_2715\0"
	.align
_Label_2727:
	.byte	'?'
	.ascii	"_temp_2714\0"
	.align
_Label_2728:
	.byte	'?'
	.ascii	"_temp_2713\0"
	.align
_Label_2729:
	.byte	'?'
	.ascii	"_temp_2712\0"
	.align
_Label_2730:
	.byte	'?'
	.ascii	"_temp_2711\0"
	.align
_Label_2731:
	.byte	'?'
	.ascii	"_temp_2710\0"
	.align
_Label_2732:
	.byte	'?'
	.ascii	"_temp_2709\0"
	.align
_Label_2733:
	.byte	'?'
	.ascii	"_temp_2708\0"
	.align
_Label_2734:
	.byte	'?'
	.ascii	"_temp_2707\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2706\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2701\0"
	.align
_Label_2737:
	.byte	'?'
	.ascii	"_temp_2700\0"
	.align
_Label_2738:
	.byte	'?'
	.ascii	"_temp_2699\0"
	.align
_Label_2739:
	.byte	'?'
	.ascii	"_temp_2698\0"
	.align
_Label_2740:
	.byte	'?'
	.ascii	"_temp_2697\0"
	.align
_Label_2741:
	.byte	'?'
	.ascii	"_temp_2696\0"
	.align
_Label_2742:
	.byte	'?'
	.ascii	"_temp_2695\0"
	.align
_Label_2743:
	.byte	'?'
	.ascii	"_temp_2694\0"
	.align
_Label_2744:
	.byte	'?'
	.ascii	"_temp_2693\0"
	.align
_Label_2745:
	.byte	'?'
	.ascii	"_temp_2692\0"
	.align
_Label_2746:
	.byte	'?'
	.ascii	"_temp_2687\0"
	.align
_Label_2747:
	.byte	'?'
	.ascii	"_temp_2686\0"
	.align
_Label_2748:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Open  ===============
! 
_Method_P_Kernel_FileManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_3,r1
	push	r1
	mov	14,r1
_Label_3508:
	push	r0
	sub	r1,1,r1
	bne	_Label_3508
	mov	2331,r13		! source line 2331
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2347,r13		! source line 2347
	mov	"\0\0AS",r10
	mov	2347,r13		! source line 2347
	mov	"\0\0SE",r10
!   _temp_2749 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message FindFCB
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	2348,r13		! source line 2348
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2750
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2750
	jmp	_Label_2751
_Label_2750:
! THEN...
	mov	2349,r13		! source line 2349
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2349,r13		! source line 2349
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2751:
! SEND STATEMENT...
	mov	2353,r13		! source line 2353
	mov	"\0\0SE",r10
!   _temp_2752 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2354,r13		! source line 2354
	mov	"\0\0WH",r10
_Label_2753:
	mov	2354,r13		! source line 2354
	mov	"\0\0SE",r10
!   _temp_2756 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2754 else goto _Label_2755
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2755
	jmp	_Label_2754
_Label_2754:
	mov	2354,r13		! source line 2354
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2355,r13		! source line 2355
	mov	"\0\0SE",r10
!   _temp_2757 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2758 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2757  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2753
_Label_2755:
! ASSIGNMENT STATEMENT...
	mov	2357,r13		! source line 2357
	mov	"\0\0AS",r10
	mov	2357,r13		! source line 2357
	mov	"\0\0SE",r10
!   _temp_2759 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	2360,r13		! source line 2360
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2760 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2760 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2361,r13		! source line 2361
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2761 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2761 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2364,r13		! source line 2364
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2762 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2762 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2366,r13		! source line 2366
	mov	"\0\0SE",r10
!   _temp_2763 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2367,r13		! source line 2367
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_3:
	.word	_sourceFileName
	.word	_Label_2764
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2765
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2766
	.word	12
	.word	4
	.word	_Label_2767
	.word	-12
	.word	4
	.word	_Label_2768
	.word	-16
	.word	4
	.word	_Label_2769
	.word	-20
	.word	4
	.word	_Label_2770
	.word	-24
	.word	4
	.word	_Label_2771
	.word	-28
	.word	4
	.word	_Label_2772
	.word	-32
	.word	4
	.word	_Label_2773
	.word	-36
	.word	4
	.word	_Label_2774
	.word	-40
	.word	4
	.word	_Label_2775
	.word	-44
	.word	4
	.word	_Label_2776
	.word	-48
	.word	4
	.word	_Label_2777
	.word	-52
	.word	4
	.word	_Label_2778
	.word	-56
	.word	4
	.word	0
_Label_2764:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2765:
	.ascii	"Pself\0"
	.align
_Label_2766:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2767:
	.byte	'?'
	.ascii	"_temp_2763\0"
	.align
_Label_2768:
	.byte	'?'
	.ascii	"_temp_2762\0"
	.align
_Label_2769:
	.byte	'?'
	.ascii	"_temp_2761\0"
	.align
_Label_2770:
	.byte	'?'
	.ascii	"_temp_2760\0"
	.align
_Label_2771:
	.byte	'?'
	.ascii	"_temp_2759\0"
	.align
_Label_2772:
	.byte	'?'
	.ascii	"_temp_2758\0"
	.align
_Label_2773:
	.byte	'?'
	.ascii	"_temp_2757\0"
	.align
_Label_2774:
	.byte	'?'
	.ascii	"_temp_2756\0"
	.align
_Label_2775:
	.byte	'?'
	.ascii	"_temp_2752\0"
	.align
_Label_2776:
	.byte	'?'
	.ascii	"_temp_2749\0"
	.align
_Label_2777:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2778:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD FindFCB  ===============
! 
_Method_P_Kernel_FileManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_4,r1
	push	r1
	mov	41,r1
_Label_3509:
	push	r0
	sub	r1,1,r1
	bne	_Label_3509
	mov	2372,r13		! source line 2372
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2397,r13		! source line 2397
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2400,r13		! source line 2400
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2401,r13		! source line 2401
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2402,r13		! source line 2402
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2780		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2780
!	jmp	_Label_2779
_Label_2779:
! THEN...
	mov	2403,r13		! source line 2403
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2781 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2781  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2403,r13		! source line 2403
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2780:
! ASSIGNMENT STATEMENT...
	mov	2407,r13		! source line 2407
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: numFiles = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2408,r13		! source line 2408
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2409,r13		! source line 2409
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2410,r13		! source line 2410
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2413,r13		! source line 2413
	mov	"\0\0WH",r10
_Label_2782:
!   if numFiles <= 0 then goto _Label_2784		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2784
!	jmp	_Label_2783
_Label_2783:
	mov	2413,r13		! source line 2413
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2785 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2785  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2414,r13		! source line 2414
	mov	"\0\0CA",r10
	call	_function_201_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2415,r13		! source line 2415
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2786 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2786  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2416,r13		! source line 2416
	mov	"\0\0CA",r10
	call	_function_201_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2417,r13		! source line 2417
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2787 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2787  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2418,r13		! source line 2418
	mov	"\0\0CA",r10
	call	_function_201_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2419,r13		! source line 2419
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2420,r13		! source line 2420
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2791 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2791 then goto _Label_2789		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2789
!	jmp	_Label_2790
_Label_2790:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2793
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
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
!   _temp_2792 = _temp_2793		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2792  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2421,r13		! source line 2421
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2788 else goto _Label_2789
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2789
	jmp	_Label_2788
_Label_2788:
! THEN...
	mov	2422,r13		! source line 2422
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2422,r13		! source line 2422
	mov	"\0\0BR",r10
	jmp	_Label_2784
! END IF...
_Label_2789:
! ASSIGNMENT STATEMENT...
	mov	2424,r13		! source line 2424
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2425,r13		! source line 2425
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2782
_Label_2784:
! IF STATEMENT...
	mov	2429,r13		! source line 2429
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2795		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2795
!	jmp	_Label_2794
_Label_2794:
! THEN...
	mov	2430,r13		! source line 2430
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2430,r13		! source line 2430
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2795:
! SEND STATEMENT...
	mov	2433,r13		! source line 2433
	mov	"\0\0SE",r10
!   _temp_2796 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Send message Lock
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	2435,r13		! source line 2435
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2801 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2802 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2801  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2797:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2802 then goto _Label_2800		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2800
_Label_2798:
	mov	2435,r13		! source line 2435
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2436,r13		! source line 2436
	mov	"\0\0AS",r10
!   _temp_2803 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2803 [i ] into _temp_2804
!     make sure index expr is >= 0
	load	[r14+-136],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   fcb = _temp_2804		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2437,r13		! source line 2437
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2808 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2807 = *_temp_2808  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2807 != start then goto _Label_2806		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2806
!	jmp	_Label_2805
_Label_2805:
! THEN...
	mov	2438,r13		! source line 2438
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2438,r13		! source line 2438
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2809 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2812 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2811 = *_temp_2812  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2810 = _temp_2811 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2809 = _temp_2810  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2439,r13		! source line 2439
	mov	"\0\0SE",r10
!   _temp_2813 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Send message Unlock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2440,r13		! source line 2440
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2806:
!   Increment the FOR-LOOP index variable and jump back
_Label_2799:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2797
! END FOR
_Label_2800:
! WHILE STATEMENT...
	mov	2445,r13		! source line 2445
	mov	"\0\0WH",r10
_Label_2814:
	mov	2445,r13		! source line 2445
	mov	"\0\0SE",r10
!   _temp_2817 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2815 else goto _Label_2816
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2816
	jmp	_Label_2815
_Label_2815:
	mov	2445,r13		! source line 2445
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2446,r13		! source line 2446
	mov	"\0\0SE",r10
!   _temp_2818 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2819 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2818  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2814
_Label_2816:
! ASSIGNMENT STATEMENT...
	mov	2448,r13		! source line 2448
	mov	"\0\0AS",r10
	mov	2448,r13		! source line 2448
	mov	"\0\0SE",r10
!   _temp_2820 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! SEND STATEMENT...
	mov	2451,r13		! source line 2451
	mov	"\0\0SE",r10
!   _temp_2821 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2454,r13		! source line 2454
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2822 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2822 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2455,r13		! source line 2455
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2823 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2823 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2456,r13		! source line 2456
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2824 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2824 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2457,r13		! source line 2457
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2829 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2828 = *_temp_2829  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2828 < 0 then goto _Label_2827		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2827
	jmp	_Label_2825
_Label_2827:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2830 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2830 ) then goto _Label_2826		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2826
!	jmp	_Label_2825
_Label_2825:
! THEN...
	mov	2458,r13		! source line 2458
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2831 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2831  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2458,r13		! source line 2458
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2826:
! RETURN STATEMENT...
	mov	2460,r13		! source line 2460
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_4:
	.word	_sourceFileName
	.word	_Label_2832
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2833
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2834
	.word	12
	.word	4
	.word	_Label_2835
	.word	-12
	.word	4
	.word	_Label_2836
	.word	-16
	.word	4
	.word	_Label_2837
	.word	-20
	.word	4
	.word	_Label_2838
	.word	-24
	.word	4
	.word	_Label_2839
	.word	-28
	.word	4
	.word	_Label_2840
	.word	-32
	.word	4
	.word	_Label_2841
	.word	-36
	.word	4
	.word	_Label_2842
	.word	-40
	.word	4
	.word	_Label_2843
	.word	-44
	.word	4
	.word	_Label_2844
	.word	-48
	.word	4
	.word	_Label_2845
	.word	-52
	.word	4
	.word	_Label_2846
	.word	-56
	.word	4
	.word	_Label_2847
	.word	-60
	.word	4
	.word	_Label_2848
	.word	-64
	.word	4
	.word	_Label_2849
	.word	-68
	.word	4
	.word	_Label_2850
	.word	-72
	.word	4
	.word	_Label_2851
	.word	-76
	.word	4
	.word	_Label_2852
	.word	-80
	.word	4
	.word	_Label_2853
	.word	-84
	.word	4
	.word	_Label_2854
	.word	-88
	.word	4
	.word	_Label_2855
	.word	-92
	.word	4
	.word	_Label_2856
	.word	-96
	.word	4
	.word	_Label_2857
	.word	-100
	.word	4
	.word	_Label_2858
	.word	-104
	.word	4
	.word	_Label_2859
	.word	-108
	.word	4
	.word	_Label_2860
	.word	-112
	.word	4
	.word	_Label_2861
	.word	-116
	.word	4
	.word	_Label_2862
	.word	-120
	.word	4
	.word	_Label_2863
	.word	-124
	.word	4
	.word	_Label_2864
	.word	-128
	.word	4
	.word	_Label_2865
	.word	-132
	.word	4
	.word	_Label_2866
	.word	-136
	.word	4
	.word	_Label_2867
	.word	-140
	.word	4
	.word	_Label_2868
	.word	-144
	.word	4
	.word	_Label_2869
	.word	-148
	.word	4
	.word	_Label_2870
	.word	-152
	.word	4
	.word	_Label_2871
	.word	-156
	.word	4
	.word	_Label_2872
	.word	-160
	.word	4
	.word	0
_Label_2832:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2833:
	.ascii	"Pself\0"
	.align
_Label_2834:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2835:
	.byte	'?'
	.ascii	"_temp_2831\0"
	.align
_Label_2836:
	.byte	'?'
	.ascii	"_temp_2830\0"
	.align
_Label_2837:
	.byte	'?'
	.ascii	"_temp_2829\0"
	.align
_Label_2838:
	.byte	'?'
	.ascii	"_temp_2828\0"
	.align
_Label_2839:
	.byte	'?'
	.ascii	"_temp_2824\0"
	.align
_Label_2840:
	.byte	'?'
	.ascii	"_temp_2823\0"
	.align
_Label_2841:
	.byte	'?'
	.ascii	"_temp_2822\0"
	.align
_Label_2842:
	.byte	'?'
	.ascii	"_temp_2821\0"
	.align
_Label_2843:
	.byte	'?'
	.ascii	"_temp_2820\0"
	.align
_Label_2844:
	.byte	'?'
	.ascii	"_temp_2819\0"
	.align
_Label_2845:
	.byte	'?'
	.ascii	"_temp_2818\0"
	.align
_Label_2846:
	.byte	'?'
	.ascii	"_temp_2817\0"
	.align
_Label_2847:
	.byte	'?'
	.ascii	"_temp_2813\0"
	.align
_Label_2848:
	.byte	'?'
	.ascii	"_temp_2812\0"
	.align
_Label_2849:
	.byte	'?'
	.ascii	"_temp_2811\0"
	.align
_Label_2850:
	.byte	'?'
	.ascii	"_temp_2810\0"
	.align
_Label_2851:
	.byte	'?'
	.ascii	"_temp_2809\0"
	.align
_Label_2852:
	.byte	'?'
	.ascii	"_temp_2808\0"
	.align
_Label_2853:
	.byte	'?'
	.ascii	"_temp_2807\0"
	.align
_Label_2854:
	.byte	'?'
	.ascii	"_temp_2804\0"
	.align
_Label_2855:
	.byte	'?'
	.ascii	"_temp_2803\0"
	.align
_Label_2856:
	.byte	'?'
	.ascii	"_temp_2802\0"
	.align
_Label_2857:
	.byte	'?'
	.ascii	"_temp_2801\0"
	.align
_Label_2858:
	.byte	'?'
	.ascii	"_temp_2796\0"
	.align
_Label_2859:
	.byte	'?'
	.ascii	"_temp_2793\0"
	.align
_Label_2860:
	.byte	'?'
	.ascii	"_temp_2792\0"
	.align
_Label_2861:
	.byte	'?'
	.ascii	"_temp_2791\0"
	.align
_Label_2862:
	.byte	'?'
	.ascii	"_temp_2787\0"
	.align
_Label_2863:
	.byte	'?'
	.ascii	"_temp_2786\0"
	.align
_Label_2864:
	.byte	'?'
	.ascii	"_temp_2785\0"
	.align
_Label_2865:
	.byte	'?'
	.ascii	"_temp_2781\0"
	.align
_Label_2866:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2867:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2868:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2869:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2870:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2871:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2872:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD Close  ===============
! 
_Method_P_Kernel_FileManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_5,r1
	push	r1
	mov	26,r1
_Label_3510:
	push	r0
	sub	r1,1,r1
	bne	_Label_3510
	mov	2473,r13		! source line 2473
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2475,r13		! source line 2475
	mov	"\0\0IF",r10
!   _temp_2875 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2875 then goto _Label_2874		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2874
!	jmp	_Label_2873
_Label_2873:
! THEN...
	mov	2476,r13		! source line 2476
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2476,r13		! source line 2476
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2874:
! SEND STATEMENT...
	mov	2478,r13		! source line 2478
	mov	"\0\0SE",r10
!   _temp_2876 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Send message Lock
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2479,r13		! source line 2479
	mov	"\0\0SE",r10
!   _temp_2877 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2480,r13		! source line 2480
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2878 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2878  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2481,r13		! source line 2481
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2879 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2882 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2881 = *_temp_2882  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2880 = _temp_2881 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2879 = _temp_2880  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2482,r13		! source line 2482
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2886 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2885 = *_temp_2886  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2885 > 0 then goto _Label_2884		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2884
!	jmp	_Label_2883
_Label_2883:
! THEN...
	mov	2483,r13		! source line 2483
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2483,r13		! source line 2483
	mov	"\0\0SE",r10
!   _temp_2887 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2484,r13		! source line 2484
	mov	"\0\0SE",r10
!   _temp_2888 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2889 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2888  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2485,r13		! source line 2485
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2890 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2893 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2892 = *_temp_2893  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2891 = _temp_2892 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2890 = _temp_2891  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2486,r13		! source line 2486
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2897 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2896 = *_temp_2897  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2896 > 0 then goto _Label_2895		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2895
!	jmp	_Label_2894
_Label_2894:
! THEN...
	mov	2487,r13		! source line 2487
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2487,r13		! source line 2487
	mov	"\0\0SE",r10
!   _temp_2898 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=fcb  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2488,r13		! source line 2488
	mov	"\0\0SE",r10
!   _temp_2899 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2900 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2899  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_2895:
! END IF...
_Label_2884:
! SEND STATEMENT...
	mov	2491,r13		! source line 2491
	mov	"\0\0SE",r10
!   _temp_2901 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2491,r13		! source line 2491
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_5:
	.word	_sourceFileName
	.word	_Label_2902
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2903
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2904
	.word	12
	.word	4
	.word	_Label_2905
	.word	-12
	.word	4
	.word	_Label_2906
	.word	-16
	.word	4
	.word	_Label_2907
	.word	-20
	.word	4
	.word	_Label_2908
	.word	-24
	.word	4
	.word	_Label_2909
	.word	-28
	.word	4
	.word	_Label_2910
	.word	-32
	.word	4
	.word	_Label_2911
	.word	-36
	.word	4
	.word	_Label_2912
	.word	-40
	.word	4
	.word	_Label_2913
	.word	-44
	.word	4
	.word	_Label_2914
	.word	-48
	.word	4
	.word	_Label_2915
	.word	-52
	.word	4
	.word	_Label_2916
	.word	-56
	.word	4
	.word	_Label_2917
	.word	-60
	.word	4
	.word	_Label_2918
	.word	-64
	.word	4
	.word	_Label_2919
	.word	-68
	.word	4
	.word	_Label_2920
	.word	-72
	.word	4
	.word	_Label_2921
	.word	-76
	.word	4
	.word	_Label_2922
	.word	-80
	.word	4
	.word	_Label_2923
	.word	-84
	.word	4
	.word	_Label_2924
	.word	-88
	.word	4
	.word	_Label_2925
	.word	-92
	.word	4
	.word	_Label_2926
	.word	-96
	.word	4
	.word	_Label_2927
	.word	-100
	.word	4
	.word	_Label_2928
	.word	-104
	.word	4
	.word	0
_Label_2902:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2903:
	.ascii	"Pself\0"
	.align
_Label_2904:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2905:
	.byte	'?'
	.ascii	"_temp_2901\0"
	.align
_Label_2906:
	.byte	'?'
	.ascii	"_temp_2900\0"
	.align
_Label_2907:
	.byte	'?'
	.ascii	"_temp_2899\0"
	.align
_Label_2908:
	.byte	'?'
	.ascii	"_temp_2898\0"
	.align
_Label_2909:
	.byte	'?'
	.ascii	"_temp_2897\0"
	.align
_Label_2910:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_2911:
	.byte	'?'
	.ascii	"_temp_2893\0"
	.align
_Label_2912:
	.byte	'?'
	.ascii	"_temp_2892\0"
	.align
_Label_2913:
	.byte	'?'
	.ascii	"_temp_2891\0"
	.align
_Label_2914:
	.byte	'?'
	.ascii	"_temp_2890\0"
	.align
_Label_2915:
	.byte	'?'
	.ascii	"_temp_2889\0"
	.align
_Label_2916:
	.byte	'?'
	.ascii	"_temp_2888\0"
	.align
_Label_2917:
	.byte	'?'
	.ascii	"_temp_2887\0"
	.align
_Label_2918:
	.byte	'?'
	.ascii	"_temp_2886\0"
	.align
_Label_2919:
	.byte	'?'
	.ascii	"_temp_2885\0"
	.align
_Label_2920:
	.byte	'?'
	.ascii	"_temp_2882\0"
	.align
_Label_2921:
	.byte	'?'
	.ascii	"_temp_2881\0"
	.align
_Label_2922:
	.byte	'?'
	.ascii	"_temp_2880\0"
	.align
_Label_2923:
	.byte	'?'
	.ascii	"_temp_2879\0"
	.align
_Label_2924:
	.byte	'?'
	.ascii	"_temp_2878\0"
	.align
_Label_2925:
	.byte	'?'
	.ascii	"_temp_2877\0"
	.align
_Label_2926:
	.byte	'?'
	.ascii	"_temp_2876\0"
	.align
_Label_2927:
	.byte	'?'
	.ascii	"_temp_2875\0"
	.align
_Label_2928:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD Flush  ===============
! 
_Method_P_Kernel_FileManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_6,r1
	push	r1
	mov	29,r1
_Label_3511:
	push	r0
	sub	r1,1,r1
	bne	_Label_3511
	mov	2496,r13		! source line 2496
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2501,r13		! source line 2501
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2932 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2931 = *_temp_2932  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2931) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2933 = _temp_2931 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2933 ) then goto _Label_2930		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2930
!	jmp	_Label_2929
_Label_2929:
! THEN...
	mov	2502,r13		! source line 2502
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2502,r13		! source line 2502
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2938 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2937 = *_temp_2938  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2937) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2939 = _temp_2937 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2936 = *_temp_2939  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2936 >= 0 then goto _Label_2935		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2935
!	jmp	_Label_2934
_Label_2934:
! THEN...
	mov	2503,r13		! source line 2503
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2940 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2940  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2503,r13		! source line 2503
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2935:
! ASSIGNMENT STATEMENT...
	mov	2505,r13		! source line 2505
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2942 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2941 = *_temp_2942  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2941) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2943 = _temp_2941 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2943 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2506,r13		! source line 2506
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2947 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2946 = *_temp_2947  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2946) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2948 = _temp_2946 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2945 = *_temp_2948  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2951 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2950 = *_temp_2951  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2950) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2952 = _temp_2950 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2949 = *_temp_2952  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2944 = _temp_2945 + _temp_2949		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2955 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2954 = *_temp_2955  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2954) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2956 = _temp_2954 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2953 = *_temp_2956  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2957 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2944  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2953  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Send message SynchWriteSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_2930:
! RETURN STATEMENT...
	mov	2501,r13		! source line 2501
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_2958
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2959
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2960
	.word	12
	.word	4
	.word	_Label_2961
	.word	-12
	.word	4
	.word	_Label_2962
	.word	-16
	.word	4
	.word	_Label_2963
	.word	-20
	.word	4
	.word	_Label_2964
	.word	-24
	.word	4
	.word	_Label_2965
	.word	-28
	.word	4
	.word	_Label_2966
	.word	-32
	.word	4
	.word	_Label_2967
	.word	-36
	.word	4
	.word	_Label_2968
	.word	-40
	.word	4
	.word	_Label_2969
	.word	-44
	.word	4
	.word	_Label_2970
	.word	-48
	.word	4
	.word	_Label_2971
	.word	-52
	.word	4
	.word	_Label_2972
	.word	-56
	.word	4
	.word	_Label_2973
	.word	-60
	.word	4
	.word	_Label_2974
	.word	-64
	.word	4
	.word	_Label_2975
	.word	-68
	.word	4
	.word	_Label_2976
	.word	-72
	.word	4
	.word	_Label_2977
	.word	-76
	.word	4
	.word	_Label_2978
	.word	-80
	.word	4
	.word	_Label_2979
	.word	-84
	.word	4
	.word	_Label_2980
	.word	-88
	.word	4
	.word	_Label_2981
	.word	-92
	.word	4
	.word	_Label_2982
	.word	-96
	.word	4
	.word	_Label_2983
	.word	-100
	.word	4
	.word	_Label_2984
	.word	-104
	.word	4
	.word	_Label_2985
	.word	-108
	.word	4
	.word	0
_Label_2958:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2959:
	.ascii	"Pself\0"
	.align
_Label_2960:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2961:
	.byte	'?'
	.ascii	"_temp_2957\0"
	.align
_Label_2962:
	.byte	'?'
	.ascii	"_temp_2956\0"
	.align
_Label_2963:
	.byte	'?'
	.ascii	"_temp_2955\0"
	.align
_Label_2964:
	.byte	'?'
	.ascii	"_temp_2954\0"
	.align
_Label_2965:
	.byte	'?'
	.ascii	"_temp_2953\0"
	.align
_Label_2966:
	.byte	'?'
	.ascii	"_temp_2952\0"
	.align
_Label_2967:
	.byte	'?'
	.ascii	"_temp_2951\0"
	.align
_Label_2968:
	.byte	'?'
	.ascii	"_temp_2950\0"
	.align
_Label_2969:
	.byte	'?'
	.ascii	"_temp_2949\0"
	.align
_Label_2970:
	.byte	'?'
	.ascii	"_temp_2948\0"
	.align
_Label_2971:
	.byte	'?'
	.ascii	"_temp_2947\0"
	.align
_Label_2972:
	.byte	'?'
	.ascii	"_temp_2946\0"
	.align
_Label_2973:
	.byte	'?'
	.ascii	"_temp_2945\0"
	.align
_Label_2974:
	.byte	'?'
	.ascii	"_temp_2944\0"
	.align
_Label_2975:
	.byte	'?'
	.ascii	"_temp_2943\0"
	.align
_Label_2976:
	.byte	'?'
	.ascii	"_temp_2942\0"
	.align
_Label_2977:
	.byte	'?'
	.ascii	"_temp_2941\0"
	.align
_Label_2978:
	.byte	'?'
	.ascii	"_temp_2940\0"
	.align
_Label_2979:
	.byte	'?'
	.ascii	"_temp_2939\0"
	.align
_Label_2980:
	.byte	'?'
	.ascii	"_temp_2938\0"
	.align
_Label_2981:
	.byte	'?'
	.ascii	"_temp_2937\0"
	.align
_Label_2982:
	.byte	'?'
	.ascii	"_temp_2936\0"
	.align
_Label_2983:
	.byte	'?'
	.ascii	"_temp_2933\0"
	.align
_Label_2984:
	.byte	'?'
	.ascii	"_temp_2932\0"
	.align
_Label_2985:
	.byte	'?'
	.ascii	"_temp_2931\0"
	.align
! 
! ===============  METHOD SynchRead  ===============
! 
_Method_P_Kernel_FileManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_7,r1
	push	r1
	mov	34,r1
_Label_3512:
	push	r0
	sub	r1,1,r1
	bne	_Label_3512
	mov	2515,r13		! source line 2515
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2530,r13		! source line 2530
	mov	"\0\0SE",r10
!   _temp_2986 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Send message Lock
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2531,r13		! source line 2531
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2992		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2992
!   _temp_2991 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2993
_Label_2992:
!   _temp_2991 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2993:
!   if _temp_2991 then goto _Label_2990 else goto _Label_2987
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2987
	jmp	_Label_2990
_Label_2990:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2996 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2995 = *_temp_2996  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2995 == 0 then goto _Label_2997		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2997
!   _temp_2994 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2998
_Label_2997:
!   _temp_2994 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2998:
!   if _temp_2994 then goto _Label_2989 else goto _Label_2987
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2987
	jmp	_Label_2989
_Label_2989:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3001 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3000 = *_temp_3001  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3000) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3002 = _temp_3000 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2999 = *_temp_3002  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2999 >= 0 then goto _Label_2988		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2988
!	jmp	_Label_2987
_Label_2987:
! THEN...
	mov	2532,r13		! source line 2532
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3003 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3003  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2532,r13		! source line 2532
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2988:
! ASSIGNMENT STATEMENT...
	mov	2534,r13		! source line 2534
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3004 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3004  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2535,r13		! source line 2535
	mov	"\0\0WH",r10
_Label_3005:
!   if numBytes <= 0 then goto _Label_3007		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3007
!	jmp	_Label_3006
_Label_3006:
	mov	2535,r13		! source line 2535
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2544,r13		! source line 2544
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	2545,r13		! source line 2545
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2549,r13		! source line 2549
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3011 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3010 = *_temp_3011  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3010 == sector then goto _Label_3009		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3009
!	jmp	_Label_3008
_Label_3008:
! THEN...
	mov	2550,r13		! source line 2550
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2550,r13		! source line 2550
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3012) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	2552,r13		! source line 2552
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3015 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3014 = *_temp_3015  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3013 = sector + _temp_3014		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3017 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3016 = *_temp_3017  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3018 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3013  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3016  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2555,r13		! source line 2555
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3019 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3019 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2556,r13		! source line 2556
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3020 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3020 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3009:
! ASSIGNMENT STATEMENT...
	mov	2558,r13		! source line 2558
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3022 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3021 = *_temp_3022  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3021 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2559,r13		! source line 2559
	mov	"\0\0AS",r10
!   _temp_3023 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3023  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2559,r13		! source line 2559
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=targetAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=posInBuffer  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Call the function
	mov	2563,r13		! source line 2563
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2564,r13		! source line 2564
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2565,r13		! source line 2565
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2566,r13		! source line 2566
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3005
_Label_3007:
! SEND STATEMENT...
	mov	2573,r13		! source line 2573
	mov	"\0\0SE",r10
!   _temp_3024 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2574,r13		! source line 2574
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_7:
	.word	_sourceFileName
	.word	_Label_3025
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3026
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3027
	.word	12
	.word	4
	.word	_Label_3028
	.word	16
	.word	4
	.word	_Label_3029
	.word	20
	.word	4
	.word	_Label_3030
	.word	24
	.word	4
	.word	_Label_3031
	.word	-16
	.word	4
	.word	_Label_3032
	.word	-20
	.word	4
	.word	_Label_3033
	.word	-24
	.word	4
	.word	_Label_3034
	.word	-28
	.word	4
	.word	_Label_3035
	.word	-32
	.word	4
	.word	_Label_3036
	.word	-36
	.word	4
	.word	_Label_3037
	.word	-40
	.word	4
	.word	_Label_3038
	.word	-44
	.word	4
	.word	_Label_3039
	.word	-48
	.word	4
	.word	_Label_3040
	.word	-52
	.word	4
	.word	_Label_3041
	.word	-56
	.word	4
	.word	_Label_3042
	.word	-60
	.word	4
	.word	_Label_3043
	.word	-64
	.word	4
	.word	_Label_3044
	.word	-68
	.word	4
	.word	_Label_3045
	.word	-72
	.word	4
	.word	_Label_3046
	.word	-76
	.word	4
	.word	_Label_3047
	.word	-80
	.word	4
	.word	_Label_3048
	.word	-84
	.word	4
	.word	_Label_3049
	.word	-88
	.word	4
	.word	_Label_3050
	.word	-92
	.word	4
	.word	_Label_3051
	.word	-96
	.word	4
	.word	_Label_3052
	.word	-100
	.word	4
	.word	_Label_3053
	.word	-104
	.word	4
	.word	_Label_3054
	.word	-9
	.word	1
	.word	_Label_3055
	.word	-10
	.word	1
	.word	_Label_3056
	.word	-108
	.word	4
	.word	_Label_3057
	.word	-112
	.word	4
	.word	_Label_3058
	.word	-116
	.word	4
	.word	_Label_3059
	.word	-120
	.word	4
	.word	_Label_3060
	.word	-124
	.word	4
	.word	_Label_3061
	.word	-128
	.word	4
	.word	0
_Label_3025:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3026:
	.ascii	"Pself\0"
	.align
_Label_3027:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3028:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3029:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3030:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3031:
	.byte	'?'
	.ascii	"_temp_3024\0"
	.align
_Label_3032:
	.byte	'?'
	.ascii	"_temp_3023\0"
	.align
_Label_3033:
	.byte	'?'
	.ascii	"_temp_3022\0"
	.align
_Label_3034:
	.byte	'?'
	.ascii	"_temp_3021\0"
	.align
_Label_3035:
	.byte	'?'
	.ascii	"_temp_3020\0"
	.align
_Label_3036:
	.byte	'?'
	.ascii	"_temp_3019\0"
	.align
_Label_3037:
	.byte	'?'
	.ascii	"_temp_3018\0"
	.align
_Label_3038:
	.byte	'?'
	.ascii	"_temp_3017\0"
	.align
_Label_3039:
	.byte	'?'
	.ascii	"_temp_3016\0"
	.align
_Label_3040:
	.byte	'?'
	.ascii	"_temp_3015\0"
	.align
_Label_3041:
	.byte	'?'
	.ascii	"_temp_3014\0"
	.align
_Label_3042:
	.byte	'?'
	.ascii	"_temp_3013\0"
	.align
_Label_3043:
	.byte	'?'
	.ascii	"_temp_3012\0"
	.align
_Label_3044:
	.byte	'?'
	.ascii	"_temp_3011\0"
	.align
_Label_3045:
	.byte	'?'
	.ascii	"_temp_3010\0"
	.align
_Label_3046:
	.byte	'?'
	.ascii	"_temp_3004\0"
	.align
_Label_3047:
	.byte	'?'
	.ascii	"_temp_3003\0"
	.align
_Label_3048:
	.byte	'?'
	.ascii	"_temp_3002\0"
	.align
_Label_3049:
	.byte	'?'
	.ascii	"_temp_3001\0"
	.align
_Label_3050:
	.byte	'?'
	.ascii	"_temp_3000\0"
	.align
_Label_3051:
	.byte	'?'
	.ascii	"_temp_2999\0"
	.align
_Label_3052:
	.byte	'?'
	.ascii	"_temp_2996\0"
	.align
_Label_3053:
	.byte	'?'
	.ascii	"_temp_2995\0"
	.align
_Label_3054:
	.byte	'C'
	.ascii	"_temp_2994\0"
	.align
_Label_3055:
	.byte	'C'
	.ascii	"_temp_2991\0"
	.align
_Label_3056:
	.byte	'?'
	.ascii	"_temp_2986\0"
	.align
_Label_3057:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3058:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3059:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3060:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3061:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD SynchWrite  ===============
! 
_Method_P_Kernel_FileManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_8,r1
	push	r1
	mov	36,r1
_Label_3513:
	push	r0
	sub	r1,1,r1
	bne	_Label_3513
	mov	2579,r13		! source line 2579
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2595,r13		! source line 2595
	mov	"\0\0SE",r10
!   _temp_3062 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Send message Lock
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2596,r13		! source line 2596
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3068		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3068
!   _temp_3067 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3069
_Label_3068:
!   _temp_3067 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3069:
!   if _temp_3067 then goto _Label_3066 else goto _Label_3063
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3063
	jmp	_Label_3066
_Label_3066:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3072 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3071 = *_temp_3072  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3071 == 0 then goto _Label_3073		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3073
!   _temp_3070 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3074
_Label_3073:
!   _temp_3070 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3074:
!   if _temp_3070 then goto _Label_3065 else goto _Label_3063
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3063
	jmp	_Label_3065
_Label_3065:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3077 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3076 = *_temp_3077  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3076) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3078 = _temp_3076 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3075 = *_temp_3078  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3075 >= 0 then goto _Label_3064		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3064
!	jmp	_Label_3063
_Label_3063:
! THEN...
	mov	2597,r13		! source line 2597
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3079 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3079  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2597,r13		! source line 2597
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3064:
! ASSIGNMENT STATEMENT...
	mov	2599,r13		! source line 2599
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3080 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3080  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2600,r13		! source line 2600
	mov	"\0\0WH",r10
_Label_3081:
!   if numBytes <= 0 then goto _Label_3083		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3083
!	jmp	_Label_3082
_Label_3082:
	mov	2600,r13		! source line 2600
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2609,r13		! source line 2609
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2610,r13		! source line 2610
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	2614,r13		! source line 2614
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3087 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3086 = *_temp_3087  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3086 == sector then goto _Label_3085		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3085
!	jmp	_Label_3084
_Label_3084:
! THEN...
	mov	2616,r13		! source line 2616
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2616,r13		! source line 2616
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3088) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! END IF...
_Label_3085:
! ASSIGNMENT STATEMENT...
	mov	2618,r13		! source line 2618
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3090 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3089 = *_temp_3090  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3089 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2619,r13		! source line 2619
	mov	"\0\0AS",r10
!   _temp_3091 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3091  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2619,r13		! source line 2619
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2620,r13		! source line 2620
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3095 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3094 = *_temp_3095  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3094 != sector then goto _Label_3093		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3093
!	jmp	_Label_3092
_Label_3092:
	jmp	_Label_3096
_Label_3093:
! ELSE...
	mov	2622,r13		! source line 2622
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2622,r13		! source line 2622
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3099
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3099
	jmp	_Label_3098
_Label_3099:
!   if bytesToMove != 8192 then goto _Label_3098		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3098
!	jmp	_Label_3097
_Label_3097:
	jmp	_Label_3100
_Label_3098:
! ELSE...
	mov	2626,r13		! source line 2626
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2626,r13		! source line 2626
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3103 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3102 = *_temp_3103  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3101 = sector + _temp_3102		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3105 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3104 = *_temp_3105  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3106 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3101  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3104  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_3100:
! END IF...
_Label_3096:
! ASSIGNMENT STATEMENT...
	mov	2630,r13		! source line 2630
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3107 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3107 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2631,r13		! source line 2631
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3108 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3108 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=posInBuffer  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sourceAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+8]
!   Call the function
	mov	2635,r13		! source line 2635
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2636,r13		! source line 2636
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2637,r13		! source line 2637
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2638,r13		! source line 2638
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3081
_Label_3083:
! SEND STATEMENT...
	mov	2645,r13		! source line 2645
	mov	"\0\0SE",r10
!   _temp_3109 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2647,r13		! source line 2647
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_8:
	.word	_sourceFileName
	.word	_Label_3110
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3111
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3112
	.word	12
	.word	4
	.word	_Label_3113
	.word	16
	.word	4
	.word	_Label_3114
	.word	20
	.word	4
	.word	_Label_3115
	.word	24
	.word	4
	.word	_Label_3116
	.word	-16
	.word	4
	.word	_Label_3117
	.word	-20
	.word	4
	.word	_Label_3118
	.word	-24
	.word	4
	.word	_Label_3119
	.word	-28
	.word	4
	.word	_Label_3120
	.word	-32
	.word	4
	.word	_Label_3121
	.word	-36
	.word	4
	.word	_Label_3122
	.word	-40
	.word	4
	.word	_Label_3123
	.word	-44
	.word	4
	.word	_Label_3124
	.word	-48
	.word	4
	.word	_Label_3125
	.word	-52
	.word	4
	.word	_Label_3126
	.word	-56
	.word	4
	.word	_Label_3127
	.word	-60
	.word	4
	.word	_Label_3128
	.word	-64
	.word	4
	.word	_Label_3129
	.word	-68
	.word	4
	.word	_Label_3130
	.word	-72
	.word	4
	.word	_Label_3131
	.word	-76
	.word	4
	.word	_Label_3132
	.word	-80
	.word	4
	.word	_Label_3133
	.word	-84
	.word	4
	.word	_Label_3134
	.word	-88
	.word	4
	.word	_Label_3135
	.word	-92
	.word	4
	.word	_Label_3136
	.word	-96
	.word	4
	.word	_Label_3137
	.word	-100
	.word	4
	.word	_Label_3138
	.word	-104
	.word	4
	.word	_Label_3139
	.word	-108
	.word	4
	.word	_Label_3140
	.word	-112
	.word	4
	.word	_Label_3141
	.word	-9
	.word	1
	.word	_Label_3142
	.word	-10
	.word	1
	.word	_Label_3143
	.word	-116
	.word	4
	.word	_Label_3144
	.word	-120
	.word	4
	.word	_Label_3145
	.word	-124
	.word	4
	.word	_Label_3146
	.word	-128
	.word	4
	.word	_Label_3147
	.word	-132
	.word	4
	.word	_Label_3148
	.word	-136
	.word	4
	.word	0
_Label_3110:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3111:
	.ascii	"Pself\0"
	.align
_Label_3112:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3113:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3114:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3115:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3116:
	.byte	'?'
	.ascii	"_temp_3109\0"
	.align
_Label_3117:
	.byte	'?'
	.ascii	"_temp_3108\0"
	.align
_Label_3118:
	.byte	'?'
	.ascii	"_temp_3107\0"
	.align
_Label_3119:
	.byte	'?'
	.ascii	"_temp_3106\0"
	.align
_Label_3120:
	.byte	'?'
	.ascii	"_temp_3105\0"
	.align
_Label_3121:
	.byte	'?'
	.ascii	"_temp_3104\0"
	.align
_Label_3122:
	.byte	'?'
	.ascii	"_temp_3103\0"
	.align
_Label_3123:
	.byte	'?'
	.ascii	"_temp_3102\0"
	.align
_Label_3124:
	.byte	'?'
	.ascii	"_temp_3101\0"
	.align
_Label_3125:
	.byte	'?'
	.ascii	"_temp_3095\0"
	.align
_Label_3126:
	.byte	'?'
	.ascii	"_temp_3094\0"
	.align
_Label_3127:
	.byte	'?'
	.ascii	"_temp_3091\0"
	.align
_Label_3128:
	.byte	'?'
	.ascii	"_temp_3090\0"
	.align
_Label_3129:
	.byte	'?'
	.ascii	"_temp_3089\0"
	.align
_Label_3130:
	.byte	'?'
	.ascii	"_temp_3088\0"
	.align
_Label_3131:
	.byte	'?'
	.ascii	"_temp_3087\0"
	.align
_Label_3132:
	.byte	'?'
	.ascii	"_temp_3086\0"
	.align
_Label_3133:
	.byte	'?'
	.ascii	"_temp_3080\0"
	.align
_Label_3134:
	.byte	'?'
	.ascii	"_temp_3079\0"
	.align
_Label_3135:
	.byte	'?'
	.ascii	"_temp_3078\0"
	.align
_Label_3136:
	.byte	'?'
	.ascii	"_temp_3077\0"
	.align
_Label_3137:
	.byte	'?'
	.ascii	"_temp_3076\0"
	.align
_Label_3138:
	.byte	'?'
	.ascii	"_temp_3075\0"
	.align
_Label_3139:
	.byte	'?'
	.ascii	"_temp_3072\0"
	.align
_Label_3140:
	.byte	'?'
	.ascii	"_temp_3071\0"
	.align
_Label_3141:
	.byte	'C'
	.ascii	"_temp_3070\0"
	.align
_Label_3142:
	.byte	'C'
	.ascii	"_temp_3067\0"
	.align
_Label_3143:
	.byte	'?'
	.ascii	"_temp_3062\0"
	.align
_Label_3144:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3145:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3146:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3147:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3148:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3149
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3149:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3150
	.word	_sourceFileName
	.word	355		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3150:
	.ascii	"FileControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1,r1
	push	r1
	mov	2,r1
_Label_3514:
	push	r0
	sub	r1,1,r1
	bne	_Label_3514
	mov	2683,r13		! source line 2683
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2684,r13		! source line 2684
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2685,r13		! source line 2685
	mov	"\0\0AS",r10
	mov	2685,r13		! source line 2685
	mov	"\0\0SE",r10
!   _temp_3151 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message GetAFrame
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bufferPtr  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+28]
! ASSIGNMENT STATEMENT...
	mov	2686,r13		! source line 2686
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2687,r13		! source line 2687
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2688,r13		! source line 2688
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2688,r13		! source line 2688
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1:
	.word	_sourceFileName
	.word	_Label_3152
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3153
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3154
	.word	-12
	.word	4
	.word	0
_Label_3152:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3153:
	.ascii	"Pself\0"
	.align
_Label_3154:
	.byte	'?'
	.ascii	"_temp_3151\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2,r1
	push	r1
	mov	7,r1
_Label_3515:
	push	r0
	sub	r1,1,r1
	bne	_Label_3515
	mov	2693,r13		! source line 2693
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3155 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3155  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2694,r13		! source line 2694
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2695,r13		! source line 2695
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3156 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3156  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2696,r13		! source line 2696
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2697,r13		! source line 2697
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3157 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3157  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2698,r13		! source line 2698
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2699,r13		! source line 2699
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3158 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3158  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2700,r13		! source line 2700
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2701,r13		! source line 2701
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3159 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3159  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2702,r13		! source line 2702
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2703,r13		! source line 2703
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3160 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3160  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2704,r13		! source line 2704
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2705,r13		! source line 2705
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2706,r13		! source line 2706
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2706,r13		! source line 2706
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2:
	.word	_sourceFileName
	.word	_Label_3161
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3162
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3163
	.word	-12
	.word	4
	.word	_Label_3164
	.word	-16
	.word	4
	.word	_Label_3165
	.word	-20
	.word	4
	.word	_Label_3166
	.word	-24
	.word	4
	.word	_Label_3167
	.word	-28
	.word	4
	.word	_Label_3168
	.word	-32
	.word	4
	.word	0
_Label_3161:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3162:
	.ascii	"Pself\0"
	.align
_Label_3163:
	.byte	'?'
	.ascii	"_temp_3160\0"
	.align
_Label_3164:
	.byte	'?'
	.ascii	"_temp_3159\0"
	.align
_Label_3165:
	.byte	'?'
	.ascii	"_temp_3158\0"
	.align
_Label_3166:
	.byte	'?'
	.ascii	"_temp_3157\0"
	.align
_Label_3167:
	.byte	'?'
	.ascii	"_temp_3156\0"
	.align
_Label_3168:
	.byte	'?'
	.ascii	"_temp_3155\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3169
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3169:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3170
	.word	_sourceFileName
	.word	372		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3170:
	.ascii	"OpenFile\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_OpenFile_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_1,r1
	push	r1
	mov	4,r1
_Label_3516:
	push	r0
	sub	r1,1,r1
	bne	_Label_3516
	mov	2717,r13		! source line 2717
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3171 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3171  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2718,r13		! source line 2718
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2719,r13		! source line 2719
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3172 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3172  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2720,r13		! source line 2720
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2721,r13		! source line 2721
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3174		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3174
!	jmp	_Label_3173
_Label_3173:
! THEN...
	mov	2722,r13		! source line 2722
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2722,r13		! source line 2722
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1+20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_3175
_Label_3174:
! ELSE...
	mov	2724,r13		! source line 2724
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3176 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3176  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2724,r13		! source line 2724
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3175:
! RETURN STATEMENT...
	mov	2721,r13		! source line 2721
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_1:
	.word	_sourceFileName
	.word	_Label_3177
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3178
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3179
	.word	-12
	.word	4
	.word	_Label_3180
	.word	-16
	.word	4
	.word	_Label_3181
	.word	-20
	.word	4
	.word	0
_Label_3177:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3178:
	.ascii	"Pself\0"
	.align
_Label_3179:
	.byte	'?'
	.ascii	"_temp_3176\0"
	.align
_Label_3180:
	.byte	'?'
	.ascii	"_temp_3172\0"
	.align
_Label_3181:
	.byte	'?'
	.ascii	"_temp_3171\0"
	.align
! 
! ===============  METHOD ReadBytes  ===============
! 
_Method_P_Kernel_OpenFile_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_2,r1
	push	r1
	mov	13,r1
_Label_3517:
	push	r0
	sub	r1,1,r1
	bne	_Label_3517
	mov	2730,r13		! source line 2730
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2740,r13		! source line 2740
	mov	"\0\0SE",r10
!   _temp_3182 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3183 = _temp_3182 + 4
	load	[r14+-36],r1
	add	r1,4,r1
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
	mov	2741,r13		! source line 2741
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2742,r13		! source line 2742
	mov	"\0\0AS",r10
!   currentPos = currentPos + numBytes		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	2743,r13		! source line 2743
	mov	"\0\0SE",r10
!   _temp_3184 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3185 = _temp_3184 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2744,r13		! source line 2744
	mov	"\0\0RE",r10
	mov	2744,r13		! source line 2744
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3188 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3187  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=targetAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=pos  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=numBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_3186  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3186  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_2:
	.word	_sourceFileName
	.word	_Label_3189
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3190
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3191
	.word	12
	.word	4
	.word	_Label_3192
	.word	16
	.word	4
	.word	_Label_3193
	.word	-16
	.word	4
	.word	_Label_3194
	.word	-20
	.word	4
	.word	_Label_3195
	.word	-9
	.word	1
	.word	_Label_3196
	.word	-24
	.word	4
	.word	_Label_3197
	.word	-28
	.word	4
	.word	_Label_3198
	.word	-32
	.word	4
	.word	_Label_3199
	.word	-36
	.word	4
	.word	_Label_3200
	.word	-40
	.word	4
	.word	0
_Label_3189:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3190:
	.ascii	"Pself\0"
	.align
_Label_3191:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3192:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3193:
	.byte	'?'
	.ascii	"_temp_3188\0"
	.align
_Label_3194:
	.byte	'?'
	.ascii	"_temp_3187\0"
	.align
_Label_3195:
	.byte	'C'
	.ascii	"_temp_3186\0"
	.align
_Label_3196:
	.byte	'?'
	.ascii	"_temp_3185\0"
	.align
_Label_3197:
	.byte	'?'
	.ascii	"_temp_3184\0"
	.align
_Label_3198:
	.byte	'?'
	.ascii	"_temp_3183\0"
	.align
_Label_3199:
	.byte	'?'
	.ascii	"_temp_3182\0"
	.align
_Label_3200:
	.byte	'I'
	.ascii	"pos\0"
	.align
! 
! ===============  METHOD ReadInt  ===============
! 
_Method_P_Kernel_OpenFile_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_3,r1
	push	r1
	mov	8,r1
_Label_3518:
	push	r0
	sub	r1,1,r1
	bne	_Label_3518
	mov	2749,r13		! source line 2749
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2754,r13		! source line 2754
	mov	"\0\0IF",r10
	mov	2754,r13		! source line 2754
	mov	"\0\0SE",r10
!   _temp_3204 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3205) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3204  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3203  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3203 then goto _Label_3202 else goto _Label_3201
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3201
	jmp	_Label_3202
_Label_3201:
! THEN...
	mov	2755,r13		! source line 2755
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3206 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3206  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2755,r13		! source line 2755
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3202:
! RETURN STATEMENT...
	mov	2757,r13		! source line 2757
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_3:
	.word	_sourceFileName
	.word	_Label_3207
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3208
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3209
	.word	-16
	.word	4
	.word	_Label_3210
	.word	-20
	.word	4
	.word	_Label_3211
	.word	-24
	.word	4
	.word	_Label_3212
	.word	-9
	.word	1
	.word	_Label_3213
	.word	-28
	.word	4
	.word	0
_Label_3207:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3208:
	.ascii	"Pself\0"
	.align
_Label_3209:
	.byte	'?'
	.ascii	"_temp_3206\0"
	.align
_Label_3210:
	.byte	'?'
	.ascii	"_temp_3205\0"
	.align
_Label_3211:
	.byte	'?'
	.ascii	"_temp_3204\0"
	.align
_Label_3212:
	.byte	'C'
	.ascii	"_temp_3203\0"
	.align
_Label_3213:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD LoadExecutable  ===============
! 
_Method_P_Kernel_OpenFile_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_4,r1
	push	r1
	mov	68,r1
_Label_3519:
	push	r0
	sub	r1,1,r1
	bne	_Label_3519
	mov	2762,r13		! source line 2762
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2788,r13		! source line 2788
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3217 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3216 = *_temp_3217  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3216) then goto _Label_3215
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3215
!	jmp	_Label_3214
_Label_3214:
! THEN...
	mov	2789,r13		! source line 2789
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3218 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3218  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2789,r13		! source line 2789
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3215:
! IF STATEMENT...
	mov	2793,r13		! source line 2793
	mov	"\0\0IF",r10
	mov	2793,r13		! source line 2793
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3222) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3221  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3221 == 1112300152 then goto _Label_3220		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3220
!	jmp	_Label_3219
_Label_3219:
! THEN...
	mov	2794,r13		! source line 2794
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3223 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3223  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2794,r13		! source line 2794
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2795,r13		! source line 2795
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3220:
! ASSIGNMENT STATEMENT...
	mov	2799,r13		! source line 2799
	mov	"\0\0AS",r10
	mov	2799,r13		! source line 2799
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3224) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2800,r13		! source line 2800
	mov	"\0\0AS",r10
	mov	2800,r13		! source line 2800
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3225) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2801,r13		! source line 2801
	mov	"\0\0AS",r10
	mov	2801,r13		! source line 2801
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3226) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	2802,r13		! source line 2802
	mov	"\0\0AS",r10
	mov	2802,r13		! source line 2802
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3227) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2803,r13		! source line 2803
	mov	"\0\0AS",r10
	mov	2803,r13		! source line 2803
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3228) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2804,r13		! source line 2804
	mov	"\0\0AS",r10
	mov	2804,r13		! source line 2804
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3229) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	2807,r13		! source line 2807
	mov	"\0\0IF",r10
!   _temp_3232 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3232) then goto _Label_3231
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3231
!	jmp	_Label_3230
_Label_3230:
! THEN...
	mov	2808,r13		! source line 2808
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3233 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3233  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2808,r13		! source line 2808
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2809,r13		! source line 2809
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3231:
! ASSIGNMENT STATEMENT...
	mov	2811,r13		! source line 2811
	mov	"\0\0AS",r10
!   textSizeInPages = textSize div 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	2815,r13		! source line 2815
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3235
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3235
!	jmp	_Label_3234
_Label_3234:
! THEN...
	mov	2816,r13		! source line 2816
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3236 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3236  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2816,r13		! source line 2816
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2817,r13		! source line 2817
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3235:
! IF STATEMENT...
	mov	2821,r13		! source line 2821
	mov	"\0\0IF",r10
!   _temp_3239 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3239) then goto _Label_3238
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3238
!	jmp	_Label_3237
_Label_3237:
! THEN...
	mov	2822,r13		! source line 2822
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3240 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3240  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2822,r13		! source line 2822
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2823,r13		! source line 2823
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3238:
! IF STATEMENT...
	mov	2825,r13		! source line 2825
	mov	"\0\0IF",r10
!   _temp_3243 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3243 then goto _Label_3242		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3242
!	jmp	_Label_3241
_Label_3241:
! THEN...
	mov	2826,r13		! source line 2826
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3244 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3244  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2826,r13		! source line 2826
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2827,r13		! source line 2827
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3242:
! ASSIGNMENT STATEMENT...
	mov	2829,r13		! source line 2829
	mov	"\0\0AS",r10
!   dataSizeInPages = dataSize div 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	2832,r13		! source line 2832
	mov	"\0\0IF",r10
!   _temp_3247 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3247) then goto _Label_3246
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3246
!	jmp	_Label_3245
_Label_3245:
! THEN...
	mov	2833,r13		! source line 2833
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3248 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3248  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2833,r13		! source line 2833
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2834,r13		! source line 2834
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3246:
! IF STATEMENT...
	mov	2836,r13		! source line 2836
	mov	"\0\0IF",r10
!   _temp_3251 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3251 then goto _Label_3250		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3250
!	jmp	_Label_3249
_Label_3249:
! THEN...
	mov	2837,r13		! source line 2837
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3252 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3252  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2837,r13		! source line 2837
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2838,r13		! source line 2838
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3250:
! ASSIGNMENT STATEMENT...
	mov	2840,r13		! source line 2840
	mov	"\0\0AS",r10
!   bssSizeInPages = bssSize div 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2843,r13		! source line 2843
	mov	"\0\0AS",r10
!   _temp_3255 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3254 = _temp_3255 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3253 = _temp_3254 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3253 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2858,r13		! source line 2858
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3257		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3257
!	jmp	_Label_3256
_Label_3256:
! THEN...
	mov	2859,r13		! source line 2859
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3258 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3258  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2859,r13		! source line 2859
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3259 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3259  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2860,r13		! source line 2860
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3260 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3260  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2861,r13		! source line 2861
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2862,r13		! source line 2862
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3257:
! SEND STATEMENT...
	mov	2864,r13		! source line 2864
	mov	"\0\0SE",r10
!   _temp_3261 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	2870,r13		! source line 2870
	mov	"\0\0IF",r10
	mov	2870,r13		! source line 2870
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3265) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3264  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3264 == 707406378 then goto _Label_3263		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3263
!	jmp	_Label_3262
_Label_3262:
! THEN...
	mov	2871,r13		! source line 2871
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3266 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3266  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2871,r13		! source line 2871
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2872,r13		! source line 2872
	mov	"\0\0SE",r10
!   _temp_3267 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2873,r13		! source line 2873
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3263:
! ASSIGNMENT STATEMENT...
	mov	2877,r13		! source line 2877
	mov	"\0\0AS",r10
!   nextVirtPage = textStart div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! FOR STATEMENT...
	mov	2878,r13		! source line 2878
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3272 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3273 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3272  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3268:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3273 then goto _Label_3271		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3271
_Label_3269:
	mov	2878,r13		! source line 2878
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2879,r13		! source line 2879
	mov	"\0\0AS",r10
	mov	2879,r13		! source line 2879
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2882,r13		! source line 2882
	mov	"\0\0IF",r10
	mov	2882,r13		! source line 2882
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3277) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3276  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3276 then goto _Label_3275 else goto _Label_3274
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3274
	jmp	_Label_3275
_Label_3274:
! THEN...
	mov	2883,r13		! source line 2883
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3278 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3278  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2883,r13		! source line 2883
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2884,r13		! source line 2884
	mov	"\0\0SE",r10
!   _temp_3279 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2885,r13		! source line 2885
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3275:
! SEND STATEMENT...
	mov	2887,r13		! source line 2887
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2888,r13		! source line 2888
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3270:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3268
! END FOR
_Label_3271:
! IF STATEMENT...
	mov	2892,r13		! source line 2892
	mov	"\0\0IF",r10
	mov	2892,r13		! source line 2892
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3283) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3282  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3282 == 707406378 then goto _Label_3281		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3281
!	jmp	_Label_3280
_Label_3280:
! THEN...
	mov	2893,r13		! source line 2893
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3284 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3284  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2893,r13		! source line 2893
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2894,r13		! source line 2894
	mov	"\0\0SE",r10
!   _temp_3285 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2895,r13		! source line 2895
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3281:
! FOR STATEMENT...
	mov	2899,r13		! source line 2899
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3290 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3291 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3290  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3286:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3291 then goto _Label_3289		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3289
_Label_3287:
	mov	2899,r13		! source line 2899
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2900,r13		! source line 2900
	mov	"\0\0AS",r10
	mov	2900,r13		! source line 2900
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2903,r13		! source line 2903
	mov	"\0\0IF",r10
	mov	2903,r13		! source line 2903
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3295) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3294  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3294 then goto _Label_3293 else goto _Label_3292
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3292
	jmp	_Label_3293
_Label_3292:
! THEN...
	mov	2904,r13		! source line 2904
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3296 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3296  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2904,r13		! source line 2904
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2905,r13		! source line 2905
	mov	"\0\0SE",r10
!   _temp_3297 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2906,r13		! source line 2906
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3293:
! ASSIGNMENT STATEMENT...
	mov	2908,r13		! source line 2908
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3288:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3286
! END FOR
_Label_3289:
! IF STATEMENT...
	mov	2912,r13		! source line 2912
	mov	"\0\0IF",r10
	mov	2912,r13		! source line 2912
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3301) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3300  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3300 == 707406378 then goto _Label_3299		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3299
!	jmp	_Label_3298
_Label_3298:
! THEN...
	mov	2913,r13		! source line 2913
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3302 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3302  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2913,r13		! source line 2913
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2914,r13		! source line 2914
	mov	"\0\0SE",r10
!   _temp_3303 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2915,r13		! source line 2915
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3299:
! ASSIGNMENT STATEMENT...
	mov	2919,r13		! source line 2919
	mov	"\0\0AS",r10
	mov	2919,r13		! source line 2919
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=bssSize  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Call the function
	mov	2923,r13		! source line 2923
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2926,r13		! source line 2926
	mov	"\0\0RE",r10
!   ReturnResult: textStart  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_4:
	.word	_sourceFileName
	.word	_Label_3304
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3305
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3306
	.word	12
	.word	4
	.word	_Label_3307
	.word	-16
	.word	4
	.word	_Label_3308
	.word	-20
	.word	4
	.word	_Label_3309
	.word	-24
	.word	4
	.word	_Label_3310
	.word	-28
	.word	4
	.word	_Label_3311
	.word	-32
	.word	4
	.word	_Label_3312
	.word	-36
	.word	4
	.word	_Label_3313
	.word	-40
	.word	4
	.word	_Label_3314
	.word	-9
	.word	1
	.word	_Label_3315
	.word	-44
	.word	4
	.word	_Label_3316
	.word	-48
	.word	4
	.word	_Label_3317
	.word	-52
	.word	4
	.word	_Label_3318
	.word	-56
	.word	4
	.word	_Label_3319
	.word	-60
	.word	4
	.word	_Label_3320
	.word	-64
	.word	4
	.word	_Label_3321
	.word	-68
	.word	4
	.word	_Label_3322
	.word	-72
	.word	4
	.word	_Label_3323
	.word	-76
	.word	4
	.word	_Label_3324
	.word	-10
	.word	1
	.word	_Label_3325
	.word	-80
	.word	4
	.word	_Label_3326
	.word	-84
	.word	4
	.word	_Label_3327
	.word	-88
	.word	4
	.word	_Label_3328
	.word	-92
	.word	4
	.word	_Label_3329
	.word	-96
	.word	4
	.word	_Label_3330
	.word	-100
	.word	4
	.word	_Label_3331
	.word	-104
	.word	4
	.word	_Label_3332
	.word	-108
	.word	4
	.word	_Label_3333
	.word	-112
	.word	4
	.word	_Label_3334
	.word	-116
	.word	4
	.word	_Label_3335
	.word	-120
	.word	4
	.word	_Label_3336
	.word	-124
	.word	4
	.word	_Label_3337
	.word	-128
	.word	4
	.word	_Label_3338
	.word	-132
	.word	4
	.word	_Label_3339
	.word	-136
	.word	4
	.word	_Label_3340
	.word	-140
	.word	4
	.word	_Label_3341
	.word	-144
	.word	4
	.word	_Label_3342
	.word	-148
	.word	4
	.word	_Label_3343
	.word	-152
	.word	4
	.word	_Label_3344
	.word	-156
	.word	4
	.word	_Label_3345
	.word	-160
	.word	4
	.word	_Label_3346
	.word	-164
	.word	4
	.word	_Label_3347
	.word	-168
	.word	4
	.word	_Label_3348
	.word	-172
	.word	4
	.word	_Label_3349
	.word	-176
	.word	4
	.word	_Label_3350
	.word	-180
	.word	4
	.word	_Label_3351
	.word	-184
	.word	4
	.word	_Label_3352
	.word	-188
	.word	4
	.word	_Label_3353
	.word	-192
	.word	4
	.word	_Label_3354
	.word	-196
	.word	4
	.word	_Label_3355
	.word	-200
	.word	4
	.word	_Label_3356
	.word	-204
	.word	4
	.word	_Label_3357
	.word	-208
	.word	4
	.word	_Label_3358
	.word	-212
	.word	4
	.word	_Label_3359
	.word	-216
	.word	4
	.word	_Label_3360
	.word	-220
	.word	4
	.word	_Label_3361
	.word	-224
	.word	4
	.word	_Label_3362
	.word	-228
	.word	4
	.word	_Label_3363
	.word	-232
	.word	4
	.word	_Label_3364
	.word	-236
	.word	4
	.word	_Label_3365
	.word	-240
	.word	4
	.word	_Label_3366
	.word	-244
	.word	4
	.word	_Label_3367
	.word	-248
	.word	4
	.word	_Label_3368
	.word	-252
	.word	4
	.word	_Label_3369
	.word	-256
	.word	4
	.word	_Label_3370
	.word	-260
	.word	4
	.word	_Label_3371
	.word	-264
	.word	4
	.word	_Label_3372
	.word	-268
	.word	4
	.word	0
_Label_3304:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3305:
	.ascii	"Pself\0"
	.align
_Label_3306:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3307:
	.byte	'?'
	.ascii	"_temp_3303\0"
	.align
_Label_3308:
	.byte	'?'
	.ascii	"_temp_3302\0"
	.align
_Label_3309:
	.byte	'?'
	.ascii	"_temp_3301\0"
	.align
_Label_3310:
	.byte	'?'
	.ascii	"_temp_3300\0"
	.align
_Label_3311:
	.byte	'?'
	.ascii	"_temp_3297\0"
	.align
_Label_3312:
	.byte	'?'
	.ascii	"_temp_3296\0"
	.align
_Label_3313:
	.byte	'?'
	.ascii	"_temp_3295\0"
	.align
_Label_3314:
	.byte	'C'
	.ascii	"_temp_3294\0"
	.align
_Label_3315:
	.byte	'?'
	.ascii	"_temp_3291\0"
	.align
_Label_3316:
	.byte	'?'
	.ascii	"_temp_3290\0"
	.align
_Label_3317:
	.byte	'?'
	.ascii	"_temp_3285\0"
	.align
_Label_3318:
	.byte	'?'
	.ascii	"_temp_3284\0"
	.align
_Label_3319:
	.byte	'?'
	.ascii	"_temp_3283\0"
	.align
_Label_3320:
	.byte	'?'
	.ascii	"_temp_3282\0"
	.align
_Label_3321:
	.byte	'?'
	.ascii	"_temp_3279\0"
	.align
_Label_3322:
	.byte	'?'
	.ascii	"_temp_3278\0"
	.align
_Label_3323:
	.byte	'?'
	.ascii	"_temp_3277\0"
	.align
_Label_3324:
	.byte	'C'
	.ascii	"_temp_3276\0"
	.align
_Label_3325:
	.byte	'?'
	.ascii	"_temp_3273\0"
	.align
_Label_3326:
	.byte	'?'
	.ascii	"_temp_3272\0"
	.align
_Label_3327:
	.byte	'?'
	.ascii	"_temp_3267\0"
	.align
_Label_3328:
	.byte	'?'
	.ascii	"_temp_3266\0"
	.align
_Label_3329:
	.byte	'?'
	.ascii	"_temp_3265\0"
	.align
_Label_3330:
	.byte	'?'
	.ascii	"_temp_3264\0"
	.align
_Label_3331:
	.byte	'?'
	.ascii	"_temp_3261\0"
	.align
_Label_3332:
	.byte	'?'
	.ascii	"_temp_3260\0"
	.align
_Label_3333:
	.byte	'?'
	.ascii	"_temp_3259\0"
	.align
_Label_3334:
	.byte	'?'
	.ascii	"_temp_3258\0"
	.align
_Label_3335:
	.byte	'?'
	.ascii	"_temp_3255\0"
	.align
_Label_3336:
	.byte	'?'
	.ascii	"_temp_3254\0"
	.align
_Label_3337:
	.byte	'?'
	.ascii	"_temp_3253\0"
	.align
_Label_3338:
	.byte	'?'
	.ascii	"_temp_3252\0"
	.align
_Label_3339:
	.byte	'?'
	.ascii	"_temp_3251\0"
	.align
_Label_3340:
	.byte	'?'
	.ascii	"_temp_3248\0"
	.align
_Label_3341:
	.byte	'?'
	.ascii	"_temp_3247\0"
	.align
_Label_3342:
	.byte	'?'
	.ascii	"_temp_3244\0"
	.align
_Label_3343:
	.byte	'?'
	.ascii	"_temp_3243\0"
	.align
_Label_3344:
	.byte	'?'
	.ascii	"_temp_3240\0"
	.align
_Label_3345:
	.byte	'?'
	.ascii	"_temp_3239\0"
	.align
_Label_3346:
	.byte	'?'
	.ascii	"_temp_3236\0"
	.align
_Label_3347:
	.byte	'?'
	.ascii	"_temp_3233\0"
	.align
_Label_3348:
	.byte	'?'
	.ascii	"_temp_3232\0"
	.align
_Label_3349:
	.byte	'?'
	.ascii	"_temp_3229\0"
	.align
_Label_3350:
	.byte	'?'
	.ascii	"_temp_3228\0"
	.align
_Label_3351:
	.byte	'?'
	.ascii	"_temp_3227\0"
	.align
_Label_3352:
	.byte	'?'
	.ascii	"_temp_3226\0"
	.align
_Label_3353:
	.byte	'?'
	.ascii	"_temp_3225\0"
	.align
_Label_3354:
	.byte	'?'
	.ascii	"_temp_3224\0"
	.align
_Label_3355:
	.byte	'?'
	.ascii	"_temp_3223\0"
	.align
_Label_3356:
	.byte	'?'
	.ascii	"_temp_3222\0"
	.align
_Label_3357:
	.byte	'?'
	.ascii	"_temp_3221\0"
	.align
_Label_3358:
	.byte	'?'
	.ascii	"_temp_3218\0"
	.align
_Label_3359:
	.byte	'?'
	.ascii	"_temp_3217\0"
	.align
_Label_3360:
	.byte	'?'
	.ascii	"_temp_3216\0"
	.align
_Label_3361:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3362:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3363:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3364:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3365:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3366:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3367:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3368:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3369:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3370:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3371:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3372:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
