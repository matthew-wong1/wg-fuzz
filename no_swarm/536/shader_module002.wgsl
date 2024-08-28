struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: i32,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11> = array<f32, 11>(479f, -1074f, 3327f, 1715f, -973f, -1021f, 475f, 525f, -667f, 533f, -1837f);

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<f32>(663f, 654f), 0i, vec4<bool>(true, true, false, false), false), 25042i);

var<private> global2: u32;

var<private> global3: vec2<u32> = vec2<u32>(39454u, 1u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, 