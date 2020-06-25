classdef Direction < iDynTree.Vector3
  methods
    function self = Direction(varargin)
      self@iDynTree.Vector3(SwigRef.Null);
      if nargin==1 && strcmp(class(varargin{1}),'SwigRef')
        if ~isnull(varargin{1})
          self.swigPtr = varargin{1}.swigPtr;
        end
      else
        tmp = iDynTreeMEX(524, varargin{:});
        self.swigPtr = tmp.swigPtr;
        tmp.SwigClear();
      end
    end
    function varargout = Normalize(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(525, self, varargin{:});
    end
    function varargout = isParallel(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(526, self, varargin{:});
    end
    function varargout = isPerpendicular(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(527, self, varargin{:});
    end
    function varargout = reverse(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(528, self, varargin{:});
    end
    function varargout = toString(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(529, self, varargin{:});
    end
    function varargout = display(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(530, self, varargin{:});
    end
    function delete(self)
      if self.swigPtr
        iDynTreeMEX(532, self);
        self.SwigClear();
      end
    end
  end
  methods(Static)
    function varargout = Default(varargin)
     [varargout{1:nargout}] = iDynTreeMEX(531, varargin{:});
    end
  end
end
