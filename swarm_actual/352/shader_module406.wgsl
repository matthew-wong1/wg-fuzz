struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_2,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(40250u, Struct_1(-51940i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -820f), arg_0.x)) - -2328f);
    global0 = arg_2.c;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.xxy * _wgslsmith_f_op_vec3_f32(step(arg_1.zww, vec3<f32>(arg_2.d, -672f, 1405f)))) + _wgslsmith_f_op_vec3_f32(sign(arg_0.xzz))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -110f), 1f, _wgslsmith_f_op_f32(510f + _wgslsmith_f_op_f32(var_0 * arg_0.x)))));
    var var_2 = Struct_2(_wgslsmith_clamp_u32(global0.a, 1u, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(global0.a, 4294967295u, global0.a)), arg_2.b)), arg_2.c.b);
    var_1 = arg_1.xzy;
    return Struct_2(1u, global0.b);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> vec3<i32> {
    global0 = Struct_2(~reverseBits(~(~arg_2.a)), func_2(vec4<f32>(_wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(round(1739f)))), arg_1, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_1, -1000f)), _wgslsmith_f_op_f32(round(-355f)))), 1230f), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, _wgslsmith_div_f32(arg_1, -1307f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 2060f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(871f, arg_1, arg_1, -483f))), Struct_3(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 828f, arg_1, arg_1) * vec4<f32>(533f, arg_1, 1893f, arg_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, 603f)), Struct_3(Struct_1(arg_2.b.a), vec3<u32>(0u, 38257u, u_input.a), arg_2, -527f, true)).b, ~vec3<u32>(4294967295u, 56489u, 1u) >> (firstLeadingBit(vec3<u32>(global0.a, 0u, 1u)) % vec3<u32>(32u)), func_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1, -1577f, -1080f, 1000f))), vec4<f32>(-678f, -169f, arg_1, -1197f), Struct_3(arg_2.b, vec3<u32>(arg_2.a, u_input.a, u_input.a), arg_2, arg_1, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-763f - arg_1) + _wgslsmith_f_op_f32(-arg_1)), false)).b);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1134f))));
    let var_1 = min(vec2<u32>(1u, abs(global0.a)), _wgslsmith_sub_vec2_u32(~(~vec2<u32>(arg_2.a, 0u)), select(_wgslsmith_mult_vec2_u32(vec2<u32>(11745u, 104600u), vec2<u32>(0u, u_input.a)), ~vec2<u32>(arg_2.a, arg_2.a), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))))) ^ ~vec2<u32>(arg_2.a, _wgslsmith_mod_u32(~4294967295u, ~0u));
    var var_2 = Struct_2(_wgslsmith_sub_u32(_wgslsmith_div_u32(arg_2.a, u_input.a), _wgslsmith_div_u32(_wgslsmith_div_u32(~arg_2.a, var_1.x), ~1u)), Struct_1(2147483647i));
    var_0 = -254f;
    return vec3<i32>(abs(~57264i >> (func_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(732f, arg_1, arg_1, arg_1))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1, 904f, 2297f, 465f))), Struct_3(arg_2.b, vec3<u32>(var_2.a, arg_2.a, 1u), Struct_2(27255u, Struct_1(var_2.b.a)), arg_1, false)).a % 32u)), ~(-abs(26172i)) >> (abs(~(global0.a ^ var_2.a)) % 32u), -65918i);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: vec4<bool>) -> Struct_2 {
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(ceil(1525f)), _wgslsmith_f_op_f32(arg_2 - arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, arg_2, arg_2, arg_2))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, 610f, -1258f) + vec4<f32>(arg_2, arg_2, -749f, -1000f)), vec4<f32>(arg_2, 1498f, arg_2, arg_2), arg_3.x)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_2)), -996f))), _wgslsmith_f_op_f32(299f - 554f), arg_2, arg_2), Struct_3(func_2(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_2)), _wgslsmith_f_op_f32(min(arg_2, -299f)), arg_2, 688f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, 509f, arg_2, -1016f), _wgslsmith_f_op_vec4_f32(vec4<f32>(384f, arg_2, arg_2, arg_2) + vec4<f32>(arg_2, arg_2, -864f, arg_2)))), Struct_3(func_2(vec4<f32>(963f, 222f, arg_2, 2113f), vec4<f32>(arg_2, arg_2, arg_2, arg_2), Struct_3(Struct_1(66224i), vec3<u32>(1u, u_input.a, 0u), Struct_2(24438u, Struct_1(arg_1.a)), -1425f, arg_3.x)).b, vec3<u32>(u_input.a, 41436u, global0.a) ^ vec3<u32>(4294967295u, global0.a, global0.a), Struct_2(0u, Struct_1(9873i)), arg_2, true)).b, _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(4294967295u, 1u, u_input.a) | vec3<u32>(731u, global0.a, global0.a)), vec3<u32>(39780u, 48771u, 38778u) & _wgslsmith_sub_vec3_u32(vec3<u32>(14724u, global0.a, u_input.a), vec3<u32>(40797u, global0.a, 1u))), Struct_2(_wgslsmith_mod_u32(13391u, 1u), arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2)) + arg_2), _wgslsmith_mod_i32(1i, -global0.b.a) != 46943i));
    let var_1 = arg_3;
    global0 = func_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-993f * _wgslsmith_div_f32(595f, 569f)) * arg_2), _wgslsmith_f_op_f32(exp2(arg_2)), 1023f, 1f), vec4<f32>(1f, 1f, 1f, 1f), Struct_3(arg_1, select(select(vec3<u32>(global0.a, u_input.a, u_input.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(9283u, 4294967295u, global0.a), vec3<u32>(27897u, 5684u, u_input.a), vec3<u32>(1u, var_0.a, 21654u)), vec3<bool>(false, arg_3.x, false)), vec3<u32>(firstLeadingBit(14139u), 1u, u_input.a >> (4294967295u % 32u)), vec3<bool>(!var_1.x, false, true)), Struct_2(var_0.a, arg_1), 1239f, any(!(!arg_3))));
    global0 = var_0;
    global0 = Struct_2(countOneBits(abs(~global0.a)), var_0.b);
    return var_0;
}

