import java.util.ArrayList;
import java.util.Arrays;

public class test {
    public static void main(String[] args) {
        ArrayList<Integer> list = new ArrayList<>(Arrays.asList(1,2,3,4,5,6,7,8,9,10,16));


        System.out.println("powerOfTwoArrayList1(list) = " + powerOfTwoArrayList1(list));
        //powerOfTwoArrayList1(list) = [1, 2, 4, 8, 16]

        System.out.println("isPowerOfTwo(8) = " + isPowerOfTwo(8)); //isPowerOfTwo(8) = true
        System.out.println("isPowerOfTwo(6) = " + isPowerOfTwo(6));//isPowerOfTwo(6) = false
    }

    static boolean isPowerOfTwo(int n)
    {
        if (n == 0)
            return false;

        while (n != 1) {
            if (n % 2 != 0)
                return false;
            n = n / 2;
        }
        return true;
    }

    public static ArrayList<Integer> powerOfTwoArrayList1(ArrayList<Integer> list){

        list.removeIf(p -> (isPowerOfTwo(p)) != true);

        return list;
    }
}
