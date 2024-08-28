struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_4) -> f32 {
    let var_0 = arg_1;
    let var_1 = all(select(arg_2.b.a.a, !(!arg_2.b.a.a), true));
    return 200f;
}

fn func_1(arg_0: Struct_4) -> StorageBuffer {
    return StorageBuffer(1u, vec2<i32>(-arg_0.b.a.d.a.x, 1i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -212f))), _wgslsmith_f_op_f32(arg_0.b.a.b.x + _wgslsmith_f_op_f32(func_2(arg_0.b.a.d, u_input.b.x, arg_0))), _wgslsmith_f_op_f32(-arg_0.b.a.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.a.b.x, _wgslsmith_div_f32(-177f, _wgslsmith_f_op_f32(func_2(Struct_1(vec3<i32>(arg_0.b.a.d.a.x, 0i, u_input.b.x), 4294967295u), arg_0.b.a.d.a.x, Struct_4(vec3<u32>(arg_0.a.x, 27416u, u_input.d), arg_0.b)))), _wgslsmith_f_op_f32(-210f + _wgslsmith_f_op_f32(round(arg_0.b.a.b.x))), _wgslsmith_f_op_f32(-196f + _wgslsmith_f_op_f32(arg_0.b.a.b.x - arg_0.b.a.b.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(496f, 316f, -1270f, arg_0.b.a.b.x), vec4<f32>(arg_0.b.a.b.x, arg_0.b.a.b.x, arg_0.b.a.b.x, 909f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-783f, 540f, arg_0.b.a.b.x, arg_0.b.a.b.x)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.a.b.x, arg_0.b.a.b.x, arg_0.b.a.b.x, arg_0.b.a.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(vec3<u32>(abs(1u), firstTrailingBit(~u_input.d), firstTrailingBit(u_input.c)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_mult_u32(1u, u_input.c), 32595u), vec3<u32>(u_input.c & u_input.d, ~u_input.d, 41609u))) << (vec3<u32>(_wgslsmith_mult_u32(u_input.c, u_input.c), 53069u, u_input.d) % vec3<u32>(32u));
    var var_1 = select(select(vec2<bool>(48077i < u_input.a, true), vec2<bool>(!all(vec2<bool>(false, true)), true), true), !vec2<bool>(true, !any(vec4<bool>(true, false, true, false))), vec2<bool>(true && !all(vec4<bool>(false, true, true, true)), false));
    let x = u_input.a;
    s_output = func_1(Struct_4(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(17981u, 49287u, 1u), vec3<u32>(0u, 0u, u_input.d)) << ((vec3<u32>(u_input.d, 16333u, 0u) << (vec3<u32>(6684u, u_input.d, u_input.c) % vec3<u32>(32u))) % vec3<u32>(32u)), ~(~vec3<u32>(1u, 53478u, var_0.x))), Struct_3(Struct_2(select(vec2<bool>(false, true), vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, true)), vec2<f32>(266f, 547f), 0u, Struct_1(vec3<i32>(49595i, 0i, u_input.b.x), 104909u)))));
}