fn func_1(arg_0: Struct_1) -> f32 {
    global0 = func_4(countOneBits(_wgslsmith_dot_vec3_i32(func_3(arg_0.a, -2293f, func_2(vec4<f32>(-404f, 1783f, 557f, -1221f), vec4<f32>(-442f, -1435f, -693f, -207f), Struct_3(global0.b, vec3<u32>(global0.a, u_input.a, u_input.a), Struct_2(u_input.a, global0.b), 488f, false))), ~vec3<i32>(u_input.b, 0i, -5023i) | -vec3<i32>(13157i, u_input.b, -24568i))), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1091f * -302f)), vec4<bool>(any(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), false)), true, true && select(false, true, true), true));
    let var_0 = ~abs(69698u);
    let var_1 = ~_wgslsmith_sub_vec2_u32(~min(~vec2<u32>(23426u, var_0), ~vec2<u32>(u_input.a, global0.a)), vec2<u32>(1u, _wgslsmith_mult_u32(4294967295u, u_input.a)));
    global0 = Struct_2(_wgslsmith_mod_u32(0u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.x, global0.a, u_input.a), vec3<u32>(102242u, var_0, var_1.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, global0.a, var_0), vec3<u32>(global0.a, 1u, 0u))), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.a, u_input.a, var_1.x), vec3<u32>(u_input.a, 52485u, var_0), vec3<u32>(4294967295u, var_1.x, var_1.x))))), func_4(1i, func_4(i32(-1i) * -2147483647i, Struct_1(u_input.b), -330f, select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false)), any(vec4<bool>(true, true, true, true)))).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(143f, -1050f, false))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1295f)), -468f)), !vec4<bool>(true, all(vec3<bool>(true, true, true)), true, true)).b);
    let var_2 = min(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(57495u, _wgslsmith_dot_vec2_u32(var_1, vec2<u32>(58192u, var_1.x)), var_0), u_input.a, countOneBits(var_0 >> (3164u % 32u))), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-252f, -1000f, -342f, -1100f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-812f, -1626f, 317f, -1539f), vec4<f32>(779f, 267f, 1010f, -680f), true))), Struct_3(func_2(vec4<f32>(413f, -124f, 611f, -132f), vec4<f32>(-1000f, -839f, 138f, -666f), Struct_3(arg_0, vec3<u32>(u_input.a, u_input.a, u_input.a), Struct_2(global0.a, Struct_1(u_input.b)), -130f, false)).b, vec3<u32>(global0.a, 0u, var_1.x), func_2(vec4<f32>(1000f, -1475f, -1000f, -1802f), vec4<f32>(721f, 401f, -458f, -579f), Struct_3(Struct_1(arg_0.a), vec3<u32>(4294967295u, var_0, var_0), Struct_2(0u, Struct_1(arg_0.a)), -866f, true)), _wgslsmith_f_op_f32(round(2589f)), true)).a, ~u_input.a), min(vec3<u32>(select(~var_1.x, 135079u, true), 40208u, 3257u), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(24196u, var_0), _wgslsmith_sub_u32(var_0, 4294967295u)), ~11903u, min(0u, u_input.a))));
    return _wgslsmith_f_op_f32(trunc(-112f));
}

