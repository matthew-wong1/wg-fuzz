struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: bool,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<f32>,
    d: f32,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
    c: Struct_2,
    d: i32,
    e: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: f32,
    d: f32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_3 = Struct_3(Struct_2(1u), Struct_2(0u), vec4<f32>(344f, 1007f, -1095f, 180f), 931f);

var<private> global2: array<vec2<i32>, 2>;

var<private> global3: vec2<f32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: bool) -> vec4<f32> {
    global3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1343f))), 1f));
    global3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1694f - -800f)), global3.x));
    global3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-726f, 290f)) - 535f), 731f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c.x, 1249f) - global3.x)))));
    global0 = arg_0;
    var var_0 = Struct_3(Struct_2(52607u), Struct_2(u_input.a.x), global1.c, _wgslsmith_f_op_f32(f32(-1f) * -999f));
    return vec4<f32>(global1.d, -1154f, 659f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1243f + var_0.d) + _wgslsmith_f_op_f32(global3.x * -484f)))))));
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: vec2<bool>) -> i32 {
    var var_0 = u_input.b.x;
    var_0 = abs(u_input.b.x);
    var var_1 = Struct_5(_wgslsmith_sub_i32(~_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b.x, -2147483647i), select(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], vec2<i32>(7757i, -2147483647i), vec2<bool>(arg_0, true))), min(-1i, _wgslsmith_sub_i32(8610i, ~u_input.b.x))), Struct_3(global1.b, Struct_2(u_input.a.x), _wgslsmith_f_op_vec4_f32(round(global1.c)), -211f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x - global1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d - 317f) + _wgslsmith_f_op_f32(global3.x * global3.x)), false)))), global3.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-950f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x + global1.d)))));
    let var_2 = Struct_3(var_1.b.b, var_1.b.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(arg_2.x, arg_2.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.d, 1172f, global3.x, global3.x))) + vec4<f32>(-945f, _wgslsmith_f_op_f32(ceil(-488f)), -2632f, _wgslsmith_f_op_f32(f32(-1f) * -202f)))), 906f);
    var_0 = abs(var_1.a);
    return 0i;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_4) -> Struct_5 {
    let var_0 = arg_0.b;
    var var_1 = !(!select(vec3<bool>(true, !arg_2.e.d.x, true), vec3<bool>(all(vec2<bool>(false, arg_1.e.d.x)), true || arg_1.e.d.x, false), select(vec3<bool>(arg_1.e.d.x, arg_2.e.d.x, false), select(vec3<bool>(arg_2.e.d.x, true, arg_2.e.d.x), vec3<bool>(false, true, arg_1.e.c), vec3<bool>(true, false, arg_1.e.d.x)), vec3<bool>(arg_1.e.d.x, true, arg_2.e.d.x))));
    let var_2 = false;
    let var_3 = arg_2.e;
    var var_4 = Struct_5(var_3.a, Struct_3(Struct_2(_wgslsmith_add_u32(_wgslsmith_add_u32(global1.a.a, 56474u), _wgslsmith_add_u32(0u, arg_0.b.a.a))), Struct_2(min(0u, ~arg_1.c.a)), arg_2.b, _wgslsmith_f_op_f32(floor(-1046f))), global1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -526f) - _wgslsmith_f_op_f32(min(-382f, global1.d))), vec2<f32>(var_3.b.x, var_3.b.x));
    return Struct_5(var_4.a, Struct_3(arg_1.c, Struct_2(18935u), vec4<f32>(var_0.d, _wgslsmith_f_op_f32(max(247f, var_3.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_2.e.b.x)), _wgslsmith_f_op_f32(-1011f - -406f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-806f)) - _wgslsmith_f_op_f32(-global3.x))), arg_0.e.x), _wgslsmith_f_op_f32(-470f * arg_1.b.x), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(var_3.b, _wgslsmith_f_op_vec2_f32(abs(var_4.e)))), vec2<f32>(765f, _wgslsmith_div_f32(var_0.d, arg_2.e.b.x))))));
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: Struct_5, arg_3: Struct_2) -> Struct_5 {
    global3 = vec2<f32>(global1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-470f - global1.d))))));
    global1 = func_4(arg_2, Struct_4(_wgslsmith_dot_vec3_u32(~(~u_input.a.wzw), max(select(vec3<u32>(19118u, u_input.a.x, 36669u), vec3<u32>(u_input.a.x, arg_2.b.a.a, 1u), arg_0), ~u_input.a.wyw)), arg_2.b.c, func_4(func_4(func_4(arg_2, Struct_4(arg_3.a, arg_2.b.c, Struct_2(0u), u_input.b.x, Struct_1(arg_1, arg_2.e, true, vec2<bool>(true, true), 2147483647i)), Struct_4(20984u, global1.c, Struct_2(global1.b.a), -2147483647i, Struct_1(-2147483647i, vec2<f32>(-2360f, 1197f), arg_0, vec2<bool>(arg_0, true), 2147483647i))), Struct_4(4294967295u, vec4<f32>(209f, global3.x, arg_2.d, arg_2.b.d), arg_3, u_input.b.x, Struct_1(2062i, vec2<f32>(global3.x, arg_2.b.d), true, vec2<bool>(arg_0, arg_0), 1i)), Struct_4(u_input.a.x, global1.c, arg_2.b.b, 90461i, Struct_1(arg_2.a, global1.c.wx, arg_0, vec2<bool>(true, arg_0), u_input.b.x))), Struct_4(countOneBits(arg_3.a), arg_2.b.c, func_4(Struct_5(arg_1, arg_2.b, arg_2.d, global3.x, vec2<f32>(-1978f, -195f)), Struct_4(arg_3.a, arg_2.b.c, global1.b, arg_1, Struct_1(u_input.b.x, vec2<f32>(1301f, global1.d), true, vec2<bool>(arg_0, false), arg_1)), Struct_4(arg_3.a, vec4<f32>(1431f, global3.x, 686f, global1.c.x), Struct_2(8961u), arg_2.a, Struct_1(-1i, vec2<f32>(global3.x, arg_2.d), arg_0, vec2<bool>(false, arg_0), -17020i))).b.a, u_input.b.x, Struct_1(9233i, arg_2.e, true, vec2<bool>(arg_0, arg_0), -12429i)), Struct_4(~0u, global1.c, func_4(Struct_5(-1i, arg_2.b, arg_2.d, global3.x, arg_2.b.c.zx), Struct_4(arg_2.b.a.a, vec4<f32>(arg_2.d, global1.c.x, 119f, 590f), Struct_2(53417u), 20958i, Struct_1(arg_2.a, arg_2.e, arg_0, vec2<bool>(false, true), arg_1)), Struct_4(u_input.a.x, vec4<f32>(global3.x, global3.x, 1138f, global3.x), arg_2.b.b, 251i, Struct_1(u_input.b.x, arg_2.b.c.zz, true, vec2<bool>(true, arg_0), 39881i))).b.a, arg_1, Struct_1(arg_1, vec2<f32>(global1.d, global1.d), arg_0, vec2<bool>(arg_0, true), 10335i))).b.b, ~(-arg_1 << (func_4(arg_2, Struct_4(69214u, global1.c, global1.b, 42390i, Struct_1(u_input.b.x, vec2<f32>(2411f, -739f), true, vec2<bool>(true, arg_0), arg_1)), Struct_4(59846u, vec4<f32>(-452f, 915f, 126f, -679f), Struct_2(4294967295u), arg_2.a, Struct_1(arg_1, global1.c.zy, arg_0, vec2<bool>(arg_0, false), -19340i))).b.a.a % 32u)), Struct_1(1i, _wgslsmith_f_op_vec4_f32(func_3(!arg_0, arg_0)).zw, true, !select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0), arg_0), 42936i)), Struct_4(arg_3.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(global1.c))) + global1.c), Struct_2(_wgslsmith_dot_vec4_u32(~u_input.a, max(u_input.a, u_input.a))), ~abs(_wgslsmith_div_i32(u_input.b.x, -14245i)), Struct_1(-arg_2.a & ~70255i, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(arg_2.b.c.xw)))), true, !(!vec2<bool>(true, arg_0)), 0i))).b;
    let var_0 = func_4(func_4(func_4(func_4(func_4(Struct_5(-1i, arg_2.b, arg_2.b.c.x, 1186f, vec2<f32>(328f, -2324f)), Struct_4(arg_3.a, global1.c, Struct_2(global1.a.a), arg_1, Struct_1(0i, vec2<f32>(global1.c.x, global1.d), false, vec2<bool>(true, arg_0), -42770i)), Struct_4(arg_3.a, global1.c, Struct_2(1u), u_input.b.x, Struct_1(arg_1, vec2<f32>(-723f, global3.x), arg_0, vec2<bool>(true, false), arg_1))), Struct_4(148169u, arg_2.b.c, global1.a, 2147483647i, Struct_1(10288i, arg_2.b.c.zw, false, vec2<bool>(false, true), -6911i)), Struct_4(0u, vec4<f32>(-1012f, global3.x, arg_2.b.c.x, arg_2.d), arg_2.b.a, arg_1, Struct_1(-13026i, vec2<f32>(-152f, arg_2.e.x), arg_0, vec2<bool>(arg_0, false), -23777i))), Struct_4(arg_2.b.a.a ^ u_input.a.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(659f, 185f, -518f, global1.d) - vec4<f32>(334f, arg_2.e.x, -1000f, global1.c.x)), func_4(Struct_5(2147483647i, Struct_3(Struct_2(44487u), Struct_2(54832u), arg_2.b.c, -537f), global3.x, -469f, arg_2.e), Struct_4(arg_3.a, vec4<f32>(global3.x, -166f, arg_2.e.x, -489f), Struct_2(89933u), 54933i, Struct_1(arg_1, vec2<f32>(-776f, global3.x), true, vec2<bool>(false, arg_0), arg_1)), Struct_4(1u, arg_2.b.c, global1.b, -1i, Struct_1(arg_1, vec2<f32>(-1704f, -629f), arg_0, vec2<bool>(arg_0, arg_0), -11029i))).b.a, 0i, Struct_1(26914i, vec2<f32>(global3.x, global3.x), arg_0, vec2<bool>(arg_0, arg_0), 1i)), Struct_4(1u, vec4<f32>(447f, -1000f, global3.x, global1.d), arg_2.b.b, 30352i << (u_input.a.x % 32u), Struct_1(-2147483647i, global1.c.xz, false, vec2<bool>(true, false), 23834i))), Struct_4(global1.a.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, 1000f, global1.c.x, arg_2.c) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c, arg_2.b.c.x, global1.d, -790f))), Struct_2(4294967295u), 0i << (arg_2.b.b.a % 32u), Struct_1(arg_2.a ^ u_input.b.x, vec2<f32>(global1.d, -774f), true, select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, true), vec2<bool>(true, false)), arg_2.a)), Struct_4(u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1238f, global3.x, arg_2.b.d, global1.d)))), func_4(func_4(Struct_5(arg_1, Struct_3(global1.a, Struct_2(arg_3.a), vec4<f32>(888f, arg_2.b.c.x, -204f, global1.c.x), arg_2.c), 1582f, global1.c.x, arg_2.e), Struct_4(arg_2.b.a.a, arg_2.b.c, Struct_2(u_input.a.x), u_input.b.x, Struct_1(0i, arg_2.e, false, vec2<bool>(true, true), arg_1)), Struct_4(4294967295u, global1.c, global1.b, 1i, Struct_1(arg_2.a, vec2<f32>(1361f, global1.c.x), arg_0, vec2<bool>(arg_0, true), 28724i))), Struct_4(4294967295u, arg_2.b.c, arg_3, -44647i, Struct_1(arg_2.a, global1.c.yx, arg_0, vec2<bool>(arg_0, false), 0i)), Struct_4(1u, global1.c, global1.a, arg_2.a, Struct_1(arg_2.a, arg_2.e, arg_0, vec2<bool>(false, false), arg_1))).b.b, ~_wgslsmith_sub_i32(u_input.b.x, arg_2.a), Struct_1(47329i, _wgslsmith_f_op_vec2_f32(-arg_2.e), true, !vec2<bool>(arg_0, arg_0), 1i))), Struct_4(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(1u, 1u), 1u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(-global1.c.x), -326f, 583f), arg_2.b.b, func_4(Struct_5(~14160i, arg_2.b, _wgslsmith_f_op_f32(-783f + global1.c.x), global1.c.x, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.d, global3.x)))), Struct_4(1u, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1266f, global3.x, global1.c.x, -599f) * arg_2.b.c), func_4(arg_2, Struct_4(1u, arg_2.b.c, Struct_2(33940u), 1i, Struct_1(arg_1, arg_2.b.c.zy, arg_0, vec2<bool>(false, arg_0), arg_2.a)), Struct_4(1u, vec4<f32>(global3.x, arg_2.d, -1004f, global3.x), Struct_2(arg_2.b.b.a), arg_2.a, Struct_1(arg_1, global1.c.ww, true, vec2<bool>(arg_0, true), arg_1))).b.a, firstLeadingBit(u_input.b.x), Struct_1(78517i, global1.c.yw, true, vec2<bool>(false, arg_0), u_input.b.x)), Struct_4(~u_input.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(184f, 587f, 859f, -610f)), global1.b, countOneBits(-1988i), Struct_1(u_input.b.x, vec2<f32>(724f, -591f), arg_0, vec2<bool>(arg_0, arg_0), -1i))).a, Struct_1(1i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(445f, -1000f)), vec2<f32>(-333f, 610f)), arg_0, !vec2<bool>(arg_0, arg_0), countOneBits(u_input.b.x))), Struct_4(~52094u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.c.x, global3.x, -285f, global1.c.x)))), func_4(arg_2, Struct_4(_wgslsmith_div_u32(arg_3.a, 4294967295u), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, global1.c.x, arg_2.e.x, -727f), arg_2.b.c, arg_0)), func_4(arg_2, Struct_4(global1.a.a, global1.c, Struct_2(arg_2.b.b.a), -12131i, Struct_1(arg_1, arg_2.b.c.wx, true, vec2<bool>(arg_0, arg_0), 1i)), Struct_4(24863u, vec4<f32>(global3.x, global1.d, global3.x, global1.d), arg_3, arg_2.a, Struct_1(56229i, vec2<f32>(-1053f, global1.c.x), arg_0, vec2<bool>(arg_0, arg_0), -21391i))).b.b, arg_2.a, Struct_1(33248i, vec2<f32>(global3.x, -1266f), arg_0, vec2<bool>(true, arg_0), -1i)), Struct_4(7095u, _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, global1.c.x, -165f, global3.x), arg_2.b.c), arg_3, 0i, Struct_1(u_input.b.x, vec2<f32>(-1196f, -172f), arg_0, vec2<bool>(true, arg_0), 2987i))).b.a, min(_wgslsmith_sub_i32(-1i, 2147483647i << (global1.a.a % 32u)), 2147483647i), Struct_1(func_2(false, !vec3<bool>(arg_0, arg_0, arg_0), select(vec2<bool>(true, false), vec2<bool>(true, arg_0), vec2<bool>(true, arg_0))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-597f, 137f))), vec2<f32>(111f, -321f))), all(vec2<bool>(true, true)), select(select(vec2<bool>(false, true), vec2<bool>(false, arg_0), arg_0), vec2<bool>(false, false), select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, true), arg_0)), countOneBits(abs(arg_2.a))))).b.b;
    global2 = array<vec2<i32>, 2>();
    var var_1 = true;
    return arg_2;
}

