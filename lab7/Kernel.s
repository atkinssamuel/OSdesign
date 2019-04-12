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
	.skip	1756
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
_StringConst_183:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_182:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_181:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_180:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_179:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_178:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_177:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_176:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_175:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_174:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_173:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_172:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_171:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_170:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_169:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_168:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_167:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_166:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_165:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_164:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_163:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_162:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_161:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_160:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_159:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_158:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_157:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_156:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_155:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_154:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_153:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_152:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_151:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_150:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_149:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_148:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_147:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_146:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_145:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_144:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_143:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_142:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_141:
	.word	52			! length
	.ascii	"Disk j/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_140:
	.word	95			! length
	.ascii	"Disk j/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_139:
	.word	76			! length
	.ascii	"Disk j/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_138:
	.word	99			! length
	.ascii	"Disk j/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_137:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_136:
	.word	51			! length
	.ascii	"Disk j/O error in SynchReadSector: Bad command word"
	.align
_StringConst_135:
	.word	94			! length
	.ascii	"Disk j/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_134:
	.word	75			! length
	.ascii	"Disk j/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_133:
	.word	98			! length
	.ascii	"Disk j/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_132:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_131:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_130:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_129:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_128:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_127:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_126:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_125:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_124:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_123:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_122:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_121:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_120:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_119:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_118:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_117:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_116:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_115:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_114:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_113:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_112:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_111:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_110:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_109:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_108:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_107:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_106:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_105:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_104:
	.word	29			! length
	.ascii	"should never have been called"
	.align
_StringConst_103:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_102:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_101:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_100:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_99:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_98:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_97:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_96:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_95:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_94:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_93:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_92:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_91:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_90:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_89:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_88:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_87:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_86:
	.word	6			! length
	.ascii	"thread"
	.align
_StringConst_85:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_84:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_83:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_82:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_81:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_80:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_79:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_78:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_77:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_76:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_75:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_74:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_73:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_72:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_71:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_70:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_69:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_68:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_67:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_66:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_65:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_64:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_63:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_62:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_61:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_60:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_59:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_58:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_57:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_56:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_55:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_54:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_53:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_52:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_51:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_50:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_49:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_48:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_47:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_46:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_45:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_44:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_43:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_42:
	.word	4			! length
	.ascii	"  0x"
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
	.ascii	"TestProgram4"
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
	set	0x2db95318,r4		! myHashVal = 767120152
	cmp	r3,r4
	be	_Label_193
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
_Label_193:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_194
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_194
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_194
_Label_194:
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
_Label_3971:
	push	r0
	sub	r1,1,r1
	bne	_Label_3971
	mov	8,r13		! source line 8
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	11,r13		! source line 11
	mov	"\0\0AS",r10
	mov	11,r13		! source line 11
	mov	"\0\0SE",r10
!   _temp_195 = &_P_Kernel_threadManager
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
!   _temp_196 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-20]
!   if intIsZero (thPt) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_196  sizeInBytes=4
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
!   _temp_197 = _function_192_StartUserProcess
	set	_function_192_StartUserProcess,r1
	store	r1,[r14+-16]
!   _temp_198 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-12]
!   if intIsZero (thPt) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_197  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_198  sizeInBytes=4
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
	.word	_Label_199
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_200
	.word	-12
	.word	4
	.word	_Label_201
	.word	-16
	.word	4
	.word	_Label_202
	.word	-20
	.word	4
	.word	_Label_203
	.word	-24
	.word	4
	.word	_Label_204
	.word	-28
	.word	4
	.word	0
_Label_199:
	.ascii	"InitFirstProcess\0"
	.align
_Label_200:
	.byte	'?'
	.ascii	"_temp_198\0"
	.align
_Label_201:
	.byte	'?'
	.ascii	"_temp_197\0"
	.align
_Label_202:
	.byte	'?'
	.ascii	"_temp_196\0"
	.align
_Label_203:
	.byte	'?'
	.ascii	"_temp_195\0"
	.align
_Label_204:
	.byte	'P'
	.ascii	"thPt\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_192_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_192_StartUserProcess,r1
	push	r1
	mov	23,r1
_Label_3972:
	push	r0
	sub	r1,1,r1
	bne	_Label_3972
	mov	18,r13		! source line 18
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0AS",r10
	mov	27,r13		! source line 27
	mov	"\0\0SE",r10
!   _temp_205 = &_P_Kernel_processManager
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
!   _temp_206 = PCB + 24
	load	[r14+-68],r1
	add	r1,24,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_206 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-60],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_207 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_207 = PCB  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r14+-56],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	33,r13		! source line 33
	mov	"\0\0AS",r10
	mov	33,r13		! source line 33
	mov	"\0\0SE",r10
!   _temp_208 = &_P_Kernel_fileManager
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
	mov	35,r13		! source line 35
	mov	"\0\0AS",r10
	mov	35,r13		! source line 35
	mov	"\0\0SE",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_210 = PCB + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_209 = _temp_210		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   if intIsZero (filePt) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_209  sizeInBytes=4
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
	mov	37,r13		! source line 37
	mov	"\0\0SE",r10
!   _temp_211 = &_P_Kernel_fileManager
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
	mov	39,r13		! source line 39
	mov	"\0\0AS",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_213 = PCB + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   _temp_214 = _temp_213 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_212 = *_temp_214  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_212 * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
! ASSIGNMENT STATEMENT...
	mov	40,r13		! source line 40
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_215 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_215 [999 ] into _temp_216
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
!   initSystemStackTop = _temp_216		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	41,r13		! source line 41
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	41,r13		! source line 41
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=functionPlaceholder  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! SEND STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0SE",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_217 = PCB + 32
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
	mov	43,r13		! source line 43
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_218 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_218 = 1  (sizeInBytes=1)
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
	mov	44,r13		! source line 44
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0RE",r10
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_192_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_219
	.word	4		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_220
	.word	8
	.word	4
	.word	_Label_221
	.word	-12
	.word	4
	.word	_Label_222
	.word	-16
	.word	4
	.word	_Label_223
	.word	-20
	.word	4
	.word	_Label_224
	.word	-24
	.word	4
	.word	_Label_225
	.word	-28
	.word	4
	.word	_Label_226
	.word	-32
	.word	4
	.word	_Label_227
	.word	-36
	.word	4
	.word	_Label_228
	.word	-40
	.word	4
	.word	_Label_229
	.word	-44
	.word	4
	.word	_Label_230
	.word	-48
	.word	4
	.word	_Label_231
	.word	-52
	.word	4
	.word	_Label_232
	.word	-56
	.word	4
	.word	_Label_233
	.word	-60
	.word	4
	.word	_Label_234
	.word	-64
	.word	4
	.word	_Label_235
	.word	-68
	.word	4
	.word	_Label_236
	.word	-72
	.word	4
	.word	_Label_237
	.word	-76
	.word	4
	.word	_Label_238
	.word	-80
	.word	4
	.word	_Label_239
	.word	-84
	.word	4
	.word	_Label_240
	.word	-88
	.word	4
	.word	0
_Label_219:
	.ascii	"StartUserProcess\0"
	.align
_Label_220:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_207\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_206\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_205\0"
	.align
_Label_235:
	.byte	'P'
	.ascii	"PCB\0"
	.align
_Label_236:
	.byte	'P'
	.ascii	"filePt\0"
	.align
_Label_237:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_238:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_239:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_240:
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
_Label_3973:
	push	r0
	sub	r1,1,r1
	bne	_Label_3973
	mov	47,r13		! source line 47
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	54,r13		! source line 54
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_241 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_241  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	55,r13		! source line 55
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	56,r13		! source line 56
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
	mov	57,r13		! source line 57
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
	mov	58,r13		! source line 58
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_3974:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3974
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	59,r13		! source line 59
	mov	"\0\0SE",r10
!   _temp_245 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-44]
!   _temp_246 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_245  sizeInBytes=4
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
	mov	60,r13		! source line 60
	mov	"\0\0AS",r10
!   _temp_247 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_248 = _temp_247 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_248 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	61,r13		! source line 61
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_3975:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3975
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	62,r13		! source line 62
	mov	"\0\0SE",r10
!   _temp_250 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-24]
!   _temp_251 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_250  sizeInBytes=4
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
	mov	63,r13		! source line 63
	mov	"\0\0SE",r10
!   _temp_252 = _function_191_IdleFunction
	set	_function_191_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_253 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_252  sizeInBytes=4
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
	mov	64,r13		! source line 64
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	65,r13		! source line 65
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	66,r13		! source line 66
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	67,r13		! source line 67
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	67,r13		! source line 67
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
	.word	_Label_254
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_255
	.word	-12
	.word	4
	.word	_Label_256
	.word	-16
	.word	4
	.word	_Label_257
	.word	-20
	.word	4
	.word	_Label_258
	.word	-24
	.word	4
	.word	_Label_259
	.word	-28
	.word	4
	.word	_Label_260
	.word	-32
	.word	4
	.word	_Label_261
	.word	-36
	.word	4
	.word	_Label_262
	.word	-40
	.word	4
	.word	_Label_263
	.word	-44
	.word	4
	.word	_Label_264
	.word	-48
	.word	4
	.word	_Label_265
	.word	-52
	.word	4
	.word	_Label_266
	.word	-56
	.word	4
	.word	_Label_267
	.word	-60
	.word	4
	.word	0
_Label_254:
	.ascii	"InitializeScheduler\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_191_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_191_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3976:
	push	r0
	sub	r1,1,r1
	bne	_Label_3976
	mov	72,r13		! source line 72
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	82,r13		! source line 82
	mov	"\0\0WH",r10
_Label_268:
!	jmp	_Label_269
_Label_269:
	mov	82,r13		! source line 82
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	83,r13		! source line 83
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	83,r13		! source line 83
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0IF",r10
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_273 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_271 else goto _Label_272
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_272
	jmp	_Label_271
_Label_271:
! THEN...
	mov	85,r13		! source line 85
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	85,r13		! source line 85
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_274
_Label_272:
! ELSE...
	mov	87,r13		! source line 87
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	87,r13		! source line 87
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
_Label_274:
! END WHILE...
	jmp	_Label_268
_Label_270:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_191_IdleFunction:
	.word	_sourceFileName
	.word	_Label_275
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_276
	.word	8
	.word	4
	.word	_Label_277
	.word	-12
	.word	4
	.word	_Label_278
	.word	-16
	.word	4
	.word	0
_Label_275:
	.ascii	"IdleFunction\0"
	.align
_Label_276:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_278:
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
_Label_3977:
	push	r0
	sub	r1,1,r1
	bne	_Label_3977
	mov	94,r13		! source line 94
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	108,r13		! source line 108
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
	mov	110,r13		! source line 110
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_281 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_281 ) then goto _Label_280		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_280
!	jmp	_Label_279
_Label_279:
! THEN...
	mov	111,r13		! source line 111
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_283 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_283 [0 ] into _temp_284
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
!   _temp_282 = _temp_284		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_282  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	111,r13		! source line 111
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_280:
! ASSIGNMENT STATEMENT...
	mov	113,r13		! source line 113
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	114,r13		! source line 114
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_285 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_285 = 3  (sizeInBytes=4)
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
	mov	120,r13		! source line 120
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0WH",r10
_Label_286:
	mov	124,r13		! source line 124
	mov	"\0\0SE",r10
!   _temp_290 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_289  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_289 then goto _Label_288 else goto _Label_287
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_287
	jmp	_Label_288
_Label_287:
	mov	124,r13		! source line 124
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
	mov	125,r13		! source line 125
	mov	"\0\0SE",r10
!   _temp_291 = &_P_Kernel_threadsToBeDestroyed
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
	mov	126,r13		! source line 126
	mov	"\0\0SE",r10
!   _temp_292 = &_P_Kernel_threadManager
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
	jmp	_Label_286
_Label_288:
! IF STATEMENT...
	mov	129,r13		! source line 129
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_295 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_295 ) then goto _Label_294		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_294
!	jmp	_Label_293
_Label_293:
! THEN...
	mov	130,r13		! source line 130
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_297 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_297 [0 ] into _temp_298
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
!   _temp_296 = _temp_298		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_296  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	130,r13		! source line 130
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	131,r13		! source line 131
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_300 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_299 = *_temp_300  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_299) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_301 = _temp_299 + 32
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
_Label_294:
! RETURN STATEMENT...
	mov	129,r13		! source line 129
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
	.word	_Label_302
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_303
	.word	8
	.word	4
	.word	_Label_304
	.word	-16
	.word	4
	.word	_Label_305
	.word	-20
	.word	4
	.word	_Label_306
	.word	-24
	.word	4
	.word	_Label_307
	.word	-28
	.word	4
	.word	_Label_308
	.word	-32
	.word	4
	.word	_Label_309
	.word	-36
	.word	4
	.word	_Label_310
	.word	-40
	.word	4
	.word	_Label_311
	.word	-44
	.word	4
	.word	_Label_312
	.word	-48
	.word	4
	.word	_Label_313
	.word	-52
	.word	4
	.word	_Label_314
	.word	-9
	.word	1
	.word	_Label_315
	.word	-56
	.word	4
	.word	_Label_316
	.word	-60
	.word	4
	.word	_Label_317
	.word	-64
	.word	4
	.word	_Label_318
	.word	-68
	.word	4
	.word	_Label_319
	.word	-72
	.word	4
	.word	_Label_320
	.word	-76
	.word	4
	.word	_Label_321
	.word	-80
	.word	4
	.word	0
_Label_302:
	.ascii	"Run\0"
	.align
_Label_303:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_314:
	.byte	'C'
	.ascii	"_temp_289\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_320:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_321:
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
_Label_3978:
	push	r0
	sub	r1,1,r1
	bne	_Label_3978
	mov	137,r13		! source line 137
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	144,r13		! source line 144
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_322 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_322  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	145,r13		! source line 145
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	146,r13		! source line 146
	mov	"\0\0SE",r10
!   _temp_323 = _function_190_ThreadPrintShort
	set	_function_190_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_324 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_323  sizeInBytes=4
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
	mov	147,r13		! source line 147
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	147,r13		! source line 147
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	147,r13		! source line 147
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
	.word	_Label_325
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_326
	.word	-12
	.word	4
	.word	_Label_327
	.word	-16
	.word	4
	.word	_Label_328
	.word	-20
	.word	4
	.word	_Label_329
	.word	-24
	.word	4
	.word	0
_Label_325:
	.ascii	"PrintReadyList\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_329:
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
_Label_3979:
	push	r0
	sub	r1,1,r1
	bne	_Label_3979
	mov	152,r13		! source line 152
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	164,r13		! source line 164
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	165,r13		! source line 165
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_330 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_330  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_332 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_331 = *_temp_332  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_331  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	166,r13		! source line 166
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_333 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_333  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	168,r13		! source line 168
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	168,r13		! source line 168
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
	.word	_Label_334
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_335
	.word	-12
	.word	4
	.word	_Label_336
	.word	-16
	.word	4
	.word	_Label_337
	.word	-20
	.word	4
	.word	_Label_338
	.word	-24
	.word	4
	.word	_Label_339
	.word	-28
	.word	4
	.word	_Label_340
	.word	-32
	.word	4
	.word	0
_Label_334:
	.ascii	"ThreadStartMain\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_339:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_340:
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
_Label_3980:
	push	r0
	sub	r1,1,r1
	bne	_Label_3980
	mov	173,r13		! source line 173
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	184,r13		! source line 184
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	184,r13		! source line 184
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	188,r13		! source line 188
	mov	"\0\0SE",r10
!   _temp_341 = &_P_Kernel_threadsToBeDestroyed
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
	mov	189,r13		! source line 189
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
!   _temp_342 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_342  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	191,r13		! source line 191
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	191,r13		! source line 191
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
	.word	_Label_343
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_344
	.word	-12
	.word	4
	.word	_Label_345
	.word	-16
	.word	4
	.word	_Label_346
	.word	-20
	.word	4
	.word	0
_Label_343:
	.ascii	"ThreadFinish\0"
	.align
_Label_344:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_345:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_346:
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
_Label_3981:
	push	r0
	sub	r1,1,r1
	bne	_Label_3981
	mov	196,r13		! source line 196
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	204,r13		! source line 204
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	204,r13		! source line 204
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_347 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_347  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	205,r13		! source line 205
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	206,r13		! source line 206
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_349		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_349
!	jmp	_Label_348
_Label_348:
! THEN...
	mov	207,r13		! source line 207
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_350 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_350  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	207,r13		! source line 207
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_352 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_351 = *_temp_352  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	208,r13		! source line 208
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_349:
! CALL STATEMENT...
!   _temp_353 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_353  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	210,r13		! source line 210
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	211,r13		! source line 211
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_354 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_354  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	212,r13		! source line 212
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_355 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_355  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	213,r13		! source line 213
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	214,r13		! source line 214
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	214,r13		! source line 214
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
	.word	_Label_356
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_357
	.word	8
	.word	4
	.word	_Label_358
	.word	-12
	.word	4
	.word	_Label_359
	.word	-16
	.word	4
	.word	_Label_360
	.word	-20
	.word	4
	.word	_Label_361
	.word	-24
	.word	4
	.word	_Label_362
	.word	-28
	.word	4
	.word	_Label_363
	.word	-32
	.word	4
	.word	_Label_364
	.word	-36
	.word	4
	.word	_Label_365
	.word	-40
	.word	4
	.word	0
_Label_356:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_357:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_365:
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
_Label_3982:
	push	r0
	sub	r1,1,r1
	bne	_Label_3982
	mov	219,r13		! source line 219
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	232,r13		! source line 232
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_367		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_367
!	jmp	_Label_366
_Label_366:
! THEN...
	mov	235,r13		! source line 235
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	236,r13		! source line 236
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_368
_Label_367:
! ELSE...
	mov	238,r13		! source line 238
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	238,r13		! source line 238
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	239,r13		! source line 239
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_368:
! RETURN STATEMENT...
	mov	241,r13		! source line 241
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
	.word	_Label_369
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_370
	.word	8
	.word	4
	.word	_Label_371
	.word	-12
	.word	4
	.word	0
_Label_369:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_370:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_371:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_190_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_190_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3983:
	push	r0
	sub	r1,1,r1
	bne	_Label_3983
	mov	680,r13		! source line 680
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	687,r13		! source line 687
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	688,r13		! source line 688
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_375		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_375
!   _temp_374 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_376
_Label_375:
!   _temp_374 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_376:
!   if _temp_374 then goto _Label_373 else goto _Label_372
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_372
	jmp	_Label_373
_Label_372:
! THEN...
	mov	689,r13		! source line 689
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_377 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_377  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	689,r13		! source line 689
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	690,r13		! source line 690
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_373:
! CALL STATEMENT...
!   _temp_378 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_378  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	692,r13		! source line 692
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_380 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_379 = *_temp_380  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_379  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	693,r13		! source line 693
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_381 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_381  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	694,r13		! source line 694
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	695,r13		! source line 695
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_390 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_389 = *_temp_390  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_384
	cmp	r1,2
	be	_Label_385
	cmp	r1,3
	be	_Label_386
	cmp	r1,4
	be	_Label_387
	cmp	r1,5
	be	_Label_388
	jmp	_Label_382
! CASE 1...
_Label_384:
! CALL STATEMENT...
!   _temp_391 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_391  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	697,r13		! source line 697
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	698,r13		! source line 698
	mov	"\0\0BR",r10
	jmp	_Label_383
! CASE 2...
_Label_385:
! CALL STATEMENT...
!   _temp_392 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_392  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	700,r13		! source line 700
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	701,r13		! source line 701
	mov	"\0\0BR",r10
	jmp	_Label_383
! CASE 3...
_Label_386:
! CALL STATEMENT...
!   _temp_393 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_393  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	703,r13		! source line 703
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	704,r13		! source line 704
	mov	"\0\0BR",r10
	jmp	_Label_383
! CASE 4...
_Label_387:
! CALL STATEMENT...
!   _temp_394 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_394  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	706,r13		! source line 706
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	707,r13		! source line 707
	mov	"\0\0BR",r10
	jmp	_Label_383
! CASE 5...
_Label_388:
! CALL STATEMENT...
!   _temp_395 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_395  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	709,r13		! source line 709
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	710,r13		! source line 710
	mov	"\0\0BR",r10
	jmp	_Label_383
! DEFAULT CASE...
_Label_382:
! CALL STATEMENT...
!   _temp_396 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_396  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	712,r13		! source line 712
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_383:
! CALL STATEMENT...
!   _temp_397 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_397  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	714,r13		! source line 714
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_398 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_398  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	715,r13		! source line 715
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_399 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_399  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	716,r13		! source line 716
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	717,r13		! source line 717
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	719,r13		! source line 719
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_190_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_400
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_401
	.word	8
	.word	4
	.word	_Label_402
	.word	-16
	.word	4
	.word	_Label_403
	.word	-20
	.word	4
	.word	_Label_404
	.word	-24
	.word	4
	.word	_Label_405
	.word	-28
	.word	4
	.word	_Label_406
	.word	-32
	.word	4
	.word	_Label_407
	.word	-36
	.word	4
	.word	_Label_408
	.word	-40
	.word	4
	.word	_Label_409
	.word	-44
	.word	4
	.word	_Label_410
	.word	-48
	.word	4
	.word	_Label_411
	.word	-52
	.word	4
	.word	_Label_412
	.word	-56
	.word	4
	.word	_Label_413
	.word	-60
	.word	4
	.word	_Label_414
	.word	-64
	.word	4
	.word	_Label_415
	.word	-68
	.word	4
	.word	_Label_416
	.word	-72
	.word	4
	.word	_Label_417
	.word	-76
	.word	4
	.word	_Label_418
	.word	-9
	.word	1
	.word	_Label_419
	.word	-80
	.word	4
	.word	0
_Label_400:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_401:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_418:
	.byte	'C'
	.ascii	"_temp_374\0"
	.align
_Label_419:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_189_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_189_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3984:
	push	r0
	sub	r1,1,r1
	bne	_Label_3984
	mov	1071,r13		! source line 1071
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_420 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_420  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1075,r13		! source line 1075
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1076,r13		! source line 1076
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1076,r13		! source line 1076
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_189_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_421
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_422
	.word	8
	.word	4
	.word	_Label_423
	.word	-12
	.word	4
	.word	0
_Label_421:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_422:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_420\0"
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
	mov	35,r1
_Label_3985:
	push	r0
	sub	r1,1,r1
	bne	_Label_3985
	mov	1081,r13		! source line 1081
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1097,r13		! source line 1097
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_425 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-124]
!   Data Move: _temp_424 = *_temp_425  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   if intIsZero (_temp_424) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_426 = _temp_424 + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-120]
!   Data Move: *_temp_426 = exitStatus  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r14+-120],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1100,r13		! source line 1100
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1100,r13		! source line 1100
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! ASSIGNMENT STATEMENT...
	mov	1102,r13		! source line 1102
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_427 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-116]
!   Data Move: PCB = *_temp_427  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-136]
! FOR STATEMENT...
	mov	1103,r13		! source line 1103
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_432 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-112]
!   Calculate and save the FOR-LOOP ending value
!   _temp_433 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-108]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_432  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+-140]
_Label_428:
!   Perform the FOR-LOOP termination test
!   if j > _temp_433 then goto _Label_431		
	load	[r14+-140],r1
	load	[r14+-108],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_431
_Label_429:
	mov	1103,r13		! source line 1103
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1104,r13		! source line 1104
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_438 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_437 = *_temp_438  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_437) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_439 = _temp_437 + 124
	load	[r14+-100],r1
	add	r1,124,r1
	store	r1,[r14+-92]
!   Move address of _temp_439 [j ] into _temp_440
!     make sure index expr is >= 0
	load	[r14+-140],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   Data Move: _temp_436 = *_temp_440  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_436) then goto _Label_435
	load	[r14+-104],r1
	cmp	r1,r0
	be	_Label_435
!	jmp	_Label_434
_Label_434:
! THEN...
	mov	1105,r13		! source line 1105
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1105,r13		! source line 1105
	mov	"\0\0SE",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_442 = PCB + 124
	load	[r14+-136],r1
	add	r1,124,r1
	store	r1,[r14+-80]
!   Move address of _temp_442 [j ] into _temp_443
!     make sure index expr is >= 0
	load	[r14+-140],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-76]
!   Data Move: _temp_441 = *_temp_443  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   _temp_444 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_441  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1106,r13		! source line 1106
	mov	"\0\0AS",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_445 = PCB + 124
	load	[r14+-136],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   Move address of _temp_445 [j ] into _temp_446
!     make sure index expr is >= 0
	load	[r14+-140],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-68],r1
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
	store	r2,[r14+-64]
!   Data Move: *_temp_446 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-64],r2
	store	r1,[r2]
! END IF...
_Label_435:
!   Increment the FOR-LOOP index variable and jump back
_Label_430:
!   j = j + 1
	load	[r14+-140],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
	jmp	_Label_428
! END FOR
_Label_431:
! ASSIGNMENT STATEMENT...
	mov	1111,r13		! source line 1111
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_447 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_447 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-60],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1114,r13		! source line 1114
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1114,r13		! source line 1114
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! SEND STATEMENT...
	mov	1117,r13		! source line 1117
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_450 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_449 = *_temp_450  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_449) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_451 = _temp_449 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_448 = _temp_451		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-56]
!   _temp_452 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_448  sizeInBytes=4
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
	mov	1118,r13		! source line 1118
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_454 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_453 = *_temp_454  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_455 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_453  sizeInBytes=4
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
	mov	1121,r13		! source line 1121
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_457 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_456 = *_temp_457  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_456) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_458 = _temp_456 + 24
	load	[r14+-24],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_458 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1122,r13		! source line 1122
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_459 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_459 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	1125,r13		! source line 1125
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! RETURN STATEMENT...
	mov	1125,r13		! source line 1125
	mov	"\0\0RE",r10
	add	r15,144,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_460
	.word	4		! total size of parameters
	.word	140		! frame size = 140
	.word	_Label_461
	.word	8
	.word	4
	.word	_Label_462
	.word	-12
	.word	4
	.word	_Label_463
	.word	-16
	.word	4
	.word	_Label_464
	.word	-20
	.word	4
	.word	_Label_465
	.word	-24
	.word	4
	.word	_Label_466
	.word	-28
	.word	4
	.word	_Label_467
	.word	-32
	.word	4
	.word	_Label_468
	.word	-36
	.word	4
	.word	_Label_469
	.word	-40
	.word	4
	.word	_Label_470
	.word	-44
	.word	4
	.word	_Label_471
	.word	-48
	.word	4
	.word	_Label_472
	.word	-52
	.word	4
	.word	_Label_473
	.word	-56
	.word	4
	.word	_Label_474
	.word	-60
	.word	4
	.word	_Label_475
	.word	-64
	.word	4
	.word	_Label_476
	.word	-68
	.word	4
	.word	_Label_477
	.word	-72
	.word	4
	.word	_Label_478
	.word	-76
	.word	4
	.word	_Label_479
	.word	-80
	.word	4
	.word	_Label_480
	.word	-84
	.word	4
	.word	_Label_481
	.word	-88
	.word	4
	.word	_Label_482
	.word	-92
	.word	4
	.word	_Label_483
	.word	-96
	.word	4
	.word	_Label_484
	.word	-100
	.word	4
	.word	_Label_485
	.word	-104
	.word	4
	.word	_Label_486
	.word	-108
	.word	4
	.word	_Label_487
	.word	-112
	.word	4
	.word	_Label_488
	.word	-116
	.word	4
	.word	_Label_489
	.word	-120
	.word	4
	.word	_Label_490
	.word	-124
	.word	4
	.word	_Label_491
	.word	-128
	.word	4
	.word	_Label_492
	.word	-132
	.word	4
	.word	_Label_493
	.word	-136
	.word	4
	.word	_Label_494
	.word	-140
	.word	4
	.word	0
_Label_460:
	.ascii	"ProcessFinish\0"
	.align
_Label_461:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_426\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_425\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_492:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
_Label_493:
	.byte	'P'
	.ascii	"PCB\0"
	.align
_Label_494:
	.byte	'I'
	.ascii	"j\0"
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
_Label_3986:
	push	r0
	sub	r1,1,r1
	bne	_Label_3986
	mov	1611,r13		! source line 1611
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1621,r13		! source line 1621
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1623,r13		! source line 1623
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
	mov	1624,r13		! source line 1624
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1624,r13		! source line 1624
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
	.word	_Label_495
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_495:
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
_Label_3987:
	push	r0
	sub	r1,1,r1
	bne	_Label_3987
	mov	1629,r13		! source line 1629
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1640,r13		! source line 1640
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1642,r13		! source line 1642
	mov	"\0\0IF",r10
!   _temp_499 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_500 = _temp_499 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_498 = *_temp_500  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_498 == 0 then goto _Label_497		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_497
!	jmp	_Label_496
_Label_496:
! THEN...
	mov	1643,r13		! source line 1643
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1643,r13		! source line 1643
	mov	"\0\0SE",r10
!   _temp_502 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_503 = _temp_502 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_501 = *_temp_503  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_501) then goto _runtimeErrorNullPointer
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
_Label_497:
! RETURN STATEMENT...
	mov	1642,r13		! source line 1642
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
	.word	_Label_504
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_505
	.word	-12
	.word	4
	.word	_Label_506
	.word	-16
	.word	4
	.word	_Label_507
	.word	-20
	.word	4
	.word	_Label_508
	.word	-24
	.word	4
	.word	_Label_509
	.word	-28
	.word	4
	.word	_Label_510
	.word	-32
	.word	4
	.word	0
_Label_504:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_503\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_500\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_499\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_498\0"
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
	mov	1650,r13		! source line 1650
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1659,r13		! source line 1659
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1659,r13		! source line 1659
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
	.word	_Label_511
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_511:
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
_Label_3988:
	push	r0
	sub	r1,1,r1
	bne	_Label_3988
	mov	1664,r13		! source line 1664
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1670,r13		! source line 1670
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_512 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_512  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1671,r13		! source line 1671
	mov	"\0\0CA",r10
	call	_function_188_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1671,r13		! source line 1671
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
	.word	_Label_513
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_514
	.word	-12
	.word	4
	.word	0
_Label_513:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_512\0"
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
_Label_3989:
	push	r0
	sub	r1,1,r1
	bne	_Label_3989
	mov	1676,r13		! source line 1676
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1682,r13		! source line 1682
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_515 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_515  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1683,r13		! source line 1683
	mov	"\0\0CA",r10
	call	_function_188_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1683,r13		! source line 1683
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
	.word	_Label_516
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_517
	.word	-12
	.word	4
	.word	0
_Label_516:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_515\0"
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
_Label_3990:
	push	r0
	sub	r1,1,r1
	bne	_Label_3990
	mov	1688,r13		! source line 1688
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1694,r13		! source line 1694
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_518 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_518  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1695,r13		! source line 1695
	mov	"\0\0CA",r10
	call	_function_188_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1695,r13		! source line 1695
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
	.word	_Label_519
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_520
	.word	-12
	.word	4
	.word	0
_Label_519:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_518\0"
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
_Label_3991:
	push	r0
	sub	r1,1,r1
	bne	_Label_3991
	mov	1700,r13		! source line 1700
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1706,r13		! source line 1706
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_521 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_521  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1707,r13		! source line 1707
	mov	"\0\0CA",r10
	call	_function_188_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1707,r13		! source line 1707
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
	.word	_Label_522
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_523
	.word	-12
	.word	4
	.word	0
_Label_522:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_521\0"
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
_Label_3992:
	push	r0
	sub	r1,1,r1
	bne	_Label_3992
	mov	1712,r13		! source line 1712
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1718,r13		! source line 1718
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_524 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_524  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1719,r13		! source line 1719
	mov	"\0\0CA",r10
	call	_function_188_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1719,r13		! source line 1719
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
	.word	_Label_525
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_526
	.word	-12
	.word	4
	.word	0
_Label_525:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_524\0"
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
_Label_3993:
	push	r0
	sub	r1,1,r1
	bne	_Label_3993
	mov	1724,r13		! source line 1724
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1730,r13		! source line 1730
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_527 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_527  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1731,r13		! source line 1731
	mov	"\0\0CA",r10
	call	_function_188_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1731,r13		! source line 1731
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
	.word	_Label_528
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_529
	.word	-12
	.word	4
	.word	0
_Label_528:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_527\0"
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
_Label_3994:
	push	r0
	sub	r1,1,r1
	bne	_Label_3994
	mov	1736,r13		! source line 1736
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1742,r13		! source line 1742
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_530 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_530  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1743,r13		! source line 1743
	mov	"\0\0CA",r10
	call	_function_188_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1743,r13		! source line 1743
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
	.word	_Label_531
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_532
	.word	-12
	.word	4
	.word	0
_Label_531:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_530\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_188_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_188_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3995:
	push	r0
	sub	r1,1,r1
	bne	_Label_3995
	mov	1748,r13		! source line 1748
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_533 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_533  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1753,r13		! source line 1753
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1754,r13		! source line 1754
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_534 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_534  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1755,r13		! source line 1755
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1758,r13		! source line 1758
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_538 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_537 = *_temp_538  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_537 == 0 then goto _Label_536		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_536
!	jmp	_Label_535
_Label_535:
! THEN...
	mov	1759,r13		! source line 1759
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1759,r13		! source line 1759
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_540 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_539 = *_temp_540  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_539) then goto _runtimeErrorNullPointer
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
	jmp	_Label_541
_Label_536:
! ELSE...
	mov	1761,r13		! source line 1761
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_542 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_542  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1761,r13		! source line 1761
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_541:
! SEND STATEMENT...
	mov	1763,r13		! source line 1763
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
	mov	1769,r13		! source line 1769
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1769,r13		! source line 1769
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_188_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_543
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_544
	.word	8
	.word	4
	.word	_Label_545
	.word	-12
	.word	4
	.word	_Label_546
	.word	-16
	.word	4
	.word	_Label_547
	.word	-20
	.word	4
	.word	_Label_548
	.word	-24
	.word	4
	.word	_Label_549
	.word	-28
	.word	4
	.word	_Label_550
	.word	-32
	.word	4
	.word	_Label_551
	.word	-36
	.word	4
	.word	0
_Label_543:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_544:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_538\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_550:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_551:
	.byte	'?'
	.ascii	"_temp_533\0"
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
_Label_3996:
	push	r0
	sub	r1,1,r1
	bne	_Label_3996
	mov	1774,r13		! source line 1774
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1781,r13		! source line 1781
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1795,r13		! source line 1795
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3997
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_552
_Label_3997:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_552
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_552
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_566,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_566:
	jmp	_Label_558	! 1:	
	jmp	_Label_565	! 2:	
	jmp	_Label_555	! 3:	
	jmp	_Label_554	! 4:	
	jmp	_Label_557	! 5:	
	jmp	_Label_556	! 6:	
	jmp	_Label_559	! 7:	
	jmp	_Label_560	! 8:	
	jmp	_Label_561	! 9:	
	jmp	_Label_562	! 10:	
	jmp	_Label_563	! 11:	
	jmp	_Label_564	! 12:	
! CASE 4...
_Label_554:
! RETURN STATEMENT...
	mov	1797,r13		! source line 1797
	mov	"\0\0RE",r10
!   Call the function
	mov	1797,r13		! source line 1797
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_567  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_567  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_555:
! CALL STATEMENT...
!   Call the function
	mov	1799,r13		! source line 1799
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1800,r13		! source line 1800
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_556:
! RETURN STATEMENT...
	mov	1802,r13		! source line 1802
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1802,r13		! source line 1802
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_568  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_568  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_557:
! RETURN STATEMENT...
	mov	1804,r13		! source line 1804
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1804,r13		! source line 1804
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_569  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_569  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_558:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1806,r13		! source line 1806
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1807,r13		! source line 1807
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_559:
! RETURN STATEMENT...
	mov	1809,r13		! source line 1809
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1809,r13		! source line 1809
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_570  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_570  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_560:
! RETURN STATEMENT...
	mov	1811,r13		! source line 1811
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1811,r13		! source line 1811
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_571  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_571  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_561:
! RETURN STATEMENT...
	mov	1813,r13		! source line 1813
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
	mov	1813,r13		! source line 1813
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_572  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_572  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_562:
! RETURN STATEMENT...
	mov	1815,r13		! source line 1815
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
	mov	1815,r13		! source line 1815
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_573  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_573  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_563:
! RETURN STATEMENT...
	mov	1817,r13		! source line 1817
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1817,r13		! source line 1817
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_574  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_574  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_564:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1819,r13		! source line 1819
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1820,r13		! source line 1820
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_565:
! CALL STATEMENT...
!   Call the function
	mov	1822,r13		! source line 1822
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1823,r13		! source line 1823
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_552:
! CALL STATEMENT...
!   _temp_575 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_575  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1825,r13		! source line 1825
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1826,r13		! source line 1826
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1827,r13		! source line 1827
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_576 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_576  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1828,r13		! source line 1828
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_553:
! RETURN STATEMENT...
	mov	1830,r13		! source line 1830
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
	.word	_Label_577
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_578
	.word	8
	.word	4
	.word	_Label_579
	.word	12
	.word	4
	.word	_Label_580
	.word	16
	.word	4
	.word	_Label_581
	.word	20
	.word	4
	.word	_Label_582
	.word	24
	.word	4
	.word	_Label_583
	.word	-12
	.word	4
	.word	_Label_584
	.word	-16
	.word	4
	.word	_Label_585
	.word	-20
	.word	4
	.word	_Label_586
	.word	-24
	.word	4
	.word	_Label_587
	.word	-28
	.word	4
	.word	_Label_588
	.word	-32
	.word	4
	.word	_Label_589
	.word	-36
	.word	4
	.word	_Label_590
	.word	-40
	.word	4
	.word	_Label_591
	.word	-44
	.word	4
	.word	_Label_592
	.word	-48
	.word	4
	.word	0
_Label_577:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_578:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_579:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_580:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_581:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_582:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_585:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_586:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_587:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_591:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_567\0"
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
_Label_3998:
	push	r0
	sub	r1,1,r1
	bne	_Label_3998
	mov	1835,r13		! source line 1835
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1837,r13		! source line 1837
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1837,r13		! source line 1837
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
	.word	_Label_593
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_594
	.word	8
	.word	4
	.word	0
_Label_593:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_594:
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
_Label_3999:
	push	r0
	sub	r1,1,r1
	bne	_Label_3999
	mov	1842,r13		! source line 1842
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_595 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_595  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1844,r13		! source line 1844
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1844,r13		! source line 1844
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
	.word	_Label_596
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_597
	.word	-12
	.word	4
	.word	0
_Label_596:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_595\0"
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
_Label_4000:
	push	r0
	sub	r1,1,r1
	bne	_Label_4000
	mov	1849,r13		! source line 1849
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1851,r13		! source line 1851
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
	mov	1851,r13		! source line 1851
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
	.word	_Label_598
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_598:
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
	mov	86,r1
_Label_4001:
	push	r0
	sub	r1,1,r1
	bne	_Label_4001
	mov	1856,r13		! source line 1856
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1865,r13		! source line 1865
	mov	"\0\0AS",r10
	mov	1865,r13		! source line 1865
	mov	"\0\0SE",r10
!   _temp_599 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-320]
!   Send message GetANewThread
	load	[r14+-320],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-332]
! ASSIGNMENT STATEMENT...
	mov	1866,r13		! source line 1866
	mov	"\0\0AS",r10
	mov	1866,r13		! source line 1866
	mov	"\0\0SE",r10
!   _temp_600 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-316]
!   Send message GetANewProcess
	load	[r14+-316],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=newPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-336]
! SEND STATEMENT...
	mov	1867,r13		! source line 1867
	mov	"\0\0SE",r10
!   _temp_601 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-312]
!   if intIsZero (newTh) then goto _runtimeErrorNullPointer
	load	[r14+-332],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_601  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-332],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1868,r13		! source line 1868
	mov	"\0\0AS",r10
!   if intIsZero (newPC) then goto _runtimeErrorNullPointer
	load	[r14+-336],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_602 = newPC + 24
	load	[r14+-336],r1
	add	r1,24,r1
	store	r1,[r14+-308]
!   Data Move: *_temp_602 = newTh  (sizeInBytes=4)
	load	[r14+-332],r1
	load	[r14+-308],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1869,r13		! source line 1869
	mov	"\0\0AS",r10
!   if intIsZero (newPC) then goto _runtimeErrorNullPointer
	load	[r14+-336],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_603 = newPC + 16
	load	[r14+-336],r1
	add	r1,16,r1
	store	r1,[r14+-304]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_606 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-292]
!   Data Move: _temp_605 = *_temp_606  (sizeInBytes=4)
	load	[r14+-292],r1
	load	[r1],r1
	store	r1,[r14+-296]
!   if intIsZero (_temp_605) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_607 = _temp_605 + 12
	load	[r14+-296],r1
	add	r1,12,r1
	store	r1,[r14+-288]
!   Data Move: _temp_604 = *_temp_607  (sizeInBytes=4)
	load	[r14+-288],r1
	load	[r1],r1
	store	r1,[r14+-300]
!   Data Move: *_temp_603 = _temp_604  (sizeInBytes=4)
	load	[r14+-300],r1
	load	[r14+-304],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1870,r13		! source line 1870
	mov	"\0\0AS",r10
!   if intIsZero (newTh) then goto _runtimeErrorNullPointer
	load	[r14+-332],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_608 = newTh + 4160
	load	[r14+-332],r1
	add	r1,4160,r1
	store	r1,[r14+-284]
!   Data Move: *_temp_608 = newPC  (sizeInBytes=4)
	load	[r14+-336],r1
	load	[r14+-284],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1871,r13		! source line 1871
	mov	"\0\0AS",r10
!   if intIsZero (newTh) then goto _runtimeErrorNullPointer
	load	[r14+-332],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_609 = newTh + 76
	load	[r14+-332],r1
	add	r1,76,r1
	store	r1,[r14+-280]
!   Data Move: *_temp_609 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-280],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (newTh) then goto _runtimeErrorNullPointer
	load	[r14+-332],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_611 = newTh + 4096
	load	[r14+-332],r1
	add	r1,4096,r1
	store	r1,[r14+-272]
!   Move address of _temp_611 [0 ] into _temp_612
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-272],r1
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
	store	r2,[r14+-268]
!   _temp_610 = _temp_612		(4 bytes)
	load	[r14+-268],r1
	store	r1,[r14+-276]
!   Prepare Argument: offset=8  value=_temp_610  sizeInBytes=4
	load	[r14+-276],r1
	store	r1,[r15+0]
!   Call the function
	mov	1875,r13		! source line 1875
	mov	"\0\0CE",r10
	call	SaveUserRegs
! ASSIGNMENT STATEMENT...
	mov	1876,r13		! source line 1876
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1876,r13		! source line 1876
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=functionPlaceholder  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-340]
! FOR STATEMENT...
	mov	1878,r13		! source line 1878
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_617 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-264]
!   Calculate and save the FOR-LOOP ending value
!   _temp_618 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-260]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_617  (sizeInBytes=4)
	load	[r14+-264],r1
	store	r1,[r14+-324]
_Label_613:
!   Perform the FOR-LOOP termination test
!   if j > _temp_618 then goto _Label_616		
	load	[r14+-324],r1
	load	[r14+-260],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_616
_Label_614:
	mov	1878,r13		! source line 1878
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1879,r13		! source line 1879
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_623 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-248]
!   Data Move: _temp_622 = *_temp_623  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r1],r1
	store	r1,[r14+-252]
!   if intIsZero (_temp_622) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_624 = _temp_622 + 124
	load	[r14+-252],r1
	add	r1,124,r1
	store	r1,[r14+-244]
!   Move address of _temp_624 [j ] into _temp_625
!     make sure index expr is >= 0
	load	[r14+-324],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-240]
!   Data Move: _temp_621 = *_temp_625  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-256]
!   if intIsZero (_temp_621) then goto _Label_620
	load	[r14+-256],r1
	cmp	r1,r0
	be	_Label_620
!	jmp	_Label_619
_Label_619:
! THEN...
	mov	1880,r13		! source line 1880
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1880,r13		! source line 1880
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_628 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-228]
!   Data Move: _temp_627 = *_temp_628  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-232]
!   if intIsZero (_temp_627) then goto _runtimeErrorNullPointer
	load	[r14+-232],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_629 = _temp_627 + 124
	load	[r14+-232],r1
	add	r1,124,r1
	store	r1,[r14+-224]
!   Move address of _temp_629 [j ] into _temp_630
!     make sure index expr is >= 0
	load	[r14+-324],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-224],r1
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
	store	r2,[r14+-220]
!   Data Move: _temp_626 = *_temp_630  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-236]
!   if intIsZero (_temp_626) then goto _runtimeErrorNullPointer
	load	[r14+-236],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_631 = _temp_626 + 24
	load	[r14+-236],r1
	add	r1,24,r1
	store	r1,[r14+-216]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_636 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-196]
!   Data Move: _temp_635 = *_temp_636  (sizeInBytes=4)
	load	[r14+-196],r1
	load	[r1],r1
	store	r1,[r14+-200]
!   if intIsZero (_temp_635) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_637 = _temp_635 + 124
	load	[r14+-200],r1
	add	r1,124,r1
	store	r1,[r14+-192]
!   Move address of _temp_637 [j ] into _temp_638
!     make sure index expr is >= 0
	load	[r14+-324],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-192],r1
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
	store	r2,[r14+-188]
!   Data Move: _temp_634 = *_temp_638  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_634) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_639 = _temp_634 + 24
	load	[r14+-204],r1
	add	r1,24,r1
	store	r1,[r14+-184]
!   Data Move: _temp_633 = *_temp_639  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   _temp_632 = _temp_633 + 1		(int)
	load	[r14+-208],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
!   Data Move: *_temp_631 = _temp_632  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r14+-216],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1881,r13		! source line 1881
	mov	"\0\0AS",r10
!   if intIsZero (newTh) then goto _runtimeErrorNullPointer
	load	[r14+-332],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_641 = newTh + 4160
	load	[r14+-332],r1
	add	r1,4160,r1
	store	r1,[r14+-176]
!   Data Move: _temp_640 = *_temp_641  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_640) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_642 = _temp_640 + 124
	load	[r14+-180],r1
	add	r1,124,r1
	store	r1,[r14+-172]
!   Move address of _temp_642 [j ] into _temp_643
!     make sure index expr is >= 0
	load	[r14+-324],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-168]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_646 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-156]
!   Data Move: _temp_645 = *_temp_646  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_645) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_647 = _temp_645 + 124
	load	[r14+-160],r1
	add	r1,124,r1
	store	r1,[r14+-152]
!   Move address of _temp_647 [j ] into _temp_648
!     make sure index expr is >= 0
	load	[r14+-324],r2
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
!   Data Move: _temp_644 = *_temp_648  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   Data Move: *_temp_643 = _temp_644  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r14+-168],r2
	store	r1,[r2]
! END IF...
_Label_620:
!   Increment the FOR-LOOP index variable and jump back
_Label_615:
!   j = j + 1
	load	[r14+-324],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-324]
	jmp	_Label_613
! END FOR
_Label_616:
! ASSIGNMENT STATEMENT...
	mov	1886,r13		! source line 1886
	mov	"\0\0AS",r10
!   if intIsZero (newTh) then goto _runtimeErrorNullPointer
	load	[r14+-332],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_649 = newTh + 68
	load	[r14+-332],r1
	add	r1,68,r1
	store	r1,[r14+-144]
!   if intIsZero (newTh) then goto _runtimeErrorNullPointer
	load	[r14+-332],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_651 = newTh + 88
	load	[r14+-332],r1
	add	r1,88,r1
	store	r1,[r14+-136]
!   Move address of _temp_651 [999 ] into _temp_652
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
!   _temp_650 = _temp_652		(4 bytes)
	load	[r14+-132],r1
	store	r1,[r14+-140]
!   Data Move: *_temp_649 = _temp_650  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-144],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1890,r13		! source line 1890
	mov	"\0\0SE",r10
!   if intIsZero (newPC) then goto _runtimeErrorNullPointer
	load	[r14+-336],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_654 = newPC + 32
	load	[r14+-336],r1
	add	r1,32,r1
	store	r1,[r14+-124]
!   _temp_653 = _temp_654		(4 bytes)
	load	[r14+-124],r1
	store	r1,[r14+-128]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_657 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_656 = *_temp_657  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_656) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_658 = _temp_656 + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   _temp_659 = _temp_658 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Data Move: _temp_655 = *_temp_659  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   _temp_660 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=12  value=_temp_653  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_655  sizeInBytes=4
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
	mov	1893,r13		! source line 1893
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_665 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-96]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_669 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_668 = *_temp_669  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_668) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_670 = _temp_668 + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   _temp_671 = _temp_670 + 4
	load	[r14+-76],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Data Move: _temp_667 = *_temp_671  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   _temp_666 = _temp_667 - 1		(int)
	load	[r14+-88],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_665  (sizeInBytes=4)
	load	[r14+-96],r1
	store	r1,[r14+-324]
_Label_661:
!   Perform the FOR-LOOP termination test
!   if j > _temp_666 then goto _Label_664		
	load	[r14+-324],r1
	load	[r14+-92],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_664
_Label_662:
	mov	1893,r13		! source line 1893
	mov	"\0\0FB",r10
! CALL STATEMENT...
	mov	1894,r13		! source line 1894
	mov	"\0\0SE",r10
!   if intIsZero (newPC) then goto _runtimeErrorNullPointer
	load	[r14+-336],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_673 = newPC + 32
	load	[r14+-336],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=j  sizeInBytes=4
	load	[r14+-324],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_672  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
	mov	1894,r13		! source line 1894
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_676 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_675 = *_temp_676  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_675) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_677 = _temp_675 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=j  sizeInBytes=4
	load	[r14+-324],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_674  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_672  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_674  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	1894,r13		! source line 1894
	mov	"\0\0CE",r10
	call	MemoryCopy
! IF STATEMENT...
	mov	1895,r13		! source line 1895
	mov	"\0\0IF",r10
	mov	1895,r13		! source line 1895
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_682 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_681 = *_temp_682  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_681) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_683 = _temp_681 + 32
	load	[r14+-44],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=j  sizeInBytes=4
	load	[r14+-324],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_680  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_684 = _temp_680 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_684 then goto _Label_679 else goto _Label_678
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_678
	jmp	_Label_679
_Label_678:
! THEN...
	mov	1896,r13		! source line 1896
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1896,r13		! source line 1896
	mov	"\0\0SE",r10
!   if intIsZero (newPC) then goto _runtimeErrorNullPointer
	load	[r14+-336],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_685 = newPC + 32
	load	[r14+-336],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=j  sizeInBytes=4
	load	[r14+-324],r1
	store	r1,[r15+4]
!   Send message SetWritable
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,48,r2
	call	r2
	jmp	_Label_686
_Label_679:
! ELSE...
	mov	1898,r13		! source line 1898
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	1898,r13		! source line 1898
	mov	"\0\0SE",r10
!   if intIsZero (newPC) then goto _runtimeErrorNullPointer
	load	[r14+-336],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_687 = newPC + 32
	load	[r14+-336],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=j  sizeInBytes=4
	load	[r14+-324],r1
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
_Label_686:
!   Increment the FOR-LOOP index variable and jump back
_Label_663:
!   j = j + 1
	load	[r14+-324],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-324]
	jmp	_Label_661
! END FOR
_Label_664:
! ASSIGNMENT STATEMENT...
	mov	1903,r13		! source line 1903
	mov	"\0\0AS",r10
!   Call the function
	mov	1903,r13		! source line 1903
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-328]
! SEND STATEMENT...
	mov	1906,r13		! source line 1906
	mov	"\0\0SE",r10
!   _temp_688 = _function_187_ResumeChildAfterFork
	set	_function_187_ResumeChildAfterFork,r1
	store	r1,[r14+-24]
!   if intIsZero (newTh) then goto _runtimeErrorNullPointer
	load	[r14+-332],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_688  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=oldPC  sizeInBytes=4
	load	[r14+-328],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-332],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1907,r13		! source line 1907
	mov	"\0\0RE",r10
!   if intIsZero (newPC) then goto _runtimeErrorNullPointer
	load	[r14+-336],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_690 = newPC + 12
	load	[r14+-336],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: _temp_689 = *_temp_690  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_689  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,348,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_691
	.word	0		! total size of parameters
	.word	344		! frame size = 344
	.word	_Label_692
	.word	-16
	.word	4
	.word	_Label_693
	.word	-20
	.word	4
	.word	_Label_694
	.word	-24
	.word	4
	.word	_Label_695
	.word	-28
	.word	4
	.word	_Label_696
	.word	-32
	.word	4
	.word	_Label_697
	.word	-9
	.word	1
	.word	_Label_698
	.word	-36
	.word	4
	.word	_Label_699
	.word	-40
	.word	4
	.word	_Label_700
	.word	-44
	.word	4
	.word	_Label_701
	.word	-10
	.word	1
	.word	_Label_702
	.word	-48
	.word	4
	.word	_Label_703
	.word	-52
	.word	4
	.word	_Label_704
	.word	-56
	.word	4
	.word	_Label_705
	.word	-60
	.word	4
	.word	_Label_706
	.word	-64
	.word	4
	.word	_Label_707
	.word	-68
	.word	4
	.word	_Label_708
	.word	-72
	.word	4
	.word	_Label_709
	.word	-76
	.word	4
	.word	_Label_710
	.word	-80
	.word	4
	.word	_Label_711
	.word	-84
	.word	4
	.word	_Label_712
	.word	-88
	.word	4
	.word	_Label_713
	.word	-92
	.word	4
	.word	_Label_714
	.word	-96
	.word	4
	.word	_Label_715
	.word	-100
	.word	4
	.word	_Label_716
	.word	-104
	.word	4
	.word	_Label_717
	.word	-108
	.word	4
	.word	_Label_718
	.word	-112
	.word	4
	.word	_Label_719
	.word	-116
	.word	4
	.word	_Label_720
	.word	-120
	.word	4
	.word	_Label_721
	.word	-124
	.word	4
	.word	_Label_722
	.word	-128
	.word	4
	.word	_Label_723
	.word	-132
	.word	4
	.word	_Label_724
	.word	-136
	.word	4
	.word	_Label_725
	.word	-140
	.word	4
	.word	_Label_726
	.word	-144
	.word	4
	.word	_Label_727
	.word	-148
	.word	4
	.word	_Label_728
	.word	-152
	.word	4
	.word	_Label_729
	.word	-156
	.word	4
	.word	_Label_730
	.word	-160
	.word	4
	.word	_Label_731
	.word	-164
	.word	4
	.word	_Label_732
	.word	-168
	.word	4
	.word	_Label_733
	.word	-172
	.word	4
	.word	_Label_734
	.word	-176
	.word	4
	.word	_Label_735
	.word	-180
	.word	4
	.word	_Label_736
	.word	-184
	.word	4
	.word	_Label_737
	.word	-188
	.word	4
	.word	_Label_738
	.word	-192
	.word	4
	.word	_Label_739
	.word	-196
	.word	4
	.word	_Label_740
	.word	-200
	.word	4
	.word	_Label_741
	.word	-204
	.word	4
	.word	_Label_742
	.word	-208
	.word	4
	.word	_Label_743
	.word	-212
	.word	4
	.word	_Label_744
	.word	-216
	.word	4
	.word	_Label_745
	.word	-220
	.word	4
	.word	_Label_746
	.word	-224
	.word	4
	.word	_Label_747
	.word	-228
	.word	4
	.word	_Label_748
	.word	-232
	.word	4
	.word	_Label_749
	.word	-236
	.word	4
	.word	_Label_750
	.word	-240
	.word	4
	.word	_Label_751
	.word	-244
	.word	4
	.word	_Label_752
	.word	-248
	.word	4
	.word	_Label_753
	.word	-252
	.word	4
	.word	_Label_754
	.word	-256
	.word	4
	.word	_Label_755
	.word	-260
	.word	4
	.word	_Label_756
	.word	-264
	.word	4
	.word	_Label_757
	.word	-268
	.word	4
	.word	_Label_758
	.word	-272
	.word	4
	.word	_Label_759
	.word	-276
	.word	4
	.word	_Label_760
	.word	-280
	.word	4
	.word	_Label_761
	.word	-284
	.word	4
	.word	_Label_762
	.word	-288
	.word	4
	.word	_Label_763
	.word	-292
	.word	4
	.word	_Label_764
	.word	-296
	.word	4
	.word	_Label_765
	.word	-300
	.word	4
	.word	_Label_766
	.word	-304
	.word	4
	.word	_Label_767
	.word	-308
	.word	4
	.word	_Label_768
	.word	-312
	.word	4
	.word	_Label_769
	.word	-316
	.word	4
	.word	_Label_770
	.word	-320
	.word	4
	.word	_Label_771
	.word	-324
	.word	4
	.word	_Label_772
	.word	-328
	.word	4
	.word	_Label_773
	.word	-332
	.word	4
	.word	_Label_774
	.word	-336
	.word	4
	.word	_Label_775
	.word	-340
	.word	4
	.word	0
_Label_691:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_697:
	.byte	'C'
	.ascii	"_temp_684\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_701:
	.byte	'C'
	.ascii	"_temp_680\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_656\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_654\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_731:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_732:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_733:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_734:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_735:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_737:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_740:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_749:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_771:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_772:
	.byte	'I'
	.ascii	"oldPC\0"
	.align
_Label_773:
	.byte	'P'
	.ascii	"newTh\0"
	.align
_Label_774:
	.byte	'P'
	.ascii	"newPC\0"
	.align
_Label_775:
	.byte	'I'
	.ascii	"functionPlaceholder\0"
	.align
! 
! ===============  FUNCTION ResumeChildAfterFork  ===============
! 
_function_187_ResumeChildAfterFork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_187_ResumeChildAfterFork,r1
	push	r1
	mov	17,r1
_Label_4002:
	push	r0
	sub	r1,1,r1
	bne	_Label_4002
	mov	1910,r13		! source line 1910
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1916,r13		! source line 1916
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1916,r13		! source line 1916
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=functionPlaceholder  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1918,r13		! source line 1918
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_777 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_776 = *_temp_777  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_776) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_778 = _temp_776 + 32
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
!   _temp_780 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_780 [0 ] into _temp_781
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
!   _temp_779 = _temp_781		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_779  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1919,r13		! source line 1919
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	1920,r13		! source line 1920
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_782 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_782 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1921,r13		! source line 1921
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_783 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-24]
!   Move address of _temp_783 [14 ] into _temp_784
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
!   Data Move: initUserStackTop = *_temp_784  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1922,r13		! source line 1922
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_785 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-16]
!   Move address of _temp_785 [999 ] into _temp_786
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
!   initSystemStackTop = _temp_786		(4 bytes)
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
	mov	1924,r13		! source line 1924
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1924,r13		! source line 1924
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_187_ResumeChildAfterFork:
	.word	_sourceFileName
	.word	_Label_787
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_788
	.word	8
	.word	4
	.word	_Label_789
	.word	-12
	.word	4
	.word	_Label_790
	.word	-16
	.word	4
	.word	_Label_791
	.word	-20
	.word	4
	.word	_Label_792
	.word	-24
	.word	4
	.word	_Label_793
	.word	-28
	.word	4
	.word	_Label_794
	.word	-32
	.word	4
	.word	_Label_795
	.word	-36
	.word	4
	.word	_Label_796
	.word	-40
	.word	4
	.word	_Label_797
	.word	-44
	.word	4
	.word	_Label_798
	.word	-48
	.word	4
	.word	_Label_799
	.word	-52
	.word	4
	.word	_Label_800
	.word	-56
	.word	4
	.word	_Label_801
	.word	-60
	.word	4
	.word	_Label_802
	.word	-64
	.word	4
	.word	0
_Label_787:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_788:
	.byte	'I'
	.ascii	"PC\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_800:
	.byte	'I'
	.ascii	"functionPlaceholder\0"
	.align
_Label_801:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_802:
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
_Label_4003:
	push	r0
	sub	r1,1,r1
	bne	_Label_4003
	mov	1929,r13		! source line 1929
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	1934,r13		! source line 1934
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_807 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-112]
!   Calculate and save the FOR-LOOP ending value
!   _temp_808 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-108]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_807  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+-116]
_Label_803:
!   Perform the FOR-LOOP termination test
!   if j > _temp_808 then goto _Label_806		
	load	[r14+-116],r1
	load	[r14+-108],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_806
_Label_804:
	mov	1934,r13		! source line 1934
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1937,r13		! source line 1937
	mov	"\0\0IF",r10
!   _temp_814 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-100]
!   _temp_815 = _temp_814 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Move address of _temp_815 [j ] into _temp_816
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-92]
!   _temp_817 = _temp_816 + 16
	load	[r14+-92],r1
	add	r1,16,r1
	store	r1,[r14+-88]
!   Data Move: _temp_813 = *_temp_817  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_820 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_819 = *_temp_820  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_819) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_821 = _temp_819 + 12
	load	[r14+-80],r1
	add	r1,12,r1
	store	r1,[r14+-72]
!   Data Move: _temp_818 = *_temp_821  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_813 != _temp_818 then goto _Label_810		(int)
	load	[r14+-104],r1
	load	[r14+-84],r2
	cmp	r1,r2
	bne	_Label_810
!	jmp	_Label_812
_Label_812:
!   _temp_823 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_824 = _temp_823 + 4
	load	[r14+-64],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Move address of _temp_824 [j ] into _temp_825
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   _temp_826 = _temp_825 + 12
	load	[r14+-56],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: _temp_822 = *_temp_826  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_822 != processID then goto _Label_810		(int)
	load	[r14+-68],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_810
!	jmp	_Label_811
_Label_811:
!   _temp_828 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_829 = _temp_828 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_829 [j ] into _temp_830
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_831 = _temp_830 + 20
	load	[r14+-36],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_827 = *_temp_831  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_827 == 3 then goto _Label_810		(int)
	load	[r14+-48],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_810
!	jmp	_Label_809
_Label_809:
! THEN...
	mov	1938,r13		! source line 1938
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1938,r13		! source line 1938
	mov	"\0\0AS",r10
	mov	1938,r13		! source line 1938
	mov	"\0\0SE",r10
!   _temp_833 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_834 = _temp_833 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_834 [j ] into _temp_835
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_832 = _temp_835		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_836 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_832  sizeInBytes=4
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
	mov	1939,r13		! source line 1939
	mov	"\0\0RE",r10
!   ReturnResult: exitStatus  (sizeInBytes=4)
	load	[r14+-120],r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_810:
!   Increment the FOR-LOOP index variable and jump back
_Label_805:
!   j = j + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_803
! END FOR
_Label_806:
! RETURN STATEMENT...
	mov	1943,r13		! source line 1943
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
	.word	_Label_837
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_838
	.word	8
	.word	4
	.word	_Label_839
	.word	-12
	.word	4
	.word	_Label_840
	.word	-16
	.word	4
	.word	_Label_841
	.word	-20
	.word	4
	.word	_Label_842
	.word	-24
	.word	4
	.word	_Label_843
	.word	-28
	.word	4
	.word	_Label_844
	.word	-32
	.word	4
	.word	_Label_845
	.word	-36
	.word	4
	.word	_Label_846
	.word	-40
	.word	4
	.word	_Label_847
	.word	-44
	.word	4
	.word	_Label_848
	.word	-48
	.word	4
	.word	_Label_849
	.word	-52
	.word	4
	.word	_Label_850
	.word	-56
	.word	4
	.word	_Label_851
	.word	-60
	.word	4
	.word	_Label_852
	.word	-64
	.word	4
	.word	_Label_853
	.word	-68
	.word	4
	.word	_Label_854
	.word	-72
	.word	4
	.word	_Label_855
	.word	-76
	.word	4
	.word	_Label_856
	.word	-80
	.word	4
	.word	_Label_857
	.word	-84
	.word	4
	.word	_Label_858
	.word	-88
	.word	4
	.word	_Label_859
	.word	-92
	.word	4
	.word	_Label_860
	.word	-96
	.word	4
	.word	_Label_861
	.word	-100
	.word	4
	.word	_Label_862
	.word	-104
	.word	4
	.word	_Label_863
	.word	-108
	.word	4
	.word	_Label_864
	.word	-112
	.word	4
	.word	_Label_865
	.word	-116
	.word	4
	.word	_Label_866
	.word	-120
	.word	4
	.word	0
_Label_837:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_838:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_839:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_840:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_842:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_846:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_847:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_849:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_807\0"
	.align
_Label_865:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_866:
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
_Label_4004:
	push	r0
	sub	r1,1,r1
	bne	_Label_4004
	mov	1948,r13		! source line 1948
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-204,r4
	mov	23,r3
_Label_4005:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4005
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-204]
! ASSIGNMENT STATEMENT...
	mov	1958,r13		! source line 1958
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1958,r13		! source line 1958
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=functionPlaceholder  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	1959,r13		! source line 1959
	mov	"\0\0AS",r10
	mov	1959,r13		! source line 1959
	mov	"\0\0SE",r10
!   _temp_868 = &fileName
	add	r14,-228,r1
	store	r1,[r14+-108]
!   _temp_869 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-104]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_871 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_870 = *_temp_871  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_870) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_872 = _temp_870 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_868  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_869  sizeInBytes=4
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
	mov	1960,r13		! source line 1960
	mov	"\0\0IF",r10
!   if functionPlaceholder >= 0 then goto _Label_874		(int)
	load	[r14+-248],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_874
!	jmp	_Label_873
_Label_873:
! THEN...
	mov	1961,r13		! source line 1961
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1961,r13		! source line 1961
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_874:
! SEND STATEMENT...
	mov	1963,r13		! source line 1963
	mov	"\0\0SE",r10
!   _temp_875 = &newAddrSpace
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
	mov	1964,r13		! source line 1964
	mov	"\0\0AS",r10
	mov	1964,r13		! source line 1964
	mov	"\0\0SE",r10
!   _temp_876 = &fileName
	add	r14,-228,r1
	store	r1,[r14+-84]
!   _temp_877 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_876  sizeInBytes=4
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
	mov	1965,r13		! source line 1965
	mov	"\0\0IF",r10
!   if intIsZero (filePt) then goto _Label_878
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_878
	jmp	_Label_879
_Label_878:
! THEN...
	mov	1966,r13		! source line 1966
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1966,r13		! source line 1966
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_879:
! ASSIGNMENT STATEMENT...
	mov	1968,r13		! source line 1968
	mov	"\0\0AS",r10
	mov	1968,r13		! source line 1968
	mov	"\0\0SE",r10
!   _temp_880 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-76]
!   if intIsZero (filePt) then goto _runtimeErrorNullPointer
	load	[r14+-244],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_880  sizeInBytes=4
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
	mov	1969,r13		! source line 1969
	mov	"\0\0IF",r10
!   if initPC >= 0 then goto _Label_882		(int)
	load	[r14+-240],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_882
!	jmp	_Label_881
_Label_881:
! THEN...
	mov	1970,r13		! source line 1970
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1970,r13		! source line 1970
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_882:
! SEND STATEMENT...
	mov	1972,r13		! source line 1972
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_885 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_884 = *_temp_885  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_884) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_886 = _temp_884 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   _temp_883 = _temp_886		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-72]
!   _temp_887 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_883  sizeInBytes=4
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
	mov	1973,r13		! source line 1973
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_889 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_888 = *_temp_889  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_888) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_890 = _temp_888 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_890 = newAddrSpace  (sizeInBytes=92)
	add	r14,-204,r5
	load	[r14+-44],r4
	mov	23,r3
_Label_4006:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4006
! SEND STATEMENT...
	mov	1974,r13		! source line 1974
	mov	"\0\0SE",r10
!   _temp_891 = &_P_Kernel_fileManager
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
	mov	1975,r13		! source line 1975
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_892 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_892 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1976,r13		! source line 1976
	mov	"\0\0AS",r10
!   _temp_894 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-28]
!   _temp_895 = _temp_894 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_893 = *_temp_895  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   initUserStackTop = _temp_893 * 8192		(int)
	load	[r14+-32],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	1977,r13		! source line 1977
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_896 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_896 [999 ] into _temp_897
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
!   initSystemStackTop = _temp_897		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-236]
! SEND STATEMENT...
	mov	1978,r13		! source line 1978
	mov	"\0\0SE",r10
!   _temp_898 = &newAddrSpace
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
	mov	1979,r13		! source line 1979
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1980,r13		! source line 1980
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
	.word	_Label_899
	.word	4		! total size of parameters
	.word	256		! frame size = 256
	.word	_Label_900
	.word	8
	.word	4
	.word	_Label_901
	.word	-12
	.word	4
	.word	_Label_902
	.word	-16
	.word	4
	.word	_Label_903
	.word	-20
	.word	4
	.word	_Label_904
	.word	-24
	.word	4
	.word	_Label_905
	.word	-28
	.word	4
	.word	_Label_906
	.word	-32
	.word	4
	.word	_Label_907
	.word	-36
	.word	4
	.word	_Label_908
	.word	-40
	.word	4
	.word	_Label_909
	.word	-44
	.word	4
	.word	_Label_910
	.word	-48
	.word	4
	.word	_Label_911
	.word	-52
	.word	4
	.word	_Label_912
	.word	-56
	.word	4
	.word	_Label_913
	.word	-60
	.word	4
	.word	_Label_914
	.word	-64
	.word	4
	.word	_Label_915
	.word	-68
	.word	4
	.word	_Label_916
	.word	-72
	.word	4
	.word	_Label_917
	.word	-76
	.word	4
	.word	_Label_918
	.word	-80
	.word	4
	.word	_Label_919
	.word	-84
	.word	4
	.word	_Label_920
	.word	-88
	.word	4
	.word	_Label_921
	.word	-92
	.word	4
	.word	_Label_922
	.word	-96
	.word	4
	.word	_Label_923
	.word	-100
	.word	4
	.word	_Label_924
	.word	-104
	.word	4
	.word	_Label_925
	.word	-108
	.word	4
	.word	_Label_926
	.word	-112
	.word	4
	.word	_Label_927
	.word	-204
	.word	92
	.word	_Label_928
	.word	-228
	.word	24
	.word	_Label_929
	.word	-232
	.word	4
	.word	_Label_930
	.word	-236
	.word	4
	.word	_Label_931
	.word	-240
	.word	4
	.word	_Label_932
	.word	-244
	.word	4
	.word	_Label_933
	.word	-248
	.word	4
	.word	0
_Label_899:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_900:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_898\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_890\0"
	.align
_Label_910:
	.byte	'?'
	.ascii	"_temp_889\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_888\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_887\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_886\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_885\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_884\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_883\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_880\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_877\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_867\0"
	.align
_Label_927:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_928:
	.byte	'A'
	.ascii	"fileName\0"
	.align
_Label_929:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_930:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_931:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_932:
	.byte	'P'
	.ascii	"filePt\0"
	.align
_Label_933:
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
_Label_4007:
	push	r0
	sub	r1,1,r1
	bne	_Label_4007
	mov	1985,r13		! source line 1985
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1990,r13		! source line 1990
	mov	"\0\0AS",r10
	mov	1990,r13		! source line 1990
	mov	"\0\0SE",r10
!   _temp_934 = &fileName
	add	r14,-76,r1
	store	r1,[r14+-48]
!   _temp_935 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_937 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_936 = *_temp_937  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_936) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_938 = _temp_936 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_934  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_935  sizeInBytes=4
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
!   _temp_939 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_939  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1991,r13		! source line 1991
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1992,r13		! source line 1992
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_940 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_940  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1993,r13		! source line 1993
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_941 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_941  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1994,r13		! source line 1994
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1995,r13		! source line 1995
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_942 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_942  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1996,r13		! source line 1996
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_943 = &fileName
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_943  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1997,r13		! source line 1997
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1998,r13		! source line 1998
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1999,r13		! source line 1999
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
	.word	_Label_944
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_945
	.word	8
	.word	4
	.word	_Label_946
	.word	-12
	.word	4
	.word	_Label_947
	.word	-16
	.word	4
	.word	_Label_948
	.word	-20
	.word	4
	.word	_Label_949
	.word	-24
	.word	4
	.word	_Label_950
	.word	-28
	.word	4
	.word	_Label_951
	.word	-32
	.word	4
	.word	_Label_952
	.word	-36
	.word	4
	.word	_Label_953
	.word	-40
	.word	4
	.word	_Label_954
	.word	-44
	.word	4
	.word	_Label_955
	.word	-48
	.word	4
	.word	_Label_956
	.word	-52
	.word	4
	.word	_Label_957
	.word	-76
	.word	24
	.word	0
_Label_944:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_945:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_947:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_948:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_949:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_950:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_951:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_952:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_953:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_954:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_955:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_956:
	.byte	'I'
	.ascii	"functionPlaceholder\0"
	.align
_Label_957:
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
	mov	35,r1
_Label_4008:
	push	r0
	sub	r1,1,r1
	bne	_Label_4008
	mov	2004,r13		! source line 2004
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2012,r13		! source line 2012
	mov	"\0\0AS",r10
!   fDI = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-132]
! ASSIGNMENT STATEMENT...
	mov	2013,r13		! source line 2013
	mov	"\0\0AS",r10
	mov	2013,r13		! source line 2013
	mov	"\0\0SE",r10
!   _temp_958 = &stringBuffer
	add	r14,-128,r1
	store	r1,[r14+-92]
!   _temp_959 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_961 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_960 = *_temp_961  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_960) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_962 = _temp_960 + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=_temp_958  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_959  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=functionPlaceholder  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! IF STATEMENT...
	mov	2016,r13		! source line 2016
	mov	"\0\0IF",r10
	mov	2016,r13		! source line 2016
	mov	"\0\0SE",r10
!   _temp_966 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-72]
!   _temp_967 = _temp_966 + 756
	load	[r14+-72],r1
	add	r1,756,r1
	store	r1,[r14+-68]
!   Send message IsEmpty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_965  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_968 = _temp_965 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_968 then goto _Label_964 else goto _Label_963
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_963
	jmp	_Label_964
_Label_963:
! THEN...
	mov	2017,r13		! source line 2017
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2017,r13		! source line 2017
	mov	"\0\0AS",r10
	mov	2017,r13		! source line 2017
	mov	"\0\0SE",r10
!   _temp_969 = &stringBuffer
	add	r14,-128,r1
	store	r1,[r14+-64]
!   _temp_970 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_969  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=openFilePointer  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
! END IF...
_Label_964:
! IF STATEMENT...
	mov	2020,r13		! source line 2020
	mov	"\0\0IF",r10
!   if intIsZero (openFilePointer) then goto _Label_972
	load	[r14+-104],r1
	cmp	r1,r0
	be	_Label_972
!	jmp	_Label_973
_Label_973:
!   if functionPlaceholder == -1 then goto _Label_972		(int)
	load	[r14+-96],r1
	mov	-1,r2
	cmp	r1,r2
	be	_Label_972
!	jmp	_Label_971
_Label_971:
! THEN...
	mov	2022,r13		! source line 2022
	mov	"\0\0TN",r10
! FOR STATEMENT...
	mov	2022,r13		! source line 2022
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_978 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_979 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_978  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-100]
_Label_974:
!   Perform the FOR-LOOP termination test
!   if j > _temp_979 then goto _Label_977		
	load	[r14+-100],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_977
_Label_975:
	mov	2022,r13		! source line 2022
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	2024,r13		! source line 2024
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_984 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_983 = *_temp_984  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_983) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_985 = _temp_983 + 124
	load	[r14+-44],r1
	add	r1,124,r1
	store	r1,[r14+-36]
!   Move address of _temp_985 [j ] into _temp_986
!     make sure index expr is >= 0
	load	[r14+-100],r2
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
!   Data Move: _temp_982 = *_temp_986  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_982) then goto _Label_980
	load	[r14+-48],r1
	cmp	r1,r0
	be	_Label_980
	jmp	_Label_981
_Label_980:
! THEN...
	mov	2025,r13		! source line 2025
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2025,r13		! source line 2025
	mov	"\0\0AS",r10
!   fDI = j		(4 bytes)
	load	[r14+-100],r1
	store	r1,[r14+-132]
! BREAK STATEMENT...
	mov	2026,r13		! source line 2026
	mov	"\0\0BR",r10
	jmp	_Label_977
! END IF...
_Label_981:
!   Increment the FOR-LOOP index variable and jump back
_Label_976:
!   j = j + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_974
! END FOR
_Label_977:
! IF STATEMENT...
	mov	2031,r13		! source line 2031
	mov	"\0\0IF",r10
!   if fDI == -1 then goto _Label_988		(int)
	load	[r14+-132],r1
	mov	-1,r2
	cmp	r1,r2
	be	_Label_988
!	jmp	_Label_987
_Label_987:
! THEN...
	mov	2032,r13		! source line 2032
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2032,r13		! source line 2032
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_990 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_989 = *_temp_990  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_989) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_991 = _temp_989 + 124
	load	[r14+-28],r1
	add	r1,124,r1
	store	r1,[r14+-20]
!   Move address of _temp_991 [fDI ] into _temp_992
!     make sure index expr is >= 0
	load	[r14+-132],r2
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
!   Data Move: *_temp_992 = openFilePointer  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r14+-16],r2
	store	r1,[r2]
! END IF...
_Label_988:
! END IF...
_Label_972:
! RETURN STATEMENT...
	mov	2037,r13		! source line 2037
	mov	"\0\0RE",r10
!   ReturnResult: fDI  (sizeInBytes=4)
	load	[r14+-132],r1
	store	r1,[r14+8]
	add	r15,144,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_993
	.word	4		! total size of parameters
	.word	140		! frame size = 140
	.word	_Label_994
	.word	8
	.word	4
	.word	_Label_995
	.word	-16
	.word	4
	.word	_Label_996
	.word	-20
	.word	4
	.word	_Label_997
	.word	-24
	.word	4
	.word	_Label_998
	.word	-28
	.word	4
	.word	_Label_999
	.word	-32
	.word	4
	.word	_Label_1000
	.word	-36
	.word	4
	.word	_Label_1001
	.word	-40
	.word	4
	.word	_Label_1002
	.word	-44
	.word	4
	.word	_Label_1003
	.word	-48
	.word	4
	.word	_Label_1004
	.word	-52
	.word	4
	.word	_Label_1005
	.word	-56
	.word	4
	.word	_Label_1006
	.word	-60
	.word	4
	.word	_Label_1007
	.word	-64
	.word	4
	.word	_Label_1008
	.word	-9
	.word	1
	.word	_Label_1009
	.word	-68
	.word	4
	.word	_Label_1010
	.word	-72
	.word	4
	.word	_Label_1011
	.word	-10
	.word	1
	.word	_Label_1012
	.word	-76
	.word	4
	.word	_Label_1013
	.word	-80
	.word	4
	.word	_Label_1014
	.word	-84
	.word	4
	.word	_Label_1015
	.word	-88
	.word	4
	.word	_Label_1016
	.word	-92
	.word	4
	.word	_Label_1017
	.word	-96
	.word	4
	.word	_Label_1018
	.word	-100
	.word	4
	.word	_Label_1019
	.word	-104
	.word	4
	.word	_Label_1020
	.word	-128
	.word	24
	.word	_Label_1021
	.word	-132
	.word	4
	.word	0
_Label_993:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_994:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_978\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_970\0"
	.align
_Label_1007:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_1008:
	.byte	'C'
	.ascii	"_temp_968\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_1010:
	.byte	'?'
	.ascii	"_temp_966\0"
	.align
_Label_1011:
	.byte	'C'
	.ascii	"_temp_965\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_1017:
	.byte	'I'
	.ascii	"functionPlaceholder\0"
	.align
_Label_1018:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_1019:
	.byte	'P'
	.ascii	"openFilePointer\0"
	.align
_Label_1020:
	.byte	'A'
	.ascii	"stringBuffer\0"
	.align
_Label_1021:
	.byte	'I'
	.ascii	"fDI\0"
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
	mov	78,r1
_Label_4009:
	push	r0
	sub	r1,1,r1
	bne	_Label_4009
	mov	2042,r13		! source line 2042
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2057,r13		! source line 2057
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1026		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1026
	jmp	_Label_1022
_Label_1026:
!   if fileDesc <= 9 then goto _Label_1025		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1025
	jmp	_Label_1022
_Label_1025:
!   if sizeInBytes >= 0 then goto _Label_1024		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1024
	jmp	_Label_1022
_Label_1024:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1029 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-260]
!   Data Move: _temp_1028 = *_temp_1029  (sizeInBytes=4)
	load	[r14+-260],r1
	load	[r1],r1
	store	r1,[r14+-264]
!   if intIsZero (_temp_1028) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1030 = _temp_1028 + 124
	load	[r14+-264],r1
	add	r1,124,r1
	store	r1,[r14+-256]
!   Move address of _temp_1030 [fileDesc ] into _temp_1031
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-256],r1
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
	store	r2,[r14+-252]
!   Data Move: _temp_1027 = *_temp_1031  (sizeInBytes=4)
	load	[r14+-252],r1
	load	[r1],r1
	store	r1,[r14+-268]
!   if intIsZero (_temp_1027) then goto _Label_1022
	load	[r14+-268],r1
	cmp	r1,r0
	be	_Label_1022
	jmp	_Label_1023
_Label_1022:
! THEN...
	mov	2058,r13		! source line 2058
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2058,r13		! source line 2058
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,316,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1023:
! ASSIGNMENT STATEMENT...
	mov	2061,r13		! source line 2061
	mov	"\0\0AS",r10
!   curCopied = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-292]
! ASSIGNMENT STATEMENT...
	mov	2062,r13		! source line 2062
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-296]
! ASSIGNMENT STATEMENT...
	mov	2063,r13		! source line 2063
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-296],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-300]
! ASSIGNMENT STATEMENT...
	mov	2064,r13		! source line 2064
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-296],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	2066,r13		! source line 2066
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1034 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-240]
!   Data Move: _temp_1033 = *_temp_1034  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-244]
!   if intIsZero (_temp_1033) then goto _runtimeErrorNullPointer
	load	[r14+-244],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1035 = _temp_1033 + 124
	load	[r14+-244],r1
	add	r1,124,r1
	store	r1,[r14+-236]
!   Move address of _temp_1035 [fileDesc ] into _temp_1036
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-232]
!   Data Move: _temp_1032 = *_temp_1036  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r1],r1
	store	r1,[r14+-248]
!   if intIsZero (_temp_1032) then goto _runtimeErrorNullPointer
	load	[r14+-248],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1037 = _temp_1032 + 16
	load	[r14+-248],r1
	add	r1,16,r1
	store	r1,[r14+-228]
!   Data Move: nextPos = *_temp_1037  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-288]
! ASSIGNMENT STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1041 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-212]
!   Data Move: _temp_1040 = *_temp_1041  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-216]
!   if intIsZero (_temp_1040) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1042 = _temp_1040 + 124
	load	[r14+-216],r1
	add	r1,124,r1
	store	r1,[r14+-208]
!   Move address of _temp_1042 [fileDesc ] into _temp_1043
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-204]
!   Data Move: _temp_1039 = *_temp_1043  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_1039) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1044 = _temp_1039 + 20
	load	[r14+-220],r1
	add	r1,20,r1
	store	r1,[r14+-200]
!   Data Move: _temp_1038 = *_temp_1044  (sizeInBytes=4)
	load	[r14+-200],r1
	load	[r1],r1
	store	r1,[r14+-224]
!   if intIsZero (_temp_1038) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1045 = _temp_1038 + 24
	load	[r14+-224],r1
	add	r1,24,r1
	store	r1,[r14+-196]
!   Data Move: sizeOfFile = *_temp_1045  (sizeInBytes=4)
	load	[r14+-196],r1
	load	[r1],r1
	store	r1,[r14+-276]
! WHILE STATEMENT...
	mov	2069,r13		! source line 2069
	mov	"\0\0WH",r10
_Label_1046:
!	jmp	_Label_1047
_Label_1047:
	mov	2069,r13		! source line 2069
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2071,r13		! source line 2071
	mov	"\0\0AS",r10
!   curChunk = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-284],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! IF STATEMENT...
	mov	2073,r13		! source line 2073
	mov	"\0\0IF",r10
!   _temp_1051 = nextPos + curChunk		(int)
	load	[r14+-288],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
!   if _temp_1051 <= sizeOfFile then goto _Label_1050		(int)
	load	[r14+-192],r1
	load	[r14+-276],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1050
!	jmp	_Label_1049
_Label_1049:
! THEN...
	mov	2074,r13		! source line 2074
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2074,r13		! source line 2074
	mov	"\0\0AS",r10
!   curChunk = sizeOfFile - nextPos		(int)
	load	[r14+-276],r1
	load	[r14+-288],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! END IF...
_Label_1050:
! IF STATEMENT...
	mov	2077,r13		! source line 2077
	mov	"\0\0IF",r10
!   _temp_1054 = curCopied + curChunk		(int)
	load	[r14+-292],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-188]
!   if _temp_1054 <= sizeInBytes then goto _Label_1053		(int)
	load	[r14+-188],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1053
!	jmp	_Label_1052
_Label_1052:
! THEN...
	mov	2078,r13		! source line 2078
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2078,r13		! source line 2078
	mov	"\0\0AS",r10
!   curChunk = sizeInBytes - curCopied		(int)
	load	[r14+16],r1
	load	[r14+-292],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! END IF...
_Label_1053:
! IF STATEMENT...
	mov	2081,r13		! source line 2081
	mov	"\0\0IF",r10
!   if curChunk > 0 then goto _Label_1056		(int)
	load	[r14+-272],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1056
!	jmp	_Label_1055
_Label_1055:
! THEN...
	mov	2082,r13		! source line 2082
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2082,r13		! source line 2082
	mov	"\0\0BR",r10
	jmp	_Label_1048
! END IF...
_Label_1056:
! IF STATEMENT...
	mov	2085,r13		! source line 2085
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1061		(int)
	load	[r14+-300],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1061
	jmp	_Label_1057
_Label_1061:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1065 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_1064 = *_temp_1065  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_1064) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1066 = _temp_1064 + 32
	load	[r14+-176],r1
	add	r1,32,r1
	store	r1,[r14+-168]
!   _temp_1067 = _temp_1066 + 4
	load	[r14+-168],r1
	add	r1,4,r1
	store	r1,[r14+-164]
!   Data Move: _temp_1063 = *_temp_1067  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   _temp_1062 = _temp_1063 - 1		(int)
	load	[r14+-180],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-184]
!   if virtPage <= _temp_1062 then goto _Label_1060		(int)
	load	[r14+-300],r1
	load	[r14+-184],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1060
	jmp	_Label_1057
_Label_1060:
	mov	2086,r13		! source line 2086
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1070 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-156]
!   Data Move: _temp_1069 = *_temp_1070  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_1069) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1071 = _temp_1069 + 32
	load	[r14+-160],r1
	add	r1,32,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-152],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1068  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1072 = _temp_1068 XOR 0		(bool)
	loadb	[r14+-12],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1072 then goto _Label_1059 else goto _Label_1057
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1057
	jmp	_Label_1059
_Label_1059:
	mov	2086,r13		! source line 2086
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1075 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-144]
!   Data Move: _temp_1074 = *_temp_1075  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if intIsZero (_temp_1074) then goto _runtimeErrorNullPointer
	load	[r14+-148],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1076 = _temp_1074 + 32
	load	[r14+-148],r1
	add	r1,32,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-140],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1073  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1077 = _temp_1073 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1077 then goto _Label_1058 else goto _Label_1057
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1057
	jmp	_Label_1058
_Label_1057:
! THEN...
	mov	2087,r13		! source line 2087
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2087,r13		! source line 2087
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,316,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1058:
! ASSIGNMENT STATEMENT...
	mov	2090,r13		! source line 2090
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	2091,r13		! source line 2091
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-300],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-300]
! ASSIGNMENT STATEMENT...
	mov	2092,r13		! source line 2092
	mov	"\0\0AS",r10
!   nextPos = nextPos + curChunk		(int)
	load	[r14+-288],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-288]
! ASSIGNMENT STATEMENT...
	mov	2093,r13		! source line 2093
	mov	"\0\0AS",r10
!   curCopied = curCopied + curChunk		(int)
	load	[r14+-292],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-292]
! IF STATEMENT...
	mov	2095,r13		! source line 2095
	mov	"\0\0IF",r10
!   if curCopied != sizeInBytes then goto _Label_1079		(int)
	load	[r14+-292],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1079
!	jmp	_Label_1078
_Label_1078:
! THEN...
	mov	2096,r13		! source line 2096
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2096,r13		! source line 2096
	mov	"\0\0BR",r10
	jmp	_Label_1048
! END IF...
_Label_1079:
! END WHILE...
	jmp	_Label_1046
_Label_1048:
! ASSIGNMENT STATEMENT...
	mov	2102,r13		! source line 2102
	mov	"\0\0AS",r10
!   curCopied = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-292]
! ASSIGNMENT STATEMENT...
	mov	2103,r13		! source line 2103
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-296],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-300]
! ASSIGNMENT STATEMENT...
	mov	2104,r13		! source line 2104
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-296],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	2105,r13		! source line 2105
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1082 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-128]
!   Data Move: _temp_1081 = *_temp_1082  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_1081) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1083 = _temp_1081 + 124
	load	[r14+-132],r1
	add	r1,124,r1
	store	r1,[r14+-124]
!   Move address of _temp_1083 [fileDesc ] into _temp_1084
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: _temp_1080 = *_temp_1084  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   if intIsZero (_temp_1080) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1085 = _temp_1080 + 16
	load	[r14+-136],r1
	add	r1,16,r1
	store	r1,[r14+-116]
!   Data Move: nextPos = *_temp_1085  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-288]
! WHILE STATEMENT...
	mov	2107,r13		! source line 2107
	mov	"\0\0WH",r10
_Label_1086:
!	jmp	_Label_1087
_Label_1087:
	mov	2107,r13		! source line 2107
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2109,r13		! source line 2109
	mov	"\0\0AS",r10
!   curChunk = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-284],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! IF STATEMENT...
	mov	2111,r13		! source line 2111
	mov	"\0\0IF",r10
!   _temp_1091 = nextPos + curChunk		(int)
	load	[r14+-288],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   if _temp_1091 <= sizeOfFile then goto _Label_1090		(int)
	load	[r14+-112],r1
	load	[r14+-276],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1090
!	jmp	_Label_1089
_Label_1089:
! THEN...
	mov	2112,r13		! source line 2112
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2112,r13		! source line 2112
	mov	"\0\0AS",r10
!   curChunk = sizeOfFile - nextPos		(int)
	load	[r14+-276],r1
	load	[r14+-288],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! END IF...
_Label_1090:
! IF STATEMENT...
	mov	2115,r13		! source line 2115
	mov	"\0\0IF",r10
!   _temp_1094 = curCopied + curChunk		(int)
	load	[r14+-292],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-108]
!   if _temp_1094 <= sizeInBytes then goto _Label_1093		(int)
	load	[r14+-108],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1093
!	jmp	_Label_1092
_Label_1092:
! THEN...
	mov	2116,r13		! source line 2116
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2116,r13		! source line 2116
	mov	"\0\0AS",r10
!   curChunk = sizeInBytes - curCopied		(int)
	load	[r14+16],r1
	load	[r14+-292],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! END IF...
_Label_1093:
! IF STATEMENT...
	mov	2119,r13		! source line 2119
	mov	"\0\0IF",r10
!   if curChunk > 0 then goto _Label_1096		(int)
	load	[r14+-272],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1096
!	jmp	_Label_1095
_Label_1095:
! THEN...
	mov	2120,r13		! source line 2120
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2120,r13		! source line 2120
	mov	"\0\0BR",r10
	jmp	_Label_1088
! END IF...
_Label_1096:
! SEND STATEMENT...
	mov	2123,r13		! source line 2123
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1098 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1097 = *_temp_1098  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1097) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1099 = _temp_1097 + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+4]
!   Send message SetDirty
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! SEND STATEMENT...
	mov	2124,r13		! source line 2124
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1101 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1100 = *_temp_1101  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1100) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1102 = _temp_1100 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2126,r13		! source line 2126
	mov	"\0\0AS",r10
	mov	2126,r13		! source line 2126
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1105 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1104 = *_temp_1105  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1104) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1106 = _temp_1104 + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1103  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
!   destAddr = _temp_1103 + offset		(int)
	load	[r14+-80],r1
	load	[r14+-284],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2127,r13		! source line 2127
	mov	"\0\0AS",r10
	mov	2127,r13		! source line 2127
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1109 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_1108 = *_temp_1109  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_1108) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1110 = _temp_1108 + 124
	load	[r14+-60],r1
	add	r1,124,r1
	store	r1,[r14+-52]
!   Move address of _temp_1110 [fileDesc ] into _temp_1111
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Data Move: _temp_1107 = *_temp_1111  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   _temp_1112 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_1107  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPos  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=curChunk  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=res  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
! ASSIGNMENT STATEMENT...
	mov	2129,r13		! source line 2129
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	2130,r13		! source line 2130
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-300],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-300]
! ASSIGNMENT STATEMENT...
	mov	2131,r13		! source line 2131
	mov	"\0\0AS",r10
!   nextPos = nextPos + curChunk		(int)
	load	[r14+-288],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-288]
! ASSIGNMENT STATEMENT...
	mov	2132,r13		! source line 2132
	mov	"\0\0AS",r10
!   curCopied = curCopied + curChunk		(int)
	load	[r14+-292],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-292]
! IF STATEMENT...
	mov	2134,r13		! source line 2134
	mov	"\0\0IF",r10
!   if curCopied != sizeInBytes then goto _Label_1114		(int)
	load	[r14+-292],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1114
!	jmp	_Label_1113
_Label_1113:
! THEN...
	mov	2135,r13		! source line 2135
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2135,r13		! source line 2135
	mov	"\0\0BR",r10
	jmp	_Label_1088
! END IF...
_Label_1114:
! END WHILE...
	jmp	_Label_1086
_Label_1088:
! ASSIGNMENT STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1117 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1116 = *_temp_1117  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1116) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1118 = _temp_1116 + 124
	load	[r14+-36],r1
	add	r1,124,r1
	store	r1,[r14+-28]
!   Move address of _temp_1118 [fileDesc ] into _temp_1119
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Data Move: _temp_1115 = *_temp_1119  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_1115) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1120 = _temp_1115 + 16
	load	[r14+-40],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1120 = nextPos  (sizeInBytes=4)
	load	[r14+-288],r1
	load	[r14+-20],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2141,r13		! source line 2141
	mov	"\0\0RE",r10
!   ReturnResult: curCopied  (sizeInBytes=4)
	load	[r14+-292],r1
	store	r1,[r14+8]
	add	r15,316,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_1121
	.word	12		! total size of parameters
	.word	312		! frame size = 312
	.word	_Label_1122
	.word	8
	.word	4
	.word	_Label_1123
	.word	12
	.word	4
	.word	_Label_1124
	.word	16
	.word	4
	.word	_Label_1125
	.word	-20
	.word	4
	.word	_Label_1126
	.word	-24
	.word	4
	.word	_Label_1127
	.word	-28
	.word	4
	.word	_Label_1128
	.word	-32
	.word	4
	.word	_Label_1129
	.word	-36
	.word	4
	.word	_Label_1130
	.word	-40
	.word	4
	.word	_Label_1131
	.word	-44
	.word	4
	.word	_Label_1132
	.word	-48
	.word	4
	.word	_Label_1133
	.word	-52
	.word	4
	.word	_Label_1134
	.word	-56
	.word	4
	.word	_Label_1135
	.word	-60
	.word	4
	.word	_Label_1136
	.word	-64
	.word	4
	.word	_Label_1137
	.word	-68
	.word	4
	.word	_Label_1138
	.word	-72
	.word	4
	.word	_Label_1139
	.word	-76
	.word	4
	.word	_Label_1140
	.word	-80
	.word	4
	.word	_Label_1141
	.word	-84
	.word	4
	.word	_Label_1142
	.word	-88
	.word	4
	.word	_Label_1143
	.word	-92
	.word	4
	.word	_Label_1144
	.word	-96
	.word	4
	.word	_Label_1145
	.word	-100
	.word	4
	.word	_Label_1146
	.word	-104
	.word	4
	.word	_Label_1147
	.word	-108
	.word	4
	.word	_Label_1148
	.word	-112
	.word	4
	.word	_Label_1149
	.word	-116
	.word	4
	.word	_Label_1150
	.word	-120
	.word	4
	.word	_Label_1151
	.word	-124
	.word	4
	.word	_Label_1152
	.word	-128
	.word	4
	.word	_Label_1153
	.word	-132
	.word	4
	.word	_Label_1154
	.word	-136
	.word	4
	.word	_Label_1155
	.word	-9
	.word	1
	.word	_Label_1156
	.word	-140
	.word	4
	.word	_Label_1157
	.word	-144
	.word	4
	.word	_Label_1158
	.word	-148
	.word	4
	.word	_Label_1159
	.word	-10
	.word	1
	.word	_Label_1160
	.word	-11
	.word	1
	.word	_Label_1161
	.word	-152
	.word	4
	.word	_Label_1162
	.word	-156
	.word	4
	.word	_Label_1163
	.word	-160
	.word	4
	.word	_Label_1164
	.word	-12
	.word	1
	.word	_Label_1165
	.word	-164
	.word	4
	.word	_Label_1166
	.word	-168
	.word	4
	.word	_Label_1167
	.word	-172
	.word	4
	.word	_Label_1168
	.word	-176
	.word	4
	.word	_Label_1169
	.word	-180
	.word	4
	.word	_Label_1170
	.word	-184
	.word	4
	.word	_Label_1171
	.word	-188
	.word	4
	.word	_Label_1172
	.word	-192
	.word	4
	.word	_Label_1173
	.word	-196
	.word	4
	.word	_Label_1174
	.word	-200
	.word	4
	.word	_Label_1175
	.word	-204
	.word	4
	.word	_Label_1176
	.word	-208
	.word	4
	.word	_Label_1177
	.word	-212
	.word	4
	.word	_Label_1178
	.word	-216
	.word	4
	.word	_Label_1179
	.word	-220
	.word	4
	.word	_Label_1180
	.word	-224
	.word	4
	.word	_Label_1181
	.word	-228
	.word	4
	.word	_Label_1182
	.word	-232
	.word	4
	.word	_Label_1183
	.word	-236
	.word	4
	.word	_Label_1184
	.word	-240
	.word	4
	.word	_Label_1185
	.word	-244
	.word	4
	.word	_Label_1186
	.word	-248
	.word	4
	.word	_Label_1187
	.word	-252
	.word	4
	.word	_Label_1188
	.word	-256
	.word	4
	.word	_Label_1189
	.word	-260
	.word	4
	.word	_Label_1190
	.word	-264
	.word	4
	.word	_Label_1191
	.word	-268
	.word	4
	.word	_Label_1192
	.word	-272
	.word	4
	.word	_Label_1193
	.word	-276
	.word	4
	.word	_Label_1194
	.word	-13
	.word	1
	.word	_Label_1195
	.word	-280
	.word	4
	.word	_Label_1196
	.word	-284
	.word	4
	.word	_Label_1197
	.word	-288
	.word	4
	.word	_Label_1198
	.word	-292
	.word	4
	.word	_Label_1199
	.word	-296
	.word	4
	.word	_Label_1200
	.word	-300
	.word	4
	.word	0
_Label_1121:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_1122:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1123:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1124:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1119\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1118\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1117\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_1105\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1141:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1091\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1085\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1155:
	.byte	'C'
	.ascii	"_temp_1077\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1159:
	.byte	'C'
	.ascii	"_temp_1073\0"
	.align
_Label_1160:
	.byte	'C'
	.ascii	"_temp_1072\0"
	.align
_Label_1161:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1162:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1163:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1164:
	.byte	'C'
	.ascii	"_temp_1068\0"
	.align
_Label_1165:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1166:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1192:
	.byte	'I'
	.ascii	"curChunk\0"
	.align
_Label_1193:
	.byte	'I'
	.ascii	"sizeOfFile\0"
	.align
_Label_1194:
	.byte	'B'
	.ascii	"res\0"
	.align
_Label_1195:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1196:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1197:
	.byte	'I'
	.ascii	"nextPos\0"
	.align
_Label_1198:
	.byte	'I'
	.ascii	"curCopied\0"
	.align
_Label_1199:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1200:
	.byte	'I'
	.ascii	"virtPage\0"
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
	mov	75,r1
_Label_4010:
	push	r0
	sub	r1,1,r1
	bne	_Label_4010
	mov	2146,r13		! source line 2146
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2159,r13		! source line 2159
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1205		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1205
	jmp	_Label_1201
_Label_1205:
!   if fileDesc <= 9 then goto _Label_1204		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1204
	jmp	_Label_1201
_Label_1204:
!   if sizeInBytes >= 0 then goto _Label_1203		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1203
	jmp	_Label_1201
_Label_1203:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1208 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-248]
!   Data Move: _temp_1207 = *_temp_1208  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r1],r1
	store	r1,[r14+-252]
!   if intIsZero (_temp_1207) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1209 = _temp_1207 + 124
	load	[r14+-252],r1
	add	r1,124,r1
	store	r1,[r14+-244]
!   Move address of _temp_1209 [fileDesc ] into _temp_1210
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-240]
!   Data Move: _temp_1206 = *_temp_1210  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-256]
!   if intIsZero (_temp_1206) then goto _Label_1201
	load	[r14+-256],r1
	cmp	r1,r0
	be	_Label_1201
	jmp	_Label_1202
_Label_1201:
! THEN...
	mov	2160,r13		! source line 2160
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2160,r13		! source line 2160
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,304,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1202:
! ASSIGNMENT STATEMENT...
	mov	2163,r13		! source line 2163
	mov	"\0\0AS",r10
!   curCopied = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2164,r13		! source line 2164
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	2165,r13		! source line 2165
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-284],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-288]
! ASSIGNMENT STATEMENT...
	mov	2166,r13		! source line 2166
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-284],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2168,r13		! source line 2168
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1213 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-228]
!   Data Move: _temp_1212 = *_temp_1213  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-232]
!   if intIsZero (_temp_1212) then goto _runtimeErrorNullPointer
	load	[r14+-232],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1214 = _temp_1212 + 124
	load	[r14+-232],r1
	add	r1,124,r1
	store	r1,[r14+-224]
!   Move address of _temp_1214 [fileDesc ] into _temp_1215
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-224],r1
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
	store	r2,[r14+-220]
!   Data Move: _temp_1211 = *_temp_1215  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-236]
!   if intIsZero (_temp_1211) then goto _runtimeErrorNullPointer
	load	[r14+-236],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1216 = _temp_1211 + 16
	load	[r14+-236],r1
	add	r1,16,r1
	store	r1,[r14+-216]
!   Data Move: nextPos = *_temp_1216  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2169,r13		! source line 2169
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1220 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-200]
!   Data Move: _temp_1219 = *_temp_1220  (sizeInBytes=4)
	load	[r14+-200],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_1219) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1221 = _temp_1219 + 124
	load	[r14+-204],r1
	add	r1,124,r1
	store	r1,[r14+-196]
!   Move address of _temp_1221 [fileDesc ] into _temp_1222
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-192]
!   Data Move: _temp_1218 = *_temp_1222  (sizeInBytes=4)
	load	[r14+-192],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   if intIsZero (_temp_1218) then goto _runtimeErrorNullPointer
	load	[r14+-208],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1223 = _temp_1218 + 20
	load	[r14+-208],r1
	add	r1,20,r1
	store	r1,[r14+-188]
!   Data Move: _temp_1217 = *_temp_1223  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-212]
!   if intIsZero (_temp_1217) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1224 = _temp_1217 + 24
	load	[r14+-212],r1
	add	r1,24,r1
	store	r1,[r14+-184]
!   Data Move: sizeOfFile = *_temp_1224  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-264]
! WHILE STATEMENT...
	mov	2171,r13		! source line 2171
	mov	"\0\0WH",r10
_Label_1225:
!	jmp	_Label_1226
_Label_1226:
	mov	2171,r13		! source line 2171
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2173,r13		! source line 2173
	mov	"\0\0AS",r10
!   curChunk = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-272],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	2174,r13		! source line 2174
	mov	"\0\0IF",r10
!   _temp_1230 = nextPos + curChunk		(int)
	load	[r14+-276],r1
	load	[r14+-260],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-180]
!   if _temp_1230 <= sizeOfFile then goto _Label_1229		(int)
	load	[r14+-180],r1
	load	[r14+-264],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1229
!	jmp	_Label_1228
_Label_1228:
! THEN...
	mov	2175,r13		! source line 2175
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2175,r13		! source line 2175
	mov	"\0\0AS",r10
!   curChunk = sizeOfFile - nextPos		(int)
	load	[r14+-264],r1
	load	[r14+-276],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! END IF...
_Label_1229:
! IF STATEMENT...
	mov	2178,r13		! source line 2178
	mov	"\0\0IF",r10
!   _temp_1233 = curCopied + curChunk		(int)
	load	[r14+-280],r1
	load	[r14+-260],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
!   if _temp_1233 <= sizeInBytes then goto _Label_1232		(int)
	load	[r14+-176],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1232
!	jmp	_Label_1231
_Label_1231:
! THEN...
	mov	2179,r13		! source line 2179
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2179,r13		! source line 2179
	mov	"\0\0AS",r10
!   curChunk = sizeInBytes - curCopied		(int)
	load	[r14+16],r1
	load	[r14+-280],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! END IF...
_Label_1232:
! IF STATEMENT...
	mov	2182,r13		! source line 2182
	mov	"\0\0IF",r10
!   if curChunk > 0 then goto _Label_1235		(int)
	load	[r14+-260],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1235
!	jmp	_Label_1234
_Label_1234:
! THEN...
	mov	2183,r13		! source line 2183
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2183,r13		! source line 2183
	mov	"\0\0BR",r10
	jmp	_Label_1227
! END IF...
_Label_1235:
! IF STATEMENT...
	mov	2186,r13		! source line 2186
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1240		(int)
	load	[r14+-288],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1240
	jmp	_Label_1236
_Label_1240:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1244 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: _temp_1243 = *_temp_1244  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   if intIsZero (_temp_1243) then goto _runtimeErrorNullPointer
	load	[r14+-164],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1245 = _temp_1243 + 32
	load	[r14+-164],r1
	add	r1,32,r1
	store	r1,[r14+-156]
!   _temp_1246 = _temp_1245 + 4
	load	[r14+-156],r1
	add	r1,4,r1
	store	r1,[r14+-152]
!   Data Move: _temp_1242 = *_temp_1246  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   _temp_1241 = _temp_1242 - 1		(int)
	load	[r14+-168],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if virtPage <= _temp_1241 then goto _Label_1239		(int)
	load	[r14+-288],r1
	load	[r14+-172],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1239
	jmp	_Label_1236
_Label_1239:
	mov	2187,r13		! source line 2187
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1249 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-144]
!   Data Move: _temp_1248 = *_temp_1249  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if intIsZero (_temp_1248) then goto _runtimeErrorNullPointer
	load	[r14+-148],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1250 = _temp_1248 + 32
	load	[r14+-148],r1
	add	r1,32,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-140],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1247  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1251 = _temp_1247 XOR 0		(bool)
	loadb	[r14+-12],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1251 then goto _Label_1238 else goto _Label_1236
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1236
	jmp	_Label_1238
_Label_1238:
	mov	2187,r13		! source line 2187
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1254 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-132]
!   Data Move: _temp_1253 = *_temp_1254  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   if intIsZero (_temp_1253) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1255 = _temp_1253 + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-128],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1252  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1256 = _temp_1252 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1256 then goto _Label_1237 else goto _Label_1236
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1236
	jmp	_Label_1237
_Label_1236:
! THEN...
	mov	2188,r13		! source line 2188
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2188,r13		! source line 2188
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,304,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1237:
! ASSIGNMENT STATEMENT...
	mov	2191,r13		! source line 2191
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2192,r13		! source line 2192
	mov	"\0\0AS",r10
!   nextPos = nextPos + curChunk		(int)
	load	[r14+-276],r1
	load	[r14+-260],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2193,r13		! source line 2193
	mov	"\0\0AS",r10
!   curCopied = curCopied + curChunk		(int)
	load	[r14+-280],r1
	load	[r14+-260],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2194,r13		! source line 2194
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-288],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-288]
! IF STATEMENT...
	mov	2196,r13		! source line 2196
	mov	"\0\0IF",r10
!   if curCopied != sizeInBytes then goto _Label_1258		(int)
	load	[r14+-280],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1258
!	jmp	_Label_1257
_Label_1257:
! THEN...
	mov	2197,r13		! source line 2197
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2197,r13		! source line 2197
	mov	"\0\0BR",r10
	jmp	_Label_1227
! END IF...
_Label_1258:
! END WHILE...
	jmp	_Label_1225
_Label_1227:
! ASSIGNMENT STATEMENT...
	mov	2202,r13		! source line 2202
	mov	"\0\0AS",r10
!   curCopied = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2203,r13		! source line 2203
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-284],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-288]
! ASSIGNMENT STATEMENT...
	mov	2204,r13		! source line 2204
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-284],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2206,r13		! source line 2206
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1261 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-116]
!   Data Move: _temp_1260 = *_temp_1261  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_1260) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1262 = _temp_1260 + 124
	load	[r14+-120],r1
	add	r1,124,r1
	store	r1,[r14+-112]
!   Move address of _temp_1262 [fileDesc ] into _temp_1263
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   Data Move: _temp_1259 = *_temp_1263  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if intIsZero (_temp_1259) then goto _runtimeErrorNullPointer
	load	[r14+-124],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1264 = _temp_1259 + 16
	load	[r14+-124],r1
	add	r1,16,r1
	store	r1,[r14+-104]
!   Data Move: nextPos = *_temp_1264  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-276]
! WHILE STATEMENT...
	mov	2208,r13		! source line 2208
	mov	"\0\0WH",r10
_Label_1265:
!	jmp	_Label_1266
_Label_1266:
	mov	2208,r13		! source line 2208
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2210,r13		! source line 2210
	mov	"\0\0AS",r10
!   curChunk = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-272],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	2212,r13		! source line 2212
	mov	"\0\0IF",r10
!   _temp_1270 = nextPos + curChunk		(int)
	load	[r14+-276],r1
	load	[r14+-260],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
!   if _temp_1270 <= sizeOfFile then goto _Label_1269		(int)
	load	[r14+-100],r1
	load	[r14+-264],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1269
!	jmp	_Label_1268
_Label_1268:
! THEN...
	mov	2213,r13		! source line 2213
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2213,r13		! source line 2213
	mov	"\0\0AS",r10
!   curChunk = sizeOfFile - nextPos		(int)
	load	[r14+-264],r1
	load	[r14+-276],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! END IF...
_Label_1269:
! IF STATEMENT...
	mov	2216,r13		! source line 2216
	mov	"\0\0IF",r10
!   _temp_1273 = curCopied + curChunk		(int)
	load	[r14+-280],r1
	load	[r14+-260],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
!   if _temp_1273 <= sizeInBytes then goto _Label_1272		(int)
	load	[r14+-96],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1272
!	jmp	_Label_1271
_Label_1271:
! THEN...
	mov	2217,r13		! source line 2217
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2217,r13		! source line 2217
	mov	"\0\0AS",r10
!   curChunk = sizeInBytes - curCopied		(int)
	load	[r14+16],r1
	load	[r14+-280],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! END IF...
_Label_1272:
! IF STATEMENT...
	mov	2220,r13		! source line 2220
	mov	"\0\0IF",r10
!   if curChunk > 0 then goto _Label_1275		(int)
	load	[r14+-260],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1275
!	jmp	_Label_1274
_Label_1274:
! THEN...
	mov	2221,r13		! source line 2221
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2221,r13		! source line 2221
	mov	"\0\0BR",r10
	jmp	_Label_1267
! END IF...
_Label_1275:
! SEND STATEMENT...
	mov	2224,r13		! source line 2224
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1277 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1276 = *_temp_1277  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1276) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1278 = _temp_1276 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2227,r13		! source line 2227
	mov	"\0\0AS",r10
	mov	2227,r13		! source line 2227
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1281 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1280 = *_temp_1281  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1280) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1282 = _temp_1280 + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1279  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
!   destAddr = _temp_1279 + offset		(int)
	load	[r14+-80],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2228,r13		! source line 2228
	mov	"\0\0AS",r10
	mov	2228,r13		! source line 2228
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1285 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_1284 = *_temp_1285  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_1284) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1286 = _temp_1284 + 124
	load	[r14+-60],r1
	add	r1,124,r1
	store	r1,[r14+-52]
!   Move address of _temp_1286 [fileDesc ] into _temp_1287
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Data Move: _temp_1283 = *_temp_1287  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   _temp_1288 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_1283  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-268],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPos  sizeInBytes=4
	load	[r14+-276],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=curChunk  sizeInBytes=4
	load	[r14+-260],r1
	store	r1,[r15+16]
!   Send message SynchWrite
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=res  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
! ASSIGNMENT STATEMENT...
	mov	2230,r13		! source line 2230
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2231,r13		! source line 2231
	mov	"\0\0AS",r10
!   nextPos = nextPos + curChunk		(int)
	load	[r14+-276],r1
	load	[r14+-260],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2232,r13		! source line 2232
	mov	"\0\0AS",r10
!   curCopied = curCopied + curChunk		(int)
	load	[r14+-280],r1
	load	[r14+-260],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2233,r13		! source line 2233
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-288],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-288]
! IF STATEMENT...
	mov	2235,r13		! source line 2235
	mov	"\0\0IF",r10
!   if curCopied != sizeInBytes then goto _Label_1290		(int)
	load	[r14+-280],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1290
!	jmp	_Label_1289
_Label_1289:
! THEN...
	mov	2236,r13		! source line 2236
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2236,r13		! source line 2236
	mov	"\0\0BR",r10
	jmp	_Label_1267
! END IF...
_Label_1290:
! END WHILE...
	jmp	_Label_1265
_Label_1267:
! ASSIGNMENT STATEMENT...
	mov	2240,r13		! source line 2240
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1293 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1292 = *_temp_1293  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1292) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1294 = _temp_1292 + 124
	load	[r14+-36],r1
	add	r1,124,r1
	store	r1,[r14+-28]
!   Move address of _temp_1294 [fileDesc ] into _temp_1295
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Data Move: _temp_1291 = *_temp_1295  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_1291) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1296 = _temp_1291 + 16
	load	[r14+-40],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1296 = nextPos  (sizeInBytes=4)
	load	[r14+-276],r1
	load	[r14+-20],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2241,r13		! source line 2241
	mov	"\0\0RE",r10
!   ReturnResult: curCopied  (sizeInBytes=4)
	load	[r14+-280],r1
	store	r1,[r14+8]
	add	r15,304,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_1297
	.word	12		! total size of parameters
	.word	300		! frame size = 300
	.word	_Label_1298
	.word	8
	.word	4
	.word	_Label_1299
	.word	12
	.word	4
	.word	_Label_1300
	.word	16
	.word	4
	.word	_Label_1301
	.word	-20
	.word	4
	.word	_Label_1302
	.word	-24
	.word	4
	.word	_Label_1303
	.word	-28
	.word	4
	.word	_Label_1304
	.word	-32
	.word	4
	.word	_Label_1305
	.word	-36
	.word	4
	.word	_Label_1306
	.word	-40
	.word	4
	.word	_Label_1307
	.word	-44
	.word	4
	.word	_Label_1308
	.word	-48
	.word	4
	.word	_Label_1309
	.word	-52
	.word	4
	.word	_Label_1310
	.word	-56
	.word	4
	.word	_Label_1311
	.word	-60
	.word	4
	.word	_Label_1312
	.word	-64
	.word	4
	.word	_Label_1313
	.word	-68
	.word	4
	.word	_Label_1314
	.word	-72
	.word	4
	.word	_Label_1315
	.word	-76
	.word	4
	.word	_Label_1316
	.word	-80
	.word	4
	.word	_Label_1317
	.word	-84
	.word	4
	.word	_Label_1318
	.word	-88
	.word	4
	.word	_Label_1319
	.word	-92
	.word	4
	.word	_Label_1320
	.word	-96
	.word	4
	.word	_Label_1321
	.word	-100
	.word	4
	.word	_Label_1322
	.word	-104
	.word	4
	.word	_Label_1323
	.word	-108
	.word	4
	.word	_Label_1324
	.word	-112
	.word	4
	.word	_Label_1325
	.word	-116
	.word	4
	.word	_Label_1326
	.word	-120
	.word	4
	.word	_Label_1327
	.word	-124
	.word	4
	.word	_Label_1328
	.word	-9
	.word	1
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
	.word	-10
	.word	1
	.word	_Label_1333
	.word	-11
	.word	1
	.word	_Label_1334
	.word	-140
	.word	4
	.word	_Label_1335
	.word	-144
	.word	4
	.word	_Label_1336
	.word	-148
	.word	4
	.word	_Label_1337
	.word	-12
	.word	1
	.word	_Label_1338
	.word	-152
	.word	4
	.word	_Label_1339
	.word	-156
	.word	4
	.word	_Label_1340
	.word	-160
	.word	4
	.word	_Label_1341
	.word	-164
	.word	4
	.word	_Label_1342
	.word	-168
	.word	4
	.word	_Label_1343
	.word	-172
	.word	4
	.word	_Label_1344
	.word	-176
	.word	4
	.word	_Label_1345
	.word	-180
	.word	4
	.word	_Label_1346
	.word	-184
	.word	4
	.word	_Label_1347
	.word	-188
	.word	4
	.word	_Label_1348
	.word	-192
	.word	4
	.word	_Label_1349
	.word	-196
	.word	4
	.word	_Label_1350
	.word	-200
	.word	4
	.word	_Label_1351
	.word	-204
	.word	4
	.word	_Label_1352
	.word	-208
	.word	4
	.word	_Label_1353
	.word	-212
	.word	4
	.word	_Label_1354
	.word	-216
	.word	4
	.word	_Label_1355
	.word	-220
	.word	4
	.word	_Label_1356
	.word	-224
	.word	4
	.word	_Label_1357
	.word	-228
	.word	4
	.word	_Label_1358
	.word	-232
	.word	4
	.word	_Label_1359
	.word	-236
	.word	4
	.word	_Label_1360
	.word	-240
	.word	4
	.word	_Label_1361
	.word	-244
	.word	4
	.word	_Label_1362
	.word	-248
	.word	4
	.word	_Label_1363
	.word	-252
	.word	4
	.word	_Label_1364
	.word	-256
	.word	4
	.word	_Label_1365
	.word	-260
	.word	4
	.word	_Label_1366
	.word	-264
	.word	4
	.word	_Label_1367
	.word	-13
	.word	1
	.word	_Label_1368
	.word	-268
	.word	4
	.word	_Label_1369
	.word	-272
	.word	4
	.word	_Label_1370
	.word	-276
	.word	4
	.word	_Label_1371
	.word	-280
	.word	4
	.word	_Label_1372
	.word	-284
	.word	4
	.word	_Label_1373
	.word	-288
	.word	4
	.word	0
_Label_1297:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_1298:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1299:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1300:
	.byte	'I'
	.ascii	"sizeInBytes\0"
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
	.ascii	"_temp_1288\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1287\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1286\0"
	.align
_Label_1310:
	.byte	'?'
	.ascii	"_temp_1285\0"
	.align
_Label_1311:
	.byte	'?'
	.ascii	"_temp_1284\0"
	.align
_Label_1312:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1313:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1314:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1270\0"
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
	.byte	'C'
	.ascii	"_temp_1256\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1332:
	.byte	'C'
	.ascii	"_temp_1252\0"
	.align
_Label_1333:
	.byte	'C'
	.ascii	"_temp_1251\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1337:
	.byte	'C'
	.ascii	"_temp_1247\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1245\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1215\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1213\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1210\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1209\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1207\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1365:
	.byte	'I'
	.ascii	"curChunk\0"
	.align
_Label_1366:
	.byte	'I'
	.ascii	"sizeOfFile\0"
	.align
_Label_1367:
	.byte	'B'
	.ascii	"res\0"
	.align
_Label_1368:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1369:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1370:
	.byte	'I'
	.ascii	"nextPos\0"
	.align
_Label_1371:
	.byte	'I'
	.ascii	"curCopied\0"
	.align
_Label_1372:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1373:
	.byte	'I'
	.ascii	"virtPage\0"
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
	mov	53,r1
_Label_4011:
	push	r0
	sub	r1,1,r1
	bne	_Label_4011
	mov	2246,r13		! source line 2246
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2248,r13		! source line 2248
	mov	"\0\0SE",r10
!   _temp_1374 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-216]
!   _temp_1375 = _temp_1374 + 4
	load	[r14+-216],r1
	add	r1,4,r1
	store	r1,[r14+-212]
!   Send message Lock
	load	[r14+-212],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2250,r13		! source line 2250
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1381		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1381
	jmp	_Label_1376
_Label_1381:
!   if fileDesc <= 9 then goto _Label_1380		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1380
	jmp	_Label_1376
_Label_1380:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1384 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-200]
!   Data Move: _temp_1383 = *_temp_1384  (sizeInBytes=4)
	load	[r14+-200],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_1383) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1385 = _temp_1383 + 124
	load	[r14+-204],r1
	add	r1,124,r1
	store	r1,[r14+-196]
!   Move address of _temp_1385 [fileDesc ] into _temp_1386
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-192]
!   Data Move: _temp_1382 = *_temp_1386  (sizeInBytes=4)
	load	[r14+-192],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   if intIsZero (_temp_1382) then goto _Label_1376
	load	[r14+-208],r1
	cmp	r1,r0
	be	_Label_1376
!	jmp	_Label_1379
_Label_1379:
!   if newCurrentPos >= -1 then goto _Label_1378		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1378
	jmp	_Label_1376
_Label_1378:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1391 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_1390 = *_temp_1391  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_1390) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1392 = _temp_1390 + 124
	load	[r14+-176],r1
	add	r1,124,r1
	store	r1,[r14+-168]
!   Move address of _temp_1392 [fileDesc ] into _temp_1393
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: _temp_1389 = *_temp_1393  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_1389) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1394 = _temp_1389 + 20
	load	[r14+-180],r1
	add	r1,20,r1
	store	r1,[r14+-160]
!   Data Move: _temp_1388 = *_temp_1394  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_1388) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1395 = _temp_1388 + 24
	load	[r14+-184],r1
	add	r1,24,r1
	store	r1,[r14+-156]
!   Data Move: _temp_1387 = *_temp_1395  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if newCurrentPos <= _temp_1387 then goto _Label_1377		(int)
	load	[r14+12],r1
	load	[r14+-188],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1377
!	jmp	_Label_1376
_Label_1376:
! THEN...
	mov	2252,r13		! source line 2252
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2252,r13		! source line 2252
	mov	"\0\0SE",r10
!   _temp_1396 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-152]
!   _temp_1397 = _temp_1396 + 4
	load	[r14+-152],r1
	add	r1,4,r1
	store	r1,[r14+-148]
!   Send message Unlock
	load	[r14+-148],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2253,r13		! source line 2253
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,216,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1377:
! IF STATEMENT...
	mov	2256,r13		! source line 2256
	mov	"\0\0IF",r10
!   if newCurrentPos != -1 then goto _Label_1399		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1399
!	jmp	_Label_1398
_Label_1398:
! THEN...
	mov	2257,r13		! source line 2257
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2257,r13		! source line 2257
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1402 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_1401 = *_temp_1402  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1401) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1403 = _temp_1401 + 124
	load	[r14+-140],r1
	add	r1,124,r1
	store	r1,[r14+-132]
!   Move address of _temp_1403 [fileDesc ] into _temp_1404
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-128]
!   Data Move: _temp_1400 = *_temp_1404  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_1400) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1405 = _temp_1400 + 16
	load	[r14+-144],r1
	add	r1,16,r1
	store	r1,[r14+-124]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1410 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-104]
!   Data Move: _temp_1409 = *_temp_1410  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_1409) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1411 = _temp_1409 + 124
	load	[r14+-108],r1
	add	r1,124,r1
	store	r1,[r14+-100]
!   Move address of _temp_1411 [fileDesc ] into _temp_1412
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: _temp_1408 = *_temp_1412  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1408) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1413 = _temp_1408 + 20
	load	[r14+-112],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1407 = *_temp_1413  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_1407) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1414 = _temp_1407 + 24
	load	[r14+-116],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1406 = *_temp_1414  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   Data Move: *_temp_1405 = _temp_1406  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-124],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2258,r13		! source line 2258
	mov	"\0\0SE",r10
!   _temp_1415 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-84]
!   _temp_1416 = _temp_1415 + 4
	load	[r14+-84],r1
	add	r1,4,r1
	store	r1,[r14+-80]
!   Send message Unlock
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2259,r13		! source line 2259
	mov	"\0\0RE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1421 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1420 = *_temp_1421  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1420) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1422 = _temp_1420 + 124
	load	[r14+-64],r1
	add	r1,124,r1
	store	r1,[r14+-56]
!   Move address of _temp_1422 [fileDesc ] into _temp_1423
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   Data Move: _temp_1419 = *_temp_1423  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1419) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1424 = _temp_1419 + 20
	load	[r14+-68],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1418 = *_temp_1424  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_1418) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1425 = _temp_1418 + 24
	load	[r14+-72],r1
	add	r1,24,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1417 = *_temp_1425  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   ReturnResult: _temp_1417  (sizeInBytes=4)
	load	[r14+-76],r1
	store	r1,[r14+8]
	add	r15,216,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1399:
! ASSIGNMENT STATEMENT...
	mov	2262,r13		! source line 2262
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1428 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1427 = *_temp_1428  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1427) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1429 = _temp_1427 + 124
	load	[r14+-36],r1
	add	r1,124,r1
	store	r1,[r14+-28]
!   Move address of _temp_1429 [fileDesc ] into _temp_1430
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Data Move: _temp_1426 = *_temp_1430  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_1426) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1431 = _temp_1426 + 16
	load	[r14+-40],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1431 = newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2264,r13		! source line 2264
	mov	"\0\0SE",r10
!   _temp_1432 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   _temp_1433 = _temp_1432 + 4
	load	[r14+-16],r1
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
	mov	2265,r13		! source line 2265
	mov	"\0\0RE",r10
!   ReturnResult: newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	store	r1,[r14+8]
	add	r15,216,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_1434
	.word	8		! total size of parameters
	.word	212		! frame size = 212
	.word	_Label_1435
	.word	8
	.word	4
	.word	_Label_1436
	.word	12
	.word	4
	.word	_Label_1437
	.word	-12
	.word	4
	.word	_Label_1438
	.word	-16
	.word	4
	.word	_Label_1439
	.word	-20
	.word	4
	.word	_Label_1440
	.word	-24
	.word	4
	.word	_Label_1441
	.word	-28
	.word	4
	.word	_Label_1442
	.word	-32
	.word	4
	.word	_Label_1443
	.word	-36
	.word	4
	.word	_Label_1444
	.word	-40
	.word	4
	.word	_Label_1445
	.word	-44
	.word	4
	.word	_Label_1446
	.word	-48
	.word	4
	.word	_Label_1447
	.word	-52
	.word	4
	.word	_Label_1448
	.word	-56
	.word	4
	.word	_Label_1449
	.word	-60
	.word	4
	.word	_Label_1450
	.word	-64
	.word	4
	.word	_Label_1451
	.word	-68
	.word	4
	.word	_Label_1452
	.word	-72
	.word	4
	.word	_Label_1453
	.word	-76
	.word	4
	.word	_Label_1454
	.word	-80
	.word	4
	.word	_Label_1455
	.word	-84
	.word	4
	.word	_Label_1456
	.word	-88
	.word	4
	.word	_Label_1457
	.word	-92
	.word	4
	.word	_Label_1458
	.word	-96
	.word	4
	.word	_Label_1459
	.word	-100
	.word	4
	.word	_Label_1460
	.word	-104
	.word	4
	.word	_Label_1461
	.word	-108
	.word	4
	.word	_Label_1462
	.word	-112
	.word	4
	.word	_Label_1463
	.word	-116
	.word	4
	.word	_Label_1464
	.word	-120
	.word	4
	.word	_Label_1465
	.word	-124
	.word	4
	.word	_Label_1466
	.word	-128
	.word	4
	.word	_Label_1467
	.word	-132
	.word	4
	.word	_Label_1468
	.word	-136
	.word	4
	.word	_Label_1469
	.word	-140
	.word	4
	.word	_Label_1470
	.word	-144
	.word	4
	.word	_Label_1471
	.word	-148
	.word	4
	.word	_Label_1472
	.word	-152
	.word	4
	.word	_Label_1473
	.word	-156
	.word	4
	.word	_Label_1474
	.word	-160
	.word	4
	.word	_Label_1475
	.word	-164
	.word	4
	.word	_Label_1476
	.word	-168
	.word	4
	.word	_Label_1477
	.word	-172
	.word	4
	.word	_Label_1478
	.word	-176
	.word	4
	.word	_Label_1479
	.word	-180
	.word	4
	.word	_Label_1480
	.word	-184
	.word	4
	.word	_Label_1481
	.word	-188
	.word	4
	.word	_Label_1482
	.word	-192
	.word	4
	.word	_Label_1483
	.word	-196
	.word	4
	.word	_Label_1484
	.word	-200
	.word	4
	.word	_Label_1485
	.word	-204
	.word	4
	.word	_Label_1486
	.word	-208
	.word	4
	.word	_Label_1487
	.word	-212
	.word	4
	.word	_Label_1488
	.word	-216
	.word	4
	.word	0
_Label_1434:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_1435:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1436:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1433\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1473:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1474:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1475:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1476:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1477:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1478:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1479:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1375\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1374\0"
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
	mov	17,r1
_Label_4012:
	push	r0
	sub	r1,1,r1
	bne	_Label_4012
	mov	2270,r13		! source line 2270
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2271,r13		! source line 2271
	mov	"\0\0IF",r10
!   if fileDesc < 0 then goto _Label_1490		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1490
!	jmp	_Label_1492
_Label_1492:
!   if fileDesc >= 10 then goto _Label_1490		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1490
!	jmp	_Label_1491
_Label_1491:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1495 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1494 = *_temp_1495  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1494) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1496 = _temp_1494 + 124
	load	[r14+-64],r1
	add	r1,124,r1
	store	r1,[r14+-56]
!   Move address of _temp_1496 [fileDesc ] into _temp_1497
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   Data Move: _temp_1493 = *_temp_1497  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1493) then goto _Label_1490
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_1490
!	jmp	_Label_1489
_Label_1489:
! THEN...
	mov	2272,r13		! source line 2272
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2272,r13		! source line 2272
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1500 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1499 = *_temp_1500  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1499) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1501 = _temp_1499 + 124
	load	[r14+-44],r1
	add	r1,124,r1
	store	r1,[r14+-36]
!   Move address of _temp_1501 [fileDesc ] into _temp_1502
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_1498 = *_temp_1502  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1503 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1498  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2273,r13		! source line 2273
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1505 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1504 = *_temp_1505  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1504) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1506 = _temp_1504 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_1506 [fileDesc ] into _temp_1507
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: *_temp_1507 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! END IF...
_Label_1490:
! RETURN STATEMENT...
	mov	2271,r13		! source line 2271
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_1508
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_1509
	.word	8
	.word	4
	.word	_Label_1510
	.word	-12
	.word	4
	.word	_Label_1511
	.word	-16
	.word	4
	.word	_Label_1512
	.word	-20
	.word	4
	.word	_Label_1513
	.word	-24
	.word	4
	.word	_Label_1514
	.word	-28
	.word	4
	.word	_Label_1515
	.word	-32
	.word	4
	.word	_Label_1516
	.word	-36
	.word	4
	.word	_Label_1517
	.word	-40
	.word	4
	.word	_Label_1518
	.word	-44
	.word	4
	.word	_Label_1519
	.word	-48
	.word	4
	.word	_Label_1520
	.word	-52
	.word	4
	.word	_Label_1521
	.word	-56
	.word	4
	.word	_Label_1522
	.word	-60
	.word	4
	.word	_Label_1523
	.word	-64
	.word	4
	.word	_Label_1524
	.word	-68
	.word	4
	.word	0
_Label_1508:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_1509:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1512:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1503\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1494\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1493\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_186_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_186_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_4013:
	push	r0
	sub	r1,1,r1
	bne	_Label_4013
	mov	2864,r13		! source line 2864
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2866,r13		! source line 2866
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2867,r13		! source line 2867
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2868,r13		! source line 2868
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1525 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_1525  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2869,r13		! source line 2869
	mov	"\0\0AS",r10
!   _temp_1526 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_1526) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1528 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_1528) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1527 = *_temp_1528  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_1526 = _temp_1527  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2870,r13		! source line 2870
	mov	"\0\0AS",r10
!   _temp_1529 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_1529) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1531 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_1531) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1530 = *_temp_1531  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_1529 = _temp_1530  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2871,r13		! source line 2871
	mov	"\0\0AS",r10
!   _temp_1532 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_1532) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1534 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_1534) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1533 = *_temp_1534  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1532 = _temp_1533  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2871,r13		! source line 2871
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_186_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_1535
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1536
	.word	8
	.word	4
	.word	_Label_1537
	.word	12
	.word	4
	.word	_Label_1538
	.word	-16
	.word	4
	.word	_Label_1539
	.word	-9
	.word	1
	.word	_Label_1540
	.word	-20
	.word	4
	.word	_Label_1541
	.word	-24
	.word	4
	.word	_Label_1542
	.word	-10
	.word	1
	.word	_Label_1543
	.word	-28
	.word	4
	.word	_Label_1544
	.word	-32
	.word	4
	.word	_Label_1545
	.word	-11
	.word	1
	.word	_Label_1546
	.word	-36
	.word	4
	.word	_Label_1547
	.word	-12
	.word	1
	.word	_Label_1548
	.word	-40
	.word	4
	.word	_Label_1549
	.word	-44
	.word	4
	.word	0
_Label_1535:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_1536:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_1537:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1534\0"
	.align
_Label_1539:
	.byte	'C'
	.ascii	"_temp_1533\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1542:
	.byte	'C'
	.ascii	"_temp_1530\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1545:
	.byte	'C'
	.ascii	"_temp_1527\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1547:
	.byte	'C'
	.ascii	"_temp_1525\0"
	.align
_Label_1548:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_1549:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_185_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_185_printFCB,r1
	push	r1
	mov	3,r1
_Label_4014:
	push	r0
	sub	r1,1,r1
	bne	_Label_4014
	mov	2874,r13		! source line 2874
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1551 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_1550 = *_temp_1551  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1550  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2875,r13		! source line 2875
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2876,r13		! source line 2876
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2876,r13		! source line 2876
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_185_printFCB:
	.word	_sourceFileName
	.word	_Label_1552
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1553
	.word	8
	.word	4
	.word	_Label_1554
	.word	-12
	.word	4
	.word	_Label_1555
	.word	-16
	.word	4
	.word	0
_Label_1552:
	.ascii	"printFCB\0"
	.align
_Label_1553:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_184_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_184_printOpen,r1
	push	r1
	mov	4,r1
_Label_4015:
	push	r0
	sub	r1,1,r1
	bne	_Label_4015
	mov	2879,r13		! source line 2879
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1556 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1556  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2880,r13		! source line 2880
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1557 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1557  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2881,r13		! source line 2881
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1558 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1558  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2882,r13		! source line 2882
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2883,r13		! source line 2883
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
	mov	2883,r13		! source line 2883
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_184_printOpen:
	.word	_sourceFileName
	.word	_Label_1559
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1560
	.word	8
	.word	4
	.word	_Label_1561
	.word	-12
	.word	4
	.word	_Label_1562
	.word	-16
	.word	4
	.word	_Label_1563
	.word	-20
	.word	4
	.word	0
_Label_1559:
	.ascii	"printOpen\0"
	.align
_Label_1560:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1558\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1557\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1556\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_1564
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_1564:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1565
	.word	_sourceFileName
	.word	125		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_1565:
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
_Label_4016:
	push	r0
	sub	r1,1,r1
	bne	_Label_4016
	mov	270,r13		! source line 270
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_1567		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1567
!	jmp	_Label_1566
_Label_1566:
! THEN...
	mov	272,r13		! source line 272
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1568 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1568  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	272,r13		! source line 272
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1567:
! ASSIGNMENT STATEMENT...
	mov	274,r13		! source line 274
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	275,r13		! source line 275
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
	mov	275,r13		! source line 275
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
	.word	_Label_1570
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1571
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1572
	.word	12
	.word	4
	.word	_Label_1573
	.word	-12
	.word	4
	.word	_Label_1574
	.word	-16
	.word	4
	.word	0
_Label_1570:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1571:
	.ascii	"Pself\0"
	.align
_Label_1572:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1569\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1568\0"
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
_Label_4017:
	push	r0
	sub	r1,1,r1
	bne	_Label_4017
	mov	280,r13		! source line 280
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	284,r13		! source line 284
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	284,r13		! source line 284
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	285,r13		! source line 285
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_1576		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1576
!	jmp	_Label_1575
_Label_1575:
! THEN...
	mov	286,r13		! source line 286
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1577 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1577  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	286,r13		! source line 286
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1576:
! ASSIGNMENT STATEMENT...
	mov	288,r13		! source line 288
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
	mov	289,r13		! source line 289
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_1579		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1579
!	jmp	_Label_1578
_Label_1578:
! THEN...
	mov	290,r13		! source line 290
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	290,r13		! source line 290
	mov	"\0\0AS",r10
	mov	290,r13		! source line 290
	mov	"\0\0SE",r10
!   _temp_1580 = &waitingThreads
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
	mov	291,r13		! source line 291
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1581 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1581 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	292,r13		! source line 292
	mov	"\0\0SE",r10
!   _temp_1582 = &_P_Kernel_readyList
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
_Label_1579:
! ASSIGNMENT STATEMENT...
	mov	294,r13		! source line 294
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	294,r13		! source line 294
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	294,r13		! source line 294
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
	.word	_Label_1583
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1584
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1585
	.word	-12
	.word	4
	.word	_Label_1586
	.word	-16
	.word	4
	.word	_Label_1587
	.word	-20
	.word	4
	.word	_Label_1588
	.word	-24
	.word	4
	.word	_Label_1589
	.word	-28
	.word	4
	.word	_Label_1590
	.word	-32
	.word	4
	.word	0
_Label_1583:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1584:
	.ascii	"Pself\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1582\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1581\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1577\0"
	.align
_Label_1589:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1590:
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
_Label_4018:
	push	r0
	sub	r1,1,r1
	bne	_Label_4018
	mov	299,r13		! source line 299
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	302,r13		! source line 302
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	302,r13		! source line 302
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_1592		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1592
!	jmp	_Label_1591
_Label_1591:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1593 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1593  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	304,r13		! source line 304
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1592:
! ASSIGNMENT STATEMENT...
	mov	306,r13		! source line 306
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
	mov	307,r13		! source line 307
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_1595		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1595
!	jmp	_Label_1594
_Label_1594:
! THEN...
	mov	308,r13		! source line 308
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0SE",r10
!   _temp_1596 = &waitingThreads
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
	mov	309,r13		! source line 309
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
_Label_1595:
! ASSIGNMENT STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	311,r13		! source line 311
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	311,r13		! source line 311
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
	.word	_Label_1597
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1598
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1599
	.word	-12
	.word	4
	.word	_Label_1600
	.word	-16
	.word	4
	.word	_Label_1601
	.word	-20
	.word	4
	.word	0
_Label_1597:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1598:
	.ascii	"Pself\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1593\0"
	.align
_Label_1601:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1602
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1602:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1603
	.word	_sourceFileName
	.word	138		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1603:
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
_Label_4019:
	push	r0
	sub	r1,1,r1
	bne	_Label_4019
	mov	334,r13		! source line 334
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	335,r13		! source line 335
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
	mov	335,r13		! source line 335
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
	.word	_Label_1605
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1606
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1607
	.word	-12
	.word	4
	.word	0
_Label_1605:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1606:
	.ascii	"Pself\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1604\0"
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
_Label_4020:
	push	r0
	sub	r1,1,r1
	bne	_Label_4020
	mov	340,r13		! source line 340
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	343,r13		! source line 343
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1609		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1609
!	jmp	_Label_1608
_Label_1608:
! THEN...
	mov	344,r13		! source line 344
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1610 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1610  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	344,r13		! source line 344
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1609:
! ASSIGNMENT STATEMENT...
	mov	346,r13		! source line 346
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	346,r13		! source line 346
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	347,r13		! source line 347
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_1614		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1614
!   _temp_1613 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1615
_Label_1614:
!   _temp_1613 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1615:
!   if _temp_1613 then goto _Label_1612 else goto _Label_1611
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1611
	jmp	_Label_1612
_Label_1611:
! THEN...
	mov	348,r13		! source line 348
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	348,r13		! source line 348
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_1616
_Label_1612:
! ELSE...
	mov	350,r13		! source line 350
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	350,r13		! source line 350
	mov	"\0\0SE",r10
!   _temp_1617 = &waitingThreads
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
	mov	351,r13		! source line 351
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
_Label_1616:
! ASSIGNMENT STATEMENT...
	mov	353,r13		! source line 353
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	353,r13		! source line 353
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	353,r13		! source line 353
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
	.word	_Label_1618
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1619
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1620
	.word	-16
	.word	4
	.word	_Label_1621
	.word	-9
	.word	1
	.word	_Label_1622
	.word	-20
	.word	4
	.word	_Label_1623
	.word	-24
	.word	4
	.word	0
_Label_1618:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1619:
	.ascii	"Pself\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1621:
	.byte	'C'
	.ascii	"_temp_1613\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1610\0"
	.align
_Label_1623:
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
_Label_4021:
	push	r0
	sub	r1,1,r1
	bne	_Label_4021
	mov	358,r13		! source line 358
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	362,r13		! source line 362
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1625		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1625
!	jmp	_Label_1624
_Label_1624:
! THEN...
	mov	363,r13		! source line 363
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1626 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1626  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	363,r13		! source line 363
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1625:
! ASSIGNMENT STATEMENT...
	mov	365,r13		! source line 365
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	365,r13		! source line 365
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	366,r13		! source line 366
	mov	"\0\0AS",r10
	mov	366,r13		! source line 366
	mov	"\0\0SE",r10
!   _temp_1627 = &waitingThreads
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
	mov	367,r13		! source line 367
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_1629		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1629
!	jmp	_Label_1628
_Label_1628:
! THEN...
	mov	368,r13		! source line 368
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	368,r13		! source line 368
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1630 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1630 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	369,r13		! source line 369
	mov	"\0\0SE",r10
!   _temp_1631 = &_P_Kernel_readyList
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
	mov	370,r13		! source line 370
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_1632
_Label_1629:
! ELSE...
	mov	372,r13		! source line 372
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	372,r13		! source line 372
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_1632:
! ASSIGNMENT STATEMENT...
	mov	374,r13		! source line 374
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	374,r13		! source line 374
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	374,r13		! source line 374
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
	.word	_Label_1633
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1634
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1635
	.word	-12
	.word	4
	.word	_Label_1636
	.word	-16
	.word	4
	.word	_Label_1637
	.word	-20
	.word	4
	.word	_Label_1638
	.word	-24
	.word	4
	.word	_Label_1639
	.word	-28
	.word	4
	.word	_Label_1640
	.word	-32
	.word	4
	.word	0
_Label_1633:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1634:
	.ascii	"Pself\0"
	.align
_Label_1635:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1636:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1637:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1639:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1640:
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
_Label_4022:
	push	r0
	sub	r1,1,r1
	bne	_Label_4022
	mov	379,r13		! source line 379
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	380,r13		! source line 380
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1643		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1643
!	jmp	_Label_1642
_Label_1642:
!   _temp_1641 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1644
_Label_1643:
!   _temp_1641 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1644:
!   ReturnResult: _temp_1641  (sizeInBytes=1)
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
	.word	_Label_1645
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1646
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1647
	.word	-9
	.word	1
	.word	0
_Label_1645:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1646:
	.ascii	"Pself\0"
	.align
_Label_1647:
	.byte	'C'
	.ascii	"_temp_1641\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1648
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1648:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1649
	.word	_sourceFileName
	.word	152		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1649:
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
_Label_4023:
	push	r0
	sub	r1,1,r1
	bne	_Label_4023
	mov	420,r13		! source line 420
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	421,r13		! source line 421
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
	mov	421,r13		! source line 421
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
	.word	_Label_1651
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1652
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1653
	.word	-12
	.word	4
	.word	0
_Label_1651:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1652:
	.ascii	"Pself\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1650\0"
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
_Label_4024:
	push	r0
	sub	r1,1,r1
	bne	_Label_4024
	mov	426,r13		! source line 426
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0IF",r10
	mov	429,r13		! source line 429
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
!   Retrieve Result: targetName=_temp_1656  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1656 then goto _Label_1655 else goto _Label_1654
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1654
	jmp	_Label_1655
_Label_1654:
! THEN...
	mov	430,r13		! source line 430
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1657 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1657  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	430,r13		! source line 430
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1655:
! ASSIGNMENT STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	432,r13		! source line 432
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	433,r13		! source line 433
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
	mov	434,r13		! source line 434
	mov	"\0\0SE",r10
!   _temp_1658 = &waitingThreads
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
	mov	435,r13		! source line 435
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
	mov	436,r13		! source line 436
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
	mov	437,r13		! source line 437
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	437,r13		! source line 437
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	437,r13		! source line 437
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
	.word	_Label_1659
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1660
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1661
	.word	12
	.word	4
	.word	_Label_1662
	.word	-16
	.word	4
	.word	_Label_1663
	.word	-20
	.word	4
	.word	_Label_1664
	.word	-9
	.word	1
	.word	_Label_1665
	.word	-24
	.word	4
	.word	0
_Label_1659:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1660:
	.ascii	"Pself\0"
	.align
_Label_1661:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1662:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1663:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1664:
	.byte	'C'
	.ascii	"_temp_1656\0"
	.align
_Label_1665:
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
_Label_4025:
	push	r0
	sub	r1,1,r1
	bne	_Label_4025
	mov	442,r13		! source line 442
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	446,r13		! source line 446
	mov	"\0\0IF",r10
	mov	446,r13		! source line 446
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
!   Retrieve Result: targetName=_temp_1668  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1668 then goto _Label_1667 else goto _Label_1666
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1666
	jmp	_Label_1667
_Label_1666:
! THEN...
	mov	447,r13		! source line 447
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1669 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1669  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	447,r13		! source line 447
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1667:
! ASSIGNMENT STATEMENT...
	mov	449,r13		! source line 449
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	449,r13		! source line 449
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	450,r13		! source line 450
	mov	"\0\0AS",r10
	mov	450,r13		! source line 450
	mov	"\0\0SE",r10
!   _temp_1670 = &waitingThreads
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
	mov	451,r13		! source line 451
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_1672		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1672
!	jmp	_Label_1671
_Label_1671:
! THEN...
	mov	452,r13		! source line 452
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	452,r13		! source line 452
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1673 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1673 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0SE",r10
!   _temp_1674 = &_P_Kernel_readyList
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
_Label_1672:
! ASSIGNMENT STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	455,r13		! source line 455
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	455,r13		! source line 455
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
	.word	_Label_1675
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1676
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1677
	.word	12
	.word	4
	.word	_Label_1678
	.word	-16
	.word	4
	.word	_Label_1679
	.word	-20
	.word	4
	.word	_Label_1680
	.word	-24
	.word	4
	.word	_Label_1681
	.word	-28
	.word	4
	.word	_Label_1682
	.word	-9
	.word	1
	.word	_Label_1683
	.word	-32
	.word	4
	.word	_Label_1684
	.word	-36
	.word	4
	.word	0
_Label_1675:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1676:
	.ascii	"Pself\0"
	.align
_Label_1677:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1678:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1679:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1680:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1681:
	.byte	'?'
	.ascii	"_temp_1669\0"
	.align
_Label_1682:
	.byte	'C'
	.ascii	"_temp_1668\0"
	.align
_Label_1683:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1684:
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
_Label_4026:
	push	r0
	sub	r1,1,r1
	bne	_Label_4026
	mov	460,r13		! source line 460
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	464,r13		! source line 464
	mov	"\0\0IF",r10
	mov	464,r13		! source line 464
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
!   Retrieve Result: targetName=_temp_1687  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1687 then goto _Label_1686 else goto _Label_1685
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1685
	jmp	_Label_1686
_Label_1685:
! THEN...
	mov	465,r13		! source line 465
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1688 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1688  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	465,r13		! source line 465
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1686:
! ASSIGNMENT STATEMENT...
	mov	467,r13		! source line 467
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	467,r13		! source line 467
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	468,r13		! source line 468
	mov	"\0\0WH",r10
_Label_1689:
!	jmp	_Label_1690
_Label_1690:
	mov	468,r13		! source line 468
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	469,r13		! source line 469
	mov	"\0\0AS",r10
	mov	469,r13		! source line 469
	mov	"\0\0SE",r10
!   _temp_1692 = &waitingThreads
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
	mov	470,r13		! source line 470
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_1693
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1693
	jmp	_Label_1694
_Label_1693:
! THEN...
	mov	471,r13		! source line 471
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	471,r13		! source line 471
	mov	"\0\0BR",r10
	jmp	_Label_1691
! END IF...
_Label_1694:
! ASSIGNMENT STATEMENT...
	mov	473,r13		! source line 473
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1695 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1695 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	474,r13		! source line 474
	mov	"\0\0SE",r10
!   _temp_1696 = &_P_Kernel_readyList
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
	jmp	_Label_1689
_Label_1691:
! ASSIGNMENT STATEMENT...
	mov	476,r13		! source line 476
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	476,r13		! source line 476
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	476,r13		! source line 476
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
	.word	_Label_1697
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1698
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1699
	.word	12
	.word	4
	.word	_Label_1700
	.word	-16
	.word	4
	.word	_Label_1701
	.word	-20
	.word	4
	.word	_Label_1702
	.word	-24
	.word	4
	.word	_Label_1703
	.word	-28
	.word	4
	.word	_Label_1704
	.word	-9
	.word	1
	.word	_Label_1705
	.word	-32
	.word	4
	.word	_Label_1706
	.word	-36
	.word	4
	.word	0
_Label_1697:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1698:
	.ascii	"Pself\0"
	.align
_Label_1699:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1703:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1704:
	.byte	'C'
	.ascii	"_temp_1687\0"
	.align
_Label_1705:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1706:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1707
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
_Label_1707:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1708
	.word	_sourceFileName
	.word	165		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1708:
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
_Label_4027:
	push	r0
	sub	r1,1,r1
	bne	_Label_4027
	mov	487,r13		! source line 487
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	492,r13		! source line 492
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	493,r13		! source line 493
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	495,r13		! source line 495
	mov	"\0\0AS",r10
!   _temp_1709 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1709) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1709 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	496,r13		! source line 496
	mov	"\0\0AS",r10
!   _temp_1710 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1710 [0 ] into _temp_1711
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
!   Data Move: *_temp_1711 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	497,r13		! source line 497
	mov	"\0\0AS",r10
!   _temp_1712 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1712 [999 ] into _temp_1713
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
!   Data Move: *_temp_1713 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	498,r13		! source line 498
	mov	"\0\0AS",r10
!   _temp_1714 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1714 [999 ] into _temp_1715
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
!   stackTop = _temp_1715		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	499,r13		! source line 499
	mov	"\0\0AS",r10
!   _temp_1716 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1718 = &_temp_1717
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1718 = _temp_1718 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1720:
!   Data Move: *_temp_1718 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1718 = _temp_1718 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1719 = _temp_1719 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1719) then goto _Label_1720
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1720
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1721 = &_temp_1717
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_4028
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4028:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1716 = *_temp_1721  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_4029:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4029
! ASSIGNMENT STATEMENT...
	mov	500,r13		! source line 500
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	501,r13		! source line 501
	mov	"\0\0AS",r10
!   _temp_1722 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1724 = &_temp_1723
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1724 = _temp_1724 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1726:
!   Data Move: *_temp_1724 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1724 = _temp_1724 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1725 = _temp_1725 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1725) then goto _Label_1726
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1726
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1727 = &_temp_1723
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_4030
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4030:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1722 = *_temp_1727  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_4031:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4031
! RETURN STATEMENT...
	mov	501,r13		! source line 501
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
	.word	_Label_1728
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1729
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1730
	.word	12
	.word	4
	.word	_Label_1731
	.word	-12
	.word	4
	.word	_Label_1732
	.word	-16
	.word	4
	.word	_Label_1733
	.word	-20
	.word	4
	.word	_Label_1734
	.word	-84
	.word	64
	.word	_Label_1735
	.word	-88
	.word	4
	.word	_Label_1736
	.word	-92
	.word	4
	.word	_Label_1737
	.word	-96
	.word	4
	.word	_Label_1738
	.word	-100
	.word	4
	.word	_Label_1739
	.word	-156
	.word	56
	.word	_Label_1740
	.word	-160
	.word	4
	.word	_Label_1741
	.word	-164
	.word	4
	.word	_Label_1742
	.word	-168
	.word	4
	.word	_Label_1743
	.word	-172
	.word	4
	.word	_Label_1744
	.word	-176
	.word	4
	.word	_Label_1745
	.word	-180
	.word	4
	.word	_Label_1746
	.word	-184
	.word	4
	.word	_Label_1747
	.word	-188
	.word	4
	.word	0
_Label_1728:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1729:
	.ascii	"Pself\0"
	.align
_Label_1730:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1710\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1709\0"
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
_Label_4032:
	push	r0
	sub	r1,1,r1
	bne	_Label_4032
	mov	506,r13		! source line 506
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	517,r13		! source line 517
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	517,r13		! source line 517
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	520,r13		! source line 520
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	521,r13		! source line 521
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
	mov	522,r13		! source line 522
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1748 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1748  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	523,r13		! source line 523
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	524,r13		! source line 524
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1750 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1749  sizeInBytes=4
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
	mov	525,r13		! source line 525
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	525,r13		! source line 525
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	525,r13		! source line 525
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
	.word	_Label_1751
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1752
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1753
	.word	12
	.word	4
	.word	_Label_1754
	.word	16
	.word	4
	.word	_Label_1755
	.word	-12
	.word	4
	.word	_Label_1756
	.word	-16
	.word	4
	.word	_Label_1757
	.word	-20
	.word	4
	.word	_Label_1758
	.word	-24
	.word	4
	.word	_Label_1759
	.word	-28
	.word	4
	.word	0
_Label_1751:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1752:
	.ascii	"Pself\0"
	.align
_Label_1753:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1754:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1750\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1748\0"
	.align
_Label_1758:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1759:
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
_Label_4033:
	push	r0
	sub	r1,1,r1
	bne	_Label_4033
	mov	530,r13		! source line 530
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	546,r13		! source line 546
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1762 == _P_Kernel_currentThread then goto _Label_1761		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1761
!	jmp	_Label_1760
_Label_1760:
! THEN...
	mov	547,r13		! source line 547
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1763 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1763  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	547,r13		! source line 547
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1761:
! ASSIGNMENT STATEMENT...
	mov	549,r13		! source line 549
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	549,r13		! source line 549
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	553,r13		! source line 553
	mov	"\0\0AS",r10
	mov	553,r13		! source line 553
	mov	"\0\0SE",r10
!   _temp_1764 = &_P_Kernel_readyList
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
	mov	554,r13		! source line 554
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_1766		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1766
!	jmp	_Label_1765
_Label_1765:
! THEN...
	mov	558,r13		! source line 558
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	558,r13		! source line 558
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1768		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1768
!	jmp	_Label_1767
_Label_1767:
! THEN...
	mov	559,r13		! source line 559
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1769 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1769  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	559,r13		! source line 559
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1768:
! ASSIGNMENT STATEMENT...
	mov	561,r13		! source line 561
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	562,r13		! source line 562
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1771 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1770  sizeInBytes=4
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
	mov	563,r13		! source line 563
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_1766:
! ASSIGNMENT STATEMENT...
	mov	565,r13		! source line 565
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	565,r13		! source line 565
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	565,r13		! source line 565
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
	.word	_Label_1772
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1773
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1774
	.word	-12
	.word	4
	.word	_Label_1775
	.word	-16
	.word	4
	.word	_Label_1776
	.word	-20
	.word	4
	.word	_Label_1777
	.word	-24
	.word	4
	.word	_Label_1778
	.word	-28
	.word	4
	.word	_Label_1779
	.word	-32
	.word	4
	.word	_Label_1780
	.word	-36
	.word	4
	.word	_Label_1781
	.word	-40
	.word	4
	.word	_Label_1782
	.word	-44
	.word	4
	.word	0
_Label_1772:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1773:
	.ascii	"Pself\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1771\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1770\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1764\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1763\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1762\0"
	.align
_Label_1780:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1781:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1782:
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
_Label_4034:
	push	r0
	sub	r1,1,r1
	bne	_Label_4034
	mov	570,r13		! source line 570
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	582,r13		! source line 582
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1784		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1784
!	jmp	_Label_1783
_Label_1783:
! THEN...
	mov	583,r13		! source line 583
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1785 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1785  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	583,r13		! source line 583
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1784:
! IF STATEMENT...
	mov	586,r13		! source line 586
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1788 == _P_Kernel_currentThread then goto _Label_1787		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1787
!	jmp	_Label_1786
_Label_1786:
! THEN...
	mov	587,r13		! source line 587
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1789 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1789  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	587,r13		! source line 587
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1787:
! ASSIGNMENT STATEMENT...
	mov	592,r13		! source line 592
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	593,r13		! source line 593
	mov	"\0\0AS",r10
	mov	593,r13		! source line 593
	mov	"\0\0SE",r10
!   _temp_1790 = &_P_Kernel_readyList
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
	mov	594,r13		! source line 594
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_1791
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1791
	jmp	_Label_1792
_Label_1791:
! THEN...
	mov	595,r13		! source line 595
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1793 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1793  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	595,r13		! source line 595
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1792:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	597,r13		! source line 597
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
	.word	_Label_1794
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1795
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1796
	.word	-12
	.word	4
	.word	_Label_1797
	.word	-16
	.word	4
	.word	_Label_1798
	.word	-20
	.word	4
	.word	_Label_1799
	.word	-24
	.word	4
	.word	_Label_1800
	.word	-28
	.word	4
	.word	_Label_1801
	.word	-32
	.word	4
	.word	0
_Label_1794:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1795:
	.ascii	"Pself\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1793\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1790\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1789\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1788\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1785\0"
	.align
_Label_1801:
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
_Label_4035:
	push	r0
	sub	r1,1,r1
	bne	_Label_4035
	mov	602,r13		! source line 602
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0IF",r10
!   _temp_1805 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1805 [0 ] into _temp_1806
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
!   Data Move: _temp_1804 = *_temp_1806  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1804 == 606348324 then goto _Label_1803		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1803
!	jmp	_Label_1802
_Label_1802:
! THEN...
	mov	609,r13		! source line 609
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1807 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1807  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	609,r13		! source line 609
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_1808
_Label_1803:
! ELSE...
	mov	610,r13		! source line 610
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0IF",r10
!   _temp_1812 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1812 [999 ] into _temp_1813
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
!   Data Move: _temp_1811 = *_temp_1813  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1811 == 606348324 then goto _Label_1810		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1810
!	jmp	_Label_1809
_Label_1809:
! THEN...
	mov	611,r13		! source line 611
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1814 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1814  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	611,r13		! source line 611
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1810:
! END IF...
_Label_1808:
! RETURN STATEMENT...
	mov	608,r13		! source line 608
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
	.word	_Label_1815
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1816
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1817
	.word	-12
	.word	4
	.word	_Label_1818
	.word	-16
	.word	4
	.word	_Label_1819
	.word	-20
	.word	4
	.word	_Label_1820
	.word	-24
	.word	4
	.word	_Label_1821
	.word	-28
	.word	4
	.word	_Label_1822
	.word	-32
	.word	4
	.word	_Label_1823
	.word	-36
	.word	4
	.word	_Label_1824
	.word	-40
	.word	4
	.word	0
_Label_1815:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1816:
	.ascii	"Pself\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1818:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
_Label_1819:
	.byte	'?'
	.ascii	"_temp_1812\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1811\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1807\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1806\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
_Label_1824:
	.byte	'?'
	.ascii	"_temp_1804\0"
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
_Label_4036:
	push	r0
	sub	r1,1,r1
	bne	_Label_4036
	mov	617,r13		! source line 617
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	623,r13		! source line 623
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	623,r13		! source line 623
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_1825 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1825  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	624,r13		! source line 624
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	625,r13		! source line 625
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1826 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1826  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1827  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1828 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1828  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1829 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1829  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	630,r13		! source line 630
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1834 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1835 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_1834  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1830:
!   Perform the FOR-LOOP termination test
!   if j > _temp_1835 then goto _Label_1833		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1833
_Label_1831:
	mov	630,r13		! source line 630
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1836 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1836  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1837 = j + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1837  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1838 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1838  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1840 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1840 [j ] into _temp_1841
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
!   Data Move: _temp_1839 = *_temp_1841  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1839  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	634,r13		! source line 634
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1842 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1842  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1844 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1844 [j ] into _temp_1845
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
!   Data Move: _temp_1843 = *_temp_1845  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1843  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	636,r13		! source line 636
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1846 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1846  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	637,r13		! source line 637
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1832:
!   j = j + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1830
! END FOR
_Label_1833:
! CALL STATEMENT...
!   _temp_1847 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-116]
!   _temp_1848 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1847  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1848  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	639,r13		! source line 639
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1849 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-108]
!   _temp_1851 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1851 [0 ] into _temp_1852
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
!   _temp_1850 = _temp_1852		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1849  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1850  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	640,r13		! source line 640
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	641,r13		! source line 641
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_1855
	cmp	r1,2
	be	_Label_1856
	cmp	r1,3
	be	_Label_1857
	cmp	r1,4
	be	_Label_1858
	cmp	r1,5
	be	_Label_1859
	jmp	_Label_1853
! CASE 1...
_Label_1855:
! CALL STATEMENT...
!   _temp_1860 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1860  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	643,r13		! source line 643
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	644,r13		! source line 644
	mov	"\0\0BR",r10
	jmp	_Label_1854
! CASE 2...
_Label_1856:
! CALL STATEMENT...
!   _temp_1861 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1861  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	646,r13		! source line 646
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	647,r13		! source line 647
	mov	"\0\0BR",r10
	jmp	_Label_1854
! CASE 3...
_Label_1857:
! CALL STATEMENT...
!   _temp_1862 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1862  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	649,r13		! source line 649
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	650,r13		! source line 650
	mov	"\0\0BR",r10
	jmp	_Label_1854
! CASE 4...
_Label_1858:
! CALL STATEMENT...
!   _temp_1863 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1863  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	652,r13		! source line 652
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	653,r13		! source line 653
	mov	"\0\0BR",r10
	jmp	_Label_1854
! CASE 5...
_Label_1859:
! CALL STATEMENT...
!   _temp_1864 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1864  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	656,r13		! source line 656
	mov	"\0\0BR",r10
	jmp	_Label_1854
! DEFAULT CASE...
_Label_1853:
! CALL STATEMENT...
!   _temp_1865 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1865  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	658,r13		! source line 658
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1854:
! CALL STATEMENT...
!   _temp_1866 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1866  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	660,r13		! source line 660
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	662,r13		! source line 662
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1867 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1867  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	663,r13		! source line 663
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	664,r13		! source line 664
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1872 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1873 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_1872  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1868:
!   Perform the FOR-LOOP termination test
!   if j > _temp_1873 then goto _Label_1871		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1871
_Label_1869:
	mov	664,r13		! source line 664
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1874 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1874  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	665,r13		! source line 665
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1875 = j + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1875  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	666,r13		! source line 666
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1876 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1876  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1878 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1878 [j ] into _temp_1879
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
!   Data Move: _temp_1877 = *_temp_1879  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1877  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	668,r13		! source line 668
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1880 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1880  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1882 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1882 [j ] into _temp_1883
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
!   Data Move: _temp_1881 = *_temp_1883  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1881  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1884 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1884  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	671,r13		! source line 671
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1870:
!   j = j + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1868
! END FOR
_Label_1871:
! ASSIGNMENT STATEMENT...
	mov	673,r13		! source line 673
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	673,r13		! source line 673
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	673,r13		! source line 673
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
	.word	_Label_1885
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1886
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1887
	.word	-12
	.word	4
	.word	_Label_1888
	.word	-16
	.word	4
	.word	_Label_1889
	.word	-20
	.word	4
	.word	_Label_1890
	.word	-24
	.word	4
	.word	_Label_1891
	.word	-28
	.word	4
	.word	_Label_1892
	.word	-32
	.word	4
	.word	_Label_1893
	.word	-36
	.word	4
	.word	_Label_1894
	.word	-40
	.word	4
	.word	_Label_1895
	.word	-44
	.word	4
	.word	_Label_1896
	.word	-48
	.word	4
	.word	_Label_1897
	.word	-52
	.word	4
	.word	_Label_1898
	.word	-56
	.word	4
	.word	_Label_1899
	.word	-60
	.word	4
	.word	_Label_1900
	.word	-64
	.word	4
	.word	_Label_1901
	.word	-68
	.word	4
	.word	_Label_1902
	.word	-72
	.word	4
	.word	_Label_1903
	.word	-76
	.word	4
	.word	_Label_1904
	.word	-80
	.word	4
	.word	_Label_1905
	.word	-84
	.word	4
	.word	_Label_1906
	.word	-88
	.word	4
	.word	_Label_1907
	.word	-92
	.word	4
	.word	_Label_1908
	.word	-96
	.word	4
	.word	_Label_1909
	.word	-100
	.word	4
	.word	_Label_1910
	.word	-104
	.word	4
	.word	_Label_1911
	.word	-108
	.word	4
	.word	_Label_1912
	.word	-112
	.word	4
	.word	_Label_1913
	.word	-116
	.word	4
	.word	_Label_1914
	.word	-120
	.word	4
	.word	_Label_1915
	.word	-124
	.word	4
	.word	_Label_1916
	.word	-128
	.word	4
	.word	_Label_1917
	.word	-132
	.word	4
	.word	_Label_1918
	.word	-136
	.word	4
	.word	_Label_1919
	.word	-140
	.word	4
	.word	_Label_1920
	.word	-144
	.word	4
	.word	_Label_1921
	.word	-148
	.word	4
	.word	_Label_1922
	.word	-152
	.word	4
	.word	_Label_1923
	.word	-156
	.word	4
	.word	_Label_1924
	.word	-160
	.word	4
	.word	_Label_1925
	.word	-164
	.word	4
	.word	_Label_1926
	.word	-168
	.word	4
	.word	_Label_1927
	.word	-172
	.word	4
	.word	_Label_1928
	.word	-176
	.word	4
	.word	_Label_1929
	.word	-180
	.word	4
	.word	_Label_1930
	.word	-184
	.word	4
	.word	_Label_1931
	.word	-188
	.word	4
	.word	_Label_1932
	.word	-192
	.word	4
	.word	_Label_1933
	.word	-196
	.word	4
	.word	0
_Label_1885:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1886:
	.ascii	"Pself\0"
	.align
_Label_1887:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1888:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1889:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1890:
	.byte	'?'
	.ascii	"_temp_1881\0"
	.align
_Label_1891:
	.byte	'?'
	.ascii	"_temp_1880\0"
	.align
_Label_1892:
	.byte	'?'
	.ascii	"_temp_1879\0"
	.align
_Label_1893:
	.byte	'?'
	.ascii	"_temp_1878\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1877\0"
	.align
_Label_1895:
	.byte	'?'
	.ascii	"_temp_1876\0"
	.align
_Label_1896:
	.byte	'?'
	.ascii	"_temp_1875\0"
	.align
_Label_1897:
	.byte	'?'
	.ascii	"_temp_1874\0"
	.align
_Label_1898:
	.byte	'?'
	.ascii	"_temp_1873\0"
	.align
_Label_1899:
	.byte	'?'
	.ascii	"_temp_1872\0"
	.align
_Label_1900:
	.byte	'?'
	.ascii	"_temp_1867\0"
	.align
_Label_1901:
	.byte	'?'
	.ascii	"_temp_1866\0"
	.align
_Label_1902:
	.byte	'?'
	.ascii	"_temp_1865\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
_Label_1905:
	.byte	'?'
	.ascii	"_temp_1862\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1861\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1860\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1852\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1851\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1850\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1849\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1848\0"
	.align
_Label_1913:
	.byte	'?'
	.ascii	"_temp_1847\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1846\0"
	.align
_Label_1915:
	.byte	'?'
	.ascii	"_temp_1845\0"
	.align
_Label_1916:
	.byte	'?'
	.ascii	"_temp_1844\0"
	.align
_Label_1917:
	.byte	'?'
	.ascii	"_temp_1843\0"
	.align
_Label_1918:
	.byte	'?'
	.ascii	"_temp_1842\0"
	.align
_Label_1919:
	.byte	'?'
	.ascii	"_temp_1841\0"
	.align
_Label_1920:
	.byte	'?'
	.ascii	"_temp_1840\0"
	.align
_Label_1921:
	.byte	'?'
	.ascii	"_temp_1839\0"
	.align
_Label_1922:
	.byte	'?'
	.ascii	"_temp_1838\0"
	.align
_Label_1923:
	.byte	'?'
	.ascii	"_temp_1837\0"
	.align
_Label_1924:
	.byte	'?'
	.ascii	"_temp_1836\0"
	.align
_Label_1925:
	.byte	'?'
	.ascii	"_temp_1835\0"
	.align
_Label_1926:
	.byte	'?'
	.ascii	"_temp_1834\0"
	.align
_Label_1927:
	.byte	'?'
	.ascii	"_temp_1829\0"
	.align
_Label_1928:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1929:
	.byte	'?'
	.ascii	"_temp_1827\0"
	.align
_Label_1930:
	.byte	'?'
	.ascii	"_temp_1826\0"
	.align
_Label_1931:
	.byte	'?'
	.ascii	"_temp_1825\0"
	.align
_Label_1932:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_1933:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1934
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1934:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1935
	.word	_sourceFileName
	.word	192		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1935:
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
_Label_4037:
	push	r0
	sub	r1,1,r1
	bne	_Label_4037
	mov	729,r13		! source line 729
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1936 = _StringConst_81
	set	_StringConst_81,r1
	set	-45976,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1936  sizeInBytes=4
	set	-45976,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	737,r13		! source line 737
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	739,r13		! source line 739
	mov	"\0\0AS",r10
!   _temp_1937 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45972,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1939 = &_temp_1938
	set	-45968,r1
	add	r14,r1,r1
	store	r1,[r14+-4324]
!   _temp_1939 = _temp_1939 + 4
	load	[r14+-4324],r1
	add	r1,4,r1
	store	r1,[r14+-4324]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1941 = zeros  (sizeInBytes=4164)
	add	r14,-4316,r4
	mov	1041,r3
_Label_4038:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4038
!   _temp_1941 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4316]
	mov	10,r1
	store	r1,[r14+-4320]
_Label_1943:
!   Data Move: *_temp_1939 = _temp_1941  (sizeInBytes=4164)
	add	r14,-4316,r5
	load	[r14+-4324],r4
	mov	1041,r3
_Label_4039:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4039
!   _temp_1939 = _temp_1939 + 4164
	load	[r14+-4324],r1
	add	r1,4164,r1
	store	r1,[r14+-4324]
!   _temp_1940 = _temp_1940 + -1
	load	[r14+-4320],r1
	add	r1,-1,r1
	store	r1,[r14+-4320]
!   if intNotZero (_temp_1940) then goto _Label_1943
	load	[r14+-4320],r1
	cmp	r1,r0
	bne	_Label_1943
!   Initialize the array size...
	mov	10,r1
	set	-45968,r2
	store	r1,[r14+r2]
!   _temp_1944 = &_temp_1938
	set	-45968,r1
	add	r14,r1,r1
	store	r1,[r14+-148]
!   make sure array has size 10
	set	-45972,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4040
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4040:
!   make sure array has size 10
	load	[r14+-148],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1937 = *_temp_1944  (sizeInBytes=41644)
	load	[r14+-148],r5
	set	-45972,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_4041:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4041
! ASSIGNMENT STATEMENT...
	mov	740,r13		! source line 740
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
	mov	741,r13		! source line 741
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1950 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-140]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1951 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-136]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_1950  (sizeInBytes=4)
	load	[r14+-140],r1
	set	-45980,r2
	store	r1,[r14+r2]
_Label_1946:
!   Perform the FOR-LOOP termination test
!   if j > _temp_1951 then goto _Label_1949		
	set	-45980,r1
	load	[r14+r1],r1
	load	[r14+-136],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1949
_Label_1947:
	mov	741,r13		! source line 741
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	742,r13		! source line 742
	mov	"\0\0AS",r10
!   _temp_1952 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-132]
!   Move address of _temp_1952 [j ] into _temp_1953
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
!   _temp_1954 = _temp_1953 + 76
	load	[r14+-128],r1
	add	r1,76,r1
	store	r1,[r14+-124]
!   Data Move: *_temp_1954 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-124],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	743,r13		! source line 743
	mov	"\0\0AS",r10
!   _temp_1955 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-120]
!   Move address of _temp_1955 [j ] into _temp_1956
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
!   _temp_1957 = _temp_1956 + 12
	load	[r14+-116],r1
	add	r1,12,r1
	store	r1,[r14+-112]
!   NEW ARRAY Constructor...
!   _temp_1959 = &_temp_1958
	add	r14,-108,r1
	store	r1,[r14+-52]
!   _temp_1959 = _temp_1959 + 4
	load	[r14+-52],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Next value...
	mov	13,r1
	store	r1,[r14+-48]
_Label_1961:
!   Data Move: *_temp_1959 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-52],r2
	store	r1,[r2]
!   _temp_1959 = _temp_1959 + 4
	load	[r14+-52],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_1960 = _temp_1960 + -1
	load	[r14+-48],r1
	add	r1,-1,r1
	store	r1,[r14+-48]
!   if intNotZero (_temp_1960) then goto _Label_1961
	load	[r14+-48],r1
	cmp	r1,r0
	bne	_Label_1961
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-108]
!   _temp_1962 = &_temp_1958
	add	r14,-108,r1
	store	r1,[r14+-44]
!   make sure array has size 13
	load	[r14+-112],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_4042
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4042:
!   make sure array has size 13
	load	[r14+-44],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1957 = *_temp_1962  (sizeInBytes=56)
	load	[r14+-44],r5
	load	[r14+-112],r4
	mov	14,r3
_Label_4043:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4043
! SEND STATEMENT...
	mov	744,r13		! source line 744
	mov	"\0\0SE",r10
!   _temp_1964 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1964 [j ] into _temp_1965
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
!   _temp_1963 = _temp_1965		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   _temp_1966 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1963  sizeInBytes=4
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
_Label_1948:
!   j = j + 1
	set	-45980,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45980,r2
	store	r1,[r14+r2]
	jmp	_Label_1946
! END FOR
_Label_1949:
! ASSIGNMENT STATEMENT...
	mov	746,r13		! source line 746
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
	mov	747,r13		! source line 747
	mov	"\0\0SE",r10
!   _temp_1968 = &threadManagerLock
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
	mov	748,r13		! source line 748
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
	mov	749,r13		! source line 749
	mov	"\0\0SE",r10
!   _temp_1970 = &aThreadBecameFree
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
	mov	749,r13		! source line 749
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
	.word	_Label_1971
	.word	4		! total size of parameters
	.word	45980		! frame size = 45980
	.word	_Label_1972
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1973
	.word	-12
	.word	4
	.word	_Label_1974
	.word	-16
	.word	4
	.word	_Label_1975
	.word	-20
	.word	4
	.word	_Label_1976
	.word	-24
	.word	4
	.word	_Label_1977
	.word	-28
	.word	4
	.word	_Label_1978
	.word	-32
	.word	4
	.word	_Label_1979
	.word	-36
	.word	4
	.word	_Label_1980
	.word	-40
	.word	4
	.word	_Label_1981
	.word	-44
	.word	4
	.word	_Label_1982
	.word	-48
	.word	4
	.word	_Label_1983
	.word	-52
	.word	4
	.word	_Label_1984
	.word	-108
	.word	56
	.word	_Label_1985
	.word	-112
	.word	4
	.word	_Label_1986
	.word	-116
	.word	4
	.word	_Label_1987
	.word	-120
	.word	4
	.word	_Label_1988
	.word	-124
	.word	4
	.word	_Label_1989
	.word	-128
	.word	4
	.word	_Label_1990
	.word	-132
	.word	4
	.word	_Label_1991
	.word	-136
	.word	4
	.word	_Label_1992
	.word	-140
	.word	4
	.word	_Label_1993
	.word	-144
	.word	4
	.word	_Label_1994
	.word	-148
	.word	4
	.word	_Label_1995
	.word	-152
	.word	4
	.word	_Label_1996
	.word	-4316
	.word	4164
	.word	_Label_1997
	.word	-4320
	.word	4
	.word	_Label_1998
	.word	-4324
	.word	4
	.word	_Label_1999
	.word	-45968
	.word	41644
	.word	_Label_2000
	.word	-45972
	.word	4
	.word	_Label_2001
	.word	-45976
	.word	4
	.word	_Label_2002
	.word	-45980
	.word	4
	.word	0
_Label_1971:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1972:
	.ascii	"Pself\0"
	.align
_Label_1973:
	.byte	'?'
	.ascii	"_temp_1970\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1969\0"
	.align
_Label_1975:
	.byte	'?'
	.ascii	"_temp_1968\0"
	.align
_Label_1976:
	.byte	'?'
	.ascii	"_temp_1967\0"
	.align
_Label_1977:
	.byte	'?'
	.ascii	"_temp_1966\0"
	.align
_Label_1978:
	.byte	'?'
	.ascii	"_temp_1965\0"
	.align
_Label_1979:
	.byte	'?'
	.ascii	"_temp_1964\0"
	.align
_Label_1980:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_1981:
	.byte	'?'
	.ascii	"_temp_1962\0"
	.align
_Label_1982:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
_Label_1983:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_1984:
	.byte	'?'
	.ascii	"_temp_1958\0"
	.align
_Label_1985:
	.byte	'?'
	.ascii	"_temp_1957\0"
	.align
_Label_1986:
	.byte	'?'
	.ascii	"_temp_1956\0"
	.align
_Label_1987:
	.byte	'?'
	.ascii	"_temp_1955\0"
	.align
_Label_1988:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_1989:
	.byte	'?'
	.ascii	"_temp_1953\0"
	.align
_Label_1990:
	.byte	'?'
	.ascii	"_temp_1952\0"
	.align
_Label_1991:
	.byte	'?'
	.ascii	"_temp_1951\0"
	.align
_Label_1992:
	.byte	'?'
	.ascii	"_temp_1950\0"
	.align
_Label_1993:
	.byte	'?'
	.ascii	"_temp_1945\0"
	.align
_Label_1994:
	.byte	'?'
	.ascii	"_temp_1944\0"
	.align
_Label_1995:
	.byte	'?'
	.ascii	"_temp_1942\0"
	.align
_Label_1996:
	.byte	'?'
	.ascii	"_temp_1941\0"
	.align
_Label_1997:
	.byte	'?'
	.ascii	"_temp_1940\0"
	.align
_Label_1998:
	.byte	'?'
	.ascii	"_temp_1939\0"
	.align
_Label_1999:
	.byte	'?'
	.ascii	"_temp_1938\0"
	.align
_Label_2000:
	.byte	'?'
	.ascii	"_temp_1937\0"
	.align
_Label_2001:
	.byte	'?'
	.ascii	"_temp_1936\0"
	.align
_Label_2002:
	.byte	'I'
	.ascii	"j\0"
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
_Label_4044:
	push	r0
	sub	r1,1,r1
	bne	_Label_4044
	mov	754,r13		! source line 754
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	761,r13		! source line 761
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	761,r13		! source line 761
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_2003 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2003  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	762,r13		! source line 762
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	763,r13		! source line 763
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2008 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2009 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_2008  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_2004:
!   Perform the FOR-LOOP termination test
!   if j > _temp_2009 then goto _Label_2007		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2007
_Label_2005:
	mov	763,r13		! source line 763
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2010 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2010  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	764,r13		! source line 764
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=j  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	765,r13		! source line 765
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2011 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2011  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	766,r13		! source line 766
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2013 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2013 [j ] into _temp_2014
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
!   _temp_2012 = _temp_2014		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2012  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	767,r13		! source line 767
	mov	"\0\0CA",r10
	call	_function_190_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_2006:
!   j = j + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2004
! END FOR
_Label_2007:
! CALL STATEMENT...
!   _temp_2015 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2015  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	769,r13		! source line 769
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	770,r13		! source line 770
	mov	"\0\0SE",r10
!   _temp_2016 = _function_189_PrintObjectAddr
	set	_function_189_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2017 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2016  sizeInBytes=4
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
	mov	771,r13		! source line 771
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	772,r13		! source line 772
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	772,r13		! source line 772
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	772,r13		! source line 772
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
	.word	_Label_2018
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2019
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2020
	.word	-12
	.word	4
	.word	_Label_2021
	.word	-16
	.word	4
	.word	_Label_2022
	.word	-20
	.word	4
	.word	_Label_2023
	.word	-24
	.word	4
	.word	_Label_2024
	.word	-28
	.word	4
	.word	_Label_2025
	.word	-32
	.word	4
	.word	_Label_2026
	.word	-36
	.word	4
	.word	_Label_2027
	.word	-40
	.word	4
	.word	_Label_2028
	.word	-44
	.word	4
	.word	_Label_2029
	.word	-48
	.word	4
	.word	_Label_2030
	.word	-52
	.word	4
	.word	_Label_2031
	.word	-56
	.word	4
	.word	_Label_2032
	.word	-60
	.word	4
	.word	0
_Label_2018:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2019:
	.ascii	"Pself\0"
	.align
_Label_2020:
	.byte	'?'
	.ascii	"_temp_2017\0"
	.align
_Label_2021:
	.byte	'?'
	.ascii	"_temp_2016\0"
	.align
_Label_2022:
	.byte	'?'
	.ascii	"_temp_2015\0"
	.align
_Label_2023:
	.byte	'?'
	.ascii	"_temp_2014\0"
	.align
_Label_2024:
	.byte	'?'
	.ascii	"_temp_2013\0"
	.align
_Label_2025:
	.byte	'?'
	.ascii	"_temp_2012\0"
	.align
_Label_2026:
	.byte	'?'
	.ascii	"_temp_2011\0"
	.align
_Label_2027:
	.byte	'?'
	.ascii	"_temp_2010\0"
	.align
_Label_2028:
	.byte	'?'
	.ascii	"_temp_2009\0"
	.align
_Label_2029:
	.byte	'?'
	.ascii	"_temp_2008\0"
	.align
_Label_2030:
	.byte	'?'
	.ascii	"_temp_2003\0"
	.align
_Label_2031:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_2032:
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
_Label_4045:
	push	r0
	sub	r1,1,r1
	bne	_Label_4045
	mov	777,r13		! source line 777
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	784,r13		! source line 784
	mov	"\0\0SE",r10
!   _temp_2033 = &threadManagerLock
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
	mov	785,r13		! source line 785
	mov	"\0\0WH",r10
_Label_2034:
	mov	785,r13		! source line 785
	mov	"\0\0SE",r10
!   _temp_2037 = &freeList
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
!   if result==true then goto _Label_2035 else goto _Label_2036
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2036
	jmp	_Label_2035
_Label_2035:
	mov	785,r13		! source line 785
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	786,r13		! source line 786
	mov	"\0\0SE",r10
!   _temp_2038 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_2039 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2038  sizeInBytes=4
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
	jmp	_Label_2034
_Label_2036:
! ASSIGNMENT STATEMENT...
	mov	788,r13		! source line 788
	mov	"\0\0AS",r10
	mov	788,r13		! source line 788
	mov	"\0\0SE",r10
!   _temp_2040 = &freeList
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
! SEND STATEMENT...
	mov	789,r13		! source line 789
	mov	"\0\0SE",r10
!   _temp_2041 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-16]
!   if intIsZero (item) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2041  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	790,r13		! source line 790
	mov	"\0\0SE",r10
!   _temp_2042 = &threadManagerLock
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
	mov	791,r13		! source line 791
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
	.word	_Label_2043
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2044
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2045
	.word	-12
	.word	4
	.word	_Label_2046
	.word	-16
	.word	4
	.word	_Label_2047
	.word	-20
	.word	4
	.word	_Label_2048
	.word	-24
	.word	4
	.word	_Label_2049
	.word	-28
	.word	4
	.word	_Label_2050
	.word	-32
	.word	4
	.word	_Label_2051
	.word	-36
	.word	4
	.word	_Label_2052
	.word	-40
	.word	4
	.word	0
_Label_2043:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_2044:
	.ascii	"Pself\0"
	.align
_Label_2045:
	.byte	'?'
	.ascii	"_temp_2042\0"
	.align
_Label_2046:
	.byte	'?'
	.ascii	"_temp_2041\0"
	.align
_Label_2047:
	.byte	'?'
	.ascii	"_temp_2040\0"
	.align
_Label_2048:
	.byte	'?'
	.ascii	"_temp_2039\0"
	.align
_Label_2049:
	.byte	'?'
	.ascii	"_temp_2038\0"
	.align
_Label_2050:
	.byte	'?'
	.ascii	"_temp_2037\0"
	.align
_Label_2051:
	.byte	'?'
	.ascii	"_temp_2033\0"
	.align
_Label_2052:
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
_Label_4046:
	push	r0
	sub	r1,1,r1
	bne	_Label_4046
	mov	796,r13		! source line 796
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	797,r13		! source line 797
	mov	"\0\0SE",r10
!   _temp_2053 = &threadManagerLock
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
	mov	798,r13		! source line 798
	mov	"\0\0IF",r10
	mov	798,r13		! source line 798
	mov	"\0\0SE",r10
!   _temp_2056 = &freeList
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
!   if result==true then goto _Label_2054 else goto _Label_2055
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2055
	jmp	_Label_2054
_Label_2054:
! THEN...
	mov	799,r13		! source line 799
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	799,r13		! source line 799
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2057 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2057 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-36],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	800,r13		! source line 800
	mov	"\0\0SE",r10
!   _temp_2058 = &freeList
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
	mov	801,r13		! source line 801
	mov	"\0\0SE",r10
!   _temp_2059 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_2060 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2059  sizeInBytes=4
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
	jmp	_Label_2061
_Label_2055:
! ELSE...
	mov	803,r13		! source line 803
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	803,r13		! source line 803
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2062 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2062 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	804,r13		! source line 804
	mov	"\0\0SE",r10
!   _temp_2063 = &freeList
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
_Label_2061:
! SEND STATEMENT...
	mov	806,r13		! source line 806
	mov	"\0\0SE",r10
!   _temp_2064 = &threadManagerLock
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
	mov	806,r13		! source line 806
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
	.word	_Label_2065
	.word	8		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2066
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2067
	.word	12
	.word	4
	.word	_Label_2068
	.word	-12
	.word	4
	.word	_Label_2069
	.word	-16
	.word	4
	.word	_Label_2070
	.word	-20
	.word	4
	.word	_Label_2071
	.word	-24
	.word	4
	.word	_Label_2072
	.word	-28
	.word	4
	.word	_Label_2073
	.word	-32
	.word	4
	.word	_Label_2074
	.word	-36
	.word	4
	.word	_Label_2075
	.word	-40
	.word	4
	.word	_Label_2076
	.word	-44
	.word	4
	.word	0
_Label_2065:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_2066:
	.ascii	"Pself\0"
	.align
_Label_2067:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_2068:
	.byte	'?'
	.ascii	"_temp_2064\0"
	.align
_Label_2069:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_2062\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2058\0"
	.align
_Label_2074:
	.byte	'?'
	.ascii	"_temp_2057\0"
	.align
_Label_2075:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2076:
	.byte	'?'
	.ascii	"_temp_2053\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_2077
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_2077:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2078
	.word	_sourceFileName
	.word	213		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2078:
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
	mov	18,r1
_Label_4047:
	push	r0
	sub	r1,1,r1
	bne	_Label_4047
	mov	824,r13		! source line 824
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	825,r13		! source line 825
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	826,r13		! source line 826
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	827,r13		! source line 827
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_4048:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4048
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	828,r13		! source line 828
	mov	"\0\0SE",r10
!   _temp_2080 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	831,r13		! source line 831
	mov	"\0\0AS",r10
!   _temp_2081 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_2083 = &_temp_2082
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_2083 = _temp_2083 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_2085:
!   Data Move: *_temp_2083 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2083 = _temp_2083 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2084 = _temp_2084 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2084) then goto _Label_2085
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2085
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_2086 = &_temp_2082
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4049
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4049:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2081 = *_temp_2086  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_4050:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4050
! RETURN STATEMENT...
	mov	831,r13		! source line 831
	mov	"\0\0RE",r10
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_2087
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_2088
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2089
	.word	-12
	.word	4
	.word	_Label_2090
	.word	-16
	.word	4
	.word	_Label_2091
	.word	-20
	.word	4
	.word	_Label_2092
	.word	-64
	.word	44
	.word	_Label_2093
	.word	-68
	.word	4
	.word	_Label_2094
	.word	-72
	.word	4
	.word	_Label_2095
	.word	-76
	.word	4
	.word	0
_Label_2087:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2088:
	.ascii	"Pself\0"
	.align
_Label_2089:
	.byte	'?'
	.ascii	"_temp_2086\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2084\0"
	.align
_Label_2091:
	.byte	'?'
	.ascii	"_temp_2083\0"
	.align
_Label_2092:
	.byte	'?'
	.ascii	"_temp_2082\0"
	.align
_Label_2093:
	.byte	'?'
	.ascii	"_temp_2081\0"
	.align
_Label_2094:
	.byte	'?'
	.ascii	"_temp_2080\0"
	.align
_Label_2095:
	.byte	'?'
	.ascii	"_temp_2079\0"
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
_Label_4051:
	push	r0
	sub	r1,1,r1
	bne	_Label_4051
	mov	838,r13		! source line 838
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	843,r13		! source line 843
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2096) then goto _runtimeErrorNullPointer
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
	mov	844,r13		! source line 844
	mov	"\0\0SE",r10
!   _temp_2097 = &addrSpace
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
!   _temp_2098 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2098  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	845,r13		! source line 845
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	846,r13		! source line 846
	mov	"\0\0CA",r10
	call	_function_190_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	856,r13		! source line 856
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	856,r13		! source line 856
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
	.word	_Label_2099
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2100
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2101
	.word	-12
	.word	4
	.word	_Label_2102
	.word	-16
	.word	4
	.word	_Label_2103
	.word	-20
	.word	4
	.word	0
_Label_2099:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2100:
	.ascii	"Pself\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2098\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2097\0"
	.align
_Label_2103:
	.byte	'?'
	.ascii	"_temp_2096\0"
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
_Label_4052:
	push	r0
	sub	r1,1,r1
	bne	_Label_4052
	mov	861,r13		! source line 861
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2104 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2104  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	865,r13		! source line 865
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2105  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	866,r13		! source line 866
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2106 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2106  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	867,r13		! source line 867
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	868,r13		! source line 868
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2107 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2107  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	869,r13		! source line 869
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	870,r13		! source line 870
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_2109		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2109
!	jmp	_Label_2108
_Label_2108:
! THEN...
	mov	871,r13		! source line 871
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2110 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2110  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	871,r13		! source line 871
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2111
_Label_2109:
! ELSE...
	mov	872,r13		! source line 872
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	872,r13		! source line 872
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_2113		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2113
!	jmp	_Label_2112
_Label_2112:
! THEN...
	mov	873,r13		! source line 873
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2114 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2114  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	873,r13		! source line 873
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2115
_Label_2113:
! ELSE...
	mov	874,r13		! source line 874
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	874,r13		! source line 874
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_2117		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_2117
!	jmp	_Label_2116
_Label_2116:
! THEN...
	mov	875,r13		! source line 875
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2118 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2118  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	875,r13		! source line 875
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2119
_Label_2117:
! ELSE...
	mov	877,r13		! source line 877
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2120 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2120  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	877,r13		! source line 877
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2119:
! END IF...
_Label_2115:
! END IF...
_Label_2111:
! CALL STATEMENT...
!   _temp_2121 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2121  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	879,r13		! source line 879
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	880,r13		! source line 880
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2122 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2122  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	881,r13		! source line 881
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	882,r13		! source line 882
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	883,r13		! source line 883
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	883,r13		! source line 883
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
	.word	_Label_2123
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2124
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2125
	.word	-12
	.word	4
	.word	_Label_2126
	.word	-16
	.word	4
	.word	_Label_2127
	.word	-20
	.word	4
	.word	_Label_2128
	.word	-24
	.word	4
	.word	_Label_2129
	.word	-28
	.word	4
	.word	_Label_2130
	.word	-32
	.word	4
	.word	_Label_2131
	.word	-36
	.word	4
	.word	_Label_2132
	.word	-40
	.word	4
	.word	_Label_2133
	.word	-44
	.word	4
	.word	_Label_2134
	.word	-48
	.word	4
	.word	0
_Label_2123:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2124:
	.ascii	"Pself\0"
	.align
_Label_2125:
	.byte	'?'
	.ascii	"_temp_2122\0"
	.align
_Label_2126:
	.byte	'?'
	.ascii	"_temp_2121\0"
	.align
_Label_2127:
	.byte	'?'
	.ascii	"_temp_2120\0"
	.align
_Label_2128:
	.byte	'?'
	.ascii	"_temp_2118\0"
	.align
_Label_2129:
	.byte	'?'
	.ascii	"_temp_2114\0"
	.align
_Label_2130:
	.byte	'?'
	.ascii	"_temp_2110\0"
	.align
_Label_2131:
	.byte	'?'
	.ascii	"_temp_2107\0"
	.align
_Label_2132:
	.byte	'?'
	.ascii	"_temp_2106\0"
	.align
_Label_2133:
	.byte	'?'
	.ascii	"_temp_2105\0"
	.align
_Label_2134:
	.byte	'?'
	.ascii	"_temp_2104\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_2135
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
_Label_2135:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2136
	.word	_sourceFileName
	.word	233		! line number
	.word	1756		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_2136:
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
	mov	517,r1
_Label_4053:
	push	r0
	sub	r1,1,r1
	bne	_Label_4053
	mov	894,r13		! source line 894
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	901,r13		! source line 901
	mov	"\0\0AS",r10
!   _temp_2137 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-2064]
!   NEW ARRAY Constructor...
!   _temp_2139 = &_temp_2138
	add	r14,-2060,r1
	store	r1,[r14+-376]
!   _temp_2139 = _temp_2139 + 4
	load	[r14+-376],r1
	add	r1,4,r1
	store	r1,[r14+-376]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2141 = zeros  (sizeInBytes=168)
	add	r14,-368,r4
	mov	42,r3
_Label_4054:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4054
!   _temp_2141 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-368]
	mov	10,r1
	store	r1,[r14+-372]
_Label_2143:
!   Data Move: *_temp_2139 = _temp_2141  (sizeInBytes=168)
	add	r14,-368,r5
	load	[r14+-376],r4
	mov	42,r3
_Label_4055:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4055
!   _temp_2139 = _temp_2139 + 168
	load	[r14+-376],r1
	add	r1,168,r1
	store	r1,[r14+-376]
!   _temp_2140 = _temp_2140 + -1
	load	[r14+-372],r1
	add	r1,-1,r1
	store	r1,[r14+-372]
!   if intNotZero (_temp_2140) then goto _Label_2143
	load	[r14+-372],r1
	cmp	r1,r0
	bne	_Label_2143
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-2060]
!   _temp_2144 = &_temp_2138
	add	r14,-2060,r1
	store	r1,[r14+-196]
!   make sure array has size 10
	load	[r14+-2064],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4056
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4056:
!   make sure array has size 10
	load	[r14+-196],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2137 = *_temp_2144  (sizeInBytes=1684)
	load	[r14+-196],r5
	load	[r14+-2064],r4
	mov	421,r3
_Label_4057:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4057
! ASSIGNMENT STATEMENT...
	mov	902,r13		! source line 902
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1688,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1688]
! SEND STATEMENT...
	mov	903,r13		! source line 903
	mov	"\0\0SE",r10
!   _temp_2146 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
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
	mov	904,r13		! source line 904
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1708,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1708]
! SEND STATEMENT...
	mov	905,r13		! source line 905
	mov	"\0\0SE",r10
!   _temp_2148 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
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
	mov	906,r13		! source line 906
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1736,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1736]
! SEND STATEMENT...
	mov	907,r13		! source line 907
	mov	"\0\0SE",r10
!   _temp_2150 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
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
	mov	908,r13		! source line 908
	mov	"\0\0AS",r10
!   nextPid = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+1752]
! ASSIGNMENT STATEMENT...
	mov	909,r13		! source line 909
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1724,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1724]
! FOR STATEMENT...
	mov	910,r13		! source line 910
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2156 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-164]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2157 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-160]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_2156  (sizeInBytes=4)
	load	[r14+-164],r1
	store	r1,[r14+-2068]
_Label_2152:
!   Perform the FOR-LOOP termination test
!   if j > _temp_2157 then goto _Label_2155		
	load	[r14+-2068],r1
	load	[r14+-160],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2155
_Label_2153:
	mov	910,r13		! source line 910
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	911,r13		! source line 911
	mov	"\0\0AS",r10
!   _temp_2158 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-156]
!   Move address of _temp_2158 [j ] into _temp_2159
!     make sure index expr is >= 0
	load	[r14+-2068],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-152]
!   _temp_2160 = _temp_2159 + 20
	load	[r14+-152],r1
	add	r1,20,r1
	store	r1,[r14+-148]
!   Data Move: *_temp_2160 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-148],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	912,r13		! source line 912
	mov	"\0\0AS",r10
!   _temp_2161 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-144]
!   Move address of _temp_2161 [j ] into _temp_2162
!     make sure index expr is >= 0
	load	[r14+-2068],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   _temp_2163 = _temp_2162 + 32
	load	[r14+-140],r1
	add	r1,32,r1
	store	r1,[r14+-136]
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2164 = zeros  (sizeInBytes=92)
	add	r14,-132,r4
	mov	23,r3
_Label_4058:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4058
!   _temp_2164 = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-132]
!   Data Move: *_temp_2163 = _temp_2164  (sizeInBytes=92)
	add	r14,-132,r5
	load	[r14+-136],r4
	mov	23,r3
_Label_4059:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4059
! SEND STATEMENT...
	mov	913,r13		! source line 913
	mov	"\0\0SE",r10
!   _temp_2166 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_2166 [j ] into _temp_2167
!     make sure index expr is >= 0
	load	[r14+-2068],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_2168 = _temp_2167 + 32
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
	mov	914,r13		! source line 914
	mov	"\0\0SE",r10
!   _temp_2170 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_2170 [j ] into _temp_2171
!     make sure index expr is >= 0
	load	[r14+-2068],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_2169 = _temp_2171		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2172 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2169  sizeInBytes=4
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
_Label_2154:
!   j = j + 1
	load	[r14+-2068],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-2068]
	jmp	_Label_2152
! END FOR
_Label_2155:
! RETURN STATEMENT...
	mov	910,r13		! source line 910
	mov	"\0\0RE",r10
	add	r15,2072,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_2173
	.word	4		! total size of parameters
	.word	2068		! frame size = 2068
	.word	_Label_2174
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2175
	.word	-12
	.word	4
	.word	_Label_2176
	.word	-16
	.word	4
	.word	_Label_2177
	.word	-20
	.word	4
	.word	_Label_2178
	.word	-24
	.word	4
	.word	_Label_2179
	.word	-28
	.word	4
	.word	_Label_2180
	.word	-32
	.word	4
	.word	_Label_2181
	.word	-36
	.word	4
	.word	_Label_2182
	.word	-40
	.word	4
	.word	_Label_2183
	.word	-132
	.word	92
	.word	_Label_2184
	.word	-136
	.word	4
	.word	_Label_2185
	.word	-140
	.word	4
	.word	_Label_2186
	.word	-144
	.word	4
	.word	_Label_2187
	.word	-148
	.word	4
	.word	_Label_2188
	.word	-152
	.word	4
	.word	_Label_2189
	.word	-156
	.word	4
	.word	_Label_2190
	.word	-160
	.word	4
	.word	_Label_2191
	.word	-164
	.word	4
	.word	_Label_2192
	.word	-168
	.word	4
	.word	_Label_2193
	.word	-172
	.word	4
	.word	_Label_2194
	.word	-176
	.word	4
	.word	_Label_2195
	.word	-180
	.word	4
	.word	_Label_2196
	.word	-184
	.word	4
	.word	_Label_2197
	.word	-188
	.word	4
	.word	_Label_2198
	.word	-192
	.word	4
	.word	_Label_2199
	.word	-196
	.word	4
	.word	_Label_2200
	.word	-200
	.word	4
	.word	_Label_2201
	.word	-368
	.word	168
	.word	_Label_2202
	.word	-372
	.word	4
	.word	_Label_2203
	.word	-376
	.word	4
	.word	_Label_2204
	.word	-2060
	.word	1684
	.word	_Label_2205
	.word	-2064
	.word	4
	.word	_Label_2206
	.word	-2068
	.word	4
	.word	0
_Label_2173:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2174:
	.ascii	"Pself\0"
	.align
_Label_2175:
	.byte	'?'
	.ascii	"_temp_2172\0"
	.align
_Label_2176:
	.byte	'?'
	.ascii	"_temp_2171\0"
	.align
_Label_2177:
	.byte	'?'
	.ascii	"_temp_2170\0"
	.align
_Label_2178:
	.byte	'?'
	.ascii	"_temp_2169\0"
	.align
_Label_2179:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
_Label_2180:
	.byte	'?'
	.ascii	"_temp_2167\0"
	.align
_Label_2181:
	.byte	'?'
	.ascii	"_temp_2166\0"
	.align
_Label_2182:
	.byte	'?'
	.ascii	"_temp_2165\0"
	.align
_Label_2183:
	.byte	'?'
	.ascii	"_temp_2164\0"
	.align
_Label_2184:
	.byte	'?'
	.ascii	"_temp_2163\0"
	.align
_Label_2185:
	.byte	'?'
	.ascii	"_temp_2162\0"
	.align
_Label_2186:
	.byte	'?'
	.ascii	"_temp_2161\0"
	.align
_Label_2187:
	.byte	'?'
	.ascii	"_temp_2160\0"
	.align
_Label_2188:
	.byte	'?'
	.ascii	"_temp_2159\0"
	.align
_Label_2189:
	.byte	'?'
	.ascii	"_temp_2158\0"
	.align
_Label_2190:
	.byte	'?'
	.ascii	"_temp_2157\0"
	.align
_Label_2191:
	.byte	'?'
	.ascii	"_temp_2156\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2151\0"
	.align
_Label_2193:
	.byte	'?'
	.ascii	"_temp_2150\0"
	.align
_Label_2194:
	.byte	'?'
	.ascii	"_temp_2149\0"
	.align
_Label_2195:
	.byte	'?'
	.ascii	"_temp_2148\0"
	.align
_Label_2196:
	.byte	'?'
	.ascii	"_temp_2147\0"
	.align
_Label_2197:
	.byte	'?'
	.ascii	"_temp_2146\0"
	.align
_Label_2198:
	.byte	'?'
	.ascii	"_temp_2145\0"
	.align
_Label_2199:
	.byte	'?'
	.ascii	"_temp_2144\0"
	.align
_Label_2200:
	.byte	'?'
	.ascii	"_temp_2142\0"
	.align
_Label_2201:
	.byte	'?'
	.ascii	"_temp_2141\0"
	.align
_Label_2202:
	.byte	'?'
	.ascii	"_temp_2140\0"
	.align
_Label_2203:
	.byte	'?'
	.ascii	"_temp_2139\0"
	.align
_Label_2204:
	.byte	'?'
	.ascii	"_temp_2138\0"
	.align
_Label_2205:
	.byte	'?'
	.ascii	"_temp_2137\0"
	.align
_Label_2206:
	.byte	'I'
	.ascii	"j\0"
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
_Label_4060:
	push	r0
	sub	r1,1,r1
	bne	_Label_4060
	mov	920,r13		! source line 920
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	927,r13		! source line 927
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	927,r13		! source line 927
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_2207 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2207  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	928,r13		! source line 928
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	929,r13		! source line 929
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2212 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2213 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_2212  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_2208:
!   Perform the FOR-LOOP termination test
!   if j > _temp_2213 then goto _Label_2211		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2211
_Label_2209:
	mov	929,r13		! source line 929
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2214 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2214  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	930,r13		! source line 930
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=j  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	931,r13		! source line 931
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2215 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2215  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	932,r13		! source line 932
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	933,r13		! source line 933
	mov	"\0\0SE",r10
!   _temp_2216 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2216 [j ] into _temp_2217
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
	set	168,r3
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
_Label_2210:
!   j = j + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_2208
! END FOR
_Label_2211:
! CALL STATEMENT...
!   _temp_2218 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2218  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	935,r13		! source line 935
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	936,r13		! source line 936
	mov	"\0\0SE",r10
!   _temp_2219 = _function_189_PrintObjectAddr
	set	_function_189_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2220 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2219  sizeInBytes=4
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
	mov	937,r13		! source line 937
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	938,r13		! source line 938
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	938,r13		! source line 938
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	938,r13		! source line 938
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
	.word	_Label_2221
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2222
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2223
	.word	-12
	.word	4
	.word	_Label_2224
	.word	-16
	.word	4
	.word	_Label_2225
	.word	-20
	.word	4
	.word	_Label_2226
	.word	-24
	.word	4
	.word	_Label_2227
	.word	-28
	.word	4
	.word	_Label_2228
	.word	-32
	.word	4
	.word	_Label_2229
	.word	-36
	.word	4
	.word	_Label_2230
	.word	-40
	.word	4
	.word	_Label_2231
	.word	-44
	.word	4
	.word	_Label_2232
	.word	-48
	.word	4
	.word	_Label_2233
	.word	-52
	.word	4
	.word	_Label_2234
	.word	-56
	.word	4
	.word	0
_Label_2221:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2222:
	.ascii	"Pself\0"
	.align
_Label_2223:
	.byte	'?'
	.ascii	"_temp_2220\0"
	.align
_Label_2224:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2225:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2226:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2227:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2228:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2229:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2230:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2207\0"
	.align
_Label_2233:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_2234:
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
_Label_4061:
	push	r0
	sub	r1,1,r1
	bne	_Label_4061
	mov	943,r13		! source line 943
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	950,r13		! source line 950
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	950,r13		! source line 950
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_2235 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2235  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	951,r13		! source line 951
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	952,r13		! source line 952
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2240 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2241 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_2240  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_2236:
!   Perform the FOR-LOOP termination test
!   if j > _temp_2241 then goto _Label_2239		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2239
_Label_2237:
	mov	952,r13		! source line 952
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2242 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2242  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	953,r13		! source line 953
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=j  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	954,r13		! source line 954
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	955,r13		! source line 955
	mov	"\0\0SE",r10
!   _temp_2243 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2243 [j ] into _temp_2244
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
	set	168,r3
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
_Label_2238:
!   j = j + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2236
! END FOR
_Label_2239:
! CALL STATEMENT...
!   _temp_2245 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2245  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	957,r13		! source line 957
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	958,r13		! source line 958
	mov	"\0\0SE",r10
!   _temp_2246 = _function_189_PrintObjectAddr
	set	_function_189_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2247 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2246  sizeInBytes=4
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
	mov	959,r13		! source line 959
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	960,r13		! source line 960
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	960,r13		! source line 960
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	960,r13		! source line 960
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
	.word	_Label_2248
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2249
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2250
	.word	-12
	.word	4
	.word	_Label_2251
	.word	-16
	.word	4
	.word	_Label_2252
	.word	-20
	.word	4
	.word	_Label_2253
	.word	-24
	.word	4
	.word	_Label_2254
	.word	-28
	.word	4
	.word	_Label_2255
	.word	-32
	.word	4
	.word	_Label_2256
	.word	-36
	.word	4
	.word	_Label_2257
	.word	-40
	.word	4
	.word	_Label_2258
	.word	-44
	.word	4
	.word	_Label_2259
	.word	-48
	.word	4
	.word	_Label_2260
	.word	-52
	.word	4
	.word	0
_Label_2248:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2249:
	.ascii	"Pself\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2247\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2246\0"
	.align
_Label_2252:
	.byte	'?'
	.ascii	"_temp_2245\0"
	.align
_Label_2253:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2254:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2255:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2256:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2257:
	.byte	'?'
	.ascii	"_temp_2240\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2235\0"
	.align
_Label_2259:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_2260:
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
_Label_4062:
	push	r0
	sub	r1,1,r1
	bne	_Label_4062
	mov	965,r13		! source line 965
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	972,r13		! source line 972
	mov	"\0\0SE",r10
!   _temp_2261 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
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
	mov	973,r13		! source line 973
	mov	"\0\0WH",r10
_Label_2262:
	mov	973,r13		! source line 973
	mov	"\0\0SE",r10
!   _temp_2265 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2263 else goto _Label_2264
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2264
	jmp	_Label_2263
_Label_2263:
	mov	973,r13		! source line 973
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	974,r13		! source line 974
	mov	"\0\0SE",r10
!   _temp_2266 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-32]
!   _temp_2267 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2266  sizeInBytes=4
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
	jmp	_Label_2262
_Label_2264:
! ASSIGNMENT STATEMENT...
	mov	976,r13		! source line 976
	mov	"\0\0AS",r10
	mov	976,r13		! source line 976
	mov	"\0\0SE",r10
!   _temp_2268 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
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
! SEND STATEMENT...
	mov	977,r13		! source line 977
	mov	"\0\0SE",r10
!   if intIsZero (item) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	978,r13		! source line 978
	mov	"\0\0AS",r10
!   if intIsZero (item) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2269 = item + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2269 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	979,r13		! source line 979
	mov	"\0\0AS",r10
!   if intIsZero (item) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2270 = item + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2270 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1752],r1
	load	[r14+-16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	980,r13		! source line 980
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1752],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1752]
! SEND STATEMENT...
	mov	981,r13		! source line 981
	mov	"\0\0SE",r10
!   _temp_2271 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
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
	mov	982,r13		! source line 982
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
	.word	_Label_2272
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2273
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2274
	.word	-12
	.word	4
	.word	_Label_2275
	.word	-16
	.word	4
	.word	_Label_2276
	.word	-20
	.word	4
	.word	_Label_2277
	.word	-24
	.word	4
	.word	_Label_2278
	.word	-28
	.word	4
	.word	_Label_2279
	.word	-32
	.word	4
	.word	_Label_2280
	.word	-36
	.word	4
	.word	_Label_2281
	.word	-40
	.word	4
	.word	_Label_2282
	.word	-44
	.word	4
	.word	0
_Label_2272:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_2273:
	.ascii	"Pself\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2270\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2269\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2268\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2267\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2266\0"
	.align
_Label_2280:
	.byte	'?'
	.ascii	"_temp_2265\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2261\0"
	.align
_Label_2282:
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
_Label_4063:
	push	r0
	sub	r1,1,r1
	bne	_Label_4063
	mov	987,r13		! source line 987
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2283 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2283  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	992,r13		! source line 992
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	992,r13		! source line 992
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
	.word	_Label_2284
	.word	8		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2285
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2286
	.word	12
	.word	4
	.word	_Label_2287
	.word	-12
	.word	4
	.word	0
_Label_2284:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_2285:
	.ascii	"Pself\0"
	.align
_Label_2286:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2283\0"
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
_Label_4064:
	push	r0
	sub	r1,1,r1
	bne	_Label_4064
	mov	997,r13		! source line 997
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1002,r13		! source line 1002
	mov	"\0\0SE",r10
!   _temp_2288 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-252]
!   _temp_2289 = _temp_2288 + 1688
	load	[r14+-252],r1
	add	r1,1688,r1
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
	mov	1004,r13		! source line 1004
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2294 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-244]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2295 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-240]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_2294  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+-256]
_Label_2290:
!   Perform the FOR-LOOP termination test
!   if j > _temp_2295 then goto _Label_2293		
	load	[r14+-256],r1
	load	[r14+-240],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2293
_Label_2291:
	mov	1004,r13		! source line 1004
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1006,r13		! source line 1006
	mov	"\0\0IF",r10
!   _temp_2299 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-232]
!   _temp_2300 = _temp_2299 + 4
	load	[r14+-232],r1
	add	r1,4,r1
	store	r1,[r14+-228]
!   Move address of _temp_2300 [j ] into _temp_2301
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-224]
!   _temp_2302 = _temp_2301 + 12
	load	[r14+-224],r1
	add	r1,12,r1
	store	r1,[r14+-220]
!   Data Move: _temp_2298 = *_temp_2302  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-236]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2304 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-212]
!   Data Move: _temp_2303 = *_temp_2304  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-216]
!   if _temp_2298 != _temp_2303 then goto _Label_2297		(int)
	load	[r14+-236],r1
	load	[r14+-216],r2
	cmp	r1,r2
	bne	_Label_2297
!	jmp	_Label_2296
_Label_2296:
! THEN...
	mov	1007,r13		! source line 1007
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1007,r13		! source line 1007
	mov	"\0\0AS",r10
!   _temp_2305 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-208]
!   _temp_2306 = _temp_2305 + 4
	load	[r14+-208],r1
	add	r1,4,r1
	store	r1,[r14+-204]
!   Move address of _temp_2306 [j ] into _temp_2307
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-200]
!   parentPcb = _temp_2307		(4 bytes)
	load	[r14+-200],r1
	store	r1,[r14+-260]
! END IF...
_Label_2297:
!   Increment the FOR-LOOP index variable and jump back
_Label_2292:
!   j = j + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2290
! END FOR
_Label_2293:
! FOR STATEMENT...
	mov	1010,r13		! source line 1010
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2312 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-196]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2313 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-192]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_2312  (sizeInBytes=4)
	load	[r14+-196],r1
	store	r1,[r14+-256]
_Label_2308:
!   Perform the FOR-LOOP termination test
!   if j > _temp_2313 then goto _Label_2311		
	load	[r14+-256],r1
	load	[r14+-192],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2311
_Label_2309:
	mov	1010,r13		! source line 1010
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1012,r13		! source line 1012
	mov	"\0\0IF",r10
!   _temp_2318 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-184]
!   _temp_2319 = _temp_2318 + 4
	load	[r14+-184],r1
	add	r1,4,r1
	store	r1,[r14+-180]
!   Move address of _temp_2319 [j ] into _temp_2320
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-176]
!   _temp_2321 = _temp_2320 + 20
	load	[r14+-176],r1
	add	r1,20,r1
	store	r1,[r14+-172]
!   Data Move: _temp_2317 = *_temp_2321  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if _temp_2317 != 2 then goto _Label_2315		(int)
	load	[r14+-188],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2315
!	jmp	_Label_2316
_Label_2316:
!   _temp_2323 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-164]
!   _temp_2324 = _temp_2323 + 4
	load	[r14+-164],r1
	add	r1,4,r1
	store	r1,[r14+-160]
!   Move address of _temp_2324 [j ] into _temp_2325
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-156]
!   _temp_2326 = _temp_2325 + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-152]
!   Data Move: _temp_2322 = *_temp_2326  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2328 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Data Move: _temp_2327 = *_temp_2328  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if _temp_2322 != _temp_2327 then goto _Label_2315		(int)
	load	[r14+-168],r1
	load	[r14+-148],r2
	cmp	r1,r2
	bne	_Label_2315
!	jmp	_Label_2314
_Label_2314:
! THEN...
	mov	1014,r13		! source line 1014
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1014,r13		! source line 1014
	mov	"\0\0AS",r10
!   _temp_2329 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-140]
!   _temp_2330 = _temp_2329 + 4
	load	[r14+-140],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_2330 [j ] into _temp_2331
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   _temp_2332 = _temp_2331 + 20
	load	[r14+-132],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: *_temp_2332 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-128],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1015,r13		! source line 1015
	mov	"\0\0SE",r10
!   _temp_2334 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-120]
!   _temp_2335 = _temp_2334 + 4
	load	[r14+-120],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Move address of _temp_2335 [j ] into _temp_2336
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-112]
!   _temp_2333 = _temp_2336		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-124]
!   _temp_2337 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-108]
!   _temp_2338 = _temp_2337 + 1724
	load	[r14+-108],r1
	add	r1,1724,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_2333  sizeInBytes=4
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
	mov	1018,r13		! source line 1018
	mov	"\0\0SE",r10
!   _temp_2340 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   _temp_2341 = _temp_2340 + 1688
	load	[r14+-96],r1
	add	r1,1688,r1
	store	r1,[r14+-92]
!   _temp_2339 = _temp_2341		(4 bytes)
	load	[r14+-92],r1
	store	r1,[r14+-100]
!   _temp_2342 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_2343 = _temp_2342 + 1708
	load	[r14+-88],r1
	add	r1,1708,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_2339  sizeInBytes=4
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
_Label_2315:
!   Increment the FOR-LOOP index variable and jump back
_Label_2310:
!   j = j + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2308
! END FOR
_Label_2311:
! IF STATEMENT...
	mov	1021,r13		! source line 1021
	mov	"\0\0IF",r10
!   if intIsZero (parentPcb) then goto _Label_2345
	load	[r14+-260],r1
	cmp	r1,r0
	be	_Label_2345
!	jmp	_Label_2346
_Label_2346:
!   if intIsZero (parentPcb) then goto _runtimeErrorNullPointer
	load	[r14+-260],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2348 = parentPcb + 20
	load	[r14+-260],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2347 = *_temp_2348  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2347 != 1 then goto _Label_2345		(int)
	load	[r14+-80],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2345
!	jmp	_Label_2344
_Label_2344:
! THEN...
	mov	1023,r13		! source line 1023
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1023,r13		! source line 1023
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2349 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_2349 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-72],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1024,r13		! source line 1024
	mov	"\0\0SE",r10
!   _temp_2351 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_2352 = _temp_2351 + 1688
	load	[r14+-64],r1
	add	r1,1688,r1
	store	r1,[r14+-60]
!   _temp_2350 = _temp_2352		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   _temp_2353 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   _temp_2354 = _temp_2353 + 1736
	load	[r14+-56],r1
	add	r1,1736,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2350  sizeInBytes=4
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
	jmp	_Label_2355
_Label_2345:
! ELSE...
	mov	1027,r13		! source line 1027
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1027,r13		! source line 1027
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2356 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2356 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1028,r13		! source line 1028
	mov	"\0\0SE",r10
!   _temp_2357 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_2358 = _temp_2357 + 1724
	load	[r14+-44],r1
	add	r1,1724,r1
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
	mov	1029,r13		! source line 1029
	mov	"\0\0SE",r10
!   _temp_2360 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_2361 = _temp_2360 + 1688
	load	[r14+-32],r1
	add	r1,1688,r1
	store	r1,[r14+-28]
!   _temp_2359 = _temp_2361		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2362 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_2363 = _temp_2362 + 1708
	load	[r14+-24],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2359  sizeInBytes=4
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
_Label_2355:
! SEND STATEMENT...
	mov	1033,r13		! source line 1033
	mov	"\0\0SE",r10
!   _temp_2364 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_2365 = _temp_2364 + 1688
	load	[r14+-16],r1
	add	r1,1688,r1
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
	mov	1033,r13		! source line 1033
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
	.word	_Label_2366
	.word	8		! total size of parameters
	.word	260		! frame size = 260
	.word	_Label_2367
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2368
	.word	12
	.word	4
	.word	_Label_2369
	.word	-12
	.word	4
	.word	_Label_2370
	.word	-16
	.word	4
	.word	_Label_2371
	.word	-20
	.word	4
	.word	_Label_2372
	.word	-24
	.word	4
	.word	_Label_2373
	.word	-28
	.word	4
	.word	_Label_2374
	.word	-32
	.word	4
	.word	_Label_2375
	.word	-36
	.word	4
	.word	_Label_2376
	.word	-40
	.word	4
	.word	_Label_2377
	.word	-44
	.word	4
	.word	_Label_2378
	.word	-48
	.word	4
	.word	_Label_2379
	.word	-52
	.word	4
	.word	_Label_2380
	.word	-56
	.word	4
	.word	_Label_2381
	.word	-60
	.word	4
	.word	_Label_2382
	.word	-64
	.word	4
	.word	_Label_2383
	.word	-68
	.word	4
	.word	_Label_2384
	.word	-72
	.word	4
	.word	_Label_2385
	.word	-76
	.word	4
	.word	_Label_2386
	.word	-80
	.word	4
	.word	_Label_2387
	.word	-84
	.word	4
	.word	_Label_2388
	.word	-88
	.word	4
	.word	_Label_2389
	.word	-92
	.word	4
	.word	_Label_2390
	.word	-96
	.word	4
	.word	_Label_2391
	.word	-100
	.word	4
	.word	_Label_2392
	.word	-104
	.word	4
	.word	_Label_2393
	.word	-108
	.word	4
	.word	_Label_2394
	.word	-112
	.word	4
	.word	_Label_2395
	.word	-116
	.word	4
	.word	_Label_2396
	.word	-120
	.word	4
	.word	_Label_2397
	.word	-124
	.word	4
	.word	_Label_2398
	.word	-128
	.word	4
	.word	_Label_2399
	.word	-132
	.word	4
	.word	_Label_2400
	.word	-136
	.word	4
	.word	_Label_2401
	.word	-140
	.word	4
	.word	_Label_2402
	.word	-144
	.word	4
	.word	_Label_2403
	.word	-148
	.word	4
	.word	_Label_2404
	.word	-152
	.word	4
	.word	_Label_2405
	.word	-156
	.word	4
	.word	_Label_2406
	.word	-160
	.word	4
	.word	_Label_2407
	.word	-164
	.word	4
	.word	_Label_2408
	.word	-168
	.word	4
	.word	_Label_2409
	.word	-172
	.word	4
	.word	_Label_2410
	.word	-176
	.word	4
	.word	_Label_2411
	.word	-180
	.word	4
	.word	_Label_2412
	.word	-184
	.word	4
	.word	_Label_2413
	.word	-188
	.word	4
	.word	_Label_2414
	.word	-192
	.word	4
	.word	_Label_2415
	.word	-196
	.word	4
	.word	_Label_2416
	.word	-200
	.word	4
	.word	_Label_2417
	.word	-204
	.word	4
	.word	_Label_2418
	.word	-208
	.word	4
	.word	_Label_2419
	.word	-212
	.word	4
	.word	_Label_2420
	.word	-216
	.word	4
	.word	_Label_2421
	.word	-220
	.word	4
	.word	_Label_2422
	.word	-224
	.word	4
	.word	_Label_2423
	.word	-228
	.word	4
	.word	_Label_2424
	.word	-232
	.word	4
	.word	_Label_2425
	.word	-236
	.word	4
	.word	_Label_2426
	.word	-240
	.word	4
	.word	_Label_2427
	.word	-244
	.word	4
	.word	_Label_2428
	.word	-248
	.word	4
	.word	_Label_2429
	.word	-252
	.word	4
	.word	_Label_2430
	.word	-256
	.word	4
	.word	_Label_2431
	.word	-260
	.word	4
	.word	0
_Label_2366:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_2367:
	.ascii	"Pself\0"
	.align
_Label_2368:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2369:
	.byte	'?'
	.ascii	"_temp_2365\0"
	.align
_Label_2370:
	.byte	'?'
	.ascii	"_temp_2364\0"
	.align
_Label_2371:
	.byte	'?'
	.ascii	"_temp_2363\0"
	.align
_Label_2372:
	.byte	'?'
	.ascii	"_temp_2362\0"
	.align
_Label_2373:
	.byte	'?'
	.ascii	"_temp_2361\0"
	.align
_Label_2374:
	.byte	'?'
	.ascii	"_temp_2360\0"
	.align
_Label_2375:
	.byte	'?'
	.ascii	"_temp_2359\0"
	.align
_Label_2376:
	.byte	'?'
	.ascii	"_temp_2358\0"
	.align
_Label_2377:
	.byte	'?'
	.ascii	"_temp_2357\0"
	.align
_Label_2378:
	.byte	'?'
	.ascii	"_temp_2356\0"
	.align
_Label_2379:
	.byte	'?'
	.ascii	"_temp_2354\0"
	.align
_Label_2380:
	.byte	'?'
	.ascii	"_temp_2353\0"
	.align
_Label_2381:
	.byte	'?'
	.ascii	"_temp_2352\0"
	.align
_Label_2382:
	.byte	'?'
	.ascii	"_temp_2351\0"
	.align
_Label_2383:
	.byte	'?'
	.ascii	"_temp_2350\0"
	.align
_Label_2384:
	.byte	'?'
	.ascii	"_temp_2349\0"
	.align
_Label_2385:
	.byte	'?'
	.ascii	"_temp_2348\0"
	.align
_Label_2386:
	.byte	'?'
	.ascii	"_temp_2347\0"
	.align
_Label_2387:
	.byte	'?'
	.ascii	"_temp_2343\0"
	.align
_Label_2388:
	.byte	'?'
	.ascii	"_temp_2342\0"
	.align
_Label_2389:
	.byte	'?'
	.ascii	"_temp_2341\0"
	.align
_Label_2390:
	.byte	'?'
	.ascii	"_temp_2340\0"
	.align
_Label_2391:
	.byte	'?'
	.ascii	"_temp_2339\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2338\0"
	.align
_Label_2393:
	.byte	'?'
	.ascii	"_temp_2337\0"
	.align
_Label_2394:
	.byte	'?'
	.ascii	"_temp_2336\0"
	.align
_Label_2395:
	.byte	'?'
	.ascii	"_temp_2335\0"
	.align
_Label_2396:
	.byte	'?'
	.ascii	"_temp_2334\0"
	.align
_Label_2397:
	.byte	'?'
	.ascii	"_temp_2333\0"
	.align
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2332\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2331\0"
	.align
_Label_2400:
	.byte	'?'
	.ascii	"_temp_2330\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2402:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2326\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2325\0"
	.align
_Label_2406:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2408:
	.byte	'?'
	.ascii	"_temp_2322\0"
	.align
_Label_2409:
	.byte	'?'
	.ascii	"_temp_2321\0"
	.align
_Label_2410:
	.byte	'?'
	.ascii	"_temp_2320\0"
	.align
_Label_2411:
	.byte	'?'
	.ascii	"_temp_2319\0"
	.align
_Label_2412:
	.byte	'?'
	.ascii	"_temp_2318\0"
	.align
_Label_2413:
	.byte	'?'
	.ascii	"_temp_2317\0"
	.align
_Label_2414:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2415:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2416:
	.byte	'?'
	.ascii	"_temp_2307\0"
	.align
_Label_2417:
	.byte	'?'
	.ascii	"_temp_2306\0"
	.align
_Label_2418:
	.byte	'?'
	.ascii	"_temp_2305\0"
	.align
_Label_2419:
	.byte	'?'
	.ascii	"_temp_2304\0"
	.align
_Label_2420:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2421:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2422:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2423:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2424:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2425:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2426:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2427:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2428:
	.byte	'?'
	.ascii	"_temp_2289\0"
	.align
_Label_2429:
	.byte	'?'
	.ascii	"_temp_2288\0"
	.align
_Label_2430:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_2431:
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
_Label_4065:
	push	r0
	sub	r1,1,r1
	bne	_Label_4065
	mov	1038,r13		! source line 1038
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1042,r13		! source line 1042
	mov	"\0\0SE",r10
!   _temp_2432 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_2433 = _temp_2432 + 1688
	load	[r14+-88],r1
	add	r1,1688,r1
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
	mov	1045,r13		! source line 1045
	mov	"\0\0WH",r10
_Label_2434:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2438 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2437 = *_temp_2438  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2437 == 2 then goto _Label_2436		(int)
	load	[r14+-80],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2436
!	jmp	_Label_2435
_Label_2435:
	mov	1045,r13		! source line 1045
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1046,r13		! source line 1046
	mov	"\0\0SE",r10
!   _temp_2440 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-68]
!   _temp_2441 = _temp_2440 + 1688
	load	[r14+-68],r1
	add	r1,1688,r1
	store	r1,[r14+-64]
!   _temp_2439 = _temp_2441		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-72]
!   _temp_2442 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-60]
!   _temp_2443 = _temp_2442 + 1736
	load	[r14+-60],r1
	add	r1,1736,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_2439  sizeInBytes=4
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
	jmp	_Label_2434
_Label_2436:
! ASSIGNMENT STATEMENT...
	mov	1050,r13		! source line 1050
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2444 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: exitStatus = *_temp_2444  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-92]
! ASSIGNMENT STATEMENT...
	mov	1054,r13		! source line 1054
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2445 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2445 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1055,r13		! source line 1055
	mov	"\0\0SE",r10
!   _temp_2446 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_2447 = _temp_2446 + 1724
	load	[r14+-44],r1
	add	r1,1724,r1
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
	mov	1056,r13		! source line 1056
	mov	"\0\0SE",r10
!   _temp_2449 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_2450 = _temp_2449 + 1688
	load	[r14+-32],r1
	add	r1,1688,r1
	store	r1,[r14+-28]
!   _temp_2448 = _temp_2450		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2451 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_2452 = _temp_2451 + 1708
	load	[r14+-24],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2448  sizeInBytes=4
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
	mov	1059,r13		! source line 1059
	mov	"\0\0SE",r10
!   _temp_2453 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_2454 = _temp_2453 + 1688
	load	[r14+-16],r1
	add	r1,1688,r1
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
	mov	1062,r13		! source line 1062
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
	.word	_Label_2455
	.word	8		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_2456
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2457
	.word	12
	.word	4
	.word	_Label_2458
	.word	-12
	.word	4
	.word	_Label_2459
	.word	-16
	.word	4
	.word	_Label_2460
	.word	-20
	.word	4
	.word	_Label_2461
	.word	-24
	.word	4
	.word	_Label_2462
	.word	-28
	.word	4
	.word	_Label_2463
	.word	-32
	.word	4
	.word	_Label_2464
	.word	-36
	.word	4
	.word	_Label_2465
	.word	-40
	.word	4
	.word	_Label_2466
	.word	-44
	.word	4
	.word	_Label_2467
	.word	-48
	.word	4
	.word	_Label_2468
	.word	-52
	.word	4
	.word	_Label_2469
	.word	-56
	.word	4
	.word	_Label_2470
	.word	-60
	.word	4
	.word	_Label_2471
	.word	-64
	.word	4
	.word	_Label_2472
	.word	-68
	.word	4
	.word	_Label_2473
	.word	-72
	.word	4
	.word	_Label_2474
	.word	-76
	.word	4
	.word	_Label_2475
	.word	-80
	.word	4
	.word	_Label_2476
	.word	-84
	.word	4
	.word	_Label_2477
	.word	-88
	.word	4
	.word	_Label_2478
	.word	-92
	.word	4
	.word	0
_Label_2455:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_2456:
	.ascii	"Pself\0"
	.align
_Label_2457:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2454\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2451\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2450\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2449\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2446\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2445\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2444\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2443\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2441\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2439\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2438\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2437\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2433\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2432\0"
	.align
_Label_2478:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_2479
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_2479:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2480
	.word	_sourceFileName
	.word	256		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_2480:
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
_Label_4066:
	push	r0
	sub	r1,1,r1
	bne	_Label_4066
	mov	1135,r13		! source line 1135
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2481 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2481  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1141,r13		! source line 1141
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1142,r13		! source line 1142
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
	mov	1143,r13		! source line 1143
	mov	"\0\0SE",r10
!   _temp_2483 = &framesInUse
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
	mov	1144,r13		! source line 1144
	mov	"\0\0AS",r10
!   numberFreeFrames = 512		(4 bytes)
	mov	512,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1145,r13		! source line 1145
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
	mov	1146,r13		! source line 1146
	mov	"\0\0SE",r10
!   _temp_2485 = &frameManagerLock
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
	mov	1147,r13		! source line 1147
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
	mov	1148,r13		! source line 1148
	mov	"\0\0SE",r10
!   _temp_2487 = &newFramesAvailable
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
	mov	1154,r13		! source line 1154
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2492 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2493 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_2492  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_2488:
!   Perform the FOR-LOOP termination test
!   if j > _temp_2493 then goto _Label_2491		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2491
_Label_2489:
	mov	1154,r13		! source line 1154
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1157,r13		! source line 1157
	mov	"\0\0IF",r10
!   if intIsZero (j) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2496 = *j  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2496) then goto _Label_2495
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_2495
!	jmp	_Label_2494
_Label_2494:
! THEN...
	mov	1158,r13		! source line 1158
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2497 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2497  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1158,r13		! source line 1158
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2495:
!   Increment the FOR-LOOP index variable and jump back
_Label_2490:
!   j = j + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2488
! END FOR
_Label_2491:
! RETURN STATEMENT...
	mov	1154,r13		! source line 1154
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
	.word	_Label_2498
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2499
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2500
	.word	-12
	.word	4
	.word	_Label_2501
	.word	-16
	.word	4
	.word	_Label_2502
	.word	-20
	.word	4
	.word	_Label_2503
	.word	-24
	.word	4
	.word	_Label_2504
	.word	-28
	.word	4
	.word	_Label_2505
	.word	-32
	.word	4
	.word	_Label_2506
	.word	-36
	.word	4
	.word	_Label_2507
	.word	-40
	.word	4
	.word	_Label_2508
	.word	-44
	.word	4
	.word	_Label_2509
	.word	-48
	.word	4
	.word	_Label_2510
	.word	-52
	.word	4
	.word	_Label_2511
	.word	-56
	.word	4
	.word	0
_Label_2498:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2499:
	.ascii	"Pself\0"
	.align
_Label_2500:
	.byte	'?'
	.ascii	"_temp_2497\0"
	.align
_Label_2501:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2502:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2503:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2504:
	.byte	'?'
	.ascii	"_temp_2487\0"
	.align
_Label_2505:
	.byte	'?'
	.ascii	"_temp_2486\0"
	.align
_Label_2506:
	.byte	'?'
	.ascii	"_temp_2485\0"
	.align
_Label_2507:
	.byte	'?'
	.ascii	"_temp_2484\0"
	.align
_Label_2508:
	.byte	'?'
	.ascii	"_temp_2483\0"
	.align
_Label_2509:
	.byte	'?'
	.ascii	"_temp_2482\0"
	.align
_Label_2510:
	.byte	'?'
	.ascii	"_temp_2481\0"
	.align
_Label_2511:
	.byte	'I'
	.ascii	"j\0"
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
_Label_4067:
	push	r0
	sub	r1,1,r1
	bne	_Label_4067
	mov	1165,r13		! source line 1165
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1169,r13		! source line 1169
	mov	"\0\0SE",r10
!   _temp_2512 = &frameManagerLock
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
!   _temp_2513 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2513  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1170,r13		! source line 1170
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2514 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2514  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1171,r13		! source line 1171
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2515 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2515  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1172,r13		! source line 1172
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1173,r13		! source line 1173
	mov	"\0\0SE",r10
!   _temp_2516 = &framesInUse
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
	mov	1174,r13		! source line 1174
	mov	"\0\0SE",r10
!   _temp_2517 = &frameManagerLock
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
	mov	1174,r13		! source line 1174
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
	.word	_Label_2518
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2519
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2520
	.word	-12
	.word	4
	.word	_Label_2521
	.word	-16
	.word	4
	.word	_Label_2522
	.word	-20
	.word	4
	.word	_Label_2523
	.word	-24
	.word	4
	.word	_Label_2524
	.word	-28
	.word	4
	.word	_Label_2525
	.word	-32
	.word	4
	.word	0
_Label_2518:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2519:
	.ascii	"Pself\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2517\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2516\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2515\0"
	.align
_Label_2523:
	.byte	'?'
	.ascii	"_temp_2514\0"
	.align
_Label_2524:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2525:
	.byte	'?'
	.ascii	"_temp_2512\0"
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
_Label_4068:
	push	r0
	sub	r1,1,r1
	bne	_Label_4068
	mov	1179,r13		! source line 1179
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1187,r13		! source line 1187
	mov	"\0\0SE",r10
!   _temp_2526 = &frameManagerLock
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
	mov	1190,r13		! source line 1190
	mov	"\0\0WH",r10
_Label_2527:
!   if numberFreeFrames >= 1 then goto _Label_2529		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2529
!	jmp	_Label_2528
_Label_2528:
	mov	1190,r13		! source line 1190
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1191,r13		! source line 1191
	mov	"\0\0SE",r10
!   _temp_2530 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_2531 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2530  sizeInBytes=4
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
	jmp	_Label_2527
_Label_2529:
! ASSIGNMENT STATEMENT...
	mov	1195,r13		! source line 1195
	mov	"\0\0AS",r10
	mov	1195,r13		! source line 1195
	mov	"\0\0SE",r10
!   _temp_2532 = &framesInUse
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
	mov	1196,r13		! source line 1196
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
	mov	1199,r13		! source line 1199
	mov	"\0\0SE",r10
!   _temp_2533 = &frameManagerLock
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
	mov	1202,r13		! source line 1202
	mov	"\0\0AS",r10
!   _temp_2534 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2534		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1204,r13		! source line 1204
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
	.word	_Label_2535
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2536
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2537
	.word	-12
	.word	4
	.word	_Label_2538
	.word	-16
	.word	4
	.word	_Label_2539
	.word	-20
	.word	4
	.word	_Label_2540
	.word	-24
	.word	4
	.word	_Label_2541
	.word	-28
	.word	4
	.word	_Label_2542
	.word	-32
	.word	4
	.word	_Label_2543
	.word	-36
	.word	4
	.word	_Label_2544
	.word	-40
	.word	4
	.word	0
_Label_2535:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_2536:
	.ascii	"Pself\0"
	.align
_Label_2537:
	.byte	'?'
	.ascii	"_temp_2534\0"
	.align
_Label_2538:
	.byte	'?'
	.ascii	"_temp_2533\0"
	.align
_Label_2539:
	.byte	'?'
	.ascii	"_temp_2532\0"
	.align
_Label_2540:
	.byte	'?'
	.ascii	"_temp_2531\0"
	.align
_Label_2541:
	.byte	'?'
	.ascii	"_temp_2530\0"
	.align
_Label_2542:
	.byte	'?'
	.ascii	"_temp_2526\0"
	.align
_Label_2543:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2544:
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
_Label_4069:
	push	r0
	sub	r1,1,r1
	bne	_Label_4069
	mov	1209,r13		! source line 1209
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1214,r13		! source line 1214
	mov	"\0\0SE",r10
!   _temp_2545 = &frameManagerLock
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
	mov	1215,r13		! source line 1215
	mov	"\0\0WH",r10
_Label_2546:
!   if numFramesNeeded <= numberFreeFrames then goto _Label_2548		(int)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2548
!	jmp	_Label_2547
_Label_2547:
	mov	1215,r13		! source line 1215
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1216,r13		! source line 1216
	mov	"\0\0SE",r10
!   _temp_2549 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   _temp_2550 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2549  sizeInBytes=4
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
	jmp	_Label_2546
_Label_2548:
! FOR STATEMENT...
	mov	1218,r13		! source line 1218
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2555 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2556 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_2555  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-60]
_Label_2551:
!   Perform the FOR-LOOP termination test
!   if j > _temp_2556 then goto _Label_2554		
	load	[r14+-60],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2554
_Label_2552:
	mov	1218,r13		! source line 1218
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1219,r13		! source line 1219
	mov	"\0\0AS",r10
	mov	1219,r13		! source line 1219
	mov	"\0\0SE",r10
!   _temp_2557 = &framesInUse
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
	mov	1220,r13		! source line 1220
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
	mov	1221,r13		! source line 1221
	mov	"\0\0AS",r10
!   _temp_2558 = f * 8192		(int)
	load	[r14+-64],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   frameAddr = 1048576 + _temp_2558		(int)
	set	1048576,r1
	load	[r14+-32],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! SEND STATEMENT...
	mov	1222,r13		! source line 1222
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=j  sizeInBytes=4
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
	mov	1223,r13		! source line 1223
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2559 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2562 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2561 = *_temp_2562  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2560 = _temp_2561 + 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_2559 = _temp_2560  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_2553:
!   j = j + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_2551
! END FOR
_Label_2554:
! SEND STATEMENT...
	mov	1225,r13		! source line 1225
	mov	"\0\0SE",r10
!   _temp_2563 = &frameManagerLock
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
	mov	1225,r13		! source line 1225
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
	.word	_Label_2564
	.word	12		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_2565
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2566
	.word	12
	.word	4
	.word	_Label_2567
	.word	16
	.word	4
	.word	_Label_2568
	.word	-12
	.word	4
	.word	_Label_2569
	.word	-16
	.word	4
	.word	_Label_2570
	.word	-20
	.word	4
	.word	_Label_2571
	.word	-24
	.word	4
	.word	_Label_2572
	.word	-28
	.word	4
	.word	_Label_2573
	.word	-32
	.word	4
	.word	_Label_2574
	.word	-36
	.word	4
	.word	_Label_2575
	.word	-40
	.word	4
	.word	_Label_2576
	.word	-44
	.word	4
	.word	_Label_2577
	.word	-48
	.word	4
	.word	_Label_2578
	.word	-52
	.word	4
	.word	_Label_2579
	.word	-56
	.word	4
	.word	_Label_2580
	.word	-60
	.word	4
	.word	_Label_2581
	.word	-64
	.word	4
	.word	_Label_2582
	.word	-68
	.word	4
	.word	0
_Label_2564:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_2565:
	.ascii	"Pself\0"
	.align
_Label_2566:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2567:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_2568:
	.byte	'?'
	.ascii	"_temp_2563\0"
	.align
_Label_2569:
	.byte	'?'
	.ascii	"_temp_2562\0"
	.align
_Label_2570:
	.byte	'?'
	.ascii	"_temp_2561\0"
	.align
_Label_2571:
	.byte	'?'
	.ascii	"_temp_2560\0"
	.align
_Label_2572:
	.byte	'?'
	.ascii	"_temp_2559\0"
	.align
_Label_2573:
	.byte	'?'
	.ascii	"_temp_2558\0"
	.align
_Label_2574:
	.byte	'?'
	.ascii	"_temp_2557\0"
	.align
_Label_2575:
	.byte	'?'
	.ascii	"_temp_2556\0"
	.align
_Label_2576:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2577:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2579:
	.byte	'?'
	.ascii	"_temp_2545\0"
	.align
_Label_2580:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_2581:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2582:
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
_Label_4070:
	push	r0
	sub	r1,1,r1
	bne	_Label_4070
	mov	1230,r13		! source line 1230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1237,r13		! source line 1237
	mov	"\0\0SE",r10
!   _temp_2583 = &frameManagerLock
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
	mov	1238,r13		! source line 1238
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2584 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Data Move: numFramesReturned = *_temp_2584  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-72]
! FOR STATEMENT...
	mov	1239,r13		! source line 1239
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2589 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2590 = numFramesReturned - 1		(int)
	load	[r14+-72],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_2589  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-64]
_Label_2585:
!   Perform the FOR-LOOP termination test
!   if j > _temp_2590 then goto _Label_2588		
	load	[r14+-64],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2588
_Label_2586:
	mov	1239,r13		! source line 1239
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1240,r13		! source line 1240
	mov	"\0\0AS",r10
	mov	1240,r13		! source line 1240
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=j  sizeInBytes=4
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
	mov	1241,r13		! source line 1241
	mov	"\0\0AS",r10
!   _temp_2591 = frameAddr - 1048576		(int)
	load	[r14+-76],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   f = _temp_2591 div 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! SEND STATEMENT...
	mov	1242,r13		! source line 1242
	mov	"\0\0SE",r10
!   _temp_2592 = &framesInUse
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
	mov	1243,r13		! source line 1243
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
	mov	1244,r13		! source line 1244
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2593 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2596 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2595 = *_temp_2596  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2594 = _temp_2595 - 1		(int)
	load	[r14+-28],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Data Move: *_temp_2593 = _temp_2594  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r14+-36],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_2587:
!   j = j + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_2585
! END FOR
_Label_2588:
! SEND STATEMENT...
	mov	1246,r13		! source line 1246
	mov	"\0\0SE",r10
!   _temp_2597 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_2598 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2597  sizeInBytes=4
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
	mov	1247,r13		! source line 1247
	mov	"\0\0SE",r10
!   _temp_2599 = &frameManagerLock
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
	mov	1247,r13		! source line 1247
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
	.word	_Label_2600
	.word	8		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_2601
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2602
	.word	12
	.word	4
	.word	_Label_2603
	.word	-12
	.word	4
	.word	_Label_2604
	.word	-16
	.word	4
	.word	_Label_2605
	.word	-20
	.word	4
	.word	_Label_2606
	.word	-24
	.word	4
	.word	_Label_2607
	.word	-28
	.word	4
	.word	_Label_2608
	.word	-32
	.word	4
	.word	_Label_2609
	.word	-36
	.word	4
	.word	_Label_2610
	.word	-40
	.word	4
	.word	_Label_2611
	.word	-44
	.word	4
	.word	_Label_2612
	.word	-48
	.word	4
	.word	_Label_2613
	.word	-52
	.word	4
	.word	_Label_2614
	.word	-56
	.word	4
	.word	_Label_2615
	.word	-60
	.word	4
	.word	_Label_2616
	.word	-64
	.word	4
	.word	_Label_2617
	.word	-68
	.word	4
	.word	_Label_2618
	.word	-72
	.word	4
	.word	_Label_2619
	.word	-76
	.word	4
	.word	0
_Label_2600:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2601:
	.ascii	"Pself\0"
	.align
_Label_2602:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2603:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2604:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2605:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2606:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2607:
	.byte	'?'
	.ascii	"_temp_2595\0"
	.align
_Label_2608:
	.byte	'?'
	.ascii	"_temp_2594\0"
	.align
_Label_2609:
	.byte	'?'
	.ascii	"_temp_2593\0"
	.align
_Label_2610:
	.byte	'?'
	.ascii	"_temp_2592\0"
	.align
_Label_2611:
	.byte	'?'
	.ascii	"_temp_2591\0"
	.align
_Label_2612:
	.byte	'?'
	.ascii	"_temp_2590\0"
	.align
_Label_2613:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
_Label_2614:
	.byte	'?'
	.ascii	"_temp_2584\0"
	.align
_Label_2615:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2616:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_2617:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2618:
	.byte	'I'
	.ascii	"numFramesReturned\0"
	.align
_Label_2619:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2620
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
_Label_2620:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2621
	.word	_sourceFileName
	.word	275		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2621:
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
_Label_4071:
	push	r0
	sub	r1,1,r1
	bne	_Label_4071
	mov	1259,r13		! source line 1259
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1263,r13		! source line 1263
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1264,r13		! source line 1264
	mov	"\0\0AS",r10
!   _temp_2622 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2624 = &_temp_2623
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2624 = _temp_2624 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2626:
!   Data Move: *_temp_2624 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2624 = _temp_2624 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2625 = _temp_2625 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2625) then goto _Label_2626
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2626
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2627 = &_temp_2623
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_4072
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4072:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2622 = *_temp_2627  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_4073:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4073
! RETURN STATEMENT...
	mov	1264,r13		! source line 1264
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
	.word	_Label_2628
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2629
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2630
	.word	-12
	.word	4
	.word	_Label_2631
	.word	-16
	.word	4
	.word	_Label_2632
	.word	-20
	.word	4
	.word	_Label_2633
	.word	-104
	.word	84
	.word	_Label_2634
	.word	-108
	.word	4
	.word	0
_Label_2628:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2629:
	.ascii	"Pself\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2632:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2633:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2634:
	.byte	'?'
	.ascii	"_temp_2622\0"
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
_Label_4074:
	push	r0
	sub	r1,1,r1
	bne	_Label_4074
	mov	1269,r13		! source line 1269
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2635 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2635  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1274,r13		! source line 1274
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2636 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2636  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1275,r13		! source line 1275
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1276,r13		! source line 1276
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2641 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2642 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_2641  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2637:
!   Perform the FOR-LOOP termination test
!   if j > _temp_2642 then goto _Label_2640		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2640
_Label_2638:
	mov	1276,r13		! source line 1276
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2643 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2643  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1277,r13		! source line 1277
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2645 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2645 [j ] into _temp_2646
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
!   _temp_2644 = _temp_2646		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2644  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1278,r13		! source line 1278
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2647 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2647  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1279,r13		! source line 1279
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2649 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2649 [j ] into _temp_2650
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
!   Data Move: _temp_2648 = *_temp_2650  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2648  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1280,r13		! source line 1280
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2651 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2651  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1281,r13		! source line 1281
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2652 = j * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2652  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1282,r13		! source line 1282
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2653 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2653  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1283,r13		! source line 1283
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1284,r13		! source line 1284
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2655) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=j  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2654  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2654  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1284,r13		! source line 1284
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2656 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2656  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1285,r13		! source line 1285
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1286,r13		! source line 1286
	mov	"\0\0IF",r10
	mov	1286,r13		! source line 1286
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_2660) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=j  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2659  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2659) then goto _Label_2658
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2658
!	jmp	_Label_2657
_Label_2657:
! THEN...
	mov	1287,r13		! source line 1287
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1287,r13		! source line 1287
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2662) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=j  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2661  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2661  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1287,r13		! source line 1287
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2663
_Label_2658:
! ELSE...
	mov	1289,r13		! source line 1289
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2664 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2664  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1289,r13		! source line 1289
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2663:
! CALL STATEMENT...
!   _temp_2665 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2665  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1291,r13		! source line 1291
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1292,r13		! source line 1292
	mov	"\0\0IF",r10
	mov	1292,r13		! source line 1292
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_2668) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=j  sizeInBytes=4
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
!   if result==true then goto _Label_2666 else goto _Label_2667
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2667
	jmp	_Label_2666
_Label_2666:
! THEN...
	mov	1293,r13		! source line 1293
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2669 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2669  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1293,r13		! source line 1293
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2670
_Label_2667:
! ELSE...
	mov	1295,r13		! source line 1295
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2671 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2671  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1295,r13		! source line 1295
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2670:
! CALL STATEMENT...
!   _temp_2672 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2672  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1297,r13		! source line 1297
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1298,r13		! source line 1298
	mov	"\0\0IF",r10
	mov	1298,r13		! source line 1298
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_2675) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=j  sizeInBytes=4
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
!   if result==true then goto _Label_2673 else goto _Label_2674
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2674
	jmp	_Label_2673
_Label_2673:
! THEN...
	mov	1299,r13		! source line 1299
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2676 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2676  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1299,r13		! source line 1299
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2677
_Label_2674:
! ELSE...
	mov	1301,r13		! source line 1301
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2678 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2678  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1301,r13		! source line 1301
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2677:
! CALL STATEMENT...
!   _temp_2679 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2679  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1303,r13		! source line 1303
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1304,r13		! source line 1304
	mov	"\0\0IF",r10
	mov	1304,r13		! source line 1304
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_2682) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=j  sizeInBytes=4
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
!   if result==true then goto _Label_2680 else goto _Label_2681
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2681
	jmp	_Label_2680
_Label_2680:
! THEN...
	mov	1305,r13		! source line 1305
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2683 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2683  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1305,r13		! source line 1305
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2684
_Label_2681:
! ELSE...
	mov	1307,r13		! source line 1307
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2685 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2685  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1307,r13		! source line 1307
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2684:
! CALL STATEMENT...
!   _temp_2686 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2686  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1309,r13		! source line 1309
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1310,r13		! source line 1310
	mov	"\0\0IF",r10
	mov	1310,r13		! source line 1310
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2689) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=j  sizeInBytes=4
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
!   if result==true then goto _Label_2687 else goto _Label_2688
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2688
	jmp	_Label_2687
_Label_2687:
! THEN...
	mov	1311,r13		! source line 1311
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2690 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2690  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1311,r13		! source line 1311
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2691
_Label_2688:
! ELSE...
	mov	1313,r13		! source line 1313
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2692 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2692  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1313,r13		! source line 1313
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2691:
! CALL STATEMENT...
!   Call the function
	mov	1315,r13		! source line 1315
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2639:
!   j = j + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2637
! END FOR
_Label_2640:
! RETURN STATEMENT...
	mov	1276,r13		! source line 1276
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
	.word	_Label_2693
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2694
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2695
	.word	-12
	.word	4
	.word	_Label_2696
	.word	-16
	.word	4
	.word	_Label_2697
	.word	-20
	.word	4
	.word	_Label_2698
	.word	-24
	.word	4
	.word	_Label_2699
	.word	-28
	.word	4
	.word	_Label_2700
	.word	-32
	.word	4
	.word	_Label_2701
	.word	-36
	.word	4
	.word	_Label_2702
	.word	-40
	.word	4
	.word	_Label_2703
	.word	-44
	.word	4
	.word	_Label_2704
	.word	-48
	.word	4
	.word	_Label_2705
	.word	-52
	.word	4
	.word	_Label_2706
	.word	-56
	.word	4
	.word	_Label_2707
	.word	-60
	.word	4
	.word	_Label_2708
	.word	-64
	.word	4
	.word	_Label_2709
	.word	-68
	.word	4
	.word	_Label_2710
	.word	-72
	.word	4
	.word	_Label_2711
	.word	-76
	.word	4
	.word	_Label_2712
	.word	-80
	.word	4
	.word	_Label_2713
	.word	-84
	.word	4
	.word	_Label_2714
	.word	-88
	.word	4
	.word	_Label_2715
	.word	-92
	.word	4
	.word	_Label_2716
	.word	-96
	.word	4
	.word	_Label_2717
	.word	-100
	.word	4
	.word	_Label_2718
	.word	-104
	.word	4
	.word	_Label_2719
	.word	-108
	.word	4
	.word	_Label_2720
	.word	-112
	.word	4
	.word	_Label_2721
	.word	-116
	.word	4
	.word	_Label_2722
	.word	-120
	.word	4
	.word	_Label_2723
	.word	-124
	.word	4
	.word	_Label_2724
	.word	-128
	.word	4
	.word	_Label_2725
	.word	-132
	.word	4
	.word	_Label_2726
	.word	-136
	.word	4
	.word	_Label_2727
	.word	-140
	.word	4
	.word	_Label_2728
	.word	-144
	.word	4
	.word	_Label_2729
	.word	-148
	.word	4
	.word	_Label_2730
	.word	-152
	.word	4
	.word	_Label_2731
	.word	-156
	.word	4
	.word	_Label_2732
	.word	-160
	.word	4
	.word	_Label_2733
	.word	-164
	.word	4
	.word	_Label_2734
	.word	-168
	.word	4
	.word	0
_Label_2693:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2694:
	.ascii	"Pself\0"
	.align
_Label_2695:
	.byte	'?'
	.ascii	"_temp_2692\0"
	.align
_Label_2696:
	.byte	'?'
	.ascii	"_temp_2690\0"
	.align
_Label_2697:
	.byte	'?'
	.ascii	"_temp_2689\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2686\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2685\0"
	.align
_Label_2700:
	.byte	'?'
	.ascii	"_temp_2683\0"
	.align
_Label_2701:
	.byte	'?'
	.ascii	"_temp_2682\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2679\0"
	.align
_Label_2703:
	.byte	'?'
	.ascii	"_temp_2678\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2676\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2675\0"
	.align
_Label_2706:
	.byte	'?'
	.ascii	"_temp_2672\0"
	.align
_Label_2707:
	.byte	'?'
	.ascii	"_temp_2671\0"
	.align
_Label_2708:
	.byte	'?'
	.ascii	"_temp_2669\0"
	.align
_Label_2709:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2710:
	.byte	'?'
	.ascii	"_temp_2665\0"
	.align
_Label_2711:
	.byte	'?'
	.ascii	"_temp_2664\0"
	.align
_Label_2712:
	.byte	'?'
	.ascii	"_temp_2662\0"
	.align
_Label_2713:
	.byte	'?'
	.ascii	"_temp_2661\0"
	.align
_Label_2714:
	.byte	'?'
	.ascii	"_temp_2660\0"
	.align
_Label_2715:
	.byte	'?'
	.ascii	"_temp_2659\0"
	.align
_Label_2716:
	.byte	'?'
	.ascii	"_temp_2656\0"
	.align
_Label_2717:
	.byte	'?'
	.ascii	"_temp_2655\0"
	.align
_Label_2718:
	.byte	'?'
	.ascii	"_temp_2654\0"
	.align
_Label_2719:
	.byte	'?'
	.ascii	"_temp_2653\0"
	.align
_Label_2720:
	.byte	'?'
	.ascii	"_temp_2652\0"
	.align
_Label_2721:
	.byte	'?'
	.ascii	"_temp_2651\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2650\0"
	.align
_Label_2723:
	.byte	'?'
	.ascii	"_temp_2649\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2648\0"
	.align
_Label_2725:
	.byte	'?'
	.ascii	"_temp_2647\0"
	.align
_Label_2726:
	.byte	'?'
	.ascii	"_temp_2646\0"
	.align
_Label_2727:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2728:
	.byte	'?'
	.ascii	"_temp_2644\0"
	.align
_Label_2729:
	.byte	'?'
	.ascii	"_temp_2643\0"
	.align
_Label_2730:
	.byte	'?'
	.ascii	"_temp_2642\0"
	.align
_Label_2731:
	.byte	'?'
	.ascii	"_temp_2641\0"
	.align
_Label_2732:
	.byte	'?'
	.ascii	"_temp_2636\0"
	.align
_Label_2733:
	.byte	'?'
	.ascii	"_temp_2635\0"
	.align
_Label_2734:
	.byte	'I'
	.ascii	"j\0"
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
_Label_4075:
	push	r0
	sub	r1,1,r1
	bne	_Label_4075
	mov	1321,r13		! source line 1321
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1326,r13		! source line 1326
	mov	"\0\0RE",r10
!   _temp_2737 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2737 [entry ] into _temp_2738
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
!   Data Move: _temp_2736 = *_temp_2738  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2735 = _temp_2736 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2735  (sizeInBytes=4)
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
	.word	_Label_2739
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2740
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2741
	.word	12
	.word	4
	.word	_Label_2742
	.word	-12
	.word	4
	.word	_Label_2743
	.word	-16
	.word	4
	.word	_Label_2744
	.word	-20
	.word	4
	.word	_Label_2745
	.word	-24
	.word	4
	.word	0
_Label_2739:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2740:
	.ascii	"Pself\0"
	.align
_Label_2741:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2742:
	.byte	'?'
	.ascii	"_temp_2738\0"
	.align
_Label_2743:
	.byte	'?'
	.ascii	"_temp_2737\0"
	.align
_Label_2744:
	.byte	'?'
	.ascii	"_temp_2736\0"
	.align
_Label_2745:
	.byte	'?'
	.ascii	"_temp_2735\0"
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
_Label_4076:
	push	r0
	sub	r1,1,r1
	bne	_Label_4076
	mov	1331,r13		! source line 1331
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1335,r13		! source line 1335
	mov	"\0\0RE",r10
!   _temp_2748 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2748 [entry ] into _temp_2749
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
!   Data Move: _temp_2747 = *_temp_2749  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2746 = _temp_2747 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2746  (sizeInBytes=4)
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
	.word	_Label_2750
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2751
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2752
	.word	12
	.word	4
	.word	_Label_2753
	.word	-12
	.word	4
	.word	_Label_2754
	.word	-16
	.word	4
	.word	_Label_2755
	.word	-20
	.word	4
	.word	_Label_2756
	.word	-24
	.word	4
	.word	0
_Label_2750:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2751:
	.ascii	"Pself\0"
	.align
_Label_2752:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2749\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2748\0"
	.align
_Label_2755:
	.byte	'?'
	.ascii	"_temp_2747\0"
	.align
_Label_2756:
	.byte	'?'
	.ascii	"_temp_2746\0"
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
_Label_4077:
	push	r0
	sub	r1,1,r1
	bne	_Label_4077
	mov	1340,r13		! source line 1340
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1345,r13		! source line 1345
	mov	"\0\0AS",r10
!   _temp_2757 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2757 [entry ] into _temp_2758
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
!   _temp_2762 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2762 [entry ] into _temp_2763
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
!   Data Move: _temp_2761 = *_temp_2763  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2760 = _temp_2761 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2759 = _temp_2760 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2758 = _temp_2759  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1345,r13		! source line 1345
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
	.word	_Label_2764
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2765
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2766
	.word	12
	.word	4
	.word	_Label_2767
	.word	16
	.word	4
	.word	_Label_2768
	.word	-12
	.word	4
	.word	_Label_2769
	.word	-16
	.word	4
	.word	_Label_2770
	.word	-20
	.word	4
	.word	_Label_2771
	.word	-24
	.word	4
	.word	_Label_2772
	.word	-28
	.word	4
	.word	_Label_2773
	.word	-32
	.word	4
	.word	_Label_2774
	.word	-36
	.word	4
	.word	0
_Label_2764:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2765:
	.ascii	"Pself\0"
	.align
_Label_2766:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2767:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2768:
	.byte	'?'
	.ascii	"_temp_2763\0"
	.align
_Label_2769:
	.byte	'?'
	.ascii	"_temp_2762\0"
	.align
_Label_2770:
	.byte	'?'
	.ascii	"_temp_2761\0"
	.align
_Label_2771:
	.byte	'?'
	.ascii	"_temp_2760\0"
	.align
_Label_2772:
	.byte	'?'
	.ascii	"_temp_2759\0"
	.align
_Label_2773:
	.byte	'?'
	.ascii	"_temp_2758\0"
	.align
_Label_2774:
	.byte	'?'
	.ascii	"_temp_2757\0"
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
_Label_4078:
	push	r0
	sub	r1,1,r1
	bne	_Label_4078
	mov	1350,r13		! source line 1350
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1354,r13		! source line 1354
	mov	"\0\0RE",r10
!   _temp_2778 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2778 [entry ] into _temp_2779
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
!   Data Move: _temp_2777 = *_temp_2779  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2776 = _temp_2777 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2776) then goto _Label_2780
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2780
!   _temp_2775 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2781
_Label_2780:
!   _temp_2775 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2781:
!   ReturnResult: _temp_2775  (sizeInBytes=1)
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
	.word	_Label_2782
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2783
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2784
	.word	12
	.word	4
	.word	_Label_2785
	.word	-16
	.word	4
	.word	_Label_2786
	.word	-20
	.word	4
	.word	_Label_2787
	.word	-24
	.word	4
	.word	_Label_2788
	.word	-28
	.word	4
	.word	_Label_2789
	.word	-9
	.word	1
	.word	0
_Label_2782:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2783:
	.ascii	"Pself\0"
	.align
_Label_2784:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2785:
	.byte	'?'
	.ascii	"_temp_2779\0"
	.align
_Label_2786:
	.byte	'?'
	.ascii	"_temp_2778\0"
	.align
_Label_2787:
	.byte	'?'
	.ascii	"_temp_2777\0"
	.align
_Label_2788:
	.byte	'?'
	.ascii	"_temp_2776\0"
	.align
_Label_2789:
	.byte	'C'
	.ascii	"_temp_2775\0"
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
_Label_4079:
	push	r0
	sub	r1,1,r1
	bne	_Label_4079
	mov	1359,r13		! source line 1359
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1363,r13		! source line 1363
	mov	"\0\0RE",r10
!   _temp_2793 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2793 [entry ] into _temp_2794
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
!   Data Move: _temp_2792 = *_temp_2794  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2791 = _temp_2792 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2791) then goto _Label_2795
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2795
!   _temp_2790 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2796
_Label_2795:
!   _temp_2790 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2796:
!   ReturnResult: _temp_2790  (sizeInBytes=1)
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
	.word	_Label_2797
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2798
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2799
	.word	12
	.word	4
	.word	_Label_2800
	.word	-16
	.word	4
	.word	_Label_2801
	.word	-20
	.word	4
	.word	_Label_2802
	.word	-24
	.word	4
	.word	_Label_2803
	.word	-28
	.word	4
	.word	_Label_2804
	.word	-9
	.word	1
	.word	0
_Label_2797:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2798:
	.ascii	"Pself\0"
	.align
_Label_2799:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2800:
	.byte	'?'
	.ascii	"_temp_2794\0"
	.align
_Label_2801:
	.byte	'?'
	.ascii	"_temp_2793\0"
	.align
_Label_2802:
	.byte	'?'
	.ascii	"_temp_2792\0"
	.align
_Label_2803:
	.byte	'?'
	.ascii	"_temp_2791\0"
	.align
_Label_2804:
	.byte	'C'
	.ascii	"_temp_2790\0"
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
_Label_4080:
	push	r0
	sub	r1,1,r1
	bne	_Label_4080
	mov	1368,r13		! source line 1368
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1372,r13		! source line 1372
	mov	"\0\0RE",r10
!   _temp_2808 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2808 [entry ] into _temp_2809
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
!   Data Move: _temp_2807 = *_temp_2809  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2806 = _temp_2807 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2806) then goto _Label_2810
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2810
!   _temp_2805 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2811
_Label_2810:
!   _temp_2805 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2811:
!   ReturnResult: _temp_2805  (sizeInBytes=1)
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
	.word	_Label_2812
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2813
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2814
	.word	12
	.word	4
	.word	_Label_2815
	.word	-16
	.word	4
	.word	_Label_2816
	.word	-20
	.word	4
	.word	_Label_2817
	.word	-24
	.word	4
	.word	_Label_2818
	.word	-28
	.word	4
	.word	_Label_2819
	.word	-9
	.word	1
	.word	0
_Label_2812:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2813:
	.ascii	"Pself\0"
	.align
_Label_2814:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2815:
	.byte	'?'
	.ascii	"_temp_2809\0"
	.align
_Label_2816:
	.byte	'?'
	.ascii	"_temp_2808\0"
	.align
_Label_2817:
	.byte	'?'
	.ascii	"_temp_2807\0"
	.align
_Label_2818:
	.byte	'?'
	.ascii	"_temp_2806\0"
	.align
_Label_2819:
	.byte	'C'
	.ascii	"_temp_2805\0"
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
_Label_4081:
	push	r0
	sub	r1,1,r1
	bne	_Label_4081
	mov	1377,r13		! source line 1377
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1381,r13		! source line 1381
	mov	"\0\0RE",r10
!   _temp_2823 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2823 [entry ] into _temp_2824
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
!   Data Move: _temp_2822 = *_temp_2824  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2821 = _temp_2822 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2821) then goto _Label_2825
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2825
!   _temp_2820 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2826
_Label_2825:
!   _temp_2820 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2826:
!   ReturnResult: _temp_2820  (sizeInBytes=1)
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
	.word	_Label_2827
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2828
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2829
	.word	12
	.word	4
	.word	_Label_2830
	.word	-16
	.word	4
	.word	_Label_2831
	.word	-20
	.word	4
	.word	_Label_2832
	.word	-24
	.word	4
	.word	_Label_2833
	.word	-28
	.word	4
	.word	_Label_2834
	.word	-9
	.word	1
	.word	0
_Label_2827:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2828:
	.ascii	"Pself\0"
	.align
_Label_2829:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2830:
	.byte	'?'
	.ascii	"_temp_2824\0"
	.align
_Label_2831:
	.byte	'?'
	.ascii	"_temp_2823\0"
	.align
_Label_2832:
	.byte	'?'
	.ascii	"_temp_2822\0"
	.align
_Label_2833:
	.byte	'?'
	.ascii	"_temp_2821\0"
	.align
_Label_2834:
	.byte	'C'
	.ascii	"_temp_2820\0"
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
_Label_4082:
	push	r0
	sub	r1,1,r1
	bne	_Label_4082
	mov	1386,r13		! source line 1386
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1390,r13		! source line 1390
	mov	"\0\0AS",r10
!   _temp_2835 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2835 [entry ] into _temp_2836
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
!   _temp_2839 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2839 [entry ] into _temp_2840
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
!   Data Move: _temp_2838 = *_temp_2840  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2837 = _temp_2838 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2836 = _temp_2837  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1390,r13		! source line 1390
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
	.word	_Label_2841
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2842
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2843
	.word	12
	.word	4
	.word	_Label_2844
	.word	-12
	.word	4
	.word	_Label_2845
	.word	-16
	.word	4
	.word	_Label_2846
	.word	-20
	.word	4
	.word	_Label_2847
	.word	-24
	.word	4
	.word	_Label_2848
	.word	-28
	.word	4
	.word	_Label_2849
	.word	-32
	.word	4
	.word	0
_Label_2841:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2842:
	.ascii	"Pself\0"
	.align
_Label_2843:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2844:
	.byte	'?'
	.ascii	"_temp_2840\0"
	.align
_Label_2845:
	.byte	'?'
	.ascii	"_temp_2839\0"
	.align
_Label_2846:
	.byte	'?'
	.ascii	"_temp_2838\0"
	.align
_Label_2847:
	.byte	'?'
	.ascii	"_temp_2837\0"
	.align
_Label_2848:
	.byte	'?'
	.ascii	"_temp_2836\0"
	.align
_Label_2849:
	.byte	'?'
	.ascii	"_temp_2835\0"
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
_Label_4083:
	push	r0
	sub	r1,1,r1
	bne	_Label_4083
	mov	1395,r13		! source line 1395
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1399,r13		! source line 1399
	mov	"\0\0AS",r10
!   _temp_2850 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2850 [entry ] into _temp_2851
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
!   _temp_2854 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2854 [entry ] into _temp_2855
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
!   Data Move: _temp_2853 = *_temp_2855  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2852 = _temp_2853 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2851 = _temp_2852  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1399,r13		! source line 1399
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
	.word	_Label_2856
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2857
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2858
	.word	12
	.word	4
	.word	_Label_2859
	.word	-12
	.word	4
	.word	_Label_2860
	.word	-16
	.word	4
	.word	_Label_2861
	.word	-20
	.word	4
	.word	_Label_2862
	.word	-24
	.word	4
	.word	_Label_2863
	.word	-28
	.word	4
	.word	_Label_2864
	.word	-32
	.word	4
	.word	0
_Label_2856:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2857:
	.ascii	"Pself\0"
	.align
_Label_2858:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2859:
	.byte	'?'
	.ascii	"_temp_2855\0"
	.align
_Label_2860:
	.byte	'?'
	.ascii	"_temp_2854\0"
	.align
_Label_2861:
	.byte	'?'
	.ascii	"_temp_2853\0"
	.align
_Label_2862:
	.byte	'?'
	.ascii	"_temp_2852\0"
	.align
_Label_2863:
	.byte	'?'
	.ascii	"_temp_2851\0"
	.align
_Label_2864:
	.byte	'?'
	.ascii	"_temp_2850\0"
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
_Label_4084:
	push	r0
	sub	r1,1,r1
	bne	_Label_4084
	mov	1404,r13		! source line 1404
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1408,r13		! source line 1408
	mov	"\0\0AS",r10
!   _temp_2865 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2865 [entry ] into _temp_2866
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
!   _temp_2869 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2869 [entry ] into _temp_2870
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
!   Data Move: _temp_2868 = *_temp_2870  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2867 = _temp_2868 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2866 = _temp_2867  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1408,r13		! source line 1408
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
	.word	_Label_2871
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2872
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2873
	.word	12
	.word	4
	.word	_Label_2874
	.word	-12
	.word	4
	.word	_Label_2875
	.word	-16
	.word	4
	.word	_Label_2876
	.word	-20
	.word	4
	.word	_Label_2877
	.word	-24
	.word	4
	.word	_Label_2878
	.word	-28
	.word	4
	.word	_Label_2879
	.word	-32
	.word	4
	.word	0
_Label_2871:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2872:
	.ascii	"Pself\0"
	.align
_Label_2873:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2874:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
_Label_2875:
	.byte	'?'
	.ascii	"_temp_2869\0"
	.align
_Label_2876:
	.byte	'?'
	.ascii	"_temp_2868\0"
	.align
_Label_2877:
	.byte	'?'
	.ascii	"_temp_2867\0"
	.align
_Label_2878:
	.byte	'?'
	.ascii	"_temp_2866\0"
	.align
_Label_2879:
	.byte	'?'
	.ascii	"_temp_2865\0"
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
_Label_4085:
	push	r0
	sub	r1,1,r1
	bne	_Label_4085
	mov	1413,r13		! source line 1413
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1417,r13		! source line 1417
	mov	"\0\0AS",r10
!   _temp_2880 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2880 [entry ] into _temp_2881
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
!   _temp_2884 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2884 [entry ] into _temp_2885
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
!   Data Move: _temp_2883 = *_temp_2885  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2882 = _temp_2883 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2881 = _temp_2882  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1417,r13		! source line 1417
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
	.word	_Label_2886
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2887
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2888
	.word	12
	.word	4
	.word	_Label_2889
	.word	-12
	.word	4
	.word	_Label_2890
	.word	-16
	.word	4
	.word	_Label_2891
	.word	-20
	.word	4
	.word	_Label_2892
	.word	-24
	.word	4
	.word	_Label_2893
	.word	-28
	.word	4
	.word	_Label_2894
	.word	-32
	.word	4
	.word	0
_Label_2886:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2887:
	.ascii	"Pself\0"
	.align
_Label_2888:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2889:
	.byte	'?'
	.ascii	"_temp_2885\0"
	.align
_Label_2890:
	.byte	'?'
	.ascii	"_temp_2884\0"
	.align
_Label_2891:
	.byte	'?'
	.ascii	"_temp_2883\0"
	.align
_Label_2892:
	.byte	'?'
	.ascii	"_temp_2882\0"
	.align
_Label_2893:
	.byte	'?'
	.ascii	"_temp_2881\0"
	.align
_Label_2894:
	.byte	'?'
	.ascii	"_temp_2880\0"
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
_Label_4086:
	push	r0
	sub	r1,1,r1
	bne	_Label_4086
	mov	1422,r13		! source line 1422
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1426,r13		! source line 1426
	mov	"\0\0AS",r10
!   _temp_2895 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2895 [entry ] into _temp_2896
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
!   _temp_2899 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2899 [entry ] into _temp_2900
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
!   Data Move: _temp_2898 = *_temp_2900  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2897 = _temp_2898 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2896 = _temp_2897  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1426,r13		! source line 1426
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
	.word	_Label_2901
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2902
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2903
	.word	12
	.word	4
	.word	_Label_2904
	.word	-12
	.word	4
	.word	_Label_2905
	.word	-16
	.word	4
	.word	_Label_2906
	.word	-20
	.word	4
	.word	_Label_2907
	.word	-24
	.word	4
	.word	_Label_2908
	.word	-28
	.word	4
	.word	_Label_2909
	.word	-32
	.word	4
	.word	0
_Label_2901:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2902:
	.ascii	"Pself\0"
	.align
_Label_2903:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2904:
	.byte	'?'
	.ascii	"_temp_2900\0"
	.align
_Label_2905:
	.byte	'?'
	.ascii	"_temp_2899\0"
	.align
_Label_2906:
	.byte	'?'
	.ascii	"_temp_2898\0"
	.align
_Label_2907:
	.byte	'?'
	.ascii	"_temp_2897\0"
	.align
_Label_2908:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_2909:
	.byte	'?'
	.ascii	"_temp_2895\0"
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
_Label_4087:
	push	r0
	sub	r1,1,r1
	bne	_Label_4087
	mov	1431,r13		! source line 1431
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1435,r13		! source line 1435
	mov	"\0\0AS",r10
!   _temp_2910 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2910 [entry ] into _temp_2911
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
!   _temp_2914 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2914 [entry ] into _temp_2915
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
!   Data Move: _temp_2913 = *_temp_2915  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2912 = _temp_2913 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2911 = _temp_2912  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1435,r13		! source line 1435
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
	.word	_Label_2916
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2917
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2918
	.word	12
	.word	4
	.word	_Label_2919
	.word	-12
	.word	4
	.word	_Label_2920
	.word	-16
	.word	4
	.word	_Label_2921
	.word	-20
	.word	4
	.word	_Label_2922
	.word	-24
	.word	4
	.word	_Label_2923
	.word	-28
	.word	4
	.word	_Label_2924
	.word	-32
	.word	4
	.word	0
_Label_2916:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2917:
	.ascii	"Pself\0"
	.align
_Label_2918:
	.byte	'I'
	.ascii	"entry\0"
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
	.ascii	"_temp_2911\0"
	.align
_Label_2924:
	.byte	'?'
	.ascii	"_temp_2910\0"
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
_Label_4088:
	push	r0
	sub	r1,1,r1
	bne	_Label_4088
	mov	1440,r13		! source line 1440
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1444,r13		! source line 1444
	mov	"\0\0AS",r10
!   _temp_2925 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2925 [entry ] into _temp_2926
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
!   _temp_2929 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2929 [entry ] into _temp_2930
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
!   Data Move: _temp_2928 = *_temp_2930  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2927 = _temp_2928 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2926 = _temp_2927  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1444,r13		! source line 1444
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
	.word	_Label_2931
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2932
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2933
	.word	12
	.word	4
	.word	_Label_2934
	.word	-12
	.word	4
	.word	_Label_2935
	.word	-16
	.word	4
	.word	_Label_2936
	.word	-20
	.word	4
	.word	_Label_2937
	.word	-24
	.word	4
	.word	_Label_2938
	.word	-28
	.word	4
	.word	_Label_2939
	.word	-32
	.word	4
	.word	0
_Label_2931:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2932:
	.ascii	"Pself\0"
	.align
_Label_2933:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2934:
	.byte	'?'
	.ascii	"_temp_2930\0"
	.align
_Label_2935:
	.byte	'?'
	.ascii	"_temp_2929\0"
	.align
_Label_2936:
	.byte	'?'
	.ascii	"_temp_2928\0"
	.align
_Label_2937:
	.byte	'?'
	.ascii	"_temp_2927\0"
	.align
_Label_2938:
	.byte	'?'
	.ascii	"_temp_2926\0"
	.align
_Label_2939:
	.byte	'?'
	.ascii	"_temp_2925\0"
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
_Label_4089:
	push	r0
	sub	r1,1,r1
	bne	_Label_4089
	mov	1449,r13		! source line 1449
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1453,r13		! source line 1453
	mov	"\0\0AS",r10
!   _temp_2940 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2940 [entry ] into _temp_2941
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
!   _temp_2944 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2944 [entry ] into _temp_2945
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
!   Data Move: _temp_2943 = *_temp_2945  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2942 = _temp_2943 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2941 = _temp_2942  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
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
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_2946
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2947
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2948
	.word	12
	.word	4
	.word	_Label_2949
	.word	-12
	.word	4
	.word	_Label_2950
	.word	-16
	.word	4
	.word	_Label_2951
	.word	-20
	.word	4
	.word	_Label_2952
	.word	-24
	.word	4
	.word	_Label_2953
	.word	-28
	.word	4
	.word	_Label_2954
	.word	-32
	.word	4
	.word	0
_Label_2946:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2947:
	.ascii	"Pself\0"
	.align
_Label_2948:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2949:
	.byte	'?'
	.ascii	"_temp_2945\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2944\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2943\0"
	.align
_Label_2952:
	.byte	'?'
	.ascii	"_temp_2942\0"
	.align
_Label_2953:
	.byte	'?'
	.ascii	"_temp_2941\0"
	.align
_Label_2954:
	.byte	'?'
	.ascii	"_temp_2940\0"
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
_Label_4090:
	push	r0
	sub	r1,1,r1
	bne	_Label_4090
	mov	1458,r13		! source line 1458
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2956 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2956 [0 ] into _temp_2957
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
!   _temp_2955 = _temp_2957		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2958 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2955  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2958  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1464,r13		! source line 1464
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1464,r13		! source line 1464
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
	.word	_Label_2959
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2960
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	0
_Label_2959:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2960:
	.ascii	"Pself\0"
	.align
_Label_2961:
	.byte	'?'
	.ascii	"_temp_2958\0"
	.align
_Label_2962:
	.byte	'?'
	.ascii	"_temp_2957\0"
	.align
_Label_2963:
	.byte	'?'
	.ascii	"_temp_2956\0"
	.align
_Label_2964:
	.byte	'?'
	.ascii	"_temp_2955\0"
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
_Label_4091:
	push	r0
	sub	r1,1,r1
	bne	_Label_4091
	mov	1469,r13		! source line 1469
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1484,r13		! source line 1484
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2965
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2965
	jmp	_Label_2966
_Label_2965:
! THEN...
	mov	1485,r13		! source line 1485
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1485,r13		! source line 1485
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2967
_Label_2966:
! ELSE...
	mov	1486,r13		! source line 1486
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1486,r13		! source line 1486
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2969		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2969
!	jmp	_Label_2968
_Label_2968:
! THEN...
	mov	1487,r13		! source line 1487
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1487,r13		! source line 1487
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2969:
! END IF...
_Label_2967:
! ASSIGNMENT STATEMENT...
	mov	1489,r13		! source line 1489
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
	mov	1490,r13		! source line 1490
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
	mov	1493,r13		! source line 1493
	mov	"\0\0WH",r10
_Label_2970:
!	jmp	_Label_2971
_Label_2971:
	mov	1493,r13		! source line 1493
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1494,r13		! source line 1494
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2974		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2974
!	jmp	_Label_2973
_Label_2973:
! THEN...
	mov	1495,r13		! source line 1495
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2975 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2975  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1495,r13		! source line 1495
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2974:
! IF STATEMENT...
	mov	1498,r13		! source line 1498
	mov	"\0\0IF",r10
	mov	1498,r13		! source line 1498
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2979) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2978  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2978 then goto _Label_2977 else goto _Label_2976
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2976
	jmp	_Label_2977
_Label_2976:
! THEN...
	mov	1499,r13		! source line 1499
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2980 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2980  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1499,r13		! source line 1499
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1500,r13		! source line 1500
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2977:
! ASSIGNMENT STATEMENT...
	mov	1502,r13		! source line 1502
	mov	"\0\0AS",r10
	mov	1502,r13		! source line 1502
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2982) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2981  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2981 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1504,r13		! source line 1504
	mov	"\0\0WH",r10
_Label_2983:
!   if offset >= 8192 then goto _Label_2985		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2985
!	jmp	_Label_2984
_Label_2984:
	mov	1504,r13		! source line 1504
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1507,r13		! source line 1507
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2986 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2986  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1508,r13		! source line 1508
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1509,r13		! source line 1509
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1510,r13		! source line 1510
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1511,r13		! source line 1511
	mov	"\0\0AS",r10
!   curCopied = curCopied + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1512,r13		! source line 1512
	mov	"\0\0IF",r10
!   if curCopied != numBytes then goto _Label_2988		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2988
!	jmp	_Label_2987
_Label_2987:
! THEN...
	mov	1513,r13		! source line 1513
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1513,r13		! source line 1513
	mov	"\0\0RE",r10
!   ReturnResult: curCopied  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2988:
! END WHILE...
	jmp	_Label_2983
_Label_2985:
! ASSIGNMENT STATEMENT...
	mov	1516,r13		! source line 1516
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1517,r13		! source line 1517
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2970
_Label_2972:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2989
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2990
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2991
	.word	12
	.word	4
	.word	_Label_2992
	.word	16
	.word	4
	.word	_Label_2993
	.word	20
	.word	4
	.word	_Label_2994
	.word	-9
	.word	1
	.word	_Label_2995
	.word	-16
	.word	4
	.word	_Label_2996
	.word	-20
	.word	4
	.word	_Label_2997
	.word	-24
	.word	4
	.word	_Label_2998
	.word	-28
	.word	4
	.word	_Label_2999
	.word	-10
	.word	1
	.word	_Label_3000
	.word	-32
	.word	4
	.word	_Label_3001
	.word	-36
	.word	4
	.word	_Label_3002
	.word	-40
	.word	4
	.word	_Label_3003
	.word	-44
	.word	4
	.word	_Label_3004
	.word	-48
	.word	4
	.word	0
_Label_2989:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2990:
	.ascii	"Pself\0"
	.align
_Label_2991:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2992:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2993:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2994:
	.byte	'C'
	.ascii	"_temp_2986\0"
	.align
_Label_2995:
	.byte	'?'
	.ascii	"_temp_2982\0"
	.align
_Label_2996:
	.byte	'?'
	.ascii	"_temp_2981\0"
	.align
_Label_2997:
	.byte	'?'
	.ascii	"_temp_2980\0"
	.align
_Label_2998:
	.byte	'?'
	.ascii	"_temp_2979\0"
	.align
_Label_2999:
	.byte	'C'
	.ascii	"_temp_2978\0"
	.align
_Label_3000:
	.byte	'?'
	.ascii	"_temp_2975\0"
	.align
_Label_3001:
	.byte	'I'
	.ascii	"curCopied\0"
	.align
_Label_3002:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_3003:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3004:
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
_Label_4092:
	push	r0
	sub	r1,1,r1
	bne	_Label_4092
	mov	1523,r13		! source line 1523
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1534,r13		! source line 1534
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_3005
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_3005
	jmp	_Label_3006
_Label_3005:
! THEN...
	mov	1535,r13		! source line 1535
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1535,r13		! source line 1535
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_3007
_Label_3006:
! ELSE...
	mov	1536,r13		! source line 1536
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1536,r13		! source line 1536
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_3009		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3009
!	jmp	_Label_3008
_Label_3008:
! THEN...
	mov	1537,r13		! source line 1537
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1537,r13		! source line 1537
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3009:
! END IF...
_Label_3007:
! ASSIGNMENT STATEMENT...
	mov	1539,r13		! source line 1539
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
	mov	1540,r13		! source line 1540
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
	mov	1541,r13		! source line 1541
	mov	"\0\0WH",r10
_Label_3010:
!	jmp	_Label_3011
_Label_3011:
	mov	1541,r13		! source line 1541
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1542,r13		! source line 1542
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_3016		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3016
	jmp	_Label_3013
_Label_3016:
	mov	1543,r13		! source line 1543
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3018) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3017  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_3017 then goto _Label_3015 else goto _Label_3013
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_3013
	jmp	_Label_3015
_Label_3015:
	mov	1544,r13		! source line 1544
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3020) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3019  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3019 then goto _Label_3014 else goto _Label_3013
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3013
	jmp	_Label_3014
_Label_3013:
! THEN...
	mov	1545,r13		! source line 1545
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1545,r13		! source line 1545
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3014:
! ASSIGNMENT STATEMENT...
	mov	1547,r13		! source line 1547
	mov	"\0\0AS",r10
	mov	1547,r13		! source line 1547
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_3022) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3021  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_3021 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1548,r13		! source line 1548
	mov	"\0\0WH",r10
_Label_3023:
!   if offset >= 8192 then goto _Label_3025		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3025
!	jmp	_Label_3024
_Label_3024:
	mov	1548,r13		! source line 1548
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1549,r13		! source line 1549
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3026 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_3026  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1550,r13		! source line 1550
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1551,r13		! source line 1551
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1552,r13		! source line 1552
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1553,r13		! source line 1553
	mov	"\0\0AS",r10
!   curCopied = curCopied + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1554,r13		! source line 1554
	mov	"\0\0IF",r10
!   if curCopied != numBytes then goto _Label_3028		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_3028
!	jmp	_Label_3027
_Label_3027:
! THEN...
	mov	1555,r13		! source line 1555
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1555,r13		! source line 1555
	mov	"\0\0RE",r10
!   ReturnResult: curCopied  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3028:
! END WHILE...
	jmp	_Label_3023
_Label_3025:
! ASSIGNMENT STATEMENT...
	mov	1558,r13		! source line 1558
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1559,r13		! source line 1559
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_3010
_Label_3012:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_3029
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_3030
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3031
	.word	12
	.word	4
	.word	_Label_3032
	.word	16
	.word	4
	.word	_Label_3033
	.word	20
	.word	4
	.word	_Label_3034
	.word	-9
	.word	1
	.word	_Label_3035
	.word	-16
	.word	4
	.word	_Label_3036
	.word	-20
	.word	4
	.word	_Label_3037
	.word	-24
	.word	4
	.word	_Label_3038
	.word	-10
	.word	1
	.word	_Label_3039
	.word	-28
	.word	4
	.word	_Label_3040
	.word	-11
	.word	1
	.word	_Label_3041
	.word	-32
	.word	4
	.word	_Label_3042
	.word	-36
	.word	4
	.word	_Label_3043
	.word	-40
	.word	4
	.word	_Label_3044
	.word	-44
	.word	4
	.word	0
_Label_3029:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_3030:
	.ascii	"Pself\0"
	.align
_Label_3031:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3032:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_3033:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3034:
	.byte	'C'
	.ascii	"_temp_3026\0"
	.align
_Label_3035:
	.byte	'?'
	.ascii	"_temp_3022\0"
	.align
_Label_3036:
	.byte	'?'
	.ascii	"_temp_3021\0"
	.align
_Label_3037:
	.byte	'?'
	.ascii	"_temp_3020\0"
	.align
_Label_3038:
	.byte	'C'
	.ascii	"_temp_3019\0"
	.align
_Label_3039:
	.byte	'?'
	.ascii	"_temp_3018\0"
	.align
_Label_3040:
	.byte	'C'
	.ascii	"_temp_3017\0"
	.align
_Label_3041:
	.byte	'I'
	.ascii	"curCopied\0"
	.align
_Label_3042:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_3043:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3044:
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
_Label_4093:
	push	r0
	sub	r1,1,r1
	bne	_Label_4093
	mov	1565,r13		! source line 1565
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1589,r13		! source line 1589
	mov	"\0\0IF",r10
	mov	1589,r13		! source line 1589
	mov	"\0\0SE",r10
!   _temp_3048 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_3049) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3048  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3047  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_3047 >= 4 then goto _Label_3046		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3046
!	jmp	_Label_3045
_Label_3045:
! THEN...
	mov	1592,r13		! source line 1592
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1592,r13		! source line 1592
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3046:
! IF STATEMENT...
	mov	1596,r13		! source line 1596
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_3051		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3051
!	jmp	_Label_3050
_Label_3050:
! THEN...
	mov	1597,r13		! source line 1597
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1597,r13		! source line 1597
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3051:
! ASSIGNMENT STATEMENT...
	mov	1600,r13		! source line 1600
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
	mov	1602,r13		! source line 1602
	mov	"\0\0RE",r10
	mov	1602,r13		! source line 1602
	mov	"\0\0SE",r10
!   _temp_3054 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_3053 = _temp_3054 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_3055 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_3056) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3053  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_3055  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3052  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_3052  (sizeInBytes=4)
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
	.word	_Label_3057
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3058
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3059
	.word	12
	.word	4
	.word	_Label_3060
	.word	16
	.word	4
	.word	_Label_3061
	.word	20
	.word	4
	.word	_Label_3062
	.word	-12
	.word	4
	.word	_Label_3063
	.word	-16
	.word	4
	.word	_Label_3064
	.word	-20
	.word	4
	.word	_Label_3065
	.word	-24
	.word	4
	.word	_Label_3066
	.word	-28
	.word	4
	.word	_Label_3067
	.word	-32
	.word	4
	.word	_Label_3068
	.word	-36
	.word	4
	.word	_Label_3069
	.word	-40
	.word	4
	.word	_Label_3070
	.word	-44
	.word	4
	.word	0
_Label_3057:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_3058:
	.ascii	"Pself\0"
	.align
_Label_3059:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_3060:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3061:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_3062:
	.byte	'?'
	.ascii	"_temp_3056\0"
	.align
_Label_3063:
	.byte	'?'
	.ascii	"_temp_3055\0"
	.align
_Label_3064:
	.byte	'?'
	.ascii	"_temp_3054\0"
	.align
_Label_3065:
	.byte	'?'
	.ascii	"_temp_3053\0"
	.align
_Label_3066:
	.byte	'?'
	.ascii	"_temp_3052\0"
	.align
_Label_3067:
	.byte	'?'
	.ascii	"_temp_3049\0"
	.align
_Label_3068:
	.byte	'?'
	.ascii	"_temp_3048\0"
	.align
_Label_3069:
	.byte	'?'
	.ascii	"_temp_3047\0"
	.align
_Label_3070:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_3071
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_3071:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3072
	.word	_sourceFileName
	.word	307		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_3072:
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
_Label_4094:
	push	r0
	sub	r1,1,r1
	bne	_Label_4094
	mov	2300,r13		! source line 2300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3073 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3073  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2301,r13		! source line 2301
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2302,r13		! source line 2302
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2303,r13		! source line 2303
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2304,r13		! source line 2304
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2305,r13		! source line 2305
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2306,r13		! source line 2306
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2307,r13		! source line 2307
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2308,r13		! source line 2308
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
	mov	2309,r13		! source line 2309
	mov	"\0\0SE",r10
!   _temp_3075 = &semUsedInSynchMethods
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
	mov	2310,r13		! source line 2310
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
	mov	2311,r13		! source line 2311
	mov	"\0\0SE",r10
!   _temp_3077 = &diskBusy
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
	mov	2311,r13		! source line 2311
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
	.word	_Label_3078
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3079
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3080
	.word	-12
	.word	4
	.word	_Label_3081
	.word	-16
	.word	4
	.word	_Label_3082
	.word	-20
	.word	4
	.word	_Label_3083
	.word	-24
	.word	4
	.word	_Label_3084
	.word	-28
	.word	4
	.word	0
_Label_3078:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3079:
	.ascii	"Pself\0"
	.align
_Label_3080:
	.byte	'?'
	.ascii	"_temp_3077\0"
	.align
_Label_3081:
	.byte	'?'
	.ascii	"_temp_3076\0"
	.align
_Label_3082:
	.byte	'?'
	.ascii	"_temp_3075\0"
	.align
_Label_3083:
	.byte	'?'
	.ascii	"_temp_3074\0"
	.align
_Label_3084:
	.byte	'?'
	.ascii	"_temp_3073\0"
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
_Label_4095:
	push	r0
	sub	r1,1,r1
	bne	_Label_4095
	mov	2316,r13		! source line 2316
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2329,r13		! source line 2329
	mov	"\0\0SE",r10
!   _temp_3085 = &diskBusy
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
	mov	2330,r13		! source line 2330
	mov	"\0\0WH",r10
_Label_3086:
!	jmp	_Label_3087
_Label_3087:
	mov	2330,r13		! source line 2330
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2332,r13		! source line 2332
	mov	"\0\0SE",r10
!   _temp_3089 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3090) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_3089  sizeInBytes=4
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
	mov	2334,r13		! source line 2334
	mov	"\0\0SE",r10
!   _temp_3091 = &semUsedInSynchMethods
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
	mov	2337,r13		! source line 2337
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3100 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3094
	cmp	r1,2
	be	_Label_3095
	cmp	r1,3
	be	_Label_3096
	cmp	r1,4
	be	_Label_3097
	cmp	r1,5
	be	_Label_3098
	cmp	r1,6
	be	_Label_3099
	jmp	_Label_3092
! CASE 1...
_Label_3094:
! SEND STATEMENT...
	mov	2339,r13		! source line 2339
	mov	"\0\0SE",r10
!   _temp_3101 = &diskBusy
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
	mov	2340,r13		! source line 2340
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3095:
! CALL STATEMENT...
!   _temp_3102 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3102  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2342,r13		! source line 2342
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3096:
! CALL STATEMENT...
!   _temp_3103 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3103  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2344,r13		! source line 2344
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3097:
! CALL STATEMENT...
!   _temp_3104 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3104  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2346,r13		! source line 2346
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3098:
! BREAK STATEMENT...
	mov	2350,r13		! source line 2350
	mov	"\0\0BR",r10
	jmp	_Label_3093
! CASE 6...
_Label_3099:
! CALL STATEMENT...
!   _temp_3105 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3105  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2352,r13		! source line 2352
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3092:
! CALL STATEMENT...
!   _temp_3106 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3106  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2354,r13		! source line 2354
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3093:
! END WHILE...
	jmp	_Label_3086
_Label_3088:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_3107
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3108
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3109
	.word	12
	.word	4
	.word	_Label_3110
	.word	16
	.word	4
	.word	_Label_3111
	.word	20
	.word	4
	.word	_Label_3112
	.word	-12
	.word	4
	.word	_Label_3113
	.word	-16
	.word	4
	.word	_Label_3114
	.word	-20
	.word	4
	.word	_Label_3115
	.word	-24
	.word	4
	.word	_Label_3116
	.word	-28
	.word	4
	.word	_Label_3117
	.word	-32
	.word	4
	.word	_Label_3118
	.word	-36
	.word	4
	.word	_Label_3119
	.word	-40
	.word	4
	.word	_Label_3120
	.word	-44
	.word	4
	.word	_Label_3121
	.word	-48
	.word	4
	.word	_Label_3122
	.word	-52
	.word	4
	.word	0
_Label_3107:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_3108:
	.ascii	"Pself\0"
	.align
_Label_3109:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3110:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3111:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3112:
	.byte	'?'
	.ascii	"_temp_3106\0"
	.align
_Label_3113:
	.byte	'?'
	.ascii	"_temp_3105\0"
	.align
_Label_3114:
	.byte	'?'
	.ascii	"_temp_3104\0"
	.align
_Label_3115:
	.byte	'?'
	.ascii	"_temp_3103\0"
	.align
_Label_3116:
	.byte	'?'
	.ascii	"_temp_3102\0"
	.align
_Label_3117:
	.byte	'?'
	.ascii	"_temp_3101\0"
	.align
_Label_3118:
	.byte	'?'
	.ascii	"_temp_3100\0"
	.align
_Label_3119:
	.byte	'?'
	.ascii	"_temp_3091\0"
	.align
_Label_3120:
	.byte	'?'
	.ascii	"_temp_3090\0"
	.align
_Label_3121:
	.byte	'?'
	.ascii	"_temp_3089\0"
	.align
_Label_3122:
	.byte	'?'
	.ascii	"_temp_3085\0"
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
	mov	2363,r13		! source line 2363
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2378,r13		! source line 2378
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2381,r13		! source line 2381
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
	mov	2382,r13		! source line 2382
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
	mov	2383,r13		! source line 2383
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
	mov	2384,r13		! source line 2384
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
	mov	2384,r13		! source line 2384
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
	.word	_Label_3123
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3124
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3125
	.word	12
	.word	4
	.word	_Label_3126
	.word	16
	.word	4
	.word	_Label_3127
	.word	20
	.word	4
	.word	_Label_3128
	.word	24
	.word	4
	.word	0
_Label_3123:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_3124:
	.ascii	"Pself\0"
	.align
_Label_3125:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3126:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3127:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3128:
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
_Label_4096:
	push	r0
	sub	r1,1,r1
	bne	_Label_4096
	mov	2389,r13		! source line 2389
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2401,r13		! source line 2401
	mov	"\0\0SE",r10
!   _temp_3129 = &diskBusy
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
	mov	2402,r13		! source line 2402
	mov	"\0\0WH",r10
_Label_3130:
!	jmp	_Label_3131
_Label_3131:
	mov	2402,r13		! source line 2402
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2403,r13		! source line 2403
	mov	"\0\0SE",r10
!   _temp_3133 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3134) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_3133  sizeInBytes=4
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
	mov	2405,r13		! source line 2405
	mov	"\0\0SE",r10
!   _temp_3135 = &semUsedInSynchMethods
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
	mov	2408,r13		! source line 2408
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3144 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3138
	cmp	r1,2
	be	_Label_3139
	cmp	r1,3
	be	_Label_3140
	cmp	r1,4
	be	_Label_3141
	cmp	r1,5
	be	_Label_3142
	cmp	r1,6
	be	_Label_3143
	jmp	_Label_3136
! CASE 1...
_Label_3138:
! SEND STATEMENT...
	mov	2410,r13		! source line 2410
	mov	"\0\0SE",r10
!   _temp_3145 = &diskBusy
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
	mov	2411,r13		! source line 2411
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3139:
! CALL STATEMENT...
!   _temp_3146 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3146  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2413,r13		! source line 2413
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3140:
! CALL STATEMENT...
!   _temp_3147 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3147  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2415,r13		! source line 2415
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3141:
! CALL STATEMENT...
!   _temp_3148 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3148  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2417,r13		! source line 2417
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3142:
! BREAK STATEMENT...
	mov	2421,r13		! source line 2421
	mov	"\0\0BR",r10
	jmp	_Label_3137
! CASE 6...
_Label_3143:
! CALL STATEMENT...
!   _temp_3149 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3149  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2423,r13		! source line 2423
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3136:
! CALL STATEMENT...
!   _temp_3150 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3150  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2425,r13		! source line 2425
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3137:
! END WHILE...
	jmp	_Label_3130
_Label_3132:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_3151
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3152
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3153
	.word	12
	.word	4
	.word	_Label_3154
	.word	16
	.word	4
	.word	_Label_3155
	.word	20
	.word	4
	.word	_Label_3156
	.word	-12
	.word	4
	.word	_Label_3157
	.word	-16
	.word	4
	.word	_Label_3158
	.word	-20
	.word	4
	.word	_Label_3159
	.word	-24
	.word	4
	.word	_Label_3160
	.word	-28
	.word	4
	.word	_Label_3161
	.word	-32
	.word	4
	.word	_Label_3162
	.word	-36
	.word	4
	.word	_Label_3163
	.word	-40
	.word	4
	.word	_Label_3164
	.word	-44
	.word	4
	.word	_Label_3165
	.word	-48
	.word	4
	.word	_Label_3166
	.word	-52
	.word	4
	.word	0
_Label_3151:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_3152:
	.ascii	"Pself\0"
	.align
_Label_3153:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3154:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3155:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3156:
	.byte	'?'
	.ascii	"_temp_3150\0"
	.align
_Label_3157:
	.byte	'?'
	.ascii	"_temp_3149\0"
	.align
_Label_3158:
	.byte	'?'
	.ascii	"_temp_3148\0"
	.align
_Label_3159:
	.byte	'?'
	.ascii	"_temp_3147\0"
	.align
_Label_3160:
	.byte	'?'
	.ascii	"_temp_3146\0"
	.align
_Label_3161:
	.byte	'?'
	.ascii	"_temp_3145\0"
	.align
_Label_3162:
	.byte	'?'
	.ascii	"_temp_3144\0"
	.align
_Label_3163:
	.byte	'?'
	.ascii	"_temp_3135\0"
	.align
_Label_3164:
	.byte	'?'
	.ascii	"_temp_3134\0"
	.align
_Label_3165:
	.byte	'?'
	.ascii	"_temp_3133\0"
	.align
_Label_3166:
	.byte	'?'
	.ascii	"_temp_3129\0"
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
	mov	2434,r13		! source line 2434
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2449,r13		! source line 2449
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2451,r13		! source line 2451
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
	mov	2452,r13		! source line 2452
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
	mov	2453,r13		! source line 2453
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
	mov	2454,r13		! source line 2454
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
	mov	2454,r13		! source line 2454
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
	.word	_Label_3167
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3168
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3169
	.word	12
	.word	4
	.word	_Label_3170
	.word	16
	.word	4
	.word	_Label_3171
	.word	20
	.word	4
	.word	_Label_3172
	.word	24
	.word	4
	.word	0
_Label_3167:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_3168:
	.ascii	"Pself\0"
	.align
_Label_3169:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3170:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3171:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3172:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_3173
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
_Label_3173:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3174
	.word	_sourceFileName
	.word	330		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_3174:
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
_Label_4097:
	push	r0
	sub	r1,1,r1
	bne	_Label_4097
	mov	2465,r13		! source line 2465
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3175 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_3175  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2472,r13		! source line 2472
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2473,r13		! source line 2473
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
	mov	2474,r13		! source line 2474
	mov	"\0\0SE",r10
!   _temp_3177 = &fileManagerLock
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
	mov	2477,r13		! source line 2477
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
	mov	2478,r13		! source line 2478
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
	mov	2479,r13		! source line 2479
	mov	"\0\0SE",r10
!   _temp_3180 = &anFCBBecameFree
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
	mov	2480,r13		! source line 2480
	mov	"\0\0AS",r10
!   _temp_3181 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_3183 = &_temp_3182
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_3183 = _temp_3183 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3185 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_4098:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4098
!   _temp_3185 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_3187:
!   Data Move: *_temp_3183 = _temp_3185  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_4099:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4099
!   _temp_3183 = _temp_3183 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_3184 = _temp_3184 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_3184) then goto _Label_3187
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_3187
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_3188 = &_temp_3182
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4100
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4100:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3181 = *_temp_3188  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_4101:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4101
! FOR STATEMENT...
	mov	2482,r13		! source line 2482
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3193 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3194 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_3193  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_3189:
!   Perform the FOR-LOOP termination test
!   if j > _temp_3194 then goto _Label_3192		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3192
_Label_3190:
	mov	2482,r13		! source line 2482
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2483,r13		! source line 2483
	mov	"\0\0AS",r10
!   _temp_3195 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_3195 [j ] into _temp_3196
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
!   _temp_3197 = _temp_3196 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_3197 = j  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2484,r13		! source line 2484
	mov	"\0\0SE",r10
!   _temp_3198 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_3198 [j ] into _temp_3199
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
	mov	2485,r13		! source line 2485
	mov	"\0\0SE",r10
!   _temp_3201 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_3201 [j ] into _temp_3202
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
!   _temp_3200 = _temp_3202		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_3203 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_3200  sizeInBytes=4
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
_Label_3191:
!   j = j + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3189
! END FOR
_Label_3192:
! ASSIGNMENT STATEMENT...
	mov	2489,r13		! source line 2489
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
	mov	2490,r13		! source line 2490
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
	mov	2491,r13		! source line 2491
	mov	"\0\0SE",r10
!   _temp_3206 = &anOpenFileBecameFree
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
	mov	2492,r13		! source line 2492
	mov	"\0\0AS",r10
!   _temp_3207 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_3209 = &_temp_3208
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_3209 = _temp_3209 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3211 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_4102:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4102
!   _temp_3211 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_3213:
!   Data Move: *_temp_3209 = _temp_3211  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_4103:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4103
!   _temp_3209 = _temp_3209 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_3210 = _temp_3210 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_3210) then goto _Label_3213
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_3213
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_3214 = &_temp_3208
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4104
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4104:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3207 = *_temp_3214  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_4105:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4105
! FOR STATEMENT...
	mov	2494,r13		! source line 2494
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3219 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3220 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_3219  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_3215:
!   Perform the FOR-LOOP termination test
!   if j > _temp_3220 then goto _Label_3218		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3218
_Label_3216:
	mov	2494,r13		! source line 2494
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2495,r13		! source line 2495
	mov	"\0\0AS",r10
!   _temp_3221 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_3221 [j ] into _temp_3222
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
!   _temp_3223 = _temp_3222 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_3223 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2496,r13		! source line 2496
	mov	"\0\0SE",r10
!   _temp_3225 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_3225 [j ] into _temp_3226
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
!   _temp_3224 = _temp_3226		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_3227 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3224  sizeInBytes=4
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
_Label_3217:
!   j = j + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3215
! END FOR
_Label_3218:
! ASSIGNMENT STATEMENT...
	mov	2500,r13		! source line 2500
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_4106:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4106
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2501,r13		! source line 2501
	mov	"\0\0AS",r10
!   _temp_3229 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_3230 = _temp_3229 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3230 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2506,r13		! source line 2506
	mov	"\0\0AS",r10
	mov	2506,r13		! source line 2506
	mov	"\0\0SE",r10
!   _temp_3231 = &_P_Kernel_frameManager
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
	mov	2507,r13		! source line 2507
	mov	"\0\0SE",r10
!   _temp_3232 = &_P_Kernel_diskDriver
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
	mov	2507,r13		! source line 2507
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
	.word	_Label_3233
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_3234
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3235
	.word	-12
	.word	4
	.word	_Label_3236
	.word	-16
	.word	4
	.word	_Label_3237
	.word	-20
	.word	4
	.word	_Label_3238
	.word	-24
	.word	4
	.word	_Label_3239
	.word	-28
	.word	4
	.word	_Label_3240
	.word	-32
	.word	4
	.word	_Label_3241
	.word	-36
	.word	4
	.word	_Label_3242
	.word	-40
	.word	4
	.word	_Label_3243
	.word	-44
	.word	4
	.word	_Label_3244
	.word	-48
	.word	4
	.word	_Label_3245
	.word	-52
	.word	4
	.word	_Label_3246
	.word	-56
	.word	4
	.word	_Label_3247
	.word	-60
	.word	4
	.word	_Label_3248
	.word	-64
	.word	4
	.word	_Label_3249
	.word	-68
	.word	4
	.word	_Label_3250
	.word	-72
	.word	4
	.word	_Label_3251
	.word	-100
	.word	28
	.word	_Label_3252
	.word	-104
	.word	4
	.word	_Label_3253
	.word	-108
	.word	4
	.word	_Label_3254
	.word	-392
	.word	284
	.word	_Label_3255
	.word	-396
	.word	4
	.word	_Label_3256
	.word	-400
	.word	4
	.word	_Label_3257
	.word	-404
	.word	4
	.word	_Label_3258
	.word	-408
	.word	4
	.word	_Label_3259
	.word	-412
	.word	4
	.word	_Label_3260
	.word	-416
	.word	4
	.word	_Label_3261
	.word	-420
	.word	4
	.word	_Label_3262
	.word	-424
	.word	4
	.word	_Label_3263
	.word	-428
	.word	4
	.word	_Label_3264
	.word	-432
	.word	4
	.word	_Label_3265
	.word	-436
	.word	4
	.word	_Label_3266
	.word	-440
	.word	4
	.word	_Label_3267
	.word	-444
	.word	4
	.word	_Label_3268
	.word	-448
	.word	4
	.word	_Label_3269
	.word	-452
	.word	4
	.word	_Label_3270
	.word	-456
	.word	4
	.word	_Label_3271
	.word	-460
	.word	4
	.word	_Label_3272
	.word	-500
	.word	40
	.word	_Label_3273
	.word	-504
	.word	4
	.word	_Label_3274
	.word	-508
	.word	4
	.word	_Label_3275
	.word	-912
	.word	404
	.word	_Label_3276
	.word	-916
	.word	4
	.word	_Label_3277
	.word	-920
	.word	4
	.word	_Label_3278
	.word	-924
	.word	4
	.word	_Label_3279
	.word	-928
	.word	4
	.word	_Label_3280
	.word	-932
	.word	4
	.word	_Label_3281
	.word	-936
	.word	4
	.word	_Label_3282
	.word	-940
	.word	4
	.word	_Label_3283
	.word	-944
	.word	4
	.word	0
_Label_3233:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3234:
	.ascii	"Pself\0"
	.align
_Label_3235:
	.byte	'?'
	.ascii	"_temp_3232\0"
	.align
_Label_3236:
	.byte	'?'
	.ascii	"_temp_3231\0"
	.align
_Label_3237:
	.byte	'?'
	.ascii	"_temp_3230\0"
	.align
_Label_3238:
	.byte	'?'
	.ascii	"_temp_3229\0"
	.align
_Label_3239:
	.byte	'?'
	.ascii	"_temp_3228\0"
	.align
_Label_3240:
	.byte	'?'
	.ascii	"_temp_3227\0"
	.align
_Label_3241:
	.byte	'?'
	.ascii	"_temp_3226\0"
	.align
_Label_3242:
	.byte	'?'
	.ascii	"_temp_3225\0"
	.align
_Label_3243:
	.byte	'?'
	.ascii	"_temp_3224\0"
	.align
_Label_3244:
	.byte	'?'
	.ascii	"_temp_3223\0"
	.align
_Label_3245:
	.byte	'?'
	.ascii	"_temp_3222\0"
	.align
_Label_3246:
	.byte	'?'
	.ascii	"_temp_3221\0"
	.align
_Label_3247:
	.byte	'?'
	.ascii	"_temp_3220\0"
	.align
_Label_3248:
	.byte	'?'
	.ascii	"_temp_3219\0"
	.align
_Label_3249:
	.byte	'?'
	.ascii	"_temp_3214\0"
	.align
_Label_3250:
	.byte	'?'
	.ascii	"_temp_3212\0"
	.align
_Label_3251:
	.byte	'?'
	.ascii	"_temp_3211\0"
	.align
_Label_3252:
	.byte	'?'
	.ascii	"_temp_3210\0"
	.align
_Label_3253:
	.byte	'?'
	.ascii	"_temp_3209\0"
	.align
_Label_3254:
	.byte	'?'
	.ascii	"_temp_3208\0"
	.align
_Label_3255:
	.byte	'?'
	.ascii	"_temp_3207\0"
	.align
_Label_3256:
	.byte	'?'
	.ascii	"_temp_3206\0"
	.align
_Label_3257:
	.byte	'?'
	.ascii	"_temp_3205\0"
	.align
_Label_3258:
	.byte	'?'
	.ascii	"_temp_3204\0"
	.align
_Label_3259:
	.byte	'?'
	.ascii	"_temp_3203\0"
	.align
_Label_3260:
	.byte	'?'
	.ascii	"_temp_3202\0"
	.align
_Label_3261:
	.byte	'?'
	.ascii	"_temp_3201\0"
	.align
_Label_3262:
	.byte	'?'
	.ascii	"_temp_3200\0"
	.align
_Label_3263:
	.byte	'?'
	.ascii	"_temp_3199\0"
	.align
_Label_3264:
	.byte	'?'
	.ascii	"_temp_3198\0"
	.align
_Label_3265:
	.byte	'?'
	.ascii	"_temp_3197\0"
	.align
_Label_3266:
	.byte	'?'
	.ascii	"_temp_3196\0"
	.align
_Label_3267:
	.byte	'?'
	.ascii	"_temp_3195\0"
	.align
_Label_3268:
	.byte	'?'
	.ascii	"_temp_3194\0"
	.align
_Label_3269:
	.byte	'?'
	.ascii	"_temp_3193\0"
	.align
_Label_3270:
	.byte	'?'
	.ascii	"_temp_3188\0"
	.align
_Label_3271:
	.byte	'?'
	.ascii	"_temp_3186\0"
	.align
_Label_3272:
	.byte	'?'
	.ascii	"_temp_3185\0"
	.align
_Label_3273:
	.byte	'?'
	.ascii	"_temp_3184\0"
	.align
_Label_3274:
	.byte	'?'
	.ascii	"_temp_3183\0"
	.align
_Label_3275:
	.byte	'?'
	.ascii	"_temp_3182\0"
	.align
_Label_3276:
	.byte	'?'
	.ascii	"_temp_3181\0"
	.align
_Label_3277:
	.byte	'?'
	.ascii	"_temp_3180\0"
	.align
_Label_3278:
	.byte	'?'
	.ascii	"_temp_3179\0"
	.align
_Label_3279:
	.byte	'?'
	.ascii	"_temp_3178\0"
	.align
_Label_3280:
	.byte	'?'
	.ascii	"_temp_3177\0"
	.align
_Label_3281:
	.byte	'?'
	.ascii	"_temp_3176\0"
	.align
_Label_3282:
	.byte	'?'
	.ascii	"_temp_3175\0"
	.align
_Label_3283:
	.byte	'I'
	.ascii	"j\0"
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
_Label_4107:
	push	r0
	sub	r1,1,r1
	bne	_Label_4107
	mov	2514,r13		! source line 2514
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2516,r13		! source line 2516
	mov	"\0\0SE",r10
!   _temp_3284 = &fileManagerLock
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
!   _temp_3285 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3285  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2517,r13		! source line 2517
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2518,r13		! source line 2518
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3290 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3291 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_3290  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_3286:
!   Perform the FOR-LOOP termination test
!   if j > _temp_3291 then goto _Label_3289		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3289
_Label_3287:
	mov	2518,r13		! source line 2518
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3292 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_3292  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2519,r13		! source line 2519
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=j  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2520,r13		! source line 2520
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3293 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3293  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2521,r13		! source line 2521
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2522,r13		! source line 2522
	mov	"\0\0SE",r10
!   _temp_3294 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_3294 [j ] into _temp_3295
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
_Label_3288:
!   j = j + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3286
! END FOR
_Label_3289:
! CALL STATEMENT...
!   _temp_3296 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3296  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2524,r13		! source line 2524
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2525,r13		! source line 2525
	mov	"\0\0SE",r10
!   _temp_3297 = _function_185_printFCB
	set	_function_185_printFCB,r1
	store	r1,[r14+-76]
!   _temp_3298 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_3297  sizeInBytes=4
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
	mov	2526,r13		! source line 2526
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_3299 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_3299  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2527,r13		! source line 2527
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2528,r13		! source line 2528
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3304 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3305 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_3304  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_3300:
!   Perform the FOR-LOOP termination test
!   if j > _temp_3305 then goto _Label_3303		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3303
_Label_3301:
	mov	2528,r13		! source line 2528
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3306 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3306  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2529,r13		! source line 2529
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=j  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2530,r13		! source line 2530
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3307 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_3307  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2531,r13		! source line 2531
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3309 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_3309 [j ] into _temp_3310
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
!   _temp_3308 = _temp_3310		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3308  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2532,r13		! source line 2532
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3311 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3311  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2533,r13		! source line 2533
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2534,r13		! source line 2534
	mov	"\0\0SE",r10
!   _temp_3312 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_3312 [j ] into _temp_3313
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
_Label_3302:
!   j = j + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3300
! END FOR
_Label_3303:
! CALL STATEMENT...
!   _temp_3314 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3314  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2536,r13		! source line 2536
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2537,r13		! source line 2537
	mov	"\0\0SE",r10
!   _temp_3315 = _function_184_printOpen
	set	_function_184_printOpen,r1
	store	r1,[r14+-20]
!   _temp_3316 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3315  sizeInBytes=4
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
	mov	2538,r13		! source line 2538
	mov	"\0\0SE",r10
!   _temp_3317 = &fileManagerLock
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
	mov	2538,r13		! source line 2538
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
	.word	_Label_3318
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3319
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3320
	.word	-12
	.word	4
	.word	_Label_3321
	.word	-16
	.word	4
	.word	_Label_3322
	.word	-20
	.word	4
	.word	_Label_3323
	.word	-24
	.word	4
	.word	_Label_3324
	.word	-28
	.word	4
	.word	_Label_3325
	.word	-32
	.word	4
	.word	_Label_3326
	.word	-36
	.word	4
	.word	_Label_3327
	.word	-40
	.word	4
	.word	_Label_3328
	.word	-44
	.word	4
	.word	_Label_3329
	.word	-48
	.word	4
	.word	_Label_3330
	.word	-52
	.word	4
	.word	_Label_3331
	.word	-56
	.word	4
	.word	_Label_3332
	.word	-60
	.word	4
	.word	_Label_3333
	.word	-64
	.word	4
	.word	_Label_3334
	.word	-68
	.word	4
	.word	_Label_3335
	.word	-72
	.word	4
	.word	_Label_3336
	.word	-76
	.word	4
	.word	_Label_3337
	.word	-80
	.word	4
	.word	_Label_3338
	.word	-84
	.word	4
	.word	_Label_3339
	.word	-88
	.word	4
	.word	_Label_3340
	.word	-92
	.word	4
	.word	_Label_3341
	.word	-96
	.word	4
	.word	_Label_3342
	.word	-100
	.word	4
	.word	_Label_3343
	.word	-104
	.word	4
	.word	_Label_3344
	.word	-108
	.word	4
	.word	_Label_3345
	.word	-112
	.word	4
	.word	_Label_3346
	.word	-116
	.word	4
	.word	0
_Label_3318:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3319:
	.ascii	"Pself\0"
	.align
_Label_3320:
	.byte	'?'
	.ascii	"_temp_3317\0"
	.align
_Label_3321:
	.byte	'?'
	.ascii	"_temp_3316\0"
	.align
_Label_3322:
	.byte	'?'
	.ascii	"_temp_3315\0"
	.align
_Label_3323:
	.byte	'?'
	.ascii	"_temp_3314\0"
	.align
_Label_3324:
	.byte	'?'
	.ascii	"_temp_3313\0"
	.align
_Label_3325:
	.byte	'?'
	.ascii	"_temp_3312\0"
	.align
_Label_3326:
	.byte	'?'
	.ascii	"_temp_3311\0"
	.align
_Label_3327:
	.byte	'?'
	.ascii	"_temp_3310\0"
	.align
_Label_3328:
	.byte	'?'
	.ascii	"_temp_3309\0"
	.align
_Label_3329:
	.byte	'?'
	.ascii	"_temp_3308\0"
	.align
_Label_3330:
	.byte	'?'
	.ascii	"_temp_3307\0"
	.align
_Label_3331:
	.byte	'?'
	.ascii	"_temp_3306\0"
	.align
_Label_3332:
	.byte	'?'
	.ascii	"_temp_3305\0"
	.align
_Label_3333:
	.byte	'?'
	.ascii	"_temp_3304\0"
	.align
_Label_3334:
	.byte	'?'
	.ascii	"_temp_3299\0"
	.align
_Label_3335:
	.byte	'?'
	.ascii	"_temp_3298\0"
	.align
_Label_3336:
	.byte	'?'
	.ascii	"_temp_3297\0"
	.align
_Label_3337:
	.byte	'?'
	.ascii	"_temp_3296\0"
	.align
_Label_3338:
	.byte	'?'
	.ascii	"_temp_3295\0"
	.align
_Label_3339:
	.byte	'?'
	.ascii	"_temp_3294\0"
	.align
_Label_3340:
	.byte	'?'
	.ascii	"_temp_3293\0"
	.align
_Label_3341:
	.byte	'?'
	.ascii	"_temp_3292\0"
	.align
_Label_3342:
	.byte	'?'
	.ascii	"_temp_3291\0"
	.align
_Label_3343:
	.byte	'?'
	.ascii	"_temp_3290\0"
	.align
_Label_3344:
	.byte	'?'
	.ascii	"_temp_3285\0"
	.align
_Label_3345:
	.byte	'?'
	.ascii	"_temp_3284\0"
	.align
_Label_3346:
	.byte	'I'
	.ascii	"j\0"
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
_Label_4108:
	push	r0
	sub	r1,1,r1
	bne	_Label_4108
	mov	2543,r13		! source line 2543
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2559,r13		! source line 2559
	mov	"\0\0AS",r10
	mov	2559,r13		! source line 2559
	mov	"\0\0SE",r10
!   _temp_3347 = &_P_Kernel_fileManager
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
	mov	2560,r13		! source line 2560
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_3348
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_3348
	jmp	_Label_3349
_Label_3348:
! THEN...
	mov	2561,r13		! source line 2561
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2561,r13		! source line 2561
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3349:
! SEND STATEMENT...
	mov	2565,r13		! source line 2565
	mov	"\0\0SE",r10
!   _temp_3350 = &fileManagerLock
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
	mov	2566,r13		! source line 2566
	mov	"\0\0WH",r10
_Label_3351:
	mov	2566,r13		! source line 2566
	mov	"\0\0SE",r10
!   _temp_3354 = &openFileFreeList
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
!   if result==true then goto _Label_3352 else goto _Label_3353
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3353
	jmp	_Label_3352
_Label_3352:
	mov	2566,r13		! source line 2566
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2567,r13		! source line 2567
	mov	"\0\0SE",r10
!   _temp_3355 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_3356 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3355  sizeInBytes=4
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
	jmp	_Label_3351
_Label_3353:
! ASSIGNMENT STATEMENT...
	mov	2569,r13		! source line 2569
	mov	"\0\0AS",r10
	mov	2569,r13		! source line 2569
	mov	"\0\0SE",r10
!   _temp_3357 = &openFileFreeList
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
	mov	2572,r13		! source line 2572
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3358 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3358 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2573,r13		! source line 2573
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3359 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3359 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2576,r13		! source line 2576
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3360 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3360 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2578,r13		! source line 2578
	mov	"\0\0SE",r10
!   _temp_3361 = &fileManagerLock
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
	mov	2579,r13		! source line 2579
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
	.word	_Label_3362
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_3363
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3364
	.word	12
	.word	4
	.word	_Label_3365
	.word	-12
	.word	4
	.word	_Label_3366
	.word	-16
	.word	4
	.word	_Label_3367
	.word	-20
	.word	4
	.word	_Label_3368
	.word	-24
	.word	4
	.word	_Label_3369
	.word	-28
	.word	4
	.word	_Label_3370
	.word	-32
	.word	4
	.word	_Label_3371
	.word	-36
	.word	4
	.word	_Label_3372
	.word	-40
	.word	4
	.word	_Label_3373
	.word	-44
	.word	4
	.word	_Label_3374
	.word	-48
	.word	4
	.word	_Label_3375
	.word	-52
	.word	4
	.word	_Label_3376
	.word	-56
	.word	4
	.word	0
_Label_3362:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_3363:
	.ascii	"Pself\0"
	.align
_Label_3364:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3365:
	.byte	'?'
	.ascii	"_temp_3361\0"
	.align
_Label_3366:
	.byte	'?'
	.ascii	"_temp_3360\0"
	.align
_Label_3367:
	.byte	'?'
	.ascii	"_temp_3359\0"
	.align
_Label_3368:
	.byte	'?'
	.ascii	"_temp_3358\0"
	.align
_Label_3369:
	.byte	'?'
	.ascii	"_temp_3357\0"
	.align
_Label_3370:
	.byte	'?'
	.ascii	"_temp_3356\0"
	.align
_Label_3371:
	.byte	'?'
	.ascii	"_temp_3355\0"
	.align
_Label_3372:
	.byte	'?'
	.ascii	"_temp_3354\0"
	.align
_Label_3373:
	.byte	'?'
	.ascii	"_temp_3350\0"
	.align
_Label_3374:
	.byte	'?'
	.ascii	"_temp_3347\0"
	.align
_Label_3375:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3376:
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
_Label_4109:
	push	r0
	sub	r1,1,r1
	bne	_Label_4109
	mov	2584,r13		! source line 2584
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2609,r13		! source line 2609
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2612,r13		! source line 2612
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: j = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2613,r13		! source line 2613
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2614,r13		! source line 2614
	mov	"\0\0IF",r10
!   if j == 1937012066 then goto _Label_3378		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_3378
!	jmp	_Label_3377
_Label_3377:
! THEN...
	mov	2615,r13		! source line 2615
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3379 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3379  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2615,r13		! source line 2615
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3378:
! ASSIGNMENT STATEMENT...
	mov	2619,r13		! source line 2619
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
	mov	2620,r13		! source line 2620
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2621,r13		! source line 2621
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: j = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2622,r13		! source line 2622
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2625,r13		! source line 2625
	mov	"\0\0WH",r10
_Label_3380:
!   if numFiles <= 0 then goto _Label_3382		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3382
!	jmp	_Label_3381
_Label_3381:
	mov	2625,r13		! source line 2625
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_3383 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3383  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2626,r13		! source line 2626
	mov	"\0\0CA",r10
	call	_function_186_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2627,r13		! source line 2627
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3384 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_3384  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2628,r13		! source line 2628
	mov	"\0\0CA",r10
	call	_function_186_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2629,r13		! source line 2629
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3385 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_3385  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2630,r13		! source line 2630
	mov	"\0\0CA",r10
	call	_function_186_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2631,r13		! source line 2631
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2632,r13		! source line 2632
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3389 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_3389 then goto _Label_3387		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_3387
!	jmp	_Label_3388
_Label_3388:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_3391
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
!   _temp_3390 = _temp_3391		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3390  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2633,r13		! source line 2633
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_3386 else goto _Label_3387
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3387
	jmp	_Label_3386
_Label_3386:
! THEN...
	mov	2634,r13		! source line 2634
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2634,r13		! source line 2634
	mov	"\0\0BR",r10
	jmp	_Label_3382
! END IF...
_Label_3387:
! ASSIGNMENT STATEMENT...
	mov	2636,r13		! source line 2636
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2637,r13		! source line 2637
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_3380
_Label_3382:
! IF STATEMENT...
	mov	2641,r13		! source line 2641
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_3393		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3393
!	jmp	_Label_3392
_Label_3392:
! THEN...
	mov	2642,r13		! source line 2642
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2642,r13		! source line 2642
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3393:
! SEND STATEMENT...
	mov	2645,r13		! source line 2645
	mov	"\0\0SE",r10
!   _temp_3394 = &fileManagerLock
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
	mov	2647,r13		! source line 2647
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3399 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3400 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_3399  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_3395:
!   Perform the FOR-LOOP termination test
!   if j > _temp_3400 then goto _Label_3398		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3398
_Label_3396:
	mov	2647,r13		! source line 2647
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2648,r13		! source line 2648
	mov	"\0\0AS",r10
!   _temp_3401 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_3401 [j ] into _temp_3402
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
!   fcb = _temp_3402		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2649,r13		! source line 2649
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3406 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_3405 = *_temp_3406  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_3405 != start then goto _Label_3404		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_3404
!	jmp	_Label_3403
_Label_3403:
! THEN...
	mov	2650,r13		! source line 2650
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2650,r13		! source line 2650
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3407 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3410 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3409 = *_temp_3410  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_3408 = _temp_3409 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_3407 = _temp_3408  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2651,r13		! source line 2651
	mov	"\0\0SE",r10
!   _temp_3411 = &fileManagerLock
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
	mov	2652,r13		! source line 2652
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3404:
!   Increment the FOR-LOOP index variable and jump back
_Label_3397:
!   j = j + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_3395
! END FOR
_Label_3398:
! WHILE STATEMENT...
	mov	2657,r13		! source line 2657
	mov	"\0\0WH",r10
_Label_3412:
	mov	2657,r13		! source line 2657
	mov	"\0\0SE",r10
!   _temp_3415 = &fcbFreeList
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
!   if result==true then goto _Label_3413 else goto _Label_3414
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3414
	jmp	_Label_3413
_Label_3413:
	mov	2657,r13		! source line 2657
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2658,r13		! source line 2658
	mov	"\0\0SE",r10
!   _temp_3416 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_3417 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_3416  sizeInBytes=4
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
	jmp	_Label_3412
_Label_3414:
! ASSIGNMENT STATEMENT...
	mov	2660,r13		! source line 2660
	mov	"\0\0AS",r10
	mov	2660,r13		! source line 2660
	mov	"\0\0SE",r10
!   _temp_3418 = &fcbFreeList
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
	mov	2663,r13		! source line 2663
	mov	"\0\0SE",r10
!   _temp_3419 = &fileManagerLock
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
	mov	2666,r13		! source line 2666
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3420 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3420 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2667,r13		! source line 2667
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3421 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3421 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2668,r13		! source line 2668
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3422 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3422 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2669,r13		! source line 2669
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3427 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3426 = *_temp_3427  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_3426 < 0 then goto _Label_3425		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3425
	jmp	_Label_3423
_Label_3425:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3428 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_3428 ) then goto _Label_3424		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3424
!	jmp	_Label_3423
_Label_3423:
! THEN...
	mov	2670,r13		! source line 2670
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3429 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3429  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2670,r13		! source line 2670
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3424:
! RETURN STATEMENT...
	mov	2672,r13		! source line 2672
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
	.word	_Label_3430
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_3431
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3432
	.word	12
	.word	4
	.word	_Label_3433
	.word	-12
	.word	4
	.word	_Label_3434
	.word	-16
	.word	4
	.word	_Label_3435
	.word	-20
	.word	4
	.word	_Label_3436
	.word	-24
	.word	4
	.word	_Label_3437
	.word	-28
	.word	4
	.word	_Label_3438
	.word	-32
	.word	4
	.word	_Label_3439
	.word	-36
	.word	4
	.word	_Label_3440
	.word	-40
	.word	4
	.word	_Label_3441
	.word	-44
	.word	4
	.word	_Label_3442
	.word	-48
	.word	4
	.word	_Label_3443
	.word	-52
	.word	4
	.word	_Label_3444
	.word	-56
	.word	4
	.word	_Label_3445
	.word	-60
	.word	4
	.word	_Label_3446
	.word	-64
	.word	4
	.word	_Label_3447
	.word	-68
	.word	4
	.word	_Label_3448
	.word	-72
	.word	4
	.word	_Label_3449
	.word	-76
	.word	4
	.word	_Label_3450
	.word	-80
	.word	4
	.word	_Label_3451
	.word	-84
	.word	4
	.word	_Label_3452
	.word	-88
	.word	4
	.word	_Label_3453
	.word	-92
	.word	4
	.word	_Label_3454
	.word	-96
	.word	4
	.word	_Label_3455
	.word	-100
	.word	4
	.word	_Label_3456
	.word	-104
	.word	4
	.word	_Label_3457
	.word	-108
	.word	4
	.word	_Label_3458
	.word	-112
	.word	4
	.word	_Label_3459
	.word	-116
	.word	4
	.word	_Label_3460
	.word	-120
	.word	4
	.word	_Label_3461
	.word	-124
	.word	4
	.word	_Label_3462
	.word	-128
	.word	4
	.word	_Label_3463
	.word	-132
	.word	4
	.word	_Label_3464
	.word	-136
	.word	4
	.word	_Label_3465
	.word	-140
	.word	4
	.word	_Label_3466
	.word	-144
	.word	4
	.word	_Label_3467
	.word	-148
	.word	4
	.word	_Label_3468
	.word	-152
	.word	4
	.word	_Label_3469
	.word	-156
	.word	4
	.word	_Label_3470
	.word	-160
	.word	4
	.word	0
_Label_3430:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_3431:
	.ascii	"Pself\0"
	.align
_Label_3432:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3433:
	.byte	'?'
	.ascii	"_temp_3429\0"
	.align
_Label_3434:
	.byte	'?'
	.ascii	"_temp_3428\0"
	.align
_Label_3435:
	.byte	'?'
	.ascii	"_temp_3427\0"
	.align
_Label_3436:
	.byte	'?'
	.ascii	"_temp_3426\0"
	.align
_Label_3437:
	.byte	'?'
	.ascii	"_temp_3422\0"
	.align
_Label_3438:
	.byte	'?'
	.ascii	"_temp_3421\0"
	.align
_Label_3439:
	.byte	'?'
	.ascii	"_temp_3420\0"
	.align
_Label_3440:
	.byte	'?'
	.ascii	"_temp_3419\0"
	.align
_Label_3441:
	.byte	'?'
	.ascii	"_temp_3418\0"
	.align
_Label_3442:
	.byte	'?'
	.ascii	"_temp_3417\0"
	.align
_Label_3443:
	.byte	'?'
	.ascii	"_temp_3416\0"
	.align
_Label_3444:
	.byte	'?'
	.ascii	"_temp_3415\0"
	.align
_Label_3445:
	.byte	'?'
	.ascii	"_temp_3411\0"
	.align
_Label_3446:
	.byte	'?'
	.ascii	"_temp_3410\0"
	.align
_Label_3447:
	.byte	'?'
	.ascii	"_temp_3409\0"
	.align
_Label_3448:
	.byte	'?'
	.ascii	"_temp_3408\0"
	.align
_Label_3449:
	.byte	'?'
	.ascii	"_temp_3407\0"
	.align
_Label_3450:
	.byte	'?'
	.ascii	"_temp_3406\0"
	.align
_Label_3451:
	.byte	'?'
	.ascii	"_temp_3405\0"
	.align
_Label_3452:
	.byte	'?'
	.ascii	"_temp_3402\0"
	.align
_Label_3453:
	.byte	'?'
	.ascii	"_temp_3401\0"
	.align
_Label_3454:
	.byte	'?'
	.ascii	"_temp_3400\0"
	.align
_Label_3455:
	.byte	'?'
	.ascii	"_temp_3399\0"
	.align
_Label_3456:
	.byte	'?'
	.ascii	"_temp_3394\0"
	.align
_Label_3457:
	.byte	'?'
	.ascii	"_temp_3391\0"
	.align
_Label_3458:
	.byte	'?'
	.ascii	"_temp_3390\0"
	.align
_Label_3459:
	.byte	'?'
	.ascii	"_temp_3389\0"
	.align
_Label_3460:
	.byte	'?'
	.ascii	"_temp_3385\0"
	.align
_Label_3461:
	.byte	'?'
	.ascii	"_temp_3384\0"
	.align
_Label_3462:
	.byte	'?'
	.ascii	"_temp_3383\0"
	.align
_Label_3463:
	.byte	'?'
	.ascii	"_temp_3379\0"
	.align
_Label_3464:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_3465:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_3466:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_3467:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_3468:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_3469:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_3470:
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
_Label_4110:
	push	r0
	sub	r1,1,r1
	bne	_Label_4110
	mov	2685,r13		! source line 2685
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2687,r13		! source line 2687
	mov	"\0\0IF",r10
!   _temp_3473 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_3473 then goto _Label_3472		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_3472
!	jmp	_Label_3471
_Label_3471:
! THEN...
	mov	2688,r13		! source line 2688
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2688,r13		! source line 2688
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3472:
! SEND STATEMENT...
	mov	2690,r13		! source line 2690
	mov	"\0\0SE",r10
!   _temp_3474 = &fileManagerLock
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
	mov	2691,r13		! source line 2691
	mov	"\0\0SE",r10
!   _temp_3475 = &_P_Kernel_fileManager
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
	mov	2692,r13		! source line 2692
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3476 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_3476  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2693,r13		! source line 2693
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3477 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3480 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3479 = *_temp_3480  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_3478 = _temp_3479 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_3477 = _temp_3478  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2694,r13		! source line 2694
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3484 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3483 = *_temp_3484  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_3483 > 0 then goto _Label_3482		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3482
!	jmp	_Label_3481
_Label_3481:
! THEN...
	mov	2695,r13		! source line 2695
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2695,r13		! source line 2695
	mov	"\0\0SE",r10
!   _temp_3485 = &openFileFreeList
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
	mov	2696,r13		! source line 2696
	mov	"\0\0SE",r10
!   _temp_3486 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_3487 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_3486  sizeInBytes=4
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
	mov	2697,r13		! source line 2697
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3488 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3491 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3490 = *_temp_3491  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_3489 = _temp_3490 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_3488 = _temp_3489  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2698,r13		! source line 2698
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3495 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3494 = *_temp_3495  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_3494 > 0 then goto _Label_3493		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3493
!	jmp	_Label_3492
_Label_3492:
! THEN...
	mov	2699,r13		! source line 2699
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2699,r13		! source line 2699
	mov	"\0\0SE",r10
!   _temp_3496 = &fcbFreeList
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
	mov	2700,r13		! source line 2700
	mov	"\0\0SE",r10
!   _temp_3497 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3498 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3497  sizeInBytes=4
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
_Label_3493:
! END IF...
_Label_3482:
! SEND STATEMENT...
	mov	2703,r13		! source line 2703
	mov	"\0\0SE",r10
!   _temp_3499 = &fileManagerLock
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
	mov	2703,r13		! source line 2703
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
	.word	_Label_3500
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_3501
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3502
	.word	12
	.word	4
	.word	_Label_3503
	.word	-12
	.word	4
	.word	_Label_3504
	.word	-16
	.word	4
	.word	_Label_3505
	.word	-20
	.word	4
	.word	_Label_3506
	.word	-24
	.word	4
	.word	_Label_3507
	.word	-28
	.word	4
	.word	_Label_3508
	.word	-32
	.word	4
	.word	_Label_3509
	.word	-36
	.word	4
	.word	_Label_3510
	.word	-40
	.word	4
	.word	_Label_3511
	.word	-44
	.word	4
	.word	_Label_3512
	.word	-48
	.word	4
	.word	_Label_3513
	.word	-52
	.word	4
	.word	_Label_3514
	.word	-56
	.word	4
	.word	_Label_3515
	.word	-60
	.word	4
	.word	_Label_3516
	.word	-64
	.word	4
	.word	_Label_3517
	.word	-68
	.word	4
	.word	_Label_3518
	.word	-72
	.word	4
	.word	_Label_3519
	.word	-76
	.word	4
	.word	_Label_3520
	.word	-80
	.word	4
	.word	_Label_3521
	.word	-84
	.word	4
	.word	_Label_3522
	.word	-88
	.word	4
	.word	_Label_3523
	.word	-92
	.word	4
	.word	_Label_3524
	.word	-96
	.word	4
	.word	_Label_3525
	.word	-100
	.word	4
	.word	_Label_3526
	.word	-104
	.word	4
	.word	0
_Label_3500:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_3501:
	.ascii	"Pself\0"
	.align
_Label_3502:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3503:
	.byte	'?'
	.ascii	"_temp_3499\0"
	.align
_Label_3504:
	.byte	'?'
	.ascii	"_temp_3498\0"
	.align
_Label_3505:
	.byte	'?'
	.ascii	"_temp_3497\0"
	.align
_Label_3506:
	.byte	'?'
	.ascii	"_temp_3496\0"
	.align
_Label_3507:
	.byte	'?'
	.ascii	"_temp_3495\0"
	.align
_Label_3508:
	.byte	'?'
	.ascii	"_temp_3494\0"
	.align
_Label_3509:
	.byte	'?'
	.ascii	"_temp_3491\0"
	.align
_Label_3510:
	.byte	'?'
	.ascii	"_temp_3490\0"
	.align
_Label_3511:
	.byte	'?'
	.ascii	"_temp_3489\0"
	.align
_Label_3512:
	.byte	'?'
	.ascii	"_temp_3488\0"
	.align
_Label_3513:
	.byte	'?'
	.ascii	"_temp_3487\0"
	.align
_Label_3514:
	.byte	'?'
	.ascii	"_temp_3486\0"
	.align
_Label_3515:
	.byte	'?'
	.ascii	"_temp_3485\0"
	.align
_Label_3516:
	.byte	'?'
	.ascii	"_temp_3484\0"
	.align
_Label_3517:
	.byte	'?'
	.ascii	"_temp_3483\0"
	.align
_Label_3518:
	.byte	'?'
	.ascii	"_temp_3480\0"
	.align
_Label_3519:
	.byte	'?'
	.ascii	"_temp_3479\0"
	.align
_Label_3520:
	.byte	'?'
	.ascii	"_temp_3478\0"
	.align
_Label_3521:
	.byte	'?'
	.ascii	"_temp_3477\0"
	.align
_Label_3522:
	.byte	'?'
	.ascii	"_temp_3476\0"
	.align
_Label_3523:
	.byte	'?'
	.ascii	"_temp_3475\0"
	.align
_Label_3524:
	.byte	'?'
	.ascii	"_temp_3474\0"
	.align
_Label_3525:
	.byte	'?'
	.ascii	"_temp_3473\0"
	.align
_Label_3526:
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
_Label_4111:
	push	r0
	sub	r1,1,r1
	bne	_Label_4111
	mov	2708,r13		! source line 2708
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2713,r13		! source line 2713
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3530 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_3529 = *_temp_3530  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_3529) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3531 = _temp_3529 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_3531 ) then goto _Label_3528		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3528
!	jmp	_Label_3527
_Label_3527:
! THEN...
	mov	2714,r13		! source line 2714
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2714,r13		! source line 2714
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3536 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3535 = *_temp_3536  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3535) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3537 = _temp_3535 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3534 = *_temp_3537  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3534 >= 0 then goto _Label_3533		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3533
!	jmp	_Label_3532
_Label_3532:
! THEN...
	mov	2715,r13		! source line 2715
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3538 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3538  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2715,r13		! source line 2715
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3533:
! ASSIGNMENT STATEMENT...
	mov	2717,r13		! source line 2717
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3540 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3539 = *_temp_3540  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3539) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3541 = _temp_3539 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_3541 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2718,r13		! source line 2718
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3545 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3544 = *_temp_3545  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_3544) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3546 = _temp_3544 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3543 = *_temp_3546  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3549 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3548 = *_temp_3549  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3548) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3550 = _temp_3548 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3547 = *_temp_3550  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3542 = _temp_3543 + _temp_3547		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3553 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3552 = *_temp_3553  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3552) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3554 = _temp_3552 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_3551 = *_temp_3554  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_3555 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3542  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3551  sizeInBytes=4
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
_Label_3528:
! RETURN STATEMENT...
	mov	2713,r13		! source line 2713
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
	.word	_Label_3556
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3557
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3558
	.word	12
	.word	4
	.word	_Label_3559
	.word	-12
	.word	4
	.word	_Label_3560
	.word	-16
	.word	4
	.word	_Label_3561
	.word	-20
	.word	4
	.word	_Label_3562
	.word	-24
	.word	4
	.word	_Label_3563
	.word	-28
	.word	4
	.word	_Label_3564
	.word	-32
	.word	4
	.word	_Label_3565
	.word	-36
	.word	4
	.word	_Label_3566
	.word	-40
	.word	4
	.word	_Label_3567
	.word	-44
	.word	4
	.word	_Label_3568
	.word	-48
	.word	4
	.word	_Label_3569
	.word	-52
	.word	4
	.word	_Label_3570
	.word	-56
	.word	4
	.word	_Label_3571
	.word	-60
	.word	4
	.word	_Label_3572
	.word	-64
	.word	4
	.word	_Label_3573
	.word	-68
	.word	4
	.word	_Label_3574
	.word	-72
	.word	4
	.word	_Label_3575
	.word	-76
	.word	4
	.word	_Label_3576
	.word	-80
	.word	4
	.word	_Label_3577
	.word	-84
	.word	4
	.word	_Label_3578
	.word	-88
	.word	4
	.word	_Label_3579
	.word	-92
	.word	4
	.word	_Label_3580
	.word	-96
	.word	4
	.word	_Label_3581
	.word	-100
	.word	4
	.word	_Label_3582
	.word	-104
	.word	4
	.word	_Label_3583
	.word	-108
	.word	4
	.word	0
_Label_3556:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_3557:
	.ascii	"Pself\0"
	.align
_Label_3558:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3559:
	.byte	'?'
	.ascii	"_temp_3555\0"
	.align
_Label_3560:
	.byte	'?'
	.ascii	"_temp_3554\0"
	.align
_Label_3561:
	.byte	'?'
	.ascii	"_temp_3553\0"
	.align
_Label_3562:
	.byte	'?'
	.ascii	"_temp_3552\0"
	.align
_Label_3563:
	.byte	'?'
	.ascii	"_temp_3551\0"
	.align
_Label_3564:
	.byte	'?'
	.ascii	"_temp_3550\0"
	.align
_Label_3565:
	.byte	'?'
	.ascii	"_temp_3549\0"
	.align
_Label_3566:
	.byte	'?'
	.ascii	"_temp_3548\0"
	.align
_Label_3567:
	.byte	'?'
	.ascii	"_temp_3547\0"
	.align
_Label_3568:
	.byte	'?'
	.ascii	"_temp_3546\0"
	.align
_Label_3569:
	.byte	'?'
	.ascii	"_temp_3545\0"
	.align
_Label_3570:
	.byte	'?'
	.ascii	"_temp_3544\0"
	.align
_Label_3571:
	.byte	'?'
	.ascii	"_temp_3543\0"
	.align
_Label_3572:
	.byte	'?'
	.ascii	"_temp_3542\0"
	.align
_Label_3573:
	.byte	'?'
	.ascii	"_temp_3541\0"
	.align
_Label_3574:
	.byte	'?'
	.ascii	"_temp_3540\0"
	.align
_Label_3575:
	.byte	'?'
	.ascii	"_temp_3539\0"
	.align
_Label_3576:
	.byte	'?'
	.ascii	"_temp_3538\0"
	.align
_Label_3577:
	.byte	'?'
	.ascii	"_temp_3537\0"
	.align
_Label_3578:
	.byte	'?'
	.ascii	"_temp_3536\0"
	.align
_Label_3579:
	.byte	'?'
	.ascii	"_temp_3535\0"
	.align
_Label_3580:
	.byte	'?'
	.ascii	"_temp_3534\0"
	.align
_Label_3581:
	.byte	'?'
	.ascii	"_temp_3531\0"
	.align
_Label_3582:
	.byte	'?'
	.ascii	"_temp_3530\0"
	.align
_Label_3583:
	.byte	'?'
	.ascii	"_temp_3529\0"
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
_Label_4112:
	push	r0
	sub	r1,1,r1
	bne	_Label_4112
	mov	2727,r13		! source line 2727
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2742,r13		! source line 2742
	mov	"\0\0SE",r10
!   _temp_3584 = &fileManagerLock
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
	mov	2743,r13		! source line 2743
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3590		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3590
!   _temp_3589 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3591
_Label_3590:
!   _temp_3589 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3591:
!   if _temp_3589 then goto _Label_3588 else goto _Label_3585
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3585
	jmp	_Label_3588
_Label_3588:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3594 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_3593 = *_temp_3594  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3593 == 0 then goto _Label_3595		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3595
!   _temp_3592 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3596
_Label_3595:
!   _temp_3592 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3596:
!   if _temp_3592 then goto _Label_3587 else goto _Label_3585
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3585
	jmp	_Label_3587
_Label_3587:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3599 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3598 = *_temp_3599  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3598) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3600 = _temp_3598 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3597 = *_temp_3600  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3597 >= 0 then goto _Label_3586		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3586
!	jmp	_Label_3585
_Label_3585:
! THEN...
	mov	2744,r13		! source line 2744
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3601 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3601  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2744,r13		! source line 2744
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3586:
! ASSIGNMENT STATEMENT...
	mov	2746,r13		! source line 2746
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3602 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3602  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2747,r13		! source line 2747
	mov	"\0\0WH",r10
_Label_3603:
!   if numBytes <= 0 then goto _Label_3605		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3605
!	jmp	_Label_3604
_Label_3604:
	mov	2747,r13		! source line 2747
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2756,r13		! source line 2756
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
	mov	2757,r13		! source line 2757
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
	mov	2761,r13		! source line 2761
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3609 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3608 = *_temp_3609  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3608 == sector then goto _Label_3607		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3607
!	jmp	_Label_3606
_Label_3606:
! THEN...
	mov	2762,r13		! source line 2762
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2762,r13		! source line 2762
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3610) then goto _runtimeErrorNullPointer
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
	mov	2764,r13		! source line 2764
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3613 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3612 = *_temp_3613  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3611 = sector + _temp_3612		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3615 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3614 = *_temp_3615  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3616 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3611  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3614  sizeInBytes=4
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
	mov	2767,r13		! source line 2767
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3617 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3617 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2768,r13		! source line 2768
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3618 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3618 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3607:
! ASSIGNMENT STATEMENT...
	mov	2770,r13		! source line 2770
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3620 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3619 = *_temp_3620  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3619 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2771,r13		! source line 2771
	mov	"\0\0AS",r10
!   _temp_3621 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3621  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2771,r13		! source line 2771
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
	mov	2775,r13		! source line 2775
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2776,r13		! source line 2776
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2777,r13		! source line 2777
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2778,r13		! source line 2778
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3603
_Label_3605:
! SEND STATEMENT...
	mov	2785,r13		! source line 2785
	mov	"\0\0SE",r10
!   _temp_3622 = &fileManagerLock
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
	mov	2786,r13		! source line 2786
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
	.word	_Label_3623
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3624
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3625
	.word	12
	.word	4
	.word	_Label_3626
	.word	16
	.word	4
	.word	_Label_3627
	.word	20
	.word	4
	.word	_Label_3628
	.word	24
	.word	4
	.word	_Label_3629
	.word	-16
	.word	4
	.word	_Label_3630
	.word	-20
	.word	4
	.word	_Label_3631
	.word	-24
	.word	4
	.word	_Label_3632
	.word	-28
	.word	4
	.word	_Label_3633
	.word	-32
	.word	4
	.word	_Label_3634
	.word	-36
	.word	4
	.word	_Label_3635
	.word	-40
	.word	4
	.word	_Label_3636
	.word	-44
	.word	4
	.word	_Label_3637
	.word	-48
	.word	4
	.word	_Label_3638
	.word	-52
	.word	4
	.word	_Label_3639
	.word	-56
	.word	4
	.word	_Label_3640
	.word	-60
	.word	4
	.word	_Label_3641
	.word	-64
	.word	4
	.word	_Label_3642
	.word	-68
	.word	4
	.word	_Label_3643
	.word	-72
	.word	4
	.word	_Label_3644
	.word	-76
	.word	4
	.word	_Label_3645
	.word	-80
	.word	4
	.word	_Label_3646
	.word	-84
	.word	4
	.word	_Label_3647
	.word	-88
	.word	4
	.word	_Label_3648
	.word	-92
	.word	4
	.word	_Label_3649
	.word	-96
	.word	4
	.word	_Label_3650
	.word	-100
	.word	4
	.word	_Label_3651
	.word	-104
	.word	4
	.word	_Label_3652
	.word	-9
	.word	1
	.word	_Label_3653
	.word	-10
	.word	1
	.word	_Label_3654
	.word	-108
	.word	4
	.word	_Label_3655
	.word	-112
	.word	4
	.word	_Label_3656
	.word	-116
	.word	4
	.word	_Label_3657
	.word	-120
	.word	4
	.word	_Label_3658
	.word	-124
	.word	4
	.word	_Label_3659
	.word	-128
	.word	4
	.word	0
_Label_3623:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3624:
	.ascii	"Pself\0"
	.align
_Label_3625:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3626:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3627:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3628:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3629:
	.byte	'?'
	.ascii	"_temp_3622\0"
	.align
_Label_3630:
	.byte	'?'
	.ascii	"_temp_3621\0"
	.align
_Label_3631:
	.byte	'?'
	.ascii	"_temp_3620\0"
	.align
_Label_3632:
	.byte	'?'
	.ascii	"_temp_3619\0"
	.align
_Label_3633:
	.byte	'?'
	.ascii	"_temp_3618\0"
	.align
_Label_3634:
	.byte	'?'
	.ascii	"_temp_3617\0"
	.align
_Label_3635:
	.byte	'?'
	.ascii	"_temp_3616\0"
	.align
_Label_3636:
	.byte	'?'
	.ascii	"_temp_3615\0"
	.align
_Label_3637:
	.byte	'?'
	.ascii	"_temp_3614\0"
	.align
_Label_3638:
	.byte	'?'
	.ascii	"_temp_3613\0"
	.align
_Label_3639:
	.byte	'?'
	.ascii	"_temp_3612\0"
	.align
_Label_3640:
	.byte	'?'
	.ascii	"_temp_3611\0"
	.align
_Label_3641:
	.byte	'?'
	.ascii	"_temp_3610\0"
	.align
_Label_3642:
	.byte	'?'
	.ascii	"_temp_3609\0"
	.align
_Label_3643:
	.byte	'?'
	.ascii	"_temp_3608\0"
	.align
_Label_3644:
	.byte	'?'
	.ascii	"_temp_3602\0"
	.align
_Label_3645:
	.byte	'?'
	.ascii	"_temp_3601\0"
	.align
_Label_3646:
	.byte	'?'
	.ascii	"_temp_3600\0"
	.align
_Label_3647:
	.byte	'?'
	.ascii	"_temp_3599\0"
	.align
_Label_3648:
	.byte	'?'
	.ascii	"_temp_3598\0"
	.align
_Label_3649:
	.byte	'?'
	.ascii	"_temp_3597\0"
	.align
_Label_3650:
	.byte	'?'
	.ascii	"_temp_3594\0"
	.align
_Label_3651:
	.byte	'?'
	.ascii	"_temp_3593\0"
	.align
_Label_3652:
	.byte	'C'
	.ascii	"_temp_3592\0"
	.align
_Label_3653:
	.byte	'C'
	.ascii	"_temp_3589\0"
	.align
_Label_3654:
	.byte	'?'
	.ascii	"_temp_3584\0"
	.align
_Label_3655:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3656:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3657:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3658:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3659:
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
_Label_4113:
	push	r0
	sub	r1,1,r1
	bne	_Label_4113
	mov	2791,r13		! source line 2791
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2807,r13		! source line 2807
	mov	"\0\0SE",r10
!   _temp_3660 = &fileManagerLock
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
	mov	2808,r13		! source line 2808
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3666		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3666
!   _temp_3665 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3667
_Label_3666:
!   _temp_3665 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3667:
!   if _temp_3665 then goto _Label_3664 else goto _Label_3661
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3661
	jmp	_Label_3664
_Label_3664:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3670 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3669 = *_temp_3670  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3669 == 0 then goto _Label_3671		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3671
!   _temp_3668 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3672
_Label_3671:
!   _temp_3668 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3672:
!   if _temp_3668 then goto _Label_3663 else goto _Label_3661
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3661
	jmp	_Label_3663
_Label_3663:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3675 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3674 = *_temp_3675  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3674) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3676 = _temp_3674 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3673 = *_temp_3676  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3673 >= 0 then goto _Label_3662		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3662
!	jmp	_Label_3661
_Label_3661:
! THEN...
	mov	2809,r13		! source line 2809
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3677 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3677  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2809,r13		! source line 2809
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3662:
! ASSIGNMENT STATEMENT...
	mov	2811,r13		! source line 2811
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3678 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3678  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2812,r13		! source line 2812
	mov	"\0\0WH",r10
_Label_3679:
!   if numBytes <= 0 then goto _Label_3681		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3681
!	jmp	_Label_3680
_Label_3680:
	mov	2812,r13		! source line 2812
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2821,r13		! source line 2821
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
	mov	2822,r13		! source line 2822
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
	mov	2826,r13		! source line 2826
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3685 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3684 = *_temp_3685  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3684 == sector then goto _Label_3683		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3683
!	jmp	_Label_3682
_Label_3682:
! THEN...
	mov	2828,r13		! source line 2828
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2828,r13		! source line 2828
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3686) then goto _runtimeErrorNullPointer
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
_Label_3683:
! ASSIGNMENT STATEMENT...
	mov	2830,r13		! source line 2830
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3688 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3687 = *_temp_3688  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3687 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2831,r13		! source line 2831
	mov	"\0\0AS",r10
!   _temp_3689 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3689  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2831,r13		! source line 2831
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2832,r13		! source line 2832
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3693 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3692 = *_temp_3693  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3692 != sector then goto _Label_3691		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3691
!	jmp	_Label_3690
_Label_3690:
	jmp	_Label_3694
_Label_3691:
! ELSE...
	mov	2834,r13		! source line 2834
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2834,r13		! source line 2834
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3697
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3697
	jmp	_Label_3696
_Label_3697:
!   if bytesToMove != 8192 then goto _Label_3696		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3696
!	jmp	_Label_3695
_Label_3695:
	jmp	_Label_3698
_Label_3696:
! ELSE...
	mov	2838,r13		! source line 2838
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2838,r13		! source line 2838
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3701 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3700 = *_temp_3701  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3699 = sector + _temp_3700		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3703 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3702 = *_temp_3703  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3704 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3699  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3702  sizeInBytes=4
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
_Label_3698:
! END IF...
_Label_3694:
! ASSIGNMENT STATEMENT...
	mov	2842,r13		! source line 2842
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3705 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3705 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2843,r13		! source line 2843
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3706 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3706 = 1  (sizeInBytes=1)
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
	mov	2847,r13		! source line 2847
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2848,r13		! source line 2848
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2849,r13		! source line 2849
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2850,r13		! source line 2850
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3679
_Label_3681:
! SEND STATEMENT...
	mov	2857,r13		! source line 2857
	mov	"\0\0SE",r10
!   _temp_3707 = &fileManagerLock
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
	mov	2859,r13		! source line 2859
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
	.word	_Label_3708
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3709
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3710
	.word	12
	.word	4
	.word	_Label_3711
	.word	16
	.word	4
	.word	_Label_3712
	.word	20
	.word	4
	.word	_Label_3713
	.word	24
	.word	4
	.word	_Label_3714
	.word	-16
	.word	4
	.word	_Label_3715
	.word	-20
	.word	4
	.word	_Label_3716
	.word	-24
	.word	4
	.word	_Label_3717
	.word	-28
	.word	4
	.word	_Label_3718
	.word	-32
	.word	4
	.word	_Label_3719
	.word	-36
	.word	4
	.word	_Label_3720
	.word	-40
	.word	4
	.word	_Label_3721
	.word	-44
	.word	4
	.word	_Label_3722
	.word	-48
	.word	4
	.word	_Label_3723
	.word	-52
	.word	4
	.word	_Label_3724
	.word	-56
	.word	4
	.word	_Label_3725
	.word	-60
	.word	4
	.word	_Label_3726
	.word	-64
	.word	4
	.word	_Label_3727
	.word	-68
	.word	4
	.word	_Label_3728
	.word	-72
	.word	4
	.word	_Label_3729
	.word	-76
	.word	4
	.word	_Label_3730
	.word	-80
	.word	4
	.word	_Label_3731
	.word	-84
	.word	4
	.word	_Label_3732
	.word	-88
	.word	4
	.word	_Label_3733
	.word	-92
	.word	4
	.word	_Label_3734
	.word	-96
	.word	4
	.word	_Label_3735
	.word	-100
	.word	4
	.word	_Label_3736
	.word	-104
	.word	4
	.word	_Label_3737
	.word	-108
	.word	4
	.word	_Label_3738
	.word	-112
	.word	4
	.word	_Label_3739
	.word	-9
	.word	1
	.word	_Label_3740
	.word	-10
	.word	1
	.word	_Label_3741
	.word	-116
	.word	4
	.word	_Label_3742
	.word	-120
	.word	4
	.word	_Label_3743
	.word	-124
	.word	4
	.word	_Label_3744
	.word	-128
	.word	4
	.word	_Label_3745
	.word	-132
	.word	4
	.word	_Label_3746
	.word	-136
	.word	4
	.word	0
_Label_3708:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3709:
	.ascii	"Pself\0"
	.align
_Label_3710:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3711:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3712:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3713:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3714:
	.byte	'?'
	.ascii	"_temp_3707\0"
	.align
_Label_3715:
	.byte	'?'
	.ascii	"_temp_3706\0"
	.align
_Label_3716:
	.byte	'?'
	.ascii	"_temp_3705\0"
	.align
_Label_3717:
	.byte	'?'
	.ascii	"_temp_3704\0"
	.align
_Label_3718:
	.byte	'?'
	.ascii	"_temp_3703\0"
	.align
_Label_3719:
	.byte	'?'
	.ascii	"_temp_3702\0"
	.align
_Label_3720:
	.byte	'?'
	.ascii	"_temp_3701\0"
	.align
_Label_3721:
	.byte	'?'
	.ascii	"_temp_3700\0"
	.align
_Label_3722:
	.byte	'?'
	.ascii	"_temp_3699\0"
	.align
_Label_3723:
	.byte	'?'
	.ascii	"_temp_3693\0"
	.align
_Label_3724:
	.byte	'?'
	.ascii	"_temp_3692\0"
	.align
_Label_3725:
	.byte	'?'
	.ascii	"_temp_3689\0"
	.align
_Label_3726:
	.byte	'?'
	.ascii	"_temp_3688\0"
	.align
_Label_3727:
	.byte	'?'
	.ascii	"_temp_3687\0"
	.align
_Label_3728:
	.byte	'?'
	.ascii	"_temp_3686\0"
	.align
_Label_3729:
	.byte	'?'
	.ascii	"_temp_3685\0"
	.align
_Label_3730:
	.byte	'?'
	.ascii	"_temp_3684\0"
	.align
_Label_3731:
	.byte	'?'
	.ascii	"_temp_3678\0"
	.align
_Label_3732:
	.byte	'?'
	.ascii	"_temp_3677\0"
	.align
_Label_3733:
	.byte	'?'
	.ascii	"_temp_3676\0"
	.align
_Label_3734:
	.byte	'?'
	.ascii	"_temp_3675\0"
	.align
_Label_3735:
	.byte	'?'
	.ascii	"_temp_3674\0"
	.align
_Label_3736:
	.byte	'?'
	.ascii	"_temp_3673\0"
	.align
_Label_3737:
	.byte	'?'
	.ascii	"_temp_3670\0"
	.align
_Label_3738:
	.byte	'?'
	.ascii	"_temp_3669\0"
	.align
_Label_3739:
	.byte	'C'
	.ascii	"_temp_3668\0"
	.align
_Label_3740:
	.byte	'C'
	.ascii	"_temp_3665\0"
	.align
_Label_3741:
	.byte	'?'
	.ascii	"_temp_3660\0"
	.align
_Label_3742:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3743:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3744:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3745:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3746:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3747
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3747:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3748
	.word	_sourceFileName
	.word	355		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3748:
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
_Label_4114:
	push	r0
	sub	r1,1,r1
	bne	_Label_4114
	mov	2895,r13		! source line 2895
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2896,r13		! source line 2896
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2897,r13		! source line 2897
	mov	"\0\0AS",r10
	mov	2897,r13		! source line 2897
	mov	"\0\0SE",r10
!   _temp_3749 = &_P_Kernel_frameManager
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
	mov	2898,r13		! source line 2898
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2899,r13		! source line 2899
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2900,r13		! source line 2900
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2900,r13		! source line 2900
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
	.word	_Label_3750
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3751
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3752
	.word	-12
	.word	4
	.word	0
_Label_3750:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3751:
	.ascii	"Pself\0"
	.align
_Label_3752:
	.byte	'?'
	.ascii	"_temp_3749\0"
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
_Label_4115:
	push	r0
	sub	r1,1,r1
	bne	_Label_4115
	mov	2905,r13		! source line 2905
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3753 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3753  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2906,r13		! source line 2906
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2907,r13		! source line 2907
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3754 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3754  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2908,r13		! source line 2908
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2909,r13		! source line 2909
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3755 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3755  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2910,r13		! source line 2910
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2911,r13		! source line 2911
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3756 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3756  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2912,r13		! source line 2912
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2913,r13		! source line 2913
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3757 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3757  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2914,r13		! source line 2914
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2915,r13		! source line 2915
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3758 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3758  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2916,r13		! source line 2916
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2917,r13		! source line 2917
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2918,r13		! source line 2918
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2918,r13		! source line 2918
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
	.word	_Label_3759
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3760
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3761
	.word	-12
	.word	4
	.word	_Label_3762
	.word	-16
	.word	4
	.word	_Label_3763
	.word	-20
	.word	4
	.word	_Label_3764
	.word	-24
	.word	4
	.word	_Label_3765
	.word	-28
	.word	4
	.word	_Label_3766
	.word	-32
	.word	4
	.word	0
_Label_3759:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3760:
	.ascii	"Pself\0"
	.align
_Label_3761:
	.byte	'?'
	.ascii	"_temp_3758\0"
	.align
_Label_3762:
	.byte	'?'
	.ascii	"_temp_3757\0"
	.align
_Label_3763:
	.byte	'?'
	.ascii	"_temp_3756\0"
	.align
_Label_3764:
	.byte	'?'
	.ascii	"_temp_3755\0"
	.align
_Label_3765:
	.byte	'?'
	.ascii	"_temp_3754\0"
	.align
_Label_3766:
	.byte	'?'
	.ascii	"_temp_3753\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3767
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3767:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3768
	.word	_sourceFileName
	.word	372		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3768:
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
_Label_4116:
	push	r0
	sub	r1,1,r1
	bne	_Label_4116
	mov	2929,r13		! source line 2929
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3769 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3769  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2930,r13		! source line 2930
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2931,r13		! source line 2931
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3770 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3770  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2932,r13		! source line 2932
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2933,r13		! source line 2933
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3772		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3772
!	jmp	_Label_3771
_Label_3771:
! THEN...
	mov	2934,r13		! source line 2934
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2934,r13		! source line 2934
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
	jmp	_Label_3773
_Label_3772:
! ELSE...
	mov	2936,r13		! source line 2936
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3774 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3774  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2936,r13		! source line 2936
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3773:
! RETURN STATEMENT...
	mov	2933,r13		! source line 2933
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
	.word	_Label_3775
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3776
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3777
	.word	-12
	.word	4
	.word	_Label_3778
	.word	-16
	.word	4
	.word	_Label_3779
	.word	-20
	.word	4
	.word	0
_Label_3775:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3776:
	.ascii	"Pself\0"
	.align
_Label_3777:
	.byte	'?'
	.ascii	"_temp_3774\0"
	.align
_Label_3778:
	.byte	'?'
	.ascii	"_temp_3770\0"
	.align
_Label_3779:
	.byte	'?'
	.ascii	"_temp_3769\0"
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
_Label_4117:
	push	r0
	sub	r1,1,r1
	bne	_Label_4117
	mov	2942,r13		! source line 2942
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2952,r13		! source line 2952
	mov	"\0\0SE",r10
!   _temp_3780 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3781 = _temp_3780 + 4
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
	mov	2953,r13		! source line 2953
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2954,r13		! source line 2954
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
	mov	2955,r13		! source line 2955
	mov	"\0\0SE",r10
!   _temp_3782 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3783 = _temp_3782 + 4
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
	mov	2956,r13		! source line 2956
	mov	"\0\0RE",r10
	mov	2956,r13		! source line 2956
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3786 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3785  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3784  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3784  (sizeInBytes=1)
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
	.word	_Label_3787
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3788
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3789
	.word	12
	.word	4
	.word	_Label_3790
	.word	16
	.word	4
	.word	_Label_3791
	.word	-16
	.word	4
	.word	_Label_3792
	.word	-20
	.word	4
	.word	_Label_3793
	.word	-9
	.word	1
	.word	_Label_3794
	.word	-24
	.word	4
	.word	_Label_3795
	.word	-28
	.word	4
	.word	_Label_3796
	.word	-32
	.word	4
	.word	_Label_3797
	.word	-36
	.word	4
	.word	_Label_3798
	.word	-40
	.word	4
	.word	0
_Label_3787:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3788:
	.ascii	"Pself\0"
	.align
_Label_3789:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3790:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3791:
	.byte	'?'
	.ascii	"_temp_3786\0"
	.align
_Label_3792:
	.byte	'?'
	.ascii	"_temp_3785\0"
	.align
_Label_3793:
	.byte	'C'
	.ascii	"_temp_3784\0"
	.align
_Label_3794:
	.byte	'?'
	.ascii	"_temp_3783\0"
	.align
_Label_3795:
	.byte	'?'
	.ascii	"_temp_3782\0"
	.align
_Label_3796:
	.byte	'?'
	.ascii	"_temp_3781\0"
	.align
_Label_3797:
	.byte	'?'
	.ascii	"_temp_3780\0"
	.align
_Label_3798:
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
_Label_4118:
	push	r0
	sub	r1,1,r1
	bne	_Label_4118
	mov	2961,r13		! source line 2961
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2966,r13		! source line 2966
	mov	"\0\0IF",r10
	mov	2966,r13		! source line 2966
	mov	"\0\0SE",r10
!   _temp_3802 = &j
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3803) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3802  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3801  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3801 then goto _Label_3800 else goto _Label_3799
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3799
	jmp	_Label_3800
_Label_3799:
! THEN...
	mov	2967,r13		! source line 2967
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3804 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3804  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2967,r13		! source line 2967
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3800:
! RETURN STATEMENT...
	mov	2969,r13		! source line 2969
	mov	"\0\0RE",r10
!   ReturnResult: j  (sizeInBytes=4)
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
	.word	_Label_3805
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3806
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3807
	.word	-16
	.word	4
	.word	_Label_3808
	.word	-20
	.word	4
	.word	_Label_3809
	.word	-24
	.word	4
	.word	_Label_3810
	.word	-9
	.word	1
	.word	_Label_3811
	.word	-28
	.word	4
	.word	0
_Label_3805:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3806:
	.ascii	"Pself\0"
	.align
_Label_3807:
	.byte	'?'
	.ascii	"_temp_3804\0"
	.align
_Label_3808:
	.byte	'?'
	.ascii	"_temp_3803\0"
	.align
_Label_3809:
	.byte	'?'
	.ascii	"_temp_3802\0"
	.align
_Label_3810:
	.byte	'C'
	.ascii	"_temp_3801\0"
	.align
_Label_3811:
	.byte	'I'
	.ascii	"j\0"
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
_Label_4119:
	push	r0
	sub	r1,1,r1
	bne	_Label_4119
	mov	2974,r13		! source line 2974
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3000,r13		! source line 3000
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3815 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3814 = *_temp_3815  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3814) then goto _Label_3813
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3813
!	jmp	_Label_3812
_Label_3812:
! THEN...
	mov	3001,r13		! source line 3001
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3816 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3816  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3001,r13		! source line 3001
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3813:
! IF STATEMENT...
	mov	3005,r13		! source line 3005
	mov	"\0\0IF",r10
	mov	3005,r13		! source line 3005
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3820) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3819  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3819 == 1112300152 then goto _Label_3818		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3818
!	jmp	_Label_3817
_Label_3817:
! THEN...
	mov	3006,r13		! source line 3006
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3821 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3821  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	3006,r13		! source line 3006
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3007,r13		! source line 3007
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3818:
! ASSIGNMENT STATEMENT...
	mov	3011,r13		! source line 3011
	mov	"\0\0AS",r10
	mov	3011,r13		! source line 3011
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3822) then goto _runtimeErrorNullPointer
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
	mov	3012,r13		! source line 3012
	mov	"\0\0AS",r10
	mov	3012,r13		! source line 3012
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3823) then goto _runtimeErrorNullPointer
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
	mov	3013,r13		! source line 3013
	mov	"\0\0AS",r10
	mov	3013,r13		! source line 3013
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3824) then goto _runtimeErrorNullPointer
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
	mov	3014,r13		! source line 3014
	mov	"\0\0AS",r10
	mov	3014,r13		! source line 3014
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3825) then goto _runtimeErrorNullPointer
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
	mov	3015,r13		! source line 3015
	mov	"\0\0AS",r10
	mov	3015,r13		! source line 3015
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3826) then goto _runtimeErrorNullPointer
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
	mov	3016,r13		! source line 3016
	mov	"\0\0AS",r10
	mov	3016,r13		! source line 3016
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3827) then goto _runtimeErrorNullPointer
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
	mov	3019,r13		! source line 3019
	mov	"\0\0IF",r10
!   _temp_3830 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3830) then goto _Label_3829
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3829
!	jmp	_Label_3828
_Label_3828:
! THEN...
	mov	3020,r13		! source line 3020
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3831 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3831  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	3020,r13		! source line 3020
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3021,r13		! source line 3021
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3829:
! ASSIGNMENT STATEMENT...
	mov	3023,r13		! source line 3023
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
	mov	3027,r13		! source line 3027
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3833
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3833
!	jmp	_Label_3832
_Label_3832:
! THEN...
	mov	3028,r13		! source line 3028
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3834 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3834  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	3028,r13		! source line 3028
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3029,r13		! source line 3029
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3833:
! IF STATEMENT...
	mov	3033,r13		! source line 3033
	mov	"\0\0IF",r10
!   _temp_3837 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3837) then goto _Label_3836
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3836
!	jmp	_Label_3835
_Label_3835:
! THEN...
	mov	3034,r13		! source line 3034
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3838 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3838  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	3034,r13		! source line 3034
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3035,r13		! source line 3035
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3836:
! IF STATEMENT...
	mov	3037,r13		! source line 3037
	mov	"\0\0IF",r10
!   _temp_3841 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3841 then goto _Label_3840		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3840
!	jmp	_Label_3839
_Label_3839:
! THEN...
	mov	3038,r13		! source line 3038
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3842 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3842  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	3038,r13		! source line 3038
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3039,r13		! source line 3039
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3840:
! ASSIGNMENT STATEMENT...
	mov	3041,r13		! source line 3041
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
	mov	3044,r13		! source line 3044
	mov	"\0\0IF",r10
!   _temp_3845 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3845) then goto _Label_3844
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3844
!	jmp	_Label_3843
_Label_3843:
! THEN...
	mov	3045,r13		! source line 3045
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3846 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3846  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	3045,r13		! source line 3045
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3046,r13		! source line 3046
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3844:
! IF STATEMENT...
	mov	3048,r13		! source line 3048
	mov	"\0\0IF",r10
!   _temp_3849 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3849 then goto _Label_3848		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3848
!	jmp	_Label_3847
_Label_3847:
! THEN...
	mov	3049,r13		! source line 3049
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3850 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3850  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	3049,r13		! source line 3049
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3050,r13		! source line 3050
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3848:
! ASSIGNMENT STATEMENT...
	mov	3052,r13		! source line 3052
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
	mov	3055,r13		! source line 3055
	mov	"\0\0AS",r10
!   _temp_3853 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3852 = _temp_3853 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3851 = _temp_3852 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   j = _temp_3851 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3070,r13		! source line 3070
	mov	"\0\0IF",r10
!   if j <= 20 then goto _Label_3855		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3855
!	jmp	_Label_3854
_Label_3854:
! THEN...
	mov	3071,r13		! source line 3071
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3856 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3856  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3071,r13		! source line 3071
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3857 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3857  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=j  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3072,r13		! source line 3072
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3858 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3858  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3073,r13		! source line 3073
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3074,r13		! source line 3074
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3855:
! SEND STATEMENT...
	mov	3076,r13		! source line 3076
	mov	"\0\0SE",r10
!   _temp_3859 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=j  sizeInBytes=4
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
	mov	3082,r13		! source line 3082
	mov	"\0\0IF",r10
	mov	3082,r13		! source line 3082
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3863) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3862  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3862 == 707406378 then goto _Label_3861		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3861
!	jmp	_Label_3860
_Label_3860:
! THEN...
	mov	3083,r13		! source line 3083
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3864 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3864  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3083,r13		! source line 3083
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3084,r13		! source line 3084
	mov	"\0\0SE",r10
!   _temp_3865 = &_P_Kernel_frameManager
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
	mov	3085,r13		! source line 3085
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3861:
! ASSIGNMENT STATEMENT...
	mov	3089,r13		! source line 3089
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
	mov	3090,r13		! source line 3090
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3870 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3871 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_3870  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3866:
!   Perform the FOR-LOOP termination test
!   if j > _temp_3871 then goto _Label_3869		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3869
_Label_3867:
	mov	3090,r13		! source line 3090
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3091,r13		! source line 3091
	mov	"\0\0AS",r10
	mov	3091,r13		! source line 3091
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
	mov	3094,r13		! source line 3094
	mov	"\0\0IF",r10
	mov	3094,r13		! source line 3094
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3875) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3874  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3874 then goto _Label_3873 else goto _Label_3872
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3872
	jmp	_Label_3873
_Label_3872:
! THEN...
	mov	3095,r13		! source line 3095
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3876 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3876  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3095,r13		! source line 3095
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3096,r13		! source line 3096
	mov	"\0\0SE",r10
!   _temp_3877 = &_P_Kernel_frameManager
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
	mov	3097,r13		! source line 3097
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3873:
! SEND STATEMENT...
	mov	3099,r13		! source line 3099
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
	mov	3100,r13		! source line 3100
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3868:
!   j = j + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3866
! END FOR
_Label_3869:
! IF STATEMENT...
	mov	3104,r13		! source line 3104
	mov	"\0\0IF",r10
	mov	3104,r13		! source line 3104
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3881) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3880  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3880 == 707406378 then goto _Label_3879		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3879
!	jmp	_Label_3878
_Label_3878:
! THEN...
	mov	3105,r13		! source line 3105
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3882 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3882  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3105,r13		! source line 3105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3106,r13		! source line 3106
	mov	"\0\0SE",r10
!   _temp_3883 = &_P_Kernel_frameManager
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
	mov	3107,r13		! source line 3107
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3879:
! FOR STATEMENT...
	mov	3111,r13		! source line 3111
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3888 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3889 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_3888  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3884:
!   Perform the FOR-LOOP termination test
!   if j > _temp_3889 then goto _Label_3887		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3887
_Label_3885:
	mov	3111,r13		! source line 3111
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3112,r13		! source line 3112
	mov	"\0\0AS",r10
	mov	3112,r13		! source line 3112
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
	mov	3115,r13		! source line 3115
	mov	"\0\0IF",r10
	mov	3115,r13		! source line 3115
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3893) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3892  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3892 then goto _Label_3891 else goto _Label_3890
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3890
	jmp	_Label_3891
_Label_3890:
! THEN...
	mov	3116,r13		! source line 3116
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3894 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3894  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3116,r13		! source line 3116
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3117,r13		! source line 3117
	mov	"\0\0SE",r10
!   _temp_3895 = &_P_Kernel_frameManager
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
	mov	3118,r13		! source line 3118
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3891:
! ASSIGNMENT STATEMENT...
	mov	3120,r13		! source line 3120
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3886:
!   j = j + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3884
! END FOR
_Label_3887:
! IF STATEMENT...
	mov	3124,r13		! source line 3124
	mov	"\0\0IF",r10
	mov	3124,r13		! source line 3124
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3899) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3898  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3898 == 707406378 then goto _Label_3897		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3897
!	jmp	_Label_3896
_Label_3896:
! THEN...
	mov	3125,r13		! source line 3125
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3900 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3900  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3125,r13		! source line 3125
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3126,r13		! source line 3126
	mov	"\0\0SE",r10
!   _temp_3901 = &_P_Kernel_frameManager
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
	mov	3127,r13		! source line 3127
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3897:
! ASSIGNMENT STATEMENT...
	mov	3131,r13		! source line 3131
	mov	"\0\0AS",r10
	mov	3131,r13		! source line 3131
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
	mov	3135,r13		! source line 3135
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3138,r13		! source line 3138
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
	.word	_Label_3902
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3903
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3904
	.word	12
	.word	4
	.word	_Label_3905
	.word	-16
	.word	4
	.word	_Label_3906
	.word	-20
	.word	4
	.word	_Label_3907
	.word	-24
	.word	4
	.word	_Label_3908
	.word	-28
	.word	4
	.word	_Label_3909
	.word	-32
	.word	4
	.word	_Label_3910
	.word	-36
	.word	4
	.word	_Label_3911
	.word	-40
	.word	4
	.word	_Label_3912
	.word	-9
	.word	1
	.word	_Label_3913
	.word	-44
	.word	4
	.word	_Label_3914
	.word	-48
	.word	4
	.word	_Label_3915
	.word	-52
	.word	4
	.word	_Label_3916
	.word	-56
	.word	4
	.word	_Label_3917
	.word	-60
	.word	4
	.word	_Label_3918
	.word	-64
	.word	4
	.word	_Label_3919
	.word	-68
	.word	4
	.word	_Label_3920
	.word	-72
	.word	4
	.word	_Label_3921
	.word	-76
	.word	4
	.word	_Label_3922
	.word	-10
	.word	1
	.word	_Label_3923
	.word	-80
	.word	4
	.word	_Label_3924
	.word	-84
	.word	4
	.word	_Label_3925
	.word	-88
	.word	4
	.word	_Label_3926
	.word	-92
	.word	4
	.word	_Label_3927
	.word	-96
	.word	4
	.word	_Label_3928
	.word	-100
	.word	4
	.word	_Label_3929
	.word	-104
	.word	4
	.word	_Label_3930
	.word	-108
	.word	4
	.word	_Label_3931
	.word	-112
	.word	4
	.word	_Label_3932
	.word	-116
	.word	4
	.word	_Label_3933
	.word	-120
	.word	4
	.word	_Label_3934
	.word	-124
	.word	4
	.word	_Label_3935
	.word	-128
	.word	4
	.word	_Label_3936
	.word	-132
	.word	4
	.word	_Label_3937
	.word	-136
	.word	4
	.word	_Label_3938
	.word	-140
	.word	4
	.word	_Label_3939
	.word	-144
	.word	4
	.word	_Label_3940
	.word	-148
	.word	4
	.word	_Label_3941
	.word	-152
	.word	4
	.word	_Label_3942
	.word	-156
	.word	4
	.word	_Label_3943
	.word	-160
	.word	4
	.word	_Label_3944
	.word	-164
	.word	4
	.word	_Label_3945
	.word	-168
	.word	4
	.word	_Label_3946
	.word	-172
	.word	4
	.word	_Label_3947
	.word	-176
	.word	4
	.word	_Label_3948
	.word	-180
	.word	4
	.word	_Label_3949
	.word	-184
	.word	4
	.word	_Label_3950
	.word	-188
	.word	4
	.word	_Label_3951
	.word	-192
	.word	4
	.word	_Label_3952
	.word	-196
	.word	4
	.word	_Label_3953
	.word	-200
	.word	4
	.word	_Label_3954
	.word	-204
	.word	4
	.word	_Label_3955
	.word	-208
	.word	4
	.word	_Label_3956
	.word	-212
	.word	4
	.word	_Label_3957
	.word	-216
	.word	4
	.word	_Label_3958
	.word	-220
	.word	4
	.word	_Label_3959
	.word	-224
	.word	4
	.word	_Label_3960
	.word	-228
	.word	4
	.word	_Label_3961
	.word	-232
	.word	4
	.word	_Label_3962
	.word	-236
	.word	4
	.word	_Label_3963
	.word	-240
	.word	4
	.word	_Label_3964
	.word	-244
	.word	4
	.word	_Label_3965
	.word	-248
	.word	4
	.word	_Label_3966
	.word	-252
	.word	4
	.word	_Label_3967
	.word	-256
	.word	4
	.word	_Label_3968
	.word	-260
	.word	4
	.word	_Label_3969
	.word	-264
	.word	4
	.word	_Label_3970
	.word	-268
	.word	4
	.word	0
_Label_3902:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3903:
	.ascii	"Pself\0"
	.align
_Label_3904:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3905:
	.byte	'?'
	.ascii	"_temp_3901\0"
	.align
_Label_3906:
	.byte	'?'
	.ascii	"_temp_3900\0"
	.align
_Label_3907:
	.byte	'?'
	.ascii	"_temp_3899\0"
	.align
_Label_3908:
	.byte	'?'
	.ascii	"_temp_3898\0"
	.align
_Label_3909:
	.byte	'?'
	.ascii	"_temp_3895\0"
	.align
_Label_3910:
	.byte	'?'
	.ascii	"_temp_3894\0"
	.align
_Label_3911:
	.byte	'?'
	.ascii	"_temp_3893\0"
	.align
_Label_3912:
	.byte	'C'
	.ascii	"_temp_3892\0"
	.align
_Label_3913:
	.byte	'?'
	.ascii	"_temp_3889\0"
	.align
_Label_3914:
	.byte	'?'
	.ascii	"_temp_3888\0"
	.align
_Label_3915:
	.byte	'?'
	.ascii	"_temp_3883\0"
	.align
_Label_3916:
	.byte	'?'
	.ascii	"_temp_3882\0"
	.align
_Label_3917:
	.byte	'?'
	.ascii	"_temp_3881\0"
	.align
_Label_3918:
	.byte	'?'
	.ascii	"_temp_3880\0"
	.align
_Label_3919:
	.byte	'?'
	.ascii	"_temp_3877\0"
	.align
_Label_3920:
	.byte	'?'
	.ascii	"_temp_3876\0"
	.align
_Label_3921:
	.byte	'?'
	.ascii	"_temp_3875\0"
	.align
_Label_3922:
	.byte	'C'
	.ascii	"_temp_3874\0"
	.align
_Label_3923:
	.byte	'?'
	.ascii	"_temp_3871\0"
	.align
_Label_3924:
	.byte	'?'
	.ascii	"_temp_3870\0"
	.align
_Label_3925:
	.byte	'?'
	.ascii	"_temp_3865\0"
	.align
_Label_3926:
	.byte	'?'
	.ascii	"_temp_3864\0"
	.align
_Label_3927:
	.byte	'?'
	.ascii	"_temp_3863\0"
	.align
_Label_3928:
	.byte	'?'
	.ascii	"_temp_3862\0"
	.align
_Label_3929:
	.byte	'?'
	.ascii	"_temp_3859\0"
	.align
_Label_3930:
	.byte	'?'
	.ascii	"_temp_3858\0"
	.align
_Label_3931:
	.byte	'?'
	.ascii	"_temp_3857\0"
	.align
_Label_3932:
	.byte	'?'
	.ascii	"_temp_3856\0"
	.align
_Label_3933:
	.byte	'?'
	.ascii	"_temp_3853\0"
	.align
_Label_3934:
	.byte	'?'
	.ascii	"_temp_3852\0"
	.align
_Label_3935:
	.byte	'?'
	.ascii	"_temp_3851\0"
	.align
_Label_3936:
	.byte	'?'
	.ascii	"_temp_3850\0"
	.align
_Label_3937:
	.byte	'?'
	.ascii	"_temp_3849\0"
	.align
_Label_3938:
	.byte	'?'
	.ascii	"_temp_3846\0"
	.align
_Label_3939:
	.byte	'?'
	.ascii	"_temp_3845\0"
	.align
_Label_3940:
	.byte	'?'
	.ascii	"_temp_3842\0"
	.align
_Label_3941:
	.byte	'?'
	.ascii	"_temp_3841\0"
	.align
_Label_3942:
	.byte	'?'
	.ascii	"_temp_3838\0"
	.align
_Label_3943:
	.byte	'?'
	.ascii	"_temp_3837\0"
	.align
_Label_3944:
	.byte	'?'
	.ascii	"_temp_3834\0"
	.align
_Label_3945:
	.byte	'?'
	.ascii	"_temp_3831\0"
	.align
_Label_3946:
	.byte	'?'
	.ascii	"_temp_3830\0"
	.align
_Label_3947:
	.byte	'?'
	.ascii	"_temp_3827\0"
	.align
_Label_3948:
	.byte	'?'
	.ascii	"_temp_3826\0"
	.align
_Label_3949:
	.byte	'?'
	.ascii	"_temp_3825\0"
	.align
_Label_3950:
	.byte	'?'
	.ascii	"_temp_3824\0"
	.align
_Label_3951:
	.byte	'?'
	.ascii	"_temp_3823\0"
	.align
_Label_3952:
	.byte	'?'
	.ascii	"_temp_3822\0"
	.align
_Label_3953:
	.byte	'?'
	.ascii	"_temp_3821\0"
	.align
_Label_3954:
	.byte	'?'
	.ascii	"_temp_3820\0"
	.align
_Label_3955:
	.byte	'?'
	.ascii	"_temp_3819\0"
	.align
_Label_3956:
	.byte	'?'
	.ascii	"_temp_3816\0"
	.align
_Label_3957:
	.byte	'?'
	.ascii	"_temp_3815\0"
	.align
_Label_3958:
	.byte	'?'
	.ascii	"_temp_3814\0"
	.align
_Label_3959:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3960:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3961:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3962:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3963:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3964:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3965:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3966:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3967:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_3968:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3969:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3970:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
