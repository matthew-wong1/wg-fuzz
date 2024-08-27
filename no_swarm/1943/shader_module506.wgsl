struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: f32, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_1(vec2<bool>(!(!(true && arg_1.x)), false), vec2<u32>(~(u_input.d | (u_input.a | u_input.d)), _wgslsmith_mod_u32(select(u_input.a | u_input.a, countOneBits(u_input.a), arg_1.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 0u, u_input.d), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 0u), vec3<u32>(396u, u_input.a, 5623u))))));
    let var_1 = -1008f;
    let var_2 = Struct_1(select(vec2<bool>(true, true), select(select(arg_1, vec2<bool>(var_0.a.x, arg_1.x), var_0.a), var_0.a, var_0.a.x), true), ~var_0.b);
    var_0 = var_2;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1569f, arg_0)));
    return Struct_2(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(-u_input.c, u_input.c), firstTrailingBit(max(u_input.b.yx, u_input.c))), u_input.c ^ vec2<i32>(u_input.b.x, firstTrailingBit(17518i))), _wgslsmith_f_op_f32(step(1000f, -430f)));
}

fn func_1(arg_0: u32) -> Struct_3 {
    return Struct_3(!(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)))), func_2(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1223f * -1000f))), !select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)))), ~(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 20530u, 58189u), vec3<u32>(0u, u_input.d, arg_0)), 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~0u);
    var var_1 = var_0;
    var var_2 = vec2<bool>(true, true);
    var_2 = !vec2<bool>(true, var_1.b.b == var_0.b.b);
    let var_3 = u_input.c;
    var_2 = !vec2<bool>(var_2.x, !var_1.a.x);
    let var_4 = Struct_1(var_1.a.zy, vec2<u32>(_wgslsmith_mult_u32(~(~var_0.c.x), _wgslsmith_div_u32(1u, u_input.a)), ~1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.b) - -226f)))));
}

