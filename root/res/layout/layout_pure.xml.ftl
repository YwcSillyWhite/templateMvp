<?xml version="1.0" encoding="utf-8"?>
<layout xmlns:android="http://schemas.android.com/apk/res/android">
    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:orientation="vertical">
        <#if isSwipe && isRecyclerview>
        <com.purewhite.ywc.purewhitelibrary.adapter.swipe.ScrollSwipeLayout
              android:layout_width="match_parent"
              android:layout_height="match_parent"
              android:id="@+id/swipe_layout">
              <androidx.recyclerview.widget.RecyclerView
                   android:layout_width="match_parent"
                   android:layout_height="match_parent"
                   android:id="@+id/recycler_view">
              </androidx.recyclerview.widget.RecyclerView>
        </com.purewhite.ywc.purewhitelibrary.adapter.swipe.ScrollSwipeLayout>
        <#elseif isSwipe>
         <com.purewhite.ywc.purewhitelibrary.adapter.swipe.ScrollSwipeLayout
               android:layout_width="match_parent"
               android:layout_height="match_parent"
               android:id="@+id/swipe_layout">
         </com.purewhite.ywc.purewhitelibrary.adapter.swipe.ScrollSwipeLayout>
        <#elseif isRecyclerview>
        <androidx.recyclerview.widget.RecyclerView
                android:layout_width="match_parent"
                android:layout_height="match_parent"
                android:id="@+id/recycler_view">
         </androidx.recyclerview.widget.RecyclerView>
        </#if>
    </LinearLayout>
</layout>