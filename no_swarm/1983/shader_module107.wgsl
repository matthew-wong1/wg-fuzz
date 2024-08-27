struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(30159u, vec2<f32>(1615f, 310f), 29998i, vec3<f32>(936f, 711f, -1055f), vec3<i32>(44487i, 19197i, 10662i));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, _wgslsmith_dot_vec2_i32(u_input.b & firstTrailingBit(global0.e.yy), vec2<i32>(-2147483647i, _wgslsmith_clamp_i32(-2147483647i, u_input.c, global0.c)) >> (min(abs(vec2<u32>(12398u, 48683u)), ~vec2<u32>(global0.a, u_input.a)) % vec2<u32>(32u))));
}

