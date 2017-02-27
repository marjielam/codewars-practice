# Level: 6kyu
# Instructions
#
# A child plays with a ball on the nth floor of a big building. The height of this floor is known:
#
# (float parameter "h" in meters, h > 0) .
#
# He lets out the ball. The ball rebounds for example to two-thirds:
#
# (float parameter "bounce", 0 < bounce < 1)
#
# of its height.
#
# His mother looks out of a window that is 1.5 meters from the ground:
#
# (float parameters window < h).
#
# How many times will the mother see the ball either falling or bouncing in front of the window
#
# (return a positive integer unless conditions are not fulfilled in which case return -1) ?

def bouncingBall(h, bounce, window)
  if h <= 0 || bounce <= 0 || bounce >= 1 || window >= h
    return -1
  else
    mother_count = 1
    mother_sees = true
    bounce_height = h
    while mother_sees
      bounce_height = bounce_height * bounce
      if bounce_height > window
        mother_count += 2
      else
        mother_sees = false
      end
    end
  end
  mother_count
end
