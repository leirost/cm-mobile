# 🌇 City Manager App 🌇

### ❓ About the App:
> In cities, there is such a problem as breakdowns, holes on the roads, trees felled by the wind, and utilities often notice this too late. So why not create an application that will allow you to send issues directly to the municipality, so that the problem is immediately seen and solved?

##### Our app is a good option!
 
### 🧠 Main idea:
> The idea is that every resident of the city can create issues for those things that bother him ( example: a hole in the road). After the issue is created, you can track the status of its execution, communicate with the person who makes it
You can also use the map to look at which things in general in the city write these issues

### 🧑🏻‍💻  Meet the authors:
1) Timur Nugaev - Innopolis University bachelor student,  3rd year, Software Development track. Telegram: @aladdinych
Frontend dev
2) Mikhail Martovitsky - Innopolis University student, 3rd year, Software Development track. Telegram: @Mikhailh
Backend dev
3) Valeria Istomina - Innopolis University student, 3rd year, Software Development track. Telegram: @geralizz
Documentation writer

### 📱 Requirements

> Android or iOS

### Here's a 👉🏻 [Github](https://github.com/CityManagerApp) link of our project
* Please, pay attention to that fact that the app now is in Russian, because all developers are native Russian speakers, but after the app is done at least demo, English language will be added 

Also we have User Flow Diagram. Please, check it out [here](https://miro.com/app/board/o9J_l1wU3os=/)
### 🔗Here's the link to our [RUP](https://docs.google.com/document/d/1MNBx6Cfc33zThblWs4Ro1pboq2P2I8EQ/edit?usp=sharing&ouid=112247038745096422629&rtpof=true&sd=true) document! Here you can find some goals, user stories and non-functional requirements.


### 🖍 UX/UI design

Now we have pretty good design made in [figma](https://www.figma.com/file/0LUYQGhrCj6adIUaZUQv1T/Untitled?node-id=0%3A1). In the near future it will be the design of app.
![Background pic](https://ia.wampi.ru/2021/10/10/SNIMOK09579e0bc80aa261.png)
![](https://ic.wampi.ru/2021/10/10/SNIMOK1.png)
![](https://ic.wampi.ru/2021/10/10/SNIMOK2.png)


### 📕 Backend design
* Tech stack: String boot(java) + PostgreSql
* SOLID in backend:
![](https://ia.wampi.ru/2021/10/10/ssd1.jpg)
![](https://ic.wampi.ru/2021/10/10/ssd2.jpg)
1) __Single responsibility principle__: both IssueService and ClientService are responsible for only related to this class operations. For example IssueService operates only with issues: creates, extracts them by id or client.
2) __Dependency inversion principle__: ClientController use ClientService and does not know about implementation beside. It use interface methods to register and login client, but has no idea about implementation of this interface which is ClientServiceImpl. We can change the implementation, but interface will remain the same. Same can be applied to ClientIssueController and IssueService.
3) __Open-closed principle__: Services are easily extendable, but closed for modification.
4) __Interface segregation principle__: In the application there is no huge interfaces and each one that exists only has methods related to logic of this interface. 
#### Aplied patterns:
1) __Abstract Factory__: in the project there is a ClientMethodArgumentResolver, which implements HandlerMethodArgumentResolver is used to populate the argument in the controller. In our case this argument is Account, which is found by identifier. All HandlerMethodArgumentResolver are added inside the MvcConfig. MvcConfig has List of resolvers which inserted during initialization and then those resolvers applied when request comes to service.

### 🛠 Backend architecture
* Futire microservice architecture plan
![](https://ia.wampi.ru/2021/10/10/ssd3.jpg)
* cerrent MVP backend is monolith

### 📱 Application architecture
* Our application uses REST:
![](https://ia.wampi.ru/2021/10/10/ssd4.jpg)


### Backend start
In order to start backend locally use IntelliJ Idea, pull the project from [Repository](https://github.com/CityManagerApp/api-issue-service), ask Mikhail(@Mikhailh telegram) for data base credentials. Then start the application.
