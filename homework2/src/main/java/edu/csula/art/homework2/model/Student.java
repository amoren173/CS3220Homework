package edu.csula.art.homework1.model;

import java.time.Year;

public class Student {
    private static int idCounter = 0;

    private int id;
    private String name;
    private int session;
    private int birthYear;
    private String level;
    private String time1;
    private String time2;
    private boolean registered;

    public Student(String name, int session, int birthYear, String level, String time1, String time2) {
        this.id = ++idCounter;
        this.name = name;
        this.session = session;
        this.birthYear = birthYear;
        this.level = level;
        this.time1 = time1;
        this.time2 = time2;
        this.registered = false;

    }

    public static int getIdCounter() {
        return idCounter;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getSession() {
        return session;
    }

    public int getBirthYear() {
        return birthYear;
    }

    public String getLevel() {
        return level;
    }

    public String getTime1() {
        return time1;
    }

    public String getTime2() {
        return time2;
    }
    public boolean isRegistered() {
        return registered;
    }

    public void setRegistered(boolean registered) {
        this.registered = registered;
    }

    public int getAge(){
        int year = Year.now().getValue();
        return year - birthYear;
    }



}
