struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -227f), -475f, any(!(!vec2<bool>(false, arg_0.c.d))) && !(!arg_2.b & !arg_0.b.b)));
}

fn func_4(arg_0: f32, arg_1: vec3<u32>) -> u32 {
    var var_0 = Struct_2(4294967295u, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -230f)), any(vec4<bool>(true, false, any(vec4<bool>(true, false, false, true)), any(vec2<bool>(false, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(356f, arg_0, arg_0)))), any(vec3<bool>(true, true, true))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-664f, -509f))))) - vec2<f32>(-3556f, _wgslsmith_f_op_f32(f32(-1f) * -1168f))), all(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(arg_0)), 531f, arg_0)), true), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) - vec2<f32>(490f, arg_0)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(521f, -257f))), false)) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0, arg_0), vec2<f32>(-498f, arg_0)))))), false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, -181f, -2248f), vec3<f32>(arg_0, arg_0, 788f))), vec3<f32>(arg_0, -1262f, -387f)))), (~arg_1.x << (u_input.a.x % 32u)) >= max(abs(4294967295u), 64292u)));
    let var_1 = 8070u << (abs(abs(~_wgslsmith_add_u32(u_input.a.x, var_0.a))) % 32u);
    return var_0.a;
}

fn func_2(arg_0: bool, arg_1: i32) -> u32 {
    let var_0 = _wgslsmith_add_u32(~105803u ^ max(firstTrailingBit(1u), u_input.a.x), func_4(_wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_div_u32(6429u, 4294967295u), Struct_1(vec2<f32>(-1000f, -862f), arg_0, vec3<f32>(776f, 875f, -871f), false), Struct_1(vec2<f32>(990f, -331f), true, vec3<f32>(-318f, 535f, -1542f), arg_0), Struct_1(vec2<f32>(-1000f, 426f), false, vec3<f32>(2095f, -962f, -260f), arg_0)), arg_0, Struct_1(vec2<f32>(744f, 1300f), true, _wgslsmith_f_op_vec3_f32(vec3<f32>(-619f, -928f, 139f) - vec3<f32>(-591f, 516f, 989f)), arg_0))), ~u_input.a));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -857f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(Struct_2(15566u, Struct_1(vec2<f32>(-430f, -219f), false, vec3<f32>(1810f, -1154f, 1248f), true), Struct_1(vec2<f32>(-1746f, -971f), true, vec3<f32>(461f, 534f, 1000f), true), Struct_1(vec2<f32>(-380f, -1715f), arg_0, vec3<f32>(1619f, -893f, -1000f), true)), false, Struct_1(vec2<f32>(-184f, -1472f), true, vec3<f32>(-1133f, 1916f, -567f), arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -578f), -893f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1333f, 1277f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(u_input.a.x, Struct_1(vec2<f32>(-259f, 137f), false, vec3<f32>(185f, -906f, -861f), true), Struct_1(vec2<f32>(600f, 1550f), false, vec3<f32>(-624f, 600f, 120f), true), Struct_1(vec2<f32>(222f, 2185f), arg_0, vec3<f32>(355f, -1460f, 134f), false)), false, Struct_1(vec2<f32>(1073f, -415f), arg_0, vec3<f32>(-1000f, -2073f, -565f), false)))))), 1f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-512f))), _wgslsmith_f_op_f32(f32(-1f) * -1919f)) + vec4<f32>(_wgslsmith_f_op_f32(floor(-447f)), _wgslsmith_div_f32(-199f, _wgslsmith_f_op_f32(step(-959f, -1357f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-414f, -311f)))), _wgslsmith_f_op_f32(max(2940f, -1667f))))));
    var var_2 = _wgslsmith_mod_i32(arg_1, 0i);
    let var_3 = _wgslsmith_mult_i32(-arg_1, _wgslsmith_sub_i32(firstTrailingBit(arg_1), _wgslsmith_clamp_i32(17127i, -45691i, -71715i)));
    var var_4 = var_1.x;
    return _wgslsmith_mult_u32(37947u, ~(~_wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.a.x, var_0), u_input.a.zy), u_input.a.zx << (vec2<u32>(var_0, 4294967295u) % vec2<u32>(32u)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: u32, arg_3: f32) -> Struct_1 {
    let var_0 = vec2<bool>(21551i > (select(countOneBits(0i), -arg_1.x, all(vec3<bool>(arg_0.d, arg_0.d, arg_0.b))) << (0u % 32u)), true);
    let var_1 = Struct_2(abs(~77458u), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-541f, arg_0.c.x))), !(true & (u_input.a.x != arg_2)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(arg_0.c))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(843f, arg_0.c.x, -1268f)))), !(!arg_0.d)), arg_0, arg_0);
    let var_2 = var_1.b;
    let var_3 = _wgslsmith_mult_vec4_u32(vec4<u32>(~4294967295u, _wgslsmith_add_u32(~_wgslsmith_add_u32(u_input.a.x, 38461u), _wgslsmith_sub_u32(var_1.a, firstLeadingBit(arg_2))), 1u, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.a.x)), vec3<u32>(~arg_2, arg_2, _wgslsmith_mod_u32(var_1.a, u_input.a.x)))), vec4<u32>(abs(countOneBits(21322u) & ~arg_2), ~u_input.a.x | arg_2, _wgslsmith_add_u32(func_4(_wgslsmith_f_op_f32(abs(var_1.d.a.x)), u_input.a), func_2(any(vec2<bool>(var_2.b, false)), abs(-1i))), _wgslsmith_mod_u32(27175u, var_1.a)));
    let var_4 = !(!vec4<bool>(arg_0.d != any(vec4<bool>(false, true, true, var_1.d.d)), any(vec3<bool>(true, true, var_1.c.b)), true, select(any(vec3<bool>(true, var_1.b.d, true)), !arg_0.d, var_0.x)));
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    return func_5(arg_2.c, _wgslsmith_div_vec2_i32(max(countOneBits(vec2<i32>(1i, 1i)), vec2<i32>(_wgslsmith_sub_i32(-1i, -2147483647i), 4226i >> (arg_2.a % 32u))), vec2<i32>(1i, 1i)), func_2(!(!(arg_2.a > arg_2.a)), ~(~firstLeadingBit(-14487i))), -143f);
}

