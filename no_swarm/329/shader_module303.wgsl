struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
    d: vec4<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 6> = array<bool, 6>(true, true, true, false, true, false);

var<private> global2: f32 = 1186f;

var<private> global3: u32 = 4294967295u;

var<private> global4: Struct_3 = Struct_3(false, Struct_2(vec4<bool>(false, true, true, false), vec2<f32>(224f, 1596f), 4294967295u), Struct_2(vec4<bool>(false, false, false, false), vec2<f32>(1339f, 377f), 1u), vec4<f32>(1127f, 921f, -716f, 1000f), Struct_2(vec4<bool>(true, false, false, true), vec2<f32>(-185f, 1430f), 7841u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global4.e.b)));
    var var_1 = global4.c;
    let var_2 = var_1.b.x;
    global4 = Struct_3(global4.c.a.x, global4.b, Struct_2(vec4<bool>(arg_1.x, true, false, _wgslsmith_f_op_f32(var_1.b.x * arg_2.a) > _wgslsmith_f_op_f32(select(var_1.b.x, var_0.x, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(2603f + global4.c.b.x), _wgslsmith_f_op_f32(-arg_0.a)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -513f), global4.b.b.x)), 39943u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-635f, -314f, !global4.b.a.x)), _wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(ceil(arg_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global4.e.b.x, arg_2.a)))))), global4.e);
    var var_3 = var_1.b.x;
    return u_input.d.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_3, arg_3: Struct_1) -> Struct_2 {
    var var_0 = ~vec4<u32>(func_3(arg_3, vec3<bool>(global4.e.a.x, true, false), Struct_1(-443f)), ~(4294967295u | u_input.c), ~u_input.c, arg_2.b.c) >> (u_input.a % vec4<u32>(32u));
    var var_1 = u_input.d.yx;
    var var_2 = 19992i;
    let var_3 = -arg_0;
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(arg_2.d.xww))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-810f, -353f, global4.b.b.x) - arg_2.d.xzy), global4.a)), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_3.a * -1512f))), _wgslsmith_f_op_f32(-1897f + _wgslsmith_f_op_f32(max(-203f, global4.b.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1070f, arg_1)))))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global4.e.b.x, _wgslsmith_f_op_f32(1316f + -1966f), 1f))));
    return Struct_2(vec4<bool>(any(vec4<bool>(true, arg_1 <= global4.b.b.x, all(global4.e.a), global4.b.a.x)), global4.a, global4.e.a.x, _wgslsmith_div_u32(global4.c.c, var_1.x) != var_0.x), vec2<f32>(-1346f, _wgslsmith_f_op_f32(710f + arg_1)), ~select(35490u << ((var_1.x | 0u) % 32u), ~countOneBits(1u), global4.e.a.x));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(arg_2.b.x);
    return func_2(vec3<i32>(-58340i, _wgslsmith_dot_vec3_i32(vec3<i32>(-51902i, -1i, -11419i) << (u_input.d % vec3<u32>(32u)), ~reverseBits(vec3<i32>(-2147483647i, -7687i, -53589i))), ~(-(~(-15726i)))), _wgslsmith_f_op_f32(var_0.a * 633f), Struct_3(true, Struct_2(vec4<bool>(!arg_0.b.a.x, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(36505u, arg_2.c), 6u)], arg_2.a.x, any(arg_0.c.a.wwz)), _wgslsmith_f_op_vec2_f32(step(arg_2.b, global4.e.b)), _wgslsmith_mod_u32(firstTrailingBit(17130u), ~4294967295u)), Struct_2(select(vec4<bool>(global1[_wgslsmith_index_u32(arg_0.c.c, 6u)], true, true, arg_0.b.a.x), select(global4.b.a, vec4<bool>(false, false, global4.c.a.x, global1[_wgslsmith_index_u32(arg_2.c, 6u)]), arg_2.a), select(vec4<bool>(false, true, true, true), vec4<bool>(true, arg_2.a.x, global1[_wgslsmith_index_u32(7691u, 6u)], true), global1[_wgslsmith_index_u32(32678u, 6u)])), vec2<f32>(-1790f, _wgslsmith_f_op_f32(f32(-1f) * -310f)), arg_0.e.c), global4.d, func_2(vec3<i32>(1i, 1i, 1i) >> (~vec3<u32>(72809u, 1u, arg_2.c) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-var_0.a), Struct_3(true, Struct_2(vec4<bool>(false, global4.a, global1[_wgslsmith_index_u32(global4.c.c, 6u)], false), vec2<f32>(global4.b.b.x, arg_0.b.b.x), 1u), func_2(vec3<i32>(2147483647i, -8700i, -1i), 683f, arg_0, Struct_1(arg_2.b.x)), global4.d, arg_0.b), Struct_1(var_0.a))), Struct_1(-454f));
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: f32, arg_3: vec4<u32>) -> vec3<bool> {
    var var_0 = arg_3.x;
    let var_1 = vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(23997i, -55398i, 23580i), select(vec3<i32>(-43276i, 1644i, -2147483647i), vec3<i32>(1i, 1i, 1i), !arg_1.b.a.wyx)), i32(-1i) * -(~1i));
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_1.e.b.x, _wgslsmith_f_op_f32(sign(-912f)))), -1055f)) - arg_1.d.x)));
    var var_2 = arg_1;
    let var_3 = select(var_1.x ^ -22115i, var_1.x, global4.a);
    return vec3<bool>(global1[_wgslsmith_index_u32(~(~u_input.c), 6u)], !(!arg_1.c.a.x || (select(0u, arg_0, var_2.a) > min(8158u, arg_1.c.c))), true);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global4.e.b.x, _wgslsmith_f_op_f32(min(352f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.e.b.x)))), true)));
    var var_0 = func_5(74124u, Struct_3(false, Struct_2(select(arg_2.a, arg_2.a, vec4<bool>(false, false, global4.e.a.x, global1[_wgslsmith_index_u32(0u, 6u)])), vec2<f32>(_wgslsmith_f_op_f32(abs(-360f)), _wgslsmith_f_op_f32(f32(-1f) * -1309f)), arg_3), func_4(Struct_3(all(arg_2.a.www), Struct_2(arg_2.a, vec2<f32>(1359f, arg_2.b.x), arg_3), func_2(arg_1.zyx, global4.b.b.x, Struct_3(true, Struct_2(global4.c.a, vec2<f32>(-1372f, arg_2.b.x), u_input.b), arg_2, global4.d, global4.b), Struct_1(-414f)), vec4<f32>(-1000f, 243f, 661f, -729f), Struct_2(vec4<bool>(global4.c.a.x, global4.b.a.x, arg_0.x, false), arg_2.b, 18914u)), 4294967295u, func_2(arg_1.yzw, 901f, Struct_3(global4.b.a.x, arg_2, Struct_2(global4.e.a, global4.c.b, global4.b.c), vec4<f32>(arg_2.b.x, arg_2.b.x, 333f, arg_2.b.x), arg_2), Struct_1(-1058f))), global4.d, Struct_2(select(vec4<bool>(arg_2.a.x, arg_2.a.x, global4.b.a.x, false), vec4<bool>(global1[_wgslsmith_index_u32(2246u, 6u)], global4.c.a.x, true, true), arg_2.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_2.b, global4.d.yz, true)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(217f, global4.b.b.x)))), _wgslsmith_mod_u32(arg_3, 4294967295u) | global4.b.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(346f, -632f, false)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-245f)), _wgslsmith_f_op_f32(global4.d.x + global4.e.b.x))))), u_input.a);
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) - _wgslsmith_f_op_f32(global4.c.b.x * arg_2.b.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.x - global4.b.b.x)) + 322f))));
    var_0 = select(func_4(Struct_3(any(vec3<bool>(var_0.x, true, false)), Struct_2(arg_2.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(-617f, -440f) - vec2<f32>(global4.c.b.x, -888f)), 4294967295u | u_input.d.x), arg_2, global4.d, Struct_2(vec4<bool>(arg_2.a.x, false, arg_2.a.x, var_0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-218f, arg_2.b.x) - vec2<f32>(-1409f, global4.c.b.x)), abs(55657u))), _wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, arg_3), 1u), arg_2).a.yxx, func_2(arg_1.xxy, 116f, Struct_3(true, Struct_2(vec4<bool>(arg_0.x, false, var_0.x, arg_2.a.x), vec2<f32>(arg_2.b.x, -1256f), 1u), Struct_2(func_4(Struct_3(arg_2.a.x, Struct_2(arg_2.a, vec2<f32>(global4.d.x, 1000f), u_input.a.x), Struct_2(global4.b.a, arg_2.b, u_input.b), global4.d, Struct_2(vec4<bool>(false, true, false, true), arg_2.b, arg_3)), 0u, global4.e).a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.x, 1743f)), max(9807u, arg_3)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1496f, -1078f, 956f, 496f), vec4<f32>(global4.b.b.x, 1000f, -142f, arg_2.b.x)))), global4.c), Struct_1(global4.e.b.x)).a.yzw, (4294967295u >> (arg_3 % 32u)) == func_4(Struct_3(true, func_4(Struct_3(false, global4.b, global4.c, vec4<f32>(-2215f, -797f, global4.c.b.x, global4.e.b.x), arg_2), arg_2.c, arg_2), Struct_2(vec4<bool>(true, true, true, true), vec2<f32>(global4.b.b.x, arg_2.b.x), arg_2.c), global4.d, global4.e), ~arg_2.c, Struct_2(select(vec4<bool>(false, var_0.x, false, global4.e.a.x), arg_2.a, vec4<bool>(true, true, false, arg_2.a.x)), _wgslsmith_div_vec2_f32(arg_2.b, arg_2.b), 1u)).c);
    let var_1 = any(vec4<bool>(!any(global4.e.a) | (1733f <= _wgslsmith_f_op_f32(arg_2.b.x - 516f)), true, true, global1[_wgslsmith_index_u32(~firstTrailingBit(~arg_3), 6u)]));
    return arg_2;
}

