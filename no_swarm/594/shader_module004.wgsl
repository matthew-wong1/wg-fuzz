struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool) -> Struct_2 {
    return Struct_2(arg_0, Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1148f, -2081f), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1314f, 1000f), vec2<f32>(-599f, 354f)) - vec2<f32>(-898f, -706f)))), -vec2<i32>(22622i, 1i), false, true), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.d.x, _wgslsmith_add_i32(-1i, -2147483647i), _wgslsmith_div_i32(-2147483647i, u_input.a.x)), vec3<i32>(arg_0.x, ~21740i, 0i)), -2147483647i));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    var var_0 = -u_input.b;
    let var_1 = vec3<u32>(~u_input.c, ~arg_0, firstTrailingBit(_wgslsmith_mod_u32(88194u, abs(1u))));
    var_0 = firstLeadingBit(-1i);
    var_0 = i32(-1i) * -6136i;
    let var_2 = vec3<f32>(1632f, _wgslsmith_f_op_f32(arg_2.a.x - 760f), _wgslsmith_f_op_f32(-arg_2.a.x));
    return u_input.d.x;
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = arg_0;
    let var_1 = 56643u;
    let var_2 = ~vec4<u32>(4294967295u, u_input.c, abs(u_input.c), firstTrailingBit(0u));
    var var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)), var_0.a.x)), -299f), vec2<i32>(var_0.b.x, 1i) | vec2<i32>(firstLeadingBit(-3896i), u_input.a.x), true, var_2.x <= u_input.c);
    let var_4 = countOneBits(vec3<u32>(~(~var_1) | _wgslsmith_mod_u32(reverseBits(var_2.x), var_2.x), 30742u, ~(~var_2.x)));
    return vec3<u32>(44178u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.c, var_2.x, var_4.x), var_2.wwx) & vec3<u32>(var_4.x, var_2.x, var_2.x), ~var_2.zzx), u_input.c >> (var_4.x % 32u)), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(~u_input.a.x);
    var_0 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(func_2(55100u, func_1(firstLeadingBit(vec2<i32>(u_input.d.x, u_input.a.x)), any(vec3<bool>(true, false, false))), Struct_1(vec2<f32>(639f, -911f), u_input.a, true, true)), u_input.b, -18999i & _wgslsmith_div_i32(u_input.b, 29314i)), u_input.b);
    var_0 = -1i;
    var var_1 = func_1(u_input.a, !(true | all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)))));
    var_0 = _wgslsmith_add_i32(-1i, 11306i);
    var var_2 = !vec3<bool>(!var_1.b.d, var_1.b.c, true);
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(vec3<u32>(4294967295u, 46519u, u_input.c)) << (~vec3<u32>(4294967295u, 20174u, 0u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(max(vec3<u32>(u_input.c, u_input.c, 36569u), vec3<u32>(1u, u_input.c, 4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.c, 44063u), vec3<u32>(3227u, u_input.c, 51449u))), vec3<bool>(any(vec3<bool>(true, var_2.x, false)), var_2.x, false)) ^ ((~vec3<u32>(70998u, 0u, 31121u) | _wgslsmith_mult_vec3_u32(vec3<u32>(46772u, 0u, 18995u), vec3<u32>(u_input.c, 1u, 11140u))) << (func_3(var_1.b) % vec3<u32>(32u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.b.a.x, -282f, var_1.b.a.x, var_1.b.a.x))), vec4<f32>(var_1.b.a.x, var_1.b.a.x, 729f, var_1.b.a.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(2036f, 502f, _wgslsmith_f_op_f32(f32(-1f) * -612f), _wgslsmith_div_f32(-221f, 1000f)) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 470f, -1000f, var_1.b.a.x) * vec4<f32>(-1000f, -2515f, 716f, var_1.b.a.x)))))), -1i, min(min(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(4294967295u, 0u)) | firstLeadingBit(vec2<u32>(u_input.c, 0u)), ~_wgslsmith_add_vec2_u32(vec2<u32>(23575u, 16473u), vec2<u32>(1752u, 14994u))), ~vec2<u32>(reverseBits(u_input.c), ~u_input.c)), reverseBits(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 4294967295u, 22507u) & vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, 23351u, u_input.c))));
}

