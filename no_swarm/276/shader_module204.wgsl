struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
    b: u32,
    c: vec4<f32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: bool) -> Struct_3 {
    return Struct_3(-_wgslsmith_sub_i32(u_input.c, _wgslsmith_div_i32(-1i, i32(-1i) * -2147483647i)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_3) -> vec4<u32> {
    let var_0 = vec4<i32>(_wgslsmith_add_i32(countOneBits(arg_0.a | ~arg_2.a), max(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a, u_input.a) ^ vec3<i32>(u_input.c, u_input.c, u_input.a), u_input.b >> (vec3<u32>(arg_1.x, arg_1.x, arg_1.x) % vec3<u32>(32u))), func_2(vec2<bool>(false, true), any(vec2<bool>(true, false)), true).a)), arg_2.a, -countOneBits((0i ^ u_input.a) >> (min(arg_1.x, arg_1.x) % 32u)), -2147483647i);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-861f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(845f)) - _wgslsmith_f_op_f32(f32(-1f) * -594f))))), -837f, _wgslsmith_f_op_f32(trunc(-1080f)));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.x, var_1.x))), -457f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-1470f * -1689f), _wgslsmith_f_op_f32(ceil(var_1.x)), -1218f)))));
    return ~(~(~(~(~vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 20868u)))));
}

fn func_4(arg_0: vec4<u32>) -> bool {
    let var_0 = Struct_2(arg_0.xy, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-854f, 538f, 1684f), vec3<f32>(883f, -927f, 320f))) * vec3<f32>(-2208f, 1924f, -1092f)) + vec3<f32>(1f, 1f, 1f)), vec3<u32>(abs(arg_0.x), arg_0.x, 1u)));
    let var_1 = vec4<f32>(var_0.b.a.x, 684f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-153f)) + var_0.b.a.x) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.b.a.x + -323f), var_0.b.a.x)))));
    let var_2 = func_2(select(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), !select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, false), true), true), select(vec2<bool>(any(vec3<bool>(true, true, true)), true), vec2<bool>(any(vec4<bool>(false, true, true, false)), select(true, false, true)), vec2<bool>(true, true))), any(vec4<bool>(true, all(vec4<bool>(false, false, true, false)), select(true, var_0.b.b.x <= var_0.b.b.x, true), all(vec2<bool>(false, false)))), false);
    var var_3 = ~_wgslsmith_clamp_u32(select(47934u, ~var_0.b.b.x, countOneBits(var_0.a.x) < 1u), var_0.a.x ^ ~1u, ~var_0.b.b.x);
    var_3 = _wgslsmith_mult_u32(abs(func_3(var_2, _wgslsmith_div_vec2_u32(vec2<u32>(55349u, var_0.a.x), arg_0.wx), Struct_3(reverseBits(1i))).x), _wgslsmith_div_u32(4294967295u, ~(~(arg_0.x >> (23187u % 32u)))));
    return !(~3798u != var_0.a.x);
}

