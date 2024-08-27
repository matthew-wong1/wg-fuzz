struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 18> = array<vec3<i32>, 18>(vec3<i32>(-1i, 4039i, i32(-2147483648)), vec3<i32>(-3092i, 14592i, -1i), vec3<i32>(10809i, -60600i, -1i), vec3<i32>(8384i, 12911i, -40426i), vec3<i32>(36245i, 1i, 13665i), vec3<i32>(-1i, -1i, -26174i), vec3<i32>(5183i, -22555i, 1i), vec3<i32>(-30027i, 18122i, -19244i), vec3<i32>(i32(-2147483648), 43784i, 0i), vec3<i32>(-43185i, 17346i, 0i), vec3<i32>(15396i, 2147483647i, 2147483647i), vec3<i32>(i32(-2147483648), 51i, i32(-2147483648)), vec3<i32>(-35707i, 2147483647i, -12440i), vec3<i32>(52216i, i32(-2147483648), 1i), vec3<i32>(30773i, 27925i, -38754i), vec3<i32>(-6448i, -9442i, -29826i), vec3<i32>(0i, 0i, 38231i), vec3<i32>(i32(-2147483648), 64544i, 37812i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: f32, arg_1: vec2<bool>) -> vec3<f32> {
    global0 = array<vec3<i32>, 18>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(830f, -1070f, arg_0, 1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-209f, -1701f, arg_0, -506f)))) * vec4<f32>(-854f, _wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, 292f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + 1052f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), -1151f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(exp2(arg_0))), _wgslsmith_f_op_f32(-1796f - arg_0))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1563f, _wgslsmith_f_op_f32(step(var_0.x, var_0.x)), 1000f));
    let var_2 = min(~(~((vec4<u32>(u_input.d, 17169u, u_input.d, u_input.d) >> (vec4<u32>(1u, u_input.d, u_input.d, 0u) % vec4<u32>(32u))) << (vec4<u32>(0u, 11131u, 4294967295u, u_input.d) % vec4<u32>(32u)))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(~1u, ~54903u, 23006u, u_input.d & 55679u), vec4<u32>(0u, firstLeadingBit(u_input.d), 7687u, u_input.d), ~(~vec4<u32>(u_input.d, u_input.d, 109336u, u_input.d))));
    var var_3 = var_0;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_3.zyz)) - vec3<f32>(var_1.x, _wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * -518f))));
}

