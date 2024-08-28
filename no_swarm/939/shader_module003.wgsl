struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: vec2<bool>,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<u32> = vec3<u32>(12102u, 0u, 1u);

var<private> global2: array<Struct_5, 30>;

var<private> global3: array<vec4<u32>, 16> = array<vec4<u32>, 16>(vec4<u32>(0u, 4294967295u, 100808u, 25706u), vec4<u32>(57699u, 44654u, 4294967295u, 0u), vec4<u32>(0u, 4294967295u, 0u, 0u), vec4<u32>(9306u, 112967u, 1u, 17407u), vec4<u32>(0u, 4294967295u, 34970u, 0u), vec4<u32>(0u, 2381u, 45322u, 0u), vec4<u32>(35231u, 263u, 103772u, 23751u), vec4<u32>(0u, 4294967295u, 4294967295u, 0u), vec4<u32>(147977u, 38575u, 4294967295u, 25624u), vec4<u32>(0u, 4294967295u, 0u, 36264u), vec4<u32>(7452u, 0u, 1u, 29998u), vec4<u32>(22196u, 9339u, 4294967295u, 1u), vec4<u32>(0u, 30803u, 0u, 14197u), vec4<u32>(1u, 73079u, 1u, 4294967295u), vec4<u32>(36171u, 0u, 27346u, 0u), vec4<u32>(0u, 0u, 1u, 4294967295u));

var<private> global4: Struct_2 = Struct_2(true, vec3<i32>(0i, i32(-2147483648), 6943i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_5) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1044f + -1281f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.b * -734f))) + arg_0.b))));
    let var_1 = Struct_2(!any(vec4<bool>(true, all(vec2<bool>(false, true)), true, false)), global0.a.yyx);
    global3 = array<vec4<u32>, 16>();
    var_0 = global0.b;
    var var_2 = 79736u;
    return select(vec4<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), !vec3<bool>(arg_0.c, arg_0.c, true))), false, false, global4.a), vec4<bool>(!(_wgslsmith_f_op_f32(sign(arg_0.b)) >= -1000f), _wgslsmith_f_op_f32(round(global0.b)) > global0.b, any(vec4<bool>(global4.a, false, var_1.a, false)) && (arg_0.b == _wgslsmith_f_op_f32(min(global0.b, arg_0.b))), any(vec4<bool>(any(vec3<bool>(var_1.a, true, var_1.a)), var_1.a, false, false))), vec4<bool>(!(!(!global4.a)), _wgslsmith_mult_u32(~41067u, u_input.a.x) > 1u, true, !(!var_1.a)));
}

fn func_4(arg_0: vec4<bool>) -> f32 {
    let var_0 = Struct_3(Struct_2(true, countOneBits(~abs(vec3<i32>(-43847i, global4.b.x, -1i)))), _wgslsmith_f_op_f32(f32(-1f) * -652f));
    var var_1 = -17349i;
    var var_2 = var_0.a;
    global4 = var_0.a;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(abs(-187f)), -1016f, _wgslsmith_f_op_f32(step(531f, global0.b)));
    return _wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(160f * -815f))));
}

