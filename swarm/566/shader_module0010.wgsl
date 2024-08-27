struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: Struct_2,
    d: i32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global1: Struct_1 = Struct_1(-20971i, false);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_3, arg_3: bool) -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1494f, _wgslsmith_f_op_f32(f32(-1f) * -464f)) - -1647f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-378f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1740f, 1548f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1065f + 1276f))))), -668f);
    var var_1 = _wgslsmith_f_op_f32(-var_0.x);
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * var_0.x)))), _wgslsmith_f_op_f32(sign(354f))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -437f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(243f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(2467f)), var_0.x)))));
    global1 = arg_2.b;
    return firstTrailingBit(~1u);
}

fn func_2(arg_0: f32, arg_1: vec3<bool>) -> vec4<u32> {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_div_i32(~min(global1.a, 2147483647i), _wgslsmith_mult_i32(~u_input.a.x, i32(-1i) * -22946i)) << (max(_wgslsmith_add_u32(firstLeadingBit(2236u), 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(236u, 4294967295u, 25870u), vec3<u32>(39671u, 4294967295u, 1u)) >> (1u % 32u)) % 32u), _wgslsmith_add_i32(~(-u_input.a.x), min(-2147483647i, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x << (1u % 32u)))));
    global1 = Struct_1(-u_input.a.x, false);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * arg_0));
    let var_2 = global0.xxx;
    let var_3 = _wgslsmith_mod_vec4_u32(reverseBits(reverseBits(vec4<u32>(~7937u, ~1u, _wgslsmith_mod_u32(8038u, 4294967295u), ~22142u))), ~vec4<u32>(1u, 1u, 1u, 1u));
    return (~vec4<u32>(_wgslsmith_dot_vec4_u32(var_3, var_3), ~0u, ~var_3.x, func_3(Struct_1(u_input.a.x, global1.b), Struct_4(Struct_3(Struct_2(u_input.a.x), Struct_1(0i, global0.x)), u_input.a.yyx, Struct_2(-2147483647i), -1357i), Struct_3(Struct_2(u_input.a.x), Struct_1(22933i, global1.b)), global1.b)) >> (~(~var_3) % vec4<u32>(32u))) ^ var_3;
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: vec3<f32>, arg_3: i32) -> bool {
    var var_0 = Struct_2(-75484i);
    let var_1 = Struct_5(Struct_3(Struct_2(~_wgslsmith_mult_i32(global1.a, 0i)), Struct_1(_wgslsmith_dot_vec2_i32(u_input.a.yz, abs(vec2<i32>(var_0.a, -7379i))), global0.x)));
    var var_2 = global1.a;
    let var_3 = -6290i;
    let var_4 = abs(-abs(u_input.a.xxz | (u_input.a.wyw | vec3<i32>(u_input.a.x, -13665i, global1.a))));
    return !(all(vec3<bool>(arg_0, global0.x, any(vec4<bool>(false, arg_0, var_1.a.b.b, var_1.a.b.b)))) & true);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> Struct_5 {
    var var_0 = func_4(true, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(155f - arg_3) + _wgslsmith_f_op_f32(ceil(-1788f))) - arg_3), select(vec3<bool>(false, global0.x, select(true, false, arg_2.b)), global0.yzz, !(!global0.yzz))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1085f))), _wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(exp2(arg_0.x))), _wgslsmith_f_op_f32(1124f + _wgslsmith_f_op_f32(step(-821f, arg_3)))), vec3<f32>(_wgslsmith_f_op_f32(-arg_3), 130f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-277f, arg_3)))), global0.zxz)), global1.a);
    var var_1 = vec2<u32>(2751u, 16642u);
    let var_2 = arg_1;
    var var_3 = !all(select(global0.xxx, global0.wyw, global0.x));
    var var_4 = select(vec4<bool>(arg_2.b, any(vec4<bool>(true, true, arg_3 != -935f, true)), true, true), vec4<bool>(arg_2.b, true, ~var_1.x <= ((var_1.x ^ 8748u) | 1u), all(select(!vec3<bool>(true, false, global0.x), global0.ywy, false))), !vec4<bool>(global1.b, all(!vec4<bool>(global0.x, false, false, true)), true, any(vec2<bool>(true, true))));
    return Struct_5(Struct_3(Struct_2(-select(-34888i, -1i, false)), arg_2));
}

