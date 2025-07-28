Lua卡片边角按压动效
===
·在Lua中实现卡片边角按压的最简单方式

原理：通过八个角透明控件触摸判定和旋转动画实现效果

·代码解析


引入类模块
import "android.view.animation.Animation"
import "android.animation.ObjectAnimator"
import "android.view.animation.RotateAnimation"
import "android.view.animation.DecelerateInterpolator"

触摸事件
判定区控件id.onTouch=function(v,e)
  if e.getAction() == MotionEvent.ACTION_DOWN then
    --按下
   elseif e.getAction() == MotionEvent.ACTION_UP then
    --抬起
  end
end

点击事件
id.onClick=function(v)

end

翻转动画
    动画 = ObjectAnimator .ofFloat(卡片id, "rotation X或Y", {开始角度, 结束角度})
    动画.setRepeatCount(0)    //执行1次
    动画.setDuration(30)    //等待时长
    动画.start()    //开始执行

缩放动画
    动画 = ObjectAnimator.ofFloat(卡片id, "scale X或Y", {开始大小倍数, 结束大小倍数})
    动画.setRepeatCount(0)   //执行1次
    动画.setDuration(30)   //等待时长
    动画.setInterpolator(DecelerateInterpolator());
    动画.start();    //开始执行


·实例：见下方释放

·声明：该代码若二改、二次发布，须标明原作者
