struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec2<u32> = vec2<u32>(0u, 17994u);

var<private> global2: vec4<bool>;

var<private> global3: array<vec3<u32>, 2>;

var<private> global4: array<vec2<i32>, 28>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.b.x, _wgslsmith_mod_u32(firstLeadingBit(u_input.c.x), u_input.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(abs(global1.x), 1u, global1.x, 1u), vec4<u32>(global1.x, ~30928u, 22922u, 3227u))), 39515i, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.c.x, global1.x, 27017u, global1.x)), vec4<u32>(~59979u, ~global1.x, ~u_input.c.x, ~global1.x)) ^ _wgslsmith_mod_u32(_wgslsmith_sub_u32(11848u, global1.x), ~(~1u)));
}

