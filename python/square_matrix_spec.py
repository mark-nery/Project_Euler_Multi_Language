from square_matrix import *
import unittest

class TestSequenceFunctions(unittest.TestCase):
      
      def test_split_by_rows(self):
           matrix = range(16)
           self.assertEqual(split_by_rows(matrix,4),[range(4),range(4,8),range(8,12),range(12,16)])
      
      def test_split_by_columuns(self):
          self.assertEqual(split_by_columns([1,2,3,4],2),[[1,3],[2,4]])
          self.assertEqual(split_by_columns([1,2,3,4,5,6,7,8,9],3),[[1,4,7],[2,5,8],[3,6,9]])

      def test_split_diagnally(self):
          self.assertEqual(split_diagnally([1,2,3,4,5,6,7,8,9],3),[[1,5,9],[2,6],[3],[4,8],[7]] )
          self.assertEqual(split_diagnally([1,2,3,4],2),[[1,4],[2],[3]])

      def test_largest_row_product(self):
            self.assertEqual(largest_row_product([1,2,3,4,5,6],2),30)
            self.assertEqual(largest_row_product([1],2),0)

      def test_rotate_grid(self):
            self.assertEqual(rotate_grid([1,2,3,4,5,6,7,8,9],3),[7,4,1,8,5,2,9,6,3])
            self.assertEqual(rotate_grid([1,2,3,4],2),[3,1,4,2])

if __name__ == '__main__':
    unittest.main()
