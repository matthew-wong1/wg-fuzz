struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: bool,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_3) -> f32 {
    var var_0 = ~vec4<i32>(abs(countOneBits(_wgslsmith_div_i32(0i, -1i))), i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(-23003i, -44893i, 0i), vec3<i32>(-17433i, 2147483647i, 27912i)), firstTrailingBit(reverseBits(~(-1i))), ~24746i);
    let var_1 = firstLeadingBit(vec2<u32>(countOneBits(0u), 4294967295u));
    var_0 = _wgslsmith_sub_vec4_i32(-vec4<i32>(_wgslsmith_add_i32(1i & var_0.x, i32(-1i) * -11746i), _wgslsmith_add_i32(-2147483647i, var_0.x) ^ 14524i, -var_0.x, ~var_0.x), ~_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-42094i, 40614i, var_0.x, var_0.x)) >> (vec4<u32>(arg_1.b.c.x, 1u, var_1.x, 3732u) % vec4<u32>(32u)), -vec4<i32>(50026i, var_0.x, 36973i, -21933i), vec4<i32>(0i, firstLeadingBit(1i), -2147483647i, var_0.x | var_0.x)));
    let var_2 = 1u;
    let var_3 = Struct_4(firstLeadingBit(var_0.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-357f - 1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1018f)), _wgslsmith_f_op_f32(arg_2.d.b.d.x - -1022f), !arg_2.d.b.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-532f * -452f)), false))));
}

fn func_2(arg_0: Struct_5) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-867f, arg_0.b.d.x)) + arg_0.b.d.x));
    let var_1 = Struct_4(1i << (u_input.a.x % 32u));
    var var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(max(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1627f * var_2.b.d.x)))), _wgslsmith_f_op_f32(1000f + var_2.a.x)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(arg_0.a, _wgslsmith_f_op_vec3_f32(arg_0.a - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, var_2.b.d.x, -566f), var_2.b.d.zzy, arg_0.b.e)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(553f, arg_0.a.x, 1000f) + var_2.b.d.zzz) * _wgslsmith_f_op_vec3_f32(-arg_0.b.d.ywx)))), true)));
    var_2 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1072f + 1640f), 2147f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.a, Struct_2(vec4<bool>(true, arg_0.b.a, true, false), Struct_1(var_2.b.a, false, vec2<u32>(arg_0.b.c.x, 95620u), arg_0.b.d, vec3<bool>(arg_0.b.a, true, true))), Struct_3(arg_0.a.x, 42831u, true, Struct_2(vec4<bool>(false, true, true, var_2.b.a), var_2.b), Struct_2(vec4<bool>(true, arg_0.b.a, true, arg_0.b.b), Struct_1(false, true, vec2<u32>(u_input.a.x, 13975u), var_2.b.d, vec3<bool>(false, var_2.b.a, true))))))) + _wgslsmith_f_op_f32(round(-1289f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_3.x, 682f))))), Struct_1(false, false, u_input.a.zx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_3.x, var_2.b.d.x, var_3.x, var_3.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_0.b.d)))), !(!arg_0.b.e)));
    return Struct_2(vec4<bool>(!select(var_2.b.a | true, true, !arg_0.b.b), select(true, true, !(4294967295u != var_2.b.c.x)), arg_0.b.a | !arg_0.b.a, !any(select(arg_0.b.e, vec3<bool>(false, true, var_2.b.e.x), arg_0.b.b))), Struct_1(true, false, vec2<u32>(~(~var_2.b.c.x), _wgslsmith_div_u32(1u, ~8888u)), _wgslsmith_f_op_vec4_f32(-arg_0.b.d), var_2.b.e));
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_3, arg_3: Struct_3) -> i32 {
    let var_0 = arg_2;
    let var_1 = Struct_3(func_2(Struct_5(_wgslsmith_f_op_vec3_f32(var_0.d.b.d.ywy * var_0.d.b.d.yww), var_0.d.b)).b.d.x, arg_3.d.b.c.x, !(arg_3.e.b.d.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d.b.d.x))), Struct_2(vec4<bool>(!arg_3.d.b.b, _wgslsmith_f_op_f32(floor(arg_3.a)) == -405f, true, true), func_2(Struct_5(vec3<f32>(arg_2.a, -677f, 885f), var_0.e.b)).b), Struct_2(vec4<bool>(true, arg_2.e.a.x, _wgslsmith_f_op_f32(-arg_2.e.b.d.x) > _wgslsmith_f_op_f32(-arg_2.d.b.d.x), !(true & var_0.e.a.x)), func_2(Struct_5(func_2(Struct_5(arg_2.d.b.d.yxy, arg_3.e.b)).b.d.zyz, arg_2.e.b)).b));
    var var_2 = !any(!(!arg_3.d.a));
    var_2 = var_0.d.b.b;
    let var_3 = _wgslsmith_f_op_vec3_f32(-var_0.d.b.d.xzw);
    return abs(min(abs(-arg_0.x & -22710i), reverseBits(2147483647i) << (arg_2.b % 32u)));
}

