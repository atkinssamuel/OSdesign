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
_StringConst_203:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_202:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_201:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_200:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_199:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_198:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_197:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_196:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_195:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_194:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_193:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_192:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_191:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_190:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_189:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_188:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_187:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_186:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_185:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_184:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_183:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_182:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_181:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_180:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_179:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_178:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_177:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_176:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_175:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_174:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_173:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_172:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_171:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_170:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_169:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_168:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_167:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_166:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_165:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_164:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_163:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_162:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_161:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_160:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_159:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_158:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_157:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_156:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_155:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_154:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_153:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_152:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_151:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_150:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_149:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_148:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_147:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_146:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_145:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_144:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_143:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_142:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_141:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_140:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_139:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_138:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_137:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_136:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_135:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_134:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_133:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_132:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_131:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_130:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_129:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_128:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_127:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_126:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_125:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_124:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_123:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_122:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_121:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_120:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_119:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_118:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_117:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_116:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_115:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_114:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_113:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_112:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_111:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_110:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_109:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_108:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_107:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_106:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_105:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_104:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_103:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_102:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_101:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_100:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_99:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_98:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_97:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_96:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_95:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_94:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_93:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_92:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_91:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_90:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_89:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_88:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_87:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_86:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_85:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_84:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_83:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_82:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_81:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_80:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_79:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_78:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_77:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_76:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_75:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_74:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_73:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_72:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_71:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_70:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_69:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_68:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_67:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_66:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_65:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_64:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_63:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_62:
	.word	25			! length
	.ascii	"Handle_Sys_Close invoked!"
	.align
_StringConst_61:
	.word	16			! length
	.ascii	"newCurrentPos = "
	.align
_StringConst_60:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_59:
	.word	24			! length
	.ascii	"Handle_Sys_Seek invoked!"
	.align
_StringConst_58:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_57:
	.word	22			! length
	.ascii	"virt addr of buffer = "
	.align
_StringConst_56:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_55:
	.word	25			! length
	.ascii	"Handle_Sys_Write invoked!"
	.align
_StringConst_54:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_53:
	.word	22			! length
	.ascii	"virt addr of buffer = "
	.align
_StringConst_52:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_51:
	.word	24			! length
	.ascii	"Handle_Sys_Read invoked!"
	.align
_StringConst_50:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_49:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_48:
	.word	24			! length
	.ascii	"Handle_Sys_Open invoked!"
	.align
_StringConst_47:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_46:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_45:
	.word	24			! length
	.ascii	"Handle_Sys_Read invoked!"
	.align
_StringConst_44:
	.word	12			! length
	.ascii	"processID = "
	.align
_StringConst_43:
	.word	24			! length
	.ascii	"Handle_Sys_Join invoked!"
	.align
_StringConst_42:
	.word	24			! length
	.ascii	"Handle_Sys_Fork invoked!"
	.align
_StringConst_41:
	.word	25			! length
	.ascii	"Handle_Sys_Yield invoked!"
	.align
_StringConst_40:
	.word	47			! length
	.ascii	"Syscall \'Shutdown\' was invoked by a user thread"
	.align
_StringConst_39:
	.word	15			! length
	.ascii	"returnStatus = "
	.align
_StringConst_38:
	.word	24			! length
	.ascii	"Handle_Sys_Exit invoked!"
	.align
_StringConst_37:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_36:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_35:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_34:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_33:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_32:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_31:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_30:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_29:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_25:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
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
	.ascii	"TestProgram1"
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
	set	0x82832c48,r4		! myHashVal = -2105332664
	cmp	r3,r4
	be	_Label_212
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
_Label_212:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_213
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_213
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_213
_Label_213:
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
	mov	7,r1
_Label_2985:
	push	r0
	sub	r1,1,r1
	bne	_Label_2985
	mov	8,r13		! source line 8
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	11,r13		! source line 11
	mov	"\0\0AS",r10
	mov	11,r13		! source line 11
	mov	"\0\0SE",r10
!   _temp_214 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-20]
!   Send message GetANewThread
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=thPt  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	13,r13		! source line 13
	mov	"\0\0SE",r10
!   _temp_215 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-16]
!   if intIsZero (thPt) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_215  sizeInBytes=4
	load	[r14+-16],r1
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
	mov	15,r13		! source line 15
	mov	"\0\0SE",r10
!   _temp_216 = _function_211_StartUserProcess
	set	_function_211_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (thPt) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_216  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	15,r13		! source line 15
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_217
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_218
	.word	-12
	.word	4
	.word	_Label_219
	.word	-16
	.word	4
	.word	_Label_220
	.word	-20
	.word	4
	.word	_Label_221
	.word	-24
	.word	4
	.word	0
_Label_217:
	.ascii	"InitFirstProcess\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_221:
	.byte	'P'
	.ascii	"thPt\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_211_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_211_StartUserProcess,r1
	push	r1
	mov	24,r1
_Label_2986:
	push	r0
	sub	r1,1,r1
	bne	_Label_2986
	mov	18,r13		! source line 18
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0AS",r10
	mov	27,r13		! source line 27
	mov	"\0\0SE",r10
!   _temp_222 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-68]
!   Send message GetANewProcess
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=PCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! ASSIGNMENT STATEMENT...
	mov	29,r13		! source line 29
	mov	"\0\0AS",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_223 = PCB + 24
	load	[r14+-72],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_223 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	31,r13		! source line 31
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_224 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_224 = PCB  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-60],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0AS",r10
	mov	32,r13		! source line 32
	mov	"\0\0SE",r10
!   _temp_225 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-56]
!   _temp_226 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_225  sizeInBytes=4
	load	[r14+-56],r1
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
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	34,r13		! source line 34
	mov	"\0\0AS",r10
	mov	34,r13		! source line 34
	mov	"\0\0SE",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_228 = PCB + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_227 = _temp_228		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   if intIsZero (filePt) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_227  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	36,r13		! source line 36
	mov	"\0\0SE",r10
!   _temp_229 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=filePt  sizeInBytes=4
	load	[r14+-76],r1
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
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_231 = PCB + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   _temp_232 = _temp_231 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_230 = *_temp_232  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_230 * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	39,r13		! source line 39
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_233 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_233 [999 ] into _temp_234
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
!   initSystemStackTop = _temp_234		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-88]
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
	store	r1,[r14+-92]
! SEND STATEMENT...
	mov	41,r13		! source line 41
	mov	"\0\0SE",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_235 = PCB + 32
	load	[r14+-72],r1
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
!   _temp_236 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_236 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-12],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+8]
!   Call the function
	mov	43,r13		! source line 43
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0RE",r10
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_211_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_237
	.word	4		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_238
	.word	8
	.word	4
	.word	_Label_239
	.word	-12
	.word	4
	.word	_Label_240
	.word	-16
	.word	4
	.word	_Label_241
	.word	-20
	.word	4
	.word	_Label_242
	.word	-24
	.word	4
	.word	_Label_243
	.word	-28
	.word	4
	.word	_Label_244
	.word	-32
	.word	4
	.word	_Label_245
	.word	-36
	.word	4
	.word	_Label_246
	.word	-40
	.word	4
	.word	_Label_247
	.word	-44
	.word	4
	.word	_Label_248
	.word	-48
	.word	4
	.word	_Label_249
	.word	-52
	.word	4
	.word	_Label_250
	.word	-56
	.word	4
	.word	_Label_251
	.word	-60
	.word	4
	.word	_Label_252
	.word	-64
	.word	4
	.word	_Label_253
	.word	-68
	.word	4
	.word	_Label_254
	.word	-72
	.word	4
	.word	_Label_255
	.word	-76
	.word	4
	.word	_Label_256
	.word	-80
	.word	4
	.word	_Label_257
	.word	-84
	.word	4
	.word	_Label_258
	.word	-88
	.word	4
	.word	_Label_259
	.word	-92
	.word	4
	.word	0
_Label_237:
	.ascii	"StartUserProcess\0"
	.align
_Label_238:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_254:
	.byte	'P'
	.ascii	"PCB\0"
	.align
_Label_255:
	.byte	'P'
	.ascii	"filePt\0"
	.align
_Label_256:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_257:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_258:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_259:
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
_Label_2987:
	push	r0
	sub	r1,1,r1
	bne	_Label_2987
	mov	46,r13		! source line 46
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	53,r13		! source line 53
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_260 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_260  sizeInBytes=4
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
_Label_2988:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2988
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	58,r13		! source line 58
	mov	"\0\0SE",r10
!   _temp_264 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-44]
!   _temp_265 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_264  sizeInBytes=4
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
!   _temp_266 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_267 = _temp_266 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_267 = 3  (sizeInBytes=4)
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
_Label_2989:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2989
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	61,r13		! source line 61
	mov	"\0\0SE",r10
!   _temp_269 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-24]
!   _temp_270 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_269  sizeInBytes=4
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
!   _temp_271 = _function_210_IdleFunction
	set	_function_210_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_272 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_271  sizeInBytes=4
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
	.word	_Label_273
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_274
	.word	-12
	.word	4
	.word	_Label_275
	.word	-16
	.word	4
	.word	_Label_276
	.word	-20
	.word	4
	.word	_Label_277
	.word	-24
	.word	4
	.word	_Label_278
	.word	-28
	.word	4
	.word	_Label_279
	.word	-32
	.word	4
	.word	_Label_280
	.word	-36
	.word	4
	.word	_Label_281
	.word	-40
	.word	4
	.word	_Label_282
	.word	-44
	.word	4
	.word	_Label_283
	.word	-48
	.word	4
	.word	_Label_284
	.word	-52
	.word	4
	.word	_Label_285
	.word	-56
	.word	4
	.word	_Label_286
	.word	-60
	.word	4
	.word	0
_Label_273:
	.ascii	"InitializeScheduler\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_210_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_210_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_2990:
	push	r0
	sub	r1,1,r1
	bne	_Label_2990
	mov	71,r13		! source line 71
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	81,r13		! source line 81
	mov	"\0\0WH",r10
_Label_287:
!	jmp	_Label_288
_Label_288:
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
!   _temp_292 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_290 else goto _Label_291
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_291
	jmp	_Label_290
_Label_290:
! THEN...
	mov	84,r13		! source line 84
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	84,r13		! source line 84
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_293
_Label_291:
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
_Label_293:
! END WHILE...
	jmp	_Label_287
_Label_289:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_210_IdleFunction:
	.word	_sourceFileName
	.word	_Label_294
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_295
	.word	8
	.word	4
	.word	_Label_296
	.word	-12
	.word	4
	.word	_Label_297
	.word	-16
	.word	4
	.word	0
_Label_294:
	.ascii	"IdleFunction\0"
	.align
_Label_295:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_297:
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
_Label_2991:
	push	r0
	sub	r1,1,r1
	bne	_Label_2991
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
!   _temp_300 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_300 ) then goto _Label_299		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_299
!	jmp	_Label_298
_Label_298:
! THEN...
	mov	110,r13		! source line 110
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_302 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_302 [0 ] into _temp_303
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
!   _temp_301 = _temp_303		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_301  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	110,r13		! source line 110
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_299:
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
!   _temp_304 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_304 = 3  (sizeInBytes=4)
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
_Label_305:
	mov	123,r13		! source line 123
	mov	"\0\0SE",r10
!   _temp_309 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_308  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_308 then goto _Label_307 else goto _Label_306
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_306
	jmp	_Label_307
_Label_306:
	mov	123,r13		! source line 123
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0AS",r10
	mov	124,r13		! source line 124
	mov	"\0\0SE",r10
!   _temp_310 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_311 = &_P_Kernel_threadManager
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
	jmp	_Label_305
_Label_307:
! IF STATEMENT...
	mov	128,r13		! source line 128
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_314 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_314 ) then goto _Label_313		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_313
!	jmp	_Label_312
_Label_312:
! THEN...
	mov	129,r13		! source line 129
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_316 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_316 [0 ] into _temp_317
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
!   _temp_315 = _temp_317		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_315  sizeInBytes=4
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
!   _temp_319 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_318 = *_temp_319  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_318) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_320 = _temp_318 + 32
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
_Label_313:
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
	.word	_Label_321
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_322
	.word	8
	.word	4
	.word	_Label_323
	.word	-16
	.word	4
	.word	_Label_324
	.word	-20
	.word	4
	.word	_Label_325
	.word	-24
	.word	4
	.word	_Label_326
	.word	-28
	.word	4
	.word	_Label_327
	.word	-32
	.word	4
	.word	_Label_328
	.word	-36
	.word	4
	.word	_Label_329
	.word	-40
	.word	4
	.word	_Label_330
	.word	-44
	.word	4
	.word	_Label_331
	.word	-48
	.word	4
	.word	_Label_332
	.word	-52
	.word	4
	.word	_Label_333
	.word	-9
	.word	1
	.word	_Label_334
	.word	-56
	.word	4
	.word	_Label_335
	.word	-60
	.word	4
	.word	_Label_336
	.word	-64
	.word	4
	.word	_Label_337
	.word	-68
	.word	4
	.word	_Label_338
	.word	-72
	.word	4
	.word	_Label_339
	.word	-76
	.word	4
	.word	_Label_340
	.word	-80
	.word	4
	.word	0
_Label_321:
	.ascii	"Run\0"
	.align
_Label_322:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_333:
	.byte	'C'
	.ascii	"_temp_308\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_339:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_340:
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
_Label_2992:
	push	r0
	sub	r1,1,r1
	bne	_Label_2992
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
!   _temp_341 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_341  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	144,r13		! source line 144
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	145,r13		! source line 145
	mov	"\0\0SE",r10
!   _temp_342 = _function_209_ThreadPrintShort
	set	_function_209_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_343 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_342  sizeInBytes=4
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
	.word	_Label_344
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_345
	.word	-12
	.word	4
	.word	_Label_346
	.word	-16
	.word	4
	.word	_Label_347
	.word	-20
	.word	4
	.word	_Label_348
	.word	-24
	.word	4
	.word	0
_Label_344:
	.ascii	"PrintReadyList\0"
	.align
_Label_345:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_346:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_347:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_348:
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
_Label_2993:
	push	r0
	sub	r1,1,r1
	bne	_Label_2993
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
!   _temp_349 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_349  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_351 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_350 = *_temp_351  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_350  sizeInBytes=4
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
!   _temp_352 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_352  sizeInBytes=4
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
	.word	_Label_353
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_354
	.word	-12
	.word	4
	.word	_Label_355
	.word	-16
	.word	4
	.word	_Label_356
	.word	-20
	.word	4
	.word	_Label_357
	.word	-24
	.word	4
	.word	_Label_358
	.word	-28
	.word	4
	.word	_Label_359
	.word	-32
	.word	4
	.word	0
_Label_353:
	.ascii	"ThreadStartMain\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_358:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_359:
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
_Label_2994:
	push	r0
	sub	r1,1,r1
	bne	_Label_2994
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
!   _temp_360 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_361 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_361  sizeInBytes=4
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
	.word	_Label_362
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_363
	.word	-12
	.word	4
	.word	_Label_364
	.word	-16
	.word	4
	.word	_Label_365
	.word	-20
	.word	4
	.word	0
_Label_362:
	.ascii	"ThreadFinish\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_365:
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
_Label_2995:
	push	r0
	sub	r1,1,r1
	bne	_Label_2995
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
!   _temp_366 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_366  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	204,r13		! source line 204
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	205,r13		! source line 205
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_368		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_368
!	jmp	_Label_367
_Label_367:
! THEN...
	mov	206,r13		! source line 206
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_369 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_369  sizeInBytes=4
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
!   _temp_371 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_370 = *_temp_371  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_370  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	207,r13		! source line 207
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_368:
! CALL STATEMENT...
!   _temp_372 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_372  sizeInBytes=4
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
!   _temp_373 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_373  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	211,r13		! source line 211
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_374 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_374  sizeInBytes=4
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
	.word	_Label_375
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_376
	.word	8
	.word	4
	.word	_Label_377
	.word	-12
	.word	4
	.word	_Label_378
	.word	-16
	.word	4
	.word	_Label_379
	.word	-20
	.word	4
	.word	_Label_380
	.word	-24
	.word	4
	.word	_Label_381
	.word	-28
	.word	4
	.word	_Label_382
	.word	-32
	.word	4
	.word	_Label_383
	.word	-36
	.word	4
	.word	_Label_384
	.word	-40
	.word	4
	.word	0
_Label_375:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_376:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_366\0"
	.align
_Label_384:
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
_Label_2996:
	push	r0
	sub	r1,1,r1
	bne	_Label_2996
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
!   if newStatus != 1 then goto _Label_386		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_386
!	jmp	_Label_385
_Label_385:
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
	jmp	_Label_387
_Label_386:
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
_Label_387:
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
	.word	_Label_388
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_389
	.word	8
	.word	4
	.word	_Label_390
	.word	-12
	.word	4
	.word	0
_Label_388:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_389:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_390:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_209_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_209_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_2997:
	push	r0
	sub	r1,1,r1
	bne	_Label_2997
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
!   if t == 0 then goto _Label_394		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_394
!   _temp_393 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_395
_Label_394:
!   _temp_393 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_395:
!   if _temp_393 then goto _Label_392 else goto _Label_391
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_391
	jmp	_Label_392
_Label_391:
! THEN...
	mov	688,r13		! source line 688
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_396 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_396  sizeInBytes=4
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
_Label_392:
! CALL STATEMENT...
!   _temp_397 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_397  sizeInBytes=4
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
!   _temp_399 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_398 = *_temp_399  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_398  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	692,r13		! source line 692
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_400 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_400  sizeInBytes=4
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
!   _temp_409 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_408 = *_temp_409  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_403
	cmp	r1,2
	be	_Label_404
	cmp	r1,3
	be	_Label_405
	cmp	r1,4
	be	_Label_406
	cmp	r1,5
	be	_Label_407
	jmp	_Label_401
! CASE 1...
_Label_403:
! CALL STATEMENT...
!   _temp_410 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_410  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	696,r13		! source line 696
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	697,r13		! source line 697
	mov	"\0\0BR",r10
	jmp	_Label_402
! CASE 2...
_Label_404:
! CALL STATEMENT...
!   _temp_411 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_411  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	699,r13		! source line 699
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	700,r13		! source line 700
	mov	"\0\0BR",r10
	jmp	_Label_402
! CASE 3...
_Label_405:
! CALL STATEMENT...
!   _temp_412 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_412  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	702,r13		! source line 702
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	703,r13		! source line 703
	mov	"\0\0BR",r10
	jmp	_Label_402
! CASE 4...
_Label_406:
! CALL STATEMENT...
!   _temp_413 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_413  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	705,r13		! source line 705
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	706,r13		! source line 706
	mov	"\0\0BR",r10
	jmp	_Label_402
! CASE 5...
_Label_407:
! CALL STATEMENT...
!   _temp_414 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_414  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	708,r13		! source line 708
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	709,r13		! source line 709
	mov	"\0\0BR",r10
	jmp	_Label_402
! DEFAULT CASE...
_Label_401:
! CALL STATEMENT...
!   _temp_415 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_415  sizeInBytes=4
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
_Label_402:
! CALL STATEMENT...
!   _temp_416 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_416  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	713,r13		! source line 713
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_417 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_417  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	714,r13		! source line 714
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_418 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_418  sizeInBytes=4
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
_RoutineDescriptor__function_209_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_419
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_420
	.word	8
	.word	4
	.word	_Label_421
	.word	-16
	.word	4
	.word	_Label_422
	.word	-20
	.word	4
	.word	_Label_423
	.word	-24
	.word	4
	.word	_Label_424
	.word	-28
	.word	4
	.word	_Label_425
	.word	-32
	.word	4
	.word	_Label_426
	.word	-36
	.word	4
	.word	_Label_427
	.word	-40
	.word	4
	.word	_Label_428
	.word	-44
	.word	4
	.word	_Label_429
	.word	-48
	.word	4
	.word	_Label_430
	.word	-52
	.word	4
	.word	_Label_431
	.word	-56
	.word	4
	.word	_Label_432
	.word	-60
	.word	4
	.word	_Label_433
	.word	-64
	.word	4
	.word	_Label_434
	.word	-68
	.word	4
	.word	_Label_435
	.word	-72
	.word	4
	.word	_Label_436
	.word	-76
	.word	4
	.word	_Label_437
	.word	-9
	.word	1
	.word	_Label_438
	.word	-80
	.word	4
	.word	0
_Label_419:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_420:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_417\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_435:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_436:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_437:
	.byte	'C'
	.ascii	"_temp_393\0"
	.align
_Label_438:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_208_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_208_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_2998:
	push	r0
	sub	r1,1,r1
	bne	_Label_2998
	mov	1007,r13		! source line 1007
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_439 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_439  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1011,r13		! source line 1011
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1012,r13		! source line 1012
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1012,r13		! source line 1012
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_208_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_440
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_441
	.word	8
	.word	4
	.word	_Label_442
	.word	-12
	.word	4
	.word	0
_Label_440:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_441:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_439\0"
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
	mov	2,r1
_Label_2999:
	push	r0
	sub	r1,1,r1
	bne	_Label_2999
	mov	1017,r13		! source line 1017
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_443 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_443  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1023,r13		! source line 1023
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1023,r13		! source line 1023
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_444
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_445
	.word	8
	.word	4
	.word	_Label_446
	.word	-12
	.word	4
	.word	0
_Label_444:
	.ascii	"ProcessFinish\0"
	.align
_Label_445:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_443\0"
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
_Label_3000:
	push	r0
	sub	r1,1,r1
	bne	_Label_3000
	mov	1508,r13		! source line 1508
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1518,r13		! source line 1518
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1520,r13		! source line 1520
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
	mov	1521,r13		! source line 1521
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1521,r13		! source line 1521
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
	.word	_Label_447
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_447:
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
_Label_3001:
	push	r0
	sub	r1,1,r1
	bne	_Label_3001
	mov	1526,r13		! source line 1526
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1537,r13		! source line 1537
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1539,r13		! source line 1539
	mov	"\0\0IF",r10
!   _temp_451 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_452 = _temp_451 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_450 = *_temp_452  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_450 == 0 then goto _Label_449		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_449
!	jmp	_Label_448
_Label_448:
! THEN...
	mov	1540,r13		! source line 1540
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1540,r13		! source line 1540
	mov	"\0\0SE",r10
!   _temp_454 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_455 = _temp_454 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_453 = *_temp_455  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_453) then goto _runtimeErrorNullPointer
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
_Label_449:
! RETURN STATEMENT...
	mov	1539,r13		! source line 1539
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
	.word	_Label_456
	.word	0		! total size of parameters
	.word	28		! frame size = 28
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
	.word	0
_Label_456:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_450\0"
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
	mov	1547,r13		! source line 1547
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1556,r13		! source line 1556
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1556,r13		! source line 1556
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
	.word	_Label_463
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_463:
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
_Label_3002:
	push	r0
	sub	r1,1,r1
	bne	_Label_3002
	mov	1561,r13		! source line 1561
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1567,r13		! source line 1567
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_464 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_464  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1568,r13		! source line 1568
	mov	"\0\0CA",r10
	call	_function_207_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1568,r13		! source line 1568
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
	.word	_Label_465
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_466
	.word	-12
	.word	4
	.word	0
_Label_465:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_464\0"
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
_Label_3003:
	push	r0
	sub	r1,1,r1
	bne	_Label_3003
	mov	1573,r13		! source line 1573
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1579,r13		! source line 1579
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_467 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_467  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1580,r13		! source line 1580
	mov	"\0\0CA",r10
	call	_function_207_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1580,r13		! source line 1580
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
	.word	_Label_468
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_469
	.word	-12
	.word	4
	.word	0
_Label_468:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_467\0"
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
_Label_3004:
	push	r0
	sub	r1,1,r1
	bne	_Label_3004
	mov	1585,r13		! source line 1585
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1591,r13		! source line 1591
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_470 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_470  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1592,r13		! source line 1592
	mov	"\0\0CA",r10
	call	_function_207_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1592,r13		! source line 1592
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
	.word	_Label_471
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_472
	.word	-12
	.word	4
	.word	0
_Label_471:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_470\0"
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
_Label_3005:
	push	r0
	sub	r1,1,r1
	bne	_Label_3005
	mov	1597,r13		! source line 1597
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1603,r13		! source line 1603
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_473 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_473  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1604,r13		! source line 1604
	mov	"\0\0CA",r10
	call	_function_207_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1604,r13		! source line 1604
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
	.word	_Label_474
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_475
	.word	-12
	.word	4
	.word	0
_Label_474:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_473\0"
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
_Label_3006:
	push	r0
	sub	r1,1,r1
	bne	_Label_3006
	mov	1609,r13		! source line 1609
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1615,r13		! source line 1615
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_476 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_476  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1616,r13		! source line 1616
	mov	"\0\0CA",r10
	call	_function_207_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1616,r13		! source line 1616
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
	.word	_Label_477
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_478
	.word	-12
	.word	4
	.word	0
_Label_477:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_476\0"
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
_Label_3007:
	push	r0
	sub	r1,1,r1
	bne	_Label_3007
	mov	1621,r13		! source line 1621
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1627,r13		! source line 1627
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_479 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_479  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1628,r13		! source line 1628
	mov	"\0\0CA",r10
	call	_function_207_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1628,r13		! source line 1628
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
	.word	_Label_480
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_481
	.word	-12
	.word	4
	.word	0
_Label_480:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_479\0"
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
_Label_3008:
	push	r0
	sub	r1,1,r1
	bne	_Label_3008
	mov	1633,r13		! source line 1633
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1639,r13		! source line 1639
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_482 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_482  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1640,r13		! source line 1640
	mov	"\0\0CA",r10
	call	_function_207_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1640,r13		! source line 1640
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
	.word	_Label_483
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_484
	.word	-12
	.word	4
	.word	0
_Label_483:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_482\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_207_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_207_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3009:
	push	r0
	sub	r1,1,r1
	bne	_Label_3009
	mov	1645,r13		! source line 1645
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_485 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_485  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1650,r13		! source line 1650
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1651,r13		! source line 1651
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_486 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_486  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1652,r13		! source line 1652
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1655,r13		! source line 1655
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_490 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_489 = *_temp_490  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_489 == 0 then goto _Label_488		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_488
!	jmp	_Label_487
_Label_487:
! THEN...
	mov	1656,r13		! source line 1656
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1656,r13		! source line 1656
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_492 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_491 = *_temp_492  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_491) then goto _runtimeErrorNullPointer
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
	jmp	_Label_493
_Label_488:
! ELSE...
	mov	1658,r13		! source line 1658
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_494 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_494  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1658,r13		! source line 1658
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_493:
! SEND STATEMENT...
	mov	1660,r13		! source line 1660
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
	mov	1666,r13		! source line 1666
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1666,r13		! source line 1666
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_207_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_495
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_496
	.word	8
	.word	4
	.word	_Label_497
	.word	-12
	.word	4
	.word	_Label_498
	.word	-16
	.word	4
	.word	_Label_499
	.word	-20
	.word	4
	.word	_Label_500
	.word	-24
	.word	4
	.word	_Label_501
	.word	-28
	.word	4
	.word	_Label_502
	.word	-32
	.word	4
	.word	_Label_503
	.word	-36
	.word	4
	.word	0
_Label_495:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_496:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_494\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_492\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_491\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_490\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_489\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_486\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_485\0"
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
_Label_3010:
	push	r0
	sub	r1,1,r1
	bne	_Label_3010
	mov	1671,r13		! source line 1671
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1678,r13		! source line 1678
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1692,r13		! source line 1692
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3011
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_504
_Label_3011:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_504
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_504
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_518,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_518:
	jmp	_Label_510	! 1:	
	jmp	_Label_517	! 2:	
	jmp	_Label_507	! 3:	
	jmp	_Label_506	! 4:	
	jmp	_Label_509	! 5:	
	jmp	_Label_508	! 6:	
	jmp	_Label_511	! 7:	
	jmp	_Label_512	! 8:	
	jmp	_Label_513	! 9:	
	jmp	_Label_514	! 10:	
	jmp	_Label_515	! 11:	
	jmp	_Label_516	! 12:	
! CASE 4...
_Label_506:
! RETURN STATEMENT...
	mov	1694,r13		! source line 1694
	mov	"\0\0RE",r10
!   Call the function
	mov	1694,r13		! source line 1694
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_519  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_519  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_507:
! CALL STATEMENT...
!   Call the function
	mov	1696,r13		! source line 1696
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1697,r13		! source line 1697
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_508:
! RETURN STATEMENT...
	mov	1699,r13		! source line 1699
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1699,r13		! source line 1699
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_520  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_520  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_509:
! RETURN STATEMENT...
	mov	1701,r13		! source line 1701
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1701,r13		! source line 1701
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_521  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_521  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_510:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1703,r13		! source line 1703
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1704,r13		! source line 1704
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_511:
! RETURN STATEMENT...
	mov	1706,r13		! source line 1706
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1706,r13		! source line 1706
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_522  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_522  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_512:
! RETURN STATEMENT...
	mov	1708,r13		! source line 1708
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1708,r13		! source line 1708
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_523  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_523  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_513:
! RETURN STATEMENT...
	mov	1710,r13		! source line 1710
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
	mov	1710,r13		! source line 1710
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_524  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_524  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_514:
! RETURN STATEMENT...
	mov	1712,r13		! source line 1712
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
	mov	1712,r13		! source line 1712
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_525  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_525  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_515:
! RETURN STATEMENT...
	mov	1714,r13		! source line 1714
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1714,r13		! source line 1714
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_526  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_526  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_516:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1716,r13		! source line 1716
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1717,r13		! source line 1717
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_517:
! CALL STATEMENT...
!   Call the function
	mov	1719,r13		! source line 1719
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1720,r13		! source line 1720
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_504:
! CALL STATEMENT...
!   _temp_527 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_527  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1722,r13		! source line 1722
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1723,r13		! source line 1723
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1724,r13		! source line 1724
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_528 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_528  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1725,r13		! source line 1725
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_505:
! RETURN STATEMENT...
	mov	1727,r13		! source line 1727
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
	.word	_Label_529
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_530
	.word	8
	.word	4
	.word	_Label_531
	.word	12
	.word	4
	.word	_Label_532
	.word	16
	.word	4
	.word	_Label_533
	.word	20
	.word	4
	.word	_Label_534
	.word	24
	.word	4
	.word	_Label_535
	.word	-12
	.word	4
	.word	_Label_536
	.word	-16
	.word	4
	.word	_Label_537
	.word	-20
	.word	4
	.word	_Label_538
	.word	-24
	.word	4
	.word	_Label_539
	.word	-28
	.word	4
	.word	_Label_540
	.word	-32
	.word	4
	.word	_Label_541
	.word	-36
	.word	4
	.word	_Label_542
	.word	-40
	.word	4
	.word	_Label_543
	.word	-44
	.word	4
	.word	_Label_544
	.word	-48
	.word	4
	.word	0
