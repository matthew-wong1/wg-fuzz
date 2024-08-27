struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: i32,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_3,
    d: u32,
    e: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.a, countOneBits(~u_input.a << (0u % 32u)), all(vec2<bool>(true, true)) || (_wgslsmith_f_op_f32(round(-234f)) != -234f)), ((vec3<i32>(46215i, 2147483647i, -16960i) >> (~vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))) >> ((vec3<u32>(4294967295u, u_input.a, u_input.a) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u))) & ~_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(-29263i, 1i, 2147483647i)), vec3<i32>(1i, 1i, 1i), -vec3<i32>(-1i, 15692i, 45126i)), ~(~_wgslsmith_mult_u32(~u_input.a, _wgslsmith_add_u32(0u, 51937u))));
}

