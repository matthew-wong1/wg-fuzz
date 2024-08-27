struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: f32,
    e: f32,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> f32 {
    var var_0 = 0i;
    var_0 = ~(u_input.a.x | countOneBits(-54973i ^ (u_input.a.x & 4996i)));
    let var_1 = 1i;
    var var_2 = arg_0;
    let var_3 = _wgslsmith_dot_vec2_i32(u_input.c.yz, -vec2<i32>(u_input.a.x, abs(-13415i)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(169f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_2.a.a, arg_0.a.c, true)))), any(select(vec3<bool>(arg_1.b, false, arg_0.a.b), vec3<bool>(false, arg_1.b, true), var_2.a.b))))));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1003f, -1216f) - _wgslsmith_f_op_f32(-1523f - -1751f)))))) - _wgslsmith_f_op_f32(903f * 444f));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(936f - 1228f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-808f))))))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1210f + -849f) - 130f))))));
    var_0 = -682f;
    var var_1 = 1961f;
    var var_2 = -2147483647i;
    return 187f;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32, arg_3: vec2<bool>) -> f32 {
    let var_0 = max(u_input.a.x, u_input.c.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1326f, arg_1.c, arg_1.c) + vec3<f32>(-326f, -959f, -1457f)));
    var var_2 = ~(vec2<u32>(~(2074u >> (arg_0.x % 32u)), ~(~arg_0.x)) & ~(~(~arg_0)));
    var var_3 = _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-1i, 2147483647i, u_input.c.x, 14123i)) | (vec4<i32>(-41256i, -34069i, u_input.c.x, var_0) >> ((vec4<u32>(57227u, u_input.b, arg_0.x, var_2.x) >> (vec4<u32>(4294967295u, var_2.x, 4294967295u, var_2.x) % vec4<u32>(32u))) % vec4<u32>(32u))), u_input.c) & countOneBits(reverseBits(-u_input.a.x) | 17618i);
    var var_4 = vec4<u32>(~reverseBits(select(0u, 39163u, arg_1.b)), ~(70073u | min(1u, arg_0.x)), _wgslsmith_mult_u32(57866u, _wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(4294967295u, arg_0.x))), 87395u) >> (~(~vec4<u32>(_wgslsmith_mod_u32(arg_0.x, var_2.x), arg_0.x, 20623u & arg_0.x, _wgslsmith_div_u32(0u, u_input.b))) % vec4<u32>(32u));
    return -176f;
}

fn func_5(arg_0: f32, arg_1: f32) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_0)))), !all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), any(vec4<bool>(false, true, true, false)))), arg_1);
    let var_1 = vec2<f32>(-176f, _wgslsmith_f_op_f32(-880f + -1693f));
    var var_2 = Struct_2(Struct_1(var_0.a, var_0.b, 1334f));
    var var_3 = -578f;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a), var_2.a.c, any(vec3<bool>(var_2.a.b, true, true)))), _wgslsmith_f_op_f32(-var_1.x), -392f);
    return var_2.a.b;
}

fn func_1(arg_0: u32) -> bool {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b, 4294967295u), arg_0);
    var_0 = arg_0;
    var var_1 = vec3<bool>(!any(vec2<bool>(true, true)), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -580f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(-269f, true, -1000f)), Struct_1(847f, true, 1151f), 4294967295u, u_input.b)) * _wgslsmith_f_op_f32(floor(-1058f)))) > -273f);
    var var_2 = u_input.c.x;
    var_1 = vec3<bool>(func_5(-107f, _wgslsmith_f_op_f32(func_4((vec2<u32>(4294967295u, u_input.b) << (vec2<u32>(arg_0, 0u) % vec2<u32>(32u))) << (select(vec2<u32>(arg_0, arg_0), vec2<u32>(4294967295u, 0u), false) % vec2<u32>(32u)), Struct_1(1f, true, _wgslsmith_div_f32(-251f, 427f)), _wgslsmith_f_op_f32(func_3()), vec2<bool>(false, true)))), true, !((~0u < ~arg_0) == any(select(vec4<bool>(true, var_1.x, false, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    let var_1 = vec2<u32>(_wgslsmith_mod_u32(34603u, ~(~u_input.b)), u_input.b) & vec2<u32>(4294967295u, u_input.b);
    var_0 = ~var_1.x;
    let var_2 = !any(vec3<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)), func_1(u_input.b), true));
    let var_3 = ~_wgslsmith_clamp_i32(-19476i, -1126i, u_input.c.x) & ~(~_wgslsmith_add_i32(u_input.c.x, u_input.c.x) << ((u_input.b << (1u % 32u)) % 32u));
    let var_4 = max(firstTrailingBit((firstTrailingBit(vec4<u32>(u_input.b, 24239u, 0u, 61992u)) << (vec4<u32>(19986u, 0u, var_1.x, 96589u) % vec4<u32>(32u))) & (vec4<u32>(u_input.b, var_1.x, var_1.x, u_input.b) & ~vec4<u32>(u_input.b, 0u, var_1.x, 26236u))), ~(~_wgslsmith_div_vec4_u32(~vec4<u32>(var_1.x, var_1.x, 1u, 40434u), vec4<u32>(1u, u_input.b, u_input.b, 4294967295u) << (vec4<u32>(var_1.x, u_input.b, u_input.b, 32206u) % vec4<u32>(32u)))));
    let var_5 = u_input.b;
    var var_6 = var_4.yz;
    var_0 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, -vec3<i32>(-2147483647i, ~0i, abs(u_input.a.x)) ^ countOneBits(-u_input.c.zww), abs(~(-u_input.c.x) ^ var_3), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) * -1291f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-272f)), _wgslsmith_f_op_f32(f32(-1f) * -973f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1580f - -1000f) * _wgslsmith_div_f32(391f, -835f)))));
}

