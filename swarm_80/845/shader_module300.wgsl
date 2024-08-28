struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: vec3<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.xyw;
    let var_1 = vec2<f32>(-1483f, _wgslsmith_f_op_f32(round(1f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(2431i & u_input.a.x, u_input.a.x)), (vec2<i32>(-1i) * -u_input.a.wy) ^ firstTrailingBit(vec2<i32>(-3236i, 39448i))));
}

