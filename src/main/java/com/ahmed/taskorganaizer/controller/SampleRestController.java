package com.ahmed.taskorganaizer.controller;

import com.ahmed.taskorganaizer.model.Task;
import com.ahmed.taskorganaizer.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;

/**
 * Created by ahmed on 1/7/2017.
 */
@RestController
public class SampleRestController {

    @Autowired
    private TaskService taskService;

    @GetMapping("/hello")
    public String hello(){

        return "hello world!! restful call";
    }

   /* @GetMapping("/tasks")
    public  String allTasks(){
        return taskService.findAll().toString();
    }

    @GetMapping("task/save")
    public String saveTask(@RequestParam String name, @RequestParam String desc){
        Task task = new Task(name, desc, new Date(), false);
        taskService.save(task);
        return "task saved!";
    }

    @GetMapping("task/delete")
    public String deleteTask(@RequestParam int id){

        taskService.delete(id);
        return "task deleted";
    }*/
}
