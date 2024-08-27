struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: vec4<i32>,
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

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: vec2<f32>, arg_3: u32) -> vec2<i32> {
    var var_0 = any(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), all(vec4<bool>(true, true, false, false))), !select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true)), true), !vec4<bool>(true, true, arg_0 < 58656u, false)));
    var var_1 = Struct_3(Struct_1(u_input.a, true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1045f))), false), -arg_1.x, arg_1, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), 1511f), 2080f, _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -388f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(min(-448f, arg_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * _wgslsmith_f_op_f32(arg_2.x + -419f)), -738f, _wgslsmith_div_f32(_wgslsmith_div_f32(301f, 311f), arg_2.x), arg_2.x)));
    var_1 = Struct_3(var_1.a, _wgslsmith_add_i32(~_wgslsmith_mult_i32(var_1.c.x ^ 41541i, _wgslsmith_add_i32(u_input.a, u_input.a)), _wgslsmith_add_i32(40332i, select(-var_1.b, _wgslsmith_sub_i32(-8522i, -1i), true))), vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(45431i, -u_input.a), arg_1.x, (0i >> (arg_3 % 32u)) ^ reverseBits(u_input.a)), abs(var_1.c.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.a.c.x, var_1.e.x, 920f, _wgslsmith_f_op_f32(sign(-373f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(732f, 1000f, -841f, -537f), vec4<f32>(1000f, -970f, -257f, var_1.e.x))) - var_1.e), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2003f, var_1.d.x, arg_2.x, arg_2.x)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e.x, var_1.d.x, 1007f, 1278f))), select(select(select(vec4<bool>(var_1.a.b, true, var_1.a.b, true), vec4<bool>(true, var_1.a.b, true, var_1.a.d), true), vec4<bool>(false, true, false, true), !vec4<bool>(false, var_1.a.b, false, true)), select(vec4<bool>(false, false, true, var_1.a.d), select(vec4<bool>(var_1.a.b, var_1.a.b, false, false), vec4<bool>(var_1.a.b, var_1.a.b, true, true), vec4<bool>(var_1.a.b, var_1.a.d, var_1.a.b, true)), any(vec2<bool>(var_1.a.b, var_1.a.d))), vec4<bool>(!var_1.a.d, var_1.a.d, true, true)))));
    let var_2 = abs(vec2<i32>(var_1.a.a, 1i) >> (max(_wgslsmith_clamp_vec2_u32(~vec2<u32>(arg_3, 55892u), ~vec2<u32>(arg_3, arg_3), reverseBits(vec2<u32>(arg_3, arg_0))), reverseBits(~vec2<u32>(0u, arg_0))) % vec2<u32>(32u)));
    var_1 = Struct_3(var_1.a, 38387i, arg_1, vec4<f32>(-1221f, -1292f, 557f, _wgslsmith_f_op_f32(min(-1453f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-988f, arg_2.x)))))), var_1.d);
    return vec2<i32>(u_input.a, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(var_2, abs(~var_1.c)), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c.x, 1i), vec2<i32>(0i, -2147483647i) ^ arg_1)), -var_2.x));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>) -> Struct_3 {
    var var_0 = _wgslsmith_mod_u32(arg_0, ~40132u);
    var var_1 = arg_0;
    var_0 = arg_0 >> (~0u % 32u);
    let var_2 = arg_1.x;
    var var_3 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, ~u_input.a), func_3((0u | arg_0) & (arg_0 << (arg_0 % 32u)), select(abs(vec2<i32>(u_input.a, u_input.a)), vec2<i32>(u_input.a, u_input.a) | vec2<i32>(u_input.a, u_input.a), 0u > arg_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.wy)), arg_0)), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.wxx) - vec3<f32>(_wgslsmith_f_op_f32(round(414f)), _wgslsmith_f_op_f32(-arg_1.x), var_2))), true);
    return Struct_3(Struct_1(0i, true, var_3.c, !(!var_3.d) || true), -2147483647i, max(vec2<i32>(u_input.a, select(min(var_3.a, u_input.a), u_input.a, true)), vec2<i32>(_wgslsmith_div_i32(20006i, u_input.a), u_input.a) | (~vec2<i32>(-8765i, -2147483647i) << (~vec2<u32>(arg_0, arg_0) % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1040f, -1000f, 602f, arg_1.x))))) * arg_1)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-var_3.c.x), var_3.c.x, _wgslsmith_f_op_f32(-var_3.c.x))), arg_1));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_2) -> Struct_1 {
    let var_0 = Struct_1(32222i | arg_2.a.a, any(!vec4<bool>(arg_1.a.b, true, true, arg_0)), vec3<f32>(_wgslsmith_div_f32(arg_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) - arg_1.a.c.x)), func_2(1u, _wgslsmith_f_op_vec4_f32(arg_1.e * _wgslsmith_f_op_vec4_f32(exp2(arg_1.e)))).d.x, _wgslsmith_f_op_f32(step(1502f, _wgslsmith_f_op_f32(max(-634f, 186f))))), false);
    var var_1 = vec3<bool>(arg_2.b.x, abs(firstLeadingBit(_wgslsmith_dot_vec2_i32(arg_1.c, arg_1.c))) < ~11246i, true);
    var var_2 = select(vec4<i32>(_wgslsmith_mult_i32(~1i, arg_2.a.a) >> (~108180u % 32u), -(14651i ^ var_0.a), var_0.a, _wgslsmith_dot_vec2_i32(-(vec2<i32>(1i, u_input.a) << (vec2<u32>(0u, 29036u) % vec2<u32>(32u))), arg_1.c)), ~(_wgslsmith_add_vec4_i32(~vec4<i32>(5989i, var_0.a, arg_1.a.a, arg_1.b), min(vec4<i32>(7607i, u_input.a, u_input.a, 1i), vec4<i32>(1i, -2147483647i, 20881i, arg_1.a.a))) << (firstLeadingBit(firstTrailingBit(vec4<u32>(89561u, 34176u, 107503u, 10928u))) % vec4<u32>(32u))), arg_1.a.d);
    var_2 = -_wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.a.a, -4667i, -(~(-27623i)), firstTrailingBit(u_input.a)), vec4<i32>(-20792i, arg_1.c.x, -1485i, 1i));
    return arg_2.a;
}

