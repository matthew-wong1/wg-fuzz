struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
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

var<private> global0: array<vec4<i32>, 3>;

var<private> global1: bool;

var<private> global2: array<vec3<bool>, 30> = array<vec3<bool>, 30>(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true));

var<private> global3: array<vec4<f32>, 24> = array<vec4<f32>, 24>(vec4<f32>(1948f, 637f, -1000f, -503f), vec4<f32>(108f, 1000f, -267f, -100f), vec4<f32>(534f, -1000f, -563f, -959f), vec4<f32>(1559f, -266f, 1121f, -161f), vec4<f32>(1399f, -218f, -620f, 1252f), vec4<f32>(440f, -591f, 968f, -262f), vec4<f32>(1207f, 1052f, -708f, -1795f), vec4<f32>(-615f, 671f, -143f, -1319f), vec4<f32>(-1000f, 1237f, 1828f, -421f), vec4<f32>(610f, 236f, -1882f, 361f), vec4<f32>(-1220f, 330f, 359f, -1000f), vec4<f32>(1000f, 647f, -299f, -363f), vec4<f32>(-534f, 575f, 455f, 917f), vec4<f32>(171f, 1296f, -313f, 203f), vec4<f32>(768f, -697f, -961f, 1665f), vec4<f32>(758f, -1908f, -1660f, 315f), vec4<f32>(-2409f, 541f, -941f, -1293f), vec4<f32>(-1013f, -914f, 121f, 140f), vec4<f32>(181f, -1544f, 1421f, -1110f), vec4<f32>(-533f, 3018f, 1114f, -1455f), vec4<f32>(-559f, -1471f, 1671f, -525f), vec4<f32>(-1274f, 446f, 1907f, -1000f), vec4<f32>(-1277f, -267f, -283f, -492f), vec4<f32>(-936f, -189f, -1274f, 191f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool) -> vec2<i32> {
    var var_0 = Struct_2(~vec2<i32>(firstTrailingBit(-10343i), -_wgslsmith_dot_vec2_i32(vec2<i32>(-15480i, -2147483647i), u_input.a.zy)));
    var var_1 = ~(~(~_wgslsmith_sub_u32(countOneBits(u_input.b.x), ~u_input.c.x)));
    var var_2 = Struct_2(vec2<i32>(37389i & ~u_input.a.x, _wgslsmith_div_i32(var_0.a.x, u_input.a.x)));
    var_1 = _wgslsmith_dot_vec3_u32(~(~_wgslsmith_add_vec3_u32(u_input.b, abs(u_input.c))), ~_wgslsmith_add_vec3_u32(u_input.c, ~u_input.c << (vec3<u32>(6768u, 38091u, 56134u) % vec3<u32>(32u))));
    var var_3 = reverseBits(var_2.a.x);
    return _wgslsmith_div_vec2_i32(abs(_wgslsmith_mult_vec2_i32(firstLeadingBit(var_0.a), var_0.a) | (~vec2<i32>(u_input.a.x, 1i) ^ vec2<i32>(-14065i, 1i))), ~(-vec2<i32>(-2147483647i, _wgslsmith_div_i32(var_0.a.x, -1i))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<f32>) -> Struct_2 {
    global2 = array<vec3<bool>, 30>();
    let var_0 = Struct_2(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(countOneBits(select(vec2<i32>(1i, arg_1.a.x), arg_1.a, vec2<bool>(arg_0.d, arg_0.d))), _wgslsmith_add_vec2_i32(vec2<i32>(arg_1.a.x, 2147483647i), arg_1.a | arg_1.a)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -u_input.a.wz, -reverseBits(u_input.a.zw), u_input.a.zw | func_3(arg_0.d))));
    let var_1 = vec3<u32>(_wgslsmith_dot_vec2_u32(select(select(u_input.c.xy, ~u_input.d.yz, any(vec4<bool>(arg_0.d, false, arg_0.d, arg_0.d))), vec2<u32>(max(u_input.b.x, arg_0.b), _wgslsmith_div_u32(u_input.c.x, 0u)), arg_0.d), u_input.c.yy), 1u, select(arg_0.b | ~0u, 0u, false));
    global1 = arg_0.d;
    global0 = array<vec4<i32>, 3>();
    return Struct_2(var_0.a);
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> u32 {
    global2 = array<vec3<bool>, 30>();
    let var_0 = ~(~_wgslsmith_mult_vec2_u32(u_input.c.xz, firstTrailingBit(u_input.b.yy)));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1855f)), _wgslsmith_f_op_f32(trunc(-1000f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(988f, 1700f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-549f)), -1069f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -317f) * -296f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -695f))))), 16144u, global3[_wgslsmith_index_u32(var_0.x, 24u)], !(firstTrailingBit(u_input.c.x) != reverseBits(19853u)));
    let var_2 = var_1;
    global1 = any(select(!select(vec2<bool>(var_2.d, false), select(vec2<bool>(var_1.d, var_1.d), vec2<bool>(var_2.d, var_2.d), var_1.d), false), vec2<bool>(!(true || var_2.d), false), var_2.d));
    return ~reverseBits(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_2.b, 25062u, u_input.b.x), vec4<u32>(83859u, 4294967295u, var_1.b, 57460u)) << ((63274u & var_1.b) % 32u), ~var_0.x, var_0.x));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = !(!(!any(global2[_wgslsmith_index_u32(~43099u, 30u)])));
    let var_1 = _wgslsmith_f_op_f32(arg_2.c.x - arg_2.a.x);
    global1 = arg_2.d;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.c.yxw)), min(9523u, reverseBits(arg_2.b) | ~_wgslsmith_add_u32(1u, u_input.b.x)), vec4<f32>(var_1, _wgslsmith_f_op_f32(step(142f, var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x))), _wgslsmith_div_f32(-416f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(2287f, var_1), _wgslsmith_f_op_f32(763f - 737f))))), arg_1.x);
    global1 = any(arg_1);
    return func_2(Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.c.zzw)))), 12456u, global3[_wgslsmith_index_u32(max(abs(countOneBits(0u)), 10974u), 24u)], arg_1.x), func_2(Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.a.x, arg_2.a.x, -1044f), arg_2.a))), 20440u, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~var_2.b, firstTrailingBit(0u)), 24u)], !(!arg_1.x)), Struct_2((arg_0.a << (u_input.b.zy % vec2<u32>(32u))) ^ vec2<i32>(1i, -4233i)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-822f, var_2.c.x, var_2.a.x) * arg_2.a), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2.a.x, var_1, arg_2.c.x))))), vec3<f32>(var_2.c.x, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(2499f - -691f)), all(select(vec4<bool>(false, arg_2.d, false, true), vec4<bool>(var_2.d, var_2.d, arg_1.x, false), arg_2.d))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1000f, arg_2.c.x), _wgslsmith_div_f32(-1000f, var_2.c.x), _wgslsmith_f_op_f32(trunc(arg_2.a.x))) + _wgslsmith_f_op_vec3_f32(floor(arg_2.a)))));
}

