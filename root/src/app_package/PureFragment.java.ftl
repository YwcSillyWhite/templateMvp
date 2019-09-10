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
<#if isRecyclerview>
import ${packageName}.mvp.adapter.${adapterName};
import androidx.recyclerview.widget.LinearLayoutManager;
</#if>

public class ${fragmentName} extends BaseMvpFragment<${fragmentBind},${basePresenter}> ${contractImp} {

   <#if isRecyclerview>
   private ${adapterName} adapter;
   </#if>

   @Override
    protected int getLayout() {
        return R.layout.${fragmentLayout};
    }

    @Override
    protected void initView() {
         <#if isRecyclerview>
            adapter=new ${adapterName}();
            mDataBinding.recyclerView.setAdapter(adapter);
            mDataBinding.recyclerView.setLayoutManager(new LinearLayoutManager(getContext));
         </#if>
    }

    <#if !isMvp>
     @Override
     protected boolean isPresenter() {
         return false;
     }
    </#if>
}