fn func_5(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> Struct_2 {
    var var_0 = !select(select(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), vec3<bool>(u_input.b == 26618i, true, true), !all(vec3<bool>(true, false, false))), vec3<bool>(select(select(false, false, false), true, true), true, u_input.a >= abs(1u)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    var var_1 = _wgslsmith_add_i32(~(-(select(arg_1, global0.b.a, false) ^ ~64961i)), arg_2.a >> (~max(64689u, ~4294967295u) % 32u));
    var var_2 = arg_1;
    var var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(arg_3, arg_3, _wgslsmith_f_op_f32(func_1(Struct_1(0i))), _wgslsmith_f_op_f32(-1447f + 1257f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0) + arg_0));
    var_0 = !select(select(!(!vec3<bool>(false, false, var_0.x)), select(!vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, false, false), false), !(!vec3<bool>(true, var_0.x, var_0.x))), !vec3<bool>(var_0.x, true, true), vec3<bool>(select(false, false, var_0.x) & true, var_0.x, _wgslsmith_mult_u32(53664u, 0u) > (u_input.a >> (1u % 32u))));
    return func_2(arg_0, arg_0, Struct_3(Struct_1(-2147483647i), vec3<u32>(_wgslsmith_div_u32(44273u, 10423u), u_input.a, ~4294967295u) | _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 8513u, global0.a), vec3<u32>(0u, global0.a, 20079u)), Struct_2(~u_input.a << (_wgslsmith_add_u32(u_input.a, global0.a) % 32u), Struct_1(arg_2.a)), 994f, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-245f * -757f))), -1586f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global0.b))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -339f) + _wgslsmith_f_op_f32(-807f - -357f)), _wgslsmith_f_op_f32(select(-1139f, _wgslsmith_f_op_f32(min(740f, -1000f)), true))))), 12607i, global0.b, 1248f);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1221f)) * -1549f)) <= 1648f;
    global0 = func_2(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(673f, -1000f, false)), _wgslsmith_f_op_f32(f32(-1f) * -589f))))), _wgslsmith_f_op_f32(f32(-1f) * -1900f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(989f, -661f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-932f, -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-606f - -820f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(688f * 472f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(826f, 974f)) - _wgslsmith_f_op_f32(f32(-1f) * -142f)), _wgslsmith_f_op_f32(-790f + _wgslsmith_f_op_f32(sign(-1000f))))), Struct_3(var_0.b, _wgslsmith_mult_vec3_u32(~vec3<u32>(12167u, u_input.a, global0.a), ~select(vec3<u32>(u_input.a, 24481u, 1460u), vec3<u32>(0u, 1u, 0u), vec3<bool>(false, true, true))), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -951f, -1000f, -930f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(644f, -1407f, -1198f, -321f))), Struct_3(Struct_1(var_0.b.a), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 49520u, var_0.a), vec3<u32>(global0.a, u_input.a, 4294967295u)), func_2(vec4<f32>(803f, 141f, -1506f, -845f), vec4<f32>(-133f, -768f, -612f, 805f), Struct_3(Struct_1(var_0.b.a), vec3<u32>(var_0.a, var_0.a, var_0.a), var_0, -1390f, false)), _wgslsmith_f_op_f32(func_1(global0.b)), false)), -407f, true));
    var_1 = all(!vec4<bool>(any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), false)), true && all(vec3<bool>(false, true, false)), (u_input.a < u_input.a) & false, false));
    var var_2 = !vec2<bool>(select(false, false, true), true);
    let var_3 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(~var_0.b.a, 21398i) & 0i, -42870i);
    global0 = Struct_2(~(~max(global0.a, global0.a) | _wgslsmith_add_u32(u_input.a, var_0.a)), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1491f, 542f, -618f, -672f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1871f, -1000f, -1287f, 474f) + vec4<f32>(3226f, -1163f, -474f, 730f))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-916f, 2678f, -195f, 1808f) + vec4<f32>(1226f, 345f, 1000f, 714f))))), vec4<f32>(1159f, -608f, _wgslsmith_f_op_f32(func_1(global0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -772f) + -1488f)), Struct_3(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-261f, -1000f, 1157f, -1185f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-648f, -2119f, 236f, 137f)), Struct_3(global0.b, vec3<u32>(1u, u_input.a, 61024u), Struct_2(0u, Struct_1(var_3)), 144f, var_2.x)).b, vec3<u32>(global0.a, u_input.a >> (var_0.a % 32u), func_2(vec4<f32>(1612f, 158f, -1513f, -2247f), vec4<f32>(1525f, 873f, -1358f, 796f), Struct_3(global0.b, vec3<u32>(u_input.a, 1u, 4294967295u), var_0, 1609f, var_2.x)).a), func_4(-2147483647i, var_0.b, _wgslsmith_f_op_f32(floor(1139f)), !vec4<bool>(true, var_2.x, var_2.x, false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(988f, 282f)), 237f), false)).b);
    var var_4 = !vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(246f))) >= 1556f, any(select(!vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(false, var_2.x, true), select(vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(true, true, var_2.x), vec3<bool>(true, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f))) * _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-160f))))), vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, global0.b.a), func_3(global0.b.a, 183f, Struct_2(38252u, global0.b)).xz)), abs(-var_3), 1i));
}

