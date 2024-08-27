struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_div_vec3_u32(u_input.e.xzz, reverseBits(vec3<u32>(arg_1, arg_1, abs(u_input.d))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(386f - 1000f) + 1509f), true))), _wgslsmith_f_op_f32(sign(1030f)));
    var var_2 = var_0;
    var_2 = u_input.e.zww;
    var_2 = ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 8600u, 0u), var_0) & u_input.e.zww) ^ var_0;
    return 668f;
}

fn func_2() -> Struct_2 {
    var var_0 = 2147483647i;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -1485f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(vec3<f32>(1479f, -1000f, 773f), 28815u, vec4<bool>(false, true, false, true))), _wgslsmith_f_op_f32(sign(1189f)), all(vec4<bool>(false, false, false, true)))))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(925f))))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-318f + 1098f) - _wgslsmith_f_op_f32(abs(-604f))), -1000f, all(vec3<bool>(true, true, true))))));
    var var_2 = Struct_2(Struct_1(-vec2<i32>(_wgslsmith_add_i32(-1i, -59996i), -308i)), Struct_1(~vec2<i32>(u_input.c | 2147483647i, 0i)), !any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    var_0 = 1i;
    let var_3 = var_2.b;
    return Struct_2(var_2.a, Struct_1(vec2<i32>(var_2.a.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.c), vec2<i32>(var_3.a.x, var_2.b.a.x)) << (u_input.d % 32u))), true);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> bool {
    var var_0 = vec2<bool>(false, false);
    let var_1 = func_2();
    var var_2 = Struct_1(vec2<i32>(func_2().a.a.x, ~_wgslsmith_div_i32(-arg_1.a.x, -arg_1.a.x)));
    var var_3 = vec3<bool>(true, var_1.c, true || func_2().c);
    var var_4 = true;
    return func_2().c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(false, false, true)), vec3<bool>(func_1(false, Struct_1(vec2<i32>(u_input.c, -36422i)), 0i), true, true), select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), vec3<bool>(true, false, false))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), all(vec2<bool>(any(vec3<bool>(false, true, false)), true)));
    var var_1 = max(_wgslsmith_dot_vec4_u32(u_input.e, u_input.e), ~u_input.a.x);
    var var_2 = !vec3<bool>(true, !(_wgslsmith_sub_i32(u_input.b, -44470i) == -27839i), any(vec3<bool>(var_0.x, var_0.x, var_0.x && var_0.x)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(623f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1359f * 554f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-631f, 2423f, -963f), vec3<f32>(-188f, 1529f, 1000f)))))));
    let var_4 = ~(~u_input.e.yzw) >> (vec3<u32>(1u, ~u_input.d | ~(~0u), reverseBits(u_input.a.x)) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.xy);
}

