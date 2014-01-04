require 'spec_helper'

describe Property do

  let(:blanks){ [nil, ''] }

  it { should have_valid(:address).when('1111 LotsOfSnow') }
  it { should_not have_valid(:address).when(*blanks) }

  it { should have_valid(:city).when('Avalanche') }
  it { should_not have_valid(:city).when(*blanks) }

  it { should have_valid(:state).when('MA') }
  it { should_not have_valid(:state).when(*blanks) }

  it { should have_valid(:zip).when('12345') }
  it { should_not have_valid(:zip).when(*blanks) }

end
