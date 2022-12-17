import 'package:flutter/foundation.dart';

var arrName=['Binary Search','Bubble Sort','Linear Search','Stack','Palindrome','Addition of Matrix','BFS and DFS','Circular Queue',' Singly Linked List',' Tower of Hanoi','Infix to Postfix','Pattern Matching','Student Details (Java)','Prims (Java)','QuickSort (Java)','MergeSort (Java)','Floyd (Java)','Djikstra (Java)','Kruskal (Java)','Knapsack_Greedy (Java)','Knapsack (Java)'];

var code=[''' #include <stdio.h>
int main()
{
  int num[100], n,i,low, high, mid,found=0,key;
printf("Enter the number of elements:\n");
scanf("%d",&n);
printf("Enter the numbers  in ascending order\n");
for (i=0; i<n; i++)
scanf("%d",&num[i]);
printf("Please enter the number to be searched\n ");
scanf("%d",&key);
low=0;
high=n-1;
while(low<=high && !found)
  {
  mid=(low+high)/2;
  if (num[mid]==key)
  found=1;
  else if (key>num[mid])
  low=mid+1;
  else
  high=mid-1;
  }
  if (found==1)
  printf ("\nNumber found in position %d",mid+1);
else
printf("\nNumber not found !!!");
  return 0;
}''','''#include <stdio.h>
 void main()
{
int a[10],i, j, n, temp;

printf("Enter the no. of elements \n");
scanf("%d",&n);

printf("\n Enter %d elements \n",n); 
for(i = 0 ; i< n ; i++)
scanf("%d",&a[i]);
printf("\n The original elements are \n"); 
for(i = 0 ; i< n ; i++)
printf("%d \n",a[i]);
for(i = 1 ; i< n ; i++)
{
for(j = 0 ; j < n-i; j++)
{
if(a[j] > a[j+1])
{
temp = a[j]; 
a[j] = a[j+1];
a[j+1] = temp;
}
}
}

printf("\n The Sorted elements are \n"); 
for(i = 0 ; i< n ; i++)
printf("%d \n",a[i]);

}''','''#include<stdio.h>
void main ()
{
  int a[100];
  int item,n, i,flag;
  printf("Enter the number of elements:\n");
  scanf("%d",&n);
  printf("Enter the numbers.\n");
  for (i=0; i<n; i++)
    scanf("%d",&a[i]);
  printf("Enter Item which is to be searched\n");
  scanf("%d",&item);
  for (i = 0; i< 100; i++)
  {
    if(a[i] == item)
    {
      flag = i+1;
      break;
    }
    else
      flag = 0;
  }
  if(flag != 0)
  {
    printf("\nItem found at location %d\n",flag);
  }
  else
  {
    printf("\nItem not found\n");
  }
}  ''','''#include<stdio.h>
#include<stdlib.h>

void push();
void pop();
void display();
int a[10],top=-1,choice;
void main(){

    while (1)
    {
        printf("Choose option for Operation\n");
        printf("1.Push\n2.Pop\n3.Display\n4.Exit\n");
        scanf("%d",&choice);
        switch (choice)
        {
        case 1:
            push();
        break;
        case 2: pop();
        break;
        case 3: display();
        break;
        case 4: exit(0);
        break;
        default:
        printf("you have entered wrong choice\n");
            break;
        }
    }
    

}
void push(){
    if(top == 9){
        printf("Stack is full");
    }
    else {
  int temp;
    printf("enter number which you want push\n");
    scanf("%d",&temp);
    a[++top] = temp;
    printf("%d is pushed into stack\n",temp);
    }
  
}
void pop(){
    if(top == -1){
        printf("Stack is already empty\n");
    }
    else
    {
        int temp;
        temp = a[top];
        a[top] = '\0';
        printf("%d is the deleted number\n",temp);
        top--;
    }
    

}
void display(){

    printf("The stcak contains the following values - \n");
    for(int i=0;i<=10;i++){
        printf("%d \n",a[i]);
    }
}''','''#include<stdio.h>
void main()
{
  int n,num,r;
  int rev=0;

  printf("Enter a four digit number\n");
  scanf("%d",&n);

  num = n;
  while(n != 0)
  {
    r= n%10;
    rev=rev*10+r;
    n = n / 10;
  }
  printf("\n%d\n",rev);
  if(num == rev)
    printf("The Number is Palindrome \n");
  else
    printf("The Number is not Palindrome \n");
}''','''#include<stdio.h>
void main()
{
    int a[3][3],b[3][3],x[3][3],i,j;
    printf("Enter nine number of 1st matrix\n");
    for(i=0;i<=2;i++)
    {
        for (j=0;j<=2;j++)
        {
            scanf("%d",&a[i][j]);
        }
    }
    printf("Enter nine number of 2st matrix\n");
    for(i=0;i<=2;i++)
    {
        for(j=0;j<=2;j++)
        {
            scanf("%d",&b[i][j]);
        }
    }
    for(i=0;i<=2;i++)
    {
        for(j=0;j<=2;j++)
        {
            x[i][j]=a[i][j]+b[i][j];
            printf("%d",x[i][j]);
            printf("\t");
        }
        printf("\n");
    }
}''','''#include<stdio.h>
#include<stdlib.h>
int a[20][20],q[20],visited[20],reach[10],n,i,j,f=0,r=-1,count=0;
void BFS(int v)
{
	for(i=1;i<=n;i++)
	{
		if(a[v][i]&&!visited[i])
		q[++r]=i;
	}
	if(f<=r)
	{
		visited[q[f]]=1;
		BFS(q[f++]);
	}
}
void DFS(v)
{
	int i;
	reach[v]=1;
	for(i=1;i<=n;i++)
	{
		if(a[v][i]&&!reach[i])
		{
			printf("\n%d->%d",v,i);
			count++;
			DFS(i);
		}
	}
}
void main()
{
	int v,choice;
	printf("Enter the vertices number...\n");
	scanf("%d",&n);
	for(i=1;i<=n;i++)
	{
		q[i]=0;
		visited[i]=0;
	}
	for(i=1;i<=n;i++)
	{
		reach[i]=0;
	}
	printf("Enter the matrix form...\n");
	for(i=1;i<=n;i++)
	{
		for(j=1;j<=n;j++)
		{
			scanf("%d",&a[i][j]);
		}
	}
	while(1)
	{
	
	printf("1. BFS.\n2. DFS.\n3. Exit.\n");
	scanf("%d",&choice);
	switch(choice)
	{
		case 1:
			printf("Enter the starting vertex:\n");
			scanf("%d",&v);
			BFS(v);
			if((v<1)||(v>n))
			{
				printf("\n BFS is not possible.\n");
			}
			else
			{
				printf("\n The nodes which are reachable from %d:\n",v);
				for(i=1;i<=n;i++)
				{
					if(visited[i])
					printf("%d\t",i);
				}
			}
		case 2:
			DFS(1);
			if(count==n-1)
			printf("\nGraph is connected.\n");
			else
			printf("\nGraph is not connected.\n");
			break;
		case 3:
			exit(0);
	}
}
}''','''
#include <stdio.h>

#define SIZE 5

int items[SIZE];
int front = -1, rear = -1;

int isFull() {
  if ((front == rear + 1) || (front == 0 && rear == SIZE - 1)) return 1;
  return 0;
}

int isEmpty() {
  if (front == -1) return 1;
  return 0;
}

void enQueue(int element) {
  if (isFull())
    printf("\n Queue is full!! \n");
  else {
    if (front == -1) front = 0;
    rear = (rear + 1) % SIZE;
    items[rear] = element;
    printf("\n Inserted -> %d", element);
  }
}

int deQueue() {
  int element;
  if (isEmpty()) {
    printf("\n Queue is empty !! \n");
    return (-1);
  } else {
    element = items[front];
    if (front == rear) {
      front = -1;
      rear = -1;
    } 
    else {
      front = (front + 1) % SIZE;
    }
    printf("\n Deleted element -> %d \n", element);
    return (element);
  }
}

void display() {
  int i;
  if (isEmpty())
    printf(" \n Empty Queue\n");
  else {
    printf("\n Front -> %d ", front);
    printf("\n Items -> ");
    for (i = front; i != rear; i = (i + 1) % SIZE) {
      printf("%d ", items[i]);
    }
    printf("%d ", items[i]);
    printf("\n Rear -> %d \n", rear);
  }
}

int main() {
  deQueue();

  enQueue(1);
  enQueue(2);
  enQueue(3);
  enQueue(4);
  enQueue(5);


  enQueue(6);

  display();
  deQueue();

  display();

  enQueue(7);
  display();

  enQueue(8);

  return 0;
}''','''#include<stdio.h>
#include<stdlib.h>
#include<string.h>
int count=0;
struct stu
{
	int sem;
	char name[50],usn[20],branch[10];
	struct stu *next;
};
struct stu *head=NULL,*temp=NULL,*tail=NULL,*temp1;
 
void create(int s, char n[20],char u[15],char b[5])
{
    if(head==NULL)
    {
    	head=(struct stu*)malloc(1*sizeof(struct stu));
    	head->sem=s;
    	strcpy(head->name,n);
    	strcpy(head->usn,u);
    	strcpy(head->branch,b);
    	head->next=NULL;
    	tail=head;
    	count++;
	}
	else
	{
		temp=(struct stu*)malloc(1*sizeof(struct stu));
		temp->sem=s;
		strcpy(temp->name,n);
    	strcpy(temp->usn,u);
    	strcpy(temp->branch,b);
		temp->next=head;
		head=temp;
		count++;
	}
}
void display()
{
	temp1=head;
	if(temp1==NULL)
	{
	    printf("List is empty...");
	}
	else
	{
		printf("The details of student are:-\n");
		while(temp1!=NULL)
		{
			printf("***    ****    ****\n");
			printf("NAME:-%s.\nUSN:-%s.\nBranch:-%s.\n",temp1->name,temp1->usn,temp->branch);
			printf("***    ****    ****\n");
			temp1=temp1->next;
		}
		 printf("\nNo. of nodes=%d\n",count);

	}
	
}
void insert_head(int s,char n[20],char u[10],char b[5])
{
	temp=(struct stu*)malloc(1*sizeof(struct stu));
	temp->sem=s;
	strcpy(temp->name,n);
    strcpy(temp->usn,u);
    strcpy(temp->branch,b);
	temp->next=head;
	head=temp;
	count++;
}
void insert_tail(int s,char n[20],char u[10],char b[5])
{
	temp=(struct stu*)malloc(1*sizeof(struct stu));
	temp->sem=s;
	strcpy(temp->name,n);
    strcpy(temp->usn,u);
    strcpy(temp->branch,b);
	tail->next=temp;
	temp->next=NULL;
	tail=temp;
	count++;
}
void delete_head()
{
	temp1=head;
	if(temp1==NULL)
	{
		printf("List is already empty...\n");
	}
	else
	{
		head=head->next;
		free(temp1);
		count--;
	}
}
void delete_tail()
{
	temp1=head;
	if(tail==NULL)
	{
    	printf("List is already empty...\n");
	}
	else if(temp1->next==NULL)
	{
		printf("\nthe deleted node is :-\n");
		printf("\nName: %s\nUSN:%s\nBranch: %s\nSem: %d\n",temp1->name,temp1->usn,temp1->branch,temp1->sem);
		head=tail=NULL;
		count--;
	}
	else
	{
		while(temp1->next!=NULL)
		{
			temp1=temp1->next;
		}
		printf("\nthe deleted node is :-\n");
		printf("\nName: %s\nUSN:%s\nBranch: %s\nSem: %d\n",tail->name,tail->usn,tail->branch,tail->sem);
		free(tail);
		tail=temp1;
		tail->next=NULL;
		count--;
	}
}
void main()
{
    int choice,no,i=0;
    int sem;
    char name[50],usn[20],branch[10];
   
    while(1)
    {
    	printf("***   MENU   ***\n");
            printf("1.Create\n2.Insert from head\n3.Insert from tail\n4.Delete from head\n5.Delete from tail\n6.Display\n7.Exit\n");
            printf("***   ****  ***\n");
    	    printf("\nEnter the choice.\n");
    	    scanf("%d",&choice);
    	switch(choice)
    	{
    		
    		case 1:
			printf("Enter the number of students.\n");
    		scanf("%d",&no);
    		while(i<no)
    		{
    			printf("Enter the Name.\n");
    			scanf("%s",&name);
    			printf("\nEnter the USN.\n");
    			scanf("%s",&usn);
    			printf("\nEnter the Branch.\n");
    			scanf("%s",branch);
    			printf("Enter the Sem.\n");
    			scanf("%d",&sem);
    			create(sem,name,usn,branch);
    			i++;
			}
			break;
			case 2: printf("Enter the Name.\n");
    			scanf("%s",&name);
    			printf("\nEnter the USN.\n");
    			scanf("%s",&usn);
    			printf("\nEnter the Branch.\n");
    			scanf("%s",branch);
    			printf("Enter the Sem.\n");
    			scanf("%d",&sem);
    			insert_head(sem,name,usn,branch);
    			break;
    		case 3:printf("Enter the Name.\n");
    			scanf("%s",&name);
    			printf("\nEnter the USN.\n");
    			scanf("%s",&usn);
    			printf("\nEnter the Branch.\n");
    			scanf("%s",branch);
    			printf("Enter the Sem.\n");
    			scanf("%d",&sem);
				insert_tail(sem,name,usn,branch);
				break;
			case 4:
			delete_head();
			break;
			case 5:
			delete_tail();
			break;
			case 6:
			display();
			break;
			case 7:
			exit(0);
			default : printf("\nInvalid option...\n");		
			break;
		}
	}
}''','''#include<stdio.h>
Tower(int k, char frompeg,char topeg, char midpeg)
{
	if(k==1)
	{
		printf("Move the disk 1 from peg %c to peg %c",frompeg,topeg);
		return; 
	}
	Tower(k-1,frompeg,midpeg,topeg);
	printf("\nMove disk %d from peg %c to peg %c\n", k, frompeg, topeg);
	Tower(k-1,midpeg,topeg,frompeg);
}
void main()
{
	int a;
	printf("Enter the number of disk...\n");
	scanf("%d",&a);
	printf("The moves involved in the Tower of Hanoi are :\n");
	Tower(a,'A','C','B');
}''','''#include<stdio.h>
#include<string.h>
#define MAX 5

int F(char ch)
{
	switch(ch)
	{
		case'+':
		case'-':return 2;
		case'*':
		case'/':return 4;
		case'^':return 5;
		case'(':return 0;
		case'#':return -1;
		default: return 8;
	}
}

int G(char ch)
{
	switch(ch)
	{
		case'+':
	    case'-':return 1;
	    case'*':
	    case'/':return 3;
	    case'^':return 6;
	    case'(':return 9;
	    case')':return 0;
	    default: return 7;
	}
}

void in2pos(char infix[],char postfix[])
{
	int top=-1,i,j=0;
	char symbol,s[100];
	
	s[++top]='#';
	
	for(i=0;i<strlen(infix);i++)
	{
		symbol=infix[i];
		while(F(s[top])>G(symbol))
		{
			postfix[j++]=s[top--];
		}
		if(F(s[top])!=G(symbol))
		s[++top]=symbol;
		else
		top--;
	}
	while(s[top]!='#')
	{
		postfix[j++]=s[top--];
	}
	postfix[j]='\0';
}
int main()
{
	char infix[100],postfix[100];
	printf("\nEnter the infix statement..\n");
	scanf("%s",infix);
	in2pos(infix,postfix);
	printf("\nThe postfix expession for %s->\t%s",infix,postfix);
}''','''
#include<stdio.h>
#include<string.h>
int main()
{
	char str[100],pat[100],rep[100],ans[100];
	int k,c=0,m=0,i=0,j=0,flag=0;
	printf("Enter the main string:-\n");
	gets(str);
	printf("Enter the pattern string:-\n");
	gets(pat);
	printf("Enter the replace string:-\n");
	gets(rep);
	while(str[c]!='\0')
	{
		if(str[m]==pat[i])
		{
			i++;
			m++;
			flag=1;
			if(pat[i]=='\0')
			{
				for(k=0;rep[k]!='\0';k++,j++)
				ans[j]=rep[k];
				i=0;
				c=m;
			}
			
		}
		else
		{
			ans[j]=str[c];
			j++;
			c++;
			m=c;
			i=0;
		}
	}
	if(flag==0)
	{
		printf("Pattern is not found!!!\n");
	}
	else
	{
		ans[j]='\0';
		printf("The resultent string is:-\n%s",ans);
	}
	return 0;
}''','''import java.util.Scanner;

public class STUDENT
{
    String usn;
    String name;
    String branch;
    long phno;
    int marks;
    void getdata()
    {
        Scanner read=new Scanner(System.in);
        System.out.println("enter usn:");
        usn=read.next();
        System.out.println("enter name:");
        name=read.next();
        System.out.println("enter branch:");
        branch=read.next();
        System.out.println("enter phone number:");
        phno=read.nextLong();
        System.out.println("enter the marks:");
        marks=read.nextInt();
    }
    void display()
    {
        System.out.println("student usn ="+usn);
        System.out.println("student name ="+name);
        System.out.println("student branch ="+branch);
        System.out.println("student phone number ="+phno);
        System.out.println("student marks ="+marks);
    }

    public static void main(String[] args)
    {
        STUDENT ob=new STUDENT();
        ob.getdata();
        System.out.println("-----student details-----");
        ob.display();

    }
}''','''import java.util.Scanner;
public class PRIMS
{
    int ne,sum,n;
    int dist[][]=new int[10][10];

    int parent[]=new int[10];
    void getdata()
    {
        Scanner read=new Scanner(System.in);
        System.out.println("Enter no. of nodes ");
        n=read.nextInt();
        System.out.println("Enter distance matrix ");
        for(int i=0;i<n;i++)
        {
            for(int j=0;j<n;j++)
            {
                dist[i][j]=read.nextInt();
            }
        }
    }
    void mst()
    {
        int u=0,v=0,min;
        ne=0;sum=0;
        for(int i=0;i<n;i++)
        {
            parent[i]=0;
        }
        parent[0]=1;
        while(ne!=n-1)
        {
            min=999;
            for(int i=0;i<n;i++)
            {
                for(int j=0;j<n;j++)
                {
                    if(dist[i][j]<min && parent[i]==1 && parent[j]==0)
                    {
                        min=dist[i][j];
                        u=i;
                        v=j;
                    }
                }
            }
            System.out.println("Connect "+u+"-->"+v);
            ne++;
            sum=sum+dist[u][v];
            parent[v]=1;
        }
        System.out.println("MST = "+sum);
    }
    public static void main(String[] args)
    {
        PRIMS ob=new PRIMS();
        ob.getdata();
        ob.mst();
    }
}
''','''
public class QUICKSORT
{
    public static void divide(int a[],int low,int high)
    {
        if(low<high)
        {
            int j= parition(a,low,high);
            divide(a,low,j-1);
            divide(a,j+1,high);

        }
    }
    public static int parition(int a[], int low,int high)
    {
        int i=low+1,j=high,pivot=a[low];
        while( i<=j)
        {
            while (a[i] <= pivot) i++;
            while (a[j] > pivot) j--;
            if (i <= j)
            {
                int temp = a[i];
                a[i] = a[j];
                a[j]=temp;
            }

        }
        int temp=a[low];
        a[low]=a[j];
        a[j] = temp;
        return j;
    }
    public static void main(String[] args) {
        int a[] = new int[10000];
        int n, i;
        Scanner read = new Scanner(System.in);
        Random rand = new Random();
        System.out.println("random entered number:");
        n = read.nextInt(14);
        for (i = 0; i < n; i++)
        {
            a[i] = rand.nextInt(n);
            System.out.print(" "+a[i]);
        }
        long st = System.currentTimeMillis();
        divide(a, 0, n - 1);
        long et = System.currentTimeMillis();
        System.out.println("----sorted list-----");
        for (i = 0; i < n; i++)
        {
            System.out.print(" " + a[i]);
        }

        System.out.println("time taken:" + (et - st));
    }

}
''','''public class MERGESORT
{
    public static void divide(int a[],int low,int high)
    {
        if(low<high)
        {
            int mid=(low+high)/2;
            divide(a,low,mid);
            divide(a,mid+1,high);
            merge(a,low,mid,high);
        }
    }
    public static void merge(int a[],int low, int mid,int high)
    {
        int temp []=new int[10000];
        int i=low,j=mid+1,k=low;
        while(i<=mid&&j<=high)
        {
            if(a[i]<a[j])
            {
                temp[k++]=a[i++];
            }
            else
            {
                temp[k++]=a[j++];
            }
        }
        while(i<=mid)
        {
            temp[k++]=a[i++];
        }
        while(j<=high)
        {
            temp[k++]=a[j++];
        }
        for(k = low;k<=high;k++)
        {
            a[k]=temp[k];
        }
    }

    public static void main(String[] args)
    {
        int a[]=new int[10000];
        int n,i;
        Scanner read=new Scanner(System.in);
        Random rand=new Random();
        System.out.println("enter n");
        n=read.nextInt();
        for(i=0;i<n;i++)
        {
            a[i]=rand.nextInt(n);
            System.out.print(" "+a[i]);
        }
        long st=System.currentTimeMillis();
        divide(a,0,n-1);
        long et=System.currentTimeMillis();
        System.out.println("----sorted list-----");
        for(i=0;i<n;i++)
        {
            System.out.print(" "+a[i]);

        }
        System.out.println("time taken:"+(et-st));

    }

}''','''import java.util.*;

public class Floyd_algorithm {
    int n;
    int[][] dist=new int [10][10];

    void getData(){
        System.out.println("Enter the number of nodes: ");
        Scanner read =new Scanner(System.in);
        n= read.nextInt();
        System.out.println("Enter the distance of martix: ");
        for(int i=0;i<n;i++)
        {
            for(int j=0;j<n;j++)
            {
                dist[i][j]=read.nextInt();
            }
        }
    }
    void shortest()
    {
        for(int i=0;i<n;i++)
        {
            for(int j=0;j<n;j++)
            {
                for(int k=0;k<n;k++)
                {
                    dist[j][k]=min(dist[j][k],dist[j][i]+dist[i][k]);
                }
            }
        }
    }
    int min(int x,int y)
    {
        if(x<y)
            return x;
        return y;
    }
    void display()
    {
        System.out.println("---------------------------All-Pair-Shortest-Path-------------------------");
        for(int i=0;i<n;i++)
        {
            for(int j=0;j<n;j++)
            {
                System.out.print(" "+dist[i][j]);
            }
            System.out.println();
        }
    }
    public static void main (String[] args) {
        Floyd_algorithm ob =new Floyd_algorithm();
        ob.getData();
        ob.shortest();
        ob.display();


    }
}''','''import java.util.Scanner;

public class Djikstra {
    int n;
    int[][] dist =new int[10][10];

    void getData(){
        Scanner take =new Scanner(System.in);
        System.out.println("Enter the number of nodes: ");
        n= take.nextInt();
        System.out.println("Enter distance matrix: ");
        for(int i=0;i<n;i++){
            for(int j=0;j<n;j++){
                dist[i][j]=take.nextInt();
            }
        }
    }
    void shortest(){
        for(int k=0;k<n;k++){
            for(int i=0;i<n;i++){
                for(int j=0;j<n;j++){
                    dist[i][j]=min(dist[i][j],dist[i][k]+dist[k][j]);
                }
            }
        }
    }
    int min(int x,int y){
        if(x<y){
            return x;
        }
        return y;
    }
    void display(){
        Scanner take =new Scanner(System.in);
        System.out.println("Enter the Source: ");
        int source=take.nextInt();
        System.out.println("-----Shortest path given source-----: ");
        for(int i=0;i<n;i++){
            System.out.println(source+" ---> "+i+" = "+dist[source][i]);
        }
    }

    public static void main(String[] args) {
        Djikstra m = new Djikstra();
        m.getData();
        m.shortest();
        m.display();
    }
}''','''import java.util.Scanner;

public class Kruskal {
    int ne,sum,n;
    int[][] dist =new int[10][10];
    int[] parent =new int[10];
    void getData(){
        Scanner take =new Scanner(System.in);
        System.out.println("Enter the number of nodes: ");
        n = take.nextInt();
        System.out.println("Enter the distance matrix: ");
        for(int i=0; i<n;i++){
            for(int j=0; j<n;j++){
                dist [i][j]=take.nextInt();
            }
        }
    }
    void mst(){
        int u=0,v=0,min;
        ne=0;
        sum=0;
        for(int i=0;i<n;i++){
         parent[i]=i;
        }
        while(ne!=n-1){
            min=999;
            for(int i=0;i<n;i++){
                for(int j=0;j<n;j++){
                    if(dist[i][j]<min){
                        min=dist[i][j];
                        u=i;
                        v=j;
                    }
                }
            }

            if(find(u)!=find(v)){
                System.out.println("Connect "+u+"--->"+v);
                ne++;
                sum=sum+dist[u][v];
                parent[v]=u;
            }
            dist[u][v]=dist[v][u]=999;
        }
        System.out.println("MST = "+sum);
    }
    int find(int x){
        while(x!=parent[x]){
            x=parent[x];
        }
        return x;
    }

    public static void main(String[] args) {
        Kruskal Me = new Kruskal();
        Me.getData();
        Me.mst();
    }
}''','''import java.util.*;
public class Knapsack_Greedy {
    int n;
    float m,sum;
    float[] w= new float[10];
    float[] p=new float[10];
    float[] x=new float[10];
    void getData(){
        Scanner take =new Scanner(System.in);
        System.out.println("Enter the number of item: ");
        n= take.nextInt();
        System.out.println("Enter the weight of each item: ");
        for(int i=0;i<n;i++){
            w[i]= take.nextFloat();
        }
        System.out.println("Enter thre profit of each item: ");
        for(int i=0;i<n;i++){
            p[i]= take.nextFloat();
        }
        System.out.println("Enter the max capacity: ");
        m=take.nextFloat();
    }
    void optimal(){
        int i;
        float rem;
        for(i=0;i<n;i++){
            x[i]=0;
        }
        rem=m;
        sum=0;
        for(i=0;i<n;i++){
           if(w[i]>rem)
               break;
           x[i]=1;
           sum+=p[i];
           rem-=w[i];
        }
        if(i<=n){
            x[i]=rem/w[i];
            sum+=(rem/w[i]*p[i]);

        }
    }
    void display(){
        int i;
        System.out.println("Optimal solution = "+sum);
        System.out.println("Item selected weight and profit: ");
        for(i=0;i<n;i++){
            System.out.println(x[i]*w[i]+"-->"+x[i]*p[i]);
        }
    }

    public static void main(String[] args) {

        Knapsack_Greedy Kick_It =new Knapsack_Greedy();
        Kick_It.getData();
        Kick_It.optimal();
        Kick_It.display();
    }
}''','''import java.util.*;

public class Knapsack {
    int n,m;
    int[] w =new int[10];
    int[] p =new int[10];
    int[][] v = new int[10][10];
    void getData(){
        Scanner take =new Scanner(System.in);
        System.out.println("Enter the number of item: ");
        n = take.nextInt();
        System.out.println("Enter the weight of the item: ");
        for(int i=1; i<=n;i++){
            w[i]= take.nextInt();
        }
        System.out.println("Enter the profit of each item: ");
        for(int i=1;i<=n;i++){
            p[i]= take.nextInt();
        }
        System.out.println("Enter the Maximum capacity: ");
        m = take.nextInt();
    }
    int Max (int x,int y){
        if(x>y)
            return x;
        else
            return y;
    }
    void optimal(){
        for(int i=0;i<=n;i++){
            for(int j=0;j<=m;j++){
                if(i==0||j==0)
                    v[i][j]=0;
                else if (w[i]>j) {
                    v[i][j]=v[i-1][j];
                }
                else
                    v[i][j]=Max(v[i-1][j],p[i]+v[i-1][j-w[i]]);
            }
        }
    }
    void display(){
        System.out.println("***********************");
        for(int i=0;i<=n;i++){
            for(int j=0;j<=m;j++){
                System.out.print("  "+v[i][j]);
            }
            System.out.println();
        }
        System.out.println("Optimal solution = "+v[n][m]);
    }

    public static void main(String[] args) {
        Knapsack obj =new Knapsack();
        obj.getData();
        obj.optimal();
        obj.display();
    }
}'''];

