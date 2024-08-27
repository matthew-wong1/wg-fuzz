struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: u32,
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

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(abs(_wgslsmith_dot_vec4_u32(u_input.d, _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 1u, 52634u, u_input.c.x), vec4<u32>(u_input.e, u_input.d.x, u_input.c.x, u_input.b.x), u_input.d)) ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 0u, u_input.c.x, 4294967295u), vec4<u32>(15083u, 59229u, u_input.e, 0u))), u_input.c.x, 4619u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.c.zxz, vec3<u32>(u_input.c.x, u_input.b.x, 70547u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, u_input.e, 10422u), vec3<u32>(u_input.e, 0u, 5629u))) & vec3<u32>(_wgslsmith_mod_u32(2802u, u_input.c.x), u_input.b.x, abs(u_input.d.x)), ~((u_input.c.xwy ^ u_input.c.wzy) | countOneBits(u_input.d.ywz))));
    var_0 = u_input.d;
    let var_1 = true;
    let var_2 = -vec3<i32>(~24699i, -_wgslsmith_div_i32(~(-26959i), select(-1i, -2147483647i, var_1)), -(~1i));
    var_0 = vec4<u32>(min(9362u, u_input.d.x), u_input.d.x, var_0.x, _wgslsmith_div_u32(u_input.a, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(90210u, u_input.c.x), var_0.wx)));
    var_0 = vec4<u32>(14920u | (~u_input.a >> (50990u % 32u)), ~4294967295u, var_0.x, abs(firstLeadingBit(1u)));
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

