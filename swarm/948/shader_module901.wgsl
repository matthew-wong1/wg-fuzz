struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<u32>,
    d: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_2) -> i32 {
    var var_0 = Struct_1(vec2<bool>(arg_2.d, arg_2.d), -1661f, ~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-28305i, -49783i), vec2<i32>(2147483647i, 0i)), ~firstTrailingBit(-1i)), _wgslsmith_f_op_vec2_f32(-arg_2.b.zz));
    var_0 = Struct_1(vec2<bool>(all(!vec4<bool>(arg_2.d, true, var_0.a.x, arg_2.d)) && arg_2.d, all(vec4<bool>(true | arg_2.d, any(vec3<bool>(var_0.a.x, false, true)), true, !var_0.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * -1000f))), _wgslsmith_f_op_f32(-arg_1)), var_0.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) * vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -420f), 1000f)), var_0.b)));
    var var_1 = _wgslsmith_f_op_f32(round(var_0.d.x));
    let var_2 = u_input.a.x;
    var_0 = Struct_1(!(!var_0.a), var_0.d.x, abs(~(-11442i)), var_0.d);
    return -1i;
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: bool, arg_3: i32) -> i32 {
    var var_0 = Struct_3(Struct_1(!select(select(vec2<bool>(false, true), vec2<bool>(arg_2, arg_0), vec2<bool>(true, arg_0)), vec2<bool>(arg_0, arg_2), false), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1000f)), -1262f, arg_2 && false)))), arg_3, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-807f, 225f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, -1509f), vec2<f32>(-666f, 1000f)))))), Struct_2(1145f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 578f, -214f, 1103f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(887f, 588f, -456f, 114f) - vec4<f32>(1000f, -208f, 436f, -771f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-156f, -512f, 565f, -1396f) + vec4<f32>(-808f, 604f, 1777f, -1482f))), vec2<u32>(firstTrailingBit(_wgslsmith_div_u32(u_input.a.x, u_input.a.x)), _wgslsmith_div_u32(u_input.a.x, firstTrailingBit(44961u))), !(-467f < _wgslsmith_f_op_f32(sign(-1000f)))), ~abs(vec3<u32>(select(4294967295u, 0u, true), 1u, u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1124f + _wgslsmith_f_op_f32(-1f))));
    var var_1 = min(-2147483647i, 477i);
    let var_2 = vec3<u32>(~((21411u >> (var_0.c.x % 32u)) | var_0.b.c.x) ^ ~72541u, 12692u, _wgslsmith_div_u32(~(~1u), abs(min(var_0.c.x, 0u))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-var_0.b.b);
    var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.d.x - var_0.d)) * -1224f)), _wgslsmith_f_op_f32(max(var_3.x, _wgslsmith_f_op_f32(ceil(var_3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1220f), -835f, arg_2)) * _wgslsmith_f_op_f32(step(-231f, _wgslsmith_f_op_f32(var_3.x * var_0.a.d.x))))), _wgslsmith_f_op_f32(select(-660f, var_0.b.a, true)));
    return ~var_0.a.c;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: u32) -> i32 {
    var var_0 = arg_0;
    var var_1 = Struct_2(_wgslsmith_div_f32(arg_0.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1799f, 1179f) * _wgslsmith_f_op_f32(arg_1.x + arg_1.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(arg_1.x, var_0.b.a))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, arg_1.x)) * -1172f), 528f, 1486f, _wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)))), ~var_0.b.c, arg_0.b.d);
    var var_2 = vec4<i32>(24373i, func_4(!(!var_0.a.a.x), ~_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_2, 42344u), var_1.c), var_1.c), false, func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.d.x, arg_1.x) + var_0.b.b.yz), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_div_f32(arg_0.b.b.x, var_0.a.d.x))), var_0.b)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(var_0.a.c, var_0.a.c), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.c, arg_0.a.c, 59648i, 2147483647i), vec4<i32>(var_0.a.c, 3476i, arg_0.a.c, arg_0.a.c)), min(arg_0.a.c, var_0.a.c)) << (0u % 32u)), arg_0.a.c);
    var_0 = Struct_3(arg_0.a, var_0.b, countOneBits(~vec3<u32>(arg_0.b.c.x, u_input.a.x, 75664u)), 351f);
    var_2 = vec4<i32>(0i, arg_0.a.c, ~abs(arg_0.a.c), 14356i);
    return -2147483647i;
}

fn func_1() -> Struct_1 {
    let var_0 = vec4<bool>(true, true, true, true);
    let var_1 = vec2<u32>(_wgslsmith_sub_u32(1u, select(4294967295u, u_input.a.x, var_0.x)), ~(~(~u_input.a.x)));
    var var_2 = Struct_2(1207f, _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -869f, -1289f, _wgslsmith_f_op_f32(886f * 1f)) + vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-552f * -239f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1412f - -366f)), 1000f)), var_1, true);
    var_2 = Struct_2(1272f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(var_2.b, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.b.x, var_2.a, -251f, var_2.b.x), var_2.b))))))), u_input.a, true && !any(!var_0.xzx));
    return Struct_1(!vec2<bool>(!var_2.d, true), -673f, _wgslsmith_add_i32(_wgslsmith_sub_i32(~func_2(Struct_3(Struct_1(var_0.wx, -316f, 15382i, var_2.b.wx), Struct_2(var_2.a, vec4<f32>(var_2.b.x, 156f, 1635f, var_2.a), vec2<u32>(var_2.c.x, 4294967295u), true), vec3<u32>(var_2.c.x, 48742u, u_input.a.x), 403f), vec4<f32>(911f, 937f, -2616f, var_2.b.x), 0u), -30761i), -1i), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(771f, -2147f)))), var_2.b.xw))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(_wgslsmith_mult_u32(firstTrailingBit(~u_input.a.x), 1u), u_input.a.x << (~u_input.a.x % 32u), ~(~4294967295u));
    let var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.x, var_0, vec2<i32>(1i, ~var_1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b * var_1.d.x), _wgslsmith_f_op_f32(var_1.b * var_1.d.x))))), countOneBits(vec3<i32>(var_1.c, -30715i, var_1.c | var_1.c)));
}

