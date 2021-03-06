# encoding: utf-8

require File.expand_path('../spec_helper', __FILE__)

module Myaso
  describe TokyoCabinet do
    it 'has storages array' do
      TokyoCabinet::STORAGES.must_be_kind_of Array
    end

    describe 'Read mode' do
      let(:tmpdir) { Dir.mktmpdir }
      let(:myaso) { Myaso::TokyoCabinet.new(tmpdir) }

      subject { myaso }

      before do
      end

      after do
        myaso.close!
        FileUtils.remove_entry_secure tmpdir
      end

      # it 'is not closed after initialization' do
      #   subject.closed?.must_equal false
      # end
    end

    describe 'Management mode' do
      let(:tmpdir) { Dir.mktmpdir }
      let(:myaso) { Myaso::TokyoCabinet.new(tmpdir, :manage) }

      subject { myaso }

      before { populate_tokyo_cabinet! myaso }

      after do
        myaso.close!
        FileUtils.remove_entry_secure tmpdir
      end

      it 'has initialized storages' do
        subject.storages.keys.must_equal TokyoCabinet::STORAGES

        subject.storages.values.each do |storage|
          storage.must_be_kind_of TokyoCabinet::TDB
        end
      end

      it 'is not closed after initialization' do
        subject.closed?.must_equal false
      end

      it 'can be reindexed' do
        subject.reindex!.must_be_nil
      end

      it 'can be closed' do
        subject.closed?.must_equal false
        subject.close!.must_be_nil
        subject.closed?.must_equal true
      end
    end
  end
end
