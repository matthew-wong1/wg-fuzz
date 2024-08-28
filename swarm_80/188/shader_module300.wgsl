struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(22444i, -10053i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(0i, 0i), vec2<i32>(0i, -13082i), vec2<i32>(5738i, 37280i), vec2<i32>(29265i, 23280i), vec2<i32>(1i, -21502i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(i32(-2147483648), 469i), vec2<i32>(1i, -23987i), vec2<i32>(-1i, 57508i), vec2<i32>(-29081i, 2178i), vec2<i32>(0i, -17941i), vec2<i32>(0i, 5018i), vec2<i32>(2147483647i, -17593i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-56954i, -2493i), vec2<i32>(37177i, 29785i), vec2<i32>(0i, 2147483647i), vec2<i32>(-11931i, 35235i), vec2<i32>(2147483647i, 20001i), vec2<i32>(2147483647i, -11990i), vec2<i32>(-5007i, 37010i), vec2<i32>(1i, 0i), vec2<i32>(84155i, -14337i), vec2<i32>(0i, -1i), vec2<i32>(2147483647i, 12124i), vec2<i32>(-39375i, -840i), vec2<i32>(-25234i, 1i), vec2<i32>(-952i, 0i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<f32>) -> vec3<bool> {
    let var_0 = arg_0.x;
    let var_1 = Struct_2(Struct_1(countOneBits(countOneBits(u_input.a.x ^ u_input.b)), all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true))), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), vec4<i32>(-2147483647i, ~(-1i) & u_input.d.x, -2147483647i, _wgslsmith_sub_i32(-8422i | u_input.a.x, u_input.d.x))), 67808u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-572f - arg_0.x))))));
    global0 = array<vec2<i32>, 30>();
    let var_2 = Struct_1(-1i, !select(var_1.a.b || true, var_1.a.d.x > _wgslsmith_add_i32(1i, -13467i), var_1.a.b), var_1.a.c, _wgslsmith_div_vec4_i32(~abs(-var_1.a.d), vec4<i32>(_wgslsmith_add_i32(u_input.d.x, _wgslsmith_sub_i32(-7162i, u_input.d.x)), i32(-1i) * -1072i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.a, -2147483647i, -2147483647i), vec3<i32>(-2147483647i, 2147483647i, u_input.a.x)), ~var_1.a.a), _wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(~9759u, 30u)], -global0[_wgslsmith_index_u32(1u, 30u)]))));
    global0 = array<vec2<i32>, 30>();
    return vec3<bool>(_wgslsmith_sub_u32(firstTrailingBit(~var_1.b), 98807u) > abs(1768u), !(!var_2.b), !(!all(var_2.c.zz)) && true);
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(575f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-906f * 625f), _wgslsmith_f_op_f32(step(-454f, 178f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-594f, -1000f))))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_mod_i32(~_wgslsmith_mod_i32(0i, u_input.d.x), 1i), true, select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), func_3(vec2<f32>(1030f, -1000f)), true), true), vec4<i32>(0i, ~(-2147483647i), u_input.d.x, _wgslsmith_mult_i32(~u_input.a.x, u_input.b))), u_input.c.x, -646f);
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-500f)) - _wgslsmith_f_op_f32(-1666f * var_1.c))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1469f, var_1.c))))) - 122f);
    let var_2 = u_input.c.x;
    return var_1;
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    return func_2();
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    global0 = array<vec2<i32>, 30>();
    var var_0 = func_1(Struct_1(~u_input.b, arg_3.a.b, select(select(!arg_1.a.c, func_2().a.c, arg_1.c < -119f), arg_1.a.c, false), abs(~arg_1.a.d | abs(vec4<i32>(1i, -2147483647i, 68399i, -1i)))));
    var_0 = arg_3;
    var var_1 = Struct_1(~func_1(Struct_1(arg_1.a.a, func_3(vec2<f32>(1915f, var_0.c)).x, vec3<bool>(false, false, var_0.a.c.x), _wgslsmith_clamp_vec4_i32(arg_1.a.d, vec4<i32>(2147483647i, -23028i, arg_3.a.d.x, -3904i), vec4<i32>(arg_3.a.a, 8132i, 57145i, -2147483647i)))).a.d.x, func_2().a.a >= u_input.d.x, select(select(arg_1.a.c, var_0.a.c, false), vec3<bool>(var_0.a.c.x, !arg_3.a.b, !arg_3.a.c.x & !arg_3.a.b), true), ~arg_3.a.d);
    let var_2 = -vec3<i32>(_wgslsmith_dot_vec2_i32(-arg_1.a.d.zw, abs(~vec2<i32>(arg_1.a.d.x, arg_3.a.d.x))), _wgslsmith_mult_i32(arg_1.a.d.x, arg_1.a.a), _wgslsmith_clamp_i32(select(arg_3.a.a, func_2().a.a, select(arg_3.a.b, true, var_1.c.x)), func_2().a.d.x, var_0.a.d.x));
    return arg_3;
}

fn func_5(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_2, arg_3: bool) -> vec3<f32> {
    var var_0 = arg_2;
    let var_1 = func_2().b & var_0.b;
    var var_2 = func_4(_wgslsmith_mult_vec2_u32(~u_input.c.zy, ~vec2<u32>(~u_input.c.x, arg_2.b << (4294967295u % 32u))), func_2(), var_1, func_2());
    let var_3 = vec4<f32>(var_2.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(515f - -754f))) - arg_2.c), func_2().c, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c, 2119f))) * var_0.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_2.c)), 659f));
    let var_4 = arg_2;
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.c, arg_2.c) - arg_2.c), _wgslsmith_f_op_f32(min(arg_2.c, 173f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.c, -1301f)) + _wgslsmith_f_op_f32(max(-1095f, 909f)))))), _wgslsmith_f_op_vec3_f32(var_3.yzx + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(1012f)), _wgslsmith_f_op_f32(select(-1000f, arg_2.c, true)), _wgslsmith_f_op_f32(round(-555f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -793f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -933f) * _wgslsmith_f_op_f32(1469f - -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(271f, -1462f, false)))) * _wgslsmith_f_op_vec3_f32(func_5(vec4<i32>(-2147483647i, firstLeadingBit(65807i), u_input.a.x, u_input.a.x), firstLeadingBit(~(-34698i)), func_4(vec2<u32>(u_input.c.x, 4294967295u), func_1(Struct_1(38931i, true, vec3<bool>(true, false, false), vec4<i32>(-163i, 31454i, u_input.a.x, 4092i))), 94266u, Struct_2(Struct_1(-40463i, false, vec3<bool>(false, true, false), vec4<i32>(14393i, 15259i, 2147483647i, u_input.b)), 0u, -1441f)), true))));
    global0 = array<vec2<i32>, 30>();
    var var_1 = func_2().a;
    var_0 = vec3<f32>(var_0.x, 868f, var_0.x);
    let var_2 = false;
    var_0 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-191f - _wgslsmith_f_op_f32(var_0.x + var_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)) - _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, -115f), -2083f)) + 1408f));
    let var_3 = Struct_1(2147483647i, var_1.c.x, func_2().a.c, ~vec4<i32>(~(-7628i), -firstTrailingBit(u_input.d.x), _wgslsmith_sub_i32(~var_1.d.x, _wgslsmith_div_i32(u_input.d.x, 1099i)), -_wgslsmith_add_i32(u_input.d.x, var_1.a)));
    let var_4 = func_2().a;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-790f, func_2().c))));
}