_Label_529:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_530:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_531:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_532:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_533:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_534:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_535:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
_Label_536:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_539:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_523\0"
	.align
_Label_541:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_521\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_519\0"
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
	mov	3,r1
_Label_3012:
	push	r0
	sub	r1,1,r1
	bne	_Label_3012
	mov	1732,r13		! source line 1732
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_545 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_545  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1734,r13		! source line 1734
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1735,r13		! source line 1735
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_546 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_546  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1736,r13		! source line 1736
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1737,r13		! source line 1737
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1738,r13		! source line 1738
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1738,r13		! source line 1738
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_547
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_548
	.word	8
	.word	4
	.word	_Label_549
	.word	-12
	.word	4
	.word	_Label_550
	.word	-16
	.word	4
	.word	0
_Label_547:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_548:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_546\0"
	.align
_Label_550:
	.byte	'?'
	.ascii	"_temp_545\0"
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
_Label_3013:
	push	r0
	sub	r1,1,r1
	bne	_Label_3013
	mov	1743,r13		! source line 1743
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_551 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_551  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1745,r13		! source line 1745
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1745,r13		! source line 1745
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
	.word	_Label_552
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_553
	.word	-12
	.word	4
	.word	0
_Label_552:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_553:
	.byte	'?'
	.ascii	"_temp_551\0"
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
	mov	2,r1
_Label_3014:
	push	r0
	sub	r1,1,r1
	bne	_Label_3014
	mov	1750,r13		! source line 1750
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_554 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_554  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1752,r13		! source line 1752
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1753,r13		! source line 1753
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1753,r13		! source line 1753
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_555
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_556
	.word	-12
	.word	4
	.word	0
_Label_555:
	.ascii	"Handle_Sys_Yield\0"
	.align
_Label_556:
	.byte	'?'
	.ascii	"_temp_554\0"
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
	mov	2,r1
_Label_3015:
	push	r0
	sub	r1,1,r1
	bne	_Label_3015
	mov	1758,r13		! source line 1758
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_557 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_557  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1760,r13		! source line 1760
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1761,r13		! source line 1761
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1762,r13		! source line 1762
	mov	"\0\0RE",r10
!   ReturnResult: 1000  (sizeInBytes=4)
	mov	1000,r1
	store	r1,[r14+8]
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_558
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_559
	.word	-12
	.word	4
	.word	0
_Label_558:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_557\0"
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
	mov	3,r1
_Label_3016:
	push	r0
	sub	r1,1,r1
	bne	_Label_3016
	mov	1767,r13		! source line 1767
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_560 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_560  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1769,r13		! source line 1769
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1770,r13		! source line 1770
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_561 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_561  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1771,r13		! source line 1771
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=processID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1772,r13		! source line 1772
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1773,r13		! source line 1773
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1774,r13		! source line 1774
	mov	"\0\0RE",r10
!   ReturnResult: 2000  (sizeInBytes=4)
	mov	2000,r1
	store	r1,[r14+8]
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_562
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_563
	.word	8
	.word	4
	.word	_Label_564
	.word	-12
	.word	4
	.word	_Label_565
	.word	-16
	.word	4
	.word	0
_Label_562:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_563:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_560\0"
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
_Label_3017:
	push	r0
	sub	r1,1,r1
	bne	_Label_3017
	mov	1779,r13		! source line 1779
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-204,r4
	mov	23,r3
_Label_3018:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3018
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-204]
! ASSIGNMENT STATEMENT...
	mov	1789,r13		! source line 1789
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1789,r13		! source line 1789
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=functionPlaceholder  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	1790,r13		! source line 1790
	mov	"\0\0AS",r10
	mov	1790,r13		! source line 1790
	mov	"\0\0SE",r10
!   _temp_567 = &fileName
	add	r14,-228,r1
	store	r1,[r14+-108]
!   _temp_568 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-104]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_570 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_569 = *_temp_570  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_569) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_571 = _temp_569 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_567  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_568  sizeInBytes=4
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
	mov	1791,r13		! source line 1791
	mov	"\0\0IF",r10
!   if functionPlaceholder >= 0 then goto _Label_573		(int)
	load	[r14+-248],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_573
!	jmp	_Label_572
_Label_572:
! THEN...
	mov	1792,r13		! source line 1792
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1792,r13		! source line 1792
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_573:
! SEND STATEMENT...
	mov	1794,r13		! source line 1794
	mov	"\0\0SE",r10
!   _temp_574 = &newAddrSpace
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
	mov	1795,r13		! source line 1795
	mov	"\0\0AS",r10
	mov	1795,r13		! source line 1795
	mov	"\0\0SE",r10
!   _temp_575 = &fileName
	add	r14,-228,r1
	store	r1,[r14+-84]
!   _temp_576 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_575  sizeInBytes=4
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
	mov	1796,r13		! source line 1796
	mov	"\0\0IF",r10
!   if intIsZero (filePt) then goto _Label_577
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_577
	jmp	_Label_578
_Label_577:
! THEN...
	mov	1797,r13		! source line 1797
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1797,r13		! source line 1797
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_578:
! ASSIGNMENT STATEMENT...
	mov	1799,r13		! source line 1799
	mov	"\0\0AS",r10
	mov	1799,r13		! source line 1799
	mov	"\0\0SE",r10
!   _temp_579 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-76]
!   if intIsZero (filePt) then goto _runtimeErrorNullPointer
	load	[r14+-244],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_579  sizeInBytes=4
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
	mov	1800,r13		! source line 1800
	mov	"\0\0IF",r10
!   if initPC >= 0 then goto _Label_581		(int)
	load	[r14+-240],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_581
!	jmp	_Label_580
_Label_580:
! THEN...
	mov	1801,r13		! source line 1801
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1801,r13		! source line 1801
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_581:
! SEND STATEMENT...
	mov	1803,r13		! source line 1803
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_584 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_583 = *_temp_584  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_583) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_585 = _temp_583 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   _temp_582 = _temp_585		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-72]
!   _temp_586 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_582  sizeInBytes=4
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
	mov	1804,r13		! source line 1804
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_588 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_587 = *_temp_588  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_587) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_589 = _temp_587 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_589 = newAddrSpace  (sizeInBytes=92)
	add	r14,-204,r5
	load	[r14+-44],r4
	mov	23,r3
_Label_3019:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3019
! SEND STATEMENT...
	mov	1805,r13		! source line 1805
	mov	"\0\0SE",r10
!   _temp_590 = &_P_Kernel_fileManager
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
	mov	1806,r13		! source line 1806
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_591 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_591 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1807,r13		! source line 1807
	mov	"\0\0AS",r10
!   _temp_593 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-28]
!   _temp_594 = _temp_593 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_592 = *_temp_594  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   initUserStackTop = _temp_592 * 8192		(int)
	load	[r14+-32],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	1808,r13		! source line 1808
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_595 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_595 [999 ] into _temp_596
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
!   initSystemStackTop = _temp_596		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-236]
! SEND STATEMENT...
	mov	1809,r13		! source line 1809
	mov	"\0\0SE",r10
!   _temp_597 = &newAddrSpace
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
	mov	1810,r13		! source line 1810
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1812,r13		! source line 1812
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
	.word	_Label_598
	.word	4		! total size of parameters
	.word	256		! frame size = 256
	.word	_Label_599
	.word	8
	.word	4
	.word	_Label_600
	.word	-12
	.word	4
	.word	_Label_601
	.word	-16
	.word	4
	.word	_Label_602
	.word	-20
	.word	4
	.word	_Label_603
	.word	-24
	.word	4
	.word	_Label_604
	.word	-28
	.word	4
	.word	_Label_605
	.word	-32
	.word	4
	.word	_Label_606
	.word	-36
	.word	4
	.word	_Label_607
	.word	-40
	.word	4
	.word	_Label_608
	.word	-44
	.word	4
	.word	_Label_609
	.word	-48
	.word	4
	.word	_Label_610
	.word	-52
	.word	4
	.word	_Label_611
	.word	-56
	.word	4
	.word	_Label_612
	.word	-60
	.word	4
	.word	_Label_613
	.word	-64
	.word	4
	.word	_Label_614
	.word	-68
	.word	4
	.word	_Label_615
	.word	-72
	.word	4
	.word	_Label_616
	.word	-76
	.word	4
	.word	_Label_617
	.word	-80
	.word	4
	.word	_Label_618
	.word	-84
	.word	4
	.word	_Label_619
	.word	-88
	.word	4
	.word	_Label_620
	.word	-92
	.word	4
	.word	_Label_621
	.word	-96
	.word	4
	.word	_Label_622
	.word	-100
	.word	4
	.word	_Label_623
	.word	-104
	.word	4
	.word	_Label_624
	.word	-108
	.word	4
	.word	_Label_625
	.word	-112
	.word	4
	.word	_Label_626
	.word	-204
	.word	92
	.word	_Label_627
	.word	-228
	.word	24
	.word	_Label_628
	.word	-232
	.word	4
	.word	_Label_629
	.word	-236
	.word	4
	.word	_Label_630
	.word	-240
	.word	4
	.word	_Label_631
	.word	-244
	.word	4
	.word	_Label_632
	.word	-248
	.word	4
	.word	0
_Label_598:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_599:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_623:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_625:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_626:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_627:
	.byte	'A'
	.ascii	"fileName\0"
	.align
_Label_628:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_629:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_630:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_631:
	.byte	'P'
	.ascii	"filePt\0"
	.align
_Label_632:
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
_Label_3020:
	push	r0
	sub	r1,1,r1
	bne	_Label_3020
	mov	1817,r13		! source line 1817
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1822,r13		! source line 1822
	mov	"\0\0AS",r10
	mov	1822,r13		! source line 1822
	mov	"\0\0SE",r10
!   _temp_633 = &fileName
	add	r14,-76,r1
	store	r1,[r14+-48]
!   _temp_634 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_636 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_635 = *_temp_636  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_635) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_637 = _temp_635 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_633  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_634  sizeInBytes=4
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
!   _temp_638 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_638  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1823,r13		! source line 1823
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1824,r13		! source line 1824
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_639 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_639  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1825,r13		! source line 1825
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_640 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_640  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1826,r13		! source line 1826
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1827,r13		! source line 1827
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_641 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_641  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1828,r13		! source line 1828
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_642 = &fileName
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_642  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1829,r13		! source line 1829
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1830,r13		! source line 1830
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1831,r13		! source line 1831
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
	.word	_Label_643
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_644
	.word	8
	.word	4
	.word	_Label_645
	.word	-12
	.word	4
	.word	_Label_646
	.word	-16
	.word	4
	.word	_Label_647
	.word	-20
	.word	4
	.word	_Label_648
	.word	-24
	.word	4
	.word	_Label_649
	.word	-28
	.word	4
	.word	_Label_650
	.word	-32
	.word	4
	.word	_Label_651
	.word	-36
	.word	4
	.word	_Label_652
	.word	-40
	.word	4
	.word	_Label_653
	.word	-44
	.word	4
	.word	_Label_654
	.word	-48
	.word	4
	.word	_Label_655
	.word	-52
	.word	4
	.word	_Label_656
	.word	-76
	.word	24
	.word	0
_Label_643:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_644:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_655:
	.byte	'I'
	.ascii	"functionPlaceholder\0"
	.align
_Label_656:
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
_Label_3021:
	push	r0
	sub	r1,1,r1
	bne	_Label_3021
	mov	1836,r13		! source line 1836
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1841,r13		! source line 1841
	mov	"\0\0AS",r10
	mov	1841,r13		! source line 1841
	mov	"\0\0SE",r10
!   _temp_657 = &fileName
	add	r14,-76,r1
	store	r1,[r14+-48]
!   _temp_658 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_660 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_659 = *_temp_660  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_659) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_661 = _temp_659 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_657  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_658  sizeInBytes=4
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
!   _temp_662 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_662  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1842,r13		! source line 1842
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1843,r13		! source line 1843
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_663 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_663  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1844,r13		! source line 1844
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_664 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_664  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1845,r13		! source line 1845
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1846,r13		! source line 1846
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_665 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_665  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1847,r13		! source line 1847
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_666 = &fileName
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_666  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1848,r13		! source line 1848
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1849,r13		! source line 1849
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1850,r13		! source line 1850
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
	.word	_Label_667
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_668
	.word	8
	.word	4
	.word	_Label_669
	.word	-12
	.word	4
	.word	_Label_670
	.word	-16
	.word	4
	.word	_Label_671
	.word	-20
	.word	4
	.word	_Label_672
	.word	-24
	.word	4
	.word	_Label_673
	.word	-28
	.word	4
	.word	_Label_674
	.word	-32
	.word	4
	.word	_Label_675
	.word	-36
	.word	4
	.word	_Label_676
	.word	-40
	.word	4
	.word	_Label_677
	.word	-44
	.word	4
	.word	_Label_678
	.word	-48
	.word	4
	.word	_Label_679
	.word	-52
	.word	4
	.word	_Label_680
	.word	-76
	.word	24
	.word	0
_Label_667:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_668:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_679:
	.byte	'I'
	.ascii	"functionPlaceholder\0"
	.align
_Label_680:
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
_Label_3022:
	push	r0
	sub	r1,1,r1
	bne	_Label_3022
	mov	1855,r13		! source line 1855
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_681 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_681  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1857,r13		! source line 1857
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1858,r13		! source line 1858
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_682 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_682  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1859,r13		! source line 1859
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1860,r13		! source line 1860
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1861,r13		! source line 1861
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_683 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_683  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1862,r13		! source line 1862
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_684 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_684  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1863,r13		! source line 1863
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1864,r13		! source line 1864
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_685 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_685  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1865,r13		! source line 1865
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1866,r13		! source line 1866
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1867,r13		! source line 1867
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1868,r13		! source line 1868
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
	.word	_Label_686
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_687
	.word	8
	.word	4
	.word	_Label_688
	.word	12
	.word	4
	.word	_Label_689
	.word	16
	.word	4
	.word	_Label_690
	.word	-12
	.word	4
	.word	_Label_691
	.word	-16
	.word	4
	.word	_Label_692
	.word	-20
	.word	4
	.word	_Label_693
	.word	-24
	.word	4
	.word	_Label_694
	.word	-28
	.word	4
	.word	0
_Label_686:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_687:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_688:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_689:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_681\0"
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
_Label_3023:
	push	r0
	sub	r1,1,r1
	bne	_Label_3023
	mov	1873,r13		! source line 1873
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_695 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_695  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1875,r13		! source line 1875
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1876,r13		! source line 1876
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_696 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_696  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1877,r13		! source line 1877
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1878,r13		! source line 1878
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1879,r13		! source line 1879
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_697 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_697  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1880,r13		! source line 1880
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_698 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_698  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1881,r13		! source line 1881
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1882,r13		! source line 1882
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_699 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_699  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1883,r13		! source line 1883
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1884,r13		! source line 1884
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1885,r13		! source line 1885
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1886,r13		! source line 1886
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
	.word	_Label_700
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_701
	.word	8
	.word	4
	.word	_Label_702
	.word	12
	.word	4
	.word	_Label_703
	.word	16
	.word	4
	.word	_Label_704
	.word	-12
	.word	4
	.word	_Label_705
	.word	-16
	.word	4
	.word	_Label_706
	.word	-20
	.word	4
	.word	_Label_707
	.word	-24
	.word	4
	.word	_Label_708
	.word	-28
	.word	4
	.word	0
_Label_700:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_701:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_702:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_703:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_698\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_697\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_696\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_695\0"
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
_Label_3024:
	push	r0
	sub	r1,1,r1
	bne	_Label_3024
	mov	1891,r13		! source line 1891
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_709 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_709  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1893,r13		! source line 1893
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1894,r13		! source line 1894
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_710 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_710  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1895,r13		! source line 1895
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1896,r13		! source line 1896
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1897,r13		! source line 1897
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_711 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_711  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1898,r13		! source line 1898
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1899,r13		! source line 1899
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1900,r13		! source line 1900
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1901,r13		! source line 1901
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
	.word	_Label_712
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_713
	.word	8
	.word	4
	.word	_Label_714
	.word	12
	.word	4
	.word	_Label_715
	.word	-12
	.word	4
	.word	_Label_716
	.word	-16
	.word	4
	.word	_Label_717
	.word	-20
	.word	4
	.word	0
_Label_712:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_713:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_714:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_711\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_710\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_709\0"
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
_Label_3025:
	push	r0
	sub	r1,1,r1
	bne	_Label_3025
	mov	1906,r13		! source line 1906
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_718 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_718  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1908,r13		! source line 1908
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1909,r13		! source line 1909
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_719 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_719  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1910,r13		! source line 1910
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1911,r13		! source line 1911
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1912,r13		! source line 1912
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1912,r13		! source line 1912
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
	.word	_Label_720
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_721
	.word	8
	.word	4
	.word	_Label_722
	.word	-12
	.word	4
	.word	_Label_723
	.word	-16
	.word	4
	.word	0
_Label_720:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_721:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_206_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_206_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3026:
	push	r0
	sub	r1,1,r1
	bne	_Label_3026
	mov	2502,r13		! source line 2502
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2504,r13		! source line 2504
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2505,r13		! source line 2505
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2506,r13		! source line 2506
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_724 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_724  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2507,r13		! source line 2507
	mov	"\0\0AS",r10
!   _temp_725 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_725) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_727 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_727) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_726 = *_temp_727  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_725 = _temp_726  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2508,r13		! source line 2508
	mov	"\0\0AS",r10
!   _temp_728 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_728) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_730 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_730) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_729 = *_temp_730  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_728 = _temp_729  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2509,r13		! source line 2509
	mov	"\0\0AS",r10
!   _temp_731 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_731) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_733 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_733) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_732 = *_temp_733  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_731 = _temp_732  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2509,r13		! source line 2509
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_206_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_734
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_735
	.word	8
	.word	4
	.word	_Label_736
	.word	12
	.word	4
	.word	_Label_737
	.word	-16
	.word	4
	.word	_Label_738
	.word	-9
	.word	1
	.word	_Label_739
	.word	-20
	.word	4
	.word	_Label_740
	.word	-24
	.word	4
	.word	_Label_741
	.word	-10
	.word	1
	.word	_Label_742
	.word	-28
	.word	4
	.word	_Label_743
	.word	-32
	.word	4
	.word	_Label_744
	.word	-11
	.word	1
	.word	_Label_745
	.word	-36
	.word	4
	.word	_Label_746
	.word	-12
	.word	1
	.word	_Label_747
	.word	-40
	.word	4
	.word	_Label_748
	.word	-44
	.word	4
	.word	0
_Label_734:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_735:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_736:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_737:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_738:
	.byte	'C'
	.ascii	"_temp_732\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_740:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_741:
	.byte	'C'
	.ascii	"_temp_729\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_744:
	.byte	'C'
	.ascii	"_temp_726\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_746:
	.byte	'C'
	.ascii	"_temp_724\0"
	.align
_Label_747:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_748:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_205_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_205_printFCB,r1
	push	r1
	mov	3,r1
_Label_3027:
	push	r0
	sub	r1,1,r1
	bne	_Label_3027
	mov	2512,r13		! source line 2512
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_750 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_749 = *_temp_750  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_749  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2513,r13		! source line 2513
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2514,r13		! source line 2514
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2514,r13		! source line 2514
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_205_printFCB:
	.word	_sourceFileName
	.word	_Label_751
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_752
	.word	8
	.word	4
	.word	_Label_753
	.word	-12
	.word	4
	.word	_Label_754
	.word	-16
	.word	4
	.word	0
_Label_751:
	.ascii	"printFCB\0"
	.align
_Label_752:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_204_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_204_printOpen,r1
	push	r1
	mov	4,r1
_Label_3028:
	push	r0
	sub	r1,1,r1
	bne	_Label_3028
	mov	2517,r13		! source line 2517
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_755 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_755  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2518,r13		! source line 2518
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_756 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_756  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2519,r13		! source line 2519
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_757 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_757  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2520,r13		! source line 2520
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2521,r13		! source line 2521
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
	mov	2521,r13		! source line 2521
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_204_printOpen:
	.word	_sourceFileName
	.word	_Label_758
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_759
	.word	8
	.word	4
	.word	_Label_760
	.word	-12
	.word	4
	.word	_Label_761
	.word	-16
	.word	4
	.word	_Label_762
	.word	-20
	.word	4
	.word	0
_Label_758:
	.ascii	"printOpen\0"
	.align
_Label_759:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_763
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_763:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_764
	.word	_sourceFileName
	.word	125		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_764:
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
_Label_3029:
	push	r0
	sub	r1,1,r1
	bne	_Label_3029
	mov	269,r13		! source line 269
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_766		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_766
!	jmp	_Label_765
_Label_765:
! THEN...
	mov	271,r13		! source line 271
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_767 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_767  sizeInBytes=4
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
_Label_766:
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
	.word	_Label_769
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_770
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_771
	.word	12
	.word	4
	.word	_Label_772
	.word	-12
	.word	4
	.word	_Label_773
	.word	-16
	.word	4
	.word	0
_Label_769:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_770:
	.ascii	"Pself\0"
	.align
_Label_771:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_768\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_767\0"
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
_Label_3030:
	push	r0
	sub	r1,1,r1
	bne	_Label_3030
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
!   if count != 2147483647 then goto _Label_775		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_775
!	jmp	_Label_774
_Label_774:
! THEN...
	mov	285,r13		! source line 285
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_776 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_776  sizeInBytes=4
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
_Label_775:
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
!   if count > 0 then goto _Label_778		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_778
!	jmp	_Label_777
_Label_777:
! THEN...
	mov	289,r13		! source line 289
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	289,r13		! source line 289
	mov	"\0\0AS",r10
	mov	289,r13		! source line 289
	mov	"\0\0SE",r10
!   _temp_779 = &waitingThreads
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
!   _temp_780 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_780 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	291,r13		! source line 291
	mov	"\0\0SE",r10
!   _temp_781 = &_P_Kernel_readyList
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
_Label_778:
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
	.word	_Label_782
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_783
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_784
	.word	-12
	.word	4
	.word	_Label_785
	.word	-16
	.word	4
	.word	_Label_786
	.word	-20
	.word	4
	.word	_Label_787
	.word	-24
	.word	4
	.word	_Label_788
	.word	-28
	.word	4
	.word	_Label_789
	.word	-32
	.word	4
	.word	0
_Label_782:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_783:
	.ascii	"Pself\0"
	.align
_Label_784:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_788:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_789:
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
_Label_3031:
	push	r0
	sub	r1,1,r1
	bne	_Label_3031
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
!   if count != -2147483648 then goto _Label_791		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_791
!	jmp	_Label_790
_Label_790:
! THEN...
	mov	303,r13		! source line 303
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_792 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_792  sizeInBytes=4
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
_Label_791:
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
!   if count >= 0 then goto _Label_794		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_794
!	jmp	_Label_793
_Label_793:
! THEN...
	mov	307,r13		! source line 307
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0SE",r10
!   _temp_795 = &waitingThreads
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
_Label_794:
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
	.word	_Label_796
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_797
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_798
	.word	-12
	.word	4
	.word	_Label_799
	.word	-16
	.word	4
	.word	_Label_800
	.word	-20
	.word	4
	.word	0
_Label_796:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_797:
	.ascii	"Pself\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_800:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_801
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_801:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_802
	.word	_sourceFileName
	.word	138		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_802:
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
_Label_3032:
	push	r0
	sub	r1,1,r1
	bne	_Label_3032
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
	.word	_Label_804
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_805
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_806
	.word	-12
	.word	4
	.word	0
_Label_804:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_805:
	.ascii	"Pself\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_803\0"
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
_Label_3033:
	push	r0
	sub	r1,1,r1
	bne	_Label_3033
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_808		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_808
!	jmp	_Label_807
_Label_807:
! THEN...
	mov	343,r13		! source line 343
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_809 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_809  sizeInBytes=4
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
_Label_808:
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
!   if heldBy == 0 then goto _Label_813		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_813
!   _temp_812 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_814
_Label_813:
!   _temp_812 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_814:
!   if _temp_812 then goto _Label_811 else goto _Label_810
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_810
	jmp	_Label_811
_Label_810:
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
	jmp	_Label_815
_Label_811:
! ELSE...
	mov	349,r13		! source line 349
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	349,r13		! source line 349
	mov	"\0\0SE",r10
!   _temp_816 = &waitingThreads
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
_Label_815:
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
	.word	_Label_817
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_818
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_819
	.word	-16
	.word	4
	.word	_Label_820
	.word	-9
	.word	1
	.word	_Label_821
	.word	-20
	.word	4
	.word	_Label_822
	.word	-24
	.word	4
	.word	0
_Label_817:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_818:
	.ascii	"Pself\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_820:
	.byte	'C'
	.ascii	"_temp_812\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_822:
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
_Label_3034:
	push	r0
	sub	r1,1,r1
	bne	_Label_3034
	mov	357,r13		! source line 357
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	361,r13		! source line 361
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_824		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_824
!	jmp	_Label_823
_Label_823:
! THEN...
	mov	362,r13		! source line 362
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_825 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_825  sizeInBytes=4
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
_Label_824:
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
!   _temp_826 = &waitingThreads
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
!   if t == 0 then goto _Label_828		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_828
!	jmp	_Label_827
_Label_827:
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
!   _temp_829 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_829 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	368,r13		! source line 368
	mov	"\0\0SE",r10
!   _temp_830 = &_P_Kernel_readyList
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
	jmp	_Label_831
_Label_828:
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
_Label_831:
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
	.word	_Label_832
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_833
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_834
	.word	-12
	.word	4
	.word	_Label_835
	.word	-16
	.word	4
	.word	_Label_836
	.word	-20
	.word	4
	.word	_Label_837
	.word	-24
	.word	4
	.word	_Label_838
	.word	-28
	.word	4
	.word	_Label_839
	.word	-32
	.word	4
	.word	0
_Label_832:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_833:
	.ascii	"Pself\0"
	.align
_Label_834:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_835:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_836:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_837:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_838:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_839:
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
_Label_3035:
	push	r0
	sub	r1,1,r1
	bne	_Label_3035
	mov	378,r13		! source line 378
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	379,r13		! source line 379
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_842		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_842
!	jmp	_Label_841
_Label_841:
!   _temp_840 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_843
_Label_842:
!   _temp_840 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_843:
!   ReturnResult: _temp_840  (sizeInBytes=1)
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
	.word	_Label_844
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_845
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_846
	.word	-9
	.word	1
	.word	0
_Label_844:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_845:
	.ascii	"Pself\0"
	.align
_Label_846:
	.byte	'C'
	.ascii	"_temp_840\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_847
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_847:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_848
	.word	_sourceFileName
	.word	152		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_848:
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
_Label_3036:
	push	r0
	sub	r1,1,r1
	bne	_Label_3036
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
	.word	_Label_850
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_851
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_852
	.word	-12
	.word	4
	.word	0
_Label_850:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_851:
	.ascii	"Pself\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_849\0"
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
_Label_3037:
	push	r0
	sub	r1,1,r1
	bne	_Label_3037
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
!   Retrieve Result: targetName=_temp_855  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_855 then goto _Label_854 else goto _Label_853
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_853
	jmp	_Label_854
_Label_853:
! THEN...
	mov	429,r13		! source line 429
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_856 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_856  sizeInBytes=4
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
_Label_854:
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
!   _temp_857 = &waitingThreads
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
	.word	_Label_858
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_859
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_860
	.word	12
	.word	4
	.word	_Label_861
	.word	-16
	.word	4
	.word	_Label_862
	.word	-20
	.word	4
	.word	_Label_863
	.word	-9
	.word	1
	.word	_Label_864
	.word	-24
	.word	4
	.word	0
_Label_858:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_859:
	.ascii	"Pself\0"
	.align
_Label_860:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_857\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_856\0"
	.align
_Label_863:
	.byte	'C'
	.ascii	"_temp_855\0"
	.align
_Label_864:
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
_Label_3038:
	push	r0
	sub	r1,1,r1
	bne	_Label_3038
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
!   Retrieve Result: targetName=_temp_867  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_867 then goto _Label_866 else goto _Label_865
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_865
	jmp	_Label_866
_Label_865:
! THEN...
	mov	446,r13		! source line 446
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_868 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_868  sizeInBytes=4
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
_Label_866:
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
!   _temp_869 = &waitingThreads
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
!   if t == 0 then goto _Label_871		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_871
!	jmp	_Label_870
_Label_870:
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
!   _temp_872 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_872 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	452,r13		! source line 452
	mov	"\0\0SE",r10
!   _temp_873 = &_P_Kernel_readyList
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
_Label_871:
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
	.word	_Label_874
	.word	8		! total size of parameters
	.word	36		! frame size = 36
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
	.word	0
_Label_874:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_875:
	.ascii	"Pself\0"
	.align
_Label_876:
	.byte	'P'
	.ascii	"mutex\0"
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
	.ascii	"_temp_869\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_881:
	.byte	'C'
	.ascii	"_temp_867\0"
	.align
_Label_882:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_883:
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
_Label_3039:
	push	r0
	sub	r1,1,r1
	bne	_Label_3039
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
!   Retrieve Result: targetName=_temp_886  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_886 then goto _Label_885 else goto _Label_884
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_884
	jmp	_Label_885
_Label_884:
! THEN...
	mov	464,r13		! source line 464
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_887 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_887  sizeInBytes=4
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
_Label_885:
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
_Label_888:
!	jmp	_Label_889
_Label_889:
	mov	467,r13		! source line 467
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	468,r13		! source line 468
	mov	"\0\0AS",r10
	mov	468,r13		! source line 468
	mov	"\0\0SE",r10
