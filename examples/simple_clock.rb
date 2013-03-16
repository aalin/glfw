require 'glfw'
require 'gl'

module GL
  def self.glBegin(*args)
    super

    if block_given?
      yield
      glEnd
    end
  end
end

class Clock
  DETAIL = 60
  RADIUS = 1.5

  def draw
    glColor(1.0, 1.0, 1.0)
    draw_frame
    draw_markers
    draw_pointers
  end

  private

  def draw_frame
    glBegin(GL_LINE_STRIP) do
      DETAIL.next.times do |i|
        glVertex(vertex_at(i, DETAIL, RADIUS))
      end
    end
  end

  def draw_markers
    60.times do |i|
      if i % 5 == 0
        glLineWidth(2.0)
        glBegin(GL_LINES) do
          glVertex(vertex_at(i, 60, RADIUS * 0.9))
          glVertex(vertex_at(i, 60, RADIUS * 1.1))
        end
      else
        glLineWidth(1.0)
        glBegin(GL_LINES) do
          glVertex(vertex_at(i, 60, RADIUS * 0.95))
          glVertex(vertex_at(i, 60, RADIUS * 1.05))
        end
      end
    end
  end

  def draw_pointers
    now = (Time.now.to_f + Time.now.utc_offset)
    seconds = now % 60
    minutes = now / 60 % 60
    hours = now / 60 / 60 % 12

    # Hours
    glLineWidth(8.0)
    glBegin(GL_LINES) do
      glVertex(0.0, 0.0)
      glVertex(vertex_at(hours, 12, RADIUS * 0.5))
    end

    # Minutes
    glLineWidth(3.5)
    glBegin(GL_LINES) do
      glVertex(0.0, 0.0)
      glVertex(vertex_at(minutes, 60, RADIUS * 0.75))
    end

    # Seconds
    glLineWidth(2.0)
    glBegin(GL_LINES) do
      glVertex(0.0, 0.0)
      glVertex(vertex_at(seconds, 60, RADIUS * 1.0))
    end

    glPointSize(15.0)
    glBegin(GL_POINTS) do
      glVertex(0.0, 0.0)
    end
  end

  def vertex_at(t, detail, radius)
    [
      Math.cos((t * 360.0 / detail + 90.0) / 180.0 * Math::PI) * radius,
      Math.sin((t * 360.0 / detail + 90.0) / 180.0 * Math::PI) * radius
    ]
  end
end

GLFW.open(500, 500) do |glfw|
  glfw.title = "Simple clock"

  glfw.key_func = lambda do |key, action|
    if action == GLFW::C::GLFW_PRESS && key == GLFW::C::GLFW_KEY_ESC
      glfw.stop!
    end
  end

  glClearColor(0, 0, 0, 0)
  glEnable(GL_BLEND)
  glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA)
  glEnable(GL_LINE_SMOOTH)
  glEnable(GL_POINT_SMOOTH)

  clock = Clock.new

  glfw.run do |s|
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)
    glMatrixMode(GL_PROJECTION)
    glLoadIdentity
    glOrtho(2.0, -2.0, -2.0, 2.0, -1.0, 1.0)
    glMatrixMode(GL_MODELVIEW)
    glLoadIdentity

    clock.draw
  end
end
