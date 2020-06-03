module tb;
  bit [7:0]   m_data;
 
  initial begin
    m_data = 8'hF1; 
 
    for (int i = 0; i < $size(m_data); i++) begin
      $display ("m_data[%0d] = %b", i, m_data[i]);
    end
  end
endmodule
/* # m_data[0] = 1
# m_data[1] = 0
# m_data[2] = 0
# m_data[3] = 0
# m_data[4] = 1
# m_data[5] = 1
# m_data[6] = 1
# m_data[7] = 1 */
// This will the Output
