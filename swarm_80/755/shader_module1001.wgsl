struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_2,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<i32>) -> u32 {
    let var_0 = Struct_2(u_input.c, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.c, 0u), 1u << (u_input.c % 32u), countOneBits(u_input.c)), u_input.c) << ((select(~u_input.c, abs(u_input.c), true) >> (~_wgslsmith_mod_u32(u_input.c, 108134u) % 32u)) % 32u), -1000f);
    var var_1 = ~(-abs(vec2<i32>(abs(23143i), 1i << (u_input.c % 32u))));
    var_1 = ~abs(_wgslsmith_div_vec2_i32(vec2<i32>(26509i, var_1.x), vec2<i32>(2147483647i, arg_1.x))) ^ _wgslsmith_add_vec2_i32(-vec2<i32>(1i, 0i | u_input.e.x), countOneBits(u_input.a));
    var_1 = vec2<i32>(-1i) * -(~select(u_input.e.zz, vec2<i32>(-2147483647i, u_input.a.x), vec2<bool>(true, false)));
    var_1 = vec2<i32>(-1i) * -(~(~(vec2<i32>(var_1.x, 15038i) | arg_1.ww)));
    return 4294967295u;
}

fn func_2() -> u32 {
    var var_0 = Struct_2(func_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1687f, 2199f, 826f)) * vec3<f32>(671f, 265f, 629f)), _wgslsmith_div_vec3_f32(vec3<f32>(-130f, -374f, -1438f), vec3<f32>(-1000f, 1432f, 1484f))), -max(~vec4<i32>(44133i, u_input.e.x, 15071i, 23865i), -vec4<i32>(u_input.e.x, u_input.d.x, u_input.a.x, -32533i))), 4294967295u, -122f);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c));
    var_0 = Struct_2(1u, 4294967295u, -1544f);
    let var_2 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(556f - _wgslsmith_div_f32(var_0.c, var_0.c)))), u_input.b, Struct_2(firstTrailingBit(u_input.c), reverseBits((71587u | u_input.c) << (u_input.c % 32u)), _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1, var_1))))), Struct_2(var_0.a, ~(~0u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1 - -947f))), _wgslsmith_f_op_f32(ceil(-464f)), all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true)))))), u_input.e.x);
    var var_3 = true;
    return 83440u;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: Struct_2) -> u32 {
    var var_0 = arg_3.b;
    var_0 = 1u;
    let var_1 = Struct_2(~func_2(), _wgslsmith_clamp_u32(54133u, arg_3.a, 20158u) | abs(arg_2.d.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a, _wgslsmith_f_op_f32(-arg_2.d.c)) - arg_2.c.c) - _wgslsmith_f_op_f32(-148f + arg_3.c)));
    var_0 = ~(~17728u);
    var_0 = 105530u & func_2();
    return ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c, arg_2.d.a, u_input.c, 11404u), vec4<u32>(50751u, 4294967295u, 1u, 55025u)) | ~vec4<u32>(66999u, var_1.b, u_input.c, 0u), ~(vec4<u32>(var_1.b, u_input.c, 41694u, arg_3.a) & _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_3.a, arg_3.a, var_1.a, 26420u), vec4<u32>(4294967295u, 4294967295u, 168u, u_input.c), vec4<u32>(arg_3.a, 1u, 609u, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    var var_1 = u_input.e.zz;
    var_1 = u_input.e.xy;
    var var_2 = !any(select(vec3<bool>(true, true, all(vec2<bool>(false, true))), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, false, true), true)));
    var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-631f + _wgslsmith_f_op_f32(229f + 1599f)))), _wgslsmith_dot_vec3_u32(vec3<u32>(func_1(vec4<i32>(var_1.x, u_input.d.x, var_0, 1i), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), Struct_3(-934f, 1055i, Struct_2(u_input.c, 1u, -1034f), Struct_2(u_input.c, u_input.c, -1080f), u_input.b), Struct_2(u_input.c, u_input.c, 108f)), 15255u, u_input.c), _wgslsmith_add_vec3_u32(vec3<u32>(98875u << (u_input.c % 32u), _wgslsmith_sub_u32(1u, u_input.c), u_input.c), vec3<u32>(u_input.c, ~u_input.c, 41757u))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(407f, 261f, -273f, 345f)), vec4<f32>(-707f, 1107f, _wgslsmith_f_op_f32(f32(-1f) * -1080f), _wgslsmith_f_op_f32(step(-854f, 1294f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(601f, -1009f, 944f, -2604f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1349f, -668f, -770f, -423f) + vec4<f32>(1008f, -1000f, 736f, -517f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(172f, -479f, 1189f, 1000f)))), true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -1522f)))))), 55625i);
}

