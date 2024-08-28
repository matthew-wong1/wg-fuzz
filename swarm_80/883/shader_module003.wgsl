struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(Struct_1(vec3<u32>(1u, 9878u, 61144u), vec2<i32>(-9153i, -1i))), Struct_2(Struct_1(vec3<u32>(0u, 3307u, 0u), vec2<i32>(17570i, 60581i))), Struct_2(Struct_1(vec3<u32>(0u, 3512u, 0u), vec2<i32>(-2593i, -8622i))), Struct_2(Struct_1(vec3<u32>(33709u, 4294967295u, 31572u), vec2<i32>(-1i, 42700i))), Struct_2(Struct_1(vec3<u32>(18011u, 13527u, 1u), vec2<i32>(3388i, -3513i))), Struct_2(Struct_1(vec3<u32>(22742u, 14590u, 10703u), vec2<i32>(0i, 32583i))), Struct_2(Struct_1(vec3<u32>(2066u, 67224u, 1u), vec2<i32>(2147483647i, -28337i))), Struct_2(Struct_1(vec3<u32>(66026u, 30203u, 0u), vec2<i32>(-1i, -46875i))), Struct_2(Struct_1(vec3<u32>(0u, 1u, 0u), vec2<i32>(-62526i, 13078i))), Struct_2(Struct_1(vec3<u32>(61u, 8869u, 21294u), vec2<i32>(-1i, -19360i))), Struct_2(Struct_1(vec3<u32>(1u, 1u, 21515u), vec2<i32>(0i, 21630i))), Struct_2(Struct_1(vec3<u32>(50210u, 95075u, 0u), vec2<i32>(-18321i, i32(-2147483648)))), Struct_2(Struct_1(vec3<u32>(12082u, 116882u, 73875u), vec2<i32>(35665i, -23223i))), Struct_2(Struct_1(vec3<u32>(65931u, 60586u, 1u), vec2<i32>(-6789i, i32(-2147483648)))));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: Struct_4) -> vec3<i32> {
    var var_0 = !(!(!vec4<bool>(21299i >= arg_1, arg_0.b.x, false, !arg_2.a.b.x)));
    global0 = array<Struct_2, 14>();
    var_0 = vec4<bool>(0i == _wgslsmith_sub_i32(abs(u_input.a) | _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 20281i, arg_0.a.a.a.b.x), vec3<i32>(arg_0.a.a.a.b.x, 58678i, 33704i)), max(_wgslsmith_div_i32(0i, 2147483647i), max(arg_1, arg_0.a.a.a.b.x))), all(!(!vec2<bool>(true, var_0.x))) && !all(select(vec4<bool>(arg_2.c.x, true, var_0.x, arg_2.c.x), vec4<bool>(var_0.x, true, false, arg_0.b.x), vec4<bool>(true, arg_2.c.x, var_0.x, true))), any(arg_2.a.b) & any(vec3<bool>(true, arg_0.a.a.a.a.x == arg_0.a.a.a.a.x, !arg_0.b.x)), u_input.b > arg_2.a.a.a.b.x);
    var var_1 = abs(arg_0.a.a.a.a.zy) ^ ~arg_2.a.a.a.a.zx;
    var var_2 = Struct_2(arg_2.a.a.a);
    return -vec3<i32>(~(-34246i), min(11056i, _wgslsmith_sub_i32(u_input.b, _wgslsmith_div_i32(-1i, -32333i))), select(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_1, arg_2.a.a.a.b.x), vec3<i32>(arg_2.a.a.a.b.x, u_input.b, arg_2.a.a.a.b.x)), countOneBits(-1i), any(vec4<bool>(arg_0.a.b.x, arg_2.b.x, arg_2.c.x, arg_0.a.b.x))) << (63532u % 32u));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_4) -> Struct_3 {
    let var_0 = Struct_3(global0[_wgslsmith_index_u32(4294967295u, 14u)], select(arg_1.a.b, !vec3<bool>(all(vec4<bool>(false, false, true, false)), any(vec4<bool>(arg_1.a.b.x, false, arg_1.b.x, arg_1.b.x)), all(vec3<bool>(arg_1.b.x, arg_1.c.x, arg_1.c.x))), arg_1.a.b));
    global0 = array<Struct_2, 14>();
    let var_1 = func_3(arg_1, firstLeadingBit(_wgslsmith_mult_i32(32274i, ~_wgslsmith_mult_i32(u_input.c, u_input.b))), arg_1);
    let var_2 = Struct_3(Struct_2(Struct_1(~(vec3<u32>(var_0.a.a.a.x, 0u, 4294967295u) >> (vec3<u32>(var_0.a.a.a.x, 25627u, 0u) % vec3<u32>(32u))), vec2<i32>(firstTrailingBit(var_1.x), -var_1.x))), select(vec3<bool>(all(!var_0.b), true, !(var_0.b.x || false)), arg_1.a.b, select(arg_1.a.b, arg_1.a.b, vec3<bool>(true, arg_1.b.x, true))));
    global0 = array<Struct_2, 14>();
    return var_2;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: f32) -> Struct_1 {
    let var_0 = -vec3<i32>(abs(~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(-58754i, u_input.a))), 2147483647i, arg_1.a.a.b.x);
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_3, 512f, arg_2.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_3, arg_3) * _wgslsmith_f_op_vec3_f32(step(arg_2.xxz, vec3<f32>(arg_2.x, 200f, -559f))))) + arg_2.wxx), Struct_4(func_2(vec3<f32>(2194f, 1000f, _wgslsmith_f_op_f32(-arg_2.x)), Struct_4(func_2(arg_2.wwy, Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(arg_1.a.a.a.x, arg_1.a.a.a.x, 4294967295u), arg_1.a.a.b)), arg_1.b), arg_0.b.zx, vec2<bool>(arg_1.b.x, true))), select(arg_0.b.zx, arg_0.b.yz, arg_1.b.yy), select(vec2<bool>(true, arg_0.b.x), vec2<bool>(true, true), arg_1.b.x))), arg_1.b.yy, vec2<bool>(true, -1i >= firstTrailingBit(u_input.a)))).a.a;
    var var_2 = u_input.b;
    var_2 = 10123i;
    let var_3 = var_0.x < var_1.b.x;
    return Struct_1(~_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.a.a.a.x | arg_0.a.a.a.x, ~arg_1.a.a.a.x, 95772u), var_1.a), var_1.b);
}

