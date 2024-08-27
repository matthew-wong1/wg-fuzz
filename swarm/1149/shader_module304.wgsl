struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 26>;

var<private> global1: array<vec4<bool>, 7>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = true;
    var var_1 = Struct_1(vec4<i32>(countOneBits(arg_1.a.x), _wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, arg_1.a.x), arg_2.a.x), -1i, arg_1.a.x) ^ (_wgslsmith_mod_vec4_i32(-arg_2.a, arg_1.a) | ~(~vec4<i32>(-29424i, -1i, arg_1.a.x, 2147483647i))), firstLeadingBit(~countOneBits(12906u)));
    var var_2 = arg_1;
    let var_3 = arg_1;
    global0 = array<vec2<bool>, 26>();
    return vec4<i32>(max(arg_2.a.x, ~(-max(1i, -1i))), arg_2.a.x, 7135i, _wgslsmith_sub_i32(~(~arg_2.a.x), _wgslsmith_add_i32(-arg_1.a.x, _wgslsmith_mod_i32(arg_1.a.x, var_3.a.x)) & 1i));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> vec4<i32> {
    var var_0 = arg_1;
    var var_1 = false;
    global1 = array<vec4<bool>, 7>();
    global0 = array<vec2<bool>, 26>();
    let var_2 = !(!vec2<bool>(select(true, false, false) & all(vec2<bool>(false, false)), true));
    return abs(arg_1.a);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_1(firstLeadingBit(func_3(vec2<i32>(_wgslsmith_div_i32(2370i, arg_1.x), -arg_0.a.x), Struct_1(func_2(false, Struct_1(arg_0.a, arg_0.b), Struct_1(arg_0.a, u_input.c.x)), _wgslsmith_dot_vec2_u32(u_input.c.zy, u_input.c.wz)), 4163u, arg_0.b)), 25065u);
    let var_1 = vec3<i32>(2147483647i, ~(firstLeadingBit(-1i) | (arg_0.a.x ^ arg_0.a.x)) | 1i, _wgslsmith_sub_i32(-arg_1.x, 1i));
    var var_2 = _wgslsmith_div_vec3_u32(select(u_input.c.yxy, max(u_input.c.yzz, abs(u_input.c.xyw) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(59911u, var_0.b, 67283u), u_input.c.www, vec3<u32>(arg_0.b, 12199u, 70331u)) % vec3<u32>(32u))), vec3<bool>(true, true, true)), vec3<u32>(~countOneBits(1u), ~_wgslsmith_mult_u32(~4294967295u, abs(57939u)), 0u));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(select(firstLeadingBit(u_input.c), ~vec4<u32>(10079u, 1u, 0u, 4294967295u), vec4<bool>(true, true, false, true)), ~(~vec4<u32>(1u, var_0.b, 0u, var_2.x))), _wgslsmith_add_u32(max(16531u, ~4294967295u), _wgslsmith_dot_vec2_u32(var_2.yz, max(u_input.c.xw, u_input.c.zy)))) ^ ~firstLeadingBit(~_wgslsmith_div_u32(4294967295u, 9169u)), 26u)];
    var var_4 = vec4<bool>(any(vec3<bool>(any(vec3<bool>(false, var_3.x, false)), var_3.x, true)) || var_3.x, any(!vec3<bool>(all(vec3<bool>(true, false, var_3.x)), true, true)), var_3.x, false);
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 512f, _wgslsmith_f_op_f32(-456f - -1858f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1501f * 243f), _wgslsmith_f_op_f32(floor(668f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(557f, -775f, -1514f, 808f), vec4<f32>(-1036f, 1000f, 837f, 971f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-980f, -482f, 1000f, -798f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-693f, 433f, -817f, -428f))), _wgslsmith_mod_i32(arg_0.a.x, arg_2.a.x) == -2147483647i))));
    let var_1 = any(!select(vec3<bool>(true, true, true), vec3<bool>(13504i > arg_1.x, all(vec3<bool>(false, false, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)))));
    var var_2 = arg_2;
    var_2 = func_1(func_1(Struct_1(vec4<i32>(_wgslsmith_sub_i32(-1i, 1i), var_2.a.x, ~arg_0.a.x, arg_1.x), _wgslsmith_mult_u32(1u, u_input.a << (70066u % 32u))), vec3<i32>(1i, arg_2.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-4093i, var_2.a.x, 8288i) ^ arg_1.wwz, select(arg_0.a.xwz, vec3<i32>(var_2.a.x, 1i, arg_0.a.x), vec3<bool>(var_1, true, var_1))))), var_2.a.xzy | arg_0.a.xxy);
    var var_3 = -2147483647i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1000f, var_0.x)))) - 777f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 7>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -599f), 765f, true))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_4(func_1(Struct_1(vec4<i32>(27961i, -80451i, 39252i, -36941i), u_input.a), vec3<i32>(2147483647i, -21350i, 1i)), vec4<i32>(1i, 1i, 1i, 1i), Struct_1(vec4<i32>(1i, -2147483647i, 22193i, 33467i), 3490u)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * -1097f), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0, var_0)) - _wgslsmith_f_op_f32(var_0 + var_0)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-509f))))), -vec2<i32>(0i, 1i), var_0, max(~select(abs(vec2<i32>(2147483647i, -2147483647i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -3860i), vec2<i32>(-7411i, 9983i), vec2<i32>(2147483647i, 2147483647i)), select(global0[_wgslsmith_index_u32(0u, 26u)], vec2<bool>(false, true), global0[_wgslsmith_index_u32(u_input.c.x, 26u)])), vec2<i32>(-2147483647i, max(-47986i, 25197i)) ^ func_2(true, func_1(Struct_1(vec4<i32>(0i, -2147483647i, -1i, 1i), u_input.b), vec3<i32>(21713i, 41230i, 32123i)), func_1(Struct_1(vec4<i32>(-19947i, -1i, 552i, -1i), 0u), vec3<i32>(6545i, -69i, 51143i))).zy));
}

