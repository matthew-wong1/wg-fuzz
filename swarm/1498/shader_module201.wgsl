struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.b, u_input.b.x, ~vec3<i32>(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.b.x, u_input.a.x), vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x))), ~firstLeadingBit(26650i), u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(select(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.e, u_input.c, u_input.e), vec3<u32>(0u, u_input.d, u_input.d)), vec3<u32>(u_input.c, select(u_input.d, 4294967295u, false), u_input.e), any(vec2<bool>(false, true)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-1177f * _wgslsmith_f_op_f32(719f - -1121f)))))));
}

