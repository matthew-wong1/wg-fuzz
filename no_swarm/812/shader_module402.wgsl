struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<u32>,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: i32,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_5, arg_1: f32, arg_2: Struct_1, arg_3: f32) -> u32 {
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(715f, 690f)) - -2493f)), _wgslsmith_div_f32(global0.x, arg_3)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(arg_2.a * arg_0.b.a.d.zz))) - _wgslsmith_div_vec2_f32(vec2<f32>(2572f, global0.x), _wgslsmith_f_op_vec2_f32(arg_2.c.yw - vec2<f32>(422f, global0.x)))), vec2<f32>(-904f, arg_1), !select(arg_0.d.zy, vec2<bool>(false, true), !vec2<bool>(true, arg_0.d.x)))));
    global1 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.d.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -3476f) + 735f))))));
    global1 = Struct_3(arg_3);
    let var_0 = Struct_3(1003f);
    var var_1 = arg_0;
    return var_1.e.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_4, arg_3: i32) -> Struct_5 {
    global1 = arg_1;
    global1 = arg_1;
    var var_0 = !(!vec3<bool>(true, false, all(vec2<bool>(false, false))));
    var var_1 = u_input.a.zz;
    let var_2 = ~max(vec3<u32>(func_3(Struct_5(arg_1, Struct_2(Struct_1(vec2<f32>(arg_0.x, -467f), arg_1.a, vec4<f32>(-1677f, -142f, 198f, 298f), arg_0.xwx), vec3<u32>(1u, 77749u, 19520u), vec4<u32>(0u, 15727u, 8979u, 70690u), var_0.x, global0.x), var_1.x, vec4<bool>(false, var_0.x, true, true), vec4<u32>(1u, 1u, 57261u, 4294967295u)), -1097f, arg_2.a, arg_1.a), 1u, 29470u) >> ((_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 26584u, 4294967295u), vec3<u32>(4294967295u, 19124u, 4294967295u), vec3<u32>(11186u, 1u, 1u)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(~reverseBits(4294967295u), _wgslsmith_clamp_u32(~21771u, ~1u, 57872u), 0u));
    return Struct_5(arg_1, Struct_2(arg_2.a, vec3<u32>(1u, ~(~1u), ~(~9846u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(var_2.x, 4461u, var_2.x, var_2.x) >> (vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x) % vec4<u32>(32u)), ~vec4<u32>(var_2.x, 1u, var_2.x, 4294967295u)), true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.a.c.x), _wgslsmith_div_f32(-3532f, 1247f), !var_0.x))))), 1i, select(!select(select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(false, false, var_0.x, false), vec4<bool>(var_0.x, false, false, var_0.x)), select(vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x)), vec4<bool>(var_0.x, any(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, true, true), var_0.x)), false, any(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x)))), var_0.x), _wgslsmith_div_vec4_u32(~(~(~vec4<u32>(16265u, var_2.x, 1u, 84702u))), countOneBits(~select(vec4<u32>(var_2.x, 34452u, 0u, var_2.x), vec4<u32>(4294967295u, var_2.x, var_2.x, var_2.x), true))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3) -> Struct_1 {
    var var_0 = -(-1i & _wgslsmith_sub_i32(16562i, arg_0.c));
    return arg_0.b.a;
}

