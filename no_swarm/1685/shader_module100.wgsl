struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec3<u32>,
    d: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: Struct_3,
    d: vec4<u32>,
    e: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: vec3<bool>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25>;

var<private> global1: array<vec2<bool>, 20>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: Struct_4, arg_3: bool) -> vec2<i32> {
    let var_0 = -u_input.d;
    var var_1 = select(arg_2.e.c.b.yxz, !(!(!(!arg_2.e.d.b.yxz))), select(arg_2.e.a.b.ywx, arg_2.c.b.d.b.xwx, any(global1[_wgslsmith_index_u32(~firstLeadingBit(arg_1.x), 20u)])));
    var var_2 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(619f, arg_2.a.x)) - _wgslsmith_f_op_f32(arg_2.a.x - 459f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1268f, -1879f))), arg_2.c.b.c.c.x, 1387f), !arg_2.e.c.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.c.b.b.c.x, arg_2.c.b.a.a.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.c.b.b.c) - _wgslsmith_div_vec2_f32(arg_2.e.d.c, arg_2.e.c.c)))), Struct_1(_wgslsmith_f_op_vec4_f32(min(arg_2.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.x, arg_2.e.c.a.x, arg_2.c.b.d.c.x, arg_2.a.x)) * _wgslsmith_f_op_vec4_f32(arg_2.e.b.a + vec4<f32>(226f, arg_2.e.b.c.x, arg_2.c.b.c.a.x, -1093f))))), !vec4<bool>(arg_2.c.b.c.a.x == -338f, var_1.x, true, arg_0.x), vec2<f32>(arg_2.e.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-245f))))), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, arg_2.a.x, 504f, arg_2.c.b.b.a.x))))), vec4<bool>(true, ~arg_1.x == arg_2.b.x, false, true), vec2<f32>(_wgslsmith_f_op_f32(-arg_2.e.d.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.e.d.c.x + -110f) - _wgslsmith_f_op_f32(f32(-1f) * -807f)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_2.a, vec4<f32>(arg_2.a.x, 1336f, arg_2.e.a.a.x, 3129f)) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.c.b.a.a.x, arg_2.e.b.c.x, 269f, arg_2.e.c.a.x), vec4<f32>(887f, arg_2.e.c.a.x, arg_2.e.c.a.x, 2709f)))), vec4<bool>(true, true, true, all(vec2<bool>(arg_2.e.b.b.x, arg_3)) && true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.e.c.a.x, -1408f))));
    var var_3 = u_input.d;
    let var_4 = arg_2;
    return -var_4.c.a;
}

