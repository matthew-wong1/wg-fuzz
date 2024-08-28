struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec2<f32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_3 = Struct_3(Struct_1(false, vec2<f32>(1484f, 759f), 72415u), vec2<f32>(1834f, 411f), vec2<u32>(2156u, 1u), Struct_2(-398f, -131f, Struct_1(false, vec2<f32>(-1000f, 659f), 4294967295u), vec3<i32>(-1i, 16807i, 0i), vec2<i32>(-1i, -7476i)));

var<private> global2: vec4<u32> = vec4<u32>(23402u, 26638u, 73907u, 0u);

var<private> global3: vec4<f32>;

var<private> global4: array<Struct_4, 14>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(u_input.a.xyz, vec3<u32>(global1.c.x, 0u, ~_wgslsmith_dot_vec4_u32(u_input.a, u_input.a))));
}

