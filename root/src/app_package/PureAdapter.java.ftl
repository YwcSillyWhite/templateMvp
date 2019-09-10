package ${packageName}.mvp.adapter;

import com.purewhite.ywc.purewhitelibrary.adapter.recyclerview.BindAdapter;
import com.purewhite.ywc.purewhitelibrary.adapter.viewholder.BindHolder;
import ${packageName}.R;

public class ${adapterName} extends BindAdapter<String> {

    public ${adapterName}() {
         addLayout(R.layout.${adapterLayout});
    }

    @Override
    protected void onData(BindHolder holder, int dataPosition, String s, int itemViewType) {

    }
}