fn func_6(arg_0: bool, arg_1: vec3<u32>, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(vec3<f32>(1f, 1f, 1f), ~(~u_input.d.x << (_wgslsmith_add_u32(~arg_1.x, countOneBits(arg_1.x)) % 32u)), global3[_wgslsmith_index_u32(~(~u_input.c.x), 24u)], !(arg_0 | any(vec3<bool>(false, arg_0, arg_0))));
    global2 = array<vec3<bool>, 30>();
    var var_1 = Struct_2(_wgslsmith_div_vec2_i32(reverseBits(u_input.a.yw & -vec2<i32>(arg_3.a.x, u_input.a.x)), vec2<i32>(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), func_3(!var_0.d).x)));
    var var_2 = false;
    let var_3 = true;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(408f, var_0.c.x, var_0.c.x) * var_0.c.yyx))))), 0u, vec4<f32>(_wgslsmith_f_op_f32(round(var_0.a.x)), _wgslsmith_f_op_f32(round(var_0.c.x)), var_0.c.x, var_0.a.x), var_3);
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    var var_0 = !all(vec4<bool>(true, true, true, true));
    var var_1 = func_6(true, u_input.d >> (u_input.b % vec3<u32>(32u)), 20795u, func_5(Struct_2(vec2<i32>(-62250i, firstTrailingBit(u_input.a.x))), vec2<bool>(_wgslsmith_f_op_f32(floor(2131f)) <= _wgslsmith_f_op_f32(trunc(-205f)), !all(vec4<bool>(false, false, false, false))), Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, 369f, 1000f), vec3<f32>(-964f, 699f, 2794f))))), func_4(func_2(Struct_1(vec3<f32>(-1000f, 1000f, -999f), 0u, global3[_wgslsmith_index_u32(61710u, 24u)], true), Struct_2(vec2<i32>(28945i, u_input.a.x)), vec3<f32>(-304f, 101f, -1208f)), -arg_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1506f, 281f, -196f, 361f)), true)));
    global1 = var_1.d;
    let var_2 = !vec3<bool>(!var_1.d, !(select(var_1.d, var_1.d, var_1.d) || select(var_1.d, false, false)), !(!(var_1.d | var_1.d)));
    var var_3 = 1992f;
    return ~countOneBits(var_1.b);
}

fn func_7(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_1 {
    global0 = array<vec4<i32>, 3>();
    var var_0 = -u_input.a.yw;
    var var_1 = vec2<bool>(all(vec2<bool>(!(arg_0.x >= 4294967295u), true)), true);
    global0 = array<vec4<i32>, 3>();
    global2 = array<vec3<bool>, 30>();
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1061f, arg_1.x)))), arg_1.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-1142f + arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(105f, arg_1.x, false)) - arg_1.x))), _wgslsmith_div_u32(~arg_0.x, ~0u), _wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(func_4(arg_2, 0i), 24u)] + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -323f), _wgslsmith_f_op_f32(abs(arg_1.x)), arg_1.x, _wgslsmith_f_op_f32(-arg_1.x)) * global3[_wgslsmith_index_u32(u_input.c.x, 24u)])), select(var_1.x, !var_1.x, true));
}

