struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_2 = Struct_2(-1590f, vec2<f32>(-474f, -774f), false, false, Struct_1(vec3<u32>(4294967295u, 1u, 49379u), vec4<bool>(true, true, false, false), 818f, 447f));

var<private> global2: u32 = 0u;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.d;
    var var_0 = global1.e.a;
    let var_1 = vec4<bool>(true, true, all(global1.e.b.wx) != (u_input.c.x <= min(30484u << (var_0.x % 32u), ~4294967295u)), false);
    let var_2 = true;
    var var_3 = abs(u_input.a.zy);
    let var_4 = vec3<u32>(~var_0.x, 3759u, _wgslsmith_sub_u32(~(~0u), 0u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i ^ abs(var_3.x), -_wgslsmith_clamp_i32(var_3.x & u_input.a.x, var_3.x, u_input.b ^ -9452i), u_input.b, var_3.x));
}

