struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9> = array<f32, 9>(-200f, -1016f, -1397f, 1516f, 1220f, 411f, -1336f, -272f, 199f);

var<private> global1: u32;

var<private> global2: array<vec2<i32>, 12>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec4_u32(firstLeadingBit((u_input.d << (u_input.d % vec4<u32>(32u))) >> (~vec4<u32>(u_input.d.x, 33168u, u_input.d.x, u_input.d.x) % vec4<u32>(32u))) & ~vec4<u32>(~1u, select(u_input.d.x, 1u, true), u_input.d.x, 5757u), ~vec4<u32>(~1u, countOneBits(abs(u_input.d.x)), u_input.d.x, u_input.d.x >> (0u % 32u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d.x, 46990u), 9u)], global0[_wgslsmith_index_u32(var_0, 9u)])));
    global1 = u_input.d.x;
    let var_2 = Struct_1(var_1.x);
    global1 = 0u;
    let var_3 = -u_input.a.x ^ select(-(~(-u_input.c)), u_input.b >> ((u_input.d.x ^ ~var_0) % 32u), false);
    var var_4 = var_2;
    var var_5 = abs(var_3) == ~(i32(-1i) * -var_3);
    let x = u_input.a;
    s_output = StorageBuffer(~var_3);
}

