struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: bool,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(907f, -689f, 1000f);

var<private> global1: array<vec2<bool>, 12> = array<vec2<bool>, 12>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global2: array<vec2<f32>, 21> = array<vec2<f32>, 21>(vec2<f32>(235f, 1820f), vec2<f32>(-2446f, -739f), vec2<f32>(-155f, -1000f), vec2<f32>(-1000f, 1396f), vec2<f32>(-1067f, -336f), vec2<f32>(-1206f, 314f), vec2<f32>(-1000f, -108f), vec2<f32>(662f, -456f), vec2<f32>(-1893f, -1106f), vec2<f32>(399f, -1323f), vec2<f32>(-1000f, 335f), vec2<f32>(1000f, 504f), vec2<f32>(1445f, -279f), vec2<f32>(-1000f, 1149f), vec2<f32>(1812f, 813f), vec2<f32>(-1573f, -763f), vec2<f32>(-671f, 826f), vec2<f32>(-533f, -588f), vec2<f32>(-635f, 679f), vec2<f32>(968f, 428f), vec2<f32>(-1629f, -1000f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(sign(arg_1.d.x));
    var var_1 = Struct_1(vec3<bool>(arg_0, all(!(!global1[_wgslsmith_index_u32(1u, 12u)])), arg_1.a.x), arg_1.b, -_wgslsmith_add_i32(1i, firstTrailingBit(12331i)) == ~_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(5404i, 18734i), vec2<i32>(16780i, -50979i)), _wgslsmith_mult_i32(-33605i, 1i)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(-global0.x), 1000f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2453f, arg_1.e.x, -1846f) * arg_1.d) * vec3<f32>(498f, global0.x, arg_1.e.x)), true)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-1523f)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-546f + _wgslsmith_f_op_f32(arg_1.d.x - 524f))) * vec3<f32>(_wgslsmith_f_op_f32(abs(arg_1.d.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.e.x))), _wgslsmith_f_op_f32(max(-368f, _wgslsmith_f_op_f32(global0.x - 351f))))));
    global0 = var_1.d;
    global0 = _wgslsmith_f_op_vec3_f32(round(arg_1.e));
    global2 = array<vec2<f32>, 21>();
    return ~(-71005i);
}

