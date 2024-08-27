struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: bool) -> vec2<i32> {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(9786i, -1i, -2147483647i), vec3<i32>(1i, -11588i, 1i), vec3<i32>(2147483647i, 11943i, -2147483647i)), -vec3<i32>(-33255i, -1i, 2147483647i)) & (min(vec3<i32>(-21047i, 2147483647i, 2147483647i), vec3<i32>(-15363i, -18726i, 55802i)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 25357u), vec3<u32>(u_input.a, 1u, 29434u)) % vec3<u32>(32u))), firstLeadingBit(vec3<i32>(~(-46838i), -47817i, -1i))), -3157i);
    var var_1 = -(~(0i & ~min(var_0, var_0)));
    var_1 = _wgslsmith_sub_i32(51820i, var_0 >> (u_input.a % 32u));
    var_1 = -_wgslsmith_mod_i32(var_0, -23279i);
    var var_2 = max(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(29837i, 2147483647i, 0i) ^ vec3<i32>(2147483647i, var_0, var_0)), (vec3<i32>(31216i, var_0, var_0) >> (vec3<u32>(u_input.a, 0u, u_input.a) % vec3<u32>(32u))) & -vec3<i32>(var_0, 1i, -1i), vec3<i32>(-var_0, _wgslsmith_add_i32(var_0, -23580i), var_0)), select(_wgslsmith_mod_vec3_i32(max(vec3<i32>(var_0, -2147483647i, var_0), vec3<i32>(43963i, var_0, 0i)), vec3<i32>(1i, -2147483647i, -1i)), ~(~vec3<i32>(var_0, 18487i, var_0)), true)), -_wgslsmith_mult_vec3_i32(-vec3<i32>(var_0, -2147483647i, 1i), abs(vec3<i32>(5546i, -23191i, var_0)) << (~vec3<u32>(u_input.a, 1u, 41731u) % vec3<u32>(32u))));
    return -vec2<i32>(i32(-1i) * -_wgslsmith_div_i32(1i, var_2.x), _wgslsmith_add_i32(reverseBits(var_0 ^ var_0), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, -2147483647i, var_0), vec3<i32>(var_2.x, -2469i, -2147483647i)), -var_2.x)));
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_sub_u32(u_input.a, 44122u), all(!vec3<bool>(select(false, false, true), false, any(vec2<bool>(false, true)))), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(-(~vec2<i32>(4126i, 2147483647i)), -vec2<i32>(1i, 1i), func_3(_wgslsmith_f_op_f32(2824f + arg_0), true)), select(_wgslsmith_add_vec2_i32(vec2<i32>(-35347i, -2522i), vec2<i32>(19365i, 1i)), vec2<i32>(-68025i, -5976i), true) & _wgslsmith_div_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-2147483647i, -39203i))));
    var_0 = Struct_2(~57779u, false, _wgslsmith_div_i32(-28428i, select(6514i, ~(-2147483647i), true)) ^ -17051i);
    var var_1 = select(!(!(!vec2<bool>(false, var_0.b))), select(select(!select(vec2<bool>(var_0.b, true), vec2<bool>(var_0.b, true), var_0.b), !select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(false, var_0.b), true), false), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(var_0.b, var_0.b), !vec2<bool>(var_0.b, true)), !select(vec2<bool>(false, var_0.b), vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, false)), true)), true);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(841f * -226f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(536f - arg_0)), arg_0, _wgslsmith_f_op_f32(min(201f, 1207f)) == _wgslsmith_f_op_f32(-1193f + arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-658f)) + arg_0))), arg_0, -922f);
    var_1 = !select(!select(select(vec2<bool>(false, var_1.x), vec2<bool>(true, false), vec2<bool>(var_0.b, var_0.b)), select(vec2<bool>(true, var_0.b), vec2<bool>(false, true), var_0.b), vec2<bool>(false, var_0.b)), vec2<bool>(false, false | !var_1.x), false);
    return Struct_1(var_2.zxx, select(vec2<bool>(var_0.b, _wgslsmith_f_op_f32(max(arg_0, -1118f)) != _wgslsmith_f_op_f32(var_2.x - var_2.x)), !select(select(vec2<bool>(var_0.b, false), vec2<bool>(var_1.x, var_0.b), var_1.x), select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(false, true), vec2<bool>(var_0.b, false)), any(vec2<bool>(true, true))), true));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(floor(arg_0.a.x));
    var_0 = -342f;
    let var_1 = Struct_2(19734u, true, func_3(_wgslsmith_f_op_f32(step(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))), true).x);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.x + -637f), _wgslsmith_f_op_f32(arg_1.x - arg_1.x))))));
    let var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(arg_1.x)), _wgslsmith_f_op_f32(134f * arg_1.x), any(!arg_0.b)))));
    return Struct_1(_wgslsmith_div_vec3_f32(arg_1.zzw, _wgslsmith_div_vec3_f32(var_2.a, _wgslsmith_div_vec3_f32(var_2.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_0.a.x, 422f))))), select(func_2(var_2.a.x).b, vec2<bool>(true, false), true));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = 847f;
    let var_1 = firstLeadingBit(_wgslsmith_sub_vec2_i32(~(reverseBits(vec2<i32>(-1i, arg_1.c)) & vec2<i32>(-2147483647i, 0i)), vec2<i32>(7555i, abs(_wgslsmith_div_i32(arg_1.c, -2147483647i)))));
    var var_2 = _wgslsmith_f_op_f32(ceil(240f));
    let var_3 = vec2<bool>(!arg_0.b.x, func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.x * 1392f), -647f)).a.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)));
    var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_0.a.x))));
    return Struct_2(~arg_2, !arg_0.b.x, arg_1.c);
}