fn func_2(arg_0: vec2<f32>) -> f32 {
    var var_0 = ~vec4<u32>(38608u, u_input.a.x, 40836u, 1u);
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(arg_0.x, arg_0.x), global0.b) - arg_0);
    var var_2 = Struct_3(Struct_2(select(false && global4.a, true, true) == any(!vec3<bool>(global4.a, true, false)), select(_wgslsmith_mult_vec3_i32(vec3<i32>(global0.d.x, global4.b.x, 26592i), global0.d), abs(global0.a.wyy | vec3<i32>(2147483647i, u_input.b, u_input.b)), all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, global4.a), vec3<bool>(global4.a, global4.a, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(func_4(func_3(Struct_5(var_0.x, var_1.x, false, 4294967295u))))))));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.c - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - -210f) + _wgslsmith_f_op_f32(-global0.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))))));
    let var_4 = _wgslsmith_div_i32(_wgslsmith_add_i32(17315i, -(~(-5464i))), -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i | u_input.b, 2147483647i, ~32842i, reverseBits(var_2.a.b.x)), global0.a));
    return _wgslsmith_f_op_f32(min(-1880f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(global0.b, -406f)), -208f))))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_4) -> Struct_4 {
    var var_0 = Struct_1(vec4<i32>(~abs(37071i) | u_input.b, -43190i, _wgslsmith_sub_i32(-(-2147483647i & global0.d.x), -35072i), 1i >> ((~global1.x << (_wgslsmith_add_u32(0u, 0u) % 32u)) % 32u)), arg_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - global0.c)), vec3<i32>(countOneBits(-arg_1.b.x), _wgslsmith_dot_vec3_i32(~(vec3<i32>(u_input.b, u_input.b, 0i) | global4.b), _wgslsmith_div_vec3_i32(vec3<i32>(21545i, global4.b.x, 3470i), vec3<i32>(22189i, arg_1.b.x, global4.b.x)) >> (~vec3<u32>(u_input.a.x, 0u, arg_0.a) % vec3<u32>(32u))), min(u_input.b, global4.b.x)));
    global4 = arg_1;
    let var_1 = true;
    return arg_2;
}

fn func_6(arg_0: f32, arg_1: Struct_4) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(~u_input.b, -global4.b.x, ~global4.b.x << (0u % 32u)), reverseBits(vec3<i32>(~2147483647i, u_input.b >> (14537u % 32u), -1i)) >> (_wgslsmith_clamp_vec3_u32(~u_input.a.wxx, vec3<u32>(u_input.a.x, global1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 16585u), u_input.a.zxx)), u_input.a.zwz) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(-1850f, _wgslsmith_f_op_f32(-global0.b)), arg_1.b, _wgslsmith_f_op_f32(407f * _wgslsmith_f_op_f32(-arg_1.b))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) * arg_1.b), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, arg_1.b)))), _wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec2_f32(vec2<f32>(650f, arg_0), vec2<f32>(global0.b, arg_1.b))))))));
    let var_2 = Struct_5(firstLeadingBit(41017u), -1081f, (1u | global1.x) == global1.x, firstLeadingBit(~(arg_1.a << (u_input.a.x % 32u))));
    let var_3 = var_1.xz;
    global1 = ~min(~(~(~vec3<u32>(49255u, 77403u, var_2.a))), ~abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_2.d, global1.x), vec3<u32>(0u, 46212u, global1.x), vec3<u32>(global1.x, 50254u, 0u))));
    return Struct_1(~countOneBits(~(-vec4<i32>(2147483647i, var_0.x, u_input.b, -17727i))), _wgslsmith_f_op_f32(-148f - _wgslsmith_f_op_f32(round(473f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-684f, 461f))))), _wgslsmith_f_op_f32(min(1424f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(316f * -113f))))), countOneBits(~(~global4.b)));
}

fn func_1(arg_0: u32, arg_1: Struct_5, arg_2: f32) -> Struct_2 {
    global0 = func_6(220f, func_5(Struct_4(1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.b)), _wgslsmith_f_op_f32(func_2(vec2<f32>(arg_2, arg_1.b)))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(global4.a, arg_1.c), vec2<bool>(false, true)), arg_1.c)), Struct_2(true, ~global0.d), Struct_4(~_wgslsmith_dot_vec3_u32(u_input.a.xwy, u_input.a.ywx), -178f, vec2<bool>(global4.a, !global4.a))));
    global4 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec2<f32>(-1413f, global0.c))), _wgslsmith_f_op_f32(-global0.b))) > _wgslsmith_f_op_f32(-global0.c), _wgslsmith_div_vec3_i32(-vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global4.b.x, global4.b.x), global4.b.xz), 0i, reverseBits(-6269i)), -vec3<i32>(2147483647i, 33458i, 1i) ^ abs(func_6(-374f, Struct_4(arg_0, global0.b, vec2<bool>(global4.a, true))).a.yxw)));
    global1 = vec3<u32>(arg_1.a, _wgslsmith_dot_vec4_u32(vec4<u32>(~22075u, 1u, 13097u >> (firstTrailingBit(1u) % 32u), ~_wgslsmith_sub_u32(arg_0, 1u)), firstLeadingBit(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~74803u, arg_1.a), 16u)])), reverseBits(4294967295u));
    var var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(27895i, _wgslsmith_div_i32(global0.a.x << (0u % 32u), _wgslsmith_dot_vec2_i32(global0.a.yz, firstLeadingBit(vec2<i32>(801i, global4.b.x)))), min(-36546i ^ firstTrailingBit(21377i), _wgslsmith_clamp_i32(global0.a.x, 2147483647i, 0i) | global0.a.x), ~_wgslsmith_add_i32(1i, global4.b.x << (20621u % 32u))), reverseBits(select(reverseBits(func_6(-594f, Struct_4(4294967295u, arg_1.b, vec2<bool>(global4.a, arg_1.c))).a), ~vec4<i32>(7243i, global4.b.x, global0.a.x, u_input.b), true)));
    let var_1 = Struct_1(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + -165f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec4<bool>(arg_2 <= global0.c, arg_2 < arg_1.b, true, true))) + arg_1.b), _wgslsmith_add_vec3_i32(abs(var_0.xwz << (~u_input.a.wzx % vec3<u32>(32u))), global4.b));
    return Struct_2(true, vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(global0.a.wyz, _wgslsmith_div_vec3_i32(global4.b, vec3<i32>(36428i, global0.a.x, u_input.b))));
}

