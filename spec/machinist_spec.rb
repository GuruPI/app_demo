require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe 'Machinist' do
  models = Dir[File.expand_path(File.dirname(__FILE__) + '/../app/models/*.rb')].
    map{|file| File.basename(file, '.rb') } - %w{mailer}

  models.map{ |model| model.classify.constantize }.each do |model|
    it "should have a blueprint for the #{model} model" do
      model.make.should be_instance_of(model)
    end
  end
end