fn func_1() -> vec2<bool> {
    let var_0 = vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, 1i), _wgslsmith_add_i32(_wgslsmith_div_i32(~9659i, i32(-1i) * -32857i), -(~1i))), _wgslsmith_mult_i32(1i, -firstLeadingBit(select(2147483647i, 1i, false))));
    let var_1 = any(select(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), false)), vec2<bool>(!any(vec3<bool>(true, true, true)), true), all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), false)))));
    var var_2 = func_5(func_4(func_2(-745f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(529f, -1431f, -167f, -1316f))) * vec4<f32>(-288f, -316f, 304f, 329f))), vec3<bool>(func_2(1493f).b.x, true, all(!vec3<bool>(var_1, var_1, var_1)))), Struct_2(_wgslsmith_mult_u32(~40256u & ~u_input.a, select(countOneBits(u_input.a), u_input.a, 47755u != u_input.a)), true, _wgslsmith_mod_i32(18671i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(var_0.x, 20792i), var_0.x))), u_input.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(step(633f, -2072f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 330f, -1099f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 1804f, 2088f, -766f), vec4<f32>(507f, 704f, -974f, 1368f)) + vec4<f32>(1486f, -802f, 223f, 768f))), var_1 & var_1)));
    var var_3 = func_4(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(907f, 825f, -1193f) - vec3<f32>(-1000f, -1000f, 1000f)))), vec2<bool>(true, var_1)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, 1f, 1f, 1f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-223f, -1545f, 1000f, -442f), vec4<f32>(-1788f, 1537f, 158f, -478f))) * vec4<f32>(-1077f, 269f, 1078f, 537f))), !vec3<bool>(!var_2.b, var_2.b || var_1, true)), vec4<f32>(func_4(Struct_1(vec3<f32>(-1739f, 1000f, -874f), !vec2<bool>(true, var_1)), _wgslsmith_f_op_vec4_f32(vec4<f32>(248f, 465f, -1000f, 1557f) * vec4<f32>(-858f, 1035f, -326f, -103f)), select(vec3<bool>(true, false, var_1), select(vec3<bool>(var_1, var_2.b, var_2.b), vec3<bool>(true, true, true), var_1), vec3<bool>(true, false, true))).a.x, _wgslsmith_f_op_f32(-183f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1301f, -2320f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1505f * -562f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-124f, 491f, var_2.b)))) - _wgslsmith_f_op_f32(238f * _wgslsmith_div_f32(-897f, -1393f)))), select(vec3<bool>(!all(vec4<bool>(true, true, var_1, var_2.b)), all(vec3<bool>(false, var_1, false)) && true, true), select(select(select(vec3<bool>(var_2.b, false, var_2.b), vec3<bool>(var_1, var_2.b, true), vec3<bool>(false, var_1, true)), !vec3<bool>(var_2.b, true, var_2.b), select(vec3<bool>(var_1, var_2.b, false), vec3<bool>(var_2.b, var_1, false), false)), select(vec3<bool>(true, true, var_2.b), !vec3<bool>(var_1, false, false), !vec3<bool>(false, var_2.b, false)), vec3<bool>(var_1 & false, var_2.b && var_1, true)), vec3<bool>(!var_2.b, !(!var_1), false && !var_2.b)));
    var_2 = func_5(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(floor(var_3.a.x)), _wgslsmith_f_op_f32(-var_3.a.x), var_3.a.x), func_2(_wgslsmith_f_op_f32(round(-1038f))).b), Struct_2(~_wgslsmith_mult_u32(83636u, min(u_input.a, 4294967295u)), false && func_2(_wgslsmith_f_op_f32(var_3.a.x - var_3.a.x)).b.x, ~(var_2.c << (var_2.a % 32u)) ^ -1i), _wgslsmith_mult_u32(~var_2.a, u_input.a & var_2.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, 1000f, 414f, var_3.a.x)) + vec4<f32>(var_3.a.x, -752f, var_3.a.x, var_3.a.x))));
    return !(!(!var_3.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(330f, 353f, 1999f), vec3<f32>(-1195f, 1250f, -732f)))))), !select(vec2<bool>(u_input.a < u_input.a, u_input.a != 42302u), select(func_1(), vec2<bool>(true, true), func_2(1612f).b), func_5(func_4(Struct_1(vec3<f32>(-787f, 108f, 1159f), vec2<bool>(true, true)), vec4<f32>(-148f, -401f, -340f, 1002f), vec3<bool>(true, true, false)), Struct_2(u_input.a, false, 1i), 88333u, vec4<f32>(102f, -167f, 181f, 766f)).b));
    let var_1 = 1i;
    let var_2 = all(!var_0.b);
    let var_3 = Struct_2(_wgslsmith_mult_u32(u_input.a, 1u), var_0.b.x, func_3(_wgslsmith_div_f32(func_2(152f).a.x, -444f), !all(func_4(Struct_1(var_0.a, var_0.b), vec4<f32>(-610f, -1126f, 158f, 869f), vec3<bool>(true, true, var_2)).b)).x);
    let var_4 = all(func_4(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a), var_0.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-179f, var_0.a.x, -1145f, var_0.a.x)), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, var_0.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1260f, var_0.a.x, var_0.a.x, 105f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1567f, 395f, var_0.a.x, var_0.a.x), vec4<f32>(var_0.a.x, var_0.a.x, -494f, -292f), false))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2122f, var_0.a.x, -2351f, -1023f) - vec4<f32>(-767f, var_0.a.x, -1018f, var_0.a.x))))), !(!vec3<bool>(var_0.b.x, false, var_2))).b);
    var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-243f, var_0.a.x, u_input.a > _wgslsmith_dot_vec2_u32(vec2<u32>(34814u, 48149u), vec2<u32>(var_3.a, 39953u))))));
    var_0 = func_4(Struct_1(vec3<f32>(func_2(_wgslsmith_f_op_f32(var_0.a.x + -371f)).a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a.x + 973f), var_0.a.x)), -358f), var_0.b), vec4<f32>(427f, _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(max(var_0.a.x, 1847f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.x, _wgslsmith_f_op_f32(exp2(var_0.a.x)))))), select(select(!vec3<bool>(true, var_2, true), select(select(vec3<bool>(false, var_4, true), vec3<bool>(true, var_2, var_2), vec3<bool>(var_3.b, var_4, var_4)), select(vec3<bool>(var_3.b, true, false), vec3<bool>(false, var_2, true), var_0.b.x), false), false), select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), !(!vec3<bool>(var_3.b, var_3.b, true)), true), false));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a.x))) + -1794f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(335f, var_0.a.x, var_0.a.x, var_0.a.x), vec4<f32>(var_0.a.x, -1737f, -973f, var_0.a.x)))), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.x, 1391f, var_0.a.x, var_0.a.x), vec4<f32>(1617f, 1000f, var_0.a.x, var_0.a.x))))));
}

