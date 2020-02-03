require 'rspec'
require 'joke_stats'

describe JokeStats do
  describe '#likes' do
    subject { JokeStats.new(params) }
    let(:params) { {} }

    it 'returns 0 when initialized with empty params' do
      expect(subject.likes).to eql(0)
    end

    context 'when something has previously been liked' do
      let(:params) { {:likes => '1'} }
      it 'returns the number of likes from before when not incremented in params' do
        expect(subject.likes).to eql(1)
      end

      context 'and someone has liked a new joke' do
        let(:params) { {:likes => '1', :like => 'yes'} }
        it 'returns the number of likes from before incremented by 1' do
          expect(subject.likes).to eql(2)
        end
      end

      context 'and someone has disliked a new joke' do
        let(:params) { {:likes => '1', :like => 'no'} }
        it 'returns the number of likes from before' do
          expect(subject.likes).to eql(1)
        end
      end
    end
  end

  describe '#dislikes' do
    subject { JokeStats.new(params) }
    let(:params) { {} }

    it 'returns 0 when initialized with empty params' do
      expect(subject.dislikes).to eql(0)
    end

    context 'when something has previously been disliked' do
      let(:params) { {:dislikes => '1'} }
      it 'returns the number of dislikes from before when not incremented in params' do
        expect(subject.dislikes).to eql(1)
      end

      context 'and someone has disliked a new joke' do
        let(:params) { {:dislikes => '1', :like => 'no'} }
        it 'returns the number of dislikes from before incremented by 1' do
          expect(subject.dislikes).to eql(2)
        end
      end

      context 'and someone has disliked a new joke' do
        let(:params) { {:likes => '1', :like => 'no'} }
        it 'returns the number of likes from before' do
          expect(subject.likes).to eql(1)
        end
      end
    end
  end
end