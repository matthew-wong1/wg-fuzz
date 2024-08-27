struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: f32,
    d: bool,
    e: u32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<vec4<i32>, 19>;

var<private> global2: Struct_1;

var<private> global3: array<vec4<f32>, 17> = array<vec4<f32>, 17>(vec4<f32>(-1000f, -170f, -1049f, 682f), vec4<f32>(1597f, -1617f, 345f, -2471f), vec4<f32>(-1536f, -560f, -964f, 1000f), vec4<f32>(-475f, 506f, 2079f, -1627f), vec4<f32>(-1000f, 2605f, 1125f, 1635f), vec4<f32>(-2484f, -1369f, -1000f, -1000f), vec4<f32>(-2701f, 168f, -332f, 183f), vec4<f32>(-262f, -318f, -144f, 1070f), vec4<f32>(2716f, 598f, 1000f, -165f), vec4<f32>(565f, 209f, -1249f, -668f), vec4<f32>(-867f, -259f, 2810f, 549f), vec4<f32>(1004f, -249f, 1479f, 400f), vec4<f32>(-185f, 1744f, 687f, 210f), vec4<f32>(-1241f, 1408f, -523f, -560f), vec4<f32>(-1855f, -2909f, -160f, -1673f), vec4<f32>(1750f, 1501f, -1180f, 320f), vec4<f32>(212f, -1246f, -1000f, 657f));

var<private> global4: vec4<i32>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> f32 {
    var var_0 = (!(false || global2.a) & true) == false;
    global3 = array<vec4<f32>, 17>();
    let var_1 = Struct_5(Struct_1(true, _wgslsmith_add_u32(global2.b, global0.a.b), 181i, select(select(vec2<bool>(global2.d.x, false), select(vec2<bool>(true, true), vec2<bool>(true, global2.d.x), global2.d.x), global0.a.a), global2.d, select(vec2<bool>(global0.a.d.x, true), select(arg_2.d, global2.d, global2.d), vec2<bool>(false, arg_1)))));
    var var_2 = min(abs(global1[_wgslsmith_index_u32(46733u, 19u)]), ~(~vec4<i32>(_wgslsmith_clamp_i32(global0.a.c, -2147483647i, var_1.a.c), _wgslsmith_mult_i32(arg_2.c, 3934i), firstLeadingBit(38687i), global0.a.c)));
    global4 = firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(abs(arg_0.b.c), ~global2.c, -13590i, _wgslsmith_mult_i32(-2147483647i, var_1.a.c)), ~vec4<i32>(2147483647i, var_1.a.c, 69687i, -43559i), global1[_wgslsmith_index_u32(reverseBits(abs(var_1.a.b)), 19u)]) | vec4<i32>(-2147483647i, abs(i32(-1i) * -1i), 2147483647i, _wgslsmith_div_i32(select(1i, arg_2.c, true), global2.c)));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -427f))), 285f))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: u32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -2293f);
    global1 = array<vec4<i32>, 19>();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1141f))), _wgslsmith_f_op_f32(func_3(Struct_2(arg_2, Struct_1(global0.a.a, 0u, u_input.a, global2.d)), !global2.a, Struct_1(false, arg_2, u_input.a, vec2<bool>(true, arg_0.x)))))) * arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1.x)), -359f))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(arg_2, global0.a), true, Struct_1(true, 36351u, global4.x, vec2<bool>(true, global0.a.a)))), _wgslsmith_f_op_f32(-arg_1.x), var_1) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.x, 268f, 1219f), vec3<f32>(var_1, var_1, -128f))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1078f, arg_1.x, arg_1.x) * vec3<f32>(arg_1.x, -115f, var_1)))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * var_1)), var_1, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(837f, 1535f), _wgslsmith_f_op_f32(-arg_1.x), arg_1.x > 327f)))));
    let var_3 = true;
    return Struct_3(Struct_1(false, 8362u, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(global4.wzy, global4.yzy, vec3<i32>(global0.a.c, -5904i, u_input.a)), countOneBits(vec3<i32>(2147483647i, -64201i, -11734i))), _wgslsmith_add_i32(~global4.x, ~1i)), global2.d), _wgslsmith_mod_i32(u_input.a, reverseBits(-2022i)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_5) -> Struct_5 {
    global3 = array<vec4<f32>, 17>();
    global2 = Struct_1(false, firstLeadingBit(abs(1u)), firstTrailingBit(arg_1.a.c << (0u % 32u)), global2.d);
    return Struct_5(Struct_1(!(!select(false, false, arg_2.a.a)), ~_wgslsmith_dot_vec3_u32(max(u_input.d, u_input.d), vec3<u32>(4294967295u, 1u, 1u) >> (u_input.d % vec3<u32>(32u))), _wgslsmith_dot_vec3_i32(~(-vec3<i32>(-3648i, global4.x, 1i)), firstLeadingBit(vec3<i32>(-8896i, global0.a.c, arg_2.a.c) & vec3<i32>(arg_0.a.c, global0.a.c, arg_0.a.c))), global0.a.d));
}

