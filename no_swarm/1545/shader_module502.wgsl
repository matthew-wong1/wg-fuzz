struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_2,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 16>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    global0 = array<vec3<bool>, 16>();
    var var_0 = arg_0.b.x;
    global0 = array<vec3<bool>, 16>();
    global0 = array<vec3<bool>, 16>();
    let var_1 = _wgslsmith_clamp_u32(12173u, 1u, ~arg_0.a);
    return select(arg_0.b.zy, arg_0.b.xy, select(vec2<bool>(arg_0.b.x, false), vec2<bool>(arg_0.b.x && true, !arg_0.b.x), all(select(!vec3<bool>(false, arg_0.b.x, arg_0.b.x), global0[_wgslsmith_index_u32(~arg_0.a, 16u)], global0[_wgslsmith_index_u32(12856u, 16u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = func_1(Struct_1(min(~u_input.c, u_input.c), !global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(var_0, u_input.c), 105931u, 48157u), 16u)]));
    var_1 = vec2<bool>(!(u_input.b.x > 2147483647i) | var_1.x, false);
    var var_2 = u_input.b.zyw;
    global0 = array<vec3<bool>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(0i << (max(u_input.c << (~u_input.c % 32u), ~var_0) % 32u), ~u_input.c, ~vec3<u32>(0u, ~(~16042u), ~abs(u_input.c)));
}

