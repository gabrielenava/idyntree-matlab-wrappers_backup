classdef ConvexHullProjectionConstraint < SwigRef
  methods
    function this = swig_this(self)
      this = iDynTreeMEX(3, self);
    end
    function varargout = setActive(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1898, self, varargin{:});
    end
    function varargout = isActive(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1899, self, varargin{:});
    end
    function varargout = getNrOfConstraints(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1900, self, varargin{:});
    end
    function varargout = projectedConvexHull(self, varargin)
      narginchk(1, 2)
      if nargin==1
        nargoutchk(0, 1)
        varargout{1} = iDynTreeMEX(1901, self);
      else
        nargoutchk(0, 0)
        iDynTreeMEX(1902, self, varargin{1});
      end
    end
    function varargout = A(self, varargin)
      narginchk(1, 2)
      if nargin==1
        nargoutchk(0, 1)
        varargout{1} = iDynTreeMEX(1903, self);
      else
        nargoutchk(0, 0)
        iDynTreeMEX(1904, self, varargin{1});
      end
    end
    function varargout = b(self, varargin)
      narginchk(1, 2)
      if nargin==1
        nargoutchk(0, 1)
        varargout{1} = iDynTreeMEX(1905, self);
      else
        nargoutchk(0, 0)
        iDynTreeMEX(1906, self, varargin{1});
      end
    end
    function varargout = P(self, varargin)
      narginchk(1, 2)
      if nargin==1
        nargoutchk(0, 1)
        varargout{1} = iDynTreeMEX(1907, self);
      else
        nargoutchk(0, 0)
        iDynTreeMEX(1908, self, varargin{1});
      end
    end
    function varargout = Pdirection(self, varargin)
      narginchk(1, 2)
      if nargin==1
        nargoutchk(0, 1)
        varargout{1} = iDynTreeMEX(1909, self);
      else
        nargoutchk(0, 0)
        iDynTreeMEX(1910, self, varargin{1});
      end
    end
    function varargout = AtimesP(self, varargin)
      narginchk(1, 2)
      if nargin==1
        nargoutchk(0, 1)
        varargout{1} = iDynTreeMEX(1911, self);
      else
        nargoutchk(0, 0)
        iDynTreeMEX(1912, self, varargin{1});
      end
    end
    function varargout = o(self, varargin)
      narginchk(1, 2)
      if nargin==1
        nargoutchk(0, 1)
        varargout{1} = iDynTreeMEX(1913, self);
      else
        nargoutchk(0, 0)
        iDynTreeMEX(1914, self, varargin{1});
      end
    end
    function varargout = buildConvexHull(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1915, self, varargin{:});
    end
    function varargout = supportFrameIndices(self, varargin)
      narginchk(1, 2)
      if nargin==1
        nargoutchk(0, 1)
        varargout{1} = iDynTreeMEX(1916, self);
      else
        nargoutchk(0, 0)
        iDynTreeMEX(1917, self, varargin{1});
      end
    end
    function varargout = absoluteFrame_X_supportFrame(self, varargin)
      narginchk(1, 2)
      if nargin==1
        nargoutchk(0, 1)
        varargout{1} = iDynTreeMEX(1918, self);
      else
        nargoutchk(0, 0)
        iDynTreeMEX(1919, self, varargin{1});
      end
    end
    function varargout = project(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1920, self, varargin{:});
    end
    function varargout = computeMargin(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1921, self, varargin{:});
    end
    function varargout = setProjectionAlongDirection(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1922, self, varargin{:});
    end
    function varargout = projectAlongDirection(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1923, self, varargin{:});
    end
    function self = ConvexHullProjectionConstraint(varargin)
      if nargin==1 && strcmp(class(varargin{1}),'SwigRef')
        if ~isnull(varargin{1})
          self.swigPtr = varargin{1}.swigPtr;
        end
      else
        tmp = iDynTreeMEX(1924, varargin{:});
        self.swigPtr = tmp.swigPtr;
        tmp.SwigClear();
      end
    end
    function delete(self)
      if self.swigPtr
        iDynTreeMEX(1925, self);
        self.SwigClear();
      end
    end
  end
  methods(Static)
  end
end
