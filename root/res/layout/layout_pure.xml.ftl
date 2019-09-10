<?xml version="1.0" encoding="utf-8"?>
<layout xmlns:android="http://schemas.android.com/apk/res/android">
    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:orientation="vertical">
        <#if isRecyclerview>
        <androidx.recyclerview.widget.RecyclerView
             android:layout_width="match_parent"
             android:layout_height="match_parent"
             android:id="@+id/recycler_view">
        </androidx.recyclerview.widget.RecyclerView>
        </#if>
    </LinearLayout>
</layout>