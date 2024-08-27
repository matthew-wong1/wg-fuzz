struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec2<f32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 19> = array<vec3<bool>, 19>(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false));

var<private> global1: array<i32, 11> = array<i32, 11>(-28037i, 9568i, -1i, -58318i, 1i, -9197i, 39362i, -4921i, i32(-2147483648), -1i, i32(-2147483648));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec4<i32>, arg_3: vec2<f32>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_3.x, -1188f, arg_0.d.x)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_3.x, arg_0.d.x, -303f, arg_3.x)))))));
    let var_1 = -u_input.b;
    let var_2 = !select(vec2<bool>(any(arg_0.e), !(!arg_0.e.x)), !select(arg_0.e.xx, vec2<bool>(arg_0.e.x, arg_0.e.x), arg_0.e.yx), !vec2<bool>(arg_0.e.x, true | arg_0.e.x));
    let var_3 = _wgslsmith_clamp_vec2_i32(arg_0.b.zy, u_input.c.yy, select(-vec2<i32>(-53972i, var_1) & firstTrailingBit(-arg_0.b.xx), _wgslsmith_clamp_vec2_i32(~select(arg_0.b.yy, vec2<i32>(40115i, 66963i), false), _wgslsmith_clamp_vec2_i32(arg_2.wy, vec2<i32>(15349i, global1[_wgslsmith_index_u32(arg_1, 11u)]) & arg_0.b.xx, arg_2.ww), arg_0.b.yy), true));
    let var_4 = arg_0;
    return _wgslsmith_add_vec3_i32(vec3<i32>(-1i | _wgslsmith_clamp_i32(select(0i, -2147483647i, false), -1i, -36153i | u_input.b), -52293i, 40343i), firstTrailingBit(~countOneBits(u_input.c.xzz) ^ select(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_2.x, 34861i, global1[_wgslsmith_index_u32(34636u, 11u)]), vec3<i32>(var_3.x, arg_2.x, var_4.a)), vec3<i32>(u_input.c.x, var_3.x, arg_0.a) & vec3<i32>(1i, 19918i, 24832i), any(vec2<bool>(arg_0.e.x, arg_0.e.x)))));
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: vec4<f32>, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.d.x)), arg_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3.d.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3.c)))) * arg_2));
    global0 = array<vec3<bool>, 19>();
    var var_1 = arg_3;
    var var_2 = Struct_1(-global1[_wgslsmith_index_u32(~10725u, 11u)], min(firstTrailingBit(~vec3<i32>(u_input.c.x, -5710i, u_input.b)) ^ ~func_3(Struct_1(u_input.b, vec3<i32>(var_1.b.x, var_1.b.x, global1[_wgslsmith_index_u32(1u, 11u)]), 650f, vec2<f32>(613f, arg_0.x), vec3<bool>(false, false, true)), u_input.a, vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 11u)], -2147483647i, -2147483647i, 22806i), arg_0.zy), vec3<i32>(1i, abs(min(-24103i, -51808i)), 1i)), _wgslsmith_f_op_f32(select(1662f, _wgslsmith_f_op_f32(-1441f * _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(ceil(var_1.c)))), all(select(vec4<bool>(var_1.e.x, arg_3.e.x, arg_3.e.x, var_1.e.x), !vec4<bool>(true, true, false, arg_3.e.x), arg_1)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.d)), vec2<f32>(181f, _wgslsmith_f_op_f32(max(-1000f, 949f)))))), global0[_wgslsmith_index_u32(~(~u_input.a), 19u)]);
    let var_3 = ~min(_wgslsmith_mod_u32(17753u >> (u_input.a % 32u), _wgslsmith_mod_u32(u_input.a, 0u)) << (u_input.a % 32u), abs(countOneBits(firstTrailingBit(45273u))));
    return var_0.zyy;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>) -> vec3<f32> {
    var var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec3<f32>(-956f, arg_0.d.x, arg_0.c), arg_0.e.x, vec4<f32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, -574f), Struct_1(-52682i, arg_2, arg_0.c, arg_0.d, vec3<bool>(true, arg_0.e.x, arg_1))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1064f, arg_0.c, -592f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1209f, arg_0.c, arg_0.d.x)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, -1247f, 1633f)), true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, 637f, arg_0.d.x, arg_0.c)), arg_0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(376f, arg_0.d.x, 578f), vec3<f32>(arg_0.d.x, -726f, arg_0.d.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d.x, -227f, 724f) * vec3<f32>(arg_0.c, -823f, -533f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.c, arg_0.c, arg_0.d.x)))))));
    let var_2 = -global1[_wgslsmith_index_u32(min(reverseBits(21223u), ~u_input.a), 11u)];
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(131f, -431f, 482f)))))) + vec3<f32>(-1488f, 241f, _wgslsmith_f_op_f32(-1f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(select(arg_0.c, var_1.x, arg_1)), _wgslsmith_f_op_f32(744f + 887f))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.x, 1674f, var_1.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, -353f, var_1.x)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(func_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.x * var_1.x), 1362f) - _wgslsmith_f_op_f32(-arg_0.d.x)), _wgslsmith_f_op_f32(step(1254f, var_1.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1993f + -1180f), _wgslsmith_f_op_f32(-var_3.x))))), any(vec4<bool>(true, all(arg_0.e.zx), !any(global0[_wgslsmith_index_u32(u_input.a, 19u)]), true)), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c), 1f, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-356f, var_1.x))) - -279f)), Struct_1(min(u_input.b, select(global1[_wgslsmith_index_u32(~u_input.a, 11u)], 2147483647i, false)), -vec3<i32>(0i, 1i, -u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.d.x)) - 931f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), vec2<f32>(-1166f, var_1.x), any(select(vec4<bool>(arg_0.e.x, false, arg_0.e.x, arg_1), vec4<bool>(true, arg_1, true, arg_0.e.x), false)))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(reverseBits(u_input.a << (u_input.a % 32u)), u_input.a), 19u)])));
    return var_3;
}

