struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec4<i32>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(u_input.c, _wgslsmith_clamp_i32(u_input.b, max(min(_wgslsmith_mod_i32(45972i, -1i), max(-1i, u_input.d.x)), -(i32(-1i) * -2147483647i)), -19146i));
    var_0 = firstLeadingBit(_wgslsmith_mult_i32(u_input.b, ~(~(u_input.c << (42491u % 32u)))));
    var_0 = u_input.d.x;
    var_0 = u_input.c;
    var_0 = ~(_wgslsmith_div_i32(~5055i, 18588i >> (1u % 32u)) & -u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, -(~countOneBits(u_input.a)), _wgslsmith_dot_vec4_i32(abs(abs(vec4<i32>(-1i, -1i, 8390i, -61763i))), vec4<i32>(max(0i, -1i), u_input.b, u_input.a, abs(51505i))), -firstLeadingBit(abs(12149i))));
}

