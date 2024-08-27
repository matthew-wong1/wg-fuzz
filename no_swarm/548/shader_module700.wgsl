struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = !((true || !all(vec4<bool>(true, false, false, false))) & !(u_input.e == u_input.e));
    return arg_0;
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = Struct_2(Struct_1(true | (1u < ~u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1845f + -742f)), _wgslsmith_f_op_f32(-1f)) * _wgslsmith_f_op_f32(f32(-1f) * -432f)), 1i);
    var var_1 = 1103f;
    var var_2 = Struct_2(var_0.a, _wgslsmith_f_op_f32(func_3(-387f)), var_0.c);
    var_0 = Struct_2(Struct_1(var_0.a.a), 299f, _wgslsmith_add_i32(-2147483647i, 1i));
    var var_3 = Struct_2(Struct_1(var_0.a.a), _wgslsmith_f_op_f32(var_0.b - -145f), -32023i);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_3.b, _wgslsmith_f_op_f32(-232f - -510f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-487f, var_3.b))))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> vec3<bool> {
    var var_0 = ~u_input.d;
    var var_1 = Struct_2(Struct_1(all(!select(vec4<bool>(arg_0.a, false, arg_2.a, arg_0.a), vec4<bool>(arg_0.a, arg_2.a, false, false), vec4<bool>(true, true, false, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(4294967295u))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1503f * -176f) - -1000f)), -1i);
    let var_2 = firstTrailingBit((~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, 0u, 4294967295u), vec3<u32>(4294967295u, arg_3, 47654u)) | (_wgslsmith_mult_vec3_u32(vec3<u32>(arg_3, arg_3, arg_3), u_input.d.zyx) ^ vec3<u32>(arg_3, 0u, u_input.d.x))) >> (select(u_input.d.zyz, _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(var_0.zwz, vec3<u32>(arg_3, var_0.x, var_0.x)), var_0.wyw), !select(vec3<bool>(false, var_1.a.a, arg_0.a), vec3<bool>(false, true, true), vec3<bool>(true, false, true))) % vec3<u32>(32u)));
    var_1 = Struct_2(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.b))))), -4679i);
    let var_3 = arg_0;
    return select(!vec3<bool>(!(!var_1.a.a), true, arg_0.a && true), vec3<bool>(true, true, true), vec3<bool>(true, all(vec4<bool>(false, !arg_0.a, all(vec2<bool>(arg_2.a, false)), var_1.a.a)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!select(func_1(Struct_1(false), u_input.e, Struct_1(false), 15064u), vec3<bool>(false, true, false), any(vec4<bool>(true, false, true, true)))), select(func_1(Struct_1(true), ~(-9135i) >> (_wgslsmith_dot_vec4_u32(u_input.d, u_input.d) % 32u), Struct_1(true), abs(4294967295u)), vec3<bool>(true, true, true), !all(vec4<bool>(true, true, true, false))), true);
    var var_1 = Struct_1(any(vec2<bool>(!(!var_0.x), _wgslsmith_mod_u32(u_input.d.x, u_input.b) < ~u_input.d.x)));
    let var_2 = Struct_2(Struct_1(all(select(vec4<bool>(var_0.x, false, var_1.a, false), vec4<bool>(false, var_0.x, var_1.a, false), select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(true, false, false, var_1.a), false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-910f)) - _wgslsmith_f_op_f32(f32(-1f) * -327f)), _wgslsmith_f_op_f32(-1004f - _wgslsmith_f_op_f32(min(1000f, 445f)))))), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.e, u_input.e, u_input.e, u_input.e), vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, u_input.e, u_input.e, u_input.e), vec4<i32>(u_input.e, u_input.e, -1i, -70361i)), u_input.e, reverseBits(-u_input.e), ~_wgslsmith_mod_i32(u_input.e, u_input.e))));
    var var_3 = Struct_1(all(func_1(var_2.a, -(~0i), var_2.a, u_input.c.x).yz));
    let var_4 = -335f;
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.b + var_4))))));
}

