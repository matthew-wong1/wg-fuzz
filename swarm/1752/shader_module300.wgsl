struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: i32,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6>;

var<private> global1: Struct_2 = Struct_2(vec3<i32>(0i, 2147483647i, 1i), vec2<bool>(true, true), 3907i, vec3<f32>(557f, -1829f, -1404f), vec3<i32>(-6573i, 35735i, i32(-2147483648)));

var<private> global2: Struct_2 = Struct_2(vec3<i32>(1i, 27510i, -9473i), vec2<bool>(false, false), 39672i, vec3<f32>(167f, 142f, -1414f), vec3<i32>(19732i, 1i, i32(-2147483648)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec2_u32(countOneBits(~vec2<u32>(u_input.a, 61392u)), vec2<u32>(_wgslsmith_div_u32(u_input.c, 14146u), _wgslsmith_mult_u32(u_input.a, 5190u))), global1.d.x, ~_wgslsmith_mod_vec2_u32(~firstLeadingBit(vec2<u32>(u_input.a, 27624u)), vec2<u32>(~u_input.c, ~92244u)));
}

