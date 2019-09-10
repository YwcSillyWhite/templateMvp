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
<#if isSwipe>
import com.purewhite.ywc.purewhitelibrary.adapter.swipe.SwipLoadListener;
</#if>
<#if isRecyclerview>
import ${packageName}.mvp.adapter.${adapterName};
import androidx.recyclerview.widget.LinearLayoutManager;
</#if>

public class ${fragmentName} extends BaseMvpFragment<${fragmentBind},${basePresenter}> ${contractImp} {

   <#if isRecyclerview>
   private ${adapterName} adapter;
   </#if>
   <#if isSwipe>
   private SwipLoadListener swipLoadListener=new SwipLoadListener() {
        @Override
        public void pullDown() {

        }
   };
   </#if>

   @Override
    protected int getLayout() {
        return R.layout.${fragmentLayout};
    }

    @Override
    protected void initView() {
         <#if isSwipe>
            mDataBinding.swipeLayout.setOnLoadLinstener(swipLoadListener);
         </#if>
         <#if isRecyclerview>
            adapter=new ${adapterName}();
            mDataBinding.recyclerView.setAdapter(adapter);
            mDataBinding.recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
         </#if>
    }

    <#if !isMvp>
     @Override
     protected boolean isPresenter() {
         return false;
     }
    </#if>
}