fn func_6(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: vec4<bool>) -> f32 {
    let var_0 = Struct_2(1u, func_1(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-282f, 1844f))) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(786f, -795f)))), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1752f, arg_2.a.x, 295f))), _wgslsmith_f_op_f32(-717f - -1157f) <= arg_2.a.x), 25433u, Struct_2(~max(19287u, 0u), func_5(func_5(Struct_1(vec2<f32>(arg_2.a.x, 533f), arg_2.d, vec3<f32>(773f, arg_2.a.x, arg_2.a.x), arg_1), vec2<i32>(arg_0, arg_0), u_input.a.x, arg_2.c.x), _wgslsmith_mod_vec2_i32(vec2<i32>(36082i, arg_0), vec2<i32>(2147483647i, -2147483647i)), ~7830u, _wgslsmith_f_op_f32(abs(-771f))), func_5(arg_2, vec2<i32>(arg_0, -37414i), ~36007u, func_5(Struct_1(arg_2.a, true, vec3<f32>(arg_2.c.x, 265f, -1000f), arg_2.b), vec2<i32>(2147483647i, 41744i), 1964u, arg_2.a.x).a.x), Struct_1(vec2<f32>(arg_2.a.x, 711f), 4294967295u > u_input.a.x, arg_2.c, !arg_2.d))), arg_2, Struct_1(_wgslsmith_f_op_vec2_f32(-arg_2.a), true && any(!arg_3), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -710f), -131f, 1588f) - _wgslsmith_f_op_vec3_f32(-arg_2.c)), arg_3.x));
    let var_1 = arg_0 >> (max(_wgslsmith_mult_u32(~var_0.a, var_0.a), ~27062u) % 32u);
    let var_2 = arg_3;
    var var_3 = var_0;
    var_3 = Struct_2(var_0.a, arg_2, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3.d.a.x, arg_2.c.x), _wgslsmith_f_op_vec2_f32(-var_3.c.c.zx), var_2.yz))), var_3.b.d, var_3.b.c, false), var_3.d);
    return var_3.b.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_6(~242i, any(vec4<bool>(false, false, false, true)), func_1(Struct_1(vec2<f32>(367f, -834f), false, vec3<f32>(777f, -144f, 1456f), true), u_input.a.x, Struct_2(u_input.a.x, Struct_1(vec2<f32>(1964f, -274f), true, vec3<f32>(128f, -667f, 1453f), true), Struct_1(vec2<f32>(-2002f, 325f), true, vec3<f32>(-1000f, 651f, -1342f), true), Struct_1(vec2<f32>(466f, 993f), true, vec3<f32>(818f, -895f, 597f), true))), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), false))), -726f))) * 1f);
    var var_1 = vec2<i32>(firstLeadingBit(-1i), ~firstTrailingBit(1i));
    let var_2 = vec3<i32>(var_1.x, var_1.x, min(~var_1.x, -_wgslsmith_add_i32(-var_1.x, _wgslsmith_add_i32(1i, -2147483647i))));
    var var_3 = ((abs(u_input.a.x << (24655u % 32u)) & ~u_input.a.x) < _wgslsmith_dot_vec3_u32(reverseBits(abs(u_input.a)), firstTrailingBit(u_input.a))) | true;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -701f) + 1f)))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(Struct_2(53270u, func_5(Struct_1(vec2<f32>(-308f, 255f), false, vec3<f32>(1308f, -301f, -733f), false), var_2.yy, 26573u, -635f), func_1(Struct_1(vec2<f32>(1000f, -349f), true, vec3<f32>(646f, -113f, 1292f), false), u_input.a.x, Struct_2(u_input.a.x, Struct_1(vec2<f32>(-336f, -266f), true, vec3<f32>(1859f, -164f, -1000f), true), Struct_1(vec2<f32>(-390f, -2641f), false, vec3<f32>(1000f, 403f, -933f), true), Struct_1(vec2<f32>(932f, -562f), false, vec3<f32>(2331f, 203f, -1355f), true))), Struct_1(vec2<f32>(550f, 790f), false, vec3<f32>(577f, -210f, 337f), true)), true, func_1(func_1(Struct_1(vec2<f32>(-1139f, -376f), true, vec3<f32>(1115f, -557f, -125f), true), 1u, Struct_2(35798u, Struct_1(vec2<f32>(272f, 1854f), true, vec3<f32>(-393f, -1072f, 1632f), true), Struct_1(vec2<f32>(-131f, 1507f), false, vec3<f32>(1339f, 773f, 1280f), false), Struct_1(vec2<f32>(212f, 350f), false, vec3<f32>(-305f, -944f, 614f), false))), ~u_input.a.x, Struct_2(1u, Struct_1(vec2<f32>(994f, -429f), false, vec3<f32>(-1460f, -1158f, -1124f), false), Struct_1(vec2<f32>(669f, -935f), true, vec3<f32>(-710f, 1781f, -260f), true), Struct_1(vec2<f32>(-1000f, -598f), true, vec3<f32>(519f, 1431f, -1435f), false))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1250f - -359f)))))));
    var_0 = 1893f;
    var var_4 = 1i;
    var var_5 = vec4<u32>(u_input.a.x, firstTrailingBit(~u_input.a.x), _wgslsmith_add_u32(u_input.a.x, min(u_input.a.x, 802u)), u_input.a.x);
    var var_6 = u_input.a.x << (abs(~1u) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(4294967295u, Struct_1(vec2<f32>(-1000f, -1240f), true, vec3<f32>(-869f, -1246f, 1265f), true), Struct_1(vec2<f32>(563f, 1000f), false, vec3<f32>(-774f, -943f, 1559f), false), Struct_1(vec2<f32>(-221f, -1000f), true, vec3<f32>(-1616f, -857f, 134f), false)), true, Struct_1(vec2<f32>(-959f, 1016f), true, vec3<f32>(-153f, 199f, -554f), true))), 129f, _wgslsmith_f_op_f32(-274f * -356f), _wgslsmith_f_op_f32(-457f + 2291f)))), _wgslsmith_sub_u32(_wgslsmith_add_u32(var_5.x, _wgslsmith_dot_vec2_u32(u_input.a.yx, ~vec2<u32>(150u, 0u))), max(4294967295u, var_5.x)));
}