!   _temp_891 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_892
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_892
	jmp	_Label_893
_Label_892:
! THEN...
	mov	470,r13		! source line 470
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	470,r13		! source line 470
	mov	"\0\0BR",r10
	jmp	_Label_890
! END IF...
_Label_893:
! ASSIGNMENT STATEMENT...
	mov	472,r13		! source line 472
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_894 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_894 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	473,r13		! source line 473
	mov	"\0\0SE",r10
!   _temp_895 = &_P_Kernel_readyList
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
	jmp	_Label_888
_Label_890:
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
	.word	_Label_896
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_897
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_898
	.word	12
	.word	4
	.word	_Label_899
	.word	-16
	.word	4
	.word	_Label_900
	.word	-20
	.word	4
	.word	_Label_901
	.word	-24
	.word	4
	.word	_Label_902
	.word	-28
	.word	4
	.word	_Label_903
	.word	-9
	.word	1
	.word	_Label_904
	.word	-32
	.word	4
	.word	_Label_905
	.word	-36
	.word	4
	.word	0
_Label_896:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_897:
	.ascii	"Pself\0"
	.align
_Label_898:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_887\0"
	.align
_Label_903:
	.byte	'C'
	.ascii	"_temp_886\0"
	.align
_Label_904:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_905:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_906
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
_Label_906:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_907
	.word	_sourceFileName
	.word	165		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_907:
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
_Label_3040:
	push	r0
	sub	r1,1,r1
	bne	_Label_3040
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
!   _temp_908 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_908) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_908 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	495,r13		! source line 495
	mov	"\0\0AS",r10
!   _temp_909 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_909 [0 ] into _temp_910
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
!   Data Move: *_temp_910 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	496,r13		! source line 496
	mov	"\0\0AS",r10
!   _temp_911 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_911 [999 ] into _temp_912
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
!   Data Move: *_temp_912 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	497,r13		! source line 497
	mov	"\0\0AS",r10
!   _temp_913 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_913 [999 ] into _temp_914
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
!   stackTop = _temp_914		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	498,r13		! source line 498
	mov	"\0\0AS",r10
!   _temp_915 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_917 = &_temp_916
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_917 = _temp_917 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_919:
!   Data Move: *_temp_917 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_917 = _temp_917 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_918 = _temp_918 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_918) then goto _Label_919
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_919
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_920 = &_temp_916
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3041
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3041:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_915 = *_temp_920  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3042:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3042
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
!   _temp_921 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_923 = &_temp_922
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_923 = _temp_923 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_925:
!   Data Move: *_temp_923 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_923 = _temp_923 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_924 = _temp_924 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_924) then goto _Label_925
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_925
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_926 = &_temp_922
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3043
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3043:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_921 = *_temp_926  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3044:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3044
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
	.word	_Label_927
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_928
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_929
	.word	12
	.word	4
	.word	_Label_930
	.word	-12
	.word	4
	.word	_Label_931
	.word	-16
	.word	4
	.word	_Label_932
	.word	-20
	.word	4
	.word	_Label_933
	.word	-84
	.word	64
	.word	_Label_934
	.word	-88
	.word	4
	.word	_Label_935
	.word	-92
	.word	4
	.word	_Label_936
	.word	-96
	.word	4
	.word	_Label_937
	.word	-100
	.word	4
	.word	_Label_938
	.word	-156
	.word	56
	.word	_Label_939
	.word	-160
	.word	4
	.word	_Label_940
	.word	-164
	.word	4
	.word	_Label_941
	.word	-168
	.word	4
	.word	_Label_942
	.word	-172
	.word	4
	.word	_Label_943
	.word	-176
	.word	4
	.word	_Label_944
	.word	-180
	.word	4
	.word	_Label_945
	.word	-184
	.word	4
	.word	_Label_946
	.word	-188
	.word	4
	.word	0
_Label_927:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_928:
	.ascii	"Pself\0"
	.align
_Label_929:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_926\0"
	.align
_Label_931:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_932:
	.byte	'?'
	.ascii	"_temp_923\0"
	.align
_Label_933:
	.byte	'?'
	.ascii	"_temp_922\0"
	.align
_Label_934:
	.byte	'?'
	.ascii	"_temp_921\0"
	.align
_Label_935:
	.byte	'?'
	.ascii	"_temp_920\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_918\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_917\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_916\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_915\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_914\0"
	.align
_Label_941:
	.byte	'?'
	.ascii	"_temp_913\0"
	.align
_Label_942:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_908\0"
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
_Label_3045:
	push	r0
	sub	r1,1,r1
	bne	_Label_3045
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
!   _temp_947 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_947  (sizeInBytes=4)
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
!   _temp_949 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_948  sizeInBytes=4
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
	.word	_Label_950
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_951
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_952
	.word	12
	.word	4
	.word	_Label_953
	.word	16
	.word	4
	.word	_Label_954
	.word	-12
	.word	4
	.word	_Label_955
	.word	-16
	.word	4
	.word	_Label_956
	.word	-20
	.word	4
	.word	_Label_957
	.word	-24
	.word	4
	.word	_Label_958
	.word	-28
	.word	4
	.word	0
_Label_950:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_951:
	.ascii	"Pself\0"
	.align
_Label_952:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_953:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_954:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_955:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_956:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_957:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_958:
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
_Label_3046:
	push	r0
	sub	r1,1,r1
	bne	_Label_3046
	mov	529,r13		! source line 529
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	545,r13		! source line 545
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_961 == _P_Kernel_currentThread then goto _Label_960		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_960
!	jmp	_Label_959
_Label_959:
! THEN...
	mov	546,r13		! source line 546
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_962 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_962  sizeInBytes=4
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
_Label_960:
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
!   _temp_963 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_965		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_965
!	jmp	_Label_964
_Label_964:
! THEN...
	mov	557,r13		! source line 557
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	557,r13		! source line 557
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_967		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_967
!	jmp	_Label_966
_Label_966:
! THEN...
	mov	558,r13		! source line 558
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_968 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_968  sizeInBytes=4
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
_Label_967:
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
!   _temp_970 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_969  sizeInBytes=4
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
_Label_965:
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
	.word	_Label_971
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_972
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_973
	.word	-12
	.word	4
	.word	_Label_974
	.word	-16
	.word	4
	.word	_Label_975
	.word	-20
	.word	4
	.word	_Label_976
	.word	-24
	.word	4
	.word	_Label_977
	.word	-28
	.word	4
	.word	_Label_978
	.word	-32
	.word	4
	.word	_Label_979
	.word	-36
	.word	4
	.word	_Label_980
	.word	-40
	.word	4
	.word	_Label_981
	.word	-44
	.word	4
	.word	0
_Label_971:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_972:
	.ascii	"Pself\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_970\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_963\0"
	.align
_Label_977:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_978:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_979:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_980:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_981:
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
_Label_3047:
	push	r0
	sub	r1,1,r1
	bne	_Label_3047
	mov	569,r13		! source line 569
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	581,r13		! source line 581
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_983		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_983
!	jmp	_Label_982
_Label_982:
! THEN...
	mov	582,r13		! source line 582
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_984 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_984  sizeInBytes=4
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
_Label_983:
! IF STATEMENT...
	mov	585,r13		! source line 585
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_987 == _P_Kernel_currentThread then goto _Label_986		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_986
!	jmp	_Label_985
_Label_985:
! THEN...
	mov	586,r13		! source line 586
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_988 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_988  sizeInBytes=4
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
_Label_986:
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
!   _temp_989 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_990
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_990
	jmp	_Label_991
_Label_990:
! THEN...
	mov	594,r13		! source line 594
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_992 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_992  sizeInBytes=4
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
_Label_991:
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
	.word	_Label_993
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_994
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_995
	.word	-12
	.word	4
	.word	_Label_996
	.word	-16
	.word	4
	.word	_Label_997
	.word	-20
	.word	4
	.word	_Label_998
	.word	-24
	.word	4
	.word	_Label_999
	.word	-28
	.word	4
	.word	_Label_1000
	.word	-32
	.word	4
	.word	0
_Label_993:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_994:
	.ascii	"Pself\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_1000:
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
_Label_3048:
	push	r0
	sub	r1,1,r1
	bne	_Label_3048
	mov	601,r13		! source line 601
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	607,r13		! source line 607
	mov	"\0\0IF",r10
!   _temp_1004 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1004 [0 ] into _temp_1005
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
!   Data Move: _temp_1003 = *_temp_1005  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1003 == 606348324 then goto _Label_1002		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1002
!	jmp	_Label_1001
_Label_1001:
! THEN...
	mov	608,r13		! source line 608
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1006 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1006  sizeInBytes=4
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
	jmp	_Label_1007
_Label_1002:
! ELSE...
	mov	609,r13		! source line 609
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	609,r13		! source line 609
	mov	"\0\0IF",r10
!   _temp_1011 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1011 [999 ] into _temp_1012
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
!   Data Move: _temp_1010 = *_temp_1012  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1010 == 606348324 then goto _Label_1009		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1009
!	jmp	_Label_1008
_Label_1008:
! THEN...
	mov	610,r13		! source line 610
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1013 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1013  sizeInBytes=4
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
_Label_1009:
! END IF...
_Label_1007:
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
	.word	_Label_1014
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1015
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1016
	.word	-12
	.word	4
	.word	_Label_1017
	.word	-16
	.word	4
	.word	_Label_1018
	.word	-20
	.word	4
	.word	_Label_1019
	.word	-24
	.word	4
	.word	_Label_1020
	.word	-28
	.word	4
	.word	_Label_1021
	.word	-32
	.word	4
	.word	_Label_1022
	.word	-36
	.word	4
	.word	_Label_1023
	.word	-40
	.word	4
	.word	0
_Label_1014:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1015:
	.ascii	"Pself\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_1010\0"
	.align
_Label_1020:
	.byte	'?'
	.ascii	"_temp_1006\0"
	.align
_Label_1021:
	.byte	'?'
	.ascii	"_temp_1005\0"
	.align
_Label_1022:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1023:
	.byte	'?'
	.ascii	"_temp_1003\0"
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
_Label_3049:
	push	r0
	sub	r1,1,r1
	bne	_Label_3049
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
!   _temp_1024 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1024  sizeInBytes=4
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
!   _temp_1025 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1025  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	625,r13		! source line 625
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1026  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1027 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1027  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1028 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1028  sizeInBytes=4
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
!   _temp_1033 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1034 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1033  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1029:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1034 then goto _Label_1032		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1032
_Label_1030:
	mov	629,r13		! source line 629
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1035 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1035  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1036 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1036  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1037 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1037  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1039 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1039 [i ] into _temp_1040
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
!   Data Move: _temp_1038 = *_temp_1040  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1038  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1041 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1041  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	634,r13		! source line 634
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1043 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1043 [i ] into _temp_1044
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
!   Data Move: _temp_1042 = *_temp_1044  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1042  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1045 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1045  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	636,r13		! source line 636
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1031:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1029
! END FOR
_Label_1032:
! CALL STATEMENT...
!   _temp_1046 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-116]
!   _temp_1047 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1046  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1047  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	638,r13		! source line 638
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1048 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-108]
!   _temp_1050 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1050 [0 ] into _temp_1051
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
!   _temp_1049 = _temp_1051		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1048  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1049  sizeInBytes=4
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
	be	_Label_1054
	cmp	r1,2
	be	_Label_1055
	cmp	r1,3
	be	_Label_1056
	cmp	r1,4
	be	_Label_1057
	cmp	r1,5
	be	_Label_1058
	jmp	_Label_1052
! CASE 1...
_Label_1054:
! CALL STATEMENT...
!   _temp_1059 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1059  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	642,r13		! source line 642
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	643,r13		! source line 643
	mov	"\0\0BR",r10
	jmp	_Label_1053
! CASE 2...
_Label_1055:
! CALL STATEMENT...
!   _temp_1060 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1060  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	645,r13		! source line 645
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	646,r13		! source line 646
	mov	"\0\0BR",r10
	jmp	_Label_1053
! CASE 3...
_Label_1056:
! CALL STATEMENT...
!   _temp_1061 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1061  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	648,r13		! source line 648
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	649,r13		! source line 649
	mov	"\0\0BR",r10
	jmp	_Label_1053
! CASE 4...
_Label_1057:
! CALL STATEMENT...
!   _temp_1062 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1062  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	651,r13		! source line 651
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	652,r13		! source line 652
	mov	"\0\0BR",r10
	jmp	_Label_1053
! CASE 5...
_Label_1058:
! CALL STATEMENT...
!   _temp_1063 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1063  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	655,r13		! source line 655
	mov	"\0\0BR",r10
	jmp	_Label_1053
! DEFAULT CASE...
_Label_1052:
! CALL STATEMENT...
!   _temp_1064 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1064  sizeInBytes=4
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
_Label_1053:
! CALL STATEMENT...
!   _temp_1065 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1065  sizeInBytes=4
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
!   _temp_1066 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1066  sizeInBytes=4
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
!   _temp_1071 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1072 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1071  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1067:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1072 then goto _Label_1070		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1070
_Label_1068:
	mov	663,r13		! source line 663
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1073 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1073  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1074 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1074  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	665,r13		! source line 665
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1075 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1075  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	666,r13		! source line 666
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1077 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1077 [i ] into _temp_1078
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
!   Data Move: _temp_1076 = *_temp_1078  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1076  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1079 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1079  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	668,r13		! source line 668
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1081 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1081 [i ] into _temp_1082
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
!   Data Move: _temp_1080 = *_temp_1082  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1080  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1083 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1083  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1069:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1067
! END FOR
_Label_1070:
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
	.word	_Label_1084
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1085
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1086
	.word	-12
	.word	4
	.word	_Label_1087
	.word	-16
	.word	4
	.word	_Label_1088
	.word	-20
	.word	4
	.word	_Label_1089
	.word	-24
	.word	4
	.word	_Label_1090
	.word	-28
	.word	4
	.word	_Label_1091
	.word	-32
	.word	4
	.word	_Label_1092
	.word	-36
	.word	4
	.word	_Label_1093
	.word	-40
	.word	4
	.word	_Label_1094
	.word	-44
	.word	4
	.word	_Label_1095
	.word	-48
	.word	4
	.word	_Label_1096
	.word	-52
	.word	4
	.word	_Label_1097
	.word	-56
	.word	4
	.word	_Label_1098
	.word	-60
	.word	4
	.word	_Label_1099
	.word	-64
	.word	4
	.word	_Label_1100
	.word	-68
	.word	4
	.word	_Label_1101
	.word	-72
	.word	4
	.word	_Label_1102
	.word	-76
	.word	4
	.word	_Label_1103
	.word	-80
	.word	4
	.word	_Label_1104
	.word	-84
	.word	4
	.word	_Label_1105
	.word	-88
	.word	4
	.word	_Label_1106
	.word	-92
	.word	4
	.word	_Label_1107
	.word	-96
	.word	4
	.word	_Label_1108
	.word	-100
	.word	4
	.word	_Label_1109
	.word	-104
	.word	4
	.word	_Label_1110
	.word	-108
	.word	4
	.word	_Label_1111
	.word	-112
	.word	4
	.word	_Label_1112
	.word	-116
	.word	4
	.word	_Label_1113
	.word	-120
	.word	4
	.word	_Label_1114
	.word	-124
	.word	4
	.word	_Label_1115
	.word	-128
	.word	4
	.word	_Label_1116
	.word	-132
	.word	4
	.word	_Label_1117
	.word	-136
	.word	4
	.word	_Label_1118
	.word	-140
	.word	4
	.word	_Label_1119
	.word	-144
	.word	4
	.word	_Label_1120
	.word	-148
	.word	4
	.word	_Label_1121
	.word	-152
	.word	4
	.word	_Label_1122
	.word	-156
	.word	4
	.word	_Label_1123
	.word	-160
	.word	4
	.word	_Label_1124
	.word	-164
	.word	4
	.word	_Label_1125
	.word	-168
	.word	4
	.word	_Label_1126
	.word	-172
	.word	4
	.word	_Label_1127
	.word	-176
	.word	4
	.word	_Label_1128
	.word	-180
	.word	4
	.word	_Label_1129
	.word	-184
	.word	4
	.word	_Label_1130
	.word	-188
	.word	4
	.word	_Label_1131
	.word	-192
	.word	4
	.word	_Label_1132
	.word	-196
	.word	4
	.word	0
_Label_1084:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1085:
	.ascii	"Pself\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1098:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1099:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1102:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1104:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1131:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1132:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1133
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1133:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1134
	.word	_sourceFileName
	.word	192		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1134:
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
_Label_3050:
	push	r0
	sub	r1,1,r1
	bne	_Label_3050
	mov	728,r13		! source line 728
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1135 = _StringConst_103
	set	_StringConst_103,r1
	set	-45976,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1135  sizeInBytes=4
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
!   _temp_1136 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45972,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1138 = &_temp_1137
	set	-45968,r1
	add	r14,r1,r1
	store	r1,[r14+-4324]
!   _temp_1138 = _temp_1138 + 4
	load	[r14+-4324],r1
	add	r1,4,r1
	store	r1,[r14+-4324]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1140 = zeros  (sizeInBytes=4164)
	add	r14,-4316,r4
	mov	1041,r3
_Label_3051:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3051
!   _temp_1140 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4316]
	mov	10,r1
	store	r1,[r14+-4320]
_Label_1142:
!   Data Move: *_temp_1138 = _temp_1140  (sizeInBytes=4164)
	add	r14,-4316,r5
	load	[r14+-4324],r4
	mov	1041,r3
_Label_3052:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3052
!   _temp_1138 = _temp_1138 + 4164
	load	[r14+-4324],r1
	add	r1,4164,r1
	store	r1,[r14+-4324]
!   _temp_1139 = _temp_1139 + -1
	load	[r14+-4320],r1
	add	r1,-1,r1
	store	r1,[r14+-4320]
!   if intNotZero (_temp_1139) then goto _Label_1142
	load	[r14+-4320],r1
	cmp	r1,r0
	bne	_Label_1142
!   Initialize the array size...
	mov	10,r1
	set	-45968,r2
	store	r1,[r14+r2]
!   _temp_1143 = &_temp_1137
	set	-45968,r1
	add	r14,r1,r1
	store	r1,[r14+-148]
!   make sure array has size 10
	set	-45972,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3053
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3053:
!   make sure array has size 10
	load	[r14+-148],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1136 = *_temp_1143  (sizeInBytes=41644)
	load	[r14+-148],r5
	set	-45972,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3054:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3054
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
!   _temp_1149 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-140]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1150 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-136]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1149  (sizeInBytes=4)
	load	[r14+-140],r1
	set	-45980,r2
	store	r1,[r14+r2]
_Label_1145:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1150 then goto _Label_1148		
	set	-45980,r1
	load	[r14+r1],r1
	load	[r14+-136],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1148
_Label_1146:
	mov	740,r13		! source line 740
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	741,r13		! source line 741
	mov	"\0\0AS",r10
!   _temp_1151 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-132]
!   Move address of _temp_1151 [i ] into _temp_1152
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
!   _temp_1153 = _temp_1152 + 76
	load	[r14+-128],r1
	add	r1,76,r1
	store	r1,[r14+-124]
!   Data Move: *_temp_1153 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-124],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	742,r13		! source line 742
	mov	"\0\0AS",r10
!   _temp_1154 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-120]
!   Move address of _temp_1154 [i ] into _temp_1155
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
!   _temp_1156 = _temp_1155 + 12
	load	[r14+-116],r1
	add	r1,12,r1
	store	r1,[r14+-112]
!   NEW ARRAY Constructor...
!   _temp_1158 = &_temp_1157
	add	r14,-108,r1
	store	r1,[r14+-52]
!   _temp_1158 = _temp_1158 + 4
	load	[r14+-52],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Next value...
	mov	13,r1
	store	r1,[r14+-48]
_Label_1160:
!   Data Move: *_temp_1158 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-52],r2
	store	r1,[r2]
!   _temp_1158 = _temp_1158 + 4
	load	[r14+-52],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_1159 = _temp_1159 + -1
	load	[r14+-48],r1
	add	r1,-1,r1
	store	r1,[r14+-48]
!   if intNotZero (_temp_1159) then goto _Label_1160
	load	[r14+-48],r1
	cmp	r1,r0
	bne	_Label_1160
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-108]
!   _temp_1161 = &_temp_1157
	add	r14,-108,r1
	store	r1,[r14+-44]
!   make sure array has size 13
	load	[r14+-112],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3055
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3055:
!   make sure array has size 13
	load	[r14+-44],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1156 = *_temp_1161  (sizeInBytes=56)
	load	[r14+-44],r5
	load	[r14+-112],r4
	mov	14,r3
_Label_3056:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3056
! SEND STATEMENT...
	mov	743,r13		! source line 743
	mov	"\0\0SE",r10
!   _temp_1163 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1163 [i ] into _temp_1164
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
!   _temp_1162 = _temp_1164		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   _temp_1165 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1162  sizeInBytes=4
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
_Label_1147:
!   i = i + 1
	set	-45980,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45980,r2
	store	r1,[r14+r2]
	jmp	_Label_1145
! END FOR
_Label_1148:
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
!   _temp_1167 = &threadManagerLock
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
!   _temp_1169 = &aThreadBecameFree
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
	.word	_Label_1170
	.word	4		! total size of parameters
	.word	45980		! frame size = 45980
	.word	_Label_1171
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1172
	.word	-12
	.word	4
	.word	_Label_1173
	.word	-16
	.word	4
	.word	_Label_1174
	.word	-20
	.word	4
	.word	_Label_1175
	.word	-24
	.word	4
	.word	_Label_1176
	.word	-28
	.word	4
	.word	_Label_1177
	.word	-32
	.word	4
	.word	_Label_1178
	.word	-36
	.word	4
	.word	_Label_1179
	.word	-40
	.word	4
	.word	_Label_1180
	.word	-44
	.word	4
	.word	_Label_1181
	.word	-48
	.word	4
	.word	_Label_1182
	.word	-52
	.word	4
	.word	_Label_1183
	.word	-108
	.word	56
	.word	_Label_1184
	.word	-112
	.word	4
	.word	_Label_1185
	.word	-116
	.word	4
	.word	_Label_1186
	.word	-120
	.word	4
	.word	_Label_1187
	.word	-124
	.word	4
	.word	_Label_1188
	.word	-128
	.word	4
	.word	_Label_1189
	.word	-132
	.word	4
	.word	_Label_1190
	.word	-136
	.word	4
	.word	_Label_1191
	.word	-140
	.word	4
	.word	_Label_1192
	.word	-144
	.word	4
	.word	_Label_1193
	.word	-148
	.word	4
	.word	_Label_1194
	.word	-152
	.word	4
	.word	_Label_1195
	.word	-4316
	.word	4164
	.word	_Label_1196
	.word	-4320
	.word	4
	.word	_Label_1197
	.word	-4324
	.word	4
	.word	_Label_1198
	.word	-45968
	.word	41644
	.word	_Label_1199
	.word	-45972
	.word	4
	.word	_Label_1200
	.word	-45976
	.word	4
	.word	_Label_1201
	.word	-45980
	.word	4
	.word	0
_Label_1170:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1171:
	.ascii	"Pself\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1159\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1157\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1152\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1151\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1149\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1201:
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
_Label_3057:
	push	r0
	sub	r1,1,r1
	bne	_Label_3057
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
!   _temp_1202 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1202  sizeInBytes=4
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
!   _temp_1207 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1208 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1207  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1203:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1208 then goto _Label_1206		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1206
_Label_1204:
	mov	762,r13		! source line 762
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1209 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1209  sizeInBytes=4
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
!   _temp_1210 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1210  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	765,r13		! source line 765
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1212 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1212 [i ] into _temp_1213
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
!   _temp_1211 = _temp_1213		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1211  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	766,r13		! source line 766
	mov	"\0\0CA",r10
	call	_function_209_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1205:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1203
! END FOR
_Label_1206:
! CALL STATEMENT...
!   _temp_1214 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1214  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	768,r13		! source line 768
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	769,r13		! source line 769
	mov	"\0\0SE",r10
!   _temp_1215 = _function_208_PrintObjectAddr
	set	_function_208_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1216 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1215  sizeInBytes=4
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
	.word	_Label_1217
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1218
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1219
	.word	-12
	.word	4
	.word	_Label_1220
	.word	-16
	.word	4
	.word	_Label_1221
	.word	-20
	.word	4
	.word	_Label_1222
	.word	-24
	.word	4
	.word	_Label_1223
	.word	-28
	.word	4
	.word	_Label_1224
	.word	-32
	.word	4
	.word	_Label_1225
	.word	-36
	.word	4
	.word	_Label_1226
	.word	-40
	.word	4
	.word	_Label_1227
	.word	-44
	.word	4
	.word	_Label_1228
	.word	-48
	.word	4
	.word	_Label_1229
	.word	-52
	.word	4
	.word	_Label_1230
	.word	-56
	.word	4
	.word	_Label_1231
	.word	-60
	.word	4
	.word	0
_Label_1217:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1218:
	.ascii	"Pself\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1215\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1222:
	.byte	'?'
	.ascii	"_temp_1213\0"
	.align
_Label_1223:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1224:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1225:
	.byte	'?'
	.ascii	"_temp_1210\0"
	.align
_Label_1226:
	.byte	'?'
	.ascii	"_temp_1209\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1207\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1230:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1231:
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
_Label_3058:
	push	r0
	sub	r1,1,r1
	bne	_Label_3058
	mov	776,r13		! source line 776
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	783,r13		! source line 783
	mov	"\0\0SE",r10
!   _temp_1232 = &threadManagerLock
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
_Label_1233:
	mov	784,r13		! source line 784
	mov	"\0\0SE",r10
!   _temp_1236 = &freeList
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
!   if result==true then goto _Label_1234 else goto _Label_1235
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1235
	jmp	_Label_1234
_Label_1234:
	mov	784,r13		! source line 784
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	785,r13		! source line 785
	mov	"\0\0SE",r10
!   _temp_1237 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1238 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1237  sizeInBytes=4
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
	jmp	_Label_1233
_Label_1235:
! ASSIGNMENT STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0AS",r10
	mov	787,r13		! source line 787
	mov	"\0\0SE",r10
!   _temp_1239 = &freeList
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
!   _temp_1240 = item + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1240 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	789,r13		! source line 789
	mov	"\0\0SE",r10
!   _temp_1241 = &threadManagerLock
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
	.word	_Label_1242
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1243
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1244
	.word	-12
	.word	4
	.word	_Label_1245
	.word	-16
	.word	4
	.word	_Label_1246
	.word	-20
	.word	4
	.word	_Label_1247
	.word	-24
	.word	4
	.word	_Label_1248
	.word	-28
	.word	4
	.word	_Label_1249
	.word	-32
	.word	4
	.word	_Label_1250
	.word	-36
	.word	4
	.word	_Label_1251
	.word	-40
	.word	4
	.word	0
_Label_1242:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1243:
	.ascii	"Pself\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1240\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1239\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1237\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1236\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1232\0"
	.align
_Label_1251:
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
_Label_3059:
	push	r0
	sub	r1,1,r1
	bne	_Label_3059
	mov	795,r13		! source line 795
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	796,r13		! source line 796
	mov	"\0\0SE",r10
!   _temp_1252 = &threadManagerLock
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
!   _temp_1255 = &freeList
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
!   if result==true then goto _Label_1253 else goto _Label_1254
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1254
	jmp	_Label_1253
_Label_1253:
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
!   _temp_1256 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_1256 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-36],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	799,r13		! source line 799
	mov	"\0\0SE",r10
!   _temp_1257 = &freeList
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
!   _temp_1258 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1259 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1258  sizeInBytes=4
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
	jmp	_Label_1260
_Label_1254:
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
!   _temp_1261 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1261 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	803,r13		! source line 803
	mov	"\0\0SE",r10
!   _temp_1262 = &freeList
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
_Label_1260:
! SEND STATEMENT...
	mov	805,r13		! source line 805
	mov	"\0\0SE",r10
!   _temp_1263 = &threadManagerLock
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
	.word	_Label_1264
	.word	8		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1265
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1266
	.word	12
	.word	4
	.word	_Label_1267
	.word	-12
	.word	4
	.word	_Label_1268
	.word	-16
	.word	4
	.word	_Label_1269
	.word	-20
	.word	4
	.word	_Label_1270
	.word	-24
	.word	4
	.word	_Label_1271
	.word	-28
	.word	4
	.word	_Label_1272
	.word	-32
	.word	4
	.word	_Label_1273
	.word	-36
	.word	4
	.word	_Label_1274
	.word	-40
	.word	4
	.word	_Label_1275
	.word	-44
	.word	4
	.word	0
_Label_1264:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1265:
	.ascii	"Pself\0"
	.align
_Label_1266:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1262\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1276
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1276:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1277
	.word	_sourceFileName
	.word	213		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1277:
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
_Label_3060:
	push	r0
	sub	r1,1,r1
	bne	_Label_3060
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
_Label_3061:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3061
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	827,r13		! source line 827
	mov	"\0\0SE",r10
!   _temp_1279 = &addrSpace
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
	.word	_Label_1280
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1281
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1282
	.word	-12
	.word	4
	.word	_Label_1283
	.word	-16
	.word	4
	.word	0
_Label_1280:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1281:
	.ascii	"Pself\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1278\0"
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
_Label_3062:
	push	r0
	sub	r1,1,r1
	bne	_Label_3062
	mov	837,r13		! source line 837
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	842,r13		! source line 842
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1284) then goto _runtimeErrorNullPointer
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
!   _temp_1285 = &addrSpace
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
!   _temp_1286 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1286  sizeInBytes=4
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
	call	_function_209_ThreadPrintShort
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
	.word	_Label_1287
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1288
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1289
	.word	-12
	.word	4
	.word	_Label_1290
	.word	-16
	.word	4
	.word	_Label_1291
	.word	-20
	.word	4
	.word	0
