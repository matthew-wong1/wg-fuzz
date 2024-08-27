struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, 1i);

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global2: Struct_2;

var<private> global3: f32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, ~select(1i, -2147483647i, false), _wgslsmith_dot_vec2_i32(vec2<i32>(global2.c.a, 650i) | vec2<i32>(-5823i, 15866i), vec2<i32>(global0.x, -37257i))), ~(vec3<i32>(21560i, global2.c.a, global0.x) | abs(vec3<i32>(-2147483647i, 16994i, global0.x)))), u_input.a, global2.c.b);
}

