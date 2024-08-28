struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: f32 = 1358f;

var<private> global2: bool = false;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32) -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(493f, 1042f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-688f, -1074f), vec2<f32>(-559f, 758f), true)) * vec2<f32>(-423f, -995f)))));
    var var_1 = arg_1;
    let var_2 = arg_0.x;
    global0 = false;
    let var_3 = _wgslsmith_f_op_f32(ceil(var_0.a.x));
    return firstLeadingBit(-firstTrailingBit(~(~(-4738i))));
}

fn func_2(arg_0: vec3<bool>, arg_1: u32) -> Struct_2 {
    global0 = u_input.d <= ~firstLeadingBit(-1i);
    global2 = true;
    let var_0 = Struct_3(((~7592u ^ u_input.a.x) >= ~1u) && ((_wgslsmith_f_op_f32(sign(1443f)) != -2375f) & any(!vec2<bool>(arg_0.x, true))), _wgslsmith_div_vec4_i32(vec4<i32>(-firstTrailingBit(u_input.b.x), _wgslsmith_add_i32(abs(u_input.d), 0i), -u_input.d, 1i), -u_input.e & vec4<i32>(~(-2147483647i), func_3(arg_0.yz, 41757i), _wgslsmith_dot_vec4_i32(vec4<i32>(28657i, u_input.d, 0i, 45558i), vec4<i32>(10508i, u_input.e.x, u_input.e.x, u_input.b.x)), -2147483647i >> (arg_1 % 32u))), Struct_1(select(select(select(vec4<bool>(arg_0.x, arg_0.x, false, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), !vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x)), select(vec4<bool>(false, false, arg_0.x, false), !vec4<bool>(false, true, false, arg_0.x), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), !vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x)), vec4<bool>((u_input.c.x >> (1u % 32u)) < _wgslsmith_div_u32(0u, arg_1), true, !(-46268i != u_input.b.x), u_input.c.x <= arg_1), vec3<f32>(1299f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(365f * -1460f)), -1177f)));
    global2 = true;
    global1 = -450f;
    return Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-245f, _wgslsmith_f_op_f32(select(var_0.c.c.x, -394f, arg_0.x))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.c.x, var_0.c.c.x) + var_0.c.c.xy)), vec2<f32>(var_0.c.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.c.c.x)) + var_0.c.c.x)))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = countOneBits(~(~(~u_input.c)) << (~firstLeadingBit(u_input.c) % vec4<u32>(32u)));
    let var_1 = Struct_1(vec4<bool>(false, true == !(u_input.e.x >= 2147483647i), !(u_input.c.x != 18857u), true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), any(vec3<bool>(false, true, true)))), select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), false)), vec4<bool>(true, true, -517f > arg_0.a.x, u_input.b.x > -1i), vec4<bool>(true, true, true, true)), true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, -731f, -1432f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(836f, 477f, 1000f) + vec3<f32>(arg_0.a.x, 308f, -1000f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1619f, arg_0.a.x, 511f), vec3<f32>(arg_0.a.x, arg_0.a.x, 286f), vec3<bool>(true, false, false)))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-746f, -1000f, 736f) + vec3<f32>(arg_0.a.x, -1916f, arg_3.a.x)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, 105f, 1003f), vec3<f32>(385f, arg_0.a.x, 365f))))))));
    var var_2 = var_1;
    global0 = all(!vec3<bool>(false, var_2.b.x, true));
    let var_3 = !(!(!vec4<bool>(var_2.c.x != arg_0.a.x, var_2.b.x, any(vec4<bool>(var_1.b.x, false, true, false)), true)));
    return var_1;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_2 {
    global1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.c.x)) * -965f)))));
    let var_0 = u_input.b;
    var var_1 = _wgslsmith_sub_u32(u_input.c.x, countOneBits(39973u));
    var_1 = u_input.a.x;
    global0 = all(arg_1.b.xx);
    return Struct_2(arg_0.zy);
}

