package kz.narxoz.techorda.db;

import java.util.ArrayList;

public class DBManager {
    private static ArrayList<Tasks> tasks = new ArrayList<>();
    private static Long id = 5L;
    static {
        tasks.add(new Tasks(1L,"Создать веб приложение  на JAVA EE", "23.10.2021","ДА"));
        tasks.add(new Tasks(2L,"Убрать дома и закупить продукты","25.10.2021","ДА"));
        tasks.add(new Tasks(3L,"Выполнить все домашний задания","28.10.2021","НЕТ"));
        tasks.add(new Tasks(4L,"Записаться на качку","12.12.2021","НЕТ"));
        tasks.add(new Tasks(5L,"Учить Итальянский","01.05.2021","НЕТ"));
    }
    public static void AddTask(Tasks task){
        task.setId(id);
        tasks.add(task);
        id++;
    }
    public static Tasks getTask(Long id){
       Tasks t = null;
       for (Tasks tf: tasks){
           if (tf.id == id)
               t = tf;
       }
       return t;
    }
    public static ArrayList<Tasks> getAllTask(){
        return tasks;
    }
    public static void deleteTask(Long id){
        tasks.remove(id);
    }

    public static void updateTask(Tasks task) {
    }
}