fn func_1() -> vec3<u32> {
    var var_0 = select(!(!vec3<bool>(select(false, false, false), true, true)), vec3<bool>(!any(vec3<bool>(true, true, true)), true, func_4(func_3(Struct_3(-2147483647i), ~vec2<u32>(77980u, 46753u), func_2(vec2<bool>(true, true), true, true)))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), true, true)));
    var_0 = vec3<bool>(!all(!select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(false, false, var_0.x, true))), false | (~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 1u), vec3<u32>(0u, 57574u, 4294967295u)) >= max(abs(0u), ~10569u)), (var_0.x & false) && !(!var_0.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1246f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2291f), _wgslsmith_f_op_f32(844f * -107f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -114f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1342f)), _wgslsmith_f_op_f32(-401f + 854f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1631f + -309f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1529f) - _wgslsmith_div_f32(-1584f, -1191f))), 352f) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -431f), _wgslsmith_f_op_f32(select(1017f, 852f, true)), _wgslsmith_f_op_f32(1200f + -790f), _wgslsmith_f_op_f32(f32(-1f) * -737f))))));
    var var_2 = -_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b, -vec3<i32>(1i, 48665i, u_input.b.x)), _wgslsmith_mult_vec3_i32(~u_input.b >> (vec3<u32>(1u, 49885u, 33216u) % vec3<u32>(32u)), firstLeadingBit(max(vec3<i32>(u_input.b.x, u_input.c, u_input.c), vec3<i32>(12460i, u_input.c, u_input.c)))));
    var_0 = select(select(!(!select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, true), vec3<bool>(true, true, var_0.x))), select(select(vec3<bool>(var_0.x, var_0.x, false), !vec3<bool>(var_0.x, true, var_0.x), var_0.x & true), select(vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, true, var_0.x), var_0.x), select(vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, var_0.x, var_0.x))), !select(vec3<bool>(var_0.x, false, false), vec3<bool>(true, var_0.x, true), true)), !select(!vec3<bool>(var_0.x, true, var_0.x), !vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, true, true))), select(select(vec3<bool>(var_0.x, var_0.x, var_0.x | var_0.x), select(vec3<bool>(true, true, true), select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, false, false)), !var_0.x), var_0.x), select(!(!vec3<bool>(var_0.x, false, true)), !vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, !var_0.x, true)), func_4(vec4<u32>(1u, 1u, 1u, 1u))), select(vec3<bool>(true, false, _wgslsmith_sub_i32(1i, u_input.b.x) >= -u_input.b.x), vec3<bool>(true, var_0.x, !(!var_0.x)), var_0.x));
    return ~(vec3<u32>(~select(0u, 0u, var_0.x), 4294967295u, ~(~16134u)) >> (firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u))) % vec3<u32>(32u)));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3) -> Struct_3 {
    var var_0 = 0i;
    var var_1 = _wgslsmith_f_op_vec2_f32(-arg_0.d.a.xz);
    var_1 = vec2<f32>(-1423f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_1.x)))));
    let var_2 = Struct_2(~arg_0.b.b.yx, arg_0.d);
    var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_2.b.a.yz, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_2.b.a.xx * var_2.b.a.yx))))), _wgslsmith_f_op_vec2_f32(-arg_0.b.a.zx)), vec2<f32>(-650f, _wgslsmith_f_op_f32(f32(-1f) * -563f))));
    return func_2(!(!vec2<bool>(var_2.b.b.x <= arg_0.d.b.x, arg_0.c | arg_0.c)), arg_0.c, arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_5(Struct_4(Struct_3(_wgslsmith_mult_i32(u_input.c, u_input.b.x)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-353f, -1267f, 1000f)), func_1()), false, Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(385f, 1000f, -722f), vec3<f32>(-168f, 762f, -1070f))), vec3<u32>(1u, 1u, 1u))), Struct_3(-select(-35936i, 1i, false))), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1671f, -1000f, 1000f) + vec3<f32>(1209f, -981f, -772f))))), ~(~select(vec3<u32>(3687u, 18642u, 462u), vec3<u32>(0u, 4294967295u, 75392u), vec3<bool>(false, false, true)))), !all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, false), true)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-715f, -127f, 540f) * vec3<f32>(-1466f, 1535f, 264f)))), ~vec3<u32>(~1u, ~7142u, 57657u)));
    var_0 = Struct_4(var_0.a, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1474f), -299f, _wgslsmith_f_op_f32(ceil(-395f)))), ~(~(~var_0.b.b))), true, var_0.b);
    var var_1 = _wgslsmith_sub_i32(func_2(vec2<bool>(any(vec3<bool>(var_0.c, false, false)), true), !(!var_0.c), -435f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.a.x) - _wgslsmith_f_op_f32(exp2(var_0.b.a.x)))).a, -abs(_wgslsmith_div_i32(var_0.a.a, var_0.a.a)));
    var var_2 = vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(5082i, u_input.b.x) >> (vec2<u32>(43898u, var_0.d.b.x) % vec2<u32>(32u)), -u_input.b.xz) >> (~(~var_0.b.b.x) % 32u), max(~var_0.a.a, u_input.a), _wgslsmith_mod_i32(firstLeadingBit(u_input.c), ~reverseBits(u_input.a)) << (min(abs(var_0.b.b.x), _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_0.d.b.x, var_0.b.b.x, 7640u, 1u), vec4<u32>(34441u, 10392u, var_0.b.b.x, 92327u), true), vec4<u32>(1063u, var_0.b.b.x, 11089u, 12819u))) % 32u));
    var var_3 = Struct_2(abs(var_0.d.b.zy), var_0.d);
    var_3 = Struct_2(func_3(var_0.a, var_0.d.b.yy, Struct_3(var_2.x)).xw, var_0.b);
    let var_4 = !vec4<bool>(all(vec3<bool>(all(vec2<bool>(var_0.c, var_0.c)), any(vec3<bool>(false, var_0.c, var_0.c)), true)), any(vec3<bool>(all(vec3<bool>(var_0.c, var_0.c, true)), var_0.c, any(vec2<bool>(var_0.c, var_0.c)))), true, var_0.c);
    var var_5 = vec4<i32>(u_input.c, -1i, i32(-1i) * -2147483647i, abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(0i, 1i, 18331i, var_2.x), vec4<i32>(0i, 21417i, -42160i, -15217i))) >> (~0u % 32u));
    let var_6 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_6.b, vec3<u32>(0u, 4294967295u, 1u)), var_0.b.b.x) & 1u, 4294967295u));
}