fn func_1() -> bool {
    let var_0 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(102f * 1123f), -288f, _wgslsmith_f_op_f32(-1460f * -360f), -391f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-958f, 1f, _wgslsmith_f_op_f32(abs(563f)), _wgslsmith_f_op_f32(f32(-1f) * -895f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(487f, 494f, 363f, 956f), vec4<f32>(-1227f, 1425f, -2206f, 954f))))), func_4(func_2(vec3<bool>(true, u_input.c.x >= u_input.c.x, true), u_input.c.x), _wgslsmith_dot_vec2_i32(-u_input.b.xy, ~select(vec2<i32>(1i, 2147483647i), vec2<i32>(2147483647i, u_input.d), true)), 10241u, Struct_2(vec2<f32>(-1074f, -515f))));
    return all(vec4<bool>(func_4(func_2(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), ~u_input.a.x), min(-u_input.b.x, -u_input.d), u_input.c.x, var_0).a.x, true, true, all(vec3<bool>(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = false;
    global0 = func_1();
    var var_0 = _wgslsmith_mult_vec3_i32(u_input.b.wzw | ~(~vec3<i32>(u_input.d, 0i, u_input.b.x) & select(u_input.e.zyy, vec3<i32>(-22621i, u_input.e.x, 2147483647i), vec3<bool>(true, true, true))), vec3<i32>(firstTrailingBit(min(u_input.e.x, u_input.e.x << (27748u % 32u))), reverseBits(0i), _wgslsmith_div_i32(-_wgslsmith_sub_i32(0i, 0i), _wgslsmith_mod_i32(_wgslsmith_mult_i32(18510i, 1i), -19428i))));
    var_0 = vec3<i32>(-9961i, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(i32(-1i) * -54232i, 2147483647i, -25866i)), countOneBits(firstTrailingBit(vec3<i32>(2607i, var_0.x, -1i) & u_input.b.www))), -24954i);
    var var_1 = var_0.zy;
    let var_2 = func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(1093f, _wgslsmith_f_op_f32(f32(-1f) * -434f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-572f + -2042f)), 1f, 1200f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-479f, 1154f, 378f, -2202f) * vec4<f32>(-1380f, 1000f, -1000f, -778f))) * vec4<f32>(1f, 1f, 1f, 1f))), func_4(func_2(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), 84894u), _wgslsmith_mod_i32(-2147483647i, _wgslsmith_add_i32(firstTrailingBit(var_1.x), -42366i)), u_input.c.x, func_2(vec3<bool>(false, true, true), u_input.a.x))).a;
    var var_3 = -(~vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.e ^ vec4<i32>(u_input.d, 20807i, var_0.x, u_input.b.x), vec4<i32>(0i, 0i, 67693i, u_input.d) | u_input.b), _wgslsmith_dot_vec2_i32(-u_input.e.yy, -var_0.xy), 30633i, u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(884f, _wgslsmith_f_op_f32(step(-1683f, var_2.x)), var_2.x, var_2.x) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1745f, var_2.x, var_2.x, var_2.x) * vec4<f32>(var_2.x, 126f, var_2.x, -1151f))))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.x + var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(931f - 537f) + var_2.x), _wgslsmith_f_op_f32(-713f * _wgslsmith_f_op_f32(595f - 1000f)), _wgslsmith_f_op_f32(round(var_2.x))), vec4<bool>(true, false, (var_3.x < var_3.x) | true, any(vec4<bool>(false, false, true, false)) & true))), ~_wgslsmith_dot_vec3_i32(~u_input.e.zxz, vec3<i32>(var_3.x, var_3.x, u_input.e.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(365f, 501f, -910f, var_2.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1382f, var_2.x, var_2.x, var_2.x)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, 1769f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.x, 694f, var_2.x, var_2.x)))), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true))))));
}

