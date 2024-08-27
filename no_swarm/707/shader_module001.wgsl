struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<bool>,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<f32, 19> = array<f32, 19>(635f, -304f, 216f, 738f, 1482f, 1453f, 1516f, -661f, 958f, -221f, -1598f, 891f, -109f, 1000f, 1000f, 970f, -435f, -589f, 937f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<u32>(select(_wgslsmith_div_u32(u_input.a, 2051u), 4294967295u, true), _wgslsmith_mult_u32(~1u, select(49323u, u_input.a, global0.x)), _wgslsmith_add_u32(_wgslsmith_mult_u32(0u, u_input.a), _wgslsmith_add_u32(1u, 11787u)), ~14770u), vec4<u32>(u_input.a, 1u, 0u, ~u_input.a)), _wgslsmith_sub_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(4024i, 0i, -26693i) ^ vec3<i32>(-2147483647i, u_input.c, 4292i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, u_input.c, -1i), vec3<i32>(-29322i, -2147483647i, u_input.b.x))), vec3<i32>(u_input.c << (26086u % 32u), -u_input.c ^ u_input.b.x, ~firstTrailingBit(-2147483647i))), _wgslsmith_sub_i32(~(~(-2147483647i)) << (~(u_input.a >> (u_input.a % 32u)) % 32u), countOneBits(2147483647i & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 0i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.c, u_input.c, -1i, 2147483647i)))));
}