_Label_1287:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1288:
	.ascii	"Pself\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1286\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1285\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1284\0"
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
_Label_3063:
	push	r0
	sub	r1,1,r1
	bne	_Label_3063
	mov	860,r13		! source line 860
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1292 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1292  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	864,r13		! source line 864
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1293  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	865,r13		! source line 865
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1294 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1294  sizeInBytes=4
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
!   _temp_1295 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1295  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	868,r13		! source line 868
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	869,r13		! source line 869
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1297		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1297
!	jmp	_Label_1296
_Label_1296:
! THEN...
	mov	870,r13		! source line 870
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1298 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1298  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	870,r13		! source line 870
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1299
_Label_1297:
! ELSE...
	mov	871,r13		! source line 871
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	871,r13		! source line 871
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1301		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1301
!	jmp	_Label_1300
_Label_1300:
! THEN...
	mov	872,r13		! source line 872
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1302 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1302  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	872,r13		! source line 872
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1303
_Label_1301:
! ELSE...
	mov	873,r13		! source line 873
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	873,r13		! source line 873
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1305		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1305
!	jmp	_Label_1304
_Label_1304:
! THEN...
	mov	874,r13		! source line 874
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1306 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1306  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	874,r13		! source line 874
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1307
_Label_1305:
! ELSE...
	mov	876,r13		! source line 876
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1308 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1308  sizeInBytes=4
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
_Label_1307:
! END IF...
_Label_1303:
! END IF...
_Label_1299:
! CALL STATEMENT...
!   _temp_1309 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1309  sizeInBytes=4
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
!   _temp_1310 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1310  sizeInBytes=4
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
	.word	_Label_1311
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1312
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1313
	.word	-12
	.word	4
	.word	_Label_1314
	.word	-16
	.word	4
	.word	_Label_1315
	.word	-20
	.word	4
	.word	_Label_1316
	.word	-24
	.word	4
	.word	_Label_1317
	.word	-28
	.word	4
	.word	_Label_1318
	.word	-32
	.word	4
	.word	_Label_1319
	.word	-36
	.word	4
	.word	_Label_1320
	.word	-40
	.word	4
	.word	_Label_1321
	.word	-44
	.word	4
	.word	_Label_1322
	.word	-48
	.word	4
	.word	0
_Label_1311:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1312:
	.ascii	"Pself\0"
	.align
_Label_1313:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1314:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1323
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1323:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1324
	.word	_sourceFileName
	.word	233		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1324:
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
_Label_3064:
	push	r0
	sub	r1,1,r1
	bne	_Label_3064
	mov	893,r13		! source line 893
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	900,r13		! source line 900
	mov	"\0\0AS",r10
!   _temp_1325 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1580]
!   NEW ARRAY Constructor...
!   _temp_1327 = &_temp_1326
	add	r14,-1576,r1
	store	r1,[r14+-332]
!   _temp_1327 = _temp_1327 + 4
	load	[r14+-332],r1
	add	r1,4,r1
	store	r1,[r14+-332]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1329 = zeros  (sizeInBytes=124)
	add	r14,-324,r4
	mov	31,r3
_Label_3065:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3065
!   _temp_1329 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-324]
	mov	10,r1
	store	r1,[r14+-328]
_Label_1331:
!   Data Move: *_temp_1327 = _temp_1329  (sizeInBytes=124)
	add	r14,-324,r5
	load	[r14+-332],r4
	mov	31,r3
_Label_3066:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3066
!   _temp_1327 = _temp_1327 + 124
	load	[r14+-332],r1
	add	r1,124,r1
	store	r1,[r14+-332]
!   _temp_1328 = _temp_1328 + -1
	load	[r14+-328],r1
	add	r1,-1,r1
	store	r1,[r14+-328]
!   if intNotZero (_temp_1328) then goto _Label_1331
	load	[r14+-328],r1
	cmp	r1,r0
	bne	_Label_1331
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1576]
!   _temp_1332 = &_temp_1326
	add	r14,-1576,r1
	store	r1,[r14+-196]
!   make sure array has size 10
	load	[r14+-1580],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3067
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3067:
!   make sure array has size 10
	load	[r14+-196],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1325 = *_temp_1332  (sizeInBytes=1244)
	load	[r14+-196],r5
	load	[r14+-1580],r4
	mov	311,r3
_Label_3068:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3068
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
!   _temp_1334 = &processManagerLock
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
!   _temp_1336 = &aProcessBecameFree
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
!   _temp_1338 = &aProcessDied
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
!   _temp_1344 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-164]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1345 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-160]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1344  (sizeInBytes=4)
	load	[r14+-164],r1
	store	r1,[r14+-1584]
_Label_1340:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1345 then goto _Label_1343		
	load	[r14+-1584],r1
	load	[r14+-160],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1343
_Label_1341:
	mov	909,r13		! source line 909
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	910,r13		! source line 910
	mov	"\0\0AS",r10
!   _temp_1346 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-156]
!   Move address of _temp_1346 [i ] into _temp_1347
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
!   _temp_1348 = _temp_1347 + 20
	load	[r14+-152],r1
	add	r1,20,r1
	store	r1,[r14+-148]
!   Data Move: *_temp_1348 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-148],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	911,r13		! source line 911
	mov	"\0\0AS",r10
!   _temp_1349 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-144]
!   Move address of _temp_1349 [i ] into _temp_1350
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
!   _temp_1351 = _temp_1350 + 32
	load	[r14+-140],r1
	add	r1,32,r1
	store	r1,[r14+-136]
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1352 = zeros  (sizeInBytes=92)
	add	r14,-132,r4
	mov	23,r3
_Label_3069:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3069
!   _temp_1352 = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-132]
!   Data Move: *_temp_1351 = _temp_1352  (sizeInBytes=92)
	add	r14,-132,r5
	load	[r14+-136],r4
	mov	23,r3
_Label_3070:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3070
! SEND STATEMENT...
	mov	912,r13		! source line 912
	mov	"\0\0SE",r10
!   _temp_1354 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1354 [i ] into _temp_1355
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
!   _temp_1356 = _temp_1355 + 32
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
!   _temp_1358 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1358 [i ] into _temp_1359
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
!   _temp_1357 = _temp_1359		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1360 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1357  sizeInBytes=4
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
_Label_1342:
!   i = i + 1
	load	[r14+-1584],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1584]
	jmp	_Label_1340
! END FOR
_Label_1343:
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
	.word	_Label_1361
	.word	4		! total size of parameters
	.word	1584		! frame size = 1584
	.word	_Label_1362
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1363
	.word	-12
	.word	4
	.word	_Label_1364
	.word	-16
	.word	4
	.word	_Label_1365
	.word	-20
	.word	4
	.word	_Label_1366
	.word	-24
	.word	4
	.word	_Label_1367
	.word	-28
	.word	4
	.word	_Label_1368
	.word	-32
	.word	4
	.word	_Label_1369
	.word	-36
	.word	4
	.word	_Label_1370
	.word	-40
	.word	4
	.word	_Label_1371
	.word	-132
	.word	92
	.word	_Label_1372
	.word	-136
	.word	4
	.word	_Label_1373
	.word	-140
	.word	4
	.word	_Label_1374
	.word	-144
	.word	4
	.word	_Label_1375
	.word	-148
	.word	4
	.word	_Label_1376
	.word	-152
	.word	4
	.word	_Label_1377
	.word	-156
	.word	4
	.word	_Label_1378
	.word	-160
	.word	4
	.word	_Label_1379
	.word	-164
	.word	4
	.word	_Label_1380
	.word	-168
	.word	4
	.word	_Label_1381
	.word	-172
	.word	4
	.word	_Label_1382
	.word	-176
	.word	4
	.word	_Label_1383
	.word	-180
	.word	4
	.word	_Label_1384
	.word	-184
	.word	4
	.word	_Label_1385
	.word	-188
	.word	4
	.word	_Label_1386
	.word	-192
	.word	4
	.word	_Label_1387
	.word	-196
	.word	4
	.word	_Label_1388
	.word	-200
	.word	4
	.word	_Label_1389
	.word	-324
	.word	124
	.word	_Label_1390
	.word	-328
	.word	4
	.word	_Label_1391
	.word	-332
	.word	4
	.word	_Label_1392
	.word	-1576
	.word	1244
	.word	_Label_1393
	.word	-1580
	.word	4
	.word	_Label_1394
	.word	-1584
	.word	4
	.word	0
_Label_1361:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1362:
	.ascii	"Pself\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1336\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1385:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1325\0"
	.align
_Label_1394:
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
_Label_3071:
	push	r0
	sub	r1,1,r1
	bne	_Label_3071
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
!   _temp_1395 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1395  sizeInBytes=4
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
!   _temp_1400 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1401 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1400  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1396:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1401 then goto _Label_1399		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1399
_Label_1397:
	mov	928,r13		! source line 928
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1402 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1402  sizeInBytes=4
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
!   _temp_1403 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1403  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	931,r13		! source line 931
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	932,r13		! source line 932
	mov	"\0\0SE",r10
!   _temp_1404 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1404 [i ] into _temp_1405
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
_Label_1398:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1396
! END FOR
_Label_1399:
! CALL STATEMENT...
!   _temp_1406 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1406  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	934,r13		! source line 934
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	935,r13		! source line 935
	mov	"\0\0SE",r10
!   _temp_1407 = _function_208_PrintObjectAddr
	set	_function_208_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1408 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1407  sizeInBytes=4
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
	.word	_Label_1409
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1410
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1411
	.word	-12
	.word	4
	.word	_Label_1412
	.word	-16
	.word	4
	.word	_Label_1413
	.word	-20
	.word	4
	.word	_Label_1414
	.word	-24
	.word	4
	.word	_Label_1415
	.word	-28
	.word	4
	.word	_Label_1416
	.word	-32
	.word	4
	.word	_Label_1417
	.word	-36
	.word	4
	.word	_Label_1418
	.word	-40
	.word	4
	.word	_Label_1419
	.word	-44
	.word	4
	.word	_Label_1420
	.word	-48
	.word	4
	.word	_Label_1421
	.word	-52
	.word	4
	.word	_Label_1422
	.word	-56
	.word	4
	.word	0
_Label_1409:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1410:
	.ascii	"Pself\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1415:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1418:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1421:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1422:
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
_Label_3072:
	push	r0
	sub	r1,1,r1
	bne	_Label_3072
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
!   _temp_1423 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1423  sizeInBytes=4
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
!   _temp_1428 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1429 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1428  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1424:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1429 then goto _Label_1427		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1427
_Label_1425:
	mov	951,r13		! source line 951
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1430 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1430  sizeInBytes=4
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
!   _temp_1431 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1431 [i ] into _temp_1432
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
_Label_1426:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1424
! END FOR
_Label_1427:
! CALL STATEMENT...
!   _temp_1433 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1433  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	956,r13		! source line 956
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	957,r13		! source line 957
	mov	"\0\0SE",r10
!   _temp_1434 = _function_208_PrintObjectAddr
	set	_function_208_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1435 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1434  sizeInBytes=4
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
	.word	_Label_1436
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1437
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1438
	.word	-12
	.word	4
	.word	_Label_1439
	.word	-16
	.word	4
	.word	_Label_1440
	.word	-20
	.word	4
	.word	_Label_1441
	.word	-24
	.word	4
	.word	_Label_1442
	.word	-28
	.word	4
	.word	_Label_1443
	.word	-32
	.word	4
	.word	_Label_1444
	.word	-36
	.word	4
	.word	_Label_1445
	.word	-40
	.word	4
	.word	_Label_1446
	.word	-44
	.word	4
	.word	_Label_1447
	.word	-48
	.word	4
	.word	_Label_1448
	.word	-52
	.word	4
	.word	0
_Label_1436:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1437:
	.ascii	"Pself\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1434\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1433\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1447:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1448:
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
_Label_3073:
	push	r0
	sub	r1,1,r1
	bne	_Label_3073
	mov	964,r13		! source line 964
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	971,r13		! source line 971
	mov	"\0\0SE",r10
!   _temp_1449 = &processManagerLock
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
_Label_1450:
	mov	972,r13		! source line 972
	mov	"\0\0SE",r10
!   _temp_1453 = &freeList
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
!   if result==true then goto _Label_1451 else goto _Label_1452
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1452
	jmp	_Label_1451
_Label_1451:
	mov	972,r13		! source line 972
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0SE",r10
!   _temp_1454 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   _temp_1455 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1454  sizeInBytes=4
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
	jmp	_Label_1450
_Label_1452:
! ASSIGNMENT STATEMENT...
	mov	975,r13		! source line 975
	mov	"\0\0AS",r10
	mov	975,r13		! source line 975
	mov	"\0\0SE",r10
!   _temp_1456 = &freeList
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
!   _temp_1457 = item + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1457 = 1  (sizeInBytes=4)
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
!   _temp_1458 = item + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1458 = nextPid  (sizeInBytes=4)
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
!   _temp_1459 = &processManagerLock
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
	.word	_Label_1460
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1461
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1462
	.word	-12
	.word	4
	.word	_Label_1463
	.word	-16
	.word	4
	.word	_Label_1464
	.word	-20
	.word	4
	.word	_Label_1465
	.word	-24
	.word	4
	.word	_Label_1466
	.word	-28
	.word	4
	.word	_Label_1467
	.word	-32
	.word	4
	.word	_Label_1468
	.word	-36
	.word	4
	.word	_Label_1469
	.word	-40
	.word	4
	.word	_Label_1470
	.word	-44
	.word	4
	.word	0
_Label_1460:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1461:
	.ascii	"Pself\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1456\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1470:
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
	mov	10,r1
_Label_3074:
	push	r0
	sub	r1,1,r1
	bne	_Label_3074
	mov	985,r13		! source line 985
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	991,r13		! source line 991
	mov	"\0\0SE",r10
!   _temp_1471 = &processManagerLock
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
! ASSIGNMENT STATEMENT...
	mov	992,r13		! source line 992
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1472 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_1472 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-36],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	993,r13		! source line 993
	mov	"\0\0IF",r10
	mov	993,r13		! source line 993
	mov	"\0\0SE",r10
!   _temp_1475 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1473 else goto _Label_1474
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1474
	jmp	_Label_1473
_Label_1473:
! THEN...
	mov	994,r13		! source line 994
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	994,r13		! source line 994
	mov	"\0\0SE",r10
!   _temp_1476 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	995,r13		! source line 995
	mov	"\0\0SE",r10
!   _temp_1477 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-24]
!   _temp_1478 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1477  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
	jmp	_Label_1479
_Label_1474:
! ELSE...
	mov	997,r13		! source line 997
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	997,r13		! source line 997
	mov	"\0\0SE",r10
!   _temp_1480 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
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
_Label_1479:
! SEND STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0SE",r10
!   _temp_1481 = &processManagerLock
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
	mov	999,r13		! source line 999
	mov	"\0\0RE",r10
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1482
	.word	8		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1483
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1484
	.word	12
	.word	4
	.word	_Label_1485
	.word	-12
	.word	4
	.word	_Label_1486
	.word	-16
	.word	4
	.word	_Label_1487
	.word	-20
	.word	4
	.word	_Label_1488
	.word	-24
	.word	4
	.word	_Label_1489
	.word	-28
	.word	4
	.word	_Label_1490
	.word	-32
	.word	4
	.word	_Label_1491
	.word	-36
	.word	4
	.word	_Label_1492
	.word	-40
	.word	4
	.word	0
_Label_1482:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1483:
	.ascii	"Pself\0"
	.align
_Label_1484:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1493
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1493:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1494
	.word	_sourceFileName
	.word	256		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1494:
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
_Label_3075:
	push	r0
	sub	r1,1,r1
	bne	_Label_3075
	mov	1032,r13		! source line 1032
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1495 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1495  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1038,r13		! source line 1038
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1039,r13		! source line 1039
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
	mov	1040,r13		! source line 1040
	mov	"\0\0SE",r10
!   _temp_1497 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=100  sizeInBytes=4
	mov	100,r1
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
	mov	1041,r13		! source line 1041
	mov	"\0\0AS",r10
!   numberFreeFrames = 100		(4 bytes)
	mov	100,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1042,r13		! source line 1042
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
	mov	1043,r13		! source line 1043
	mov	"\0\0SE",r10
!   _temp_1499 = &frameManagerLock
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
	mov	1044,r13		! source line 1044
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
	mov	1045,r13		! source line 1045
	mov	"\0\0SE",r10
!   _temp_1501 = &newFramesAvailable
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
	mov	1051,r13		! source line 1051
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1506 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1507 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1506  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1502:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1507 then goto _Label_1505		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1505
_Label_1503:
	mov	1051,r13		! source line 1051
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1054,r13		! source line 1054
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1510 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1510) then goto _Label_1509
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1509
!	jmp	_Label_1508
_Label_1508:
! THEN...
	mov	1055,r13		! source line 1055
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1511 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1511  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1055,r13		! source line 1055
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1509:
!   Increment the FOR-LOOP index variable and jump back
_Label_1504:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1502
! END FOR
_Label_1505:
! RETURN STATEMENT...
	mov	1051,r13		! source line 1051
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
	.word	_Label_1512
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1513
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1514
	.word	-12
	.word	4
	.word	_Label_1515
	.word	-16
	.word	4
	.word	_Label_1516
	.word	-20
	.word	4
	.word	_Label_1517
	.word	-24
	.word	4
	.word	_Label_1518
	.word	-28
	.word	4
	.word	_Label_1519
	.word	-32
	.word	4
	.word	_Label_1520
	.word	-36
	.word	4
	.word	_Label_1521
	.word	-40
	.word	4
	.word	_Label_1522
	.word	-44
	.word	4
	.word	_Label_1523
	.word	-48
	.word	4
	.word	_Label_1524
	.word	-52
	.word	4
	.word	_Label_1525
	.word	-56
	.word	4
	.word	0
_Label_1512:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1513:
	.ascii	"Pself\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1511\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1525:
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
_Label_3076:
	push	r0
	sub	r1,1,r1
	bne	_Label_3076
	mov	1062,r13		! source line 1062
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1066,r13		! source line 1066
	mov	"\0\0SE",r10
!   _temp_1526 = &frameManagerLock
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
!   _temp_1527 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1527  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1067,r13		! source line 1067
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1528 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1528  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1068,r13		! source line 1068
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1529 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1529  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1069,r13		! source line 1069
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1070,r13		! source line 1070
	mov	"\0\0SE",r10
!   _temp_1530 = &framesInUse
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
	mov	1071,r13		! source line 1071
	mov	"\0\0SE",r10
!   _temp_1531 = &frameManagerLock
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
	mov	1071,r13		! source line 1071
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
	.word	_Label_1532
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1533
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1534
	.word	-12
	.word	4
	.word	_Label_1535
	.word	-16
	.word	4
	.word	_Label_1536
	.word	-20
	.word	4
	.word	_Label_1537
	.word	-24
	.word	4
	.word	_Label_1538
	.word	-28
	.word	4
	.word	_Label_1539
	.word	-32
	.word	4
	.word	0
_Label_1532:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1533:
	.ascii	"Pself\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1526\0"
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
_Label_3077:
	push	r0
	sub	r1,1,r1
	bne	_Label_3077
	mov	1076,r13		! source line 1076
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1084,r13		! source line 1084
	mov	"\0\0SE",r10
!   _temp_1540 = &frameManagerLock
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
	mov	1087,r13		! source line 1087
	mov	"\0\0WH",r10
_Label_1541:
!   if numberFreeFrames >= 1 then goto _Label_1543		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1543
!	jmp	_Label_1542
_Label_1542:
	mov	1087,r13		! source line 1087
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1088,r13		! source line 1088
	mov	"\0\0SE",r10
!   _temp_1544 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1545 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1544  sizeInBytes=4
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
	jmp	_Label_1541
_Label_1543:
! ASSIGNMENT STATEMENT...
	mov	1092,r13		! source line 1092
	mov	"\0\0AS",r10
	mov	1092,r13		! source line 1092
	mov	"\0\0SE",r10
!   _temp_1546 = &framesInUse
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
	mov	1093,r13		! source line 1093
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
	mov	1096,r13		! source line 1096
	mov	"\0\0SE",r10
!   _temp_1547 = &frameManagerLock
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
	mov	1099,r13		! source line 1099
	mov	"\0\0AS",r10
!   _temp_1548 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1548		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1101,r13		! source line 1101
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
	.word	_Label_1549
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1550
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1551
	.word	-12
	.word	4
	.word	_Label_1552
	.word	-16
	.word	4
	.word	_Label_1553
	.word	-20
	.word	4
	.word	_Label_1554
	.word	-24
	.word	4
	.word	_Label_1555
	.word	-28
	.word	4
	.word	_Label_1556
	.word	-32
	.word	4
	.word	_Label_1557
	.word	-36
	.word	4
	.word	_Label_1558
	.word	-40
	.word	4
	.word	0
_Label_1549:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1550:
	.ascii	"Pself\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1557:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1558:
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
_Label_3078:
	push	r0
	sub	r1,1,r1
	bne	_Label_3078
	mov	1106,r13		! source line 1106
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1111,r13		! source line 1111
	mov	"\0\0SE",r10
!   _temp_1559 = &frameManagerLock
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
	mov	1112,r13		! source line 1112
	mov	"\0\0WH",r10
_Label_1560:
!   if numFramesNeeded <= numberFreeFrames then goto _Label_1562		(int)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1562
!	jmp	_Label_1561
_Label_1561:
	mov	1112,r13		! source line 1112
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1113,r13		! source line 1113
	mov	"\0\0SE",r10
!   _temp_1563 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   _temp_1564 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_1563  sizeInBytes=4
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
	jmp	_Label_1560
_Label_1562:
! FOR STATEMENT...
	mov	1115,r13		! source line 1115
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1569 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1570 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1569  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-60]
_Label_1565:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1570 then goto _Label_1568		
	load	[r14+-60],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1568
_Label_1566:
	mov	1115,r13		! source line 1115
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1116,r13		! source line 1116
	mov	"\0\0AS",r10
	mov	1116,r13		! source line 1116
	mov	"\0\0SE",r10
!   _temp_1571 = &framesInUse
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
	mov	1117,r13		! source line 1117
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
	mov	1118,r13		! source line 1118
	mov	"\0\0AS",r10
!   _temp_1572 = f * 8192		(int)
	load	[r14+-64],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   frameAddr = 1048576 + _temp_1572		(int)
	set	1048576,r1
	load	[r14+-32],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! SEND STATEMENT...
	mov	1119,r13		! source line 1119
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
	mov	1120,r13		! source line 1120
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1573 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1576 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1575 = *_temp_1576  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1574 = _temp_1575 + 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_1573 = _temp_1574  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_1567:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_1565
! END FOR
_Label_1568:
! SEND STATEMENT...
	mov	1122,r13		! source line 1122
	mov	"\0\0SE",r10
!   _temp_1577 = &frameManagerLock
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
	mov	1122,r13		! source line 1122
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
	.word	_Label_1578
	.word	12		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1579
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1580
	.word	12
	.word	4
	.word	_Label_1581
	.word	16
	.word	4
	.word	_Label_1582
	.word	-12
	.word	4
	.word	_Label_1583
	.word	-16
	.word	4
	.word	_Label_1584
	.word	-20
	.word	4
	.word	_Label_1585
	.word	-24
	.word	4
	.word	_Label_1586
	.word	-28
	.word	4
	.word	_Label_1587
	.word	-32
	.word	4
	.word	_Label_1588
	.word	-36
	.word	4
	.word	_Label_1589
	.word	-40
	.word	4
	.word	_Label_1590
	.word	-44
	.word	4
	.word	_Label_1591
	.word	-48
	.word	4
	.word	_Label_1592
	.word	-52
	.word	4
	.word	_Label_1593
	.word	-56
	.word	4
	.word	_Label_1594
	.word	-60
	.word	4
	.word	_Label_1595
	.word	-64
	.word	4
	.word	_Label_1596
	.word	-68
	.word	4
	.word	0
_Label_1578:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1579:
	.ascii	"Pself\0"
	.align
_Label_1580:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1581:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1577\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1576\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1575\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1574\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1573\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1572\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1571\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1570\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1569\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1564\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1563\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1559\0"
	.align
_Label_1594:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1595:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1596:
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
_Label_3079:
	push	r0
	sub	r1,1,r1
	bne	_Label_3079
	mov	1127,r13		! source line 1127
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1134,r13		! source line 1134
	mov	"\0\0SE",r10
!   _temp_1597 = &frameManagerLock
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
	mov	1135,r13		! source line 1135
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1598 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Data Move: numFramesReturned = *_temp_1598  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-72]
! FOR STATEMENT...
	mov	1136,r13		! source line 1136
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1603 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1604 = numFramesReturned - 1		(int)
	load	[r14+-72],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1603  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-64]
_Label_1599:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1604 then goto _Label_1602		
	load	[r14+-64],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1602
_Label_1600:
	mov	1136,r13		! source line 1136
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1137,r13		! source line 1137
	mov	"\0\0AS",r10
	mov	1137,r13		! source line 1137
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
	mov	1138,r13		! source line 1138
	mov	"\0\0AS",r10
!   _temp_1605 = frameAddr - 1048576		(int)
	load	[r14+-76],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   f = _temp_1605 div 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! SEND STATEMENT...
	mov	1139,r13		! source line 1139
	mov	"\0\0SE",r10
!   _temp_1606 = &framesInUse
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
	mov	1140,r13		! source line 1140
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
	mov	1141,r13		! source line 1141
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1607 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1610 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1609 = *_temp_1610  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_1608 = _temp_1609 - 1		(int)
	load	[r14+-28],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Data Move: *_temp_1607 = _temp_1608  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r14+-36],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_1601:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1599
! END FOR
_Label_1602:
! SEND STATEMENT...
	mov	1143,r13		! source line 1143
	mov	"\0\0SE",r10
!   _temp_1611 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1612 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1611  sizeInBytes=4
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
	mov	1144,r13		! source line 1144
	mov	"\0\0SE",r10
!   _temp_1613 = &frameManagerLock
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
	mov	1144,r13		! source line 1144
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
	.word	_Label_1614
	.word	8		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_1615
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1616
	.word	12
	.word	4
	.word	_Label_1617
	.word	-12
	.word	4
	.word	_Label_1618
	.word	-16
	.word	4
	.word	_Label_1619
	.word	-20
	.word	4
	.word	_Label_1620
	.word	-24
	.word	4
	.word	_Label_1621
	.word	-28
	.word	4
	.word	_Label_1622
	.word	-32
	.word	4
	.word	_Label_1623
	.word	-36
	.word	4
	.word	_Label_1624
	.word	-40
	.word	4
	.word	_Label_1625
	.word	-44
	.word	4
	.word	_Label_1626
	.word	-48
	.word	4
	.word	_Label_1627
	.word	-52
	.word	4
	.word	_Label_1628
	.word	-56
	.word	4
	.word	_Label_1629
	.word	-60
	.word	4
	.word	_Label_1630
	.word	-64
	.word	4
	.word	_Label_1631
	.word	-68
	.word	4
	.word	_Label_1632
	.word	-72
	.word	4
	.word	_Label_1633
	.word	-76
	.word	4
	.word	0
_Label_1614:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1615:
	.ascii	"Pself\0"
	.align
_Label_1616:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1617:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1618:
	.byte	'?'
	.ascii	"_temp_1612\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1611\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1610\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1609\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1608\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1607\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1606\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1605\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1604\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1603\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1629:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1630:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1631:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1632:
	.byte	'I'
	.ascii	"numFramesReturned\0"
	.align
_Label_1633:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1634
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
_Label_1634:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1635
	.word	_sourceFileName
	.word	275		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1635:
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
_Label_3080:
	push	r0
	sub	r1,1,r1
	bne	_Label_3080
	mov	1156,r13		! source line 1156
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1160,r13		! source line 1160
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1161,r13		! source line 1161
	mov	"\0\0AS",r10
!   _temp_1636 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1638 = &_temp_1637
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1638 = _temp_1638 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1640:
!   Data Move: *_temp_1638 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1638 = _temp_1638 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1639 = _temp_1639 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1639) then goto _Label_1640
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1640
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1641 = &_temp_1637
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3081
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3081:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1636 = *_temp_1641  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3082:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3082
! RETURN STATEMENT...
	mov	1161,r13		! source line 1161
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
	.word	_Label_1642
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1643
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1644
	.word	-12
	.word	4
	.word	_Label_1645
	.word	-16
	.word	4
	.word	_Label_1646
	.word	-20
	.word	4
	.word	_Label_1647
	.word	-104
	.word	84
	.word	_Label_1648
	.word	-108
	.word	4
	.word	0
_Label_1642:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1643:
	.ascii	"Pself\0"
	.align
_Label_1644:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1645:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1646:
	.byte	'?'
	.ascii	"_temp_1638\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1637\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1636\0"
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
_Label_3083:
	push	r0
	sub	r1,1,r1
	bne	_Label_3083
	mov	1166,r13		! source line 1166
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1649 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1649  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1171,r13		! source line 1171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1650 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1650  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1172,r13		! source line 1172
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1173,r13		! source line 1173
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1655 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1656 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1655  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1651:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1656 then goto _Label_1654		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1654
_Label_1652:
	mov	1173,r13		! source line 1173
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1657 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1657  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1174,r13		! source line 1174
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1659 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1659 [i ] into _temp_1660
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
!   _temp_1658 = _temp_1660		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1658  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1175,r13		! source line 1175
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1661 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1661  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1176,r13		! source line 1176
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1663 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1663 [i ] into _temp_1664
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
!   Data Move: _temp_1662 = *_temp_1664  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1662  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1177,r13		! source line 1177
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1665 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1665  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1178,r13		! source line 1178
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1666 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1666  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1179,r13		! source line 1179
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1667 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1667  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1180,r13		! source line 1180
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1181,r13		! source line 1181
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1669) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1668  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1668  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1181,r13		! source line 1181
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1670 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1670  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1182,r13		! source line 1182
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1183,r13		! source line 1183
	mov	"\0\0IF",r10
	mov	1183,r13		! source line 1183
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1674) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1673  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1673) then goto _Label_1672
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1672
!	jmp	_Label_1671
_Label_1671:
! THEN...
	mov	1184,r13		! source line 1184
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1184,r13		! source line 1184
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1676) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1675  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1675  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1184,r13		! source line 1184
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1677
_Label_1672:
! ELSE...
	mov	1186,r13		! source line 1186
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1678 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1678  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1186,r13		! source line 1186
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1677:
! CALL STATEMENT...
!   _temp_1679 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1679  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1188,r13		! source line 1188
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1189,r13		! source line 1189
	mov	"\0\0IF",r10
	mov	1189,r13		! source line 1189
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1682) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1680 else goto _Label_1681
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1681
	jmp	_Label_1680
