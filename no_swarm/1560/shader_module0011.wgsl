struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>) -> bool {
    var var_0 = 62262u;
    let var_1 = true;
    var var_2 = Struct_1(countOneBits(~(-2147483647i) << (u_input.b.x % 32u)), arg_0.x, ~(~abs(u_input.d) >> (u_input.d % 32u)), false || any(select(select(vec4<bool>(var_1, false, false, var_1), vec4<bool>(var_1, var_1, true, true), false), !vec4<bool>(false, var_1, false, true), !var_1)));
    var var_3 = abs(_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(0u, var_2.c), _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(var_2.c, 1u, u_input.c.x, var_2.c))), abs(~0u))) & _wgslsmith_dot_vec3_u32(u_input.b.zyx, vec3<u32>(var_2.c, ~u_input.c.x, 1u) >> (_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.c.x, u_input.b.x, var_2.c), u_input.b.xwz) % vec3<u32>(32u)));
    var_3 = min(_wgslsmith_mod_u32(u_input.d, select(_wgslsmith_mod_u32(_wgslsmith_mod_u32(var_2.c, 3214u), var_2.c), var_2.c, var_2.d && !var_1)), 450u);
    return false;
}

fn func_2() -> u32 {
    let var_0 = false;
    var var_1 = u_input.a;
    var_1 = u_input.a;
    var var_2 = vec3<i32>(-2147483647i, ~u_input.a, u_input.a);
    var var_3 = vec4<bool>(var_0, true, select(func_3(vec3<f32>(-2007f, _wgslsmith_f_op_f32(-1109f * -757f), 1000f)), !(var_2.x == -var_2.x), !(!all(vec2<bool>(true, var_0)))), all(!vec3<bool>(true, any(vec2<bool>(false, var_0)), true)));
    return 1210u;
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_1(~u_input.a, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1742f, _wgslsmith_f_op_f32(f32(-1f) * -1374f), false)))), _wgslsmith_div_u32(4294967295u, ~_wgslsmith_mult_u32(u_input.c.x, _wgslsmith_dot_vec3_u32(u_input.b.xyz, u_input.b.wwx))), true);
    let var_1 = Struct_1(countOneBits(var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b)))), _wgslsmith_add_u32(1u, _wgslsmith_div_u32(9887u | ~u_input.d, _wgslsmith_add_u32(reverseBits(50085u), func_2()))), true);
    let var_2 = _wgslsmith_f_op_f32(640f - -1000f);
    let var_3 = vec2<bool>(!all(vec2<bool>(true, select(var_0.d, var_0.d, false))), false);
    let var_4 = Struct_1(reverseBits(var_1.a), var_2, u_input.b.x, var_3.x);
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(183f, var_1.b, 942f) * vec3<f32>(var_0.b, 218f, 1567f)) - vec3<f32>(var_2, -1421f, 1046f)))), var_1.b, var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -224f)))));
    let x = u_input.a;
    s_output = func_1();
}