var output=[''' Enter the number of elements:
5
Enter the numbers  in ascending order
10 15 20 30 45
Please enter the number to be searched
30
Number found in position 4''','''Enter the no. of elements 
5
Enter 5 elements 
78 90 12 67 5
The original elements are 
78 
90 
12 
67 
5 

 The Sorted elements are 
5 
12 
67 
78 
90 
''','''Enter the number of elements:
6
Enter the numbers.
45 12 90 2 45 21
Enter Item which is to be searched
2
Item found at location 4
''','''Choose option for Operation
1.Push
2.Pop
3.Display
4.Exit
1
enter number which you want push
20
20 is pushed into stack
Choose option for Operation
1.Push
2.Pop
3.Display
4.Exit
1
enter number which you want push
34
34 is pushed into stack
Choose option for Operation
1.Push
2.Pop
3.Display
4.Exit
1
enter number which you want push
56
56 is pushed into stack
Choose option for Operation
1.Push
2.Pop
3.Display
4.Exit
1
enter number which you want push
90
90 is pushed into stack
Choose option for Operation
1.Push
2.Pop
3.Display
4.Exit
2
90 is the deleted number
Choose option for Operation
1.Push
2.Pop
3.Display
4.Exit
3
The stack contains the following values - 
20 
34 
56 
0 
0 
0 
0 
0 
0 
0 
0 
Choose option for Operation
1.Push
2.Pop
3.Display
4.Exit
4
''','''Enter a four digit number
234
432
The Number is not Palindrome
Enter a four digit number
1221
1221
The Number is Palindrome ''','''Enter nine number of 1st matrix
12 23 78 90 2 34 45 65 89
Enter nine number of 2st matrix
67 89 23 12 22 88 23 45 90
Addition of two matrix
79	112	101	
102	24	122	
68	110	179	''','''Enter the vertices number...
3
Enter the matrix form...
1 0 1
1 0 0
0 1 0
1. BFS.
2. DFS.
3. Exit.
1
Enter the starting vertex:
1
The nodes which are reachable from 1:
1	2	3	
1->3
3->2
Graph is connected.
1. BFS.
2. DFS.
3. Exit.
2
Graph is connected.
1. BFS.
2. DFS.
3. Exit.
3
''','''Queue is empty !! 
Inserted -> 1
 Inserted -> 2
 Inserted -> 3
 Inserted -> 4
 Inserted -> 5
 Queue is full!! 

 Front -> 0 
 Items -> 1 2 3 4 5 
 Rear -> 4 

 Deleted element -> 1 

 Front -> 1 
 Items -> 2 3 4 5 
 Rear -> 4 

 Inserted -> 7
 Front -> 1 
 Items -> 2 3 4 5 7 
 Rear -> 0 

 Queue is full!! 
''','''***   MENU   ***
1.Create
2.Insert from head
3.Insert from tail
4.Delete from head
5.Delete from tail
6.Display
7.Exit
***   ****  ***

Enter the choice.
1
Enter the number of students.
1
Enter the Name.
yukthi
Enter the USN.
1am20is112
Enter the Branch.
ise
Enter the Sem.
5
***   MENU   ***
1.Create
2.Insert from head
3.Insert from tail
4.Delete from head
5.Delete from tail
6.Display
7.Exit
***   ****  ***

Enter the choice.
2
Enter the Name.
vishwajeet
Enter the USN.
1am20is111
Enter the Branch.
ise
Enter the Sem.
5
***   MENU   ***
1.Create
2.Insert from head
3.Insert from tail
4.Delete from head
5.Delete from tail
6.Display
7.Exit
***   ****  ***

Enter the choice.
6
The details of student are:-
***    ****    ****
NAME:-vishwajeet.
USN:-1am20is111.
Branch:-ise.
***    ****    ****
***    ****    ****
NAME:-yukthi.
USN:-1am20is112.
Branch:-ise.
***    ****    ****

No. of nodes=2
***   MENU   ***
1.Create
2.Insert from head
3.Insert from tail
4.Delete from head
5.Delete from tail
6.Display
7.Exit
***   ****  ***

Enter the choice.
4
***   MENU   ***
1.Create
2.Insert from head
3.Insert from tail
4.Delete from head
5.Delete from tail
6.Display
7.Exit
***   ****  ***

Enter the choice.
6
The details of student are:-
***    ****    ****
NAME:-yukthi.
USN:-1am20is112.
Branch:-ise.
***    ****    ****

No. of nodes=1
***   MENU   ***
1.Create
2.Insert from head
3.Insert from tail
4.Delete from head
5.Delete from tail
6.Display
7.Exit
***   ****  ***

Enter the choice.
7
''','''
Enter the number of disk...
3
The moves involved in the Tower of Hanoi are :
Move the disk 1 from peg A to peg C
Move disk 2 from peg A to peg B
Move the disk 1 from peg C to peg B
Move disk 3 from peg A to peg C
Move the disk 1 from peg B to peg A
Move disk 2 from peg B to peg C
Move the disk 1 from peg A to peg C''','''
Enter the infix statement..
a+b
The postfix expession for a+b->	ab+''','''
Enter the main string:-
abc
Enter the pattern string:-
abcde
Enter the replace string:-
d
The resultent string is:-
abc''','''
enter usn:
1am20is112
enter name:
yukthi
enter branch:
ise
enter phone number:
578076547
enter the marks:
89
-----student details-----
student usn =1am20is112
student name =yukthi
student branch =ise
student phone number =578076547
student marks =89''','''
Enter no. of nodes 
3
Enter distance matrix 
12 34 10
78 45 90
11 56 20
Connect 0-->2
Connect 0-->1
MST = 44
''','''random entered number:
4
 0 2 3 2----sorted list-----
 0 2 2 3time taken:0
''','''enter n
5
 0 3 3 2 1----sorted list-----
 0 1 2 3 3time taken:0
''','''Enter the number of nodes:
4
Enter the distance of matrix:
1 0 1 0
0 1 1 1
1 1 1 1
0 0 0 1
------------All-Pair-Shortest-path---------
0 0 0 0
0 0 0 0
1 1 1 1
0 0 0 0''','''Enter the number of nodes:
4
Enter distance matrix:
0 1 1 1
0 0 1 1
0 1 0 1
1 1 1 0
Enter the source:
1
------Shortest path given source-----:
1 ---> 0 = 0
1 --> 1 = 0
1 --> 2 = 1
1 --> 3 = 1''','''Enter the number of nodes:
3
Enter the distance matrix:
1 1 0
1 0 1
1 1 1
Connect 0 ---> 2
Connect 0 ---> 1
MST = 1''','''Enter the number of item:
4
Enter the weight of each item:
10 20 13 5
Enter the profit of each item:
23 45 12 20
Enter the max capacity:
6
Optimal solution = 13.8
Item selected weight and profit:
6.0 --> 13.8
0.0 --> 0.0
0.0 --> 0.0
0.0 --> 0.0''','''Enter the number of item: 
3
Enter the weight of the item: 
1 12 13
Enter the profit of each item: 
23 12 34
Enter the Maximum capacity: 
6
***********************
  0  0  0  0  0  0  0
  0  23  23  23  23  23  23
  0  23  23  23  23  23  23
  0  23  23  23  23  23  23
Optimal solution = 23
'''];