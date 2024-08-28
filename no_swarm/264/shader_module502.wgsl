struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: bool,
    d: bool,
    e: f32,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 18>;

var<private> global1: array<vec3<u32>, 2>;

var<private> global2: array<vec4<i32>, 20>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec3<f32>) -> u32 {
    var var_0 = ~(1u >> (1u % 32u));
    global0 = array<vec3<f32>, 18>();
    var var_1 = ~1u;
    let var_2 = -524f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x + arg_3.x));
    var var_3 = _wgslsmith_mult_vec3_i32(max(-vec3<i32>(u_input.a.x, -22736i, 12411i) >> (countOneBits(_wgslsmith_mod_vec3_u32(global1[_wgslsmith_index_u32(23951u, 2u)], vec3<u32>(0u, 15317u, 702u))) % vec3<u32>(32u)), ~_wgslsmith_mod_vec3_i32(-u_input.a.wzz, u_input.a.ywx)), select(u_input.a.zwz, ~(~(~u_input.a.wxx)), true));
    return 1u;
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec3<i32>) -> vec3<f32> {
    global0 = array<vec3<f32>, 18>();
    global1 = array<vec3<u32>, 2>();
    let var_0 = 1u < countOneBits(_wgslsmith_dot_vec3_u32(select(vec3<u32>(28270u, 34722u, 34143u), global1[_wgslsmith_index_u32(60637u, 2u)], vec3<bool>(true, true, false)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(15532u, 42116u), 2u)]) & ~(~41227u));
    global0 = array<vec3<f32>, 18>();
    var var_1 = max(countOneBits(~(31267u << (1u % 32u))), 1u);
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(1u, 1u))), abs(~firstTrailingBit(vec2<u32>(2953u, 34102u)))), 18u)];
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: f32, arg_3: Struct_5) -> Struct_4 {
    var var_0 = 764f;
    var var_1 = Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1536f, 1429f, arg_2)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_3.c.x, 718f, 2094f, arg_2), vec4<f32>(1568f, arg_0, -199f, arg_3.c.x)), vec4<bool>(true, true, true, true))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -731f, arg_3.b, 413f))))), Struct_1(-u_input.a.x), Struct_1(17215i), Struct_1(-18383i)), arg_2, false, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_3.c.x, arg_3.c.x, arg_3.c.x, arg_2), vec4<f32>(arg_2, arg_2, 1000f, 1343f))), Struct_1(-14415i), Struct_1(-57100i), Struct_1(u_input.a.x)), vec3<i32>(u_input.a.x, u_input.a.x | u_input.a.x, u_input.a.x), ~u_input.a.wxw)).x + -279f));
    var_1 = Struct_4(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1485f * arg_0)), var_1.c, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec3<bool>(false, false, true)), true), !var_1.c)), _wgslsmith_f_op_f32(ceil(-140f)));
    var var_2 = Struct_1(var_1.a.c.a);
    let var_3 = var_1.a;
    return Struct_4(var_1.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-820f)))))), var_1.c, _wgslsmith_f_op_f32(-var_1.b) != 641f, 1000f);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4, arg_2: u32, arg_3: f32) -> Struct_2 {
    var var_0 = func_4(_wgslsmith_f_op_f32(select(arg_0.b, arg_0.a.a.x, any(vec2<bool>(arg_1.c, false)) && true)), 66679u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-572f)) - _wgslsmith_f_op_f32(abs(arg_3))), Struct_5(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3, 1698f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1494f, 601f, 1466f) + vec3<f32>(arg_0.a.a.x, arg_3, -578f)))))).e;
    var var_1 = select(!(!select(select(vec2<bool>(arg_1.c, arg_0.c), vec2<bool>(false, true), vec2<bool>(true, arg_1.c)), vec2<bool>(true, true), any(vec3<bool>(arg_0.d, true, arg_0.c)))), select(select(vec2<bool>(!arg_1.d, true), select(select(vec2<bool>(arg_0.d, arg_0.c), vec2<bool>(arg_0.c, arg_1.d), vec2<bool>(false, arg_1.c)), !vec2<bool>(arg_0.c, true), vec2<bool>(true, false)), vec2<bool>(arg_0.c, true)), vec2<bool>(true, true), select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, arg_1.c)), vec2<bool>(true, any(vec4<bool>(arg_1.d, arg_1.c, arg_0.d, true))), select(!vec2<bool>(arg_1.d, true), select(vec2<bool>(true, arg_0.c), vec2<bool>(true, arg_0.d), vec2<bool>(false, arg_1.c)), vec2<bool>(true, arg_1.d)))), select(select(vec2<bool>(true, true), vec2<bool>(true, true || arg_0.d), !(arg_1.d | arg_1.c)), vec2<bool>(select(true, arg_0.d || false, true), !arg_1.d), select(vec2<bool>(arg_0.a.c.a >= arg_1.a.c.a, arg_1.d | true), vec2<bool>(true || arg_1.d, arg_0.d), true)));
    var var_2 = Struct_3(func_4(-1884f, func_2(!select(vec4<bool>(arg_1.c, true, true, arg_1.c), vec4<bool>(true, false, arg_1.c, arg_1.d), arg_0.d), vec2<bool>(!arg_0.d, arg_1.d), Struct_1(abs(arg_1.a.d.a)), _wgslsmith_f_op_vec3_f32(arg_1.a.a.xyy - _wgslsmith_f_op_vec3_f32(vec3<f32>(-369f, arg_1.e, arg_1.b) + vec3<f32>(500f, arg_0.a.a.x, 1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -2668f), Struct_5(select(19576u, 20583u, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1479f - arg_3)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.a.x, 1000f, 597f)))).a.a);
    global2 = array<vec4<i32>, 20>();
    var var_3 = arg_2 << (reverseBits(~_wgslsmith_add_u32(0u, arg_2) & ~(~arg_2)) % 32u);
    return Struct_2(vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.e, _wgslsmith_f_op_f32(-arg_0.a.a.x))) * _wgslsmith_f_op_f32(-arg_3)), -700f, func_4(_wgslsmith_f_op_f32(-arg_1.b), ~min(4294967295u, arg_2), _wgslsmith_f_op_f32(-1751f - -406f), Struct_5(~27826u, _wgslsmith_div_f32(-853f, -252f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-167f, -1204f, var_2.a.x), vec3<f32>(arg_3, -287f, 1000f))))).e), Struct_1(_wgslsmith_sub_i32(max(~arg_0.a.d.a, -32051i), i32(-1i) * -1i)), func_4(_wgslsmith_f_op_f32(arg_3 * 2599f), 62433u, -964f, Struct_5(~(~arg_2), _wgslsmith_f_op_f32(1855f + func_4(-336f, arg_2, arg_0.e, Struct_5(arg_2, arg_0.a.a.x, global0[_wgslsmith_index_u32(arg_2, 18u)])).b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.a.zxz) * arg_1.a.a.xzz))).a.c, Struct_1(_wgslsmith_dot_vec2_i32(u_input.a.xx, reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, arg_1.a.b.a), vec2<i32>(arg_1.a.d.a, -11319i))))));
}

