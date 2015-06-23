require 'spec_helper'

module Pod
  describe Command::Check do
    before do
      lockfile_hash = { 'PODS' => ['BananaLib (1.0)'] }
      @lockfile = Lockfile.new(lockfile_hash)
      puts @lockfile.inspect
      @pod_check = Command.parse(%w(check))
    end

    it 'has a version number' do
      expect(PodCheck::VERSION).not_to be nil
    end

    it 'instantiates itself' do
      expect(@pod_check).to be_an_instance_of Command::Check
    end

    context 'when installed pods are up to date with Podfile.lock' do
      xit 'returns 0' do
        expect(@pod_check.run).to eq(0)
      end
    end
  end
end
