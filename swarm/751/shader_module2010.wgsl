struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 7> = array<i32, 7>(-50934i, -30427i, 3972i, -20179i, -1i, 1i, 2147483647i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: bool, arg_1: f32) -> StorageBuffer {
    return StorageBuffer(_wgslsmith_dot_vec3_u32(~vec3<u32>(global0.b.x, 4294967295u << (global0.b.x % 32u), ~0u), select(~(~vec3<u32>(0u, 0u, global0.b.x)), vec3<u32>(global0.b.x << (global0.b.x % 32u), global0.b.x, global0.b.x), arg_1 > -396f)), arg_1, ~11199u, ~vec3<u32>(min(abs(global0.b.x), ~global0.b.x), ~(~0u), 11864u), -772f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 7>();
    let x = u_input.a;
    s_output = func_1(!any(!global0.d.ww) || true, 1299f);
}

