classdef FreeFloatingMassMatrix < iDynTree.MatrixDynSize
  methods
    function self = FreeFloatingMassMatrix(varargin)
      self@iDynTree.MatrixDynSize(SwigRef.Null);
      if nargin==1 && strcmp(class(varargin{1}),'SwigRef')
        if varargin{1}~=SwigRef.Null
          self.swigPtr = varargin{1}.swigPtr;
        end
      else
        tmp = iDynTreeMEX(873, varargin{:});
        self.swigPtr = tmp.swigPtr;
        tmp.swigPtr = [];
      end
    end
    function varargout = resize(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(874, self, varargin{:});
    end
    function delete(self)
      if self.swigPtr
        iDynTreeMEX(875, self);
        self.swigPtr=[];
      end
    end
  end
  methods(Static)
  end
end
