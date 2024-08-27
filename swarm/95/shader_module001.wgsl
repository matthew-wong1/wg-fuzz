struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: array<i32, 25> = array<i32, 25>(1264i, 0i, 1270i, -10404i, -39169i, -20153i, 34733i, 0i, 0i, i32(-2147483648), 37091i, i32(-2147483648), 45103i, 2147i, 0i, 121033i, i32(-2147483648), -1i, 21428i, -5445i, 0i, i32(-2147483648), -70460i, 0i, -1i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(_wgslsmith_mult_u32(53207u, select(1u, 77498u, true)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, _wgslsmith_sub_u32(20796u, ~4294967295u), ~reverseBits(10321u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(28514u, 13975u, 0u), vec3<u32>(44943u, 4294967295u, 1u)))));
    let x = u_input.a;
    s_output = StorageBuffer(42776u);
}

