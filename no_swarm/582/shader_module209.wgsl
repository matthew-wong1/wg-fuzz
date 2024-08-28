struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 8>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: u32) -> i32 {
    global0 = array<vec3<f32>, 8>();
    return _wgslsmith_sub_i32(_wgslsmith_add_i32(~abs(u_input.a), ~u_input.a) << (abs(55475u) % 32u), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 66897i, 2147483647i, 1i), abs(vec4<i32>(arg_0, -1i, -31281i, u_input.a))) ^ u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(func_1(~_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.a, u_input.a), _wgslsmith_clamp_i32(u_input.a, u_input.a, -34615i)), Struct_2(~vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(1u, 1u, select(21796u, 81729u, false), _wgslsmith_dot_vec2_u32(vec2<u32>(17074u, 60352u), vec2<u32>(4294967295u, 16247u))), 4294967295u), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(4219u, 1u), min(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 0u)), vec2<u32>(1u, 4294967295u)) ^ abs(vec2<u32>(46753u, 1u)), ~vec2<u32>(1u, ~9099u)), vec4<u32>(~abs(4294967295u), _wgslsmith_add_u32(52218u << (0u % 32u), ~59758u), _wgslsmith_mod_u32(4916u, 33813u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 67665u, 10464u), vec3<u32>(0u, 63572u, 64060u))) << (max(select(~vec4<u32>(16876u, 37509u, 1u, 1u), vec4<u32>(3302u, 6701u, 1u, 63851u), any(vec3<bool>(false, false, true))), vec4<u32>(~34839u, ~0u, 1u, ~68650u)) % vec4<u32>(32u)), ~1u, -13490i);
}

