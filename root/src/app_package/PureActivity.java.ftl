package ${activityPackageName};


import ${packageName}.databinding.${activityBind};
import ${packageName}.R;
import com.purewhite.ywc.purewhitelibrary.mvp.activity.BaseMvpActivity;
<#if isMvp>
import ${contractPackageName}.${contractName};
import ${presenterPackageName}.${presenterName};
<#else>
import com.purewhite.ywc.purewhitelibrary.mvp.presenter.BasePresenter;
</#if>

public class ${activityName} extends BaseMvpActivity<${activityBind},${basePresenter}> ${contractImp} {

   @Override
    protected int getLayout() {
        return R.layout.${activityLayout};
    }

    @Override
    protected void initView() {

    }

    <#if !isMvp>
     @Override
     protected boolean isPresenter() {
         return false;
     }
    </#if>
}