_Label_1680:
! THEN...
	mov	1190,r13		! source line 1190
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1683 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1683  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1190,r13		! source line 1190
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1684
_Label_1681:
! ELSE...
	mov	1192,r13		! source line 1192
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1685 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1685  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1192,r13		! source line 1192
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1684:
! CALL STATEMENT...
!   _temp_1686 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1686  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1194,r13		! source line 1194
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1195,r13		! source line 1195
	mov	"\0\0IF",r10
	mov	1195,r13		! source line 1195
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1689) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1687 else goto _Label_1688
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1688
	jmp	_Label_1687
_Label_1687:
! THEN...
	mov	1196,r13		! source line 1196
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1690 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1690  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1196,r13		! source line 1196
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1691
_Label_1688:
! ELSE...
	mov	1198,r13		! source line 1198
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1692 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1692  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1198,r13		! source line 1198
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1691:
! CALL STATEMENT...
!   _temp_1693 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1693  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1200,r13		! source line 1200
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1201,r13		! source line 1201
	mov	"\0\0IF",r10
	mov	1201,r13		! source line 1201
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1696) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1694 else goto _Label_1695
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1695
	jmp	_Label_1694
_Label_1694:
! THEN...
	mov	1202,r13		! source line 1202
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1697 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1697  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1202,r13		! source line 1202
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1698
_Label_1695:
! ELSE...
	mov	1204,r13		! source line 1204
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1699 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1699  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1204,r13		! source line 1204
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1698:
! CALL STATEMENT...
!   _temp_1700 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1700  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1206,r13		! source line 1206
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1207,r13		! source line 1207
	mov	"\0\0IF",r10
	mov	1207,r13		! source line 1207
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1703) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1701 else goto _Label_1702
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1702
	jmp	_Label_1701
_Label_1701:
! THEN...
	mov	1208,r13		! source line 1208
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1704 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1704  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1208,r13		! source line 1208
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1705
_Label_1702:
! ELSE...
	mov	1210,r13		! source line 1210
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1706 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1706  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1210,r13		! source line 1210
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1705:
! CALL STATEMENT...
!   Call the function
	mov	1212,r13		! source line 1212
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1653:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1651
! END FOR
_Label_1654:
! RETURN STATEMENT...
	mov	1173,r13		! source line 1173
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
	.word	_Label_1707
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1708
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1709
	.word	-12
	.word	4
	.word	_Label_1710
	.word	-16
	.word	4
	.word	_Label_1711
	.word	-20
	.word	4
	.word	_Label_1712
	.word	-24
	.word	4
	.word	_Label_1713
	.word	-28
	.word	4
	.word	_Label_1714
	.word	-32
	.word	4
	.word	_Label_1715
	.word	-36
	.word	4
	.word	_Label_1716
	.word	-40
	.word	4
	.word	_Label_1717
	.word	-44
	.word	4
	.word	_Label_1718
	.word	-48
	.word	4
	.word	_Label_1719
	.word	-52
	.word	4
	.word	_Label_1720
	.word	-56
	.word	4
	.word	_Label_1721
	.word	-60
	.word	4
	.word	_Label_1722
	.word	-64
	.word	4
	.word	_Label_1723
	.word	-68
	.word	4
	.word	_Label_1724
	.word	-72
	.word	4
	.word	_Label_1725
	.word	-76
	.word	4
	.word	_Label_1726
	.word	-80
	.word	4
	.word	_Label_1727
	.word	-84
	.word	4
	.word	_Label_1728
	.word	-88
	.word	4
	.word	_Label_1729
	.word	-92
	.word	4
	.word	_Label_1730
	.word	-96
	.word	4
	.word	_Label_1731
	.word	-100
	.word	4
	.word	_Label_1732
	.word	-104
	.word	4
	.word	_Label_1733
	.word	-108
	.word	4
	.word	_Label_1734
	.word	-112
	.word	4
	.word	_Label_1735
	.word	-116
	.word	4
	.word	_Label_1736
	.word	-120
	.word	4
	.word	_Label_1737
	.word	-124
	.word	4
	.word	_Label_1738
	.word	-128
	.word	4
	.word	_Label_1739
	.word	-132
	.word	4
	.word	_Label_1740
	.word	-136
	.word	4
	.word	_Label_1741
	.word	-140
	.word	4
	.word	_Label_1742
	.word	-144
	.word	4
	.word	_Label_1743
	.word	-148
	.word	4
	.word	_Label_1744
	.word	-152
	.word	4
	.word	_Label_1745
	.word	-156
	.word	4
	.word	_Label_1746
	.word	-160
	.word	4
	.word	_Label_1747
	.word	-164
	.word	4
	.word	_Label_1748
	.word	-168
	.word	4
	.word	0
_Label_1707:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1708:
	.ascii	"Pself\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1711:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1719:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1721:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1722:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1723:
	.byte	'?'
	.ascii	"_temp_1682\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1725:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1726:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1729:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1669\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1668\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1666\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1665\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1664\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1650\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1649\0"
	.align
_Label_1748:
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
_Label_3084:
	push	r0
	sub	r1,1,r1
	bne	_Label_3084
	mov	1218,r13		! source line 1218
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1223,r13		! source line 1223
	mov	"\0\0RE",r10
!   _temp_1751 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1751 [entry ] into _temp_1752
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
!   Data Move: _temp_1750 = *_temp_1752  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1749 = _temp_1750 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1749  (sizeInBytes=4)
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
	.word	_Label_1753
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1754
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1755
	.word	12
	.word	4
	.word	_Label_1756
	.word	-12
	.word	4
	.word	_Label_1757
	.word	-16
	.word	4
	.word	_Label_1758
	.word	-20
	.word	4
	.word	_Label_1759
	.word	-24
	.word	4
	.word	0
_Label_1753:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1754:
	.ascii	"Pself\0"
	.align
_Label_1755:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1752\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1750\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1749\0"
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
_Label_3085:
	push	r0
	sub	r1,1,r1
	bne	_Label_3085
	mov	1228,r13		! source line 1228
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1232,r13		! source line 1232
	mov	"\0\0RE",r10
!   _temp_1762 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1762 [entry ] into _temp_1763
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
!   Data Move: _temp_1761 = *_temp_1763  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1760 = _temp_1761 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1760  (sizeInBytes=4)
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
	.word	_Label_1764
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1765
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1766
	.word	12
	.word	4
	.word	_Label_1767
	.word	-12
	.word	4
	.word	_Label_1768
	.word	-16
	.word	4
	.word	_Label_1769
	.word	-20
	.word	4
	.word	_Label_1770
	.word	-24
	.word	4
	.word	0
_Label_1764:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1765:
	.ascii	"Pself\0"
	.align
_Label_1766:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1763\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1762\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1761\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1760\0"
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
_Label_3086:
	push	r0
	sub	r1,1,r1
	bne	_Label_3086
	mov	1237,r13		! source line 1237
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1242,r13		! source line 1242
	mov	"\0\0AS",r10
!   _temp_1771 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1771 [entry ] into _temp_1772
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
!   _temp_1776 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1776 [entry ] into _temp_1777
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
!   Data Move: _temp_1775 = *_temp_1777  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1774 = _temp_1775 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1773 = _temp_1774 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1772 = _temp_1773  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1242,r13		! source line 1242
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
	.word	_Label_1778
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1779
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1780
	.word	12
	.word	4
	.word	_Label_1781
	.word	16
	.word	4
	.word	_Label_1782
	.word	-12
	.word	4
	.word	_Label_1783
	.word	-16
	.word	4
	.word	_Label_1784
	.word	-20
	.word	4
	.word	_Label_1785
	.word	-24
	.word	4
	.word	_Label_1786
	.word	-28
	.word	4
	.word	_Label_1787
	.word	-32
	.word	4
	.word	_Label_1788
	.word	-36
	.word	4
	.word	0
_Label_1778:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1779:
	.ascii	"Pself\0"
	.align
_Label_1780:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1781:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1777\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1776\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1775\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1774\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1773\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1772\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1771\0"
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
_Label_3087:
	push	r0
	sub	r1,1,r1
	bne	_Label_3087
	mov	1247,r13		! source line 1247
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1251,r13		! source line 1251
	mov	"\0\0RE",r10
!   _temp_1792 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1792 [entry ] into _temp_1793
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
!   Data Move: _temp_1791 = *_temp_1793  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1790 = _temp_1791 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1790) then goto _Label_1794
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1794
!   _temp_1789 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1795
_Label_1794:
!   _temp_1789 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1795:
!   ReturnResult: _temp_1789  (sizeInBytes=1)
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
	.word	_Label_1796
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1797
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1798
	.word	12
	.word	4
	.word	_Label_1799
	.word	-16
	.word	4
	.word	_Label_1800
	.word	-20
	.word	4
	.word	_Label_1801
	.word	-24
	.word	4
	.word	_Label_1802
	.word	-28
	.word	4
	.word	_Label_1803
	.word	-9
	.word	1
	.word	0
_Label_1796:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1797:
	.ascii	"Pself\0"
	.align
_Label_1798:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1793\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1792\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1791\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1790\0"
	.align
_Label_1803:
	.byte	'C'
	.ascii	"_temp_1789\0"
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
_Label_3088:
	push	r0
	sub	r1,1,r1
	bne	_Label_3088
	mov	1256,r13		! source line 1256
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1260,r13		! source line 1260
	mov	"\0\0RE",r10
!   _temp_1807 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1807 [entry ] into _temp_1808
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
!   Data Move: _temp_1806 = *_temp_1808  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1805 = _temp_1806 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1805) then goto _Label_1809
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1809
!   _temp_1804 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1810
_Label_1809:
!   _temp_1804 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1810:
!   ReturnResult: _temp_1804  (sizeInBytes=1)
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
	.word	_Label_1811
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1812
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1813
	.word	12
	.word	4
	.word	_Label_1814
	.word	-16
	.word	4
	.word	_Label_1815
	.word	-20
	.word	4
	.word	_Label_1816
	.word	-24
	.word	4
	.word	_Label_1817
	.word	-28
	.word	4
	.word	_Label_1818
	.word	-9
	.word	1
	.word	0
_Label_1811:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1812:
	.ascii	"Pself\0"
	.align
_Label_1813:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1808\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1807\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1806\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
_Label_1818:
	.byte	'C'
	.ascii	"_temp_1804\0"
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
_Label_3089:
	push	r0
	sub	r1,1,r1
	bne	_Label_3089
	mov	1265,r13		! source line 1265
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1269,r13		! source line 1269
	mov	"\0\0RE",r10
!   _temp_1822 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1822 [entry ] into _temp_1823
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
!   Data Move: _temp_1821 = *_temp_1823  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1820 = _temp_1821 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1820) then goto _Label_1824
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1824
!   _temp_1819 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1825
_Label_1824:
!   _temp_1819 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1825:
!   ReturnResult: _temp_1819  (sizeInBytes=1)
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
	.word	_Label_1826
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1827
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1828
	.word	12
	.word	4
	.word	_Label_1829
	.word	-16
	.word	4
	.word	_Label_1830
	.word	-20
	.word	4
	.word	_Label_1831
	.word	-24
	.word	4
	.word	_Label_1832
	.word	-28
	.word	4
	.word	_Label_1833
	.word	-9
	.word	1
	.word	0
_Label_1826:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1827:
	.ascii	"Pself\0"
	.align
_Label_1828:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1829:
	.byte	'?'
	.ascii	"_temp_1823\0"
	.align
_Label_1830:
	.byte	'?'
	.ascii	"_temp_1822\0"
	.align
_Label_1831:
	.byte	'?'
	.ascii	"_temp_1821\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1820\0"
	.align
_Label_1833:
	.byte	'C'
	.ascii	"_temp_1819\0"
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
_Label_3090:
	push	r0
	sub	r1,1,r1
	bne	_Label_3090
	mov	1274,r13		! source line 1274
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1278,r13		! source line 1278
	mov	"\0\0RE",r10
!   _temp_1837 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1837 [entry ] into _temp_1838
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
!   Data Move: _temp_1836 = *_temp_1838  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1835 = _temp_1836 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1835) then goto _Label_1839
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1839
!   _temp_1834 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1840
_Label_1839:
!   _temp_1834 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1840:
!   ReturnResult: _temp_1834  (sizeInBytes=1)
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
	.word	_Label_1841
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1842
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1843
	.word	12
	.word	4
	.word	_Label_1844
	.word	-16
	.word	4
	.word	_Label_1845
	.word	-20
	.word	4
	.word	_Label_1846
	.word	-24
	.word	4
	.word	_Label_1847
	.word	-28
	.word	4
	.word	_Label_1848
	.word	-9
	.word	1
	.word	0
_Label_1841:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1842:
	.ascii	"Pself\0"
	.align
_Label_1843:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1838\0"
	.align
_Label_1845:
	.byte	'?'
	.ascii	"_temp_1837\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1836\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1835\0"
	.align
_Label_1848:
	.byte	'C'
	.ascii	"_temp_1834\0"
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
_Label_3091:
	push	r0
	sub	r1,1,r1
	bne	_Label_3091
	mov	1283,r13		! source line 1283
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1287,r13		! source line 1287
	mov	"\0\0AS",r10
!   _temp_1849 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1849 [entry ] into _temp_1850
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
!   _temp_1853 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1853 [entry ] into _temp_1854
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
!   Data Move: _temp_1852 = *_temp_1854  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1851 = _temp_1852 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1850 = _temp_1851  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1287,r13		! source line 1287
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
	.word	_Label_1855
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1856
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1857
	.word	12
	.word	4
	.word	_Label_1858
	.word	-12
	.word	4
	.word	_Label_1859
	.word	-16
	.word	4
	.word	_Label_1860
	.word	-20
	.word	4
	.word	_Label_1861
	.word	-24
	.word	4
	.word	_Label_1862
	.word	-28
	.word	4
	.word	_Label_1863
	.word	-32
	.word	4
	.word	0
_Label_1855:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1856:
	.ascii	"Pself\0"
	.align
_Label_1857:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1854\0"
	.align
_Label_1859:
	.byte	'?'
	.ascii	"_temp_1853\0"
	.align
_Label_1860:
	.byte	'?'
	.ascii	"_temp_1852\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1851\0"
	.align
_Label_1862:
	.byte	'?'
	.ascii	"_temp_1850\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1849\0"
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
_Label_3092:
	push	r0
	sub	r1,1,r1
	bne	_Label_3092
	mov	1292,r13		! source line 1292
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1296,r13		! source line 1296
	mov	"\0\0AS",r10
!   _temp_1864 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1864 [entry ] into _temp_1865
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
!   _temp_1868 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1868 [entry ] into _temp_1869
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
!   Data Move: _temp_1867 = *_temp_1869  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1866 = _temp_1867 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1865 = _temp_1866  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1296,r13		! source line 1296
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
	.word	_Label_1870
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1871
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1872
	.word	12
	.word	4
	.word	_Label_1873
	.word	-12
	.word	4
	.word	_Label_1874
	.word	-16
	.word	4
	.word	_Label_1875
	.word	-20
	.word	4
	.word	_Label_1876
	.word	-24
	.word	4
	.word	_Label_1877
	.word	-28
	.word	4
	.word	_Label_1878
	.word	-32
	.word	4
	.word	0
_Label_1870:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1871:
	.ascii	"Pself\0"
	.align
_Label_1872:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1869\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1868\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1867\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1866\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1865\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1864\0"
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
_Label_3093:
	push	r0
	sub	r1,1,r1
	bne	_Label_3093
	mov	1301,r13		! source line 1301
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1305,r13		! source line 1305
	mov	"\0\0AS",r10
!   _temp_1879 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1879 [entry ] into _temp_1880
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
!   _temp_1883 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1883 [entry ] into _temp_1884
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
!   Data Move: _temp_1882 = *_temp_1884  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1881 = _temp_1882 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1880 = _temp_1881  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1305,r13		! source line 1305
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
	.word	_Label_1885
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1886
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1887
	.word	12
	.word	4
	.word	_Label_1888
	.word	-12
	.word	4
	.word	_Label_1889
	.word	-16
	.word	4
	.word	_Label_1890
	.word	-20
	.word	4
	.word	_Label_1891
	.word	-24
	.word	4
	.word	_Label_1892
	.word	-28
	.word	4
	.word	_Label_1893
	.word	-32
	.word	4
	.word	0
_Label_1885:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1886:
	.ascii	"Pself\0"
	.align
_Label_1887:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1888:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1889:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1890:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1891:
	.byte	'?'
	.ascii	"_temp_1881\0"
	.align
_Label_1892:
	.byte	'?'
	.ascii	"_temp_1880\0"
	.align
_Label_1893:
	.byte	'?'
	.ascii	"_temp_1879\0"
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
_Label_3094:
	push	r0
	sub	r1,1,r1
	bne	_Label_3094
	mov	1310,r13		! source line 1310
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1314,r13		! source line 1314
	mov	"\0\0AS",r10
!   _temp_1894 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1894 [entry ] into _temp_1895
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
!   _temp_1898 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1898 [entry ] into _temp_1899
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
!   Data Move: _temp_1897 = *_temp_1899  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1896 = _temp_1897 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1895 = _temp_1896  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1314,r13		! source line 1314
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
	.word	_Label_1900
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1901
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1902
	.word	12
	.word	4
	.word	_Label_1903
	.word	-12
	.word	4
	.word	_Label_1904
	.word	-16
	.word	4
	.word	_Label_1905
	.word	-20
	.word	4
	.word	_Label_1906
	.word	-24
	.word	4
	.word	_Label_1907
	.word	-28
	.word	4
	.word	_Label_1908
	.word	-32
	.word	4
	.word	0
_Label_1900:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1901:
	.ascii	"Pself\0"
	.align
_Label_1902:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1899\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
_Label_1905:
	.byte	'?'
	.ascii	"_temp_1897\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1896\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1895\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1894\0"
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
_Label_3095:
	push	r0
	sub	r1,1,r1
	bne	_Label_3095
	mov	1319,r13		! source line 1319
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1323,r13		! source line 1323
	mov	"\0\0AS",r10
!   _temp_1909 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1909 [entry ] into _temp_1910
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
!   _temp_1913 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1913 [entry ] into _temp_1914
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
!   Data Move: _temp_1912 = *_temp_1914  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1911 = _temp_1912 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1910 = _temp_1911  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1323,r13		! source line 1323
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
	.word	_Label_1915
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1916
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1917
	.word	12
	.word	4
	.word	_Label_1918
	.word	-12
	.word	4
	.word	_Label_1919
	.word	-16
	.word	4
	.word	_Label_1920
	.word	-20
	.word	4
	.word	_Label_1921
	.word	-24
	.word	4
	.word	_Label_1922
	.word	-28
	.word	4
	.word	_Label_1923
	.word	-32
	.word	4
	.word	0
_Label_1915:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1916:
	.ascii	"Pself\0"
	.align
_Label_1917:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1918:
	.byte	'?'
	.ascii	"_temp_1914\0"
	.align
_Label_1919:
	.byte	'?'
	.ascii	"_temp_1913\0"
	.align
_Label_1920:
	.byte	'?'
	.ascii	"_temp_1912\0"
	.align
_Label_1921:
	.byte	'?'
	.ascii	"_temp_1911\0"
	.align
_Label_1922:
	.byte	'?'
	.ascii	"_temp_1910\0"
	.align
_Label_1923:
	.byte	'?'
	.ascii	"_temp_1909\0"
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
_Label_3096:
	push	r0
	sub	r1,1,r1
	bne	_Label_3096
	mov	1328,r13		! source line 1328
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1332,r13		! source line 1332
	mov	"\0\0AS",r10
!   _temp_1924 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1924 [entry ] into _temp_1925
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
!   _temp_1928 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1928 [entry ] into _temp_1929
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
!   Data Move: _temp_1927 = *_temp_1929  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1926 = _temp_1927 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1925 = _temp_1926  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1332,r13		! source line 1332
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
	.word	_Label_1930
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1931
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1932
	.word	12
	.word	4
	.word	_Label_1933
	.word	-12
	.word	4
	.word	_Label_1934
	.word	-16
	.word	4
	.word	_Label_1935
	.word	-20
	.word	4
	.word	_Label_1936
	.word	-24
	.word	4
	.word	_Label_1937
	.word	-28
	.word	4
	.word	_Label_1938
	.word	-32
	.word	4
	.word	0
_Label_1930:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1931:
	.ascii	"Pself\0"
	.align
_Label_1932:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1933:
	.byte	'?'
	.ascii	"_temp_1929\0"
	.align
_Label_1934:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
_Label_1935:
	.byte	'?'
	.ascii	"_temp_1927\0"
	.align
_Label_1936:
	.byte	'?'
	.ascii	"_temp_1926\0"
	.align
_Label_1937:
	.byte	'?'
	.ascii	"_temp_1925\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1924\0"
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
_Label_3097:
	push	r0
	sub	r1,1,r1
	bne	_Label_3097
	mov	1337,r13		! source line 1337
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1341,r13		! source line 1341
	mov	"\0\0AS",r10
!   _temp_1939 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1939 [entry ] into _temp_1940
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
!   _temp_1943 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1943 [entry ] into _temp_1944
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
!   Data Move: _temp_1942 = *_temp_1944  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1941 = _temp_1942 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1940 = _temp_1941  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1341,r13		! source line 1341
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
	.word	_Label_1945
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1946
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1947
	.word	12
	.word	4
	.word	_Label_1948
	.word	-12
	.word	4
	.word	_Label_1949
	.word	-16
	.word	4
	.word	_Label_1950
	.word	-20
	.word	4
	.word	_Label_1951
	.word	-24
	.word	4
	.word	_Label_1952
	.word	-28
	.word	4
	.word	_Label_1953
	.word	-32
	.word	4
	.word	0
_Label_1945:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1946:
	.ascii	"Pself\0"
	.align
_Label_1947:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1948:
	.byte	'?'
	.ascii	"_temp_1944\0"
	.align
_Label_1949:
	.byte	'?'
	.ascii	"_temp_1943\0"
	.align
_Label_1950:
	.byte	'?'
	.ascii	"_temp_1942\0"
	.align
_Label_1951:
	.byte	'?'
	.ascii	"_temp_1941\0"
	.align
_Label_1952:
	.byte	'?'
	.ascii	"_temp_1940\0"
	.align
_Label_1953:
	.byte	'?'
	.ascii	"_temp_1939\0"
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
_Label_3098:
	push	r0
	sub	r1,1,r1
	bne	_Label_3098
	mov	1346,r13		! source line 1346
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1350,r13		! source line 1350
	mov	"\0\0AS",r10
!   _temp_1954 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1954 [entry ] into _temp_1955
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
!   _temp_1958 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1958 [entry ] into _temp_1959
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
!   Data Move: _temp_1957 = *_temp_1959  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1956 = _temp_1957 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1955 = _temp_1956  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1350,r13		! source line 1350
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
	.word	_Label_1960
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1961
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1962
	.word	12
	.word	4
	.word	_Label_1963
	.word	-12
	.word	4
	.word	_Label_1964
	.word	-16
	.word	4
	.word	_Label_1965
	.word	-20
	.word	4
	.word	_Label_1966
	.word	-24
	.word	4
	.word	_Label_1967
	.word	-28
	.word	4
	.word	_Label_1968
	.word	-32
	.word	4
	.word	0
_Label_1960:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1961:
	.ascii	"Pself\0"
	.align
_Label_1962:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1963:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_1964:
	.byte	'?'
	.ascii	"_temp_1958\0"
	.align
_Label_1965:
	.byte	'?'
	.ascii	"_temp_1957\0"
	.align
_Label_1966:
	.byte	'?'
	.ascii	"_temp_1956\0"
	.align
_Label_1967:
	.byte	'?'
	.ascii	"_temp_1955\0"
	.align
_Label_1968:
	.byte	'?'
	.ascii	"_temp_1954\0"
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
_Label_3099:
	push	r0
	sub	r1,1,r1
	bne	_Label_3099
	mov	1355,r13		! source line 1355
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1970 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1970 [0 ] into _temp_1971
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
!   _temp_1969 = _temp_1971		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1972 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1969  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1972  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1361,r13		! source line 1361
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1361,r13		! source line 1361
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
	.word	_Label_1973
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1974
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1975
	.word	-12
	.word	4
	.word	_Label_1976
	.word	-16
	.word	4
	.word	_Label_1977
	.word	-20
	.word	4
	.word	_Label_1978
	.word	-24
	.word	4
	.word	0
_Label_1973:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1974:
	.ascii	"Pself\0"
	.align
_Label_1975:
	.byte	'?'
	.ascii	"_temp_1972\0"
	.align
_Label_1976:
	.byte	'?'
	.ascii	"_temp_1971\0"
	.align
_Label_1977:
	.byte	'?'
	.ascii	"_temp_1970\0"
	.align
_Label_1978:
	.byte	'?'
	.ascii	"_temp_1969\0"
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
_Label_3100:
	push	r0
	sub	r1,1,r1
	bne	_Label_3100
	mov	1366,r13		! source line 1366
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1381,r13		! source line 1381
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1979
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1979
	jmp	_Label_1980
_Label_1979:
! THEN...
	mov	1382,r13		! source line 1382
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1382,r13		! source line 1382
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1981
_Label_1980:
! ELSE...
	mov	1383,r13		! source line 1383
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1383,r13		! source line 1383
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1983		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1983
!	jmp	_Label_1982
_Label_1982:
! THEN...
	mov	1384,r13		! source line 1384
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1384,r13		! source line 1384
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1983:
! END IF...
_Label_1981:
! ASSIGNMENT STATEMENT...
	mov	1386,r13		! source line 1386
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
	mov	1387,r13		! source line 1387
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
	mov	1390,r13		! source line 1390
	mov	"\0\0WH",r10
_Label_1984:
!	jmp	_Label_1985
_Label_1985:
	mov	1390,r13		! source line 1390
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1391,r13		! source line 1391
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1988		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1988
!	jmp	_Label_1987
_Label_1987:
! THEN...
	mov	1392,r13		! source line 1392
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1989 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1989  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1392,r13		! source line 1392
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1393,r13		! source line 1393
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1988:
! IF STATEMENT...
	mov	1395,r13		! source line 1395
	mov	"\0\0IF",r10
	mov	1395,r13		! source line 1395
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1993) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1992  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1992 then goto _Label_1991 else goto _Label_1990
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1990
	jmp	_Label_1991
_Label_1990:
! THEN...
	mov	1396,r13		! source line 1396
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1994 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1994  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1396,r13		! source line 1396
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1397,r13		! source line 1397
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1991:
! ASSIGNMENT STATEMENT...
	mov	1399,r13		! source line 1399
	mov	"\0\0AS",r10
	mov	1399,r13		! source line 1399
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1996) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1995  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1995 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1401,r13		! source line 1401
	mov	"\0\0WH",r10
_Label_1997:
!   if offset >= 8192 then goto _Label_1999		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1999
!	jmp	_Label_1998
_Label_1998:
	mov	1401,r13		! source line 1401
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1404,r13		! source line 1404
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2000 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2000  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1405,r13		! source line 1405
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1406,r13		! source line 1406
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1407,r13		! source line 1407
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1408,r13		! source line 1408
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1409,r13		! source line 1409
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2002		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2002
!	jmp	_Label_2001
_Label_2001:
! THEN...
	mov	1410,r13		! source line 1410
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1410,r13		! source line 1410
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2002:
! END WHILE...
	jmp	_Label_1997
_Label_1999:
! ASSIGNMENT STATEMENT...
	mov	1413,r13		! source line 1413
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1414,r13		! source line 1414
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1984
_Label_1986:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2003
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2004
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2005
	.word	12
	.word	4
	.word	_Label_2006
	.word	16
	.word	4
	.word	_Label_2007
	.word	20
	.word	4
	.word	_Label_2008
	.word	-9
	.word	1
	.word	_Label_2009
	.word	-16
	.word	4
	.word	_Label_2010
	.word	-20
	.word	4
	.word	_Label_2011
	.word	-24
	.word	4
	.word	_Label_2012
	.word	-28
	.word	4
	.word	_Label_2013
	.word	-10
	.word	1
	.word	_Label_2014
	.word	-32
	.word	4
	.word	_Label_2015
	.word	-36
	.word	4
	.word	_Label_2016
	.word	-40
	.word	4
	.word	_Label_2017
	.word	-44
	.word	4
	.word	_Label_2018
	.word	-48
	.word	4
	.word	0
_Label_2003:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2004:
	.ascii	"Pself\0"
	.align
_Label_2005:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2006:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2007:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2008:
	.byte	'C'
	.ascii	"_temp_2000\0"
	.align
_Label_2009:
	.byte	'?'
	.ascii	"_temp_1996\0"
	.align
_Label_2010:
	.byte	'?'
	.ascii	"_temp_1995\0"
	.align
_Label_2011:
	.byte	'?'
	.ascii	"_temp_1994\0"
	.align
_Label_2012:
	.byte	'?'
	.ascii	"_temp_1993\0"
	.align
_Label_2013:
	.byte	'C'
	.ascii	"_temp_1992\0"
	.align
_Label_2014:
	.byte	'?'
	.ascii	"_temp_1989\0"
	.align
_Label_2015:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2016:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2017:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2018:
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
_Label_3101:
	push	r0
	sub	r1,1,r1
	bne	_Label_3101
	mov	1420,r13		! source line 1420
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1431,r13		! source line 1431
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2019
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2019
	jmp	_Label_2020
