require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "android.view.animation.Animation"
import "android.animation.ObjectAnimator"
import "android.view.animation.RotateAnimation"
import "android.view.animation.DecelerateInterpolator"

local Configuration = luajava.bindClass("android.content.res.Configuration")
local Build = luajava.bindClass("android.os.Build")
local function isDarkMode()
  local uiMode = activity.getResources().getConfiguration().uiMode
  return (uiMode & Configuration.UI_MODE_NIGHT_MASK) == Configuration.UI_MODE_NIGHT_YES
end
if isDarkMode() then
  colortext=0xFFFFFFFF
  backc1=0xFF000000
  backc2=0xFF1B1B1B
  activity.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS | WindowManager.LayoutParams.FLAG_TRANSLUCENT_NAVIGATION)
 else
  colortext=0xFF000000
  backc1=0xFFFFFFFF
  backc2=0xFFF2F1F6
  activity.getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR)
end
activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS).setStatusBarColor(backc2)

import "layout"

activity.setTheme(android.R.style.Theme_Material_Light_NoActionBar)
activity.setContentView(loadlayout(layout))

lt.onTouch=function(v,e)
  if e.getAction() == MotionEvent.ACTION_DOWN then
    开始ltX = ObjectAnimator .ofFloat(card, "rotationX", {0, 6})
    开始ltX.setRepeatCount(0)
    开始ltX.setDuration(30)
    开始ltX.start()
    开始ltY = ObjectAnimator .ofFloat(card, "rotationY", {0, -6})
    开始ltY.setRepeatCount(0)
    开始ltY.setDuration(30)
    开始ltY.start()
   elseif e.getAction() == MotionEvent.ACTION_UP then
    结束ltX = ObjectAnimator .ofFloat(card, "rotationX", {6, 0})
    结束ltX.setRepeatCount(0)
    结束ltX.setDuration(30)
    结束ltX.start()
    结束ltY = ObjectAnimator .ofFloat(card, "rotationY", {-6, 0})
    结束ltY.setRepeatCount(0)
    结束ltY.setDuration(30)
    结束ltY.start()
  end
end
lt.onClick=function(v)
  结束ltX = ObjectAnimator .ofFloat(card, "rotationX", {6, 0})
    结束ltX.setRepeatCount(0)
    结束ltX.setDuration(30)
    结束ltX.start()
    结束ltY = ObjectAnimator .ofFloat(card, "rotationY", {-6, 0})
    结束ltY.setRepeatCount(0)
    结束ltY.setDuration(30)
    结束ltY.start()
end

rt.onTouch=function(v,e)
  if e.getAction() == MotionEvent.ACTION_DOWN then
    开始ltX = ObjectAnimator .ofFloat(card, "rotationX", {0, 6})
    开始ltX.setRepeatCount(0)
    开始ltX.setDuration(30)
    开始ltX.start()
    开始ltY = ObjectAnimator .ofFloat(card, "rotationY", {0, 6})
    开始ltY.setRepeatCount(0)
    开始ltY.setDuration(30)
    开始ltY.start()
   elseif e.getAction() == MotionEvent.ACTION_UP then
    结束ltX = ObjectAnimator .ofFloat(card, "rotationX", {6, 0})
    结束ltX.setRepeatCount(0)
    结束ltX.setDuration(30)
    结束ltX.start()
    结束ltY = ObjectAnimator .ofFloat(card, "rotationY", {6, 0})
    结束ltY.setRepeatCount(0)
    结束ltY.setDuration(30)
    结束ltY.start()
  end
end
rt.onClick=function(v)
  结束ltX = ObjectAnimator .ofFloat(card, "rotationX", {6, 0})
    结束ltX.setRepeatCount(0)
    结束ltX.setDuration(30)
    结束ltX.start()
    结束ltY = ObjectAnimator .ofFloat(card, "rotationY", {6, 0})
    结束ltY.setRepeatCount(0)
    结束ltY.setDuration(30)
    结束ltY.start()
