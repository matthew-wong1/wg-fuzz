struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<f32>,
    d: vec4<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = vec4<bool>(true, true, true, true);
    var_0 = select(!(!select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(false, false, var_0.x, false)), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), true)), !vec4<bool>(!(127f != arg_1.x), false, var_0.x, !any(vec2<bool>(true, var_0.x))), var_0.x);
    var_0 = vec4<bool>(var_0.x, select(true, true, select(!var_0.x, any(vec4<bool>(false, false, true, var_0.x)), all(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), var_0.zx)))), !var_0.x, -449f <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-672f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x)))), _wgslsmith_f_op_f32(-arg_1.x)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1264f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.x + -1000f))))) - 940f);
    return u_input.c;
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(arg_0.a.wz, ~func_3(Struct_4(0u, arg_0.a.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-550f, -465f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1377f)), vec2<bool>(true, true))), Struct_1(vec2<u32>(1u, 39166u), _wgslsmith_div_vec2_i32(u_input.c, u_input.a.xx))));
    var var_1 = vec2<u32>(~countOneBits(arg_0.a.x), 6645u);
    let var_2 = ~vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(~arg_0.a.x, var_0.a.x), arg_0.a.x), abs(min(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, 4294967295u, arg_0.a.x), vec3<u32>(arg_0.a.x, 4294967295u, 34797u)), _wgslsmith_add_u32(0u, 1650u))), _wgslsmith_dot_vec2_u32(var_0.a, vec2<u32>(var_1.x, 4294967295u << (arg_0.a.x % 32u))));
    let var_3 = Struct_4(_wgslsmith_div_u32(~var_0.a.x | ~0u, _wgslsmith_mod_u32(43590u, abs(4294967295u))) | _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, 40609u, 0u, 0u) ^ abs(vec4<u32>(1u, var_2.x, 4294967295u, 1u)), ~arg_0.a << (~arg_0.a % vec4<u32>(32u))), _wgslsmith_sub_u32(5705u, _wgslsmith_dot_vec3_u32(var_2, _wgslsmith_add_vec3_u32(~var_2, ~vec3<u32>(var_0.a.x, 72846u, arg_0.a.x)))));
    let var_4 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), arg_0, abs(min(1u, arg_0.a.x) ^ ~max(0u, var_0.a.x)), Struct_2(vec4<u32>(reverseBits(~1u), var_0.a.x, var_3.b, ~firstLeadingBit(24263u))));
    return Struct_2(abs(_wgslsmith_mod_vec4_u32((arg_0.a ^ vec4<u32>(var_4.b.a.x, var_2.x, 1u, var_3.b)) ^ vec4<u32>(var_4.b.a.x, 52606u, 11027u, 0u), vec4<u32>(max(9039u, var_3.a), 1u, 10111u, max(var_1.x, 1u)))));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> vec4<bool> {
    let var_0 = 2147483647i;
    var var_1 = vec4<f32>(-1000f, 2249f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -2070f));
    let var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(firstTrailingBit(~0u) | 25211u, _wgslsmith_mod_u32(~(~arg_1.x), abs(arg_1.x ^ arg_1.x)), ~31374u, 33732u >> (_wgslsmith_mod_u32(arg_1.x, ~1u) % 32u)), vec4<u32>(35904u, select(_wgslsmith_sub_u32(arg_1.x, 8461u), arg_1.x, true), _wgslsmith_mod_u32(0u >> (arg_1.x % 32u), ~0u), select(arg_1.x, 1u & ~arg_1.x, true & any(vec2<bool>(false, true)))));
    let var_3 = func_2(Struct_2(~var_2));
    var var_4 = Struct_3(_wgslsmith_f_op_f32(round(1617f)), Struct_2(var_3.a), _wgslsmith_mult_u32(0u, _wgslsmith_mult_u32(~31049u, 1u)), var_3);
    return vec4<bool>(!(_wgslsmith_f_op_f32(abs(arg_0)) > _wgslsmith_f_op_f32(var_1.x * var_1.x)), true, false, all(vec4<bool>(true, true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true))), vec4<bool>(true, true, true, true), all(select(vec2<bool>(false, true), vec2<bool>(true, true), true))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, any(vec2<bool>(true, false)), true), vec4<bool>(true, 0i == u_input.c.x, true, false)), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-965f - 410f)), ~vec2<u32>(4294967295u, 0u)), select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true)), func_1(692f, vec2<u32>(1u, 22224u)), vec4<bool>(false, false, true, true))), !(!func_1(_wgslsmith_f_op_f32(sign(556f)), _wgslsmith_add_vec2_u32(vec2<u32>(3592u, 1u), vec2<u32>(1u, 12544u)))));
    var var_1 = (_wgslsmith_div_vec2_i32(u_input.c, vec2<i32>(~3395i, func_3(Struct_4(0u, 26122u), vec2<f32>(-1073f, 1456f), Struct_1(vec2<u32>(1u, 55449u), vec2<i32>(u_input.a.x, -10142i))).x)) ^ (vec2<i32>(-1i) * -u_input.c)) ^ u_input.c;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-872f - _wgslsmith_div_f32(-289f, 1306f))))));
    var_1 = -u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(~30643u, ~4294967295u), firstTrailingBit(u_input.b), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2 * var_2))), var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-414f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, var_2, 200f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-745f, 362f, var_2, var_2)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, 1466f, 318f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2, 1000f, var_2, 111f))) + vec4<f32>(-262f, var_2, 480f, var_2)))), vec2<u32>(0u, firstTrailingBit(_wgslsmith_mod_u32(select(1u, 7620u, false), ~0u))));
}