fn func_5(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: i32, arg_3: f32) -> Struct_4 {
    global0 = !select(!vec4<bool>(true, false & arg_0.a.b.b, any(vec3<bool>(true, arg_0.a.b.b, false)), global0.x), !(!vec4<bool>(arg_0.a.b.b, false, global0.x, true)), !vec4<bool>(global1.b, !arg_0.a.b.b, false, !arg_0.a.b.b));
    var var_0 = global1.b;
    var var_1 = func_1(arg_1, Struct_2(-_wgslsmith_dot_vec3_i32(u_input.a.yxw, u_input.a.wzy)), Struct_1(reverseBits(_wgslsmith_dot_vec2_i32(u_input.a.yx, vec2<i32>(arg_2, -17320i))), arg_0.a.b.b), arg_1.x).a;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)))))));
    let var_3 = Struct_1(var_1.b.a << (~1u % 32u), any(!(!vec4<bool>(arg_0.a.b.b, true, true, global0.x))) == var_1.b.b);
    return Struct_4(func_1(arg_1, var_1.a, Struct_1(reverseBits(abs(-17023i)), any(select(global0.xw, global0.xw, vec2<bool>(true, var_1.b.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-678f + -858f))).a, u_input.a.ywy, Struct_2(var_1.a.a), min(0i << (_wgslsmith_dot_vec4_u32(func_2(var_2, vec3<bool>(arg_0.a.b.b, arg_0.a.b.b, global0.x)), max(vec4<u32>(70474u, 24427u, 19181u, 0u), vec4<u32>(4294967295u, 0u, 21077u, 90598u))) % 32u), -2147483647i));
}

fn func_6(arg_0: Struct_4, arg_1: u32, arg_2: Struct_4) -> f32 {
    let var_0 = !(!((false == all(global0.xx)) && (arg_1 > func_2(611f, global0.xzy).x)));
    global0 = vec4<bool>(var_0, true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1276f * -229f))))) == _wgslsmith_div_f32(423f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1117f)), _wgslsmith_f_op_f32(-318f + 520f))), !all(!select(vec4<bool>(false, global1.b, true, global0.x), vec4<bool>(false, global0.x, false, true), vec4<bool>(true, false, arg_2.a.b.b, true))));
    let var_1 = vec4<bool>(global1.b, false, global0.x, any(vec4<bool>(true, !arg_2.a.b.b && true, !arg_0.a.b.b, !select(global1.b, global0.x, arg_2.a.b.b))));
    var var_2 = -52714i;
    var var_3 = _wgslsmith_clamp_i32(~u_input.a.x, -(~(u_input.a.x | 6631i)) ^ (global1.a | arg_2.c.a), arg_2.c.a);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(302f))))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    global0 = !select(!(!(!vec4<bool>(global0.x, global0.x, true, false))), vec4<bool>(any(vec4<bool>(global1.b, true, global0.x, false)), false, global1.b, u_input.a.x >= ~global1.a), true);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_6(func_5(func_1(vec3<f32>(160f, 1873f, -563f), Struct_2(u_input.a.x), Struct_1(var_0.x, true), 1000f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(2723f, 530f, -495f))), var_0.x, _wgslsmith_f_op_f32(445f * 1355f)), _wgslsmith_dot_vec3_u32(select(vec3<u32>(72081u, 53555u, 0u), vec3<u32>(0u, 4294967295u, 31869u), true), vec3<u32>(1u, 1u, 1u)), Struct_4(Struct_3(Struct_2(-1i), Struct_1(-1i, global1.b)), var_0.www, func_5(Struct_5(Struct_3(Struct_2(var_0.x), Struct_1(u_input.a.x, global0.x))), vec3<f32>(-355f, 248f, -565f), -2147483647i, -499f).c, _wgslsmith_add_i32(-7398i, 19902i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1000f, 1318f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(401f + -1271f) + 1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-539f - 594f) + _wgslsmith_f_op_f32(select(-589f, 675f, global1.b))), _wgslsmith_f_op_f32(select(347f, _wgslsmith_f_op_f32(func_6(Struct_4(Struct_3(Struct_2(global1.a), Struct_1(-20515i, global1.b)), vec3<i32>(-2147483647i, var_0.x, -1208i), Struct_2(global1.a), global1.a), 31924u, Struct_4(Struct_3(Struct_2(var_0.x), Struct_1(22323i, true)), vec3<i32>(-2147483647i, global1.a, u_input.a.x), Struct_2(0i), global1.a))), global1.b)))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(-551f)), 1479f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(637f, -477f, global0.x))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(992f, var_1.x, var_1.x, var_1.x), vec4<f32>(var_1.x, 738f, -115f, var_1.x), vec4<bool>(true, false, global0.x, false)))))) - vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(476f - _wgslsmith_div_f32(1084f, var_1.x)), _wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_1.x)))))) * vec4<f32>(var_1.x, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-var_1.x)), -296f, var_1.x));
    var var_3 = Struct_5(func_1(var_1, func_1(var_2.zxw, Struct_2(var_0.x), func_5(func_1(vec3<f32>(var_2.x, var_1.x, -539f), Struct_2(global1.a), Struct_1(22890i, false), var_1.x), _wgslsmith_f_op_vec3_f32(max(var_2.zwx, vec3<f32>(1000f, -1608f, -1848f))), 0i & global1.a, -1000f).a.b, 1320f).a.a, func_5(Struct_5(func_5(Struct_5(Struct_3(Struct_2(var_0.x), Struct_1(0i, true))), vec3<f32>(-1105f, 1304f, -136f), var_0.x, 550f).a), vec3<f32>(748f, _wgslsmith_f_op_f32(ceil(var_1.x)), var_1.x), i32(-1i) * -39250i, 1494f).a.b, _wgslsmith_f_op_f32(f32(-1f) * -1158f)).a);
    var var_4 = var_3.a.a;
    let var_5 = func_1(vec3<f32>(_wgslsmith_f_op_f32(step(-1580f, _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-371f)) - 1227f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -702f)))), func_5(func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1 - vec3<f32>(var_1.x, var_2.x, 1655f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -266f, 1265f))), var_3.a.a, Struct_1(firstLeadingBit(var_0.x), all(vec3<bool>(global1.b, false, global0.x))), _wgslsmith_f_op_f32(-var_1.x)), var_2.wzz, 1i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, var_1.x, global0.x)))))).a.a, var_3.a.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.x, -1039f)) - _wgslsmith_f_op_f32(-var_2.x))))).a.a.a;
    let var_6 = Struct_4(Struct_3(Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(-6731i, var_0.x), u_input.a.wx) << (max(1u, 4294967295u) % 32u)), func_5(Struct_5(func_5(Struct_5(var_3.a), vec3<f32>(232f, -374f, -1590f), u_input.a.x, 1380f).a), vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), var_2.x, 656f), var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.x * var_2.x), 815f))).a.b), -min(abs(~vec3<i32>(-1i, var_3.a.a.a, 52388i)), _wgslsmith_mult_vec3_i32(u_input.a.yzz, u_input.a.ywx << (vec3<u32>(4294967295u, 0u, 38114u) % vec3<u32>(32u)))), var_3.a.a, var_5);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-444f, -923f))))))), var_2, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1429f + var_1.x))), 1559f))), abs(var_6.b));
}