end

lb.onTouch=function(v,e)
  if e.getAction() == MotionEvent.ACTION_DOWN then
    开始ltX = ObjectAnimator .ofFloat(card, "rotationX", {0, -6})
    开始ltX.setRepeatCount(0)
    开始ltX.setDuration(30)
    开始ltX.start()
    开始ltY = ObjectAnimator .ofFloat(card, "rotationY", {0, -6})
    开始ltY.setRepeatCount(0)
    开始ltY.setDuration(30)
    开始ltY.start()
   elseif e.getAction() == MotionEvent.ACTION_UP then
    结束ltX = ObjectAnimator .ofFloat(card, "rotationX", {-6, 0})
    结束ltX.setRepeatCount(0)
    结束ltX.setDuration(30)
    结束ltX.start()
    结束ltY = ObjectAnimator .ofFloat(card, "rotationY", {-6, 0})
    结束ltY.setRepeatCount(0)
    结束ltY.setDuration(30)
    结束ltY.start()
  end
end
lb.onClick=function(v)
  结束ltX = ObjectAnimator .ofFloat(card, "rotationX", {-6, 0})
    结束ltX.setRepeatCount(0)
    结束ltX.setDuration(30)
    结束ltX.start()
    结束ltY = ObjectAnimator .ofFloat(card, "rotationY", {-6, 0})
    结束ltY.setRepeatCount(0)
    结束ltY.setDuration(30)
    结束ltY.start()
end

rb.onTouch=function(v,e)
  if e.getAction() == MotionEvent.ACTION_DOWN then
    开始ltX = ObjectAnimator .ofFloat(card, "rotationX", {0, -6})
    开始ltX.setRepeatCount(0)
    开始ltX.setDuration(30)
    开始ltX.start()
    开始ltY = ObjectAnimator .ofFloat(card, "rotationY", {0, 6})
    开始ltY.setRepeatCount(0)
    开始ltY.setDuration(30)
    开始ltY.start()
   elseif e.getAction() == MotionEvent.ACTION_UP then
    结束ltX = ObjectAnimator .ofFloat(card, "rotationX", {-6, 0})
    结束ltX.setRepeatCount(0)
    结束ltX.setDuration(30)
    结束ltX.start()
    结束ltY = ObjectAnimator .ofFloat(card, "rotationY", {6, 0})
    结束ltY.setRepeatCount(0)
    结束ltY.setDuration(30)
    结束ltY.start()
  end
end
rb.onClick=function(v)
  结束ltX = ObjectAnimator .ofFloat(card, "rotationX", {-6, 0})
    结束ltX.setRepeatCount(0)
    结束ltX.setDuration(30)
    结束ltX.start()
    结束ltY = ObjectAnimator .ofFloat(card, "rotationY", {6, 0})
    结束ltY.setRepeatCount(0)
    结束ltY.setDuration(30)
    结束ltY.start()
end

l.onTouch=function(v,e)
  if e.getAction() == MotionEvent.ACTION_DOWN then
    开始l = ObjectAnimator .ofFloat(card, "rotationY", {0, -6})
    开始l.setRepeatCount(0)
    开始l.setDuration(30)
    开始l.start()
   elseif e.getAction() == MotionEvent.ACTION_UP then
    结束l = ObjectAnimator .ofFloat(card, "rotationY", {-6, 0})
    结束l.setRepeatCount(0)
    结束l.setDuration(30)
    结束l.start()
  end
end
l.onClick=function(v)
  结束l = ObjectAnimator .ofFloat(card, "rotationY", {-6, 0})
    结束l.setRepeatCount(0)
    结束l.setDuration(30)
    结束l.start()
end

