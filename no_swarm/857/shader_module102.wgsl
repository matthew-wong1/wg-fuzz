struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<u32> {
    return ~vec2<u32>(63974u, ~firstLeadingBit(abs(0u)));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<u32>) -> vec4<u32> {
    let var_0 = arg_1;
    let var_1 = arg_0.zxx;
    var var_2 = Struct_2(vec4<bool>(!select(true, true, arg_0.x) || false, !(var_1.x || arg_0.x) || (true || all(arg_0.zwy)), var_1.x, arg_0.x), Struct_1(vec3<i32>(_wgslsmith_add_i32(u_input.b ^ u_input.a.x, ~40965i), u_input.b, _wgslsmith_mult_i32(0i, _wgslsmith_mult_i32(u_input.b, 0i)))), vec4<u32>(0u, 0u, ~(~_wgslsmith_dot_vec2_u32(var_0, arg_1)), 34269u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(333f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1357f, 839f) * -545f) + _wgslsmith_f_op_f32(abs(-333f)))));
    var var_3 = -(~var_2.b.a >> ((var_2.c.yxx | ~var_2.c.yyx) % vec3<u32>(32u))) & vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(34294i, 9966i, var_2.b.a.x) ^ _wgslsmith_div_vec3_i32(var_2.b.a, var_2.b.a), vec3<i32>(_wgslsmith_add_i32(-68293i, u_input.a.x), 1i >> (1u % 32u), 2467i)), u_input.b, _wgslsmith_div_i32(select(_wgslsmith_dot_vec2_i32(u_input.a, var_2.b.a.yz), _wgslsmith_div_i32(0i, var_2.b.a.x), -957f > var_2.d), var_2.b.a.x));
    var var_4 = ~_wgslsmith_mult_vec3_u32(~(~var_2.c.wxw), firstTrailingBit(min(vec3<u32>(4294967295u, var_0.x, 0u), vec3<u32>(var_0.x, 40108u, 4294967295u)))) ^ vec3<u32>(var_0.x, 25840u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(var_2.c.zz, arg_1), _wgslsmith_div_u32(~var_2.c.x, ~var_0.x), firstLeadingBit(1u)));
    return vec4<u32>(arg_1.x, firstLeadingBit(~1u), _wgslsmith_mult_u32(var_2.c.x ^ ~_wgslsmith_clamp_u32(var_0.x, arg_1.x, 1302u), ~select(~var_2.c.x, 79630u, true)), _wgslsmith_mod_u32(4294967295u, var_2.c.x));
}

