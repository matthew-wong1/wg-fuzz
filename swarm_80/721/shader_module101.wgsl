struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 630f;

var<private> global1: f32 = 1536f;

var<private> global2: vec3<bool> = vec3<bool>(false, false, true);

var<private> global3: array<vec4<i32>, 16> = array<vec4<i32>, 16>(vec4<i32>(-1i, 0i, 7493i, 1i), vec4<i32>(17608i, i32(-2147483648), -41992i, 8010i), vec4<i32>(0i, 19967i, 2147483647i, 1i), vec4<i32>(-26423i, -1i, -1i, -1466i), vec4<i32>(-1i, 21363i, 1i, -1i), vec4<i32>(16550i, 0i, 1i, -5821i), vec4<i32>(-8417i, 18975i, 34318i, 5948i), vec4<i32>(-1i, 39437i, 1i, 2147483647i), vec4<i32>(-70357i, i32(-2147483648), -33058i, -38407i), vec4<i32>(-1i, 2147483647i, -13299i, 3962i), vec4<i32>(i32(-2147483648), -16077i, -24630i, -10543i), vec4<i32>(-34660i, -91032i, 11547i, 48866i), vec4<i32>(21795i, 0i, -5748i, -25014i), vec4<i32>(8850i, 35530i, -7715i, -32718i), vec4<i32>(66806i, 22698i, 18670i, 2147483647i), vec4<i32>(22701i, 0i, 30658i, 0i));

var<private> global4: Struct_1 = Struct_1(i32(-2147483648));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: bool) -> vec3<f32> {
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(arg_1.x), _wgslsmith_mod_u32(~(4294967295u << (arg_1.x % 32u)), u_input.a.x)), u_input.a.yy);
    global4 = Struct_1(global4.a << (min(59743u, 1u) % 32u));
    global0 = _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x * 531f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.a.x)))))));
    var var_1 = ~_wgslsmith_mod_vec3_i32(vec3<i32>(-4146i, -28930i, -14925i), u_input.c.zxw);
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -890f), _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(round(368f)), -930f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(floor(arg_0.a.x)), arg_0.a.x, _wgslsmith_f_op_f32(ceil(arg_0.a.x))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(233f, 137f, arg_0.a.x, arg_0.a.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(272f, arg_0.a.x, 1560f, -1303f)))), select(vec4<bool>(false, true, arg_2, true), !vec4<bool>(arg_2, arg_2, true, arg_2), !vec4<bool>(false, true, arg_2, arg_2))))));
    return vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -884f), arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-187f)) - 113f));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(u_input.c.x);
    let var_1 = Struct_1(-39807i);
    global3 = array<vec4<i32>, 16>();
    global0 = 595f;
    global4 = var_1;
    return Struct_2(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-754f, -350f, 1680f) + vec3<f32>(-1209f, -232f, 459f))), var_0.a, _wgslsmith_add_i32(u_input.b, -62577i)), u_input.a, true)), _wgslsmith_dot_vec4_i32(~reverseBits(global3[_wgslsmith_index_u32(0u, 16u)]), ~_wgslsmith_add_vec4_i32(vec4<i32>(var_1.a, -2147483647i, var_0.a, global4.a), vec4<i32>(var_1.a, 0i, -1i, -795i))) | 0i, reverseBits(abs(_wgslsmith_clamp_i32(var_1.a, var_1.a, u_input.b)) >> (_wgslsmith_sub_u32(_wgslsmith_mod_u32(2467u, 1u), u_input.a.x) % 32u)));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = func_2();
    var var_1 = global2.x;
    var var_2 = !(!(!(~42292u <= (u_input.a.x | u_input.a.x))));
    var var_3 = ~(vec2<i32>(-1i) * -vec2<i32>(firstTrailingBit(-2147483647i), 2147483647i));
    let var_4 = var_0.a;
    return Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_4, _wgslsmith_f_op_vec3_f32(func_3(Struct_2(var_4, u_input.b, -1i), u_input.a, any(vec3<bool>(false, global2.x, false))))) * vec3<f32>(-485f, _wgslsmith_f_op_vec3_f32(func_3(func_2(), ~vec3<u32>(7686u, 28261u, u_input.a.x), global2.x)).x, var_4.x)), 19748i, _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_0.a, var_0.b, global4.a) ^ u_input.c.xxz, -u_input.c.yxz));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: i32, arg_3: Struct_2) -> bool {
    return !(~((arg_3.c & 2147483647i) >> (u_input.a.x % 32u)) >= (i32(-1i) * -max(3925i, arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!global2.yx));
    global2 = vec3<bool>(countOneBits(u_input.a.x) <= 32024u, var_0.x, false);
    var var_1 = vec2<u32>(u_input.a.x, u_input.a.x);
    global2 = !vec3<bool>(true, any(global2.yy) & false, func_4(true, u_input.b, -2147483647i >> (reverseBits(var_1.x) % 32u), func_1(Struct_1(29355i))));
    var var_2 = _wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, _wgslsmith_clamp_u32(1u, 4294967295u, var_1.x), ~var_1.x), ~_wgslsmith_div_vec4_u32(vec4<u32>(37071u, 6590u, var_1.x, var_1.x), vec4<u32>(68564u, 4294967295u, u_input.a.x, 19810u))), countOneBits(vec4<u32>(_wgslsmith_sub_u32(var_1.x, u_input.a.x), ~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec2_u32(reverseBits(u_input.a.yy), u_input.a.yy), var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(1253f, _wgslsmith_f_op_f32(f32(-1f) * -282f)), u_input.c.wxw, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-442f, -582f), vec2<f32>(-246f, -281f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(628f, 1051f), vec2<f32>(-585f, -1917f)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1133f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(431f + 1105f) * -491f), 1000f))));
}

