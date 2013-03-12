class GLFW
  module C
    extend FFI::Library
    ffi_lib 'glfw'

    GLFW_VERSION_MAJOR = 2
    GLFW_VERSION_MINOR = 7
    GLFW_VERSION_REVISION = 7
    GLFW_RELEASE = 0
    GLFW_PRESS = 1
    GLFW_KEY_UNKNOWN = -1
    GLFW_KEY_SPACE = 32
    GLFW_KEY_SPECIAL = 256
    GLFW_KEY_ESC = GLFW_KEY_SPECIAL + 1
    GLFW_KEY_F1 = GLFW_KEY_SPECIAL + 2
    GLFW_KEY_F2 = GLFW_KEY_SPECIAL + 3
    GLFW_KEY_F3 = GLFW_KEY_SPECIAL + 4
    GLFW_KEY_F4 = GLFW_KEY_SPECIAL + 5
    GLFW_KEY_F5 = GLFW_KEY_SPECIAL + 6
    GLFW_KEY_F6 = GLFW_KEY_SPECIAL + 7
    GLFW_KEY_F7 = GLFW_KEY_SPECIAL + 8
    GLFW_KEY_F8 = GLFW_KEY_SPECIAL + 9
    GLFW_KEY_F9 = GLFW_KEY_SPECIAL + 10
    GLFW_KEY_F10 = GLFW_KEY_SPECIAL + 11
    GLFW_KEY_F11 = GLFW_KEY_SPECIAL + 12
    GLFW_KEY_F12 = GLFW_KEY_SPECIAL + 13
    GLFW_KEY_F13 = GLFW_KEY_SPECIAL + 14
    GLFW_KEY_F14 = GLFW_KEY_SPECIAL + 15
    GLFW_KEY_F15 = GLFW_KEY_SPECIAL + 16
    GLFW_KEY_F16 = GLFW_KEY_SPECIAL + 17
    GLFW_KEY_F17 = GLFW_KEY_SPECIAL + 18
    GLFW_KEY_F18 = GLFW_KEY_SPECIAL + 19
    GLFW_KEY_F19 = GLFW_KEY_SPECIAL + 20
    GLFW_KEY_F20 = GLFW_KEY_SPECIAL + 21
    GLFW_KEY_F21 = GLFW_KEY_SPECIAL + 22
    GLFW_KEY_F22 = GLFW_KEY_SPECIAL + 23
    GLFW_KEY_F23 = GLFW_KEY_SPECIAL + 24
    GLFW_KEY_F24 = GLFW_KEY_SPECIAL + 25
    GLFW_KEY_F25 = GLFW_KEY_SPECIAL + 26
    GLFW_KEY_UP = GLFW_KEY_SPECIAL + 27
    GLFW_KEY_DOWN = GLFW_KEY_SPECIAL + 28
    GLFW_KEY_LEFT = GLFW_KEY_SPECIAL + 29
    GLFW_KEY_RIGHT = GLFW_KEY_SPECIAL + 30
    GLFW_KEY_LSHIFT = GLFW_KEY_SPECIAL + 31
    GLFW_KEY_RSHIFT = GLFW_KEY_SPECIAL + 32
    GLFW_KEY_LCTRL = GLFW_KEY_SPECIAL + 33
    GLFW_KEY_RCTRL = GLFW_KEY_SPECIAL + 34
    GLFW_KEY_LALT = GLFW_KEY_SPECIAL + 35
    GLFW_KEY_RALT = GLFW_KEY_SPECIAL + 36
    GLFW_KEY_TAB = GLFW_KEY_SPECIAL + 37
    GLFW_KEY_ENTER = GLFW_KEY_SPECIAL + 38
    GLFW_KEY_BACKSPACE = GLFW_KEY_SPECIAL + 39
    GLFW_KEY_INSERT = GLFW_KEY_SPECIAL + 40
    GLFW_KEY_DEL = GLFW_KEY_SPECIAL + 41
    GLFW_KEY_PAGEUP = GLFW_KEY_SPECIAL + 42
    GLFW_KEY_PAGEDOWN = GLFW_KEY_SPECIAL + 43
    GLFW_KEY_HOME = GLFW_KEY_SPECIAL + 44
    GLFW_KEY_END = GLFW_KEY_SPECIAL + 45
    GLFW_KEY_KP_0 = GLFW_KEY_SPECIAL + 46
    GLFW_KEY_KP_1 = GLFW_KEY_SPECIAL + 47
    GLFW_KEY_KP_2 = GLFW_KEY_SPECIAL + 48
    GLFW_KEY_KP_3 = GLFW_KEY_SPECIAL + 49
    GLFW_KEY_KP_4 = GLFW_KEY_SPECIAL + 50
    GLFW_KEY_KP_5 = GLFW_KEY_SPECIAL + 51
    GLFW_KEY_KP_6 = GLFW_KEY_SPECIAL + 52
    GLFW_KEY_KP_7 = GLFW_KEY_SPECIAL + 53
    GLFW_KEY_KP_8 = GLFW_KEY_SPECIAL + 54
    GLFW_KEY_KP_9 = GLFW_KEY_SPECIAL + 55
    GLFW_KEY_KP_DIVIDE = GLFW_KEY_SPECIAL + 56
    GLFW_KEY_KP_MULTIPLY = GLFW_KEY_SPECIAL + 57
    GLFW_KEY_KP_SUBTRACT = GLFW_KEY_SPECIAL + 58
    GLFW_KEY_KP_ADD = GLFW_KEY_SPECIAL + 59
    GLFW_KEY_KP_DECIMAL = GLFW_KEY_SPECIAL + 60
    GLFW_KEY_KP_EQUAL = GLFW_KEY_SPECIAL + 61
    GLFW_KEY_KP_ENTER = GLFW_KEY_SPECIAL + 62
    GLFW_KEY_KP_NUM_LOCK = GLFW_KEY_SPECIAL + 63
    GLFW_KEY_CAPS_LOCK = GLFW_KEY_SPECIAL + 64
    GLFW_KEY_SCROLL_LOCK = GLFW_KEY_SPECIAL + 65
    GLFW_KEY_PAUSE = GLFW_KEY_SPECIAL + 66
    GLFW_KEY_LSUPER = GLFW_KEY_SPECIAL + 67
    GLFW_KEY_RSUPER = GLFW_KEY_SPECIAL + 68
    GLFW_KEY_MENU = GLFW_KEY_SPECIAL + 69
    GLFW_KEY_LAST = GLFW_KEY_MENU
    GLFW_MOUSE_BUTTON_1 = 0
    GLFW_MOUSE_BUTTON_2 = 1
    GLFW_MOUSE_BUTTON_3 = 2
    GLFW_MOUSE_BUTTON_4 = 3
    GLFW_MOUSE_BUTTON_5 = 4
    GLFW_MOUSE_BUTTON_6 = 5
    GLFW_MOUSE_BUTTON_7 = 6
    GLFW_MOUSE_BUTTON_8 = 7
    GLFW_MOUSE_BUTTON_LAST = GLFW_MOUSE_BUTTON_8
    GLFW_MOUSE_BUTTON_LEFT = GLFW_MOUSE_BUTTON_1
    GLFW_MOUSE_BUTTON_RIGHT = GLFW_MOUSE_BUTTON_2
    GLFW_MOUSE_BUTTON_MIDDLE = GLFW_MOUSE_BUTTON_3
    GLFW_JOYSTICK_1 = 0
    GLFW_JOYSTICK_2 = 1
    GLFW_JOYSTICK_3 = 2
    GLFW_JOYSTICK_4 = 3
    GLFW_JOYSTICK_5 = 4
    GLFW_JOYSTICK_6 = 5
    GLFW_JOYSTICK_7 = 6
    GLFW_JOYSTICK_8 = 7
    GLFW_JOYSTICK_9 = 8
    GLFW_JOYSTICK_10 = 9
    GLFW_JOYSTICK_11 = 10
    GLFW_JOYSTICK_12 = 11
    GLFW_JOYSTICK_13 = 12
    GLFW_JOYSTICK_14 = 13
    GLFW_JOYSTICK_15 = 14
    GLFW_JOYSTICK_16 = 15
    GLFW_JOYSTICK_LAST = GLFW_JOYSTICK_16
    GLFW_WINDOW = 0x00010001
    GLFW_FULLSCREEN = 0x00010002
    GLFW_OPENED = 0x00020001
    GLFW_ACTIVE = 0x00020002
    GLFW_ICONIFIED = 0x00020003
    GLFW_ACCELERATED = 0x00020004
    GLFW_RED_BITS = 0x00020005
    GLFW_GREEN_BITS = 0x00020006
    GLFW_BLUE_BITS = 0x00020007
    GLFW_ALPHA_BITS = 0x00020008
    GLFW_DEPTH_BITS = 0x00020009
    GLFW_STENCIL_BITS = 0x0002000A
    GLFW_REFRESH_RATE = 0x0002000B
    GLFW_ACCUM_RED_BITS = 0x0002000C
    GLFW_ACCUM_GREEN_BITS = 0x0002000D
    GLFW_ACCUM_BLUE_BITS = 0x0002000E
    GLFW_ACCUM_ALPHA_BITS = 0x0002000F
    GLFW_AUX_BUFFERS = 0x00020010
    GLFW_STEREO = 0x00020011
    GLFW_WINDOW_NO_RESIZE = 0x00020012
    GLFW_FSAA_SAMPLES = 0x00020013
    GLFW_OPENGL_VERSION_MAJOR = 0x00020014
    GLFW_OPENGL_VERSION_MINOR = 0x00020015
    GLFW_OPENGL_FORWARD_COMPAT = 0x00020016
    GLFW_OPENGL_DEBUG_CONTEXT = 0x00020017
    GLFW_OPENGL_PROFILE = 0x00020018
    GLFW_OPENGL_CORE_PROFILE = 0x00050001
    GLFW_OPENGL_COMPAT_PROFILE = 0x00050002
    GLFW_MOUSE_CURSOR = 0x00030001
    GLFW_STICKY_KEYS = 0x00030002
    GLFW_STICKY_MOUSE_BUTTONS = 0x00030003
    GLFW_SYSTEM_KEYS = 0x00030004
    GLFW_KEY_REPEAT = 0x00030005
    GLFW_AUTO_POLL_EVENTS = 0x00030006
    GLFW_WAIT = 0x00040001
    GLFW_NOWAIT = 0x00040002
    GLFW_PRESENT = 0x00050001
    GLFW_AXES = 0x00050002
    GLFW_BUTTONS = 0x00050003
    GLFW_NO_RESCALE_BIT = 0x00000001
    GLFW_ORIGIN_UL_BIT = 0x00000002
    GLFW_BUILD_MIPMAPS_BIT = 0x00000004
    GLFW_ALPHA_MAP_BIT = 0x00000008
    GLFW_INFINITY = 100000.0
    callback :GLFWwindowsizefun, [:int, :int], :void
    callback :GLFWwindowclosefun, [:void], :int
    callback :GLFWwindowrefreshfun, [:void], :void
    callback :GLFWmousebuttonfun, [:int, :int], :void
    callback :GLFWmouseposfun, [:int, :int], :void
    callback :GLFWmousewheelfun, [:int], :void
    callback :GLFWkeyfun, [:int, :int], :void
    callback :GLFWcharfun, [:int, :int], :void
    callback :GLFWthreadfun, [:pointer], :void
    attach_function :glfwInit, [], :int
    attach_function :glfwTerminate, [], :void
    attach_function :glfwGetVersion, [:pointer, :pointer, :pointer], :void
    attach_function :glfwOpenWindow, [:int, :int, :int, :int, :int, :int, :int, :int, :int], :int
    attach_function :glfwOpenWindowHint, [:int, :int], :void
    attach_function :glfwCloseWindow, [], :void
    attach_function :glfwSetWindowTitle, [:pointer], :void
    attach_function :glfwGetWindowSize, [:pointer, :pointer], :void
    attach_function :glfwSetWindowSize, [:int, :int], :void
    attach_function :glfwSetWindowPos, [:int, :int], :void
    attach_function :glfwIconifyWindow, [], :void
    attach_function :glfwRestoreWindow, [], :void
    attach_function :glfwSwapBuffers, [], :void
    attach_function :glfwSwapInterval, [:int], :void
    attach_function :glfwGetWindowParam, [:int], :int
    attach_function :glfwSetWindowSizeCallback, [:GLFWwindowsizefun], :void
    attach_function :glfwSetWindowCloseCallback, [:GLFWwindowclosefun], :void
    attach_function :glfwSetWindowRefreshCallback, [:GLFWwindowrefreshfun], :void
    attach_function :glfwGetVideoModes, [:pointer, :int], :int
    attach_function :glfwGetDesktopMode, [:pointer], :void
    attach_function :glfwPollEvents, [], :void
    attach_function :glfwWaitEvents, [], :void
    attach_function :glfwGetKey, [:int], :int
    attach_function :glfwGetMouseButton, [:int], :int
    attach_function :glfwGetMousePos, [:pointer, :pointer], :void
    attach_function :glfwSetMousePos, [:int, :int], :void
    attach_function :glfwGetMouseWheel, [], :int
    attach_function :glfwSetMouseWheel, [:int], :void
    attach_function :glfwSetKeyCallback, [:GLFWkeyfun], :void
    attach_function :glfwSetCharCallback, [:GLFWcharfun], :void
    attach_function :glfwSetMouseButtonCallback, [:GLFWmousebuttonfun], :void
    attach_function :glfwSetMousePosCallback, [:GLFWmouseposfun], :void
    attach_function :glfwSetMouseWheelCallback, [:GLFWmousewheelfun], :void
    attach_function :glfwGetJoystickParam, [:int, :int], :int
    attach_function :glfwGetJoystickPos, [:int, :pointer, :int], :int
    attach_function :glfwGetJoystickButtons, [:int, :pointer, :int], :int
    attach_function :glfwGetTime, [], :double
    attach_function :glfwSetTime, [:double], :void
    attach_function :glfwSleep, [:double], :void
    attach_function :glfwExtensionSupported, [:pointer], :int
    attach_function :glfwGetProcAddress, [:pointer], :pointer
    attach_function :glfwGetGLVersion, [:pointer, :pointer, :pointer], :void
    attach_function :glfwCreateThread, [:GLFWthreadfun, :pointer], :pointer
    attach_function :glfwDestroyThread, [:pointer], :void
    attach_function :glfwWaitThread, [:pointer, :int], :int
    attach_function :glfwGetThreadID, [], :pointer
    attach_function :glfwCreateMutex, [], :pointer
    attach_function :glfwDestroyMutex, [:pointer], :void
    attach_function :glfwLockMutex, [:pointer], :void
    attach_function :glfwUnlockMutex, [:pointer], :void
    attach_function :glfwCreateCond, [], :pointer
    attach_function :glfwDestroyCond, [:pointer], :void
    attach_function :glfwWaitCond, [:pointer, :pointer, :double], :void
    attach_function :glfwSignalCond, [:pointer], :void
    attach_function :glfwBroadcastCond, [:pointer], :void
    attach_function :glfwGetNumberOfProcessors, [], :int
    attach_function :glfwEnable, [:int], :void
    attach_function :glfwDisable, [:int], :void
    attach_function :glfwReadImage, [:pointer, :pointer, :int], :int
    attach_function :glfwReadMemoryImage, [:pointer, :long, :pointer, :int], :int
    attach_function :glfwFreeImage, [:pointer], :void
    attach_function :glfwLoadTexture2D, [:pointer, :int], :int
    attach_function :glfwLoadMemoryTexture2D, [:pointer, :long, :int], :int
    attach_function :glfwLoadTextureImage2D, [:pointer, :int], :int
  end
end