fn func_2() -> u32 {
    var var_0 = Struct_2(vec4<bool>(true, true, true, true), Struct_1(_wgslsmith_div_vec3_i32(~max(vec3<i32>(-7595i, u_input.b, -1i), vec3<i32>(u_input.b, u_input.b, u_input.b)), vec3<i32>(u_input.a.x & 73418i, 228i, abs(2912i)))), func_4(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false))), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, false, true), all(vec3<bool>(false, true, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true))), max(func_3(Struct_1(vec3<i32>(0i, u_input.a.x, u_input.a.x)), Struct_1(vec3<i32>(u_input.b, u_input.a.x, 34963i))), vec2<u32>(reverseBits(1u), 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1861f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-876f - -618f), 560f, true)))));
    var_0 = Struct_2(var_0.a, Struct_1(vec3<i32>(1i, 1i, _wgslsmith_mult_i32(var_0.b.a.x, u_input.a.x ^ var_0.b.a.x))), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, _wgslsmith_div_u32(~50232u, select(var_0.c.x, var_0.c.x, false)), var_0.c.x, (var_0.c.x | var_0.c.x) >> (~4294967295u % 32u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(var_0.c << (vec4<u32>(var_0.c.x, var_0.c.x, var_0.c.x, 78355u) % vec4<u32>(32u)), var_0.c), var_0.c ^ abs(vec4<u32>(var_0.c.x, var_0.c.x, 26649u, var_0.c.x)), vec4<u32>(var_0.c.x, 1u, ~var_0.c.x, 0u))), _wgslsmith_f_op_f32(trunc(112f)));
    return 1u;
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: Struct_2) -> u32 {
    let var_0 = vec4<u32>(~func_2(), firstLeadingBit(0u), 56980u, arg_1.x);
    var var_1 = Struct_1(vec3<i32>(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 6095i, arg_3.b.a.x, 22539i) | vec4<i32>(-33525i, 4150i, -42798i, arg_3.b.a.x), vec4<i32>(u_input.b, arg_3.b.a.x, -2147483647i, arg_3.b.a.x))), ~u_input.a.x, ~(-2147483647i)));
    var_1 = arg_3.b;
    var var_2 = max(vec2<i32>(-1i) * -arg_3.b.a.zz, arg_3.b.a.yx);
    var var_3 = _wgslsmith_div_f32(arg_3.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-868f))));
    return ~(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(arg_3.c.zx, vec2<u32>(arg_1.x, 0u)), 1u, select(1u, 77073u, true)), vec3<u32>(arg_1.x, arg_0, arg_0 | arg_0)) << (arg_3.c.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~abs(vec3<u32>(_wgslsmith_div_u32(0u, 48959u), _wgslsmith_mult_u32(24901u, 49994u), func_1(0u, vec2<u32>(0u, 0u), vec2<f32>(432f, -406f), Struct_2(vec4<bool>(true, false, false, false), Struct_1(vec3<i32>(4915i, u_input.a.x, -14201i)), vec4<u32>(0u, 1u, 4294967295u, 4294967295u), -1474f)))));
    let var_1 = Struct_2(vec4<bool>(all(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false))), all(vec3<bool>(true, true, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-204f - 867f), -2032f) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1119f)))), true), Struct_1(-_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.b, u_input.a.x), vec3<i32>(7652i, 2147483647i, u_input.b)) >> (((vec3<u32>(11418u, var_0.x, 0u) >> (vec3<u32>(1u, var_0.x, 21862u) % vec3<u32>(32u))) ^ vec3<u32>(var_0.x, var_0.x, var_0.x)) % vec3<u32>(32u))), _wgslsmith_mod_vec4_u32(vec4<u32>(func_4(vec4<bool>(true, false, false, false), vec2<u32>(0u, var_0.x)).x, abs(4294967295u), firstTrailingBit(0u), ~var_0.x) >> (vec4<u32>(abs(var_0.x), 1u, var_0.x, ~var_0.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(~(vec4<u32>(var_0.x, 46971u, 7112u, 4294967295u) ^ vec4<u32>(var_0.x, 33909u, 13140u, var_0.x)), abs(vec4<u32>(4294967295u, 4294967295u, 1u, 1u) << (vec4<u32>(var_0.x, var_0.x, 1u, var_0.x) % vec4<u32>(32u))))), _wgslsmith_f_op_f32(-879f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-483f)))))));
    var_0 = ~var_1.c.xxy;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -164f);
    var var_3 = var_1;
    let var_4 = Struct_1(firstTrailingBit(vec3<i32>(var_3.b.a.x, 1i, -3567i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -331f)), var_3.b.a.yz, var_1.c.yz >> (((~var_1.c.zx | reverseBits(vec2<u32>(var_0.x, var_1.c.x))) ^ _wgslsmith_mult_vec2_u32(var_0.xx, var_3.c.yz)) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(808f, var_1.d, var_1.d) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d, -550f, var_3.d))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1778f, 1171f, var_1.d))))) - vec3<f32>(_wgslsmith_f_op_f32(var_1.d + _wgslsmith_f_op_f32(floor(var_3.d))), 464f, var_3.d)), _wgslsmith_f_op_f32(floor(var_3.d)));
}