fn func_3(arg_0: f32) -> vec3<bool> {
    var var_0 = Struct_1(true, vec3<bool>(true, all(vec4<bool>(select(true, false, true), true, true, true)), true));
    let var_1 = Struct_1(var_0.a, select(select(!var_0.b, vec3<bool>(any(var_0.b.xx), var_0.a, true), _wgslsmith_f_op_f32(-arg_0) < _wgslsmith_f_op_f32(abs(-141f))), vec3<bool>(min(25421i, u_input.b) <= -u_input.a, any(select(vec4<bool>(false, true, var_0.a, true), vec4<bool>(var_0.b.x, var_0.b.x, var_0.a, false), var_0.a)), var_0.a), select(var_0.b, vec3<bool>(var_0.b.x, var_0.a, arg_0 != 1446f), var_0.b)));
    var var_2 = 1f;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0));
    let var_4 = var_0.b.x;
    return select(var_1.b, var_0.b, false);
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_2 {
    global0 = array<vec3<i32>, 18>();
    var var_0 = arg_2;
    let var_1 = Struct_3(true, arg_3.yy, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-3183f * _wgslsmith_f_op_f32(arg_1.x + arg_1.x)), -171f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x))), _wgslsmith_f_op_f32(trunc(-283f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1047f - 588f), _wgslsmith_f_op_f32(step(525f, -852f)), _wgslsmith_div_f32(-419f, arg_1.x), _wgslsmith_f_op_f32(step(1394f, arg_1.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1016f, arg_1.x, -465f, -534f), vec4<f32>(arg_1.x, -943f, -526f, arg_1.x))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-706f, 1083f, arg_1.x, 557f), vec4<f32>(456f, 170f, arg_1.x, arg_1.x)))))), -(vec2<i32>(-1i) * -vec2<i32>(29430i, 11998i)), arg_1.yx);
    var var_2 = Struct_3(any(vec4<bool>(true, arg_2.a, true, var_0.b.x)), ~(~vec2<u32>(4294967295u >> (arg_3.x % 32u), _wgslsmith_add_u32(u_input.d, 91u))), _wgslsmith_f_op_vec4_f32(ceil(var_1.c)), -var_1.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_1.yx))));
    var var_3 = 888f;
    return Struct_2(Struct_1(false, var_0.b));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2) -> Struct_4 {
    var var_0 = Struct_3(true, _wgslsmith_mod_vec2_u32(vec2<u32>(~4294967295u, u_input.d), ~firstTrailingBit(vec2<u32>(4294967295u, 0u))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1545f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -202f) + _wgslsmith_f_op_f32(-2301f - -1188f))), 1342f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1462f * 773f)))), -411f), vec2<i32>(_wgslsmith_mult_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(42053i, 1i)), u_input.b), 1i), vec2<f32>(1557f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1489f, 489f) * -1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(159f))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.c.x)) + -850f), var_0.e.x))));
    var var_2 = select(!select(vec4<bool>(false, 1u < u_input.d, all(vec4<bool>(false, false, false, var_0.a)), !arg_0.x), !(!vec4<bool>(arg_0.x, arg_0.x, false, var_0.a)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, var_0.a, var_0.a), !vec4<bool>(false, var_0.a, arg_1.a.b.x, false))), vec4<bool>(any(!func_3(-1109f).xx), true || (u_input.d != (var_0.b.x | 47337u)), arg_1.a.a, true), any(arg_1.a.b));
    let var_3 = arg_1.a;
    let var_4 = arg_1;
    return Struct_4(vec4<i32>(-_wgslsmith_sub_i32(reverseBits(var_0.d.x), ~(-2147483647i)), _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(~reverseBits(1u), 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)]), -var_0.d.x, _wgslsmith_mod_i32(u_input.b, _wgslsmith_mult_i32(-19499i, -10571i))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    global0 = array<vec3<i32>, 18>();
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-509f)), -116f)))));
    let var_1 = func_5(vec3<bool>(!arg_0.x, arg_0.x, true), func_4(arg_0.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1005f, 1305f, var_0.x))) + _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_f32(-var_0.x), arg_0))), Struct_1(any(select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(false, true, false), vec3<bool>(arg_0.x, false, true))), select(func_3(var_0.x), select(vec3<bool>(false, true, true), vec3<bool>(false, arg_0.x, true), arg_0.x), true)), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, 1u, 38481u) << (vec3<u32>(u_input.d, 1u, 52287u) % vec3<u32>(32u)), ~vec3<u32>(u_input.d, 59056u, u_input.d), countOneBits(vec3<u32>(u_input.d, 0u, u_input.d))))));
    var var_2 = false;
    let var_3 = var_0.x;
    return func_4(false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_3, var_0.x) - vec3<f32>(var_0.x, var_0.x, -1168f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-133f, 155f, 864f) + vec3<f32>(1000f, -2087f, -1091f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, var_0.x, -833f))), arg_0.x)))), func_4(arg_0.x, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 339f, 783f), vec3<f32>(var_0.x, var_3, -2753f)), vec3<f32>(335f, 382f, -2352f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, -1273f, -799f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1121f, -1989f) + vec3<f32>(1317f, var_3, var_0.x)))), Struct_1(!select(true, true, arg_0.x), vec3<bool>(true, arg_0.x, any(vec3<bool>(arg_0.x, true, false)))), ~vec3<u32>(abs(4294967295u), 53748u, ~u_input.d)).a, ~(vec3<u32>(u_input.d, 0u, u_input.d >> (17488u % 32u)) << (~(~vec3<u32>(31167u, u_input.d, 0u)) % vec3<u32>(32u)))).a;
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> Struct_4 {
    let var_0 = vec4<u32>(countOneBits(13560u), _wgslsmith_add_u32(~_wgslsmith_sub_u32(72752u, u_input.d) ^ (abs(3998u) ^ u_input.d), (~20446u << ((arg_0 >> (arg_0 % 32u)) % 32u)) ^ _wgslsmith_div_u32(1u, u_input.d)), firstLeadingBit(u_input.d), ~u_input.d);
    var var_1 = 1u;
    var_1 = ~u_input.d;
    let var_2 = func_4(!any(vec4<bool>(arg_3.a.b.x, all(arg_1.a.b), arg_2.b.x && arg_3.a.a, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-611f, -722f, -1470f) + vec3<f32>(-1016f, -996f, 196f))) * vec3<f32>(-617f, _wgslsmith_f_op_f32(-145f + 1108f), 496f))), Struct_1(all(arg_3.a.b), arg_1.a.b), ~(~vec3<u32>(~arg_0, var_0.x, var_0.x)));
    var var_3 = func_4(true, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(497f, -424f, 1324f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1320f, -615f, 1000f)))))))), Struct_1(func_4(_wgslsmith_f_op_f32(-1627f * -561f) <= _wgslsmith_f_op_f32(floor(-827f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-913f, -366f, -606f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(845f, -221f, -455f))), arg_3.a, firstLeadingBit(var_0.xzy)).a.b.x, var_2.a.b), _wgslsmith_add_vec3_u32(vec3<u32>(34260u, ~select(64193u, var_0.x, true), 2742u), ~(~vec3<u32>(5360u, 1u, 1u)) & ((vec3<u32>(u_input.d, 4294967295u, 31177u) & var_0.zyz) << (countOneBits(var_0.wzw) % vec3<u32>(32u))))).a;
    return func_5(arg_3.a.b, func_4(u_input.b >= 956i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(639f, -535f, 739f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-685f, -1131f, -238f)))), var_2.a, var_0.zyy | reverseBits(abs(var_0.wwz))));
}

