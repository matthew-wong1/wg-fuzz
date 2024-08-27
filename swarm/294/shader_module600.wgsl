struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1() -> Struct_1 {
    return Struct_1(vec2<bool>(true, !any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)))), ~(-(~(-u_input.a.x))), reverseBits(u_input.a.x));
}

fn func_3(arg_0: Struct_3) -> bool {
    return (arg_0.a.a.x || arg_0.a.a.x) & true;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(arg_1 * arg_1);
    var_0 = 1487f;
    let var_1 = ~vec3<i32>(1i, 0i, 36870i >> (~_wgslsmith_sub_u32(arg_0, arg_0) % 32u));
    var var_2 = _wgslsmith_f_op_f32(abs(arg_1));
    var var_3 = Struct_2(any(vec4<bool>(all(vec2<bool>(false, arg_2.a.x)) && false, arg_2.a.x, arg_2.a.x, !arg_2.a.x)), Struct_1(vec2<bool>(false, func_1().a.x), -(~5617i), 54247i));
    return select(select(vec3<bool>(var_3.a, func_1().a.x || !var_3.b.a.x, func_3(Struct_3(Struct_1(vec2<bool>(false, var_3.b.a.x), var_1.x, var_3.b.b)))), vec3<bool>(true || any(vec4<bool>(true, var_3.a, arg_2.a.x, var_3.a)), false, true), select(vec3<bool>(arg_2.a.x, false, var_3.a & var_3.a), vec3<bool>(true, true, true), arg_2.a.x)), vec3<bool>(arg_2.a.x, true, (_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -1i), var_1.zx) | -1i) == -var_3.b.b), all(!func_1().a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!func_2(1u, -298f, func_1()));
    let var_1 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(21725u), 1u), vec2<u32>(1u, 24790u)), _wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(43340u, 14128u, 0u)), vec3<u32>(~3341u, 1u, firstLeadingBit(0u))), 1u) & min(select(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), true), select(vec3<u32>(54994u, 70225u, 44513u), abs(vec3<u32>(1u, 25590u, 7782u)), vec3<bool>(true, true, true)) << (_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(27713u, 1u, 71086u)) % vec3<u32>(32u)));
    let var_2 = abs(var_1.xy);
    let var_3 = true;
    var var_4 = var_3;
    let var_5 = ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(countOneBits(var_1) >> (_wgslsmith_mod_vec3_u32(var_1, var_1) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_clamp_u32(var_2.x, 1u, 43276u), min(var_1.x, 4294967295u), ~var_2.x)), _wgslsmith_sub_u32(~var_2.x >> (~var_2.x % 32u), var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_sub_u32(77003u, _wgslsmith_mult_u32(~var_2.x, var_1.x)), var_1.x), ~vec2<i32>(2086i, min(1i, u_input.a.x << (65601u % 32u))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -29772i, -(~u_input.a.x), abs(firstLeadingBit(-19429i))), u_input.a), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1131f, 454f, 2454f, -505f), vec4<f32>(-129f, 2109f, -1000f, 1290f), vec4<bool>(var_3, var_3, var_3, false))) * vec4<f32>(500f, -1000f, -1573f, 598f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(690f, -2103f, -807f, -1000f) + vec4<f32>(-1000f, 1198f, 1808f, 743f)) - vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1940f, _wgslsmith_f_op_f32(sign(128f)), _wgslsmith_f_op_f32(1577f * 1485f), _wgslsmith_f_op_f32(sign(-353f))))))), u_input.a.yzz);
}