fn func_2() -> vec2<i32> {
    var var_0 = ~(~vec2<u32>(25379u, ~u_input.e));
    global1 = array<vec2<bool>, 20>();
    var_0 = vec2<u32>(~countOneBits(~0u), 13404u);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1392f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -218f), -664f), -518f) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(511f, 278f) + _wgslsmith_div_f32(-1134f, 975f)), _wgslsmith_div_f32(-210f, 236f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -772f) + -235f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-922f, 1821f, 1926f), vec3<f32>(-509f, 810f, -800f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1006f, -892f, -536f), vec3<f32>(2588f, -1507f, -1093f))))), true)));
    global1 = array<vec2<bool>, 20>();
    return firstTrailingBit(func_3(vec2<bool>(true, true), _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(52480u, var_0.x, var_0.x, u_input.b)), vec4<u32>(u_input.a, 4294967295u, 19107u, 4294967295u) | vec4<u32>(var_0.x, u_input.e, 1u, var_0.x)), Struct_4(vec4<f32>(1059f, var_1.x, 919f, -2791f), vec2<u32>(var_0.x, var_0.x) & vec2<u32>(u_input.a, 94512u), global0[_wgslsmith_index_u32(select(4294967295u, 46026u, false), 25u)], abs(vec4<u32>(0u, 25396u, 47078u, var_0.x)), Struct_2(Struct_1(vec4<f32>(494f, var_1.x, var_1.x, var_1.x), vec4<bool>(true, false, true, true), var_1.xx), Struct_1(vec4<f32>(var_1.x, -172f, var_1.x, var_1.x), vec4<bool>(true, false, true, true), var_1.zz), Struct_1(vec4<f32>(1654f, var_1.x, var_1.x, -202f), vec4<bool>(false, true, true, true), vec2<f32>(-696f, -668f)), Struct_1(vec4<f32>(var_1.x, -187f, var_1.x, var_1.x), vec4<bool>(true, false, true, false), vec2<f32>(491f, -1482f)))), any(vec2<bool>(true, true))) | ~vec2<i32>(_wgslsmith_div_i32(u_input.c, 1i), ~79702i));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_5(1i, Struct_3(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(21674i, 18097i), vec2<i32>(u_input.c, 66747i)), select(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.d, 0i), true)), select(func_2(), max(vec2<i32>(2147483647i, -1i), vec2<i32>(u_input.d, -1i)), global1[_wgslsmith_index_u32(~0u, 20u)])), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-343f, -784f, -1000f, 1000f)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-914f, 713f))), Struct_1(vec4<f32>(1530f, -262f, -1128f, -1626f), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(993f, 249f) - vec2<f32>(-1015f, -1329f))), Struct_1(vec4<f32>(1610f, 939f, 1000f, -488f), vec4<bool>(true, true, true, true), vec2<f32>(-1564f, -137f)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1559f, -394f, -645f, 1067f) + vec4<f32>(-1938f, -319f, 382f, -491f)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true)), vec2<f32>(1590f, -965f))), ~_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(u_input.e, 56475u, u_input.b)), min(vec3<u32>(u_input.b, u_input.a, u_input.e), vec3<u32>(u_input.e, 4294967295u, 0u))), 1i), vec3<bool>(true, (true != all(global1[_wgslsmith_index_u32(u_input.a, 20u)])) && select(true, any(vec4<bool>(false, false, false, false)), true), true), ~_wgslsmith_div_vec2_u32(select(vec2<u32>(97028u, u_input.e), countOneBits(vec2<u32>(28412u, 1u)), global1[_wgslsmith_index_u32(~u_input.a, 20u)]), vec2<u32>(_wgslsmith_mod_u32(u_input.e, u_input.b), firstLeadingBit(u_input.e))), firstTrailingBit(countOneBits(countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(98472u, u_input.a, u_input.b), vec3<u32>(14840u, u_input.e, 90823u))))));
    let var_1 = all(var_0.c);
    var var_2 = var_0.b.b.b;
    var var_3 = var_0.b.b.b.b.yx;
    global0 = array<Struct_3, 25>();
    return var_0.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = array<vec2<bool>, 20>();
    let var_1 = var_0.a.a.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_0.d.a, vec4<f32>(_wgslsmith_f_op_f32(var_0.b.c.x + 117f), 1610f, _wgslsmith_f_op_f32(max(-518f, -1032f)), _wgslsmith_f_op_f32(var_0.b.a.x + var_0.b.a.x)))) - var_0.d.a)));
    var var_3 = countOneBits(abs(max(min(~vec3<u32>(u_input.b, 22933u, 0u), _wgslsmith_div_vec3_u32(vec3<u32>(51140u, 8213u, 0u), vec3<u32>(u_input.b, 34477u, u_input.e))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(64028u, 134944u, u_input.a), _wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(5521u, u_input.e, 0u)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(0u, 66694u, u_input.a))))));
    global0 = array<Struct_3, 25>();
    let var_4 = u_input.c;
    var var_5 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(2201f, _wgslsmith_f_op_f32(step(var_2.x, var_2.x))) * _wgslsmith_f_op_vec2_f32(max(var_2.yz, _wgslsmith_f_op_vec2_f32(-var_0.c.a.yw)))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-582f)) + var_0.c.c.x), var_0.a.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(firstTrailingBit(~firstLeadingBit(vec2<u32>(60037u, u_input.b)))), 0u);
}