fn func_8(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = false;
    var var_1 = true;
    global2 = array<vec3<bool>, 30>();
    var_0 = arg_1.b == u_input.b.x;
    let var_2 = Struct_2(vec2<i32>(firstLeadingBit(1i), _wgslsmith_clamp_i32(arg_0 & u_input.a.x, func_3(arg_1.d != false).x, func_3(true).x)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(min(countOneBits(-2147483647i), -countOneBits(~(-2147483647i))), func_7(vec3<u32>(~(~u_input.b.x), u_input.d.x, ~func_1(vec4<i32>(30477i, u_input.a.x, u_input.a.x, 76179i))), vec2<f32>(_wgslsmith_f_op_f32(max(-1243f, -1258f)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -1082f))), func_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1533f, -1047f, -125f)), 44128u, _wgslsmith_f_op_vec4_f32(vec4<f32>(228f, -617f, 244f, 159f) + global3[_wgslsmith_index_u32(0u, 24u)]), all(vec3<bool>(false, true, false))), func_5(func_5(Struct_2(vec2<i32>(u_input.a.x, 2147483647i)), vec2<bool>(false, true), Struct_1(vec3<f32>(-433f, -1032f, -317f), u_input.d.x, global3[_wgslsmith_index_u32(4294967295u, 24u)], false)), vec2<bool>(true, true), func_6(true, vec3<u32>(u_input.b.x, u_input.c.x, 72640u), u_input.b.x, Struct_2(u_input.a.wz))), vec3<f32>(1f, 1f, 1f))));
    var var_1 = 1u;
    global0 = array<vec4<i32>, 3>();
    var var_2 = func_2(var_0, func_2(Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.c.xwz), _wgslsmith_mult_u32(~34177u, var_0.b), _wgslsmith_div_vec4_f32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, u_input.d.x, 16820u, 4044u), vec4<u32>(4294967295u, 29480u, 1u, u_input.c.x)), 24u)], _wgslsmith_f_op_vec4_f32(abs(var_0.c))), var_0.d), func_2(func_8(i32(-1i) * -1i, var_0), func_5(Struct_2(u_input.a.yz), vec2<bool>(false, true), var_0), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, var_0.a.x, var_0.c.x) - vec3<f32>(971f, var_0.c.x, var_0.c.x))))), vec3<f32>(var_0.a.x, func_7(_wgslsmith_mod_vec3_u32(u_input.d, vec3<u32>(var_0.b, 1u, u_input.d.x)), var_0.a.xz, func_2(Struct_1(vec3<f32>(var_0.a.x, -1000f, 1173f), u_input.d.x, vec4<f32>(var_0.a.x, -488f, var_0.c.x, -2739f), var_0.d), Struct_2(u_input.a.zz), vec3<f32>(-1905f, -156f, var_0.c.x))).a.x, var_0.c.x)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(var_0.c.zxx, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.c.x, 1000f, 700f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1290f, -1386f, 1368f))))))))).a.x;
    let var_3 = var_0.d;
    var var_4 = reverseBits(u_input.c);
    let var_5 = vec3<f32>(func_6(var_0.d, vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(65362u, 60309u, 41653u), vec3<u32>(8120u, var_4.x, u_input.c.x)), abs(_wgslsmith_sub_u32(u_input.c.x, 15762u)), ~func_4(Struct_2(vec2<i32>(-2147483647i, -2067i)), -33218i)), 4294967295u, func_5(func_2(var_0, func_5(Struct_2(u_input.a.wz), vec2<bool>(true, var_0.d), Struct_1(var_0.a, var_4.x, vec4<f32>(269f, 687f, 266f, var_0.a.x), false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_0.c.x, var_0.c.x) - vec3<f32>(-1307f, 1516f, -1367f))), vec2<bool>(767i == u_input.a.x, var_3 & var_3), var_0)).a.x, _wgslsmith_f_op_f32(f32(-1f) * -639f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_f_op_f32(max(var_0.a.x, _wgslsmith_div_f32(var_0.c.x, -304f))))));
    let var_6 = ~u_input.a.x;
    global3 = array<vec4<f32>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_5.x)))), abs(max(vec3<i32>(2147483647i, u_input.a.x, 40004i) & u_input.a.xxz, _wgslsmith_mult_vec3_i32(vec3<i32>(0i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, var_6, 33556i)))) & vec3<i32>(~(~0i), _wgslsmith_sub_i32(51053i, ~var_6), ~(~(-1i))));
}

