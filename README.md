# Lua卡片边角按压动效
*在Lua中实现卡片边角按压的最简单方式
原理：通过八个角透明控件触摸判定和旋转动画实现效果
*解析
判定区控件id.onTouch=function(v,e)
if e.getAction() == MotionEvent.ACTION_DOWN then    //按下
elseif e.getAction() == MotionEvent.ACTION_UP then    //释放

    动画 = ObjectAnimator.ofFloat(执行动画卡片id "scaleX", {1, 0.95})
    动画.setRepeatCount(0)
    动画.setDuration(30)
    动画.setInterpolator(DecelerateInterpolator());
    动画.start();    //开始动画

    ……
实例：见下方释放
