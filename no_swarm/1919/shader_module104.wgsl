struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2) -> u32 {
    let var_0 = arg_1;
    global0 = 25473u;
    var var_1 = var_0;
    var var_2 = Struct_3(Struct_1(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + vec4<f32>(-324f, arg_0.x, 137f, 202f)))), ~(i32(-1i) * -2147483647i) ^ arg_1.a, select(!select(vec3<bool>(arg_1.b.a, var_1.b.a, false), vec3<bool>(false, arg_1.b.a, false), vec3<bool>(true, var_1.b.a, arg_1.b.a)), vec3<bool>(!(17692i <= arg_1.a), var_1.b.a, true), true), !vec3<bool>(var_1.b.a, !(!arg_1.b.a), select(var_0.b.a, var_0.b.a, false)), select(vec3<bool>(arg_1.b.a, false, var_0.b.a), vec3<bool>(true, true, true), !arg_1.b.a));
    let var_3 = firstLeadingBit(-1i);
    return 4294967295u;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: i32) -> vec3<f32> {
    let var_0 = Struct_4(_wgslsmith_div_vec2_u32(vec2<u32>(select(0u, 4294967295u, true) & ~709u, func_3(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, arg_1), vec2<f32>(-1258f, arg_1)), Struct_2(arg_2, Struct_1(true, vec4<f32>(arg_1, arg_1, 145f, arg_1)), arg_0))), u_input.b.yx), Struct_3(Struct_1(!any(vec4<bool>(true, false, false, true)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-140f, arg_1, -1000f, arg_1) - vec4<f32>(956f, 780f, 402f, arg_1))))), -_wgslsmith_mult_i32(min(arg_2, 0i), 28343i), !vec3<bool>(all(vec3<bool>(true, false, true)), true, any(vec4<bool>(false, true, false, false))), select(vec3<bool>(select(false, true, false), arg_2 > arg_2, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false))), vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), true, any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))))), firstLeadingBit(vec3<i32>(arg_2, select(-17167i, _wgslsmith_mult_i32(10418i, arg_2), true), abs(-51413i))), select(_wgslsmith_add_vec3_i32(select(reverseBits(vec3<i32>(1i, u_input.c, -60427i)), ~vec3<i32>(1i, 0i, u_input.c), u_input.a >= arg_0), vec3<i32>(u_input.c, arg_2, arg_2) >> (abs(vec3<u32>(1u, u_input.b.x, u_input.b.x)) % vec3<u32>(32u))), select(-(vec3<i32>(arg_2, -2147483647i, u_input.c) >> (vec3<u32>(u_input.a, arg_0, arg_0) % vec3<u32>(32u))), _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(11937i, -23605i, u_input.c)), vec3<i32>(-31460i, 18334i, 13864i)), true), select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, select(true, false, true)), all(vec2<bool>(false, false)))));
    global0 = ~6280u;
    global0 = 1u;
    var var_1 = 23073u;
    let var_2 = false;
    return vec3<f32>(_wgslsmith_f_op_f32(arg_1 * arg_1), _wgslsmith_f_op_f32(abs(603f)), _wgslsmith_div_f32(arg_1, arg_1));
}

fn func_4(arg_0: vec3<f32>) -> vec3<bool> {
    let var_0 = Struct_3(Struct_1(!(!(u_input.d.x == -2147483647i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 948f, arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)))), firstLeadingBit(_wgslsmith_mod_i32(~(-1i), firstLeadingBit(-u_input.d.x))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), !(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), true), vec3<bool>(!(!(arg_0.x == arg_0.x)), true, all(vec3<bool>(false, false, false)) & true));
    global0 = 0u;
    global0 = ~1u;
    return !select(vec3<bool>(var_0.a.a, var_0.c.x, _wgslsmith_f_op_f32(-arg_0.x) > -843f), vec3<bool>(!(!var_0.d.x), var_0.c.x, all(!vec3<bool>(true, true, var_0.e.x))), ~u_input.c <= ~u_input.d.x);
}

fn func_1() -> u32 {
    let var_0 = Struct_2(_wgslsmith_mult_i32(abs(_wgslsmith_mod_i32(reverseBits(13780i), _wgslsmith_clamp_i32(-24201i, -2147483647i, -32932i))), 5765i), Struct_1(any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(856f, 319f, -807f, 338f) - vec4<f32>(974f, -897f, 711f, 162f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1036f, 1664f, -1145f, 708f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(286f, 1000f, -832f, 2460f) - vec4<f32>(-535f, -721f, 1189f, 1032f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-864f, -557f, 299f, -820f))))), reverseBits(~(~u_input.b.x)));
    var var_1 = func_4(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_mult_u32(1u, u_input.a) >> (u_input.b.x % 32u), _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.b.b.x, _wgslsmith_div_f32(var_0.b.b.x, var_0.b.b.x)), var_0.b.b.x), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.a, 2147483647i, var_0.a), vec3<i32>(u_input.d.x, var_0.a, -1i)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 70642u), u_input.b) % vec3<u32>(32u)), countOneBits(vec3<i32>(-1i, -6074i, var_0.a))))));
    let var_2 = var_0;
    var_1 = select(select(select(!func_4(vec3<f32>(var_2.b.b.x, var_0.b.b.x, var_2.b.b.x)), !(!vec3<bool>(var_0.b.a, var_1.x, var_1.x)), select(select(vec3<bool>(true, var_0.b.a, false), vec3<bool>(true, true, var_2.b.a), vec3<bool>(var_1.x, var_2.b.a, var_0.b.a)), vec3<bool>(false, var_1.x, var_0.b.a), true)), func_4(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(324f, var_2.b.b.x, var_0.b.b.x), vec3<f32>(var_0.b.b.x, -389f, var_2.b.b.x)), var_2.b.b.zyz)), !(-1353f < var_0.b.b.x) & true), !select(func_4(_wgslsmith_f_op_vec3_f32(func_2(var_0.c, var_0.b.b.x, -1i))), !func_4(vec3<f32>(var_2.b.b.x, -495f, var_2.b.b.x)), !func_4(var_2.b.b.wxz).x), !(!(!select(vec3<bool>(true, true, false), vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(true, false, var_0.b.a)))));
    global0 = select(~(var_0.c & u_input.a), 12880u, !(!var_0.b.a));
    return ~countOneBits(0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(-104f, 988f)), _wgslsmith_f_op_f32(select(613f, 437f, true)), 1f, 1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1877f, 1676f, 311f, -1621f))), vec4<bool>(any(vec2<bool>(false, false)), any(vec2<bool>(true, false)), true, true)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(125f + _wgslsmith_f_op_f32(floor(var_0.b.x))))))));
    let var_2 = any(!(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, var_0.a)), select(vec2<bool>(var_0.a, false), vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, var_0.a)), any(vec2<bool>(var_0.a, true)))));
    global0 = ~func_1();
    let var_3 = Struct_2(_wgslsmith_div_i32(i32(-1i) * -38783i, u_input.c) | _wgslsmith_mult_i32(u_input.d.x, -64938i), var_0, select(_wgslsmith_add_u32(_wgslsmith_div_u32(~u_input.b.x, 9904u), u_input.a), ~1u, any(!vec4<bool>(var_0.a, false, var_2, var_2))));
    global0 = 49857u;
    var var_4 = !func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, var_3.b.b.x, 578f))).yz;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.x);
}

