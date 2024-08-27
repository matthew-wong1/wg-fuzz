struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<i32>,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-1117f - -451f);
    var var_1 = vec2<f32>(1f, var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + -368f))), vec4<i32>(-(i32(-1i) * -2147483647i), countOneBits(i32(-1i) * -1i), u_input.a, _wgslsmith_mod_i32(-2147483647i, -22269i) | (_wgslsmith_dot_vec2_i32(vec2<i32>(28757i, 34750i), vec2<i32>(u_input.a, u_input.a)) << (_wgslsmith_mult_u32(u_input.b.x, 1u) % 32u))), ~(-vec3<i32>(-u_input.a, u_input.a, -5856i)));
}

