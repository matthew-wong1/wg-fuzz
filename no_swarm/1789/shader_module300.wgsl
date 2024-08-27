struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
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

var<private> global0: array<vec2<bool>, 13>;

var<private> global1: array<Struct_1, 28>;

var<private> global2: Struct_1 = Struct_1(vec2<bool>(true, true));

var<private> global3: array<Struct_1, 23>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(1u, _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.b.x), ~u_input.b.x)), reverseBits(firstLeadingBit(vec3<u32>(u_input.b.x, 1u, 48324u) & vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))));
    var var_1 = select(!(!vec4<bool>(false, u_input.c >= -2147483647i, any(global0[_wgslsmith_index_u32(u_input.b.x, 13u)]), global2.a.x & true)), !(!vec4<bool>(false, global2.a.x, global2.a.x, u_input.a >= u_input.c)), !global2.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(73878u);
}

