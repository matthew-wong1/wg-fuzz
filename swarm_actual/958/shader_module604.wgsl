struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_4) -> i32 {
    var var_0 = 4294967295u;
    let var_1 = 927f;
    var var_2 = _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(f32(-1f) * -505f));
    var_2 = -1622f;
    var var_3 = Struct_2(0u);
    return -1i;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<u32>) -> f32 {
    var var_0 = abs(-vec3<i32>(_wgslsmith_mod_i32(func_2(Struct_4(1025f)), select(-1i, u_input.b.x, false)), u_input.b.x >> (_wgslsmith_mod_u32(arg_1.b.a, 103706u) % 32u), select(0i, select(1i, u_input.b.x, arg_1.c), false)));
    return _wgslsmith_f_op_f32(arg_1.a.a * _wgslsmith_div_f32(arg_1.a.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-395f, -951f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.a.a))))));
}

fn func_3(arg_0: f32, arg_1: bool) -> bool {
    var var_0 = arg_1 & true;
    let var_1 = vec2<bool>(true, u_input.a.x != u_input.a.x);
    var var_2 = ~(~u_input.d | _wgslsmith_mod_u32(reverseBits(u_input.c.x) >> (1u % 32u), ~_wgslsmith_mult_u32(4294967295u, u_input.a.x)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_0)) * -236f)), u_input.d >> (_wgslsmith_mod_u32(~1u, 1u) % 32u));
    let var_4 = vec4<bool>(arg_1, !(_wgslsmith_f_op_f32(-arg_0) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a))), u_input.b.x >= _wgslsmith_dot_vec3_i32(~(-u_input.b), firstTrailingBit(u_input.b) << (u_input.a % vec3<u32>(32u))), any(var_1));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-606f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1535f, _wgslsmith_f_op_f32(func_1(Struct_2(u_input.c.x), Struct_3(Struct_1(1000f, u_input.c.x), Struct_2(16050u), true), u_input.c))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1301f)), -794f))));
    var var_1 = !vec4<bool>(any(vec3<bool>(func_3(210f, false), true, all(vec4<bool>(false, false, true, true)))), true, !(!all(vec3<bool>(true, false, false))), true);
    let var_2 = var_0;
    var_1 = !select(select(select(vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(var_1.x, false, false, true), vec4<bool>(var_1.x, var_1.x, false, false))), select(!vec4<bool>(false, var_1.x, var_1.x, false), !vec4<bool>(false, var_1.x, var_1.x, var_1.x), any(var_1.yxx)), _wgslsmith_add_u32(u_input.a.x, 4294967295u) == 1u), select(!(!vec4<bool>(var_1.x, false, false, var_1.x)), !vec4<bool>(true, var_1.x, true, var_1.x), vec4<bool>(true, true, true, true)), true);
    let x = u_input.a;
    s_output = StorageBuffer(~(-2147483647i), max(vec3<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.c.x, u_input.a.x, 0u, 37661u), vec4<u32>(u_input.d, u_input.d, 4294967295u, u_input.c.x)), ~vec4<u32>(u_input.a.x, 40853u, 12498u, 0u)), ~u_input.c.x), min(~u_input.a, u_input.a)));
}