fn func_7(arg_0: vec3<u32>, arg_1: Struct_2) -> Struct_3 {
    global2 = array<Struct_5, 30>();
    var var_0 = arg_0.x;
    var var_1 = func_5(func_5(Struct_4(72825u, global0.c, func_3(global2[_wgslsmith_index_u32(global1.x | 16051u, 30u)]).xw), arg_1, func_5(Struct_4(min(global1.x, 31671u), _wgslsmith_f_op_f32(ceil(global0.c)), func_5(Struct_4(37450u, global0.b, vec2<bool>(global4.a, true)), arg_1, Struct_4(4294967295u, -331f, vec2<bool>(arg_1.a, false))).c), arg_1, func_5(Struct_4(0u, global0.c, vec2<bool>(false, global4.a)), arg_1, func_5(Struct_4(0u, global0.b, vec2<bool>(global4.a, false)), Struct_2(true, vec3<i32>(1i, global0.d.x, global0.d.x)), Struct_4(u_input.a.x, global0.c, vec2<bool>(true, true)))))), arg_1, func_5(Struct_4(global1.x, -118f, func_3(global2[_wgslsmith_index_u32(countOneBits(global1.x), 30u)]).xx), arg_1, Struct_4(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_mult_u32(global1.x, 10308u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b, -164f)), select(!vec2<bool>(global4.a, arg_1.a), !vec2<bool>(global4.a, true), vec2<bool>(false, arg_1.a)))));
    let var_2 = -736f;
    var var_3 = func_5(Struct_4(0u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_6(781f, Struct_4(0u, 318f, vec2<bool>(true, false))).b), var_2), var_1.c), arg_1, Struct_4(~_wgslsmith_mult_u32(u_input.a.x, max(global1.x, global1.x)), var_1.b, var_1.c));
    return Struct_3(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-451f)))) + _wgslsmith_div_f32(495f, -262f)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<u32>, 16>();
    var var_0 = func_7(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(firstTrailingBit(u_input.a.x), ~u_input.a.x, abs(31193u))), vec3<u32>(0u, _wgslsmith_mult_u32(1u, u_input.a.x) | ~u_input.a.x, countOneBits(~u_input.a.x))), func_1(_wgslsmith_add_u32(~38830u, 0u), global2[_wgslsmith_index_u32(~global1.x, 30u)], global0.c));
    let var_1 = firstLeadingBit(countOneBits(reverseBits(i32(-1i) * -15104i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(countOneBits(min(vec2<u32>(37296u, global1.x), ~vec2<u32>(61592u, u_input.a.x))), global1.zz), vec3<i32>(-40199i, _wgslsmith_sub_i32(func_6(-659f, Struct_4(4294967295u, 907f, vec2<bool>(false, var_0.a.a))).d.x, -2147483647i), countOneBits(-u_input.b)) ^ -var_0.a.b, _wgslsmith_f_op_f32(-var_0.b));
}