fn func_1(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: vec3<bool>, arg_3: Struct_3) -> bool {
    let var_0 = true;
    var var_1 = func_4(arg_0.a, func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-391f * 919f), -391f, -1480f)), Struct_4(Struct_3(global0[_wgslsmith_index_u32(arg_3.a.a.a.x >> (arg_0.a.a.a.a.x % 32u), 14u)], vec3<bool>(true, false, arg_0.c.x)), vec2<bool>(arg_2.x | var_0, false), arg_3.b.zz)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(260f, 403f, -1491f, 3039f) + vec4<f32>(392f, 1752f, 773f, -693f))) - vec4<f32>(1f, 1f, 1f, 1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-683f)) + _wgslsmith_f_op_f32(sign(-177f)))))));
    var var_2 = Struct_2(func_4(arg_0.a, func_2(vec3<f32>(_wgslsmith_f_op_f32(451f - 989f), -317f, 1023f), arg_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-652f, 225f, 332f, -407f))), _wgslsmith_f_op_f32(-1f)));
    let var_3 = ~(_wgslsmith_clamp_u32(arg_0.a.a.a.a.x, ~1u ^ arg_0.a.a.a.a.x, _wgslsmith_mult_u32(40748u, 52843u) >> (1u % 32u)) << (~countOneBits(~var_2.a.a.x) % 32u));
    var_2 = Struct_2(Struct_1(~arg_0.a.a.a.a, ~_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, arg_3.a.a.b.x), vec2<i32>(-2147483647i, var_1.b.x)), arg_0.a.a.a.b)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(all(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), true), true)), !func_1(Struct_4(Struct_3(global0[_wgslsmith_index_u32(24621u, 14u)], vec3<bool>(true, true, false)), vec2<bool>(false, true), vec2<bool>(true, false)), vec3<i32>(u_input.b, 311i, u_input.c) ^ vec3<i32>(0i, u_input.a, u_input.b), vec3<bool>(false, true, false), Struct_3(global0[_wgslsmith_index_u32(56560u, 14u)], vec3<bool>(true, false, false))), false, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), false)))), !vec4<bool>(func_1(Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 0u), vec2<i32>(1i, u_input.b))), vec3<bool>(false, false, true)), vec2<bool>(true, false), vec2<bool>(false, false)), ~vec3<i32>(-12284i, u_input.c, u_input.b), vec3<bool>(false, true, false), func_2(vec3<f32>(-262f, 1699f, 1830f), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 46047u), vec2<i32>(-60540i, u_input.b))), vec3<bool>(true, true, true)), vec2<bool>(true, true), vec2<bool>(true, false)))), true, !any(vec3<bool>(false, true, false)), !func_2(vec3<f32>(-1727f, 465f, 715f), Struct_4(Struct_3(global0[_wgslsmith_index_u32(0u, 14u)], vec3<bool>(true, true, true)), vec2<bool>(true, false), vec2<bool>(false, true))).b.x), select(!vec4<bool>(true, all(vec2<bool>(true, true)), true, true), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false)), vec4<bool>(false, false, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true)), !(!any(vec4<bool>(true, true, true, false)))));
    global0 = array<Struct_2, 14>();
    var var_1 = func_2(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-970f, 511f, true)), -264f)))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(649f, 1000f))))), Struct_4(func_2(vec3<f32>(-548f, 160f, _wgslsmith_f_op_f32(max(1000f, -415f))), Struct_4(func_2(vec3<f32>(-1147f, -572f, -627f), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(0u, 67353u, 16697u), vec2<i32>(2147483647i, -64054i))), vec3<bool>(true, var_0.x, var_0.x)), var_0.yz, var_0.zy)), var_0.zz, var_0.xz)), !vec2<bool>(false, var_0.x), !var_0.zx));
    var var_2 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(select(1000f, -1902f, true)), -1734f, _wgslsmith_f_op_f32(f32(-1f) * -915f))))), Struct_4(Struct_3(Struct_2(var_1.a.a), var_1.b), select(var_0.wx, !select(var_0.zw, vec2<bool>(true, var_0.x), var_1.b.x), !func_1(Struct_4(Struct_3(Struct_2(Struct_1(var_1.a.a.a, var_1.a.a.b)), vec3<bool>(var_0.x, false, var_0.x)), var_0.ww, var_0.zx), vec3<i32>(u_input.c, var_1.a.a.b.x, var_1.a.a.b.x), var_0.yyy, Struct_3(var_1.a, vec3<bool>(var_1.b.x, var_0.x, var_0.x)))), func_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-234f, 400f, 109f) * vec3<f32>(1543f, -1000f, -1043f)))), Struct_4(Struct_3(Struct_2(Struct_1(var_1.a.a.a, var_1.a.a.b)), vec3<bool>(var_0.x, true, var_0.x)), select(var_1.b.xx, var_0.yz, true), vec2<bool>(true, true))).b.xx));
    global0 = array<Struct_2, 14>();
    var_2 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(952f, 167f, -579f) * vec3<f32>(-663f, -1084f, 290f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1046f, 521f, 1000f))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-450f, 1787f, -344f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-890f, 1852f, -1840f) - vec3<f32>(-428f, -1089f, 406f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(201f, 1224f, -290f) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, -1653f, 643f)))), !(!vec3<bool>(true, false, var_0.x))))), Struct_4(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(330f, 1183f, 949f), vec3<f32>(-2182f, -199f, 1271f)))), Struct_4(Struct_3(Struct_2(var_1.a.a), var_2.b), !vec2<bool>(var_2.b.x, var_1.b.x), var_1.b.yy)), !(!vec2<bool>(false, var_0.x)), select(!var_0.xz, !var_0.ww, var_0.wy)));
    var var_3 = vec4<i32>(_wgslsmith_sub_i32(firstLeadingBit(-func_3(Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(0u, var_1.a.a.a.x, 12741u), vec2<i32>(u_input.c, 23664i))), var_0.yzy), var_0.yz, var_2.b.yz), -2147483647i, Struct_4(Struct_3(Struct_2(var_1.a.a), vec3<bool>(true, var_0.x, true)), var_2.b.zy, var_0.wz)).x), -_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b, var_1.a.a.b.x, var_1.a.a.b.x), max(vec3<i32>(var_2.a.a.b.x, u_input.c, var_2.a.a.b.x), vec3<i32>(var_2.a.a.b.x, var_1.a.a.b.x, u_input.b)))), u_input.b, 1i, abs(var_2.a.a.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1028f, 1690f, 567f, -1000f), vec4<f32>(-2590f, 2060f, -562f, -304f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -433f), _wgslsmith_f_op_f32(f32(-1f) * -471f))), -(select(-vec2<i32>(17244i, 1i), vec2<i32>(u_input.a, -42618i), true) & vec2<i32>(_wgslsmith_clamp_i32(var_1.a.a.b.x, var_3.x, -53278i), var_3.x)), reverseBits(~countOneBits(~vec4<u32>(var_1.a.a.a.x, 2094u, 1u, 0u))), var_2.a.a.b);
}

