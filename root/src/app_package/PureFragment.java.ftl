package ${fragmentPackageName};


import ${packageName}.databinding.${fragmentBind};
import ${packageName}.R;
import com.purewhite.ywc.purewhitelibrary.mvp.fragment.BaseMvpFragment;
<#if isMvp>
<#if !isFile>
import ${contractPackageName}.${contractName};
import ${presenterPackageName}.${presenterName};
</#if>
<#else>
import com.purewhite.ywc.purewhitelibrary.mvp.presenter.BasePresenter;
</#if>

public class ${fragmentName} extends BaseMvpFragment<${fragmentBind},${basePresenter}> ${contractImp} {

   @Override
    protected int getLayout() {
        return R.layout.${fragmentLayout};
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
