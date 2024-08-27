struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-9502i, global0.x, -1i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(12751i, global0.x, global0.x), ~vec3<i32>(-5205i, 1i, global0.x)), global0.x)), global0.x, ~abs(select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), abs(vec4<u32>(u_input.a.x, u_input.a.x, 16231u, 19581u)), vec4<bool>(false, false, false, true))));
}