_Label_2019:
! THEN...
	mov	1432,r13		! source line 1432
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1432,r13		! source line 1432
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2021
_Label_2020:
! ELSE...
	mov	1433,r13		! source line 1433
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1433,r13		! source line 1433
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2023		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2023
!	jmp	_Label_2022
_Label_2022:
! THEN...
	mov	1434,r13		! source line 1434
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1434,r13		! source line 1434
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2023:
! END IF...
_Label_2021:
! ASSIGNMENT STATEMENT...
	mov	1436,r13		! source line 1436
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
	mov	1437,r13		! source line 1437
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
	mov	1438,r13		! source line 1438
	mov	"\0\0WH",r10
_Label_2024:
!	jmp	_Label_2025
_Label_2025:
	mov	1438,r13		! source line 1438
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1439,r13		! source line 1439
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2030		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2030
	jmp	_Label_2027
_Label_2030:
	mov	1440,r13		! source line 1440
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2032) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2031  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2031 then goto _Label_2029 else goto _Label_2027
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2027
	jmp	_Label_2029
_Label_2029:
	mov	1441,r13		! source line 1441
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2034) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2033  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2033 then goto _Label_2028 else goto _Label_2027
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2027
	jmp	_Label_2028
_Label_2027:
! THEN...
	mov	1442,r13		! source line 1442
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2028:
! ASSIGNMENT STATEMENT...
	mov	1444,r13		! source line 1444
	mov	"\0\0AS",r10
	mov	1444,r13		! source line 1444
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2036) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2035  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2035 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1445,r13		! source line 1445
	mov	"\0\0WH",r10
_Label_2037:
!   if offset >= 8192 then goto _Label_2039		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2039
!	jmp	_Label_2038
_Label_2038:
	mov	1445,r13		! source line 1445
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1446,r13		! source line 1446
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2040 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2040  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1447,r13		! source line 1447
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1448,r13		! source line 1448
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1449,r13		! source line 1449
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1450,r13		! source line 1450
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1451,r13		! source line 1451
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2042		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2042
!	jmp	_Label_2041
_Label_2041:
! THEN...
	mov	1452,r13		! source line 1452
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1452,r13		! source line 1452
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2042:
! END WHILE...
	jmp	_Label_2037
_Label_2039:
! ASSIGNMENT STATEMENT...
	mov	1455,r13		! source line 1455
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1456,r13		! source line 1456
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2024
_Label_2026:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2043
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2044
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2045
	.word	12
	.word	4
	.word	_Label_2046
	.word	16
	.word	4
	.word	_Label_2047
	.word	20
	.word	4
	.word	_Label_2048
	.word	-9
	.word	1
	.word	_Label_2049
	.word	-16
	.word	4
	.word	_Label_2050
	.word	-20
	.word	4
	.word	_Label_2051
	.word	-24
	.word	4
	.word	_Label_2052
	.word	-10
	.word	1
	.word	_Label_2053
	.word	-28
	.word	4
	.word	_Label_2054
	.word	-11
	.word	1
	.word	_Label_2055
	.word	-32
	.word	4
	.word	_Label_2056
	.word	-36
	.word	4
	.word	_Label_2057
	.word	-40
	.word	4
	.word	_Label_2058
	.word	-44
	.word	4
	.word	0
_Label_2043:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2044:
	.ascii	"Pself\0"
	.align
_Label_2045:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2046:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2047:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2048:
	.byte	'C'
	.ascii	"_temp_2040\0"
	.align
_Label_2049:
	.byte	'?'
	.ascii	"_temp_2036\0"
	.align
_Label_2050:
	.byte	'?'
	.ascii	"_temp_2035\0"
	.align
_Label_2051:
	.byte	'?'
	.ascii	"_temp_2034\0"
	.align
_Label_2052:
	.byte	'C'
	.ascii	"_temp_2033\0"
	.align
_Label_2053:
	.byte	'?'
	.ascii	"_temp_2032\0"
	.align
_Label_2054:
	.byte	'C'
	.ascii	"_temp_2031\0"
	.align
_Label_2055:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2056:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2057:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2058:
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
_Label_3102:
	push	r0
	sub	r1,1,r1
	bne	_Label_3102
	mov	1462,r13		! source line 1462
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1486,r13		! source line 1486
	mov	"\0\0IF",r10
	mov	1486,r13		! source line 1486
	mov	"\0\0SE",r10
!   _temp_2062 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2063) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2062  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2061  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2061 >= 4 then goto _Label_2060		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2060
!	jmp	_Label_2059
_Label_2059:
! THEN...
	mov	1489,r13		! source line 1489
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1489,r13		! source line 1489
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2060:
! IF STATEMENT...
	mov	1493,r13		! source line 1493
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2065		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2065
!	jmp	_Label_2064
_Label_2064:
! THEN...
	mov	1494,r13		! source line 1494
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1494,r13		! source line 1494
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2065:
! ASSIGNMENT STATEMENT...
	mov	1497,r13		! source line 1497
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
	mov	1499,r13		! source line 1499
	mov	"\0\0RE",r10
	mov	1499,r13		! source line 1499
	mov	"\0\0SE",r10
!   _temp_2068 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2067 = _temp_2068 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2069 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2070) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2067  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2069  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2066  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2066  (sizeInBytes=4)
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
	.word	_Label_2071
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2072
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2073
	.word	12
	.word	4
	.word	_Label_2074
	.word	16
	.word	4
	.word	_Label_2075
	.word	20
	.word	4
	.word	_Label_2076
	.word	-12
	.word	4
	.word	_Label_2077
	.word	-16
	.word	4
	.word	_Label_2078
	.word	-20
	.word	4
	.word	_Label_2079
	.word	-24
	.word	4
	.word	_Label_2080
	.word	-28
	.word	4
	.word	_Label_2081
	.word	-32
	.word	4
	.word	_Label_2082
	.word	-36
	.word	4
	.word	_Label_2083
	.word	-40
	.word	4
	.word	_Label_2084
	.word	-44
	.word	4
	.word	0
_Label_2071:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2072:
	.ascii	"Pself\0"
	.align
_Label_2073:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2074:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2075:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2076:
	.byte	'?'
	.ascii	"_temp_2070\0"
	.align
_Label_2077:
	.byte	'?'
	.ascii	"_temp_2069\0"
	.align
_Label_2078:
	.byte	'?'
	.ascii	"_temp_2068\0"
	.align
_Label_2079:
	.byte	'?'
	.ascii	"_temp_2067\0"
	.align
_Label_2080:
	.byte	'?'
	.ascii	"_temp_2066\0"
	.align
_Label_2081:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
_Label_2082:
	.byte	'?'
	.ascii	"_temp_2062\0"
	.align
_Label_2083:
	.byte	'?'
	.ascii	"_temp_2061\0"
	.align
_Label_2084:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2085
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2085:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2086
	.word	_sourceFileName
	.word	307		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2086:
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
_Label_3103:
	push	r0
	sub	r1,1,r1
	bne	_Label_3103
	mov	1938,r13		! source line 1938
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2087 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2087  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1939,r13		! source line 1939
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1940,r13		! source line 1940
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1941,r13		! source line 1941
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	1942,r13		! source line 1942
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	1943,r13		! source line 1943
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1944,r13		! source line 1944
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	1945,r13		! source line 1945
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	1946,r13		! source line 1946
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
	mov	1947,r13		! source line 1947
	mov	"\0\0SE",r10
!   _temp_2089 = &semUsedInSynchMethods
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
	mov	1948,r13		! source line 1948
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
	mov	1949,r13		! source line 1949
	mov	"\0\0SE",r10
!   _temp_2091 = &diskBusy
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
	mov	1949,r13		! source line 1949
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
	.word	_Label_2092
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2093
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2094
	.word	-12
	.word	4
	.word	_Label_2095
	.word	-16
	.word	4
	.word	_Label_2096
	.word	-20
	.word	4
	.word	_Label_2097
	.word	-24
	.word	4
	.word	_Label_2098
	.word	-28
	.word	4
	.word	0
_Label_2092:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2093:
	.ascii	"Pself\0"
	.align
_Label_2094:
	.byte	'?'
	.ascii	"_temp_2091\0"
	.align
_Label_2095:
	.byte	'?'
	.ascii	"_temp_2090\0"
	.align
_Label_2096:
	.byte	'?'
	.ascii	"_temp_2089\0"
	.align
_Label_2097:
	.byte	'?'
	.ascii	"_temp_2088\0"
	.align
_Label_2098:
	.byte	'?'
	.ascii	"_temp_2087\0"
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
_Label_3104:
	push	r0
	sub	r1,1,r1
	bne	_Label_3104
	mov	1954,r13		! source line 1954
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1967,r13		! source line 1967
	mov	"\0\0SE",r10
!   _temp_2099 = &diskBusy
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
	mov	1968,r13		! source line 1968
	mov	"\0\0WH",r10
_Label_2100:
!	jmp	_Label_2101
_Label_2101:
	mov	1968,r13		! source line 1968
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1970,r13		! source line 1970
	mov	"\0\0SE",r10
!   _temp_2103 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2104) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2103  sizeInBytes=4
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
	mov	1972,r13		! source line 1972
	mov	"\0\0SE",r10
!   _temp_2105 = &semUsedInSynchMethods
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
	mov	1975,r13		! source line 1975
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2114 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2108
	cmp	r1,2
	be	_Label_2109
	cmp	r1,3
	be	_Label_2110
	cmp	r1,4
	be	_Label_2111
	cmp	r1,5
	be	_Label_2112
	cmp	r1,6
	be	_Label_2113
	jmp	_Label_2106
! CASE 1...
_Label_2108:
! SEND STATEMENT...
	mov	1977,r13		! source line 1977
	mov	"\0\0SE",r10
!   _temp_2115 = &diskBusy
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
	mov	1978,r13		! source line 1978
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2109:
! CALL STATEMENT...
!   _temp_2116 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2116  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1980,r13		! source line 1980
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2110:
! CALL STATEMENT...
!   _temp_2117 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2117  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1982,r13		! source line 1982
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2111:
! CALL STATEMENT...
!   _temp_2118 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2118  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1984,r13		! source line 1984
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2112:
! BREAK STATEMENT...
	mov	1988,r13		! source line 1988
	mov	"\0\0BR",r10
	jmp	_Label_2107
! CASE 6...
_Label_2113:
! CALL STATEMENT...
!   _temp_2119 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2119  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1990,r13		! source line 1990
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2106:
! CALL STATEMENT...
!   _temp_2120 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2120  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1992,r13		! source line 1992
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2107:
! END WHILE...
	jmp	_Label_2100
_Label_2102:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2121
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2122
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2123
	.word	12
	.word	4
	.word	_Label_2124
	.word	16
	.word	4
	.word	_Label_2125
	.word	20
	.word	4
	.word	_Label_2126
	.word	-12
	.word	4
	.word	_Label_2127
	.word	-16
	.word	4
	.word	_Label_2128
	.word	-20
	.word	4
	.word	_Label_2129
	.word	-24
	.word	4
	.word	_Label_2130
	.word	-28
	.word	4
	.word	_Label_2131
	.word	-32
	.word	4
	.word	_Label_2132
	.word	-36
	.word	4
	.word	_Label_2133
	.word	-40
	.word	4
	.word	_Label_2134
	.word	-44
	.word	4
	.word	_Label_2135
	.word	-48
	.word	4
	.word	_Label_2136
	.word	-52
	.word	4
	.word	0
_Label_2121:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2122:
	.ascii	"Pself\0"
	.align
_Label_2123:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2124:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2125:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2126:
	.byte	'?'
	.ascii	"_temp_2120\0"
	.align
_Label_2127:
	.byte	'?'
	.ascii	"_temp_2119\0"
	.align
_Label_2128:
	.byte	'?'
	.ascii	"_temp_2118\0"
	.align
_Label_2129:
	.byte	'?'
	.ascii	"_temp_2117\0"
	.align
_Label_2130:
	.byte	'?'
	.ascii	"_temp_2116\0"
	.align
_Label_2131:
	.byte	'?'
	.ascii	"_temp_2115\0"
	.align
_Label_2132:
	.byte	'?'
	.ascii	"_temp_2114\0"
	.align
_Label_2133:
	.byte	'?'
	.ascii	"_temp_2105\0"
	.align
_Label_2134:
	.byte	'?'
	.ascii	"_temp_2104\0"
	.align
_Label_2135:
	.byte	'?'
	.ascii	"_temp_2103\0"
	.align
_Label_2136:
	.byte	'?'
	.ascii	"_temp_2099\0"
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
	mov	2001,r13		! source line 2001
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2016,r13		! source line 2016
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2019,r13		! source line 2019
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
	mov	2020,r13		! source line 2020
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
	mov	2021,r13		! source line 2021
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
	mov	2022,r13		! source line 2022
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
	mov	2022,r13		! source line 2022
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
	.word	_Label_2137
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2138
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2139
	.word	12
	.word	4
	.word	_Label_2140
	.word	16
	.word	4
	.word	_Label_2141
	.word	20
	.word	4
	.word	_Label_2142
	.word	24
	.word	4
	.word	0
_Label_2137:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2138:
	.ascii	"Pself\0"
	.align
_Label_2139:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2140:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2141:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2142:
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
_Label_3105:
	push	r0
	sub	r1,1,r1
	bne	_Label_3105
	mov	2027,r13		! source line 2027
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2039,r13		! source line 2039
	mov	"\0\0SE",r10
!   _temp_2143 = &diskBusy
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
	mov	2040,r13		! source line 2040
	mov	"\0\0WH",r10
_Label_2144:
!	jmp	_Label_2145
_Label_2145:
	mov	2040,r13		! source line 2040
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2041,r13		! source line 2041
	mov	"\0\0SE",r10
!   _temp_2147 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2148) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2147  sizeInBytes=4
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
	mov	2043,r13		! source line 2043
	mov	"\0\0SE",r10
!   _temp_2149 = &semUsedInSynchMethods
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
	mov	2046,r13		! source line 2046
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2158 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2152
	cmp	r1,2
	be	_Label_2153
	cmp	r1,3
	be	_Label_2154
	cmp	r1,4
	be	_Label_2155
	cmp	r1,5
	be	_Label_2156
	cmp	r1,6
	be	_Label_2157
	jmp	_Label_2150
! CASE 1...
_Label_2152:
! SEND STATEMENT...
	mov	2048,r13		! source line 2048
	mov	"\0\0SE",r10
!   _temp_2159 = &diskBusy
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
	mov	2049,r13		! source line 2049
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2153:
! CALL STATEMENT...
!   _temp_2160 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2160  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2051,r13		! source line 2051
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2154:
! CALL STATEMENT...
!   _temp_2161 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2161  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2053,r13		! source line 2053
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2155:
! CALL STATEMENT...
!   _temp_2162 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2162  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2055,r13		! source line 2055
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2156:
! BREAK STATEMENT...
	mov	2059,r13		! source line 2059
	mov	"\0\0BR",r10
	jmp	_Label_2151
! CASE 6...
_Label_2157:
! CALL STATEMENT...
!   _temp_2163 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2163  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2061,r13		! source line 2061
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2150:
! CALL STATEMENT...
!   _temp_2164 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2164  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2063,r13		! source line 2063
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2151:
! END WHILE...
	jmp	_Label_2144
_Label_2146:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2165
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2166
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2167
	.word	12
	.word	4
	.word	_Label_2168
	.word	16
	.word	4
	.word	_Label_2169
	.word	20
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
	.word	_Label_2177
	.word	-40
	.word	4
	.word	_Label_2178
	.word	-44
	.word	4
	.word	_Label_2179
	.word	-48
	.word	4
	.word	_Label_2180
	.word	-52
	.word	4
	.word	0
_Label_2165:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2166:
	.ascii	"Pself\0"
	.align
_Label_2167:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2168:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2169:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2170:
	.byte	'?'
	.ascii	"_temp_2164\0"
	.align
_Label_2171:
	.byte	'?'
	.ascii	"_temp_2163\0"
	.align
_Label_2172:
	.byte	'?'
	.ascii	"_temp_2162\0"
	.align
_Label_2173:
	.byte	'?'
	.ascii	"_temp_2161\0"
	.align
_Label_2174:
	.byte	'?'
	.ascii	"_temp_2160\0"
	.align
_Label_2175:
	.byte	'?'
	.ascii	"_temp_2159\0"
	.align
_Label_2176:
	.byte	'?'
	.ascii	"_temp_2158\0"
	.align
_Label_2177:
	.byte	'?'
	.ascii	"_temp_2149\0"
	.align
_Label_2178:
	.byte	'?'
	.ascii	"_temp_2148\0"
	.align
_Label_2179:
	.byte	'?'
	.ascii	"_temp_2147\0"
	.align
_Label_2180:
	.byte	'?'
	.ascii	"_temp_2143\0"
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
	mov	2072,r13		! source line 2072
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2087,r13		! source line 2087
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2089,r13		! source line 2089
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
	mov	2090,r13		! source line 2090
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
	mov	2091,r13		! source line 2091
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
	mov	2092,r13		! source line 2092
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
	mov	2092,r13		! source line 2092
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
	.word	_Label_2181
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2182
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2183
	.word	12
	.word	4
	.word	_Label_2184
	.word	16
	.word	4
	.word	_Label_2185
	.word	20
	.word	4
	.word	_Label_2186
	.word	24
	.word	4
	.word	0
_Label_2181:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2182:
	.ascii	"Pself\0"
	.align
_Label_2183:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2184:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2185:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2186:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2187
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
_Label_2187:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2188
	.word	_sourceFileName
	.word	330		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2188:
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
_Label_3106:
	push	r0
	sub	r1,1,r1
	bne	_Label_3106
	mov	2103,r13		! source line 2103
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2189 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2189  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2110,r13		! source line 2110
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2111,r13		! source line 2111
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
	mov	2112,r13		! source line 2112
	mov	"\0\0SE",r10
!   _temp_2191 = &fileManagerLock
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
	mov	2115,r13		! source line 2115
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
	mov	2116,r13		! source line 2116
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
	mov	2117,r13		! source line 2117
	mov	"\0\0SE",r10
!   _temp_2194 = &anFCBBecameFree
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
	mov	2118,r13		! source line 2118
	mov	"\0\0AS",r10
!   _temp_2195 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2197 = &_temp_2196
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2197 = _temp_2197 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2199 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3107:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3107
!   _temp_2199 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2201:
!   Data Move: *_temp_2197 = _temp_2199  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3108:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3108
!   _temp_2197 = _temp_2197 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2198 = _temp_2198 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2198) then goto _Label_2201
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2201
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2202 = &_temp_2196
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3109
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3109:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2195 = *_temp_2202  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3110:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3110
! FOR STATEMENT...
	mov	2120,r13		! source line 2120
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2207 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2208 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2207  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2203:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2208 then goto _Label_2206		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2206
_Label_2204:
	mov	2120,r13		! source line 2120
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2121,r13		! source line 2121
	mov	"\0\0AS",r10
!   _temp_2209 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2209 [i ] into _temp_2210
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
!   _temp_2211 = _temp_2210 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2211 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2122,r13		! source line 2122
	mov	"\0\0SE",r10
!   _temp_2212 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2212 [i ] into _temp_2213
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
	mov	2123,r13		! source line 2123
	mov	"\0\0SE",r10
!   _temp_2215 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2215 [i ] into _temp_2216
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
!   _temp_2214 = _temp_2216		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2217 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2214  sizeInBytes=4
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
_Label_2205:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2203
! END FOR
_Label_2206:
! ASSIGNMENT STATEMENT...
	mov	2127,r13		! source line 2127
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
	mov	2128,r13		! source line 2128
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
	mov	2129,r13		! source line 2129
	mov	"\0\0SE",r10
!   _temp_2220 = &anOpenFileBecameFree
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
	mov	2130,r13		! source line 2130
	mov	"\0\0AS",r10
!   _temp_2221 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2223 = &_temp_2222
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2223 = _temp_2223 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2225 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3111:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3111
!   _temp_2225 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2227:
!   Data Move: *_temp_2223 = _temp_2225  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3112:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3112
!   _temp_2223 = _temp_2223 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2224 = _temp_2224 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2224) then goto _Label_2227
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2227
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2228 = &_temp_2222
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3113
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3113:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2221 = *_temp_2228  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3114:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3114
! FOR STATEMENT...
	mov	2132,r13		! source line 2132
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2233 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2234 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2233  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2229:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2234 then goto _Label_2232		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2232
_Label_2230:
	mov	2132,r13		! source line 2132
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2133,r13		! source line 2133
	mov	"\0\0AS",r10
!   _temp_2235 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2235 [i ] into _temp_2236
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
!   _temp_2237 = _temp_2236 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2237 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2134,r13		! source line 2134
	mov	"\0\0SE",r10
!   _temp_2239 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2239 [i ] into _temp_2240
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
!   _temp_2238 = _temp_2240		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2241 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2238  sizeInBytes=4
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
_Label_2231:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2229
! END FOR
_Label_2232:
! ASSIGNMENT STATEMENT...
	mov	2138,r13		! source line 2138
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3115:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3115
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2139,r13		! source line 2139
	mov	"\0\0AS",r10
!   _temp_2243 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2244 = _temp_2243 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2244 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2144,r13		! source line 2144
	mov	"\0\0AS",r10
	mov	2144,r13		! source line 2144
	mov	"\0\0SE",r10
!   _temp_2245 = &_P_Kernel_frameManager
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
	mov	2145,r13		! source line 2145
	mov	"\0\0SE",r10
!   _temp_2246 = &_P_Kernel_diskDriver
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
	mov	2145,r13		! source line 2145
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
	.word	_Label_2247
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2248
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2249
	.word	-12
	.word	4
	.word	_Label_2250
	.word	-16
	.word	4
	.word	_Label_2251
	.word	-20
	.word	4
	.word	_Label_2252
	.word	-24
	.word	4
	.word	_Label_2253
	.word	-28
	.word	4
	.word	_Label_2254
	.word	-32
	.word	4
	.word	_Label_2255
	.word	-36
	.word	4
	.word	_Label_2256
	.word	-40
	.word	4
	.word	_Label_2257
	.word	-44
	.word	4
	.word	_Label_2258
	.word	-48
	.word	4
	.word	_Label_2259
	.word	-52
	.word	4
	.word	_Label_2260
	.word	-56
	.word	4
	.word	_Label_2261
	.word	-60
	.word	4
	.word	_Label_2262
	.word	-64
	.word	4
	.word	_Label_2263
	.word	-68
	.word	4
	.word	_Label_2264
	.word	-72
	.word	4
	.word	_Label_2265
	.word	-100
	.word	28
	.word	_Label_2266
	.word	-104
	.word	4
	.word	_Label_2267
	.word	-108
	.word	4
	.word	_Label_2268
	.word	-392
	.word	284
	.word	_Label_2269
	.word	-396
	.word	4
	.word	_Label_2270
	.word	-400
	.word	4
	.word	_Label_2271
	.word	-404
	.word	4
	.word	_Label_2272
	.word	-408
	.word	4
	.word	_Label_2273
	.word	-412
	.word	4
	.word	_Label_2274
	.word	-416
	.word	4
	.word	_Label_2275
	.word	-420
	.word	4
	.word	_Label_2276
	.word	-424
	.word	4
	.word	_Label_2277
	.word	-428
	.word	4
	.word	_Label_2278
	.word	-432
	.word	4
	.word	_Label_2279
	.word	-436
	.word	4
	.word	_Label_2280
	.word	-440
	.word	4
	.word	_Label_2281
	.word	-444
	.word	4
	.word	_Label_2282
	.word	-448
	.word	4
	.word	_Label_2283
	.word	-452
	.word	4
	.word	_Label_2284
	.word	-456
	.word	4
	.word	_Label_2285
	.word	-460
	.word	4
	.word	_Label_2286
	.word	-500
	.word	40
	.word	_Label_2287
	.word	-504
	.word	4
	.word	_Label_2288
	.word	-508
	.word	4
	.word	_Label_2289
	.word	-912
	.word	404
	.word	_Label_2290
	.word	-916
	.word	4
	.word	_Label_2291
	.word	-920
	.word	4
	.word	_Label_2292
	.word	-924
	.word	4
	.word	_Label_2293
	.word	-928
	.word	4
	.word	_Label_2294
	.word	-932
	.word	4
	.word	_Label_2295
	.word	-936
	.word	4
	.word	_Label_2296
	.word	-940
	.word	4
	.word	_Label_2297
	.word	-944
	.word	4
	.word	0
_Label_2247:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2248:
	.ascii	"Pself\0"
	.align
_Label_2249:
	.byte	'?'
	.ascii	"_temp_2246\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2245\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2252:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2253:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2254:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2255:
	.byte	'?'
	.ascii	"_temp_2240\0"
	.align
_Label_2256:
	.byte	'?'
	.ascii	"_temp_2239\0"
	.align
_Label_2257:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2259:
	.byte	'?'
	.ascii	"_temp_2236\0"
	.align
_Label_2260:
	.byte	'?'
	.ascii	"_temp_2235\0"
	.align
_Label_2261:
	.byte	'?'
	.ascii	"_temp_2234\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2233\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2228\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2226\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2225\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2224\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2270:
	.byte	'?'
	.ascii	"_temp_2220\0"
	.align
_Label_2271:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2280:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2282:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2283:
	.byte	'?'
	.ascii	"_temp_2207\0"
	.align
_Label_2284:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2200\0"
	.align
_Label_2286:
	.byte	'?'
	.ascii	"_temp_2199\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2198\0"
	.align
_Label_2288:
	.byte	'?'
	.ascii	"_temp_2197\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2196\0"
	.align
_Label_2290:
	.byte	'?'
	.ascii	"_temp_2195\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2194\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2193\0"
	.align
_Label_2293:
	.byte	'?'
	.ascii	"_temp_2192\0"
	.align
_Label_2294:
	.byte	'?'
	.ascii	"_temp_2191\0"
	.align
_Label_2295:
	.byte	'?'
	.ascii	"_temp_2190\0"
	.align
_Label_2296:
	.byte	'?'
	.ascii	"_temp_2189\0"
	.align
_Label_2297:
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
_Label_3116:
	push	r0
	sub	r1,1,r1
	bne	_Label_3116
	mov	2152,r13		! source line 2152
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2154,r13		! source line 2154
	mov	"\0\0SE",r10
!   _temp_2298 = &fileManagerLock
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
!   _temp_2299 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2299  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2155,r13		! source line 2155
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2156,r13		! source line 2156
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2304 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2305 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2304  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2300:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2305 then goto _Label_2303		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2303
_Label_2301:
	mov	2156,r13		! source line 2156
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2306 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2306  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2157,r13		! source line 2157
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2158,r13		! source line 2158
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2307 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2307  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2159,r13		! source line 2159
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2160,r13		! source line 2160
	mov	"\0\0SE",r10
!   _temp_2308 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2308 [i ] into _temp_2309
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
_Label_2302:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2300
! END FOR
_Label_2303:
! CALL STATEMENT...
!   _temp_2310 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2310  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2162,r13		! source line 2162
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2163,r13		! source line 2163
	mov	"\0\0SE",r10
!   _temp_2311 = _function_205_printFCB
	set	_function_205_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2312 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2311  sizeInBytes=4
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
	mov	2164,r13		! source line 2164
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2313 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2313  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2165,r13		! source line 2165
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2166,r13		! source line 2166
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2318 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2319 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2318  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2314:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2319 then goto _Label_2317		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2317
_Label_2315:
	mov	2166,r13		! source line 2166
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2320 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2320  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2167,r13		! source line 2167
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2168,r13		! source line 2168
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2321 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2321  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2169,r13		! source line 2169
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2323 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2323 [i ] into _temp_2324
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
!   _temp_2322 = _temp_2324		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2322  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2170,r13		! source line 2170
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2325 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2325  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2171,r13		! source line 2171
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2172,r13		! source line 2172
	mov	"\0\0SE",r10
!   _temp_2326 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2326 [i ] into _temp_2327
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
_Label_2316:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2314
! END FOR
_Label_2317:
! CALL STATEMENT...
!   _temp_2328 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2328  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2174,r13		! source line 2174
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2175,r13		! source line 2175
	mov	"\0\0SE",r10
!   _temp_2329 = _function_204_printOpen
	set	_function_204_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2330 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2329  sizeInBytes=4
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
	mov	2176,r13		! source line 2176
	mov	"\0\0SE",r10
!   _temp_2331 = &fileManagerLock
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
	mov	2176,r13		! source line 2176
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
	.word	_Label_2332
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2333
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2334
	.word	-12
	.word	4
	.word	_Label_2335
	.word	-16
	.word	4
	.word	_Label_2336
	.word	-20
	.word	4
	.word	_Label_2337
	.word	-24
	.word	4
	.word	_Label_2338
	.word	-28
	.word	4
	.word	_Label_2339
	.word	-32
	.word	4
	.word	_Label_2340
	.word	-36
	.word	4
	.word	_Label_2341
	.word	-40
	.word	4
	.word	_Label_2342
	.word	-44
	.word	4
	.word	_Label_2343
	.word	-48
	.word	4
	.word	_Label_2344
	.word	-52
	.word	4
	.word	_Label_2345
	.word	-56
	.word	4
	.word	_Label_2346
	.word	-60
	.word	4
	.word	_Label_2347
	.word	-64
	.word	4
	.word	_Label_2348
	.word	-68
	.word	4
	.word	_Label_2349
	.word	-72
	.word	4
	.word	_Label_2350
	.word	-76
	.word	4
	.word	_Label_2351
	.word	-80
	.word	4
	.word	_Label_2352
	.word	-84
	.word	4
	.word	_Label_2353
	.word	-88
	.word	4
	.word	_Label_2354
	.word	-92
	.word	4
	.word	_Label_2355
	.word	-96
	.word	4
	.word	_Label_2356
	.word	-100
	.word	4
	.word	_Label_2357
	.word	-104
	.word	4
	.word	_Label_2358
	.word	-108
	.word	4
	.word	_Label_2359
	.word	-112
	.word	4
	.word	_Label_2360
	.word	-116
	.word	4
	.word	0
_Label_2332:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2333:
	.ascii	"Pself\0"
	.align
_Label_2334:
	.byte	'?'
	.ascii	"_temp_2331\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2330\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2326\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2325\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2342:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2322\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2321\0"
	.align
_Label_2345:
	.byte	'?'
	.ascii	"_temp_2320\0"
	.align
