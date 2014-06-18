describe "testing quickfix" do
  it "should pass" do
    true
  end

  it "should fail" do
    sleep 1
    fail "this test is broken\t#{Time.now}"
  end
  it "should fail 2" do
    sleep 1
    fail "this test is broken too\t#{Time.now}"
  end
  it "should fail 3" do
    sleep 1
   f fail "and this test is broken\t#{Time.now}"
  end
end
