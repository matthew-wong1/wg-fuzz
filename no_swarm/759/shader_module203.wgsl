struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3) -> vec2<i32> {
    var var_0 = -abs(u_input.d);
    var_0 = _wgslsmith_sub_i32(22103i, max((firstLeadingBit(1216i) << (arg_1.a % 32u)) << (7199u % 32u), ~(~15551i << (_wgslsmith_clamp_u32(4294967295u, arg_1.a, arg_1.a) % 32u))));
    var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.b.x, _wgslsmith_f_op_f32(floor(1151f)), _wgslsmith_f_op_f32(-567f * _wgslsmith_f_op_f32(ceil(817f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(316f)), arg_1.b.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-184f, -1000f, -971f, -926f))), vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(ceil(arg_1.c)), -646f))))));
    var_0 = -1i;
    return u_input.b.wx;
}

fn func_2(arg_0: vec2<u32>) -> vec3<f32> {
    var var_0 = -u_input.b.zw;
    let var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, min(-39424i, var_0.x), var_0.x, ~2147483647i), max(-_wgslsmith_add_vec4_i32(-u_input.b, select(vec4<i32>(20010i, u_input.d, -2147483647i, var_0.x), vec4<i32>(1i, -2147483647i, var_0.x, var_0.x), vec4<bool>(false, true, true, true))), firstTrailingBit(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(u_input.d, u_input.d, u_input.b.x, u_input.d)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, -39627i, var_0.x, -755i), u_input.b)))));
    var_0 = var_1.yx | (vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(func_3(vec4<bool>(true, false, false, true), Struct_3(73939u, vec3<f32>(-319f, 377f, -1723f), -1754f, vec3<f32>(-310f, -1000f, -1086f))), firstLeadingBit(u_input.b.wy)));
    var var_2 = max(_wgslsmith_dot_vec2_i32(var_1.yy, reverseBits(u_input.b.yx)) & _wgslsmith_dot_vec2_i32(var_1.zw, _wgslsmith_mod_vec2_i32(func_3(vec4<bool>(false, true, false, true), Struct_3(49133u, vec3<f32>(-939f, -187f, -218f), -865f, vec3<f32>(-945f, 185f, -665f))), u_input.b.zy)), 0i);
    var_0 = var_1.xy;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(438f, 1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -865f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -763f, -569f))))))));
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> Struct_3 {
    var var_0 = arg_1;
    var_0 = arg_1;
    var var_1 = ~(~reverseBits(_wgslsmith_div_vec2_u32(~vec2<u32>(83907u, arg_1.a), u_input.c)));
    var var_2 = _wgslsmith_f_op_f32(-var_0.c);
    var var_3 = u_input.b.yw | -vec2<i32>(-45963i, func_3(!vec4<bool>(arg_0, false, arg_0, true), arg_1).x);
    return arg_1;
}

fn func_1() -> i32 {
    let var_0 = u_input.a.x;
    let var_1 = func_4(false, Struct_3(51025u, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_2(vec2<u32>(6565u, 1u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(917f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1373f, -1000f, 176f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(631f, 507f, 576f)))))));
    let var_2 = vec2<bool>(var_1.a < ~_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.c.x, var_0), _wgslsmith_clamp_u32(var_0, u_input.c.x, u_input.a.x)), !(!all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true)))));
    let var_3 = _wgslsmith_sub_u32(u_input.c.x, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(30158u, 0u)), ~select(vec2<u32>(var_1.a, 0u), u_input.c, true)) >> (~(1u & ~u_input.a.x) % 32u));
    let var_4 = vec3<u32>(countOneBits(71822u), ~(~(~var_1.a)), ~var_1.a) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.yy, vec2<u32>(0u, u_input.a.x)), vec2<u32>(72439u, var_0)), u_input.c.x), u_input.a.xzx);
    return -20542i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(41835i, 1i << ((u_input.a.x << (45344u % 32u)) % 32u), func_1(), _wgslsmith_mod_i32(_wgslsmith_mod_i32(2147483647i, u_input.d), -u_input.b.x))), Struct_1(any(vec3<bool>(true, true, true)), _wgslsmith_mult_i32(u_input.d, abs(1i) >> (u_input.c.x % 32u)), vec2<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(step(152f, 734f))), _wgslsmith_f_op_f32(-1036f + _wgslsmith_f_op_f32(548f * 421f)))));
    var var_1 = _wgslsmith_mult_vec2_i32(var_0.a.zy, vec2<i32>(2147483647i, u_input.d) << (u_input.c % vec2<u32>(32u)));
    let var_2 = func_4(var_0.b.a, func_4(var_0.b.a, func_4(var_0.b.b <= var_0.b.b, func_4(false, func_4(true, Struct_3(1353u, vec3<f32>(-1000f, -700f, var_0.b.c.x), var_0.b.c.x, vec3<f32>(1000f, var_0.b.c.x, var_0.b.c.x)))))));
    var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(var_1.x, u_input.b.x), -_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.b.yz, vec2<i32>(var_0.a.x, -2147483647i)), u_input.b.zz)) << (u_input.c % vec2<u32>(32u));
    let var_3 = var_2;
    let var_4 = vec4<u32>(56594u, 0u, _wgslsmith_mult_u32(var_3.a, ~(~var_2.a)) & ~var_3.a, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~u_input.a ^ vec4<u32>(1u, 0u, 48017u, u_input.c.x), _wgslsmith_add_vec4_u32(u_input.a, u_input.a)), _wgslsmith_mult_u32(u_input.a.x, 23489u)));
    var_0 = Struct_2(u_input.b, var_0.b);
    let var_5 = _wgslsmith_div_f32(var_0.b.c.x, -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_add_i32(func_3(vec4<bool>(var_0.b.a, var_0.b.a, true, false), Struct_3(6402u, var_3.d, 1615f, vec3<f32>(var_0.b.c.x, -232f, -1001f))).x, _wgslsmith_mult_i32(var_0.a.x, -1i)), _wgslsmith_sub_i32(var_1.x, ~var_1.x), all(select(vec2<bool>(true, true), vec2<bool>(var_0.b.a, var_0.b.a), false))) | -firstTrailingBit(~u_input.b.x), var_0.a ^ vec4<i32>(var_1.x, firstTrailingBit(-2147483647i) ^ 71843i, 1i, u_input.d), select(vec3<i32>(-min(var_0.a.x, 10126i), i32(-1i) * -1i, 4888i), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(-1i, -2147483647i, u_input.d), ~vec3<i32>(var_1.x, var_1.x, var_1.x)), vec3<i32>(var_0.b.b, ~var_1.x, u_input.d)), vec3<bool>(var_0.b.c.x <= var_5, any(vec4<bool>(var_0.b.a, true, false, false)), false)), 1000f, (0u ^ ~u_input.c.x) | _wgslsmith_mult_u32(var_2.a, ~u_input.c.x));
}

