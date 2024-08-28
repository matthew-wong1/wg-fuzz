struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 5> = array<vec4<u32>, 5>(vec4<u32>(56599u, 0u, 28156u, 17612u), vec4<u32>(1u, 1u, 888u, 4294967295u), vec4<u32>(51752u, 29051u, 87901u, 17563u), vec4<u32>(4294967295u, 23405u, 1u, 4294967295u), vec4<u32>(50422u, 70471u, 0u, 0u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(-_wgslsmith_add_i32(1i, firstLeadingBit(-2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -2147483647i, max(u_input.b.wy, ~abs(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 0u), u_input.b.ww))));
}