fn func_4(arg_0: vec3<f32>, arg_1: u32) -> Struct_1 {
    let var_0 = ~76338u;
    global0 = array<vec3<bool>, 19>();
    let var_1 = Struct_1(_wgslsmith_mult_i32(u_input.b | global1[_wgslsmith_index_u32(var_0, 11u)], min(u_input.b, _wgslsmith_sub_i32(-10128i, global1[_wgslsmith_index_u32(u_input.a, 11u)]))) << (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(11049u, 1u), firstTrailingBit(vec2<u32>(arg_1, 0u))), max(abs(u_input.a), 1u)) % 32u), abs(max(_wgslsmith_mult_vec3_i32(u_input.c.xyx, vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 11u)], u_input.c.x, 17606i)), abs(vec3<i32>(0i, global1[_wgslsmith_index_u32(0u, 11u)], -2147483647i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1192f + arg_0.x)) - _wgslsmith_f_op_f32(f32(-1f) * -988f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 2158f) - arg_0.yx) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) + vec2<f32>(1650f, arg_0.x)), arg_0.yx, select(vec2<bool>(false, true), vec2<bool>(true, true), true))), _wgslsmith_f_op_vec2_f32(-arg_0.zz))), !vec3<bool>(109182u <= ~u_input.a, any(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, false, true))));
    var var_2 = Struct_1(global1[_wgslsmith_index_u32(73827u, 11u)], var_1.b, _wgslsmith_f_op_f32(-1798f - _wgslsmith_f_op_f32(max(1056f, arg_0.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_0.yy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(498f, 1526f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.x, arg_0.x)))))), !select(vec3<bool>(u_input.a >= 26821u, true, all(vec4<bool>(false, true, var_1.e.x, var_1.e.x))), select(var_1.e, var_1.e, global0[_wgslsmith_index_u32(u_input.a, 19u)]), !var_1.e.x));
    var var_3 = ~_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a, var_0), ~(~min(19062u, u_input.a)));
    return Struct_1(0i, vec3<i32>(-_wgslsmith_dot_vec3_i32(max(vec3<i32>(7463i, global1[_wgslsmith_index_u32(var_0, 11u)], global1[_wgslsmith_index_u32(65138u, 11u)]), u_input.c.xyw), abs(var_2.b)), _wgslsmith_mod_i32(-u_input.c.x, _wgslsmith_div_i32(2147483647i, u_input.b)), select(func_3(var_1, select(0u, u_input.a, true), abs(u_input.c), _wgslsmith_div_vec2_f32(var_1.d, var_1.d)).x, -(-1i ^ var_1.a), var_2.e.x)), -1000f, vec2<f32>(var_1.c, -133f), !vec3<bool>(any(var_1.e), !(!var_2.e.x), arg_1 == min(4294967295u, arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 19>();
    let var_0 = 1i;
    var var_1 = true;
    var var_2 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2237f, -826f, 146f) + vec3<f32>(374f, -603f, 674f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(744f, -296f, -1184f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_1(u_input.c.x, vec3<i32>(u_input.b, var_0, 2147483647i), -224f, vec2<f32>(2148f, 148f), vec3<bool>(true, true, false)), true, vec3<i32>(u_input.c.x, 30361i, 5886i))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-170f, 1152f, -693f))))) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-985f)), 1942f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-393f * 1958f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1683f, -230f, true)))))), u_input.a << (~u_input.a % 32u));
    var var_3 = Struct_1(34594i, -var_2.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -579f) - _wgslsmith_f_op_f32(var_2.d.x + -953f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(752f, func_4(vec3<f32>(-2142f, -1019f, var_2.c), 10871u).c), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(var_2.d)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c, var_2.c)), false)), vec2<bool>(true, select(var_2.e.x, true, var_2.e.x)))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d.x) + 950f), _wgslsmith_f_op_f32(floor(-1838f)))), func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.c, 1302f, -378f)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-364f, 132f, var_2.c) - vec3<f32>(-2443f, 552f, -803f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c, var_2.c, var_2.c)), var_2.e.x | false))), 4294967295u).e);
    let var_4 = abs(~(~(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)) ^ _wgslsmith_mult_u32(0u, 518u))));
    global0 = array<vec3<bool>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(0u >> (0u % 32u), 57233u, 0u & max(10387u, u_input.a)) & ~vec3<u32>(~u_input.a, ~1077u, reverseBits(u_input.a)));
}

