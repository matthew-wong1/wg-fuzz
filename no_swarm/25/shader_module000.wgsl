struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<u32> = vec4<u32>(17276u, 4294967295u, 1462u, 4294967295u);

var<private> global2: vec3<i32> = vec3<i32>(37196i, -1i, 2147483647i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(~vec4<u32>(~reverseBits(33122u), select(_wgslsmith_sub_u32(1u, global1.x), 4294967295u, false), global1.x, ~abs(global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

