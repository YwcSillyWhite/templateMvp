package ${presenterPackageName};

<#if !isFile>
import ${contractPackageName}.${contractName};
</#if>
import com.purewhite.ywc.purewhitelibrary.mvp.presenter.BasePresenter;

public class ${presenterName} extends BasePresenter<${contractName}.UiView> implements ${contractName}.Presenter {
}
