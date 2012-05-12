require './audio_class'

describe String do
  it do
    true.should be_true
  end
end

=begin
array_spec.rb sample

describe Array, "when empty" do
  before do
    @empty_array = []
  end

  it "should be empty" do
    @empty_array.should be_empty
  end

  it "should size 0" do
    @empty_array.size.should == 0
  end

  after do
    @empty_array = nil
  end
end
=end

=begin
ひとことで言うなら、 describe はテストする対象をあらわし、 context はテストする時の状況をあらわします。

describe Stack do
  before do
    @stack = Stack.new
  end

  describe '#push' do
    context '正常値' do
      it '返り値はpushした値であること' do
        @stack.push('value').should eq 'value'
      end
    end

    context 'nilをpushした場合' do
      it '例外であること' do
        lambda { @stack.push(nil) }.should raise_error(ArgumentError)
      end
    end
  end

  describe '#pop' do
    context 'スタックが空の場合' do
      it '返り値はnilであること' do
        @stack.pop.should be_nil
      end
    end

    context 'スタックに値がある場合' do
      it '最後の値を取得すること' do
        @stack.push 'value1'
        @stack.push 'value2'
        @stack.pop.should eq 'value2'
      end
    end
  end

  describe '#size' do
    it 'スタックのサイズを返すこと' do
      @stack.size.should eq 0

      @stack.push 'value'
      @stack.size.should eq 1
    end
  end
end
												 今回、describe はメソッド単位でわけました。理由としてはテストケースを書くときは何らかのメソッドを対象としていることがほとんどのため、このようにわけた方がテストが書き易いことが多いためです。またメソッド単位でわけることでドキュメントとしても読み易くなります。
=end
