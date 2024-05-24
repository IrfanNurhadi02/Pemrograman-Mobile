package com.example.myapplication;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;

import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;

public class MainActivity extends AppCompatActivity {

   private FirebaseUser firebaseUser;
    private TextView textName;
    private Button btnLogout;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        textName = findViewById(R.id.nama);
        btnLogout = findViewById(R.id.btn_logout);

        firebaseUser = FirebaseAuth.getInstance().getCurrentUser();

        if (firebaseUser!=null) {
            textName.setText(firebaseUser.getDisplayName());

        }else{
            textName.setText("Login gagal");
        }
        btnLogout.setOnClickListener(view -> {
            FirebaseAuth.getInstance().signOut();
            startActivity(new Intent(getApplicationContext(), LoginActivity.class));
            finish();
        });

    }
}