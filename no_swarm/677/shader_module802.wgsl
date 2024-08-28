struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(true, false, true, false, true, false, true, true, false, false, true, false, true, true, false, true, true, false, false, true, true, false, false);

var<private> global1: array<vec4<i32>, 32>;

var<private> global2: array<i32, 26> = array<i32, 26>(-43126i, 10991i, 2147483647i, 2147483647i, -1i, -14707i, 1i, 24763i, 2147483647i, 68186i, i32(-2147483648), -1i, -13010i, 39111i, 0i, 33652i, 52137i, 19220i, -46160i, 1i, i32(-2147483648), 0i, -34191i, -1i, -33072i, -1i);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(select(6981u, _wgslsmith_div_u32(u_input.a.x, 60032u), true), 1u, u_input.a.x, u_input.d.x), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.d, abs(vec4<u32>(u_input.d.x, u_input.a.x, u_input.a.x, u_input.a.x))), ~u_input.d), min(u_input.c.zy, u_input.b.zw));
}