fn func_5(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_5, arg_3: vec3<bool>) -> Struct_4 {
    var var_0 = !(-3263i <= arg_0) || func_2(Struct_5(arg_2.a, arg_2.b)).b.a;
    var var_1 = 1i;
    var_0 = !(false != all(arg_3.xx)) || any(vec2<bool>(!arg_3.x, false));
    let var_2 = Struct_2(!vec4<bool>(false, !(arg_2.b.d.x >= 2939f), all(select(arg_3, arg_2.b.e, arg_2.b.e.x)), (arg_0 != 21749i) & (arg_1.x | false)), arg_2.b);
    let var_3 = !select(true, select(!(!arg_2.b.b), !(!arg_3.x), true), true);
    return Struct_4(arg_0);
}

fn func_1() -> bool {
    var var_0 = func_5(func_4(vec3<i32>(0i, _wgslsmith_add_i32(0i, -75111i), ~(-2147483647i)), max(u_input.a.x, 15289u), Struct_3(_wgslsmith_f_op_f32(-1302f * -338f), ~u_input.a.x, true, func_2(Struct_5(vec3<f32>(1122f, 530f, 2010f), Struct_1(false, false, u_input.a.zx, vec4<f32>(146f, 1731f, -855f, 842f), vec3<bool>(true, true, true)))), Struct_2(vec4<bool>(false, false, true, true), Struct_1(true, true, vec2<u32>(4294967295u, 1u), vec4<f32>(582f, 2449f, 894f, 114f), vec3<bool>(true, true, true)))), Struct_3(_wgslsmith_f_op_f32(func_3(u_input.a, Struct_2(vec4<bool>(true, true, true, false), Struct_1(true, false, u_input.a.yy, vec4<f32>(340f, -113f, -1000f, -1493f), vec3<bool>(false, true, false))), Struct_3(-725f, 24812u, false, Struct_2(vec4<bool>(true, false, true, true), Struct_1(true, false, vec2<u32>(4294967295u, 0u), vec4<f32>(-893f, 1514f, -1883f, -676f), vec3<bool>(false, true, false))), Struct_2(vec4<bool>(false, true, false, true), Struct_1(true, true, u_input.a.xz, vec4<f32>(435f, 2199f, -131f, -570f), vec3<bool>(true, true, false)))))), _wgslsmith_clamp_u32(u_input.a.x, 0u, u_input.a.x), all(vec3<bool>(true, true, true)), func_2(Struct_5(vec3<f32>(241f, -393f, -723f), Struct_1(false, true, u_input.a.zx, vec4<f32>(-522f, 414f, -1232f, -349f), vec3<bool>(false, false, true)))), Struct_2(vec4<bool>(false, false, true, false), Struct_1(false, true, u_input.a.yz, vec4<f32>(1115f, -952f, 1072f, 1047f), vec3<bool>(false, false, true))))) ^ ~(-1i), select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), func_2(Struct_5(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -508f, -297f), vec3<f32>(-182f, 543f, 844f)), func_2(Struct_5(vec3<f32>(128f, -1276f, 497f), Struct_1(false, false, vec2<u32>(u_input.a.x, u_input.a.x), vec4<f32>(-879f, 249f, 1514f, 757f), vec3<bool>(false, false, false)))).b)).a, vec4<bool>(all(vec4<bool>(true, true, true, true)), true, !(u_input.a.x > 4294967295u), true)), Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-796f, 1040f, -608f))))), func_2(Struct_5(_wgslsmith_div_vec3_f32(vec3<f32>(-1356f, 1425f, 1000f), vec3<f32>(-1625f, -1153f, -251f)), Struct_1(false, true, u_input.a.yz, vec4<f32>(-368f, 286f, 700f, 702f), vec3<bool>(false, false, true)))).b), select(vec3<bool>(true, true, true), select(vec3<bool>(select(false, false, false), true, true), select(func_2(Struct_5(vec3<f32>(-1113f, 141f, -1043f), Struct_1(false, true, u_input.a.yz, vec4<f32>(-1000f, 1587f, -1120f, 1060f), vec3<bool>(true, true, false)))).a.xyy, vec3<bool>(false, true, true), true), vec3<bool>(true, false, true)), true));
    return all(vec3<bool>(true, true, true));
}

