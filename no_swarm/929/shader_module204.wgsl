struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: f32,
    e: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: vec3<f32>,
}

struct Struct_5 {
    a: bool,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(false, true));

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 18034u);

var<private> global2: bool = true;

var<private> global3: array<vec3<u32>, 3>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: vec4<i32>) -> u32 {
    let var_0 = Struct_3(-1428f, Struct_1(_wgslsmith_sub_vec3_i32(arg_2.xwz, vec3<i32>(max(u_input.c, -30477i), firstTrailingBit(-1i), ~arg_2.x))), Struct_2(!vec2<bool>(global0.a.x, !arg_1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + -979f))))), arg_2.x);
    let var_1 = _wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(~0u, _wgslsmith_add_u32(u_input.a.x, 11641u))), u_input.a.zw) ^ vec2<u32>(1u, 4294967295u);
    var var_2 = var_1.x;
    var var_3 = arg_2.x;
    global0 = var_0.c;
    return ~(~(~(~u_input.a.x)));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_2) -> Struct_4 {
    let var_0 = Struct_2(!select(vec2<bool>(global0.a.x, !global0.a.x), !select(vec2<bool>(arg_2.a.x, global0.a.x), vec2<bool>(true, global0.a.x), true), all(vec2<bool>(false, false)) & true));
    var var_1 = any(vec2<bool>(true, ((u_input.c <= -2147483647i) & (false || arg_2.a.x)) != var_0.a.x));
    let var_2 = ~(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(firstTrailingBit(1u), _wgslsmith_add_u32(20004u, 24289u)), _wgslsmith_sub_u32(func_3(arg_1.xwx, Struct_5(global0.a.x, vec4<bool>(global0.a.x, var_0.a.x, var_0.a.x, arg_2.a.x)), vec4<i32>(u_input.d, u_input.b, -10693i, u_input.c)), global1.x)));
    var_1 = u_input.b == u_input.b;
    let var_3 = all(select(vec4<bool>(false, true, var_0.a.x, (var_0.a.x & false) & global0.a.x), vec4<bool>(true, var_0.a.x, false, any(!vec2<bool>(var_0.a.x, var_0.a.x))), false));
    return Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.zz - _wgslsmith_f_op_vec2_f32(step(arg_1.yz, arg_1.wx))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-127f, arg_0)))))), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, true)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_0))))), Struct_1(vec3<i32>(firstLeadingBit(-40818i), _wgslsmith_add_i32(26714i, u_input.d), -32251i)), Struct_2(select(vec2<bool>(global0.a.x, global0.a.x), var_0.a, !arg_2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(abs(1113f))) - arg_0), max(-u_input.d, ~u_input.c | u_input.c)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, 385f, 924f), _wgslsmith_f_op_vec3_f32(-arg_1.xwy))), arg_1.www), arg_1.yxz)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_5, arg_3: vec2<f32>) -> Struct_3 {
    global1 = u_input.a.yx;
    let var_0 = arg_0.b.c;
    global2 = true;
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_3);
    let var_2 = select(global3[_wgslsmith_index_u32(global1.x, 3u)], ~countOneBits(~vec3<u32>(global1.x, u_input.a.x, global1.x)), select(select(select(!vec3<bool>(true, true, arg_0.b.c.a.x), arg_2.b.yzw, select(arg_2.b.wyx, arg_2.b.zzy, arg_0.b.c.a.x)), arg_2.b.xww, arg_2.b.zyx), !(!select(vec3<bool>(var_0.a.x, true, true), arg_2.b.zwz, arg_2.b.xyy)), !arg_2.b.yyx));
    return arg_0.b;
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: Struct_4) -> Struct_5 {
    let var_0 = !func_4(func_2(_wgslsmith_f_op_f32(arg_2.a.x + arg_2.b.a), vec4<f32>(_wgslsmith_f_op_f32(sign(arg_2.b.a)), -1824f, 732f, _wgslsmith_div_f32(arg_2.b.d, arg_2.c.x)), Struct_2(func_2(1012f, vec4<f32>(1744f, -1147f, 1328f, arg_2.a.x), Struct_2(vec2<bool>(global0.a.x, arg_2.b.c.a.x))).b.c.a)), Struct_1(_wgslsmith_div_vec3_i32(arg_2.b.b.a, ~arg_2.b.b.a)), Struct_5(true, vec4<bool>(select(true, arg_2.b.c.a.x, true), arg_2.b.c.a.x, true, false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_2.b.d)), _wgslsmith_f_op_f32(495f - -217f)))).c.a;
    let var_1 = _wgslsmith_dot_vec2_u32(abs(firstLeadingBit(countOneBits(vec2<u32>(0u, arg_0.x))) << (vec2<u32>(~4294967295u, global1.x | 125721u) % vec2<u32>(32u))), countOneBits(~vec2<u32>(arg_0.x, max(1u, 1u))));
    var var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1675f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(arg_2.a.x - 480f), _wgslsmith_f_op_f32(arg_2.b.d * 2558f), -223f, _wgslsmith_f_op_f32(arg_2.a.x - 333f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.b.d, -469f, arg_2.a.x, -215f))))))), Struct_2(arg_2.b.c.a)).b.b;
    var_2 = func_4(Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1466f, _wgslsmith_f_op_f32(max(-1226f, arg_2.a.x)))), Struct_3(_wgslsmith_f_op_f32(arg_2.b.a * _wgslsmith_f_op_f32(abs(878f))), Struct_1(abs(vec3<i32>(arg_2.b.e, var_2.a.x, var_2.a.x))), func_2(_wgslsmith_f_op_f32(-750f + arg_2.b.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.a, arg_2.c.x, -422f, arg_2.a.x) - vec4<f32>(arg_2.a.x, arg_2.b.d, -323f, -1430f)), arg_2.b.c).b.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.c.x, arg_2.a.x) * _wgslsmith_div_f32(528f, arg_2.c.x)), ~var_2.a.x), vec3<f32>(-484f, 1119f, 1032f)), Struct_1(reverseBits(-(vec3<i32>(u_input.b, -2147483647i, arg_2.b.e) ^ arg_2.b.b.a))), Struct_5(true & !func_2(-632f, vec4<f32>(1062f, -284f, arg_2.a.x, arg_2.a.x), Struct_2(vec2<bool>(false, arg_2.b.c.a.x))).b.c.a.x, select(vec4<bool>(!global0.a.x, true, global0.a.x, var_0.x), vec4<bool>(true, arg_2.b.c.a.x, any(vec2<bool>(global0.a.x, true)), select(true, true, global0.a.x)), false)), _wgslsmith_f_op_vec2_f32(min(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)), vec4<f32>(_wgslsmith_f_op_f32(arg_2.c.x * arg_2.b.a), _wgslsmith_f_op_f32(f32(-1f) * -1717f), _wgslsmith_f_op_f32(exp2(arg_2.c.x)), arg_2.c.x), arg_2.b.c).c.zy, _wgslsmith_f_op_vec2_f32(arg_2.a - vec2<f32>(arg_2.c.x, _wgslsmith_f_op_f32(-1482f + arg_2.a.x)))))).b;
    var var_3 = !arg_2.b.c.a.x;
    return Struct_5(any(vec3<bool>(true, arg_2.b.c.a.x, arg_2.b.c.a.x)), vec4<bool>(var_0.x && true, !(!(false || arg_2.b.c.a.x)), !(!all(vec2<bool>(global0.a.x, false))), true));
}

