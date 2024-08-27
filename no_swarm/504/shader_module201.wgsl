struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1611f;

var<private> global1: Struct_1 = Struct_1(-345f);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1) -> vec3<u32> {
    global0 = _wgslsmith_f_op_f32(max(1000f, global1.a));
    var var_0 = !(!all(!(!vec4<bool>(arg_1.x, true, arg_1.x, true))));
    var var_1 = firstLeadingBit(0u);
    var var_2 = select(arg_1, !select(select(!arg_1, vec2<bool>(arg_1.x, false), vec2<bool>(arg_1.x, true)), select(!arg_1, vec2<bool>(true, true), select(arg_1.x, arg_1.x, arg_1.x)), !arg_1.x && arg_1.x), true);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.a), 1000f, false)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global1.a))))));
    return abs(~(~abs(vec3<u32>(u_input.a, 1u, u_input.a))) << ((abs(max(vec3<u32>(1u, u_input.a, 24269u), vec3<u32>(61051u, u_input.d, u_input.d))) ^ vec3<u32>(_wgslsmith_clamp_u32(u_input.a, u_input.a, 4294967295u), u_input.a | u_input.a, 64656u)) % vec3<u32>(32u)));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: vec2<u32>, arg_3: vec4<f32>) -> i32 {
    var var_0 = select(vec2<bool>(true, _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, arg_2.x), arg_2)) <= 29038u), vec2<bool>(false, !(-71277i != ~u_input.b.x)), true);
    var var_1 = vec2<bool>(!select(_wgslsmith_f_op_f32(-329f + 1017f) != _wgslsmith_f_op_f32(arg_3.x * global1.a), !(!var_0.x), var_0.x), false);
    var var_2 = Struct_2(14599i);
    let var_3 = Struct_3(arg_0, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(round(299f))))), Struct_1(-312f), func_3(1i, select(vec2<bool>(var_1.x, var_0.x), vec2<bool>(var_0.x, var_1.x), vec2<bool>(var_0.x, true)), Struct_1(global1.a)), arg_2.x);
    var var_4 = var_3.e;
    return ~(~countOneBits(-18423i));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: vec3<bool>) -> vec2<f32> {
    global1 = Struct_1(_wgslsmith_f_op_f32(trunc(-1258f)));
    let var_0 = Struct_3(vec4<f32>(-1210f, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), global1.a))), Struct_1(-1189f), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.a)))), ~_wgslsmith_mult_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, 4544u, 1u), vec3<u32>(u_input.a, u_input.d, 0u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 22644u, 78704u) & vec3<u32>(u_input.a, u_input.d, u_input.d), _wgslsmith_clamp_vec3_u32(vec3<u32>(15529u, u_input.d, u_input.d), vec3<u32>(u_input.a, u_input.a, u_input.d), vec3<u32>(4294967295u, u_input.d, u_input.d)))), ~(~select(u_input.d, 0u, arg_1.x)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-398f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1917f + global1.a)))));
    global1 = var_0.c;
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -741f);
    return var_0.a.yx;
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: vec4<f32>, arg_3: bool) -> Struct_2 {
    global1 = arg_0.b;
    let var_0 = _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * -894f)))), vec4<bool>(false, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.x + arg_2.x))) > -879f, arg_3, select(any(vec3<bool>(arg_3, true, arg_3)), func_2(arg_0.a, global1.a, vec2<u32>(arg_0.d.x, u_input.d), vec4<f32>(global1.a, -234f, 616f, arg_2.x)) < abs(-17183i), !select(true, false, true))), !select(!vec3<bool>(true, arg_3, true), !vec3<bool>(true, arg_3, true), !arg_3)));
    var var_1 = vec3<u32>(~u_input.a, 1u << (~_wgslsmith_mult_u32(u_input.d, 4294967295u) % 32u), countOneBits(~(~13648u))) << (_wgslsmith_mult_vec3_u32(~(~arg_0.d), ~(~vec3<u32>(u_input.d, 1u, arg_0.d.x))) % vec3<u32>(32u));
    global0 = _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - arg_0.b.a), !vec4<bool>(arg_3, true, (arg_3 | true) | (arg_3 & arg_3), false), vec3<bool>(false, any(!(!vec4<bool>(arg_3, false, arg_3, arg_3))), arg_3 || all(vec3<bool>(arg_3, arg_3, arg_3))))).x;
    var var_2 = -2147483647i;
    return Struct_2(1i);
}

fn func_5(arg_0: Struct_2, arg_1: f32) -> Struct_3 {
    return Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, 1000f, -554f, -544f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, -614f, global1.a, arg_1))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, global1.a, -873f, global1.a) * vec4<f32>(arg_1, arg_1, global1.a, global1.a)), vec4<f32>(global1.a, global1.a, global1.a, -525f), true))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1042f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + -330f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(470f - global1.a) * 1f), -476f), vec4<bool>(true, -arg_0.a < ~arg_0.a, firstTrailingBit(39932u) == 0u, true))), Struct_1(-1368f), Struct_1(-3964f), abs(~vec3<u32>(countOneBits(1u), countOneBits(50389u), 1u)), _wgslsmith_div_u32(firstTrailingBit(u_input.d), u_input.a));
}