fn func_6(arg_0: Struct_3) -> Struct_3 {
    let var_0 = -1i;
    let var_1 = select(vec4<bool>(!func_1(vec3<bool>(global1[_wgslsmith_index_u32(arg_0.c.c, 6u)], true, global1[_wgslsmith_index_u32(82935u, 6u)]), vec4<i32>(-2861i, var_0, 2147483647i, var_0), global4.e, arg_0.b.c).a.x | arg_0.b.a.x, true, (0i & _wgslsmith_sub_i32(var_0, -1i)) <= ~firstLeadingBit(-2147483647i), func_2(min(-vec3<i32>(var_0, 2147483647i, -1i), countOneBits(vec3<i32>(-27364i, var_0, var_0))), arg_0.e.b.x, Struct_3(any(vec2<bool>(true, global1[_wgslsmith_index_u32(global4.c.c, 6u)])), global4.c, func_4(arg_0, 4294967295u, global4.c), vec4<f32>(global4.c.b.x, arg_0.b.b.x, 266f, global4.c.b.x), func_4(Struct_3(global1[_wgslsmith_index_u32(arg_0.b.c, 6u)], arg_0.e, Struct_2(global4.c.a, vec2<f32>(arg_0.b.b.x, global4.e.b.x), 4294967295u), vec4<f32>(811f, 283f, -1383f, arg_0.d.x), Struct_2(arg_0.b.a, arg_0.b.b, 1u)), 4294967295u, global4.b)), Struct_1(arg_0.b.b.x)).a.x), arg_0.e.a, vec4<bool>(global4.a, global1[_wgslsmith_index_u32(func_2(abs(vec3<i32>(-4525i, var_0, var_0)), _wgslsmith_f_op_f32(trunc(916f)), arg_0, Struct_1(global4.c.b.x)).c, 6u)] | ((global4.c.a.x || arg_0.b.a.x) & global4.a), select(false, true, global4.b.a.x), !all(arg_0.e.a.wz) || true));
    let var_2 = arg_0.d.yz;
    let var_3 = max(vec2<i32>(var_0, firstTrailingBit(firstTrailingBit(_wgslsmith_add_i32(var_0, var_0)))), abs(-(~vec2<i32>(var_0, var_0))) << (u_input.a.yz % vec2<u32>(32u)));
    global1 = array<bool, 6>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(global4.d.x - _wgslsmith_f_op_f32(global4.e.b.x - _wgslsmith_f_op_f32(floor(global4.c.b.x))));
    global4 = func_6(Struct_3(all(global4.e.a), func_1(global4.b.a.yzx, -vec4<i32>(-2147483647i, 20964i, -55152i, -22420i), Struct_2(vec4<bool>(false, global4.b.a.x, global1[_wgslsmith_index_u32(1u, 6u)], global4.c.a.x), vec2<f32>(735f, global4.e.b.x), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), u_input.a.x), Struct_2(vec4<bool>(any(vec2<bool>(true, global4.e.a.x)), global1[_wgslsmith_index_u32(65843u, 6u)], false, global4.b.a.x | false), _wgslsmith_div_vec2_f32(global4.d.xy, global4.c.b), ~24312u | u_input.b), global4.d, global4.b));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-1f));
    var var_1 = Struct_1(func_2(reverseBits(~_wgslsmith_mult_vec3_i32(vec3<i32>(2613i, -2147483647i, 0i), vec3<i32>(-25849i, 0i, 0i))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a))), Struct_3(!global4.a, func_2(vec3<i32>(1i, 5830i, -1i), global4.b.b.x, func_6(Struct_3(false, global4.c, Struct_2(vec4<bool>(false, false, global4.a, false), global4.c.b, 4294967295u), vec4<f32>(1770f, 1000f, var_0.a, 725f), Struct_2(vec4<bool>(true, global4.e.a.x, false, false), vec2<f32>(var_0.a, 1096f), global4.e.c))), Struct_1(var_0.a)), Struct_2(global4.b.a, vec2<f32>(1000f, var_0.a), _wgslsmith_add_u32(global4.e.c, u_input.d.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-global4.d))), global4.b), Struct_1(_wgslsmith_f_op_f32(549f + 158f))).b.x);
    var var_2 = Struct_3(false, func_1(func_1(func_2(vec3<i32>(0i, -16405i, 23072i), -414f, func_6(Struct_3(global4.a, Struct_2(global4.e.a, global4.c.b, u_input.a.x), global4.b, vec4<f32>(global4.c.b.x, 1567f, var_1.a, -896f), global4.e)), Struct_1(var_0.a)).a.wxy, vec4<i32>(1i, 1i, 1i, 1i) << (~u_input.a % vec4<u32>(32u)), global4.c, firstLeadingBit(func_3(Struct_1(global4.e.b.x), global4.c.a.xzy, Struct_1(global4.b.b.x)))).a.yxy, countOneBits(select(vec4<i32>(33934i, 0i, 17357i, 0i), vec4<i32>(-1i, -20531i, -40005i, 2147483647i), false)) & select(vec4<i32>(2147483647i, -3114i, 47863i, 1889i), vec4<i32>(-16395i, 1i, -1i, 56706i), global4.c.a), func_2(-_wgslsmith_add_vec3_i32(vec3<i32>(1i, -9800i, 0i), vec3<i32>(-1i, 8866i, -21526i)), global4.e.b.x, Struct_3(select(global4.c.a.x, true, false), func_6(Struct_3(true, global4.e, Struct_2(global4.b.a, vec2<f32>(var_0.a, var_1.a), u_input.c), vec4<f32>(707f, var_1.a, var_0.a, var_1.a), Struct_2(global4.c.a, vec2<f32>(var_1.a, global4.d.x), 0u))).e, Struct_2(vec4<bool>(true, false, true, true), global4.d.wy, u_input.b), vec4<f32>(-605f, 929f, -807f, var_1.a), global4.e), Struct_1(_wgslsmith_f_op_f32(-var_0.a))), ~52633u), global4.b, _wgslsmith_f_op_vec4_f32(global4.d - global4.d), Struct_2(select(vec4<bool>(true, global4.c.a.x, true, func_4(Struct_3(global1[_wgslsmith_index_u32(global4.b.c, 6u)], global4.e, global4.c, global4.d, Struct_2(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 6u)], false, global1[_wgslsmith_index_u32(u_input.d.x, 6u)], global1[_wgslsmith_index_u32(global4.e.c, 6u)]), global4.d.yz, 46705u)), 0u, global4.b).a.x), func_2(-vec3<i32>(1i, 43347i, 2147483647i), var_0.a, func_6(Struct_3(global4.b.a.x, global4.e, global4.b, vec4<f32>(-535f, 856f, 1190f, -1286f), global4.b)), Struct_1(-150f)).a, func_1(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 6u)], global4.a), vec4<i32>(29444i, -21759i, -57951i, -2147483647i), global4.c, ~102360u).a), _wgslsmith_f_op_vec2_f32(max(global4.b.b, vec2<f32>(232f, global4.d.x))), ~1u));
    let var_3 = _wgslsmith_clamp_i32(-(~16236i), -(0i >> (func_1(vec3<bool>(true, true, true), ~vec4<i32>(32299i, -30182i, 30351i, 48958i), Struct_2(vec4<bool>(var_2.a, false, false, false), vec2<f32>(var_2.c.b.x, -1000f), var_2.e.c), global4.c.c).c % 32u)), firstTrailingBit(~(~(i32(-1i) * -33974i))));
    let var_4 = vec2<i32>(-(~(var_3 << (10327u % 32u))), _wgslsmith_dot_vec4_i32(vec4<i32>(-(~var_3), var_3, var_3, _wgslsmith_mod_i32(2147483647i, abs(-1i))), _wgslsmith_add_vec4_i32(vec4<i32>(1i | var_3, 1i, 1i, -71941i), max(abs(vec4<i32>(-52745i, var_3, var_3, -23430i)), min(vec4<i32>(-16022i, var_3, var_3, -2147483647i), vec4<i32>(var_3, 1i, -30228i, 0i))))));
    let x = u_input.a;
    s_output = StorageBuffer(global4.c.c, _wgslsmith_mult_vec4_u32(vec4<u32>(~var_2.c.c, ~(var_2.b.c >> (65988u % 32u)), u_input.b, var_2.c.c), _wgslsmith_add_vec4_u32(~u_input.a, countOneBits(_wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(67457u, var_2.b.c, global4.e.c, 0u), vec4<u32>(1u, 0u, var_2.c.c, 1u))))), firstTrailingBit(func_6(func_6(Struct_3(global1[_wgslsmith_index_u32(u_input.b, 6u)], Struct_2(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 6u)], var_2.a, global1[_wgslsmith_index_u32(1u, 6u)], global4.c.a.x), vec2<f32>(739f, var_1.a), 4294967295u), Struct_2(vec4<bool>(global1[_wgslsmith_index_u32(67704u, 6u)], global4.b.a.x, true, false), var_2.c.b, 45547u), var_2.d, Struct_2(global4.c.a, vec2<f32>(var_0.a, var_2.b.b.x), global4.e.c)))).b.c));
}

