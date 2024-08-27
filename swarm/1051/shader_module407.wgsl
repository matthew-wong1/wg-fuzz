struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<f32>,
    c: Struct_3,
    d: Struct_3,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1() -> i32 {
    return _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, ~56342i, firstLeadingBit(-17026i)), vec3<i32>(-firstTrailingBit(0i), 0i, -2147483647i));
}

fn func_3(arg_0: i32, arg_1: f32) -> vec3<bool> {
    global0 = Struct_1(vec3<bool>(true, any(!select(global0.c.xz, global0.a.zx, vec2<bool>(false, global0.a.x))), select(any(vec3<bool>(global0.a.x, false, true)), false, true)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(trunc(1000f))))))), !vec3<bool>(all(vec4<bool>(global0.a.x, global0.c.x, true, true)) | true, true, true), 1u);
    var var_0 = firstLeadingBit(~(~(vec2<u32>(global0.d, global0.d) & vec2<u32>(1u, global0.d)) & ~(~vec2<u32>(1u, 0u))));
    let var_1 = Struct_1(global0.a, global0.b, !(!vec3<bool>(global0.a.x, any(vec4<bool>(true, global0.a.x, true, false)), false)), reverseBits(global0.d ^ 1498u));
    return global0.a;
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(select(global0.c, !vec3<bool>(true, global0.a.x, false), global0.a.x), -1248f, !select(vec3<bool>(true, true, true), select(global0.a, vec3<bool>(true, true, true), global0.a), global0.a), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 0u), ~vec2<u32>(u_input.a, 4294967295u)), _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, 20115u), ~vec2<u32>(global0.d, 0u)))), Struct_1(!select(global0.a, vec3<bool>(false, false, false), func_3(arg_0, -709f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.b * global0.b)))), global0.a, 1u ^ abs(global0.d)));
    var var_1 = -16080i;
    let var_2 = func_3(~arg_0, _wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(global0.b + -616f))).yx;
    var var_3 = Struct_1(select(var_0.b.a, select(vec3<bool>(var_2.x, var_0.b.c.x, var_0.a.c.x), var_0.a.c, !global0.a), true), 337f, var_0.a.a, 4294967295u);
    var_3 = var_0.a;
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(Struct_3(func_2(func_1())), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(140f, 374f, -616f, -133f), vec4<f32>(global0.b, -1576f, -467f, global0.b)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1028f, global0.b, global0.b, -770f) - vec4<f32>(global0.b, global0.b, global0.b, global0.b)))))) * vec4<f32>(global0.b, _wgslsmith_f_op_f32(-480f * global0.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1316f + global0.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(abs(-732f))))), Struct_3(Struct_1(global0.c, -809f, vec3<bool>(global0.c.x, true, !global0.a.x), ~4294967295u)), Struct_3(func_2(1i)), false);
    var var_1 = ~29901u;
    let var_2 = Struct_4(Struct_3(var_0.c.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-var_0.b), _wgslsmith_f_op_f32(var_0.c.a.b * _wgslsmith_f_op_f32(-var_0.c.a.b)));
}

