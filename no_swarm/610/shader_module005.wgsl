struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_1(~vec4<i32>(-29663i, _wgslsmith_div_i32(u_input.b.x, ~u_input.b.x), -u_input.b.x, 2699i));
    let var_1 = Struct_1(var_0.a);
    var_0 = Struct_1(countOneBits(_wgslsmith_div_vec4_i32(-vec4<i32>(41080i, 2147483647i, u_input.b.x, 2147483647i), select(var_0.a, var_0.a, vec4<bool>(false, false, false, true))) << (vec4<u32>(~u_input.a, _wgslsmith_div_u32(u_input.a, u_input.a), _wgslsmith_mod_u32(0u, 4294967295u), 1u) % vec4<u32>(32u))));
    let var_2 = var_1;
    var_0 = var_2;
    return ~(~(~(~(vec4<u32>(4294967295u, u_input.a, u_input.a, 77697u) >> (vec4<u32>(u_input.a, u_input.a, 0u, u_input.a) % vec4<u32>(32u))))));
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(abs(_wgslsmith_add_u32(u_input.a, 1310u)) & ~u_input.a, ~0u, _wgslsmith_mult_u32(u_input.a, 6740u), 1u), ~(~firstLeadingBit(func_3())));
    return ~u_input.b.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: bool) -> i32 {
    var var_0 = reverseBits(u_input.b.x);
    let var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, abs(u_input.b.x), 3761i >> (_wgslsmith_mult_u32(u_input.a, 63635u) % 32u), -u_input.b.x), reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 21053i, u_input.b.x), vec4<i32>(u_input.b.x, 1i, u_input.b.x, -2147483647i)) << (vec4<u32>(25808u, 48901u, 1u, u_input.a) % vec4<u32>(32u)))) | ~(-_wgslsmith_add_vec4_i32(vec4<i32>(47403i, -18158i, u_input.b.x, 2147483647i) << (vec4<u32>(0u, 26621u, u_input.a, u_input.a) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -17266i, -1812i, u_input.b.x), vec4<i32>(-13302i, -1i, u_input.b.x, -1i), vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, -20864i))));
    var_0 = _wgslsmith_add_i32(u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, _wgslsmith_mult_i32(0i, 0i)), ~var_1.wz));
    var_0 = -max(-2147483647i, func_2());
    let var_2 = -736f;
    return -2792i;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> i32 {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(904f, _wgslsmith_f_op_f32(trunc(389f)), _wgslsmith_f_op_f32(trunc(1493f)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~2147483647i), func_4(vec2<i32>(u_input.b.x & func_1(vec3<bool>(false, true, true), vec4<bool>(true, true, true, true), false), i32(-1i) * -15729i), Struct_1(_wgslsmith_clamp_vec4_i32(~vec4<i32>(13184i, -2147483647i, u_input.b.x, 1i), ~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), max(vec4<i32>(0i, 2147483647i, u_input.b.x, -11253i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))))), ~(~101027u));
}