fn func_5(arg_0: Struct_1) -> Struct_4 {
    let var_0 = func_4(Struct_5(Struct_3(_wgslsmith_div_f32(global1.a, 1552f)), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(arg_0.c)) + vec4<f32>(global0.x, arg_0.b, arg_0.b, global1.a)), func_2(_wgslsmith_f_op_vec4_f32(arg_0.c + vec4<f32>(global1.a, global0.x, global1.a, -3240f)), func_2(vec4<f32>(arg_0.c.x, global0.x, 1000f, arg_0.c.x), Struct_3(-635f), Struct_4(Struct_1(arg_0.a, arg_0.b, arg_0.c, arg_0.c.ywz)), u_input.a.x).a, Struct_4(Struct_1(vec2<f32>(-1000f, -2519f), global1.a, vec4<f32>(-1127f, arg_0.b, 825f, -305f), arg_0.d)), -1i).a, Struct_4(func_4(Struct_5(Struct_3(-436f), Struct_2(Struct_1(vec2<f32>(arg_0.c.x, global0.x), -107f, vec4<f32>(1504f, global1.a, 1603f, global0.x), vec3<f32>(global0.x, global1.a, global1.a)), vec3<u32>(1u, 6697u, 27436u), vec4<u32>(0u, 4294967295u, 14475u, 1u), false, 476f), u_input.a.x, vec4<bool>(true, false, false, false), vec4<u32>(17712u, 4294967295u, 1u, 43197u)), Struct_3(-437f))), ~5629i).b, _wgslsmith_mult_i32(abs(max(u_input.a.x, u_input.a.x)), ~(u_input.a.x >> (0u % 32u))), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, 1120f, -530f, global0.x)), Struct_3(_wgslsmith_div_f32(global1.a, global0.x)), Struct_4(func_2(arg_0.c, Struct_3(global0.x), Struct_4(arg_0), u_input.a.x).b.a), select(2147483647i, abs(u_input.a.x), func_2(vec4<f32>(global1.a, global0.x, global0.x, 665f), Struct_3(arg_0.b), Struct_4(arg_0), -1i).b.d)).d, reverseBits(~_wgslsmith_clamp_vec4_u32(vec4<u32>(77040u, 2527u, 4294967295u, 39004u), vec4<u32>(4294967295u, 78702u, 38910u, 26286u), vec4<u32>(23411u, 16674u, 23345u, 4294967295u)))), Struct_3(arg_0.a.x));
    return Struct_4(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(971f, -422f)) - _wgslsmith_f_op_f32(f32(-1f) * -133f)), global1.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -667f))), _wgslsmith_f_op_f32(-469f + _wgslsmith_f_op_f32(-arg_0.c.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.c.wwx, func_4(Struct_5(Struct_3(arg_0.d.x), Struct_2(Struct_1(arg_0.d.xx, 1000f, var_0.c, arg_0.c.xxz), vec3<u32>(5409u, 2573u, 1169u), vec4<u32>(18465u, 4294967295u, 4294967295u, 14959u), true, -1352f), u_input.a.x, vec4<bool>(false, false, false, false), vec4<u32>(36746u, 57484u, 5794u, 41810u)), Struct_3(-875f)).d))));
}

fn func_6(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: vec3<bool>) -> Struct_5 {
    var var_0 = false;
    let var_1 = arg_0;
    var var_2 = true & arg_2.x;
    var_2 = arg_1.x;
    var_0 = false;
    return func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(382f, 312f, global1.a, -367f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a.c) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.b, -764f, 864f, 641f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.a.c.x, 1000f, -922f, global0.x), vec4<f32>(1738f, global1.a, 805f, 1977f)))))), Struct_3(_wgslsmith_div_f32(arg_0.a.b, -728f)), Struct_4(func_4(Struct_5(Struct_3(-2078f), func_2(vec4<f32>(global0.x, arg_0.a.b, 1533f, global1.a), Struct_3(var_1.a.d.x), var_1, u_input.a.x).b, _wgslsmith_sub_i32(1i, u_input.a.x), func_2(vec4<f32>(-666f, 103f, -279f, -1000f), Struct_3(arg_0.a.a.x), arg_0, -1i).d, select(vec4<u32>(54306u, 0u, 4294967295u, 2402u), vec4<u32>(13314u, 0u, 11984u, 17254u), vec4<bool>(true, arg_2.x, arg_2.x, false))), func_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(295f, global0.x, global1.a, -1000f))), Struct_3(-146f), func_5(arg_0.a), _wgslsmith_div_i32(-1i, u_input.a.x)).a)), u_input.a.x);
}

