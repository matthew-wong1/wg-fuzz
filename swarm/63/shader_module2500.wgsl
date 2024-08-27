struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec4<f32>, 13>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> bool {
    global0 = true;
    global1 = array<vec4<f32>, 13>();
    var var_0 = ~1u;
    var var_1 = firstTrailingBit(_wgslsmith_sub_i32(-(~(-1916i)) ^ _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, u_input.b.x), vec2<i32>(2147483647i, 20242i)), _wgslsmith_mult_vec2_i32(vec2<i32>(21053i, u_input.a.x), vec2<i32>(0i, u_input.a.x))), -2147483647i));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-1000f * 936f), !vec2<bool>(true, all(vec2<bool>(false, false))), firstLeadingBit(92573u), vec3<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(false, true, true)))), true, true));
    return false;
}

fn func_3(arg_0: bool, arg_1: vec2<f32>) -> vec2<i32> {
    let var_0 = ~(~(~(~vec2<u32>(1u, 0u)))) >> (~vec2<u32>(35350u, select(12130u, 1u, true || arg_0)) % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -129f) - _wgslsmith_f_op_f32(-arg_1.x)))) + 1323f);
    global1 = array<vec4<f32>, 13>();
    let var_2 = abs(-_wgslsmith_clamp_vec4_i32(firstLeadingBit(select(vec4<i32>(26162i, u_input.c, u_input.c, -1i), u_input.b, vec4<bool>(arg_0, arg_0, false, false))), vec4<i32>(reverseBits(u_input.a.x), -2147483647i, 2147483647i, 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, -13531i, u_input.a.x, -1i), vec4<i32>(u_input.b.x, 14111i, u_input.c, u_input.c) << (vec4<u32>(4294967295u, 1u, var_0.x, 41548u) % vec4<u32>(32u)))));
    global1 = array<vec4<f32>, 13>();
    return reverseBits(countOneBits(u_input.a.xz));
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_1(true, -func_3((u_input.a.x == -2147483647i) & func_2(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-897f, -379f)))), firstLeadingBit(u_input.b));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1352f + -146f) + _wgslsmith_f_op_f32(-2031f - 1421f))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(598f, _wgslsmith_div_f32(858f, 150f), all(vec3<bool>(var_0.a, true, true)))), _wgslsmith_div_f32(-842f, 1126f)));
    let var_2 = _wgslsmith_mult_u32(3154u, reverseBits(firstTrailingBit(48537u) << (1u % 32u)) << (~1u % 32u));
    var var_3 = ~select(var_0.c.xyx, ~u_input.a.zzy, select(select(!vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(var_1.a, false, var_1.a), vec3<bool>(false, false, false)), select(vec3<bool>(false, var_0.a, var_1.a), vec3<bool>(var_0.a, true, var_0.a), !vec3<bool>(true, var_0.a, false)), var_1.a));
    global0 = var_1.a || !select(true, !(!var_0.a), !all(vec2<bool>(var_0.a, false)));
    return Struct_4(-497f, select(vec2<bool>(true, true), !vec2<bool>(select(true, var_1.a, true), var_2 <= var_2), vec2<bool>(var_0.a, any(vec3<bool>(false, var_1.a, true)))), _wgslsmith_div_u32(~abs(countOneBits(var_2)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_2, 4294967295u, var_2, var_2)), vec4<u32>(var_2, 79110u, var_2, var_2) << (vec4<u32>(var_2, 4294967295u, var_2, var_2) % vec4<u32>(32u))), var_2, _wgslsmith_dot_vec4_u32(vec4<u32>(4450u, var_2, 18780u, 11238u), vec4<u32>(1u, var_2, var_2, 25862u)) >> ((var_2 | var_2) % 32u))), vec3<bool>(true, any(select(vec3<bool>(var_1.a, var_0.a, true), select(vec3<bool>(true, var_0.a, true), vec3<bool>(false, false, var_0.a), vec3<bool>(var_0.a, false, var_1.a)), var_0.a)), var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = vec4<u32>(0u, var_0.c, 0u, var_0.c);
    let var_2 = Struct_3(var_0.b.x);
    var var_3 = ~_wgslsmith_mod_u32(53585u, ~(~(~var_0.c)));
    global1 = array<vec4<f32>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(-219f, ~4294967295u, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(1u, 13u)])))))));
}