fn func_7(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: Struct_4) -> Struct_3 {
    var var_0 = func_1(vec2<bool>(_wgslsmith_f_op_f32(-arg_1.x) <= _wgslsmith_f_op_f32(trunc(-229f)), true));
    global0 = array<vec3<i32>, 18>();
    let var_1 = select(min(select(~vec2<u32>(u_input.d, u_input.d) | vec2<u32>(u_input.d, 4294967295u), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, 47802u), vec2<u32>(u_input.d, 30927u)), min(vec2<u32>(u_input.d, u_input.d), vec2<u32>(1u, 17780u))), true), _wgslsmith_add_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(u_input.d, u_input.d)), vec2<u32>(6347u, u_input.d))), firstTrailingBit(vec2<u32>(reverseBits(1u), abs(countOneBits(u_input.d)))), func_4(false, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1645f, -677f, _wgslsmith_f_op_f32(arg_1.x * arg_1.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_0, -1628f))), Struct_1(false, var_0.b), select(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 4294967295u, 52247u, u_input.d), vec4<u32>(68627u, u_input.d, u_input.d, u_input.d)), 1u, u_input.d), select(vec3<u32>(6555u, 4294967295u, 50592u) | vec3<u32>(u_input.d, 7960u, 4294967295u), vec3<u32>(u_input.d, 21055u, u_input.d), !var_0.b), vec3<bool>(true, var_0.a, !var_0.b.x))).a.b.yy);
    var_0 = Struct_1(var_0.a, !var_0.b);
    let var_2 = func_4(-firstTrailingBit(u_input.c) >= (func_6(_wgslsmith_dot_vec2_u32(var_1, var_1), Struct_2(Struct_1(false, var_0.b)), Struct_1(true, var_0.b), func_4(false, vec3<f32>(arg_0, 276f, -1177f), Struct_1(false, vec3<bool>(var_0.a, var_0.a, var_0.a)), vec3<u32>(0u, u_input.d, u_input.d))).a.x & func_6(1u >> (0u % 32u), func_4(true, vec3<f32>(arg_0, 1773f, arg_0), Struct_1(true, var_0.b), vec3<u32>(var_1.x, 4294967295u, 40916u)), Struct_1(true, vec3<bool>(false, var_0.a, false)), func_4(false, vec3<f32>(arg_0, arg_0, -456f), Struct_1(var_0.b.x, var_0.b), vec3<u32>(4294967295u, u_input.d, 34903u))).a.x), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), -444f, arg_0) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 165f, 1000f) - arg_1.yww)))), Struct_1(true, var_0.b), vec3<u32>(u_input.d, u_input.d, u_input.d));
    return Struct_3(arg_1.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-205f + 306f) * -778f)), select(~var_1, _wgslsmith_div_vec2_u32(var_1 << (select(var_1, var_1, var_0.a) % vec2<u32>(32u)), vec2<u32>(86460u, _wgslsmith_mult_u32(var_1.x, u_input.d))), true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1 * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -2725f, -2913f, 1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_1.x, arg_0, -1343f))))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, arg_0, _wgslsmith_f_op_f32(1000f * -2202f), _wgslsmith_div_f32(arg_1.x, 1102f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(393f, -313f, 1119f, arg_1.x)))), arg_3.a.xy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(407f, arg_0) + vec2<f32>(arg_1.x, 723f))) * vec2<f32>(arg_1.x, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(965f, -957f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(732f, 815f, 1499f, -1067f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-414f, 483f, 464f, -1829f), vec4<f32>(-621f, 1305f, -488f, -1671f))))) * vec4<f32>(-115f, -1082f, _wgslsmith_f_op_f32(ceil(969f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1005f, -999f, -562f, -1159f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(124f, -927f, -2042f, 2779f), _wgslsmith_div_vec4_f32(vec4<f32>(619f, 741f, 281f, -571f), vec4<f32>(-490f, -780f, -291f, -157f)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false)))), any(vec2<bool>(false, true)) || true))), func_6(reverseBits(select(~u_input.d, u_input.d, select(false, false, true))), Struct_2(func_1(vec2<bool>(true, false))), Struct_1(true, func_4(true, _wgslsmith_f_op_vec3_f32(vec3<f32>(428f, -458f, 2621f) * vec3<f32>(-925f, -1000f, 466f)), Struct_1(false, vec3<bool>(true, true, false)), vec3<u32>(3923u, u_input.d, 0u)).a.b), func_4(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-598f, -1000f, -990f)), func_1(vec2<bool>(true, false)), _wgslsmith_mult_vec3_u32(vec3<u32>(22585u, 44139u, u_input.d), abs(vec3<u32>(u_input.d, 4294967295u, u_input.d))))), func_5(vec3<bool>(true, true, true), Struct_2(Struct_1(true, vec3<bool>(true, true, true)))));
    let var_1 = Struct_2(func_4(all(select(vec2<bool>(true, false), !vec2<bool>(false, var_0.a), vec2<bool>(true, false))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_0.c.zxw * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1241f, var_0.c.x, -342f) + vec3<f32>(-1346f, 374f, -877f))))), func_1(!(!vec2<bool>(false, var_0.a))), ~(select(vec3<u32>(u_input.d, 17774u, 4294967295u), vec3<u32>(1u, 6382u, 1u), var_0.a) >> (vec3<u32>(u_input.d, 0u, u_input.d) % vec3<u32>(32u)))).a);
    global0 = array<vec3<i32>, 18>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(2343f)), 1978f)))));
    var_0 = func_7(var_0.c.x, _wgslsmith_f_op_vec4_f32(min(var_0.c, _wgslsmith_f_op_vec4_f32(select(var_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_0.c.x, 127f, 1103f))), select(select(vec4<bool>(var_1.a.a, true, false, var_1.a.b.x), vec4<bool>(true, false, var_1.a.a, true), vec4<bool>(true, false, var_0.a, false)), vec4<bool>(var_0.a, var_0.a, true, var_0.a), !vec4<bool>(false, false, var_1.a.b.x, var_0.a)))))), func_5(var_1.a.b, Struct_2(Struct_1(var_1.a.b.x, var_1.a.b))), func_5(vec3<bool>(var_0.a, false, !(u_input.d <= u_input.d)), func_4(var_1.a.a, vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(max(var_0.c.x, -156f)), -875f), func_1(vec2<bool>(var_0.a, var_0.a)), min(vec3<u32>(0u, 0u, u_input.d), vec3<u32>(38993u, 9245u, 1u) | vec3<u32>(0u, var_0.b.x, var_0.b.x)))));
    let var_3 = -985f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_mod_i32(~(-u_input.c), 1i), _wgslsmith_div_i32(_wgslsmith_div_i32(func_7(1225f, vec4<f32>(var_3, var_3, -742f, -716f), Struct_4(vec4<i32>(1i, var_0.d.x, var_0.d.x, 10227i)), Struct_4(vec4<i32>(var_0.d.x, -1i, var_0.d.x, 972i))).d.x, u_input.b), _wgslsmith_clamp_i32(~(-1i), _wgslsmith_clamp_i32(u_input.c, -17852i, var_0.d.x), u_input.a & var_0.d.x)), _wgslsmith_sub_i32(var_0.d.x, _wgslsmith_div_i32(-u_input.b, var_0.d.x))), ~(var_0.b & countOneBits(vec2<u32>(14894u, 4294967295u) >> (vec2<u32>(59339u, var_0.b.x) % vec2<u32>(32u)))), vec2<f32>(_wgslsmith_div_f32(-988f, var_3), -761f));
}

