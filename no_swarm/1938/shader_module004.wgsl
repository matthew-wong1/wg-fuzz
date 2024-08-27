struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(select(-504f, _wgslsmith_div_f32(-484f, arg_1.x), (10869i != -_wgslsmith_clamp_i32(-14450i, 24427i, -31972i)) || all(vec4<bool>(true, true, true, true))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(arg_1.x * arg_0), 1247f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_1.x, arg_0)) - vec3<f32>(arg_0, arg_1.x, arg_0)))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1289f, arg_1.x, _wgslsmith_f_op_f32(ceil(arg_1.x)))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, -1208f, false))), var_0)) * -1339f);
    var var_3 = 1019f;
    let var_4 = vec4<bool>(all(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false))), any(vec3<bool>(true, true, true)), true, any(vec4<bool>(true, true, any(vec2<bool>(false, false)), true)) | any(vec3<bool>(all(vec2<bool>(false, false)), any(vec2<bool>(true, true)), select(true, true, false))));
    return select(abs(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(43064u, 0u, 1u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(0u, 0u, 74352u)), _wgslsmith_add_vec3_u32(vec3<u32>(46906u, 0u, 140690u), vec3<u32>(43734u, 37143u, 0u)))) << (~abs(~vec3<u32>(79840u, 0u, 13651u)) % vec3<u32>(32u)), ~(~vec3<u32>(1u, 4294967295u, 32043u) ^ vec3<u32>(1u, ~2918u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 38138u), vec2<u32>(4294967295u, 3345u)))), ~59691i >= ~_wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.a.x, 1i, u_input.a.x), vec3<i32>(u_input.a.x, 1i, -2147483647i), var_4.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) & vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)));
}

fn func_4(arg_0: Struct_4) -> vec2<f32> {
    var var_0 = arg_0.b.yw;
    var_0 = vec2<u32>(~1u, abs(_wgslsmith_clamp_u32(min(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.x, var_0.x, 13153u, var_0.x), vec4<u32>(61138u, 82192u, 4294967295u, 32303u)), max(var_0.x, 4294967295u)), 1u, var_0.x)));
    var var_1 = select(select(!vec2<bool>(true, all(vec4<bool>(true, true, false, true))), vec2<bool>(true, true), select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, false), vec2<bool>(true, true)), any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true)))), !select(vec2<bool>(arg_0.b.x != 26288u, arg_0.a.x != u_input.a.x), vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(false, false), vec2<bool>(false, true))), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, any(vec3<bool>(true, true, true))), vec2<bool>(true, true)), vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true))), (true & any(vec3<bool>(false, true, false))) & false));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1942f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f))))));
    let var_3 = 0u >> (arg_0.b.x % 32u);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -559f) - -711f), -1433f)));
}

fn func_2() -> vec3<f32> {
    let var_0 = 1043f;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_4(~vec3<i32>(-15298i, -39712i, 73811i) << (func_3(var_0, vec2<f32>(1000f, var_0)) % vec3<u32>(32u)), vec4<u32>(_wgslsmith_mod_u32(4294967295u, 4294967295u), _wgslsmith_mod_u32(0u, 47826u), ~4294967295u, 47290u >> (1u % 32u))))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(min(-645f, -206f)), var_0);
    var var_2 = ~(_wgslsmith_add_vec3_u32(vec3<u32>(firstLeadingBit(4294967295u), 1u, firstTrailingBit(1u)), reverseBits(~vec3<u32>(0u, 35853u, 55036u))) << (~(~vec3<u32>(4294967295u, 1u, 17098u)) % vec3<u32>(32u)));
    let var_3 = Struct_4(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(max(vec4<i32>(9818i, 2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(-13876i, u_input.a.x, 54804i, 2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -23276i, u_input.a.x, -76735i), vec4<i32>(u_input.a.x, u_input.a.x, 0i, 0i))), ~(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x) | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x), vec4<i32>(0i, -53055i, u_input.a.x, u_input.a.x)), -_wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), 1i), vec4<u32>(var_2.x, abs(_wgslsmith_add_u32(16745u, 0u)), ~var_2.x, _wgslsmith_div_u32(var_2.x, 27088u)) >> ((reverseBits(vec4<u32>(var_2.x, 4294967295u, 7924u, 1u)) << (~vec4<u32>(4294967295u, var_2.x, var_2.x, var_2.x) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-413f, -1000f, -3431f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1978f, 246f, var_1.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -661f, var_1.x) - vec3<f32>(521f, var_0, var_1.x)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 1000f, var_1.x) + vec3<f32>(423f, var_0, var_0)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1118f, var_1.x)) + vec3<f32>(-2254f, var_0, var_0))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(-1000f, -1000f), var_1.x, _wgslsmith_f_op_f32(sign(var_0))))))));
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: vec3<i32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2())) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -797f), -327f, _wgslsmith_div_f32(-169f, _wgslsmith_f_op_f32(f32(-1f) * -160f))) * vec3<f32>(1136f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-683f * 573f), _wgslsmith_f_op_vec3_f32(func_2()).x)), 1f)));
    return vec4<u32>(1u, countOneBits(select(firstLeadingBit(_wgslsmith_add_u32(61939u, 1u)), ~1u, !any(vec3<bool>(true, true, false)))), ~1u, ~84015u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(vec3<i32>(_wgslsmith_mod_i32(23110i, ~2147483647i), u_input.a.x, -1i), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(func_1(vec3<i32>(-2342i, -39385i, -2147483647i), -1i, vec3<i32>(13125i, u_input.a.x, -8871i)), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_add_u32(1u, ~1u)), 0u, ~(select(1u, 4294967295u, false) | ~4294967295u), func_1(countOneBits(vec3<i32>(2147483647i, 1i, 42066i)), 1i, _wgslsmith_div_vec3_i32(vec3<i32>(-7613i, 2147483647i, 1i), vec3<i32>(u_input.a.x, -10248i, 1i)) & vec3<i32>(u_input.a.x, u_input.a.x, 39142i)).x));
    var var_1 = u_input.a.x;
    var_1 = -1i;
    var_1 = firstTrailingBit(var_0.a.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.yx + var_2.yx)), ~(~vec4<i32>(reverseBits(35929i), _wgslsmith_mult_i32(7293i, -18431i), 17740i, 0i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - var_2.x));
}