fn func_2() -> Struct_1 {
    let var_0 = -func_3((true && (0u > u_input.a)) && !any(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, true, true), u_input.a, true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1213f, global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) - vec3<f32>(global0.x, 575f, global0.x))));
    let var_1 = ~_wgslsmith_dot_vec2_i32(max(vec2<i32>(var_0, ~var_0), -max(vec2<i32>(var_0, 1513i), vec2<i32>(-3454i, -1i))), firstLeadingBit(firstLeadingBit(reverseBits(vec2<i32>(-2147483647i, var_0)))));
    var var_2 = Struct_1(vec3<bool>(all(select(select(global1[_wgslsmith_index_u32(u_input.a, 12u)], vec2<bool>(true, false), global1[_wgslsmith_index_u32(u_input.a, 12u)]), global1[_wgslsmith_index_u32(u_input.a, 12u)], global0.x >= global0.x)), any(vec3<bool>(true, true, all(vec3<bool>(true, true, true)))), any(select(!global1[_wgslsmith_index_u32(0u, 12u)], vec2<bool>(false, true), global1[_wgslsmith_index_u32(~0u, 12u)]))), reverseBits(~4294967295u), !(!(_wgslsmith_f_op_f32(global0.x - global0.x) > _wgslsmith_f_op_f32(exp2(global0.x)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, 354f, 163f))), vec3<f32>(265f, global0.x, -535f))), vec3<f32>(global0.x, _wgslsmith_f_op_f32(-597f - _wgslsmith_f_op_f32(f32(-1f) * -706f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1369f + global0.x), _wgslsmith_f_op_f32(select(-269f, -1137f, true))))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(-1000f, -383f), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(-1149f, _wgslsmith_f_op_f32(626f + global0.x))))));
    let var_3 = Struct_1(!select(var_2.a, select(!var_2.a, var_2.a, vec3<bool>(var_2.a.x, true, true)), var_2.c), 54067u & _wgslsmith_mod_u32(1u, ~_wgslsmith_clamp_u32(var_2.b, var_2.b, 4294967295u)), false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.d) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(511f, global0.x, 1837f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(844f, 2355f, var_2.e.x)), var_2.a)))), var_2.d);
    var var_4 = vec3<bool>(select(true, !var_3.c, false), !var_3.a.x, (_wgslsmith_mod_u32(_wgslsmith_mult_u32(1285u, var_3.b), var_2.b) <= min(abs(u_input.a), var_2.b)) && var_3.c);
    return Struct_1(select(vec3<bool>(all(var_2.a), !(global0.x >= -1241f), all(vec2<bool>(var_4.x, false)) & false), select(vec3<bool>(var_3.c == false, true && var_3.c, any(vec4<bool>(var_2.c, var_4.x, var_2.c, false))), vec3<bool>(true, true, true), 1u < _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 100169u), vec2<u32>(40572u, 4294967295u))), !all(var_2.a.xz)), var_3.b & var_2.b, select(true, any(vec2<bool>(var_3.a.x, var_4.x)), false) || !(!(var_1 == -1i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d.x, _wgslsmith_f_op_f32(global0.x + 1517f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.d.x)) - var_3.e.x))), vec3<f32>(-807f, var_2.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1913f + -117f) + var_3.e.x)));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> i32 {
    var var_0 = vec3<i32>(abs(25758i), -1i, 1i);
    global2 = array<vec2<f32>, 21>();
    var_0 = ~min(abs(vec3<i32>(var_0.x, 1i, var_0.x)) | vec3<i32>(0i, var_0.x, 16983i), max(countOneBits(vec3<i32>(var_0.x, -31003i, -2147483647i)), abs(vec3<i32>(var_0.x, var_0.x, var_0.x)))) >> (~vec3<u32>(_wgslsmith_add_u32(25574u, 42366u | arg_0.b), 41079u, u_input.a) % vec3<u32>(32u));
    var_0 = abs(vec3<i32>(min(1i, -27622i), var_0.x, var_0.x));
    let var_1 = arg_2.x;
    return _wgslsmith_div_i32(0i & -_wgslsmith_dot_vec2_i32(var_0.xy, firstTrailingBit(var_0.yy)), countOneBits(~_wgslsmith_clamp_i32(~var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(31650i, var_0.x, -61589i, var_0.x), vec4<i32>(2147483647i, -1i, var_0.x, 2147483647i)), var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstLeadingBit(vec4<i32>(~(~30464i), func_4(Struct_1(vec3<bool>(false, false, false), u_input.a, true, vec3<f32>(global0.x, 1403f, -1341f), vec3<f32>(-722f, global0.x, -382f)), func_1(vec3<u32>(25831u, 25790u, u_input.a), Struct_1(vec3<bool>(false, false, true), u_input.a, false, vec3<f32>(-442f, global0.x, -777f), vec3<f32>(global0.x, global0.x, 784f))), vec3<bool>(true, false, true)), _wgslsmith_mod_i32(i32(-1i) * -56666i, -22607i >> (0u % 32u)), 15099i));
    let var_1 = _wgslsmith_dot_vec4_i32(~vec4<i32>(~var_0.x | func_3(false, Struct_1(vec3<bool>(true, true, true), 4294967295u, false, vec3<f32>(global0.x, -774f, global0.x), vec3<f32>(global0.x, 1112f, global0.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_0.x, -52121i), ~var_0.wxy), ~(var_0.x ^ -21259i), 1i), vec4<i32>(1i, var_0.x, _wgslsmith_mult_i32(min(~(-2147483647i), -42415i), reverseBits(var_0.x)), -22331i));
    global1 = array<vec2<bool>, 12>();
    let var_2 = -917f;
    global1 = array<vec2<bool>, 12>();
    global1 = array<vec2<bool>, 12>();
    let var_3 = Struct_1(func_2().a, u_input.a, func_1(vec3<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a), countOneBits(10756u), ~u_input.a), func_1(~vec3<u32>(0u, 0u, u_input.a), func_1(vec3<u32>(u_input.a, 12385u, 35906u), Struct_1(vec3<bool>(true, true, true), u_input.a, true, vec3<f32>(global0.x, 415f, global0.x), vec3<f32>(var_2, var_2, 1000f))))).d.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(502f + global0.x) - 2506f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1514f, global0.x, global0.x))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_2, var_2)))), var_2, -1789f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, 817f, var_2))))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.e), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.d + _wgslsmith_f_op_vec3_f32(var_3.d * var_3.e)) - _wgslsmith_f_op_vec3_f32(select(func_1(vec3<u32>(var_3.b, u_input.a, u_input.a), Struct_1(vec3<bool>(var_3.c, var_3.c, var_3.c), var_3.b, var_3.a.x, vec3<f32>(var_3.e.x, global0.x, var_3.e.x), var_3.d)).d, vec3<f32>(435f, 1288f, global0.x), false)))));
    global0 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) * -471f))), 1439f);
    let x = u_input.a;
    s_output = StorageBuffer(-32817i, var_1, firstTrailingBit(min(~u_input.a, u_input.a)));
}