fn func_1(arg_0: vec2<u32>) -> bool {
    var var_0 = _wgslsmith_mult_vec3_u32(~vec3<u32>(arg_0.x, 4294967295u, min(arg_0.x, 1u)), ~(~vec3<u32>(~3945u, arg_0.x, ~arg_0.x)));
    let var_1 = Struct_3(func_4(!any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)), func_2(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.x, 0u), vec3<u32>(91754u, arg_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(223f, -676f, -677f, 190f), vec4<f32>(835f, -182f, 616f, 2530f))))), Struct_2(func_2(1u, _wgslsmith_f_op_vec4_f32(vec4<f32>(-519f, 650f, -1457f, 1000f) - vec4<f32>(656f, 1190f, 333f, 1139f))).a, vec3<bool>(all(vec3<bool>(true, false, true)), true, any(vec2<bool>(true, true))))), ~_wgslsmith_mod_i32(0i, u_input.a), ~_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 1i), vec2<i32>(u_input.a, 0i) & vec2<i32>(u_input.a, u_input.a)), vec2<i32>(~u_input.a, u_input.a << (var_0.x % 32u))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-675f + _wgslsmith_f_op_f32(815f + -252f)) + -247f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1109f), -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1171f)), 1253f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -149f), _wgslsmith_f_op_f32(-132f * _wgslsmith_f_op_f32(max(-973f, -1041f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(484f, 1300f)))), 675f));
    let var_2 = (~(2147483647i & -u_input.a) << (~24430u % 32u)) ^ 1i;
    let var_3 = _wgslsmith_div_u32(97339u, abs(reverseBits(var_0.x)) >> (_wgslsmith_mod_u32(var_0.x, ~(~0u)) % 32u));
    let var_4 = vec4<i32>(var_2, -1i, -_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, u_input.a) | vec3<i32>(u_input.a, -29644i, u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(1i, 18995i, var_1.a.a), vec3<i32>(var_1.c.x, var_2, u_input.a))), var_1.c.x), u_input.a);
    return func_2(reverseBits(~(~arg_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1671f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) + func_4(true, Struct_3(Struct_1(54241i, true, var_1.a.c, var_1.a.d), var_4.x, vec2<i32>(var_2, var_1.b), vec4<f32>(-1000f, var_1.e.x, var_1.d.x, var_1.e.x), vec4<f32>(var_1.d.x, -290f, -713f, var_1.e.x)), Struct_2(var_1.a, vec3<bool>(var_1.a.b, var_1.a.d, var_1.a.d))).c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.c.x) * 598f), var_1.a.c.x) * vec4<f32>(-1406f, _wgslsmith_f_op_f32(abs(var_1.d.x)), -258f, _wgslsmith_f_op_f32(abs(-1215f))))).a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(any(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), any(vec3<bool>(false, false, true))), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true))), true, !(!(!all(vec4<bool>(true, true, false, true)))), !any(vec4<bool>(true, all(vec2<bool>(true, false)), true, func_1(vec2<u32>(66339u, 4294967295u)))));
    var_0 = vec4<bool>(func_2(_wgslsmith_add_u32(1u, 1u), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1057f, -1260f, 1312f, -2469f))) - vec4<f32>(1278f, -352f, -599f, -548f))))).a.d, !any(!select(vec2<bool>(var_0.x, var_0.x), var_0.xy, vec2<bool>(true, false))), all(select(select(vec4<bool>(false, true, false, var_0.x), !vec4<bool>(false, false, var_0.x, var_0.x), !var_0.x), vec4<bool>(true, true, true, true || var_0.x), vec4<bool>(any(vec2<bool>(var_0.x, var_0.x)), var_0.x, true, var_0.x))), true);
    var_0 = !select(!(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(false, true, true, var_0.x))), !(!vec4<bool>(var_0.x, false, true, false)), !(!(!vec4<bool>(false, var_0.x, var_0.x, false))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(2213f, -686f)), -789f))));
    var_0 = select(select(select(select(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(true, false, true, true), vec4<bool>(var_0.x, false, false, true)), !vec4<bool>(false, false, var_0.x, false), select(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(true, true, true, true), vec4<bool>(var_0.x, true, false, var_0.x))), vec4<bool>(!var_0.x, var_0.x, all(vec3<bool>(var_0.x, false, var_0.x)), func_1(vec2<u32>(62053u, 75337u))), any(vec2<bool>(true, true))), select(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(true, var_0.x, var_0.x, var_0.x)), vec4<bool>(true, false, true, any(vec4<bool>(true, false, var_0.x, var_0.x))), all(select(vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(false, true, var_0.x, var_0.x), true))), select(vec4<bool>(var_0.x && false, all(var_0.xz), false, true), select(vec4<bool>(var_0.x, true, var_0.x, true), select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x)), vec4<bool>(true, false, var_0.x, var_0.x)), !(!var_0.x))), select(vec4<bool>(var_0.x, any(!vec3<bool>(var_0.x, false, true)), -693f <= _wgslsmith_f_op_f32(select(var_1.x, var_1.x, false)), !var_0.x), select(!select(vec4<bool>(false, false, false, var_0.x), vec4<bool>(var_0.x, true, true, false), var_0.x), vec4<bool>(true, true, true, true), !all(var_0.xy)), true), vec4<bool>(any(select(vec3<bool>(var_0.x, false, false), !vec3<bool>(var_0.x, false, false), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.wyy))), false, !(!var_0.x), !var_0.x));
    var_0 = select(vec4<bool>(var_0.x | var_0.x, any(select(select(vec2<bool>(var_0.x, var_0.x), var_0.xw, var_0.zz), select(var_0.xz, vec2<bool>(var_0.x, true), var_0.x), var_0.x)), ~(~54729u) > _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), max(vec4<u32>(27964u, 73571u, 1u, 43606u), vec4<u32>(0u, 0u, 22520u, 4294967295u))), var_0.x), vec4<bool>(all(!vec4<bool>(var_0.x, false, true, false)), true, !(var_1.x == _wgslsmith_f_op_f32(max(1488f, -691f))), var_0.x), !var_0.x && all(vec4<bool>(true, var_0.x, false, var_0.x)));
    let var_2 = Struct_3(Struct_1(i32(-1i) * -23829i, var_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-648f, var_1.x, -719f) * vec3<f32>(var_1.x, -2223f, -192f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 582f, 246f))))), var_0.x), _wgslsmith_sub_i32(-func_2(10404u << (1u % 32u), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 856f, var_1.x) * vec4<f32>(630f, var_1.x, -1247f, -1048f))).a.a, -(~u_input.a)), vec2<i32>(u_input.a, select(_wgslsmith_sub_i32(firstLeadingBit(u_input.a), u_input.a), firstLeadingBit(u_input.a), true)), vec4<f32>(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1693f + -874f) - _wgslsmith_f_op_f32(-var_1.x))), 2051f, -318f, var_1.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -786f, var_1.x, 2041f)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -850f, 1759f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(615f, -882f, var_1.x, var_1.x)))))));
    var var_3 = vec3<u32>(25386u, 1127u, max(1u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1441f, var_2.d.x), vec2<f32>(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(var_1.x - var_2.e.x)), var_2.a.d)), var_1, false)), var_2.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1790f), vec4<i32>(~(~(-1i << (var_3.x % 32u))), min(-u_input.a, u_input.a), 1i, countOneBits(_wgslsmith_add_i32(-8203i >> (var_3.x % 32u), -1i))));
}