fn func_5(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: Struct_5) -> Struct_4 {
    let var_0 = Struct_2(_wgslsmith_clamp_u32(~arg_0.a.b << (1u % 32u), 1u, ~global0.a.b), arg_0.a);
    let var_1 = select(arg_1, !arg_1, any(arg_1));
    global0 = func_4(Struct_3(Struct_1(global0.a.d.x, ~_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(22209u, global2.b, arg_0.a.b)), -arg_2.a.c, !select(arg_2.a.d, global0.a.d, var_1.x)), -29965i), func_2(arg_1, vec2<f32>(_wgslsmith_div_f32(786f, 513f), 811f), ~global2.b), arg_2);
    global1 = array<vec4<i32>, 19>();
    var var_2 = global4.yx;
    return Struct_4(func_2(vec4<bool>(all(arg_2.a.d) & true, arg_0.a.a, any(!vec4<bool>(true, var_1.x, var_0.b.d.x, arg_0.a.a)), false && !global0.a.d.x), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(488f, -382f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-710f * 1982f))), firstLeadingBit(21371u)), _wgslsmith_add_u32(_wgslsmith_mult_u32(~4294967295u, arg_2.a.b), 0u), -1088f, false, global2.b);
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = 1u;
    let var_1 = func_5(func_4(func_2(select(select(vec4<bool>(false, arg_1.b.a, global0.a.a, false), vec4<bool>(true, global2.d.x, global0.a.a, global2.a), vec4<bool>(global0.a.d.x, global2.a, true, global0.a.a)), !vec4<bool>(global2.d.x, false, global2.d.x, global2.a), !global0.a.d.x), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1985f, -1211f), vec2<f32>(631f, 1404f))))), reverseBits(u_input.e)), func_2(!vec4<bool>(false, true, arg_1.b.d.x, false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1734f, 2790f))), global0.a.b), Struct_5(func_2(!vec4<bool>(global2.d.x, global2.a, global2.a, false), _wgslsmith_div_vec2_f32(vec2<f32>(-538f, -568f), vec2<f32>(-1000f, -647f)), global0.a.b).a)), !(!select(vec4<bool>(true, false, global0.a.d.x, global0.a.a), !vec4<bool>(global0.a.d.x, true, false, arg_1.b.a), true)), func_4(func_2(select(vec4<bool>(true, false, global2.d.x, global2.d.x), vec4<bool>(false, false, arg_1.b.a, arg_1.b.a), select(vec4<bool>(true, arg_1.b.a, global2.d.x, global2.a), vec4<bool>(arg_1.b.d.x, global0.a.d.x, global2.a, true), true)), vec2<f32>(1f, _wgslsmith_f_op_f32(-1741f * 306f)), _wgslsmith_mod_u32(26621u, 4294967295u) ^ ~u_input.d.x), func_2(!(!vec4<bool>(global0.a.d.x, arg_1.b.d.x, global0.a.d.x, false)), vec2<f32>(_wgslsmith_f_op_f32(step(-748f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -962f)), countOneBits(~4294967295u)), func_4(func_2(!vec4<bool>(true, arg_1.b.a, true, false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1174f, -926f)), max(1u, 1u)), func_2(select(vec4<bool>(arg_1.b.a, true, false, false), vec4<bool>(global2.a, false, true, true), vec4<bool>(global2.d.x, global2.d.x, global0.a.a, false)), vec2<f32>(1656f, -1567f), 42357u), Struct_5(func_4(Struct_3(Struct_1(global0.a.d.x, 11899u, global0.a.c, vec2<bool>(arg_1.b.d.x, global2.d.x)), global0.a.c), Struct_3(arg_1.b, global4.x), Struct_5(Struct_1(true, 20647u, 1i, vec2<bool>(true, arg_1.b.a)))).a))));
    global0 = Struct_5(global0.a);
    var var_2 = Struct_3(func_4(func_2(select(vec4<bool>(global2.a, var_1.a.a.a, global0.a.a, var_1.d), select(vec4<bool>(global2.d.x, false, false, var_1.d), vec4<bool>(false, global0.a.a, var_1.d, var_1.a.a.a), var_1.d), all(vec4<bool>(true, global0.a.a, global0.a.d.x, global0.a.d.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c, var_1.c) + vec2<f32>(485f, -1172f)), arg_1.a), var_1.a, Struct_5(var_1.a.a)).a, 1i);
    let var_3 = Struct_2(4294967295u, func_2(select(select(!vec4<bool>(var_1.d, false, true, var_1.d), vec4<bool>(global2.d.x, false, var_2.a.a, var_2.a.d.x), var_2.a.d.x), !select(vec4<bool>(true, global0.a.d.x, false, true), vec4<bool>(global0.a.a, var_1.a.a.d.x, true, false), vec4<bool>(true, global2.d.x, global0.a.d.x, true)), select(!vec4<bool>(global0.a.a, var_1.a.a.a, arg_1.b.d.x, false), vec4<bool>(true, true, var_2.a.d.x, true), true)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1910f, -129f) * vec2<f32>(var_1.c, var_1.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, var_1.c))), vec2<f32>(_wgslsmith_div_f32(var_1.c, var_1.c), _wgslsmith_f_op_f32(max(var_1.c, var_1.c))), global2.d)), ~(global2.b >> (~var_1.b % 32u))).a);
    return func_2(!select(select(!vec4<bool>(arg_1.b.d.x, true, true, false), select(vec4<bool>(var_2.a.d.x, var_1.a.a.d.x, arg_1.b.a, var_1.d), vec4<bool>(false, arg_1.b.a, false, false), var_2.a.a), vec4<bool>(true, false, var_3.b.d.x, arg_1.b.d.x)), !select(vec4<bool>(global0.a.a, false, arg_1.b.d.x, var_2.a.a), vec4<bool>(false, global2.d.x, var_3.b.d.x, var_2.a.a), global2.d.x), _wgslsmith_div_f32(-603f, var_1.c) <= 941f), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(589f, 479f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-347f, var_1.c) - vec2<f32>(-1743f, 1403f))), vec2<f32>(-1505f, _wgslsmith_f_op_f32(abs(-2035f)))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.c, 1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-536f, -1637f)))))), global0.a.b | func_2(vec4<bool>(true, true, arg_1.b.a, all(vec3<bool>(var_3.b.d.x, false, arg_1.b.d.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_1.c) * vec2<f32>(var_1.c, 1006f)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2250f, var_1.c)))), _wgslsmith_add_u32(firstLeadingBit(var_2.a.b), 93098u)).a.b).a;
}

