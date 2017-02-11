function [ obj3 ] = mtimes( obj1,obj2 )
%MTIMES multiplication of probs by scalar
%   only adds obj.M and obj.Initial. other props taken from obj1

[obj3,thescalar]=extractArgOfType({obj1,obj2},'SynapseMemoryModel');
thescalar=thescalar{1};
obj3.Wp=obj3.Wp*thescalar;
obj3.Wm=obj3.Wm*thescalar;


end