fn func_1(arg_0: i32) -> Struct_5 {
    return func_5(true, 1i, func_4(Struct_5(_wgslsmith_div_i32(func_2(false, vec3<bool>(true, false, true), vec2<bool>(true, false)), countOneBits(-1i)), Struct_3(global1.b, Struct_2(36936u), global1.c, 837f), -1076f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(178f * -699f), global3.x)), vec2<f32>(_wgslsmith_f_op_f32(round(global1.c.x)), _wgslsmith_f_op_f32(global1.c.x + -1377f))), Struct_4(~(~global1.a.a), _wgslsmith_f_op_vec4_f32(global1.c * global1.c), Struct_2(3363u), arg_0, Struct_1(-26268i | arg_0, _wgslsmith_f_op_vec2_f32(-global1.c.yz), true, select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_0), vec2<i32>(74150i, 15379i)))), Struct_4(56607u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.c - global1.c)), Struct_2(max(38929u, u_input.a.x)), ~(u_input.b.x << (global1.a.a % 32u)), Struct_1(u_input.b.x << (72479u % 32u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-456f, global3.x)), false, vec2<bool>(true, true), arg_0))), func_4(func_4(Struct_5(_wgslsmith_div_i32(u_input.b.x, arg_0), Struct_3(global1.a, Struct_2(32149u), global1.c, global1.c.x), global3.x, 1137f, _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d, global3.x) * vec2<f32>(1073f, global1.c.x))), Struct_4(4294967295u, vec4<f32>(global3.x, -276f, -1545f, 502f), global1.b, arg_0, Struct_1(1i, vec2<f32>(-480f, global3.x), true, vec2<bool>(false, false), -2147483647i)), Struct_4(global1.b.a ^ 25622u, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.x, global1.c.x, global3.x, global3.x))), Struct_2(global1.a.a), _wgslsmith_sub_i32(arg_0, u_input.b.x), Struct_1(2147483647i, vec2<f32>(1000f, 774f), false, vec2<bool>(true, false), 1i))), Struct_4(~u_input.a.x ^ firstTrailingBit(u_input.a.x), _wgslsmith_f_op_vec4_f32(min(global1.c, _wgslsmith_f_op_vec4_f32(-global1.c))), global1.b, 2147483647i, Struct_1(arg_0, global1.c.zx, select(false, false, false), vec2<bool>(false, true), _wgslsmith_sub_i32(0i, u_input.b.x))), Struct_4(~global1.b.a, global1.c, Struct_2(1u), _wgslsmith_sub_i32(11290i, _wgslsmith_div_i32(arg_0, -2147483647i)), Struct_1(0i, _wgslsmith_f_op_vec2_f32(-global1.c.xy), true, vec2<bool>(true, true), arg_0))).b.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2161f;
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(global1.d, global3.x)), _wgslsmith_f_op_f32(-814f - -1495f))) + global1.c.xz));
    let var_1 = func_1(_wgslsmith_add_i32(u_input.b.x, select(15170i, 12421i, true) & -1i) & -11682i);
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_3(!(all(vec2<bool>(false, false)) | any(vec3<bool>(true, true, true))), true)).yx + _wgslsmith_f_op_vec2_f32(-var_1.e));
    var var_2 = var_1.b.c.wzz;
    global0 = false;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2294f, 745f, var_2.x, 1000f)))))));
    global1 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(func_5(all(vec3<bool>(true, true, true)), var_1.a, var_1, func_1(~u_input.b.x).b.a).b.b.a, ~u_input.a.x), abs(u_input.b.x));
}

