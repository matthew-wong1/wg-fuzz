struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: vec4<i32>, arg_3: vec3<bool>) -> vec2<f32> {
    let var_0 = 46124u;
    var var_1 = 4923u;
    var var_2 = arg_1;
    let var_3 = Struct_2(~(~vec4<u32>(_wgslsmith_mod_u32(var_0, 7181u), ~u_input.d, ~u_input.d, 95941u)), any(vec2<bool>(!(arg_0.x < arg_0.x), true)));
    var var_4 = var_3;
    return vec2<f32>(_wgslsmith_f_op_f32(round(arg_0.x)), 1739f);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: f32, arg_3: bool) -> vec3<u32> {
    let var_0 = (_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec2_f32(step(arg_1, arg_1)), arg_0.b, ~u_input.b, !vec3<bool>(false, false, arg_0.b))).x) < -350f) | !any(vec2<bool>(arg_3 || true, true));
    var var_1 = Struct_2(abs(vec4<u32>(abs(13300u), ~u_input.d ^ 53113u, u_input.d, 29125u)), u_input.b.x != abs(-42016i));
    let var_2 = firstLeadingBit(~var_1.a);
    var var_3 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(~arg_0.a.x, ~_wgslsmith_div_u32(4294967295u, 1u), 4294967295u, ~arg_0.a.x), select(countOneBits(arg_0.a), arg_0.a, select(vec4<bool>(true, true, var_1.b, true), select(vec4<bool>(arg_0.b, var_0, arg_0.b, true), vec4<bool>(arg_3, false, arg_0.b, var_1.b), vec4<bool>(arg_0.b, arg_0.b, arg_0.b, false)), any(vec4<bool>(arg_0.b, true, false, arg_0.b)))));
    let var_4 = 2147483647i | -(u_input.c | 1i);
    return arg_0.a.xyy;
}

fn func_2(arg_0: u32) -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(932f, -1375f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1574f - 216f), _wgslsmith_f_op_f32(721f + -236f)))))));
    let var_1 = Struct_2(reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, arg_0, arg_0, u_input.d), vec4<u32>(u_input.d, u_input.d, 14886u, 1u)) ^ ~vec4<u32>(1u, u_input.d, u_input.d, arg_0)) >> (max(~(~vec4<u32>(u_input.d, arg_0, 42890u, u_input.d)), ~(vec4<u32>(u_input.d, 47322u, u_input.d, 0u) ^ vec4<u32>(1u, 4294967295u, 0u, 83012u))) % vec4<u32>(32u)), true);
    var var_2 = var_0;
    var var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_2.a, var_0.a, var_0.a)))), vec4<f32>(var_0.a, var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.a)))), var_2.a)));
    let var_4 = ~(~vec2<u32>(u_input.d, ~min(35426u, 14650u)));
    return ~(~_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.d, 70091u), _wgslsmith_mod_vec3_u32(var_1.a.xyw, vec3<u32>(25003u, arg_0, arg_0))), func_4(Struct_2(var_1.a, var_1.b), _wgslsmith_f_op_vec2_f32(func_3(vec2<f32>(-1236f, 973f), true, vec4<i32>(2147483647i, u_input.b.x, -1i, u_input.a), vec3<bool>(var_1.b, var_1.b, false))), _wgslsmith_f_op_f32(-var_2.a), true), vec3<u32>(min(34580u, u_input.d), _wgslsmith_add_u32(arg_0, 4294967295u), 1u)));
}

fn func_1() -> Struct_2 {
    let var_0 = vec2<bool>(true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1067f * -1000f))), 330f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1281f))));
    var var_1 = 381f >= _wgslsmith_f_op_f32(select(-1226f, _wgslsmith_f_op_f32(860f * _wgslsmith_f_op_f32(-1f)), !(true & !var_0.x)));
    var_1 = var_0.x;
    var_1 = !var_0.x;
    var var_2 = 201f;
    return Struct_2(~vec4<u32>((0u | u_input.d) ^ ~u_input.d, 4294967295u, 32084u & ~u_input.d, _wgslsmith_dot_vec3_u32(func_2(u_input.d), vec3<u32>(24103u, 90816u, 62071u))), all(vec2<bool>(var_0.x, var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = -u_input.b.x;
    var var_2 = vec2<bool>(true, true);
    var var_3 = _wgslsmith_div_f32(-1437f, -1792f);
    var var_4 = !var_2.x;
    let var_5 = func_1();
    var_2 = vec2<bool>(var_5.b, all(!(!vec4<bool>(var_2.x, true, var_2.x, var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-12057i, -24979i);
}