fn func_6(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_3, arg_3: u32) -> i32 {
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(arg_2.b.a))))) - arg_2.a.x));
    global1 = func_5(func_1(Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.a - arg_2.a) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.a, -259f, global1.a, 1619f))), func_5(func_1(arg_2, 46713i, vec4<f32>(arg_1, arg_1, -1194f, arg_1), false), _wgslsmith_f_op_f32(sign(arg_2.a.x))).b, func_5(Struct_2(1872i), 1060f).c, _wgslsmith_div_vec3_u32(~vec3<u32>(arg_3, arg_3, u_input.a), vec3<u32>(1u, 2136u, 23990u)), 17027u), -2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-538f, global1.a, 1392f, global1.a) + arg_2.a)))), (_wgslsmith_mult_i32(arg_0.x, 2147483647i) == firstLeadingBit(u_input.e)) && false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(141f + 317f))).c;
    global1 = Struct_1(_wgslsmith_f_op_f32(-arg_1));
    global1 = func_5(func_1(func_5(Struct_2(-2147483647i), _wgslsmith_f_op_f32(721f + -686f)), _wgslsmith_sub_i32(-6663i, -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, -2147483647i), vec2<i32>(0i, arg_0.x))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(floor(980f)), _wgslsmith_div_f32(arg_1, -541f), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(select(arg_2.a.x, 1119f, false))))), !(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(0i, arg_0.x)) >= (arg_0.x & -18072i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.a.x)))) - _wgslsmith_f_op_f32(-arg_1))).b;
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(252f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.b.a))))));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1143f));
    let var_0 = 20546u;
    let var_1 = true;
    let var_2 = 1u;
    var var_3 = _wgslsmith_mod_vec3_i32(vec3<i32>(func_6(vec3<i32>(2147483647i, 1i, u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1852f - global1.a)), func_5(func_1(Struct_3(vec4<f32>(global1.a, global1.a, global1.a, -1798f), Struct_1(global1.a), Struct_1(global1.a), vec3<u32>(6854u, var_2, 4294967295u), var_2), u_input.b.x, vec4<f32>(global1.a, 657f, global1.a, global1.a), true), _wgslsmith_f_op_f32(abs(-1251f))), select(~9613u, func_5(Struct_2(u_input.c), 956f).e, all(vec3<bool>(true, true, true)))), 1i, u_input.c), reverseBits(firstLeadingBit(select(vec3<i32>(-3814i, u_input.b.x, 1507i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, u_input.c, -2147483647i), vec3<i32>(u_input.c, -14930i, -2147483647i), vec3<i32>(0i, u_input.c, u_input.b.x)), var_1))));
    let var_4 = vec3<f32>(-268f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(func_5(func_1(Struct_3(vec4<f32>(-783f, global1.a, global1.a, -860f), Struct_1(global1.a), Struct_1(global1.a), vec3<u32>(0u, 4294967295u, 36096u), var_0), 6124i, vec4<f32>(global1.a, 511f, global1.a, -256f), var_1), global1.a).c.a, 1639f, (var_3.x ^ -18667i) >= countOneBits(var_3.x))), _wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(f32(-1f) * -1420f))), _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1706f - -1700f)))), select(!vec4<bool>(true, var_1, var_1, true), select(vec4<bool>(var_1, var_1, var_1, var_1), !vec4<bool>(var_1, false, false, var_1), select(var_1, true, false)), vec4<bool>(u_input.e < 80976i, -1000f <= global1.a, !var_1, false)), !(!select(vec3<bool>(true, var_1, var_1), vec3<bool>(false, true, var_1), vec3<bool>(false, var_1, var_1))))).x);
    global0 = -126f;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1088f, _wgslsmith_div_f32(-119f, _wgslsmith_f_op_f32(-155f + -364f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(-1921f, !vec4<bool>(var_1, var_1, true, var_1), !(!vec3<bool>(var_1, var_1, true)))).x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(var_3.x, var_3.x), abs(min(~var_0, _wgslsmith_sub_u32(u_input.a, 13172u)) << (u_input.a % 32u)), (-vec4<i32>(1i, u_input.c, -26528i, u_input.e) | firstLeadingBit(~vec4<i32>(var_3.x, u_input.c, -6607i, 14746i))) & _wgslsmith_clamp_vec4_i32(~firstLeadingBit(vec4<i32>(-7151i, 25426i, -2147483647i, var_3.x)), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.e, 2147483647i)), u_input.b.x, var_3.x, var_3.x), _wgslsmith_mod_vec4_i32(vec4<i32>(183i, u_input.b.x, 27438i, var_3.x), vec4<i32>(2147483647i, u_input.e, 41830i, 1i)) << (_wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, var_0, u_input.a), vec4<u32>(var_0, u_input.d, 15906u, var_2)) % vec4<u32>(32u))), vec4<u32>(~var_0, 1u << ((func_3(var_3.x, vec2<bool>(false, false), Struct_1(global1.a)).x >> ((var_2 & 1u) % 32u)) % 32u), 34678u, 1u));
}

