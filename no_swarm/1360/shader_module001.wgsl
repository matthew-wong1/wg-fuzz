struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1() -> vec4<f32> {
    var var_0 = Struct_2(true);
    var var_1 = u_input.a;
    var var_2 = var_1.x;
    var var_3 = vec4<f32>(-1871f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-741f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-198f, 1502f))))), -514f);
    var_2 = ~(~14954u);
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1027f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), false)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1170f, var_3.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-212f, _wgslsmith_f_op_f32(max(-1177f, 538f))) * var_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), -828f);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3) -> bool {
    let var_0 = Struct_4(~vec3<i32>(arg_0.a, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.x, 3455i, -2147483647i, 11765i), vec4<i32>(arg_2.a.b.x, arg_2.b, -40062i, arg_0.a)) | 5625i, max(arg_2.b, _wgslsmith_mod_i32(arg_2.b, -62460i))));
    var var_1 = select(false, true, true);
    let var_2 = var_0;
    var var_3 = vec2<bool>(arg_1 >= _wgslsmith_div_f32(1000f, arg_1), u_input.b <= arg_0.c.x);
    var var_4 = arg_2.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_1()).x + -2264f))) * -994f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-397f + arg_1)));
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    let var_0 = ~select(-35620i, select(15861i, 0i, true), any(vec3<bool>(any(vec2<bool>(false, true)), true, func_3(Struct_1(-2147483647i, vec2<i32>(1i, 5420i), u_input.a.wx, u_input.a), 547f, Struct_3(Struct_1(2147483647i, vec2<i32>(1i, 0i), u_input.a.xy, u_input.a), 16930i)))));
    let var_1 = Struct_1(var_0, -vec2<i32>(_wgslsmith_sub_i32(~0i, var_0), -50344i), ~u_input.a.zw, vec4<u32>(u_input.c.x, u_input.b, u_input.b, _wgslsmith_dot_vec3_u32(~vec3<u32>(77896u, u_input.b, 114050u), ~u_input.a.wyw & vec3<u32>(u_input.a.x, 1u, u_input.b))));
    var var_2 = Struct_3(var_1, var_0);
    let var_3 = Struct_3(Struct_1(_wgslsmith_div_i32(var_2.b, countOneBits(~(-1i))), -var_1.b, ~select(var_1.c, var_1.c, true), ~vec4<u32>(48024u, 4294967295u | var_2.a.d.x, min(u_input.c.x, 0u), ~var_2.a.d.x)), _wgslsmith_dot_vec2_i32(var_2.a.b, var_2.a.b));
    var_2 = Struct_3(Struct_1(_wgslsmith_clamp_i32(reverseBits(-977i), abs(~(-1i)), _wgslsmith_mult_i32(-var_0, 45391i)), abs(-vec2<i32>(1i, var_2.a.b.x)), abs(_wgslsmith_sub_vec2_u32(min(var_2.a.d.yy, vec2<u32>(0u, 38405u)), var_2.a.c)), vec4<u32>(4240u, _wgslsmith_dot_vec2_u32(vec2<u32>(55265u, var_2.a.c.x), u_input.a.zw), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.c.x, u_input.b, var_3.a.d.x, var_3.a.c.x), vec4<u32>(var_2.a.c.x, var_3.a.d.x, 4294967295u, 67067u)), ~var_3.a.d.x)), -1i);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(~1i);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_1()), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -536f, 178f, -1000f), vec4<f32>(-1000f, 1306f, -576f, 746f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1754f, 448f, 1000f, -1000f), vec4<f32>(917f, -109f, -619f, -1501f), false)))), !(!any(vec2<bool>(false, false))))));
    let var_2 = ~(_wgslsmith_clamp_u32(abs(u_input.c.x), func_2(vec2<f32>(1349f, 290f)), 0u) >> (4294967295u % 32u)) ^ 106690u;
    let var_3 = -511f;
    var var_4 = vec3<u32>(u_input.a.x, ~var_2, ~var_2) | abs(u_input.a.ywy);
    var var_5 = Struct_4(vec3<i32>(1i << ((1u << (var_2 % 32u)) % 32u), 42416i, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(var_3, _wgslsmith_f_op_vec2_f32(vec2<f32>(164f, var_3) * var_1.zz));
}

