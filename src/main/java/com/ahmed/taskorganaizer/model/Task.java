package com.ahmed.taskorganaizer.model;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by ahmed on 1/7/2017.
 */
@Entity(name="task")
public class Task {

    @Id
    @Column(name="task_id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String name;
    private String description;
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="date")
    private Date dateCreated;
    private boolean finished;

    public Task(){}

    public Task(String name, String description, Date dateCreated, boolean finished) {
        this.name = name;
        this.description = description;
        this.dateCreated = dateCreated;
        this.finished = finished;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }

    public boolean isFinished() {
        return finished;
    }

    public void setFinished(boolean finished) {
        this.finished = finished;
    }

    @Override
    public String toString() {
        return "Task{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", dateCreated=" + dateCreated +
                ", finished=" + finished +
                '}';
    }
}

