struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_1) -> u32 {
    let var_0 = select(all(vec4<bool>(any(vec2<bool>(true, true)), true, true, true == any(vec3<bool>(true, false, false)))), any(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, false, true))), false);
    var var_1 = abs(~arg_0.x >> (63474u % 32u));
    let var_2 = Struct_2(arg_2, Struct_1(arg_2.b, vec4<i32>(-45724i, 1i, 1i, 43135i), 104965u, vec2<f32>(-990f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-201f))))), _wgslsmith_f_op_f32(arg_2.d.x + -2041f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.d.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.e + arg_1)))))));
    global0 = array<Struct_1, 9>();
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1113f, arg_1, false)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.d.x) * _wgslsmith_div_f32(var_2.c, var_2.a.d.x))))));
    return firstLeadingBit(abs(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 4294967295u), arg_0.zz), 4294967295u)) << (~(~(var_2.a.c & 50818u)) % 32u));
}

fn func_2() -> f32 {
    var var_0 = ~(-countOneBits(-2147483647i)) << (~(~func_3(vec4<u32>(4294967295u, 9311u, 46474u, 1u), _wgslsmith_f_op_f32(floor(327f)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 0u, 76068u), 9u)])) % 32u);
    var var_1 = Struct_1(select(vec4<i32>(-(~u_input.a), firstLeadingBit(18746i), ~select(u_input.a, u_input.a, true), u_input.a), vec4<i32>(u_input.a, -1i, _wgslsmith_add_i32(u_input.a, -85183i), 30245i), select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, all(vec3<bool>(true, true, false)), true, true), !all(vec3<bool>(true, true, false)))), vec4<i32>(-11734i >> (_wgslsmith_clamp_u32(~0u, ~1u, ~18575u) % 32u), 2147483647i, _wgslsmith_mod_i32(-(~(-39942i)), u_input.a), 2147483647i), select(~(~0u), ~firstTrailingBit(_wgslsmith_mod_u32(18032u, 4294967295u)), true), vec2<f32>(-144f, 1000f), 1312f);
    var_1 = global0[_wgslsmith_index_u32(4294967295u, 9u)];
    global0 = array<Struct_1, 9>();
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(426f + 147f))) + var_1.e) - 1429f)));
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: vec3<u32>, arg_3: vec3<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1242f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -816f), 702f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(min(arg_0.x, -296f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(floor(arg_0.x)))))) + -1032f));
    let var_1 = arg_0.x;
    return _wgslsmith_div_i32(~u_input.a, arg_1);
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: bool, arg_3: vec2<i32>) -> Struct_1 {
    global0 = array<Struct_1, 9>();
    let var_0 = u_input.a;
    var var_1 = !(!(!select(vec4<bool>(true, true, false, arg_2), !vec4<bool>(arg_2, true, false, arg_2), select(vec4<bool>(true, false, false, arg_2), vec4<bool>(true, arg_2, arg_2, arg_2), arg_2))));
    let var_2 = ~vec4<i32>(_wgslsmith_add_i32(-1i, (i32(-1i) * -2147483647i) ^ ~var_0), ~abs(1i), -arg_1 ^ var_0, _wgslsmith_mod_i32(select(-1i, -27287i, var_1.x || var_1.x), _wgslsmith_add_i32(arg_0, ~2147483647i)));
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-841f, 623f, -582f, -492f), vec4<f32>(-1086f, -287f, 507f, -647f))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -859f), 1f, _wgslsmith_f_op_f32(max(-586f, -415f)), 1f)), vec4<f32>(-363f, _wgslsmith_f_op_f32(-525f + _wgslsmith_f_op_f32(f32(-1f) * -797f)), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-1703f * 1359f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1600f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 829f, -688f, 179f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(687f, 1446f, 1000f, -496f))), vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(485f, 191f, 156f, 499f), vec4<f32>(1267f, -436f, 268f, -1506f))))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1072f, 111f, 1000f, -1006f), _wgslsmith_f_op_vec4_f32(vec4<f32>(876f, 1583f, 791f, -1297f) * vec4<f32>(-1000f, 235f, 1059f, 1765f))))), !any(var_1.yx))));
    return Struct_1(vec4<i32>(arg_0, -2969i, _wgslsmith_mod_i32(firstLeadingBit(arg_3.x), -2147483647i), u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -(~var_2), ~(-var_2)), 4294967295u, var_3.yx, -435f);
}