_Label_2346:
	.byte	'?'
	.ascii	"_temp_2319\0"
	.align
_Label_2347:
	.byte	'?'
	.ascii	"_temp_2318\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2311\0"
	.align
_Label_2351:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2352:
	.byte	'?'
	.ascii	"_temp_2309\0"
	.align
_Label_2353:
	.byte	'?'
	.ascii	"_temp_2308\0"
	.align
_Label_2354:
	.byte	'?'
	.ascii	"_temp_2307\0"
	.align
_Label_2355:
	.byte	'?'
	.ascii	"_temp_2306\0"
	.align
_Label_2356:
	.byte	'?'
	.ascii	"_temp_2305\0"
	.align
_Label_2357:
	.byte	'?'
	.ascii	"_temp_2304\0"
	.align
_Label_2358:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2359:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2360:
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
_Label_3117:
	push	r0
	sub	r1,1,r1
	bne	_Label_3117
	mov	2181,r13		! source line 2181
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2197,r13		! source line 2197
	mov	"\0\0AS",r10
	mov	2197,r13		! source line 2197
	mov	"\0\0SE",r10
!   _temp_2361 = &_P_Kernel_fileManager
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
	mov	2198,r13		! source line 2198
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2362
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2362
	jmp	_Label_2363
_Label_2362:
! THEN...
	mov	2199,r13		! source line 2199
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2199,r13		! source line 2199
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2363:
! SEND STATEMENT...
	mov	2203,r13		! source line 2203
	mov	"\0\0SE",r10
!   _temp_2364 = &fileManagerLock
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
	mov	2204,r13		! source line 2204
	mov	"\0\0WH",r10
_Label_2365:
	mov	2204,r13		! source line 2204
	mov	"\0\0SE",r10
!   _temp_2368 = &openFileFreeList
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
!   if result==true then goto _Label_2366 else goto _Label_2367
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2367
	jmp	_Label_2366
_Label_2366:
	mov	2204,r13		! source line 2204
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2205,r13		! source line 2205
	mov	"\0\0SE",r10
!   _temp_2369 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2370 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2369  sizeInBytes=4
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
	jmp	_Label_2365
_Label_2367:
! ASSIGNMENT STATEMENT...
	mov	2207,r13		! source line 2207
	mov	"\0\0AS",r10
	mov	2207,r13		! source line 2207
	mov	"\0\0SE",r10
!   _temp_2371 = &openFileFreeList
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
	mov	2210,r13		! source line 2210
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2372 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2372 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2211,r13		! source line 2211
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2373 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2373 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2214,r13		! source line 2214
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2374 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2374 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2216,r13		! source line 2216
	mov	"\0\0SE",r10
!   _temp_2375 = &fileManagerLock
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
	mov	2217,r13		! source line 2217
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
	.word	_Label_2376
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2377
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2378
	.word	12
	.word	4
	.word	_Label_2379
	.word	-12
	.word	4
	.word	_Label_2380
	.word	-16
	.word	4
	.word	_Label_2381
	.word	-20
	.word	4
	.word	_Label_2382
	.word	-24
	.word	4
	.word	_Label_2383
	.word	-28
	.word	4
	.word	_Label_2384
	.word	-32
	.word	4
	.word	_Label_2385
	.word	-36
	.word	4
	.word	_Label_2386
	.word	-40
	.word	4
	.word	_Label_2387
	.word	-44
	.word	4
	.word	_Label_2388
	.word	-48
	.word	4
	.word	_Label_2389
	.word	-52
	.word	4
	.word	_Label_2390
	.word	-56
	.word	4
	.word	0
_Label_2376:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2377:
	.ascii	"Pself\0"
	.align
_Label_2378:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2379:
	.byte	'?'
	.ascii	"_temp_2375\0"
	.align
_Label_2380:
	.byte	'?'
	.ascii	"_temp_2374\0"
	.align
_Label_2381:
	.byte	'?'
	.ascii	"_temp_2373\0"
	.align
_Label_2382:
	.byte	'?'
	.ascii	"_temp_2372\0"
	.align
_Label_2383:
	.byte	'?'
	.ascii	"_temp_2371\0"
	.align
_Label_2384:
	.byte	'?'
	.ascii	"_temp_2370\0"
	.align
_Label_2385:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2386:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2387:
	.byte	'?'
	.ascii	"_temp_2364\0"
	.align
_Label_2388:
	.byte	'?'
	.ascii	"_temp_2361\0"
	.align
_Label_2389:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2390:
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
_Label_3118:
	push	r0
	sub	r1,1,r1
	bne	_Label_3118
	mov	2222,r13		! source line 2222
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2247,r13		! source line 2247
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2250,r13		! source line 2250
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
	mov	2251,r13		! source line 2251
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2252,r13		! source line 2252
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2392		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2392
!	jmp	_Label_2391
_Label_2391:
! THEN...
	mov	2253,r13		! source line 2253
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2393 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2393  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2253,r13		! source line 2253
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2392:
! ASSIGNMENT STATEMENT...
	mov	2257,r13		! source line 2257
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
	mov	2258,r13		! source line 2258
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2259,r13		! source line 2259
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
	mov	2260,r13		! source line 2260
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2263,r13		! source line 2263
	mov	"\0\0WH",r10
_Label_2394:
!   if numFiles <= 0 then goto _Label_2396		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2396
!	jmp	_Label_2395
_Label_2395:
	mov	2263,r13		! source line 2263
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2397 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2397  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2264,r13		! source line 2264
	mov	"\0\0CA",r10
	call	_function_206_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2265,r13		! source line 2265
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2398 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2398  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2266,r13		! source line 2266
	mov	"\0\0CA",r10
	call	_function_206_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2267,r13		! source line 2267
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2399 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2399  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2268,r13		! source line 2268
	mov	"\0\0CA",r10
	call	_function_206_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2269,r13		! source line 2269
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2270,r13		! source line 2270
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2403 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2403 then goto _Label_2401		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2401
!	jmp	_Label_2402
_Label_2402:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2405
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
!   _temp_2404 = _temp_2405		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2404  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2271,r13		! source line 2271
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2400 else goto _Label_2401
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2401
	jmp	_Label_2400
_Label_2400:
! THEN...
	mov	2272,r13		! source line 2272
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2272,r13		! source line 2272
	mov	"\0\0BR",r10
	jmp	_Label_2396
! END IF...
_Label_2401:
! ASSIGNMENT STATEMENT...
	mov	2274,r13		! source line 2274
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2275,r13		! source line 2275
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2394
_Label_2396:
! IF STATEMENT...
	mov	2279,r13		! source line 2279
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2407		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2407
!	jmp	_Label_2406
_Label_2406:
! THEN...
	mov	2280,r13		! source line 2280
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2280,r13		! source line 2280
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2407:
! SEND STATEMENT...
	mov	2283,r13		! source line 2283
	mov	"\0\0SE",r10
!   _temp_2408 = &fileManagerLock
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
	mov	2285,r13		! source line 2285
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2413 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2414 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2413  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2409:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2414 then goto _Label_2412		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2412
_Label_2410:
	mov	2285,r13		! source line 2285
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2286,r13		! source line 2286
	mov	"\0\0AS",r10
!   _temp_2415 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2415 [i ] into _temp_2416
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
!   fcb = _temp_2416		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2287,r13		! source line 2287
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2420 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2419 = *_temp_2420  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2419 != start then goto _Label_2418		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2418
!	jmp	_Label_2417
_Label_2417:
! THEN...
	mov	2288,r13		! source line 2288
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2288,r13		! source line 2288
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2421 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2424 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2423 = *_temp_2424  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2422 = _temp_2423 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2421 = _temp_2422  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2289,r13		! source line 2289
	mov	"\0\0SE",r10
!   _temp_2425 = &fileManagerLock
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
	mov	2290,r13		! source line 2290
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2418:
!   Increment the FOR-LOOP index variable and jump back
_Label_2411:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2409
! END FOR
_Label_2412:
! WHILE STATEMENT...
	mov	2295,r13		! source line 2295
	mov	"\0\0WH",r10
_Label_2426:
	mov	2295,r13		! source line 2295
	mov	"\0\0SE",r10
!   _temp_2429 = &fcbFreeList
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
!   if result==true then goto _Label_2427 else goto _Label_2428
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2428
	jmp	_Label_2427
_Label_2427:
	mov	2295,r13		! source line 2295
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2296,r13		! source line 2296
	mov	"\0\0SE",r10
!   _temp_2430 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2431 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2430  sizeInBytes=4
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
	jmp	_Label_2426
_Label_2428:
! ASSIGNMENT STATEMENT...
	mov	2298,r13		! source line 2298
	mov	"\0\0AS",r10
	mov	2298,r13		! source line 2298
	mov	"\0\0SE",r10
!   _temp_2432 = &fcbFreeList
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
	mov	2301,r13		! source line 2301
	mov	"\0\0SE",r10
!   _temp_2433 = &fileManagerLock
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
	mov	2304,r13		! source line 2304
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2434 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2434 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2305,r13		! source line 2305
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2435 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2435 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2306,r13		! source line 2306
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2436 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2436 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2307,r13		! source line 2307
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2441 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2440 = *_temp_2441  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2440 < 0 then goto _Label_2439		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2439
	jmp	_Label_2437
_Label_2439:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2442 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2442 ) then goto _Label_2438		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2438
!	jmp	_Label_2437
_Label_2437:
! THEN...
	mov	2308,r13		! source line 2308
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2443 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2443  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2308,r13		! source line 2308
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2438:
! RETURN STATEMENT...
	mov	2310,r13		! source line 2310
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
	.word	_Label_2444
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2445
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2446
	.word	12
	.word	4
	.word	_Label_2447
	.word	-12
	.word	4
	.word	_Label_2448
	.word	-16
	.word	4
	.word	_Label_2449
	.word	-20
	.word	4
	.word	_Label_2450
	.word	-24
	.word	4
	.word	_Label_2451
	.word	-28
	.word	4
	.word	_Label_2452
	.word	-32
	.word	4
	.word	_Label_2453
	.word	-36
	.word	4
	.word	_Label_2454
	.word	-40
	.word	4
	.word	_Label_2455
	.word	-44
	.word	4
	.word	_Label_2456
	.word	-48
	.word	4
	.word	_Label_2457
	.word	-52
	.word	4
	.word	_Label_2458
	.word	-56
	.word	4
	.word	_Label_2459
	.word	-60
	.word	4
	.word	_Label_2460
	.word	-64
	.word	4
	.word	_Label_2461
	.word	-68
	.word	4
	.word	_Label_2462
	.word	-72
	.word	4
	.word	_Label_2463
	.word	-76
	.word	4
	.word	_Label_2464
	.word	-80
	.word	4
	.word	_Label_2465
	.word	-84
	.word	4
	.word	_Label_2466
	.word	-88
	.word	4
	.word	_Label_2467
	.word	-92
	.word	4
	.word	_Label_2468
	.word	-96
	.word	4
	.word	_Label_2469
	.word	-100
	.word	4
	.word	_Label_2470
	.word	-104
	.word	4
	.word	_Label_2471
	.word	-108
	.word	4
	.word	_Label_2472
	.word	-112
	.word	4
	.word	_Label_2473
	.word	-116
	.word	4
	.word	_Label_2474
	.word	-120
	.word	4
	.word	_Label_2475
	.word	-124
	.word	4
	.word	_Label_2476
	.word	-128
	.word	4
	.word	_Label_2477
	.word	-132
	.word	4
	.word	_Label_2478
	.word	-136
	.word	4
	.word	_Label_2479
	.word	-140
	.word	4
	.word	_Label_2480
	.word	-144
	.word	4
	.word	_Label_2481
	.word	-148
	.word	4
	.word	_Label_2482
	.word	-152
	.word	4
	.word	_Label_2483
	.word	-156
	.word	4
	.word	_Label_2484
	.word	-160
	.word	4
	.word	0
_Label_2444:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2445:
	.ascii	"Pself\0"
	.align
_Label_2446:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2447:
	.byte	'?'
	.ascii	"_temp_2443\0"
	.align
_Label_2448:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2449:
	.byte	'?'
	.ascii	"_temp_2441\0"
	.align
_Label_2450:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2451:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2452:
	.byte	'?'
	.ascii	"_temp_2435\0"
	.align
_Label_2453:
	.byte	'?'
	.ascii	"_temp_2434\0"
	.align
_Label_2454:
	.byte	'?'
	.ascii	"_temp_2433\0"
	.align
_Label_2455:
	.byte	'?'
	.ascii	"_temp_2432\0"
	.align
_Label_2456:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2457:
	.byte	'?'
	.ascii	"_temp_2430\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2429\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2421\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2420\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2419\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2416\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2415\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2414\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2413\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2408\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2405\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2404\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2403\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2399\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2398\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2397\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2393\0"
	.align
_Label_2478:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2479:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2480:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2481:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2482:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2483:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2484:
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
_Label_3119:
	push	r0
	sub	r1,1,r1
	bne	_Label_3119
	mov	2323,r13		! source line 2323
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2325,r13		! source line 2325
	mov	"\0\0IF",r10
!   _temp_2487 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2487 then goto _Label_2486		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2486
!	jmp	_Label_2485
_Label_2485:
! THEN...
	mov	2326,r13		! source line 2326
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2326,r13		! source line 2326
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2486:
! SEND STATEMENT...
	mov	2328,r13		! source line 2328
	mov	"\0\0SE",r10
!   _temp_2488 = &fileManagerLock
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
	mov	2329,r13		! source line 2329
	mov	"\0\0SE",r10
!   _temp_2489 = &_P_Kernel_fileManager
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
	mov	2330,r13		! source line 2330
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2490 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2490  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2331,r13		! source line 2331
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2491 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2494 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2493 = *_temp_2494  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2492 = _temp_2493 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2491 = _temp_2492  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2332,r13		! source line 2332
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2498 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2497 = *_temp_2498  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2497 > 0 then goto _Label_2496		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2496
!	jmp	_Label_2495
_Label_2495:
! THEN...
	mov	2333,r13		! source line 2333
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2333,r13		! source line 2333
	mov	"\0\0SE",r10
!   _temp_2499 = &openFileFreeList
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
	mov	2334,r13		! source line 2334
	mov	"\0\0SE",r10
!   _temp_2500 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2501 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2500  sizeInBytes=4
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
	mov	2335,r13		! source line 2335
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2502 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2505 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2504 = *_temp_2505  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2503 = _temp_2504 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2502 = _temp_2503  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2336,r13		! source line 2336
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2509 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2508 = *_temp_2509  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2508 > 0 then goto _Label_2507		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2507
!	jmp	_Label_2506
_Label_2506:
! THEN...
	mov	2337,r13		! source line 2337
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2337,r13		! source line 2337
	mov	"\0\0SE",r10
!   _temp_2510 = &fcbFreeList
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
	mov	2338,r13		! source line 2338
	mov	"\0\0SE",r10
!   _temp_2511 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2512 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2511  sizeInBytes=4
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
_Label_2507:
! END IF...
_Label_2496:
! SEND STATEMENT...
	mov	2341,r13		! source line 2341
	mov	"\0\0SE",r10
!   _temp_2513 = &fileManagerLock
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
	mov	2341,r13		! source line 2341
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
	.word	_Label_2514
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2515
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2516
	.word	12
	.word	4
	.word	_Label_2517
	.word	-12
	.word	4
	.word	_Label_2518
	.word	-16
	.word	4
	.word	_Label_2519
	.word	-20
	.word	4
	.word	_Label_2520
	.word	-24
	.word	4
	.word	_Label_2521
	.word	-28
	.word	4
	.word	_Label_2522
	.word	-32
	.word	4
	.word	_Label_2523
	.word	-36
	.word	4
	.word	_Label_2524
	.word	-40
	.word	4
	.word	_Label_2525
	.word	-44
	.word	4
	.word	_Label_2526
	.word	-48
	.word	4
	.word	_Label_2527
	.word	-52
	.word	4
	.word	_Label_2528
	.word	-56
	.word	4
	.word	_Label_2529
	.word	-60
	.word	4
	.word	_Label_2530
	.word	-64
	.word	4
	.word	_Label_2531
	.word	-68
	.word	4
	.word	_Label_2532
	.word	-72
	.word	4
	.word	_Label_2533
	.word	-76
	.word	4
	.word	_Label_2534
	.word	-80
	.word	4
	.word	_Label_2535
	.word	-84
	.word	4
	.word	_Label_2536
	.word	-88
	.word	4
	.word	_Label_2537
	.word	-92
	.word	4
	.word	_Label_2538
	.word	-96
	.word	4
	.word	_Label_2539
	.word	-100
	.word	4
	.word	_Label_2540
	.word	-104
	.word	4
	.word	0
_Label_2514:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2515:
	.ascii	"Pself\0"
	.align
_Label_2516:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2512\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2511\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2523:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2524:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2525:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2526:
	.byte	'?'
	.ascii	"_temp_2502\0"
	.align
_Label_2527:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2500\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2499\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2498\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2497\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2534:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2535:
	.byte	'?'
	.ascii	"_temp_2491\0"
	.align
_Label_2536:
	.byte	'?'
	.ascii	"_temp_2490\0"
	.align
_Label_2537:
	.byte	'?'
	.ascii	"_temp_2489\0"
	.align
_Label_2538:
	.byte	'?'
	.ascii	"_temp_2488\0"
	.align
_Label_2539:
	.byte	'?'
	.ascii	"_temp_2487\0"
	.align
_Label_2540:
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
_Label_3120:
	push	r0
	sub	r1,1,r1
	bne	_Label_3120
	mov	2346,r13		! source line 2346
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2351,r13		! source line 2351
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2544 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2543 = *_temp_2544  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2543) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2545 = _temp_2543 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2545 ) then goto _Label_2542		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2542
!	jmp	_Label_2541
_Label_2541:
! THEN...
	mov	2352,r13		! source line 2352
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2352,r13		! source line 2352
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2550 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2549 = *_temp_2550  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2549) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2551 = _temp_2549 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2548 = *_temp_2551  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2548 >= 0 then goto _Label_2547		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2547
!	jmp	_Label_2546
_Label_2546:
! THEN...
	mov	2353,r13		! source line 2353
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2552 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2552  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2353,r13		! source line 2353
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2547:
! ASSIGNMENT STATEMENT...
	mov	2355,r13		! source line 2355
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2554 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2553 = *_temp_2554  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2553) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2555 = _temp_2553 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2555 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2356,r13		! source line 2356
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2559 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2558 = *_temp_2559  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2558) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2560 = _temp_2558 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2557 = *_temp_2560  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2563 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2562 = *_temp_2563  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2562) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2564 = _temp_2562 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2561 = *_temp_2564  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2556 = _temp_2557 + _temp_2561		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2567 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2566 = *_temp_2567  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2566) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2568 = _temp_2566 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2565 = *_temp_2568  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2569 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2556  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2565  sizeInBytes=4
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
_Label_2542:
! RETURN STATEMENT...
	mov	2351,r13		! source line 2351
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
	.word	_Label_2570
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2571
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2572
	.word	12
	.word	4
	.word	_Label_2573
	.word	-12
	.word	4
	.word	_Label_2574
	.word	-16
	.word	4
	.word	_Label_2575
	.word	-20
	.word	4
	.word	_Label_2576
	.word	-24
	.word	4
	.word	_Label_2577
	.word	-28
	.word	4
	.word	_Label_2578
	.word	-32
	.word	4
	.word	_Label_2579
	.word	-36
	.word	4
	.word	_Label_2580
	.word	-40
	.word	4
	.word	_Label_2581
	.word	-44
	.word	4
	.word	_Label_2582
	.word	-48
	.word	4
	.word	_Label_2583
	.word	-52
	.word	4
	.word	_Label_2584
	.word	-56
	.word	4
	.word	_Label_2585
	.word	-60
	.word	4
	.word	_Label_2586
	.word	-64
	.word	4
	.word	_Label_2587
	.word	-68
	.word	4
	.word	_Label_2588
	.word	-72
	.word	4
	.word	_Label_2589
	.word	-76
	.word	4
	.word	_Label_2590
	.word	-80
	.word	4
	.word	_Label_2591
	.word	-84
	.word	4
	.word	_Label_2592
	.word	-88
	.word	4
	.word	_Label_2593
	.word	-92
	.word	4
	.word	_Label_2594
	.word	-96
	.word	4
	.word	_Label_2595
	.word	-100
	.word	4
	.word	_Label_2596
	.word	-104
	.word	4
	.word	_Label_2597
	.word	-108
	.word	4
	.word	0
_Label_2570:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2571:
	.ascii	"Pself\0"
	.align
_Label_2572:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2573:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2574:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2575:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2576:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2577:
	.byte	'?'
	.ascii	"_temp_2565\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2564\0"
	.align
_Label_2579:
	.byte	'?'
	.ascii	"_temp_2563\0"
	.align
_Label_2580:
	.byte	'?'
	.ascii	"_temp_2562\0"
	.align
_Label_2581:
	.byte	'?'
	.ascii	"_temp_2561\0"
	.align
_Label_2582:
	.byte	'?'
	.ascii	"_temp_2560\0"
	.align
_Label_2583:
	.byte	'?'
	.ascii	"_temp_2559\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2558\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2557\0"
	.align
_Label_2586:
	.byte	'?'
	.ascii	"_temp_2556\0"
	.align
_Label_2587:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2588:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2590:
	.byte	'?'
	.ascii	"_temp_2552\0"
	.align
_Label_2591:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2592:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2593:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2594:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2595:
	.byte	'?'
	.ascii	"_temp_2545\0"
	.align
_Label_2596:
	.byte	'?'
	.ascii	"_temp_2544\0"
	.align
_Label_2597:
	.byte	'?'
	.ascii	"_temp_2543\0"
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
_Label_3121:
	push	r0
	sub	r1,1,r1
	bne	_Label_3121
	mov	2365,r13		! source line 2365
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2380,r13		! source line 2380
	mov	"\0\0SE",r10
!   _temp_2598 = &fileManagerLock
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
	mov	2381,r13		! source line 2381
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2604		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2604
!   _temp_2603 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2605
_Label_2604:
!   _temp_2603 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2605:
!   if _temp_2603 then goto _Label_2602 else goto _Label_2599
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2599
	jmp	_Label_2602
_Label_2602:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2608 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2607 = *_temp_2608  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2607 == 0 then goto _Label_2609		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2609
!   _temp_2606 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2610
_Label_2609:
!   _temp_2606 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2610:
!   if _temp_2606 then goto _Label_2601 else goto _Label_2599
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2599
	jmp	_Label_2601
_Label_2601:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2613 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2612 = *_temp_2613  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2612) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2614 = _temp_2612 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2611 = *_temp_2614  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2611 >= 0 then goto _Label_2600		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2600
!	jmp	_Label_2599
_Label_2599:
! THEN...
	mov	2382,r13		! source line 2382
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2615 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2615  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2382,r13		! source line 2382
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2600:
! ASSIGNMENT STATEMENT...
	mov	2384,r13		! source line 2384
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2616 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2616  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2385,r13		! source line 2385
	mov	"\0\0WH",r10
_Label_2617:
!   if numBytes <= 0 then goto _Label_2619		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2619
!	jmp	_Label_2618
_Label_2618:
	mov	2385,r13		! source line 2385
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2394,r13		! source line 2394
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
	mov	2395,r13		! source line 2395
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
	mov	2399,r13		! source line 2399
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2623 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2622 = *_temp_2623  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2622 == sector then goto _Label_2621		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2621
!	jmp	_Label_2620
_Label_2620:
! THEN...
	mov	2400,r13		! source line 2400
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2400,r13		! source line 2400
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2624) then goto _runtimeErrorNullPointer
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
	mov	2402,r13		! source line 2402
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2627 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2626 = *_temp_2627  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2625 = sector + _temp_2626		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2629 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2628 = *_temp_2629  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2630 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2625  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2628  sizeInBytes=4
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
	mov	2405,r13		! source line 2405
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2631 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2631 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2406,r13		! source line 2406
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2632 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2632 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2621:
! ASSIGNMENT STATEMENT...
	mov	2408,r13		! source line 2408
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2634 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2633 = *_temp_2634  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2633 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2409,r13		! source line 2409
	mov	"\0\0AS",r10
!   _temp_2635 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2635  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2409,r13		! source line 2409
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
	mov	2413,r13		! source line 2413
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2414,r13		! source line 2414
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2415,r13		! source line 2415
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2416,r13		! source line 2416
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2617
_Label_2619:
! SEND STATEMENT...
	mov	2423,r13		! source line 2423
	mov	"\0\0SE",r10
!   _temp_2636 = &fileManagerLock
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
	mov	2424,r13		! source line 2424
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
	.word	_Label_2637
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2638
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2639
	.word	12
	.word	4
	.word	_Label_2640
	.word	16
	.word	4
	.word	_Label_2641
	.word	20
	.word	4
	.word	_Label_2642
	.word	24
	.word	4
	.word	_Label_2643
	.word	-16
	.word	4
	.word	_Label_2644
	.word	-20
	.word	4
	.word	_Label_2645
	.word	-24
	.word	4
	.word	_Label_2646
	.word	-28
	.word	4
	.word	_Label_2647
	.word	-32
	.word	4
	.word	_Label_2648
	.word	-36
	.word	4
	.word	_Label_2649
	.word	-40
	.word	4
	.word	_Label_2650
	.word	-44
	.word	4
	.word	_Label_2651
	.word	-48
	.word	4
	.word	_Label_2652
	.word	-52
	.word	4
	.word	_Label_2653
	.word	-56
	.word	4
	.word	_Label_2654
	.word	-60
	.word	4
	.word	_Label_2655
	.word	-64
	.word	4
	.word	_Label_2656
	.word	-68
	.word	4
	.word	_Label_2657
	.word	-72
	.word	4
	.word	_Label_2658
	.word	-76
	.word	4
	.word	_Label_2659
	.word	-80
	.word	4
	.word	_Label_2660
	.word	-84
	.word	4
	.word	_Label_2661
	.word	-88
	.word	4
	.word	_Label_2662
	.word	-92
	.word	4
	.word	_Label_2663
	.word	-96
	.word	4
	.word	_Label_2664
	.word	-100
	.word	4
	.word	_Label_2665
	.word	-104
	.word	4
	.word	_Label_2666
	.word	-9
	.word	1
	.word	_Label_2667
	.word	-10
	.word	1
	.word	_Label_2668
	.word	-108
	.word	4
	.word	_Label_2669
	.word	-112
	.word	4
	.word	_Label_2670
	.word	-116
	.word	4
	.word	_Label_2671
	.word	-120
	.word	4
	.word	_Label_2672
	.word	-124
	.word	4
	.word	_Label_2673
	.word	-128
	.word	4
	.word	0
_Label_2637:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2638:
	.ascii	"Pself\0"
	.align
_Label_2639:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2640:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2641:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2642:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2636\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2635\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2634\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2633\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2632\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2631\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2630\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2626\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2655:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2616\0"
	.align
_Label_2659:
	.byte	'?'
	.ascii	"_temp_2615\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2611\0"
	.align
_Label_2664:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2666:
	.byte	'C'
	.ascii	"_temp_2606\0"
	.align
_Label_2667:
	.byte	'C'
	.ascii	"_temp_2603\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2669:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2670:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2671:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2672:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2673:
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
_Label_3122:
	push	r0
	sub	r1,1,r1
	bne	_Label_3122
	mov	2429,r13		! source line 2429
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2445,r13		! source line 2445
	mov	"\0\0SE",r10
!   _temp_2674 = &fileManagerLock
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
	mov	2446,r13		! source line 2446
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2680		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2680
!   _temp_2679 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2681
_Label_2680:
!   _temp_2679 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2681:
!   if _temp_2679 then goto _Label_2678 else goto _Label_2675
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2675
	jmp	_Label_2678
_Label_2678:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2684 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2683 = *_temp_2684  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2683 == 0 then goto _Label_2685		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2685
!   _temp_2682 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2686
_Label_2685:
!   _temp_2682 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2686:
!   if _temp_2682 then goto _Label_2677 else goto _Label_2675
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2675
	jmp	_Label_2677
_Label_2677:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2689 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2688 = *_temp_2689  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2688) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2690 = _temp_2688 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2687 = *_temp_2690  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2687 >= 0 then goto _Label_2676		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2676
!	jmp	_Label_2675
_Label_2675:
! THEN...
	mov	2447,r13		! source line 2447
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2691 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2691  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2447,r13		! source line 2447
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2676:
! ASSIGNMENT STATEMENT...
	mov	2449,r13		! source line 2449
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2692 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2692  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2450,r13		! source line 2450
	mov	"\0\0WH",r10
_Label_2693:
!   if numBytes <= 0 then goto _Label_2695		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2695
!	jmp	_Label_2694
_Label_2694:
	mov	2450,r13		! source line 2450
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2459,r13		! source line 2459
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
	mov	2460,r13		! source line 2460
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
	mov	2464,r13		! source line 2464
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2699 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2698 = *_temp_2699  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2698 == sector then goto _Label_2697		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2697
!	jmp	_Label_2696
_Label_2696:
! THEN...
	mov	2466,r13		! source line 2466
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2466,r13		! source line 2466
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2700) then goto _runtimeErrorNullPointer
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
_Label_2697:
! ASSIGNMENT STATEMENT...
	mov	2468,r13		! source line 2468
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2702 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2701 = *_temp_2702  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2701 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2469,r13		! source line 2469
	mov	"\0\0AS",r10
!   _temp_2703 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2703  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2469,r13		! source line 2469
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2470,r13		! source line 2470
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2707 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2706 = *_temp_2707  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2706 != sector then goto _Label_2705		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2705
!	jmp	_Label_2704
_Label_2704:
	jmp	_Label_2708
_Label_2705:
! ELSE...
	mov	2472,r13		! source line 2472
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2472,r13		! source line 2472
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2711
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2711
	jmp	_Label_2710
_Label_2711:
!   if bytesToMove != 8192 then goto _Label_2710		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2710
!	jmp	_Label_2709
_Label_2709:
	jmp	_Label_2712