fn func_6(arg_0: bool, arg_1: vec2<bool>, arg_2: i32, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = Struct_1(any(select(select(func_2(Struct_5(vec3<f32>(-1440f, -1000f, 400f), Struct_1(arg_0, true, u_input.a.xy, vec4<f32>(-1000f, -704f, 924f, -635f), vec3<bool>(true, true, arg_1.x)))).b.e, !vec3<bool>(arg_1.x, false, true), func_2(Struct_5(vec3<f32>(-999f, -962f, 951f), Struct_1(false, arg_0, u_input.a.xx, vec4<f32>(2300f, -527f, -1637f, 1236f), vec3<bool>(arg_0, false, arg_0)))).a.wyw), vec3<bool>(func_2(Struct_5(vec3<f32>(-1487f, 849f, 484f), Struct_1(arg_1.x, false, vec2<u32>(4294967295u, u_input.a.x), vec4<f32>(-1593f, -506f, 1372f, -317f), vec3<bool>(false, arg_0, true)))).b.b, true | arg_1.x, all(vec2<bool>(arg_0, arg_0))), u_input.a.x >= u_input.a.x)), func_2(Struct_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1000f, -633f)), Struct_1(false | arg_1.x, !arg_1.x, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yz), vec4<f32>(1324f, 106f, -885f, -999f), !vec3<bool>(true, arg_1.x, arg_1.x)))).a.x, vec2<u32>(8828u, ~((u_input.a.x ^ 1u) ^ ~u_input.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-883f, -493f, 1212f, -1238f))))), func_2(Struct_5(vec3<f32>(_wgslsmith_f_op_f32(round(1245f)), 979f, -478f), Struct_1(false, arg_1.x, u_input.a.yy, _wgslsmith_f_op_vec4_f32(vec4<f32>(-498f, 284f, -252f, 150f) * vec4<f32>(1040f, -1405f, -1311f, 543f)), select(vec3<bool>(true, true, arg_1.x), vec3<bool>(arg_0, arg_1.x, false), vec3<bool>(true, arg_1.x, true))))).a.zyy);
    var var_1 = countOneBits(0u);
    var_1 = 16021u;
    let var_2 = Struct_4(-1i);
    var var_3 = func_5(~2147483647i, select(vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -276f) < _wgslsmith_f_op_f32(sign(var_0.d.x)), all(!vec2<bool>(arg_1.x, true)), var_0.a, all(func_2(Struct_5(vec3<f32>(var_0.d.x, 769f, 2416f), var_0)).b.e)), vec4<bool>(false, true, var_0.a, arg_0), vec4<bool>(any(!vec4<bool>(false, var_0.a, var_0.e.x, false)), var_0.b, true, false || !arg_0)), Struct_5(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.d.ywy), var_0.d.yyy, true)), func_2(Struct_5(var_0.d.wxw, func_2(Struct_5(var_0.d.wxz, Struct_1(true, arg_0, vec2<u32>(1u, u_input.a.x), var_0.d, vec3<bool>(var_0.a, var_0.e.x, var_0.b)))).b)).b), select(select(!(!var_0.e), !(!var_0.e), func_2(Struct_5(var_0.d.xxz, Struct_1(true, true, vec2<u32>(var_0.c.x, u_input.a.x), vec4<f32>(var_0.d.x, var_0.d.x, 782f, -1592f), var_0.e))).b.e), !func_2(Struct_5(var_0.d.zxy, Struct_1(arg_0, arg_1.x, vec2<u32>(var_0.c.x, var_0.c.x), var_0.d, vec3<bool>(arg_0, false, true)))).b.e, func_2(Struct_5(vec3<f32>(var_0.d.x, var_0.d.x, var_0.d.x), func_2(Struct_5(var_0.d.yxz, var_0)).b)).b.e));
    return func_2(Struct_5(vec3<f32>(482f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(177f, -700f)), _wgslsmith_div_f32(810f, _wgslsmith_f_op_f32(-1000f + var_0.d.x))), func_2(Struct_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, var_0.d.x, var_0.d.x) - var_0.d.wzz), var_0)).b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(all(vec4<bool>(true, all(vec4<bool>(false, true, false, false)) | func_1(), true, func_2(Struct_5(vec3<f32>(784f, 683f, -286f), Struct_1(true, true, vec2<u32>(u_input.a.x, u_input.a.x), vec4<f32>(936f, 144f, 1951f, 153f), vec3<bool>(true, true, true)))).b.a)), !(!select(vec2<bool>(false, true), vec2<bool>(false, false), any(vec3<bool>(false, true, false)))), 41758i, -min(~vec3<i32>(1i, 1i, 1i), vec3<i32>(select(1i, 25690i, true), _wgslsmith_add_i32(-2147483647i, 11827i), -1i)));
    let var_1 = _wgslsmith_f_op_f32(1311f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b.d.x))));
    var var_2 = Struct_5(vec3<f32>(-1398f, var_0.b.d.x, func_2(Struct_5(vec3<f32>(var_1, var_1, 702f), var_0.b)).b.d.x), var_0.b);
    let var_3 = Struct_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.a, Struct_2(vec4<bool>(false, var_0.a.x, false, var_0.b.a), var_0.b), Struct_3(var_2.a.x, 53679u, true, Struct_2(vec4<bool>(false, var_2.b.a, true, var_0.a.x), Struct_1(var_0.b.e.x, var_2.b.b, vec2<u32>(var_0.b.c.x, u_input.a.x), var_2.b.d, vec3<bool>(var_2.b.b, true, true))), Struct_2(var_0.a, Struct_1(false, false, vec2<u32>(24759u, 1u), vec4<f32>(1583f, 824f, -1182f, var_1), var_0.a.zww))))) * _wgslsmith_f_op_f32(var_0.b.d.x - 146f)), _wgslsmith_f_op_f32(round(var_2.b.d.x)), 701f) - var_0.b.d.zwy), func_2(Struct_5(var_2.a, func_2(Struct_5(vec3<f32>(var_1, -1449f, var_2.a.x), var_2.b)).b)).b);
    var var_4 = ~(max(vec2<u32>(0u, var_2.b.c.x), vec2<u32>(~61712u, abs(1u))) | ~(~(~var_0.b.c)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.d.x);
}