fn func_6(arg_0: Struct_5, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = global1.x;
    var var_1 = global1.x;
    let var_2 = func_2(290f, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-396f, 229f, -495f, 959f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1309f, 339f, 1942f, 1000f)))))), Struct_2(global0.a)).b.b;
    var var_3 = func_5(abs(abs(u_input.a.xyw)), ~(~vec2<u32>(4294967295u, min(u_input.a.x, u_input.a.x))), func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(394f))), -251f, (u_input.a.x ^ arg_1.x) == reverseBits(34763u))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1721f, -1453f, -136f, 2689f))))), Struct_2(vec2<bool>(!global0.a.x, all(arg_0.b)))));
    global2 = true;
    return Struct_1(vec3<i32>(_wgslsmith_div_i32(~_wgslsmith_div_i32(1i, u_input.c), ~(35807i >> (1u % 32u))), i32(-1i) * -1i, var_2.a.x));
}

fn func_1() -> Struct_3 {
    global2 = true || !(global0.a.x | global0.a.x);
    let var_0 = func_6(func_5(global3[_wgslsmith_index_u32(~(~(~2077u)), 3u)], _wgslsmith_div_vec2_u32(u_input.a.yx, ~vec2<u32>(u_input.a.x, 86977u) ^ _wgslsmith_div_vec2_u32(u_input.a.zy, vec2<u32>(1u, global1.x))), Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1360f, 973f) - vec2<f32>(834f, 1108f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1169f, 1000f), vec2<f32>(-1888f, 1327f), true))), func_4(func_2(869f, vec4<f32>(684f, 882f, 397f, 1000f), Struct_2(vec2<bool>(true, true))), func_2(-1866f, vec4<f32>(456f, 111f, -1601f, -639f), Struct_2(global0.a)).b.b, Struct_5(true, vec4<bool>(global0.a.x, true, global0.a.x, global0.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1206f, -591f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1207f, -592f) - vec3<f32>(-850f, -888f, 286f)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1448f, -1548f, -2070f)))))), firstTrailingBit(u_input.a.zw));
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2125f, -1527f)), vec2<f32>(1f, 1f), vec2<bool>(false, true))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-405f, _wgslsmith_div_f32(726f, 673f)) - vec2<f32>(_wgslsmith_f_op_f32(sign(1314f)), _wgslsmith_f_op_f32(f32(-1f) * -1786f)))), func_4(Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-221f, -514f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1307f, -1000f) + vec2<f32>(631f, -476f))), Struct_3(1854f, Struct_1(vec3<i32>(u_input.c, -37769i, -107403i)), func_4(Struct_4(vec2<f32>(881f, -405f), Struct_3(-943f, var_0, Struct_2(vec2<bool>(false, false)), -357f, u_input.c), vec3<f32>(-148f, 1122f, -943f)), Struct_1(vec3<i32>(u_input.b, u_input.c, u_input.b)), Struct_5(false, vec4<bool>(true, global0.a.x, global0.a.x, global0.a.x)), vec2<f32>(1470f, -768f)).c, -369f, i32(-1i) * -7902i), vec3<f32>(_wgslsmith_f_op_f32(160f + -2904f), _wgslsmith_div_f32(211f, 673f), func_4(Struct_4(vec2<f32>(-200f, -1214f), Struct_3(137f, Struct_1(vec3<i32>(-1i, u_input.c, -17071i)), Struct_2(global0.a), -951f, var_0.a.x), vec3<f32>(641f, 533f, 529f)), Struct_1(var_0.a), Struct_5(true, vec4<bool>(global0.a.x, false, false, global0.a.x)), vec2<f32>(-718f, 3217f)).a)), Struct_1(func_2(1000f, vec4<f32>(1000f, -1230f, -1249f, 696f), Struct_2(global0.a)).b.b.a >> (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 20093u, 40453u), u_input.a.zyx) % vec3<u32>(32u))), func_5(u_input.a.xyx, ~(~u_input.a.xw), func_2(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2733f, -210f, 780f, -1509f) + vec4<f32>(-597f, -258f, 134f, 1373f)), Struct_2(global0.a))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(2630f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 1075f))), vec3<f32>(func_4(func_2(_wgslsmith_f_op_f32(f32(-1f) * -2905f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1013f, 299f, -616f, -128f), vec4<f32>(-154f, -184f, -315f, 1497f))), func_4(Struct_4(vec2<f32>(-1164f, -453f), Struct_3(-769f, Struct_1(vec3<i32>(-2147483647i, u_input.d, var_0.a.x)), Struct_2(global0.a), -2023f, var_0.a.x), vec3<f32>(-1511f, -231f, 275f)), var_0, Struct_5(global0.a.x, vec4<bool>(false, false, true, global0.a.x)), vec2<f32>(-1000f, 2059f)).c), var_0, func_5(abs(vec3<u32>(global1.x, 19362u, global1.x)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(global1.x, 0u)), func_2(2176f, vec4<f32>(1951f, 321f, -1645f, -433f), Struct_2(global0.a))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -494f), _wgslsmith_f_op_f32(sign(2165f)))).d, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-551f, _wgslsmith_f_op_f32(f32(-1f) * -961f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1245f)))))));
    var var_2 = func_2(var_1.a.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a.x)))), 1470f, _wgslsmith_div_f32(1508f, var_1.c.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(var_1.a.x * var_1.b.a))))), var_1.b.c).b.b;
    let var_3 = var_0.a.x;
    return func_2(var_1.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * 1848f))), _wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(671f * var_1.c.x)), var_1.c.x, _wgslsmith_f_op_f32(floor(1801f)))), func_4(Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1271f, var_1.c.x) * var_1.c.yy) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.c.x, -1000f)))), Struct_3(_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x), func_6(Struct_5(var_1.b.c.a.x, vec4<bool>(false, var_1.b.c.a.x, global0.a.x, global0.a.x)), u_input.a.yw), Struct_2(vec2<bool>(false, true)), _wgslsmith_f_op_f32(-var_1.b.d), _wgslsmith_mult_i32(-5057i, 23560i)), vec3<f32>(_wgslsmith_f_op_f32(var_1.b.a - var_1.c.x), _wgslsmith_f_op_f32(1148f * var_1.b.d), _wgslsmith_div_f32(2310f, 415f))), func_6(func_5(~u_input.a.zyx, ~vec2<u32>(11485u, u_input.a.x), func_2(var_1.b.d, vec4<f32>(var_1.b.a, -243f, var_1.b.d, -1000f), var_1.b.c)), vec2<u32>(global1.x, select(45351u, u_input.a.x, var_1.b.c.a.x))), func_5(vec3<u32>(_wgslsmith_sub_u32(global1.x, 26472u), 5092u, ~u_input.a.x), vec2<u32>(_wgslsmith_mod_u32(0u, global1.x), reverseBits(0u)), Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1397f, 1346f)), func_2(var_1.a.x, vec4<f32>(var_1.c.x, var_1.c.x, 162f, var_1.b.a), Struct_2(vec2<bool>(global0.a.x, true))).b, var_1.c)), _wgslsmith_div_vec2_f32(func_2(var_1.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, 347f, var_1.b.d, 702f)), func_2(var_1.b.a, vec4<f32>(-1207f, var_1.a.x, var_1.c.x, 479f), var_1.b.c).b.c).c.zx, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_1.c.yy), _wgslsmith_f_op_vec2_f32(-var_1.a))))).c).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(375f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, 260f, var_0.a, 704f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, -341f, 1227f, -808f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, -719f, -1826f, 478f))), vec4<bool>(all(vec3<bool>(var_0.c.a.x, true, global0.a.x)), true, all(vec4<bool>(var_0.c.a.x, false, true, false)), true))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-var_0.d), var_0.d, _wgslsmith_f_op_f32(trunc(-1794f)), _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, var_0.a, var_0.d, var_0.d) - vec4<f32>(-2306f, var_0.a, var_0.d, 763f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.d, var_0.a, var_0.d, var_0.a)))), func_2(920f, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.d, var_0.a, -1080f) * vec4<f32>(var_0.d, var_0.d, 792f, var_0.d)), var_0.c).b.c.a.x)))), Struct_2(select(func_4(func_2(var_0.d, vec4<f32>(var_0.a, 1355f, -994f, 1040f), var_0.c), var_0.b, func_5(vec3<u32>(global1.x, 0u, 1u), u_input.a.wy, Struct_4(vec2<f32>(var_0.a, var_0.a), Struct_3(-1434f, var_0.b, var_0.c, -1839f, 2147483647i), vec3<f32>(-1589f, 106f, var_0.d))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1690f, -338f) * vec2<f32>(270f, var_0.a))).c.a, global0.a, global0.a.x))).b.c;
    let var_1 = vec4<i32>(var_0.b.a.x, u_input.b, abs(-10358i), func_6(Struct_5(any(vec4<bool>(false, var_0.c.a.x, var_0.c.a.x, var_0.c.a.x)), vec4<bool>(global0.a.x, var_0.c.a.x, global0.a.x, var_0.c.a.x)), u_input.a.wz).a.x & (~1i ^ ~(var_0.e ^ -20090i)));
    let var_2 = func_2(_wgslsmith_f_op_f32(533f + var_0.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a, 462f, -158f, var_0.d))))))), func_4(func_2(-847f, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, var_0.a, var_0.a, var_0.d)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.a, 263f, 1228f, 162f))))), Struct_2(!global0.a)), Struct_1(_wgslsmith_mod_vec3_i32(var_1.zyy, var_0.b.a)), func_5(global3[_wgslsmith_index_u32(66980u, 3u)], ~(~vec2<u32>(1u, 0u)), Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(336f, var_0.d)), func_4(Struct_4(vec2<f32>(var_0.d, -1385f), Struct_3(var_0.d, var_0.b, Struct_2(vec2<bool>(false, var_0.c.a.x)), 148f, u_input.b), vec3<f32>(-128f, -588f, var_0.a)), var_0.b, Struct_5(false, vec4<bool>(true, global0.a.x, var_0.c.a.x, var_0.c.a.x)), vec2<f32>(var_0.a, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-628f, -1414f, 365f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1830f, var_0.a) + vec2<f32>(var_0.a, 992f))))).c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(~var_0.e, ~(-_wgslsmith_dot_vec2_i32(var_2.b.b.a.zy, var_2.b.b.a.zz))));
}

