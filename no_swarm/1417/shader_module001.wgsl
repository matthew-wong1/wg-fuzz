struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<i32>;

var<private> global2: vec3<u32> = vec3<u32>(43519u, 44648u, 0u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~vec3<u32>(u_input.e, u_input.e, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(321f, 801f, -511f) * vec3<f32>(1702f, -572f, -417f))))))), ~((-u_input.a << (_wgslsmith_sub_vec3_u32(vec3<u32>(5625u, u_input.e, 1u), vec3<u32>(0u, global2.x, 24099u)) % vec3<u32>(32u))) & -max(vec3<i32>(u_input.a.x, -8533i, -2147483647i), vec3<i32>(u_input.a.x, 2147483647i, global1.x))), -u_input.c.x >> (((~u_input.e >> (_wgslsmith_mod_u32(global2.x, 0u) % 32u)) ^ global2.x) % 32u), abs(global2.x));
}