fn func_1(arg_0: u32) -> Struct_2 {
    global0 = array<Struct_1, 9>();
    var var_0 = func_5(-2302i, u_input.a, true, vec2<i32>(func_4(vec2<f32>(1585f, _wgslsmith_f_op_f32(func_2())), u_input.a, vec3<u32>(335u, ~arg_0, func_3(vec4<u32>(33089u, arg_0, 90194u, 1u), 988f, Struct_1(vec4<i32>(u_input.a, -2147483647i, -1i, 17094i), vec4<i32>(-33947i, u_input.a, u_input.a, u_input.a), 0u, vec2<f32>(-340f, 1136f), -211f))), vec3<bool>(any(vec4<bool>(false, true, false, true)), true, true)), select(u_input.a, _wgslsmith_mod_i32(1i, -2147483647i), func_3(vec4<u32>(0u, arg_0, 41831u, 0u), 283f, Struct_1(vec4<i32>(u_input.a, u_input.a, -2147483647i, -25070i), vec4<i32>(u_input.a, u_input.a, u_input.a, 24749i), 4294967295u, vec2<f32>(-405f, 543f), -1298f)) >= (arg_0 ^ 0u))));
    let var_1 = -2250f;
    return Struct_2(global0[_wgslsmith_index_u32(func_5(var_0.a.x, ~(var_0.a.x | 1i), !(948f > var_1), vec2<i32>(-u_input.a, -38738i)).c & 1u, 9u)], Struct_1(min(firstTrailingBit(func_5(24136i, u_input.a, true, var_0.b.xy).a), vec4<i32>(max(u_input.a, u_input.a), _wgslsmith_mult_i32(-13060i, u_input.a), max(-30452i, var_0.b.x), 0i)), countOneBits(vec4<i32>(-2147483647i, reverseBits(u_input.a), -2147483647i, 24567i)), arg_0, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -629f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.e, var_0.e, false)) + 725f)), var_0.e), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-848f - _wgslsmith_f_op_f32(f32(-1f) * -1134f)), -111f) - var_0.e));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    global0 = array<Struct_1, 9>();
    var var_0 = select(vec4<bool>(!(all(vec3<bool>(true, false, false)) & true), true, any(vec4<bool>(true, true, true, true)), !any(select(vec2<bool>(true, false), vec2<bool>(false, false), false))), vec4<bool>(true, true, true, true), all(vec4<bool>(true || all(vec4<bool>(true, false, false, false)), true, arg_1.c >= -1593f, any(vec3<bool>(true, true, true)))));
    global0 = array<Struct_1, 9>();
    var var_1 = _wgslsmith_f_op_f32(-arg_1.b.d.x);
    var var_2 = global0[_wgslsmith_index_u32(~(~arg_0.b.c), 9u)];
    return Struct_1(abs(arg_0.a.b), vec4<i32>(max(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(0i, 0i), 0i, -39207i), -_wgslsmith_clamp_i32(2147483647i, 2147483647i, -35677i)), ~arg_0.a.a.x, firstLeadingBit(~2147483647i), max(_wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, var_2.b.x, var_2.a.x), arg_0.a.a.wxx), ~(-8748i))), arg_0.b.c, _wgslsmith_f_op_vec2_f32(sign(func_1(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_2.c, arg_1.a.c, arg_1.b.c), ~17208u)).b.d)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1158f + _wgslsmith_div_f32(-2091f, 432f)))), _wgslsmith_f_op_f32(round(var_2.e)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(-1114f, 1644f, -1176f, -181f);
    var var_1 = func_6(func_1(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(0u, 48733u)), vec2<u32>(1u, 1u))), Struct_2(func_1(max(~25725u, ~1u)).b, global0[_wgslsmith_index_u32(func_1(_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1616u, 4294967295u, 19311u), vec3<u32>(67139u, 18689u, 4294967295u)))).a.c, 9u)], -870f));
    var var_2 = ~(~4294967295u);
    var var_3 = global0[_wgslsmith_index_u32(1u, 9u)];
    var var_4 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(func_6(Struct_2(global0[_wgslsmith_index_u32(var_1.c, 9u)], func_6(Struct_2(Struct_1(var_3.b, var_1.a, 0u, vec2<f32>(var_1.d.x, -801f), -599f), Struct_1(vec4<i32>(1i, u_input.a, 7362i, 1i), var_1.b, 0u, var_0.wz, 228f), -654f), Struct_2(global0[_wgslsmith_index_u32(var_3.c, 9u)], global0[_wgslsmith_index_u32(1u, 9u)], -869f)), _wgslsmith_f_op_f32(-var_3.d.x)), Struct_2(func_1(var_3.c).b, global0[_wgslsmith_index_u32(~var_3.c, 9u)], var_1.d.x)).d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-543f, var_1.d.x))) - var_0.yy) * var_3.d))));
    let x = u_input.a;
    s_output = StorageBuffer(~8393u, 8493i, _wgslsmith_add_i32(var_3.b.x, _wgslsmith_dot_vec3_i32(func_1(~0u).a.b.xxx, select(var_1.b.wxw, var_3.b.xxy, vec3<bool>(true, true, true)))));
}