fn func_1() -> bool {
    var var_0 = vec2<bool>(false, !all(vec3<bool>(all(vec2<bool>(false, false)), true, 69558i < u_input.a.x)));
    global1 = array<vec3<u32>, 2>();
    let var_1 = func_5(func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(882f * _wgslsmith_f_op_f32(1536f + 1000f)))), 1u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(782f - -572f)))), Struct_5(~func_2(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec2<bool>(false, var_0.x), Struct_1(-2147483647i), global0[_wgslsmith_index_u32(1u, 18u)]), _wgslsmith_f_op_f32(1000f * -748f), _wgslsmith_f_op_vec3_f32(func_3(Struct_2(vec4<f32>(1412f, -2023f, -1389f, 2217f), Struct_1(u_input.a.x), Struct_1(28795i), Struct_1(0i)), vec3<i32>(21241i, 13228i, u_input.a.x), u_input.a.wzy)))), func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -358f) * 226f))), 0u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(vec4<f32>(-999f, 303f, -1018f, 317f), Struct_1(-15768i), Struct_1(u_input.a.x), Struct_1(18605i)), _wgslsmith_add_vec3_i32(vec3<i32>(1i, -46365i, u_input.a.x), vec3<i32>(u_input.a.x, -65695i, -22324i)), u_input.a.yxx)).x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1993f + 129f), _wgslsmith_f_op_f32(sign(1084f))))), Struct_5(~(~65586u), -978f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(5809u, 5206u, 1u, 4294967295u), vec4<u32>(0u, 0u, 30965u, 4294967295u)) | 1u, 18u)])), ~firstLeadingBit(1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-535f * -911f))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(select(var_1.a, var_1.a, vec4<bool>(_wgslsmith_f_op_f32(select(-792f, -756f, var_0.x)) > _wgslsmith_f_op_f32(round(var_1.a.x)), true, var_0.x, var_0.x))), var_1.b, Struct_1(-29811i), func_5(Struct_4(Struct_2(var_1.a, func_4(-1264f, 52668u, var_1.a.x, Struct_5(11928u, var_1.a.x, vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x))).a.b, func_5(Struct_4(Struct_2(var_1.a, Struct_1(3592i), Struct_1(2147483647i), Struct_1(103675i)), var_1.a.x, var_0.x, var_0.x, var_1.a.x), Struct_4(var_1, var_1.a.x, var_0.x, false, var_1.a.x), 28170u, 1086f).d, Struct_1(10511i)), _wgslsmith_f_op_f32(sign(var_1.a.x)), false, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - var_1.a.x) + -312f)), func_4(func_5(func_4(-1259f, 66115u, var_1.a.x, Struct_5(70510u, -253f, vec3<f32>(var_1.a.x, -2068f, -281f))), func_4(-377f, 0u, -1031f, Struct_5(18218u, -115f, global0[_wgslsmith_index_u32(61670u, 18u)])), 1u, _wgslsmith_f_op_f32(-var_1.a.x)).a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(0u, 1u)), var_1.a.x, Struct_5(abs(4294967295u), _wgslsmith_f_op_f32(min(1071f, var_1.a.x)), global0[_wgslsmith_index_u32(min(0u, 1u), 18u)])), ~70208u, -1579f).c);
    var var_3 = _wgslsmith_f_op_vec3_f32(func_3(Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(var_2.a)))), func_5(func_4(1000f, firstLeadingBit(8024u), 1356f, Struct_5(1u, 105f, vec3<f32>(797f, var_2.a.x, var_2.a.x))), Struct_4(Struct_2(var_1.a, Struct_1(-2147483647i), Struct_1(u_input.a.x), Struct_1(var_1.b.a)), _wgslsmith_div_f32(var_2.a.x, var_1.a.x), var_0.x, true, -172f), 1u, -1018f).c, func_5(Struct_4(func_4(-157f, 0u, var_2.a.x, Struct_5(39272u, 1574f, var_2.a.zzw)).a, _wgslsmith_f_op_f32(-var_1.a.x), all(vec3<bool>(false, true, true)), true, _wgslsmith_f_op_f32(-var_2.a.x)), func_4(_wgslsmith_f_op_f32(-var_1.a.x), ~54783u, 1200f, Struct_5(0u, var_2.a.x, vec3<f32>(-264f, 1000f, -332f))), ~abs(4294967295u), _wgslsmith_f_op_f32(1574f * 713f)).c, Struct_1(_wgslsmith_add_i32(var_2.b.a | -1i, u_input.a.x & var_1.b.a))), -vec3<i32>(var_1.b.a ^ -2147483647i, func_5(func_4(var_2.a.x, 0u, var_1.a.x, Struct_5(4294967295u, var_1.a.x, vec3<f32>(var_2.a.x, -480f, var_2.a.x))), func_4(748f, 11638u, var_1.a.x, Struct_5(0u, -465f, vec3<f32>(var_1.a.x, -135f, var_2.a.x))), 4294967295u, func_4(var_1.a.x, 0u, var_1.a.x, Struct_5(43904u, var_2.a.x, vec3<f32>(var_2.a.x, var_2.a.x, var_1.a.x))).b).b.a, ~(~u_input.a.x)), vec3<i32>(u_input.a.x, u_input.a.x, ~_wgslsmith_mod_i32(0i, u_input.a.x)))).x;
    return any(vec3<bool>(!var_0.x, true, !(_wgslsmith_mod_i32(-3510i, u_input.a.x) >= ~(-2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 18>();
    let var_0 = !((true || (func_1() & true)) || ((-u_input.a.x | ~u_input.a.x) == 20521i));
    global1 = array<vec3<u32>, 2>();
    let var_1 = u_input.a;
    let var_2 = Struct_5(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_4(-911f, 0u, -1000f, Struct_5(0u, -1036f, global0[_wgslsmith_index_u32(70147u, 18u)])).a.a.x) + -529f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1329f, _wgslsmith_f_op_f32(f32(-1f) * -1168f), 1f), vec3<f32>(-683f, _wgslsmith_f_op_vec3_f32(func_3(Struct_2(vec4<f32>(537f, 1027f, -1121f, 2676f), Struct_1(var_1.x), Struct_1(u_input.a.x), Struct_1(-2147483647i)), u_input.a.wzy, var_1.wxz)).x, _wgslsmith_f_op_f32(f32(-1f) * -230f)))));
    let var_3 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(859f, var_2.c.x, var_2.b, -1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, var_2.c.x, var_2.b, 1027f) - vec4<f32>(-2162f, var_2.b, var_2.c.x, var_2.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-3266f, 1667f, var_2.b, -586f)))))), vec4<f32>(_wgslsmith_f_op_f32(1356f + _wgslsmith_f_op_f32(-var_2.c.x)), _wgslsmith_f_op_f32(floor(-1000f)), 1146f, var_2.b)));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-117f * var_2.c.x));
    global2 = array<vec4<i32>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.b)) * _wgslsmith_f_op_f32(trunc(var_4))), 6204u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-404f, -387f))), -(_wgslsmith_add_i32(60i, firstLeadingBit(-1i)) << (var_2.a % 32u)));
}