_Label_2710:
! ELSE...
	mov	2476,r13		! source line 2476
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2476,r13		! source line 2476
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2715 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2714 = *_temp_2715  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2713 = sector + _temp_2714		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2717 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2716 = *_temp_2717  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2718 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2713  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2716  sizeInBytes=4
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
_Label_2712:
! END IF...
_Label_2708:
! ASSIGNMENT STATEMENT...
	mov	2480,r13		! source line 2480
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2719 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2719 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2481,r13		! source line 2481
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2720 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2720 = 1  (sizeInBytes=1)
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
	mov	2485,r13		! source line 2485
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2486,r13		! source line 2486
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2487,r13		! source line 2487
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2488,r13		! source line 2488
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2693
_Label_2695:
! SEND STATEMENT...
	mov	2495,r13		! source line 2495
	mov	"\0\0SE",r10
!   _temp_2721 = &fileManagerLock
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
	mov	2497,r13		! source line 2497
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
	.word	_Label_2722
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2723
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2724
	.word	12
	.word	4
	.word	_Label_2725
	.word	16
	.word	4
	.word	_Label_2726
	.word	20
	.word	4
	.word	_Label_2727
	.word	24
	.word	4
	.word	_Label_2728
	.word	-16
	.word	4
	.word	_Label_2729
	.word	-20
	.word	4
	.word	_Label_2730
	.word	-24
	.word	4
	.word	_Label_2731
	.word	-28
	.word	4
	.word	_Label_2732
	.word	-32
	.word	4
	.word	_Label_2733
	.word	-36
	.word	4
	.word	_Label_2734
	.word	-40
	.word	4
	.word	_Label_2735
	.word	-44
	.word	4
	.word	_Label_2736
	.word	-48
	.word	4
	.word	_Label_2737
	.word	-52
	.word	4
	.word	_Label_2738
	.word	-56
	.word	4
	.word	_Label_2739
	.word	-60
	.word	4
	.word	_Label_2740
	.word	-64
	.word	4
	.word	_Label_2741
	.word	-68
	.word	4
	.word	_Label_2742
	.word	-72
	.word	4
	.word	_Label_2743
	.word	-76
	.word	4
	.word	_Label_2744
	.word	-80
	.word	4
	.word	_Label_2745
	.word	-84
	.word	4
	.word	_Label_2746
	.word	-88
	.word	4
	.word	_Label_2747
	.word	-92
	.word	4
	.word	_Label_2748
	.word	-96
	.word	4
	.word	_Label_2749
	.word	-100
	.word	4
	.word	_Label_2750
	.word	-104
	.word	4
	.word	_Label_2751
	.word	-108
	.word	4
	.word	_Label_2752
	.word	-112
	.word	4
	.word	_Label_2753
	.word	-9
	.word	1
	.word	_Label_2754
	.word	-10
	.word	1
	.word	_Label_2755
	.word	-116
	.word	4
	.word	_Label_2756
	.word	-120
	.word	4
	.word	_Label_2757
	.word	-124
	.word	4
	.word	_Label_2758
	.word	-128
	.word	4
	.word	_Label_2759
	.word	-132
	.word	4
	.word	_Label_2760
	.word	-136
	.word	4
	.word	0
_Label_2722:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2723:
	.ascii	"Pself\0"
	.align
_Label_2724:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2725:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2726:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2727:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2728:
	.byte	'?'
	.ascii	"_temp_2721\0"
	.align
_Label_2729:
	.byte	'?'
	.ascii	"_temp_2720\0"
	.align
_Label_2730:
	.byte	'?'
	.ascii	"_temp_2719\0"
	.align
_Label_2731:
	.byte	'?'
	.ascii	"_temp_2718\0"
	.align
_Label_2732:
	.byte	'?'
	.ascii	"_temp_2717\0"
	.align
_Label_2733:
	.byte	'?'
	.ascii	"_temp_2716\0"
	.align
_Label_2734:
	.byte	'?'
	.ascii	"_temp_2715\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2714\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2713\0"
	.align
_Label_2737:
	.byte	'?'
	.ascii	"_temp_2707\0"
	.align
_Label_2738:
	.byte	'?'
	.ascii	"_temp_2706\0"
	.align
_Label_2739:
	.byte	'?'
	.ascii	"_temp_2703\0"
	.align
_Label_2740:
	.byte	'?'
	.ascii	"_temp_2702\0"
	.align
_Label_2741:
	.byte	'?'
	.ascii	"_temp_2701\0"
	.align
_Label_2742:
	.byte	'?'
	.ascii	"_temp_2700\0"
	.align
_Label_2743:
	.byte	'?'
	.ascii	"_temp_2699\0"
	.align
_Label_2744:
	.byte	'?'
	.ascii	"_temp_2698\0"
	.align
_Label_2745:
	.byte	'?'
	.ascii	"_temp_2692\0"
	.align
_Label_2746:
	.byte	'?'
	.ascii	"_temp_2691\0"
	.align
_Label_2747:
	.byte	'?'
	.ascii	"_temp_2690\0"
	.align
_Label_2748:
	.byte	'?'
	.ascii	"_temp_2689\0"
	.align
_Label_2749:
	.byte	'?'
	.ascii	"_temp_2688\0"
	.align
_Label_2750:
	.byte	'?'
	.ascii	"_temp_2687\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2684\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2683\0"
	.align
_Label_2753:
	.byte	'C'
	.ascii	"_temp_2682\0"
	.align
_Label_2754:
	.byte	'C'
	.ascii	"_temp_2679\0"
	.align
_Label_2755:
	.byte	'?'
	.ascii	"_temp_2674\0"
	.align
_Label_2756:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2757:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2758:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2759:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2760:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2761
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2761:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2762
	.word	_sourceFileName
	.word	355		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2762:
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
_Label_3123:
	push	r0
	sub	r1,1,r1
	bne	_Label_3123
	mov	2533,r13		! source line 2533
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2534,r13		! source line 2534
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2535,r13		! source line 2535
	mov	"\0\0AS",r10
	mov	2535,r13		! source line 2535
	mov	"\0\0SE",r10
!   _temp_2763 = &_P_Kernel_frameManager
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
	mov	2536,r13		! source line 2536
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2537,r13		! source line 2537
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2538,r13		! source line 2538
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2538,r13		! source line 2538
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
	.word	_Label_2764
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2765
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2766
	.word	-12
	.word	4
	.word	0
_Label_2764:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2765:
	.ascii	"Pself\0"
	.align
_Label_2766:
	.byte	'?'
	.ascii	"_temp_2763\0"
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
_Label_3124:
	push	r0
	sub	r1,1,r1
	bne	_Label_3124
	mov	2543,r13		! source line 2543
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2767 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2767  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2544,r13		! source line 2544
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2545,r13		! source line 2545
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2768 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2768  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2546,r13		! source line 2546
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2547,r13		! source line 2547
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2769 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2769  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2548,r13		! source line 2548
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2549,r13		! source line 2549
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2770 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2770  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2550,r13		! source line 2550
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2551,r13		! source line 2551
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2771 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2771  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2552,r13		! source line 2552
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2553,r13		! source line 2553
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2772 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2772  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2554,r13		! source line 2554
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2555,r13		! source line 2555
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2556,r13		! source line 2556
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2556,r13		! source line 2556
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
	.word	_Label_2773
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2774
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2775
	.word	-12
	.word	4
	.word	_Label_2776
	.word	-16
	.word	4
	.word	_Label_2777
	.word	-20
	.word	4
	.word	_Label_2778
	.word	-24
	.word	4
	.word	_Label_2779
	.word	-28
	.word	4
	.word	_Label_2780
	.word	-32
	.word	4
	.word	0
_Label_2773:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2774:
	.ascii	"Pself\0"
	.align
_Label_2775:
	.byte	'?'
	.ascii	"_temp_2772\0"
	.align
_Label_2776:
	.byte	'?'
	.ascii	"_temp_2771\0"
	.align
_Label_2777:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
_Label_2778:
	.byte	'?'
	.ascii	"_temp_2769\0"
	.align
_Label_2779:
	.byte	'?'
	.ascii	"_temp_2768\0"
	.align
_Label_2780:
	.byte	'?'
	.ascii	"_temp_2767\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_2781
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_2781:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2782
	.word	_sourceFileName
	.word	372		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2782:
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
_Label_3125:
	push	r0
	sub	r1,1,r1
	bne	_Label_3125
	mov	2567,r13		! source line 2567
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2783 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2783  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2568,r13		! source line 2568
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2569,r13		! source line 2569
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2784 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2784  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2570,r13		! source line 2570
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2571,r13		! source line 2571
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_2786		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2786
!	jmp	_Label_2785
_Label_2785:
! THEN...
	mov	2572,r13		! source line 2572
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2572,r13		! source line 2572
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
	jmp	_Label_2787
_Label_2786:
! ELSE...
	mov	2574,r13		! source line 2574
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2788 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2788  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2574,r13		! source line 2574
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2787:
! RETURN STATEMENT...
	mov	2571,r13		! source line 2571
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
	.word	_Label_2789
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2790
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2791
	.word	-12
	.word	4
	.word	_Label_2792
	.word	-16
	.word	4
	.word	_Label_2793
	.word	-20
	.word	4
	.word	0
_Label_2789:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2790:
	.ascii	"Pself\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2788\0"
	.align
_Label_2792:
	.byte	'?'
	.ascii	"_temp_2784\0"
	.align
_Label_2793:
	.byte	'?'
	.ascii	"_temp_2783\0"
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
_Label_3126:
	push	r0
	sub	r1,1,r1
	bne	_Label_3126
	mov	2580,r13		! source line 2580
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2590,r13		! source line 2590
	mov	"\0\0SE",r10
!   _temp_2794 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_2795 = _temp_2794 + 4
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
	mov	2591,r13		! source line 2591
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2592,r13		! source line 2592
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
	mov	2593,r13		! source line 2593
	mov	"\0\0SE",r10
!   _temp_2796 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_2797 = _temp_2796 + 4
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
	mov	2594,r13		! source line 2594
	mov	"\0\0RE",r10
	mov	2594,r13		! source line 2594
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_2800 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2799  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2798  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_2798  (sizeInBytes=1)
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
	.word	_Label_2801
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2802
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2803
	.word	12
	.word	4
	.word	_Label_2804
	.word	16
	.word	4
	.word	_Label_2805
	.word	-16
	.word	4
	.word	_Label_2806
	.word	-20
	.word	4
	.word	_Label_2807
	.word	-9
	.word	1
	.word	_Label_2808
	.word	-24
	.word	4
	.word	_Label_2809
	.word	-28
	.word	4
	.word	_Label_2810
	.word	-32
	.word	4
	.word	_Label_2811
	.word	-36
	.word	4
	.word	_Label_2812
	.word	-40
	.word	4
	.word	0
_Label_2801:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_2802:
	.ascii	"Pself\0"
	.align
_Label_2803:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2804:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2805:
	.byte	'?'
	.ascii	"_temp_2800\0"
	.align
_Label_2806:
	.byte	'?'
	.ascii	"_temp_2799\0"
	.align
_Label_2807:
	.byte	'C'
	.ascii	"_temp_2798\0"
	.align
_Label_2808:
	.byte	'?'
	.ascii	"_temp_2797\0"
	.align
_Label_2809:
	.byte	'?'
	.ascii	"_temp_2796\0"
	.align
_Label_2810:
	.byte	'?'
	.ascii	"_temp_2795\0"
	.align
_Label_2811:
	.byte	'?'
	.ascii	"_temp_2794\0"
	.align
_Label_2812:
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
_Label_3127:
	push	r0
	sub	r1,1,r1
	bne	_Label_3127
	mov	2599,r13		! source line 2599
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2604,r13		! source line 2604
	mov	"\0\0IF",r10
	mov	2604,r13		! source line 2604
	mov	"\0\0SE",r10
!   _temp_2816 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2817) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2816  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2815  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2815 then goto _Label_2814 else goto _Label_2813
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2813
	jmp	_Label_2814
_Label_2813:
! THEN...
	mov	2605,r13		! source line 2605
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2818 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2818  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2605,r13		! source line 2605
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2814:
! RETURN STATEMENT...
	mov	2607,r13		! source line 2607
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
	.word	_Label_2819
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2820
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2821
	.word	-16
	.word	4
	.word	_Label_2822
	.word	-20
	.word	4
	.word	_Label_2823
	.word	-24
	.word	4
	.word	_Label_2824
	.word	-9
	.word	1
	.word	_Label_2825
	.word	-28
	.word	4
	.word	0
_Label_2819:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_2820:
	.ascii	"Pself\0"
	.align
_Label_2821:
	.byte	'?'
	.ascii	"_temp_2818\0"
	.align
_Label_2822:
	.byte	'?'
	.ascii	"_temp_2817\0"
	.align
_Label_2823:
	.byte	'?'
	.ascii	"_temp_2816\0"
	.align
_Label_2824:
	.byte	'C'
	.ascii	"_temp_2815\0"
	.align
_Label_2825:
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
_Label_3128:
	push	r0
	sub	r1,1,r1
	bne	_Label_3128
	mov	2612,r13		! source line 2612
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2638,r13		! source line 2638
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2829 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_2828 = *_temp_2829  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_2828) then goto _Label_2827
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_2827
!	jmp	_Label_2826
_Label_2826:
! THEN...
	mov	2639,r13		! source line 2639
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2830 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_2830  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2639,r13		! source line 2639
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2827:
! IF STATEMENT...
	mov	2643,r13		! source line 2643
	mov	"\0\0IF",r10
	mov	2643,r13		! source line 2643
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_2834) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2833  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_2833 == 1112300152 then goto _Label_2832		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_2832
!	jmp	_Label_2831
_Label_2831:
! THEN...
	mov	2644,r13		! source line 2644
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2835 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_2835  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2644,r13		! source line 2644
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2645,r13		! source line 2645
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2832:
! ASSIGNMENT STATEMENT...
	mov	2649,r13		! source line 2649
	mov	"\0\0AS",r10
	mov	2649,r13		! source line 2649
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_2836) then goto _runtimeErrorNullPointer
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
	mov	2650,r13		! source line 2650
	mov	"\0\0AS",r10
	mov	2650,r13		! source line 2650
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_2837) then goto _runtimeErrorNullPointer
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
	mov	2651,r13		! source line 2651
	mov	"\0\0AS",r10
	mov	2651,r13		! source line 2651
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2838) then goto _runtimeErrorNullPointer
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
	mov	2652,r13		! source line 2652
	mov	"\0\0AS",r10
	mov	2652,r13		! source line 2652
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_2839) then goto _runtimeErrorNullPointer
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
	mov	2653,r13		! source line 2653
	mov	"\0\0AS",r10
	mov	2653,r13		! source line 2653
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_2840) then goto _runtimeErrorNullPointer
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
	mov	2654,r13		! source line 2654
	mov	"\0\0AS",r10
	mov	2654,r13		! source line 2654
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_2841) then goto _runtimeErrorNullPointer
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
	mov	2657,r13		! source line 2657
	mov	"\0\0IF",r10
!   _temp_2844 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_2844) then goto _Label_2843
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_2843
!	jmp	_Label_2842
_Label_2842:
! THEN...
	mov	2658,r13		! source line 2658
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2845 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_2845  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2658,r13		! source line 2658
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2659,r13		! source line 2659
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2843:
! ASSIGNMENT STATEMENT...
	mov	2661,r13		! source line 2661
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
	mov	2665,r13		! source line 2665
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_2847
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_2847
!	jmp	_Label_2846
_Label_2846:
! THEN...
	mov	2666,r13		! source line 2666
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2848 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2848  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2666,r13		! source line 2666
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2667,r13		! source line 2667
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2847:
! IF STATEMENT...
	mov	2671,r13		! source line 2671
	mov	"\0\0IF",r10
!   _temp_2851 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_2851) then goto _Label_2850
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_2850
!	jmp	_Label_2849
_Label_2849:
! THEN...
	mov	2672,r13		! source line 2672
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2852 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2852  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2672,r13		! source line 2672
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2673,r13		! source line 2673
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2850:
! IF STATEMENT...
	mov	2675,r13		! source line 2675
	mov	"\0\0IF",r10
!   _temp_2855 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_2855 then goto _Label_2854		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_2854
!	jmp	_Label_2853
_Label_2853:
! THEN...
	mov	2676,r13		! source line 2676
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2856 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2856  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2676,r13		! source line 2676
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2677,r13		! source line 2677
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2854:
! ASSIGNMENT STATEMENT...
	mov	2679,r13		! source line 2679
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
	mov	2682,r13		! source line 2682
	mov	"\0\0IF",r10
!   _temp_2859 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_2859) then goto _Label_2858
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_2858
!	jmp	_Label_2857
_Label_2857:
! THEN...
	mov	2683,r13		! source line 2683
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2860 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_2860  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2683,r13		! source line 2683
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2684,r13		! source line 2684
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2858:
! IF STATEMENT...
	mov	2686,r13		! source line 2686
	mov	"\0\0IF",r10
!   _temp_2863 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_2863 then goto _Label_2862		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_2862
!	jmp	_Label_2861
_Label_2861:
! THEN...
	mov	2687,r13		! source line 2687
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2864 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2864  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2687,r13		! source line 2687
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2688,r13		! source line 2688
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2862:
! ASSIGNMENT STATEMENT...
	mov	2690,r13		! source line 2690
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
	mov	2693,r13		! source line 2693
	mov	"\0\0AS",r10
!   _temp_2867 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_2866 = _temp_2867 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_2865 = _temp_2866 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_2865 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2708,r13		! source line 2708
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_2869		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2869
!	jmp	_Label_2868
_Label_2868:
! THEN...
	mov	2709,r13		! source line 2709
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2870 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2870  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2709,r13		! source line 2709
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2871 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2871  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2710,r13		! source line 2710
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2872 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2872  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2711,r13		! source line 2711
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2712,r13		! source line 2712
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2869:
! SEND STATEMENT...
	mov	2714,r13		! source line 2714
	mov	"\0\0SE",r10
!   _temp_2873 = &_P_Kernel_frameManager
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
	mov	2720,r13		! source line 2720
	mov	"\0\0IF",r10
	mov	2720,r13		! source line 2720
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2877) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2876  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_2876 == 707406378 then goto _Label_2875		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2875
!	jmp	_Label_2874
_Label_2874:
! THEN...
	mov	2721,r13		! source line 2721
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2878 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2878  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2721,r13		! source line 2721
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2722,r13		! source line 2722
	mov	"\0\0SE",r10
!   _temp_2879 = &_P_Kernel_frameManager
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
	mov	2723,r13		! source line 2723
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2875:
! ASSIGNMENT STATEMENT...
	mov	2727,r13		! source line 2727
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
	mov	2728,r13		! source line 2728
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2884 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2885 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2884  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_2880:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2885 then goto _Label_2883		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2883
_Label_2881:
	mov	2728,r13		! source line 2728
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2729,r13		! source line 2729
	mov	"\0\0AS",r10
	mov	2729,r13		! source line 2729
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
	mov	2732,r13		! source line 2732
	mov	"\0\0IF",r10
	mov	2732,r13		! source line 2732
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2889) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2888  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2888 then goto _Label_2887 else goto _Label_2886
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2886
	jmp	_Label_2887
_Label_2886:
! THEN...
	mov	2733,r13		! source line 2733
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2890 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2890  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2733,r13		! source line 2733
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2734,r13		! source line 2734
	mov	"\0\0SE",r10
!   _temp_2891 = &_P_Kernel_frameManager
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
	mov	2735,r13		! source line 2735
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2887:
! SEND STATEMENT...
	mov	2737,r13		! source line 2737
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
	mov	2738,r13		! source line 2738
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2882:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2880
! END FOR
_Label_2883:
! IF STATEMENT...
	mov	2742,r13		! source line 2742
	mov	"\0\0IF",r10
	mov	2742,r13		! source line 2742
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_2895) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2894  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_2894 == 707406378 then goto _Label_2893		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2893
!	jmp	_Label_2892
_Label_2892:
! THEN...
	mov	2743,r13		! source line 2743
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2896 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2896  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2743,r13		! source line 2743
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2744,r13		! source line 2744
	mov	"\0\0SE",r10
!   _temp_2897 = &_P_Kernel_frameManager
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
	mov	2745,r13		! source line 2745
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2893:
! FOR STATEMENT...
	mov	2749,r13		! source line 2749
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2902 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2903 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2902  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_2898:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2903 then goto _Label_2901		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2901
_Label_2899:
	mov	2749,r13		! source line 2749
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2750,r13		! source line 2750
	mov	"\0\0AS",r10
	mov	2750,r13		! source line 2750
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
	mov	2753,r13		! source line 2753
	mov	"\0\0IF",r10
	mov	2753,r13		! source line 2753
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2907) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2906  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2906 then goto _Label_2905 else goto _Label_2904
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2904
	jmp	_Label_2905
_Label_2904:
! THEN...
	mov	2754,r13		! source line 2754
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2908 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2908  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2754,r13		! source line 2754
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2755,r13		! source line 2755
	mov	"\0\0SE",r10
!   _temp_2909 = &_P_Kernel_frameManager
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
	mov	2756,r13		! source line 2756
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2905:
! ASSIGNMENT STATEMENT...
	mov	2758,r13		! source line 2758
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2900:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2898
! END FOR
_Label_2901:
! IF STATEMENT...
	mov	2762,r13		! source line 2762
	mov	"\0\0IF",r10
	mov	2762,r13		! source line 2762
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2913) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2912  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_2912 == 707406378 then goto _Label_2911		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2911
!	jmp	_Label_2910
_Label_2910:
! THEN...
	mov	2763,r13		! source line 2763
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2914 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2914  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2763,r13		! source line 2763
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2764,r13		! source line 2764
	mov	"\0\0SE",r10
!   _temp_2915 = &_P_Kernel_frameManager
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
	mov	2765,r13		! source line 2765
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2911:
! ASSIGNMENT STATEMENT...
	mov	2769,r13		! source line 2769
	mov	"\0\0AS",r10
	mov	2769,r13		! source line 2769
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
	mov	2773,r13		! source line 2773
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2776,r13		! source line 2776
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
	.word	_Label_2916
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_2917
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2918
	.word	12
	.word	4
	.word	_Label_2919
	.word	-16
	.word	4
	.word	_Label_2920
	.word	-20
	.word	4
	.word	_Label_2921
	.word	-24
	.word	4
	.word	_Label_2922
	.word	-28
	.word	4
	.word	_Label_2923
	.word	-32
	.word	4
	.word	_Label_2924
	.word	-36
	.word	4
	.word	_Label_2925
	.word	-40
	.word	4
	.word	_Label_2926
	.word	-9
	.word	1
	.word	_Label_2927
	.word	-44
	.word	4
	.word	_Label_2928
	.word	-48
	.word	4
	.word	_Label_2929
	.word	-52
	.word	4
	.word	_Label_2930
	.word	-56
	.word	4
	.word	_Label_2931
	.word	-60
	.word	4
	.word	_Label_2932
	.word	-64
	.word	4
	.word	_Label_2933
	.word	-68
	.word	4
	.word	_Label_2934
	.word	-72
	.word	4
	.word	_Label_2935
	.word	-76
	.word	4
	.word	_Label_2936
	.word	-10
	.word	1
	.word	_Label_2937
	.word	-80
	.word	4
	.word	_Label_2938
	.word	-84
	.word	4
	.word	_Label_2939
	.word	-88
	.word	4
	.word	_Label_2940
	.word	-92
	.word	4
	.word	_Label_2941
	.word	-96
	.word	4
	.word	_Label_2942
	.word	-100
	.word	4
	.word	_Label_2943
	.word	-104
	.word	4
	.word	_Label_2944
	.word	-108
	.word	4
	.word	_Label_2945
	.word	-112
	.word	4
	.word	_Label_2946
	.word	-116
	.word	4
	.word	_Label_2947
	.word	-120
	.word	4
	.word	_Label_2948
	.word	-124
	.word	4
	.word	_Label_2949
	.word	-128
	.word	4
	.word	_Label_2950
	.word	-132
	.word	4
	.word	_Label_2951
	.word	-136
	.word	4
	.word	_Label_2952
	.word	-140
	.word	4
	.word	_Label_2953
	.word	-144
	.word	4
	.word	_Label_2954
	.word	-148
	.word	4
	.word	_Label_2955
	.word	-152
	.word	4
	.word	_Label_2956
	.word	-156
	.word	4
	.word	_Label_2957
	.word	-160
	.word	4
	.word	_Label_2958
	.word	-164
	.word	4
	.word	_Label_2959
	.word	-168
	.word	4
	.word	_Label_2960
	.word	-172
	.word	4
	.word	_Label_2961
	.word	-176
	.word	4
	.word	_Label_2962
	.word	-180
	.word	4
	.word	_Label_2963
	.word	-184
	.word	4
	.word	_Label_2964
	.word	-188
	.word	4
	.word	_Label_2965
	.word	-192
	.word	4
	.word	_Label_2966
	.word	-196
	.word	4
	.word	_Label_2967
	.word	-200
	.word	4
	.word	_Label_2968
	.word	-204
	.word	4
	.word	_Label_2969
	.word	-208
	.word	4
	.word	_Label_2970
	.word	-212
	.word	4
	.word	_Label_2971
	.word	-216
	.word	4
	.word	_Label_2972
	.word	-220
	.word	4
	.word	_Label_2973
	.word	-224
	.word	4
	.word	_Label_2974
	.word	-228
	.word	4
	.word	_Label_2975
	.word	-232
	.word	4
	.word	_Label_2976
	.word	-236
	.word	4
	.word	_Label_2977
	.word	-240
	.word	4
	.word	_Label_2978
	.word	-244
	.word	4
	.word	_Label_2979
	.word	-248
	.word	4
	.word	_Label_2980
	.word	-252
	.word	4
	.word	_Label_2981
	.word	-256
	.word	4
	.word	_Label_2982
	.word	-260
	.word	4
	.word	_Label_2983
	.word	-264
	.word	4
	.word	_Label_2984
	.word	-268
	.word	4
	.word	0
_Label_2916:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_2917:
	.ascii	"Pself\0"
	.align
_Label_2918:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_2919:
	.byte	'?'
	.ascii	"_temp_2915\0"
	.align
_Label_2920:
	.byte	'?'
	.ascii	"_temp_2914\0"
	.align
_Label_2921:
	.byte	'?'
	.ascii	"_temp_2913\0"
	.align
_Label_2922:
	.byte	'?'
	.ascii	"_temp_2912\0"
	.align
_Label_2923:
	.byte	'?'
	.ascii	"_temp_2909\0"
	.align
_Label_2924:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_2925:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_2926:
	.byte	'C'
	.ascii	"_temp_2906\0"
	.align
_Label_2927:
	.byte	'?'
	.ascii	"_temp_2903\0"
	.align
_Label_2928:
	.byte	'?'
	.ascii	"_temp_2902\0"
	.align
_Label_2929:
	.byte	'?'
	.ascii	"_temp_2897\0"
	.align
_Label_2930:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_2931:
	.byte	'?'
	.ascii	"_temp_2895\0"
	.align
_Label_2932:
	.byte	'?'
	.ascii	"_temp_2894\0"
	.align
_Label_2933:
	.byte	'?'
	.ascii	"_temp_2891\0"
	.align
_Label_2934:
	.byte	'?'
	.ascii	"_temp_2890\0"
	.align
_Label_2935:
	.byte	'?'
	.ascii	"_temp_2889\0"
	.align
_Label_2936:
	.byte	'C'
	.ascii	"_temp_2888\0"
	.align
_Label_2937:
	.byte	'?'
	.ascii	"_temp_2885\0"
	.align
_Label_2938:
	.byte	'?'
	.ascii	"_temp_2884\0"
	.align
_Label_2939:
	.byte	'?'
	.ascii	"_temp_2879\0"
	.align
_Label_2940:
	.byte	'?'
	.ascii	"_temp_2878\0"
	.align
_Label_2941:
	.byte	'?'
	.ascii	"_temp_2877\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2876\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2873\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2872\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2871\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
_Label_2947:
	.byte	'?'
	.ascii	"_temp_2867\0"
	.align
_Label_2948:
	.byte	'?'
	.ascii	"_temp_2866\0"
	.align
_Label_2949:
	.byte	'?'
	.ascii	"_temp_2865\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2864\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2863\0"
	.align
_Label_2952:
	.byte	'?'
	.ascii	"_temp_2860\0"
	.align
_Label_2953:
	.byte	'?'
	.ascii	"_temp_2859\0"
	.align
_Label_2954:
	.byte	'?'
	.ascii	"_temp_2856\0"
	.align
_Label_2955:
	.byte	'?'
	.ascii	"_temp_2855\0"
	.align
_Label_2956:
	.byte	'?'
	.ascii	"_temp_2852\0"
	.align
_Label_2957:
	.byte	'?'
	.ascii	"_temp_2851\0"
	.align
_Label_2958:
	.byte	'?'
	.ascii	"_temp_2848\0"
	.align
_Label_2959:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
_Label_2960:
	.byte	'?'
	.ascii	"_temp_2844\0"
	.align
_Label_2961:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2962:
	.byte	'?'
	.ascii	"_temp_2840\0"
	.align
_Label_2963:
	.byte	'?'
	.ascii	"_temp_2839\0"
	.align
_Label_2964:
	.byte	'?'
	.ascii	"_temp_2838\0"
	.align
_Label_2965:
	.byte	'?'
	.ascii	"_temp_2837\0"
	.align
_Label_2966:
	.byte	'?'
	.ascii	"_temp_2836\0"
	.align
_Label_2967:
	.byte	'?'
	.ascii	"_temp_2835\0"
	.align
_Label_2968:
	.byte	'?'
	.ascii	"_temp_2834\0"
	.align
_Label_2969:
	.byte	'?'
	.ascii	"_temp_2833\0"
	.align
_Label_2970:
	.byte	'?'
	.ascii	"_temp_2830\0"
	.align
_Label_2971:
	.byte	'?'
	.ascii	"_temp_2829\0"
	.align
_Label_2972:
	.byte	'?'
	.ascii	"_temp_2828\0"
	.align
_Label_2973:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_2974:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_2975:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_2976:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_2977:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_2978:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_2979:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_2980:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_2981:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2982:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_2983:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_2984:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
