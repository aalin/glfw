require 'ffi'
require "glfw/version"
require "glfw/c"

class GLFW
  def self.open(width, height)
    GLFW::C.glfwInit()
    GLFW::C.glfwOpenWindow(width, height, 0, 0, 0, 0, 16, 0, GLFW::C::GLFW_WINDOW)
    GLFW::C.glfwSwapInterval(1)

    glfw = new

    # If these are not stored in variables, they will be garbage collected.
    key_callback = lambda { |key, action| glfw.key_func.call(key, action) }
    char_callback = lambda { |char, action| glfw.char_func.call(char, action) }
    window_close_callback = lambda { glfw.stop! }

    GLFW::C.glfwSetKeyCallback(key_callback)
    GLFW::C.glfwSetCharCallback(char_callback)
    GLFW::C.glfwSetWindowCloseCallback(window_close_callback)

    yield glfw

    GLFW::C.glfwTerminate()
  end

  attr_accessor :key_func
  attr_accessor :char_func
  attr_accessor :last_update

  def initialize
    @running = true
    @key_func = lambda { |key, action| stop! if key == GLFW::C::GLFW_KEY_ESC }
    @char_func = lambda { |key, action| }
  end

  def run
    @last_update = Time.now

    while @running do
      now = Time.now
      yield now - @last_update
      @last_update = now

      GLFW::C.glfwSwapBuffers
    end
  end

  def stop!
    @running = false
  end

  def key?(key)
    GLFW::C.glfwGetKey(key) == 1
  end

  attr_reader :title

  def title=(title)
    @title = title
    GLFW::C.glfwSetWindowTitle(title)
  end

  def window_size
    pointers = Array.new(2) { FFI::MemoryPointer.new(:pointer) }
    GLFW::C.glfwGetWindowSize(*pointers)

    pointers.map do |pointer|
      pointer.get_uint32(0)
    end
  end
end