fn func_7(arg_0: Struct_5, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: bool) -> Struct_3 {
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(-19483i, abs(i32(-1i) * -2147483647i), ~u_input.a.x), vec3<i32>((19165i | u_input.a.x) | 46123i, u_input.a.x | countOneBits(u_input.a.x), arg_0.c));
    global1 = arg_0.a;
    let var_1 = -vec3<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(-6648i, -22538i, countOneBits(-2015i)), abs(firstLeadingBit(u_input.a.x))), var_0, var_0);
    let var_2 = arg_1.a;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(104f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x))))) - func_6(func_5(func_2(arg_0.b.a.c, func_2(arg_0.b.a.c, Struct_3(global1.a), Struct_4(Struct_1(arg_0.b.a.c.zy, -1000f, arg_0.b.a.c, arg_0.b.a.c.xxw)), 2147483647i).a, Struct_4(Struct_1(vec2<f32>(-999f, -1000f), arg_1.a, arg_0.b.a.c, arg_0.b.a.c.xwx)), max(u_input.a.x, -1i)).b.a), !arg_0.d.zy, !select(select(vec3<bool>(arg_0.b.d, false, true), vec3<bool>(false, true, arg_3), arg_3), !vec3<bool>(arg_3, arg_3, arg_3), func_6(Struct_4(Struct_1(arg_0.b.a.c.xz, arg_1.a, vec4<f32>(arg_1.a, global0.x, global1.a, 1000f), arg_0.b.a.c.wyy)), arg_0.d.ww, vec3<bool>(false, arg_0.b.d, false)).d.x)).b.a.d.xy);
    return Struct_3(-439f);
}

fn func_1(arg_0: i32) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, global0.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -201f)))))));
    global1 = func_7(func_6(func_5(func_4(func_2(vec4<f32>(-1117f, -994f, -405f, -1000f), Struct_3(-688f), Struct_4(Struct_1(vec2<f32>(-613f, global1.a), -620f, vec4<f32>(global1.a, global1.a, global0.x, 1384f), vec3<f32>(1199f, global0.x, 547f))), u_input.a.x), Struct_3(-340f))), vec2<bool>(true, true), vec3<bool>(all(vec4<bool>(true, true, true, true)), !all(vec2<bool>(false, false)), true)), Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(408f, -1688f)))))), ~abs(~vec4<u32>(4294967295u, 1u, 1u, 126345u)) | ~vec4<u32>(~0u, 4294967295u, firstLeadingBit(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 38053u, 8613u), vec3<u32>(1u, 0u, 4294967295u))), !(!(true || all(vec4<bool>(false, false, false, true)))));
    let var_0 = func_5(func_5(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(310f - -1088f), _wgslsmith_f_op_f32(min(246f, global1.a)), true)), vec4<f32>(_wgslsmith_div_f32(global1.a, global1.a), _wgslsmith_f_op_f32(-global1.a), global1.a, global0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(611f, 1029f, global1.a), vec3<f32>(global0.x, -353f, global0.x)))))).a);
    let var_1 = func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a.c - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-326f, 439f, 1646f, -1720f)))), var_0.a.c), func_2(var_0.a.c, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, -824f))), func_5(var_0.a), -16841i).a, func_5(var_0.a), ~u_input.a.x);
    global1 = var_1.a;
    return Struct_1(var_0.a.c.xz, -647f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -171f)), var_0.a.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a - -106f) - func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, var_1.a.a, var_1.b.a.d.x, -939f) + var_0.a.c), var_1.a, func_5(Struct_1(var_1.b.a.c.xx, global1.a, var_0.a.c, vec3<f32>(-134f, 2279f, -1000f))), ~1i).a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.a.d.x + -1927f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1611f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-270f - global0.x)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1033f, var_0.a.b, 1796f), var_1.b.a.d)), var_1.b.a.c.zyz)), vec3<f32>(_wgslsmith_f_op_f32(var_0.a.b - _wgslsmith_f_op_f32(1560f + -902f)), func_4(Struct_5(var_1.a, var_1.b, -59778i, vec4<bool>(var_1.b.d, var_1.b.d, var_1.d.x, var_1.b.d), var_1.e), var_1.a).c.x, global1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_1(_wgslsmith_mult_i32(6527i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 0i, u_input.a.x) >> (vec3<u32>(1u, 34950u, 47868u) % vec3<u32>(32u)), abs(vec3<i32>(101i, u_input.a.x, -8110i))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), global0.x)), ~(~(~firstLeadingBit(vec3<u32>(850u, 11873u, 1u)))), _wgslsmith_mod_vec2_i32(u_input.a.yy, vec2<i32>(2147483647i, ~(-u_input.a.x))));
}

