struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1931f;
    var var_1 = ~u_input.a << (reverseBits(abs(_wgslsmith_add_u32(~1u, ~u_input.a))) % 32u);
    var var_2 = _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a ^ u_input.a, ~0u), ~(vec3<u32>(u_input.a, 4294967295u, u_input.a) >> (vec3<u32>(33113u, u_input.a, u_input.a) % vec3<u32>(32u)))), ~1u | max(u_input.a, u_input.a), _wgslsmith_clamp_u32(1u, u_input.a & (u_input.a & 20797u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, u_input.a, u_input.a)), abs(vec3<u32>(4186u, 0u, u_input.a))))), ~vec3<u32>(~u_input.a | u_input.a, u_input.a, 4294967295u));
    let var_3 = ~(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(29472u, var_2.x, 1u), vec3<u32>(var_2.x, 0u, 3848u)))) ^ vec3<u32>(4294967295u, ~(~var_2.x), ~var_2.x);
    let var_4 = 1u;
    var_1 = var_2.x;
    var_2 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<u32>(47035u, 1886u)), max(abs(-_wgslsmith_mod_vec3_i32(vec3<i32>(-18402i, -12237i, -15291i), vec3<i32>(-2147483647i, -42654i, -2147483647i))), reverseBits(_wgslsmith_div_vec3_i32(-vec3<i32>(2147483647i, -38349i, 0i), ~vec3<i32>(34494i, 18781i, 1i)))));
}