r.onTouch=function(v,e)
  if e.getAction() == MotionEvent.ACTION_DOWN then
    开始r = ObjectAnimator .ofFloat(card, "rotationY", {0, 6})
    开始r.setRepeatCount(0)
    开始r.setDuration(30)
    开始r.start()
   elseif e.getAction() == MotionEvent.ACTION_UP then
    结束r = ObjectAnimator .ofFloat(card, "rotationY", {6, 0})
    结束r.setRepeatCount(0)
    结束r.setDuration(30)
    结束r.start()
  end
end
r.onClick=function(v)
  结束r = ObjectAnimator .ofFloat(card, "rotationY", {6, 0})
    结束r.setRepeatCount(0)
    结束r.setDuration(30)
    结束r.start()
end

t.onTouch=function(v,e)
  if e.getAction() == MotionEvent.ACTION_DOWN then
    开始t = ObjectAnimator .ofFloat(card, "rotationX", {0, 6})
    开始t.setRepeatCount(0)
    开始t.setDuration(30)
    开始t.start()
   elseif e.getAction() == MotionEvent.ACTION_UP then
    结束t = ObjectAnimator .ofFloat(card, "rotationX", {6, 0})
    结束t.setRepeatCount(0)
    结束t.setDuration(30)
    结束t.start()
  end
end
t.onClick=function(v)
  结束t = ObjectAnimator .ofFloat(card, "rotationX", {6, 0})
    结束t.setRepeatCount(0)
    结束t.setDuration(30)
    结束t.start()
end

b.onTouch=function(v,e)
  if e.getAction() == MotionEvent.ACTION_DOWN then
    开始b = ObjectAnimator .ofFloat(card, "rotationX", {0, -6})
    开始b.setRepeatCount(0)
    开始b.setDuration(30)
    开始b.start()
   elseif e.getAction() == MotionEvent.ACTION_UP then
    结束b = ObjectAnimator .ofFloat(card, "rotationX", {-6, 0})
    结束b.setRepeatCount(0)
    结束b.setDuration(30)
    结束b.start()
  end
end
b.onClick=function(v)
  结束b = ObjectAnimator .ofFloat(card, "rotationX", {-6, 0})
    结束b.setRepeatCount(0)
    结束b.setDuration(30)
    结束b.start()
end


c.onTouch=function(v,e)
  if e.getAction() == MotionEvent.ACTION_DOWN then
    开始cx = ObjectAnimator.ofFloat(card, "scaleX", {1, 0.95})
    开始cx.setRepeatCount(0)
    开始cx.setDuration(30)
    开始cx.setInterpolator(DecelerateInterpolator());
    开始cx.start();
    开始cy = ObjectAnimator.ofFloat(card, "scaleY", {1, 0.95})
    开始cy.setRepeatCount(0)
    开始cy.setDuration(30)
    开始cy.setInterpolator(DecelerateInterpolator());
    开始cy.start();
   elseif e.getAction() == MotionEvent.ACTION_UP then
    结束cx = ObjectAnimator.ofFloat(card, "scaleX", {0.95, 1})
    结束cx.setRepeatCount(0)
    结束cx.setDuration(30)
    结束cx.setInterpolator(DecelerateInterpolator());
    结束cx.start();
    结束cy = ObjectAnimator.ofFloat(card, "scaleY", {0.95, 1})
    结束cy.setRepeatCount(0)
    结束cy.setDuration(30)
    结束cy.setInterpolator(DecelerateInterpolator());
    结束cy.start();
  end
end
c.onClick=function(v)
  结束cx = ObjectAnimator.ofFloat(card, "scaleX", {0.95, 1})
    结束cx.setRepeatCount(0)
    结束cx.setDuration(30)
    结束cx.setInterpolator(DecelerateInterpolator());
    结束cx.start();
    结束cy = ObjectAnimator.ofFloat(card, "scaleY", {0.95, 1})
    结束cy.setRepeatCount(0)
    结束cy.setDuration(30)
    结束cy.setInterpolator(DecelerateInterpolator());
    结束cy.start();
end
