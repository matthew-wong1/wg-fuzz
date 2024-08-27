struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
    c: vec2<bool>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: bool) -> bool {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-1069f + 1174f)))))), vec4<i32>(-1i) * -vec4<i32>(41297i, -2147483647i, max(702i, 14849i), 0i), select(!vec2<bool>(false, -1526f >= arg_0.x), !vec2<bool>(arg_2, any(vec2<bool>(true, true))), vec2<bool>(arg_0.x >= -844f, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 36033i, 2147483647i, 19236i), vec4<i32>(1i, 3671i, 0i, 2147483647i)) >= ~(-13651i))), _wgslsmith_f_op_vec2_f32(-arg_0));
    let var_1 = !(!all(select(!vec3<bool>(arg_2, arg_2, true), vec3<bool>(true, true, false), vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x))));
    var var_2 = Struct_2(~u_input.b, Struct_1(countOneBits(~(4294967295u & u_input.a)), firstLeadingBit(vec3<u32>(u_input.b, 1u, ~1u)), u_input.b, var_0.c, var_0.c.x), Struct_1(_wgslsmith_dot_vec4_u32((vec4<u32>(14585u, u_input.a, 4294967295u, 60747u) | vec4<u32>(1u, u_input.a, 4362u, 24438u)) << (~vec4<u32>(55086u, u_input.a, 4294967295u, u_input.a) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, 35066u, u_input.b, u_input.a) & (vec4<u32>(u_input.a, u_input.a, u_input.b, 0u) & vec4<u32>(1u, 15856u, 4294967295u, u_input.b))), _wgslsmith_div_vec3_u32(vec3<u32>(~4294967295u, u_input.a, ~u_input.b), vec3<u32>(firstTrailingBit(u_input.a), 9521u << (u_input.b % 32u), _wgslsmith_div_u32(u_input.b, 0u))), 1u, !(!(!vec2<bool>(var_0.c.x, arg_2))), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(arg_1 - _wgslsmith_f_op_vec3_f32(vec3<f32>(1771f, -401f, -606f) * arg_1))))), Struct_1(31381u, abs(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 3829u, u_input.a, 5727u), vec4<u32>(u_input.a, 66490u, u_input.a, u_input.a)), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.b, 32021u)))), 4294967295u, select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), arg_2), !vec2<bool>(var_0.c.x, false), select(vec2<bool>(true, var_1), vec2<bool>(arg_2, var_0.c.x), vec2<bool>(arg_2, true))), !select(vec2<bool>(false, var_0.c.x), var_0.c, var_0.c), select(var_0.c, var_0.c, false)), (arg_1.x >= -577f) || !any(var_0.c)));
    let var_3 = _wgslsmith_mod_u32(28160u, var_2.e.c);
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.a, -1781f, var_0.d.x)), vec4<f32>(1000f, -373f, 627f, -609f)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d.x, var_2.d.x, var_2.d.x, var_2.d.x))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.x)), var_2.d.x, var_2.d.x, -1000f));
    return -1i == _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(var_0.b.zy, var_0.b.wx ^ (var_0.b.zx << (vec2<u32>(var_3, u_input.b) % vec2<u32>(32u)))), var_0.b.yy);
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_2(0u, Struct_1(firstLeadingBit(select(4294967295u, 1u, func_3(vec2<f32>(-1000f, 1000f), vec3<f32>(357f, 603f, -732f), false))), ~(~(vec3<u32>(49384u, 0u, 12650u) & vec3<u32>(u_input.b, u_input.a, u_input.b))), 10729u, select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(vec2<bool>(false, false), vec2<bool>(false, false), true)), any(vec3<bool>(false, true, true))), any(vec3<bool>(false, false, true)) && true), Struct_1(1u, vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(62367u, u_input.a, 1u), vec3<u32>(u_input.a, 0u, u_input.b)), firstTrailingBit(vec3<u32>(23899u, u_input.a, 0u))), _wgslsmith_add_u32(select(4294967295u, 0u, false), max(0u, u_input.a)), ~1u), _wgslsmith_add_u32(~0u, min(~u_input.b, u_input.b << (4294967295u % 32u))), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)))), vec3<f32>(_wgslsmith_f_op_f32(-950f * -1000f), _wgslsmith_f_op_f32(572f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -619f), _wgslsmith_f_op_f32(select(1000f, -1626f, true))))), -1052f), Struct_1(select(10832u, 0u, true), select(vec3<u32>(18290u, 7916u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 33475u))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 25464u, 4294967295u), vec3<u32>(2449u, u_input.b, 113720u), vec3<u32>(u_input.a, u_input.a, u_input.b)), vec3<bool>(true, true, true)), abs(select(~97469u, u_input.b, all(vec4<bool>(true, true, false, true)))), vec2<bool>(_wgslsmith_sub_u32(4294967295u, u_input.b) == ~u_input.b, select(true, any(vec2<bool>(false, true)), 0u > u_input.a)), true));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(sign(-1563f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, 716f) - _wgslsmith_f_op_vec2_f32(select(var_0.d.yz, vec2<f32>(var_0.d.x, var_0.d.x), true))), var_0.b.e))));
    var var_2 = !(var_0.b.d.x == var_0.c.e);
    var var_3 = Struct_4(var_0.d.x, ~vec4<i32>(1i, min(_wgslsmith_add_i32(-1i, 1i), abs(0i)), -20612i, i32(-1i) * -31590i), vec2<bool>(func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_1, vec2<f32>(var_0.d.x, var_0.d.x))) - var_1), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, 1251f) - vec3<f32>(-738f, 172f, -896f)), var_0.b.d.x), true), var_1);
    var var_4 = _wgslsmith_div_vec2_f32(var_3.d, var_1);
    return vec2<u32>(var_0.c.b.x, abs(abs(firstTrailingBit(16585u))));
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    var var_0 = func_2();
    var_0 = arg_0.zx;
    let var_1 = Struct_4(1f, ~vec4<i32>(_wgslsmith_add_i32(abs(-30487i), min(-10638i, -24575i)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, -2147483647i), vec3<i32>(2147483647i, 25708i, -6746i)), ~firstTrailingBit(-21355i), i32(-1i) * -2147483647i), !(!select(vec2<bool>(true, false), vec2<bool>(true, true), any(vec4<bool>(false, false, true, false)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-241f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-366f)))));
    var var_2 = -2147483647i;
    var var_3 = ~var_1.b.zx;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mult_i32(-62696i, 1i >> ((1u >> (~u_input.a % 32u)) % 32u));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1082f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-909f, _wgslsmith_f_op_f32(select(-518f, 212f, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<u32>(u_input.b, u_input.b, u_input.b, 20879u)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1494f, 187f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 320f, 738f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(397f, -1304f, 1101f) + vec3<f32>(-270f, 742f, 1672f)), vec3<bool>(true, true, true)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(444f, 621f, 1291f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(135f, -580f, 374f)))))));
    var var_2 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~(~u_input.b), _wgslsmith_clamp_u32(~0u, u_input.a, ~60023u), 1u), _wgslsmith_div_vec4_u32(~(vec4<u32>(0u, u_input.a, u_input.b, 4294967295u) >> (vec4<u32>(1u, 15164u, 1u, u_input.a) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), _wgslsmith_add_u32(0u, u_input.a), ~0u, ~4294967295u))), u_input.b);
    var var_3 = Struct_1(u_input.a << (~20920u % 32u), vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 8412u, 0u, 4294967295u), vec4<u32>(47165u, u_input.a, u_input.b, 24891u)), 0u, firstTrailingBit(~1u)), u_input.a, !select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), false), false);
    let var_4 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1179f * 1024f), 2022f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-select(51008i, ~(-2147483647i), false)), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(2998i, -52097i, -2147483647i, 2147483647i)), firstTrailingBit(countOneBits(vec4<i32>(40078i, -1i, 13193i, -1i)))), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -13218i, ~15822i, 1i), -vec4<i32>(-10501i, -16948i, -53342i, 0i), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(18351i, 0i), vec2<i32>(-52715i, -10041i)), 55339i, _wgslsmith_mult_i32(16277i, -45159i), ~1i))));
}

