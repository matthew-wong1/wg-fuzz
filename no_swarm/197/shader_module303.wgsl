struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3) -> vec3<bool> {
    var var_0 = !all(!select(select(vec4<bool>(arg_0.a.a, true, true, arg_0.a.a), vec4<bool>(false, true, false, arg_0.a.a), vec4<bool>(arg_0.a.a, arg_0.a.a, true, true)), select(vec4<bool>(arg_0.a.a, arg_0.a.a, false, arg_0.a.a), vec4<bool>(false, true, arg_0.a.a, arg_0.a.a), true), vec4<bool>(arg_0.a.a, true, arg_0.a.a, false)));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-689f * 1410f)))), -473f)));
    var var_2 = Struct_3(Struct_1(true));
    let var_3 = Struct_3(arg_0.a);
    let var_4 = _wgslsmith_mult_u32(u_input.b, _wgslsmith_add_u32(u_input.b, u_input.b));
    return !(!vec3<bool>(all(select(vec2<bool>(var_2.a.a, true), vec2<bool>(arg_0.a.a, true), vec2<bool>(false, false))), arg_0.a.a, true));
}

fn func_2() -> bool {
    var var_0 = select(func_3(Struct_3(Struct_1(true))), vec3<bool>(false, any(vec3<bool>(false, select(false, false, false), false)), func_3(Struct_3(Struct_1(false))).x), select(!vec3<bool>(true, all(vec2<bool>(true, false)), true), vec3<bool>(true, !all(vec4<bool>(false, false, false, false)), all(func_3(Struct_3(Struct_1(false))).zy)), vec3<bool>(true, all(func_3(Struct_3(Struct_1(false)))), true)));
    let var_1 = Struct_1(var_0.x);
    var var_2 = var_1.a;
    var_0 = !select(!select(vec3<bool>(var_1.a, false, var_0.x), select(vec3<bool>(var_1.a, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, var_0.x, true)), false && var_0.x), !select(vec3<bool>(var_0.x, false, true), vec3<bool>(true, true, var_1.a), select(vec3<bool>(var_1.a, true, var_0.x), vec3<bool>(var_0.x, false, var_1.a), true)), vec3<bool>(true, false, true));
    var_2 = false;
    return true;
}

fn func_1(arg_0: vec4<i32>) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(522f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -562f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-440f + 660f) + _wgslsmith_f_op_f32(3210f * -1065f))))));
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-249f, 126f, func_2())))))));
    let var_1 = !select(vec3<bool>(!all(vec3<bool>(true, false, false)), false, -22617i >= min(arg_0.x, arg_0.x)), vec3<bool>(true, (0i < arg_0.x) || true, false), select(vec3<bool>(arg_0.x == arg_0.x, true, func_2()), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), func_3(Struct_3(Struct_1(true))), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)));
    return StorageBuffer(~(~min(vec4<u32>(0u, 55805u, u_input.b, u_input.a.x), vec4<u32>(4294967295u, 86309u, u_input.a.x, 6143u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    let var_1 = vec3<bool>(true, true, true);
    var var_2 = var_1.x;
    var_0 = _wgslsmith_div_u32(u_input.b ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 0u, 41664u, u_input.b), ~vec4<u32>(u_input.a.x, 34003u, u_input.a.x, 11760u)), 1u);
    var_0 = 4294967295u;
    let x = u_input.a;
    s_output = func_1(vec4<i32>(reverseBits(1i), -11537i, countOneBits(1i), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, -1i, -2147483647i, 75761i), vec4<i32>(-2147483647i, -10107i, 15012i, 0i)), _wgslsmith_div_i32(firstTrailingBit(-2147483647i), 1i))));
}