fn func_6(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    var var_0 = Struct_3(Struct_1(true, ~1u, arg_1.b.c, !func_1(arg_2.b.c, Struct_2(arg_1.a, Struct_1(false, global0.a.b, 22474i, arg_2.b.d))).d), 23533i);
    global1 = array<vec4<i32>, 19>();
    let var_1 = select(!select(select(vec4<bool>(arg_1.b.a, global0.a.a, var_0.a.d.x, true), select(vec4<bool>(true, global0.a.a, true, true), vec4<bool>(var_0.a.a, arg_1.b.a, arg_1.b.d.x, var_0.a.a), vec4<bool>(var_0.a.a, global0.a.d.x, global0.a.a, var_0.a.a)), func_4(Struct_3(Struct_1(true, 1u, 1i, arg_2.b.d), -2147483647i), Struct_3(Struct_1(true, u_input.c, arg_2.b.c, arg_2.b.d), 1i), Struct_5(arg_2.b)).a.a), !(!vec4<bool>(true, false, true, var_0.a.d.x)), false), select(vec4<bool>(!func_4(Struct_3(Struct_1(true, u_input.e, arg_2.b.c, vec2<bool>(true, arg_1.b.a)), 47725i), Struct_3(Struct_1(true, 38637u, 1i, vec2<bool>(arg_1.b.d.x, true)), global2.c), Struct_5(Struct_1(global0.a.d.x, arg_1.b.b, arg_1.b.c, var_0.a.d))).a.d.x, true, true, any(!vec4<bool>(var_0.a.a, arg_1.b.d.x, arg_1.b.a, true))), vec4<bool>(true, true, all(select(vec4<bool>(false, var_0.a.a, true, false), vec4<bool>(arg_2.b.a, true, true, var_0.a.d.x), false)), func_1(arg_2.b.c, Struct_2(33841u, arg_2.b)).d.x), !(true & (global0.a.a || false))), !(true && !any(vec3<bool>(global2.a, false, true))));
    let var_2 = arg_2.b;
    let var_3 = -vec3<i32>(global2.c, -func_4(Struct_3(global0.a, global0.a.c), func_2(vec4<bool>(global2.a, var_2.a, arg_1.b.d.x, var_2.a), vec2<f32>(-1629f, -1951f), u_input.e), Struct_5(Struct_1(global0.a.a, 58370u, var_0.b, arg_2.b.d))).a.c, _wgslsmith_add_i32(-3909i, u_input.a));
    return func_1(u_input.a, Struct_2(arg_1.a, global0.a)).d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    global3 = array<vec4<f32>, 17>();
    var var_1 = -global4.zy;
    let var_2 = select(vec3<bool>(any(global0.a.d), func_6(-2248f, Struct_2(max(global0.a.b, 1u), func_1(-27509i, Struct_2(0u, Struct_1(global0.a.a, var_0, u_input.a, vec2<bool>(false, global0.a.a))))), Struct_2(1u, Struct_1(global2.a, u_input.b, 3687i, global0.a.d))), global2.a), select(vec3<bool>(select(true, func_4(Struct_3(Struct_1(false, 4294967295u, 2147483647i, vec2<bool>(global0.a.a, false)), global4.x), Struct_3(global0.a, global4.x), Struct_5(global0.a)).a.d.x, true), global2.d.x && true, global2.d.x), select(vec3<bool>(func_5(Struct_5(Struct_1(global2.d.x, 58197u, 946i, global0.a.d)), vec4<bool>(global0.a.d.x, global2.d.x, true, true), Struct_5(Struct_1(global0.a.a, 25405u, global0.a.c, vec2<bool>(true, false)))).a.a.a, false || global0.a.d.x, global2.d.x), vec3<bool>(global2.a, global2.a && global0.a.d.x, global2.a | global0.a.a), true), global2.d.x), vec3<bool>(true, !all(vec4<bool>(true, true, global0.a.d.x, global2.a)), _wgslsmith_f_op_f32(select(-1227f, _wgslsmith_f_op_f32(step(1433f, -1561f)), true)) > 1027f));
    var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(~(-global4.yww), vec3<i32>(global2.c, _wgslsmith_dot_vec2_i32(global4.ww, global4.wy), _wgslsmith_div_i32(global0.a.c, global4.x))), -29813i) << (countOneBits(vec2<u32>(abs(u_input.c ^ 1u), 16185u)) % vec2<u32>(32u));
    var var_3 = _wgslsmith_mult_vec4_u32(select(vec4<u32>(abs(~62224u), select(global2.b, ~40097u, true), 4294967295u, u_input.b), ~vec4<u32>(u_input.d.x, 0u, global0.a.b, global0.a.b), vec4<bool>(false, func_5(Struct_5(Struct_1(false, 1238u, var_1.x, vec2<bool>(global2.a, true))), select(vec4<bool>(var_2.x, false, var_2.x, global2.a), vec4<bool>(true, true, true, global0.a.d.x), vec4<bool>(var_2.x, true, false, true)), func_4(Struct_3(global0.a, u_input.a), Struct_3(global0.a, global0.a.c), Struct_5(global0.a))).d, any(select(vec3<bool>(false, false, false), var_2, true)), true)), _wgslsmith_add_vec4_u32(vec4<u32>(global0.a.b, (3106u | u_input.e) | countOneBits(var_0), _wgslsmith_div_u32(global2.b >> (global2.b % 32u), ~1u), u_input.d.x), ~min(~vec4<u32>(var_0, global0.a.b, global0.a.b, 23685u), abs(vec4<u32>(u_input.e, 1u, global2.b, var_0)))));
    global0 = func_4(Struct_3(Struct_1(all(global2.d), func_1(func_5(Struct_5(global0.a), vec4<bool>(false, false, false, false), Struct_5(Struct_1(true, 4294967295u, 1100i, vec2<bool>(true, true)))).a.b, Struct_2(4294967295u, Struct_1(false, 39045u, global4.x, vec2<bool>(true, false)))).b, -min(u_input.a, global2.c), vec2<bool>(false, func_6(895f, Struct_2(1u, global0.a), Struct_2(45398u, global0.a)))), global0.a.c), func_2(vec4<bool>(true, true, 0i > global4.x, (global0.a.a | global0.a.a) | all(global2.d)), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-412f)), -256f, global0.a.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-972f, 2944f))), 4294967295u), Struct_5(global0.a));
    let x = u_input.a;
    s_output = StorageBuffer(0i, vec2<i32>(2147483647i, -4143i), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, _wgslsmith_mod_u32(global0.a.b, global0.a.b), ~4294967295u, ~1u), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.a.b, 1u, 48997u, 1u), vec4<u32>(1u, 0u, 16300u, var_0))), var_0), _wgslsmith_dot_vec3_i32(~vec3<i32>(-global2.c, 21812i, firstLeadingBit(var_1.x)), vec3<i32>(~26775i ^ global0.a.c, ~global4.x, var_1.x << (27326u % 32u))));
}

