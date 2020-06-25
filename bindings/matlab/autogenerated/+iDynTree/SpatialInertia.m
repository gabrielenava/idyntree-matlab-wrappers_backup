classdef SpatialInertia < iDynTree.SpatialInertiaRaw
  methods
    function self = SpatialInertia(varargin)
      self@iDynTree.SpatialInertiaRaw(SwigRef.Null);
      if nargin==1 && strcmp(class(varargin{1}),'SwigRef')
        if ~isnull(varargin{1})
          self.swigPtr = varargin{1}.swigPtr;
        end
      else
        tmp = iDynTreeMEX(564, varargin{:});
        self.swigPtr = tmp.swigPtr;
        tmp.SwigClear();
      end
    end
    function varargout = asMatrix(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(566, self, varargin{:});
    end
    function varargout = applyInverse(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(567, self, varargin{:});
    end
    function varargout = getInverse(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(568, self, varargin{:});
    end
    function varargout = plus(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(569, self, varargin{:});
    end
    function varargout = mtimes(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(570, self, varargin{:});
    end
    function varargout = biasWrench(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(571, self, varargin{:});
    end
    function varargout = biasWrenchDerivative(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(572, self, varargin{:});
    end
    function varargout = asVector(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(574, self, varargin{:});
    end
    function varargout = fromVector(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(575, self, varargin{:});
    end
    function varargout = isPhysicallyConsistent(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(576, self, varargin{:});
    end
    function delete(self)
      if self.swigPtr
        iDynTreeMEX(580, self);
        self.SwigClear();
      end
    end
  end
  methods(Static)
    function varargout = combine(varargin)
     [varargout{1:nargout}] = iDynTreeMEX(565, varargin{:});
    end
    function varargout = Zero(varargin)
     [varargout{1:nargout}] = iDynTreeMEX(573, varargin{:});
    end
    function varargout = momentumRegressor(varargin)
     [varargout{1:nargout}] = iDynTreeMEX(577, varargin{:});
    end
    function varargout = momentumDerivativeRegressor(varargin)
     [varargout{1:nargout}] = iDynTreeMEX(578, varargin{:});
    end
    function varargout = momentumDerivativeSlotineLiRegressor(varargin)
     [varargout{1:nargout}] = iDynTreeMEX(579, varargin{:});
    end
  end
end
