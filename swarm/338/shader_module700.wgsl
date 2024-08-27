struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26> = array<u32, 26>(16408u, 3956u, 1u, 41863u, 1u, 76817u, 4294967295u, 4294967295u, 4294967295u, 1u, 53524u, 35811u, 1u, 0u, 4294967295u, 127502u, 15487u, 39102u, 50572u, 60310u, 0u, 4294967295u, 21012u, 4294967295u, 1u, 105972u);

var<private> global1: array<vec4<u32>, 27>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec2<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -2671f);
    var var_1 = firstLeadingBit(~_wgslsmith_add_vec3_u32(select(~vec3<u32>(arg_2.x, 1594u, arg_0.c), _wgslsmith_mult_vec3_u32(vec3<u32>(83846u, 97412u, global0[_wgslsmith_index_u32(arg_2.x, 26u)]), u_input.a), true), abs(~vec3<u32>(arg_0.c, arg_0.b, 78891u))));
    var var_2 = Struct_3(arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(305f, 559f, -1489f, var_0) - vec4<f32>(1206f, var_0, 1274f, var_0)) * vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1534f), _wgslsmith_f_op_f32(abs(var_0)), -165f))), false);
    var var_3 = !select(vec3<bool>(all(select(vec4<bool>(var_2.c, false, var_2.c, var_2.c), vec4<bool>(var_2.c, false, var_2.c, var_2.c), vec4<bool>(var_2.c, var_2.c, var_2.c, var_2.c))), any(vec3<bool>(false, var_2.c, var_2.c)) && all(vec2<bool>(var_2.c, var_2.c)), var_2.c), select(select(!vec3<bool>(true, var_2.c, var_2.c), vec3<bool>(var_2.c, var_2.c, var_2.c), !var_2.c), select(select(vec3<bool>(false, true, false), vec3<bool>(var_2.c, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(var_2.c, true, var_2.c), vec3<bool>(true, var_2.c, var_2.c), var_2.c), !var_2.c), vec3<bool>(var_2.c, !var_2.c, var_2.c)), true);
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-1545f + -1649f)) + 1f))), var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_2.b.x))))));
    return ~(~var_2.a.a.x);
}

fn func_2(arg_0: Struct_4, arg_1: u32, arg_2: bool) -> Struct_2 {
    return Struct_2(global1[_wgslsmith_index_u32(arg_0.d.a.b, 27u)], _wgslsmith_div_u32(global0[_wgslsmith_index_u32(firstTrailingBit(~0u), 26u)], abs(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(0u, 26u)], 61812u, 47055u, global0[_wgslsmith_index_u32(18630u, 26u)]), arg_0.d.a.a)))), _wgslsmith_dot_vec3_u32(arg_0.d.a.a.wyw, _wgslsmith_div_vec3_u32(vec3<u32>(~arg_1, func_3(Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], arg_0.d.a.c, 55589u), vec2<u32>(1u, u_input.a.x), arg_0.d.a.a.yx), u_input.a.x | 1u), arg_0.d.a.a.zxw)));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<bool>) -> vec2<u32> {
    return ~arg_2.a.zx;
}

fn func_5(arg_0: i32, arg_1: vec2<u32>, arg_2: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_1(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -419f), _wgslsmith_f_op_f32(275f - -468f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1917f * 2679f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -195f), _wgslsmith_f_op_f32(floor(-1000f)))) * _wgslsmith_f_op_f32(-517f + _wgslsmith_f_op_f32(f32(-1f) * -2141f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1600f))) - 1f), _wgslsmith_div_f32(-694f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-274f)) * _wgslsmith_f_op_f32(1607f - -1628f)))), vec2<bool>(select(1i, arg_2.x, true) > arg_0, any(vec2<bool>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(424u, 26u)], 26u)] > arg_1.x, true))), -vec4<i32>(arg_0, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, 22815i, arg_0), ~vec3<i32>(arg_0, -9262i, -25825i)), 2147483647i, firstTrailingBit(arg_2.x >> (global0[_wgslsmith_index_u32(u_input.a.x, 26u)] % 32u))));
    global1 = array<vec4<u32>, 27>();
    global1 = array<vec4<u32>, 27>();
    let var_1 = var_0.e.x;
    let var_2 = abs(select(vec3<u32>(_wgslsmith_dot_vec4_u32(~global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 27u)], ~global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], 26u)], 27u)]), 1u, ~max(1u, 0u)), _wgslsmith_mult_vec3_u32(reverseBits(select(u_input.a, vec3<u32>(13506u, global0[_wgslsmith_index_u32(1u, 26u)], arg_1.x), var_0.d.x)), u_input.a), var_0.d.x));
    return func_2(Struct_4(var_0.c, false, Struct_3(func_2(Struct_4(vec3<f32>(-1387f, var_0.c.x, var_0.c.x), var_0.a.x, Struct_3(Struct_2(global1[_wgslsmith_index_u32(18755u, 27u)], 0u, 47037u), vec4<f32>(var_0.c.x, var_0.b.x, 341f, var_0.b.x), var_0.d.x), Struct_3(Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], arg_1.x, 9964u), vec4<f32>(-802f, 201f, var_0.c.x, var_0.c.x), var_0.a.x)), func_3(Struct_2(global1[_wgslsmith_index_u32(4294967295u, 27u)], arg_1.x, 9954u), vec2<u32>(global0[_wgslsmith_index_u32(var_2.x, 26u)], 0u), arg_1), true), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, 1170f))), var_0.a.x), Struct_3(Struct_2(vec4<u32>(32740u, arg_1.x, var_2.x, 1u), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, 26372u), 26u)], 91563u), vec4<f32>(_wgslsmith_f_op_f32(-323f + 440f), _wgslsmith_div_f32(1570f, var_0.c.x), 1000f, _wgslsmith_f_op_f32(abs(var_0.c.x))), var_0.a.x)), 45443u, var_2.x >= _wgslsmith_mod_u32(_wgslsmith_clamp_u32(~u_input.a.x, _wgslsmith_add_u32(1u, arg_1.x), func_2(Struct_4(var_0.b, var_0.d.x, Struct_3(Struct_2(global1[_wgslsmith_index_u32(var_2.x, 27u)], arg_1.x, global0[_wgslsmith_index_u32(46501u, 26u)]), vec4<f32>(-1495f, var_0.c.x, var_0.b.x, var_0.b.x), false), Struct_3(Struct_2(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], 27u)], var_2.x, 9509u), vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x), true)), u_input.a.x, false).c), arg_1.x));
}

fn func_6(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    global1 = array<vec4<u32>, 27>();
    var var_0 = Struct_1(select(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false)), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, select(true, all(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, false, true, true))), _wgslsmith_mod_u32(37065u, 1u) < abs(u_input.a.x), true)), vec3<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-arg_0))), arg_0), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2210f, arg_0, _wgslsmith_f_op_f32(trunc(-848f))))), vec2<bool>(!all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !(!all(vec3<bool>(true, true, false)))), vec4<i32>(_wgslsmith_add_i32(1i, 1i), _wgslsmith_mult_i32(min(i32(-1i) * -1i, firstTrailingBit(-17503i)), reverseBits(abs(1i))), _wgslsmith_mod_i32(~(~42713i), ~1i), _wgslsmith_div_i32(~(~2147483647i), 1i)));
    global1 = array<vec4<u32>, 27>();
    global0 = array<u32, 26>();
    let var_1 = u_input.a.xz;
    return func_5(-max(2147483647i, max(~1i, _wgslsmith_add_i32(var_0.e.x, -1i))), vec2<u32>(countOneBits(u_input.a.x), 1u), vec2<i32>(1750i & var_0.e.x, 1381i));
}

fn func_7(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_2 {
    global1 = array<vec4<u32>, 27>();
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-547f, _wgslsmith_f_op_f32(select(-984f, 1126f, arg_1.x)), arg_1.x))))));
    global0 = array<u32, 26>();
    global1 = array<vec4<u32>, 27>();
    var var_1 = -abs(firstTrailingBit(vec3<i32>(1i, firstTrailingBit(2147483647i), ~(-2147483647i))));
    return arg_2;
}

fn func_1(arg_0: i32) -> Struct_3 {
    global1 = array<vec4<u32>, 27>();
    let var_0 = func_7(func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1723f, -575f))))), func_5(_wgslsmith_sub_i32(arg_0, _wgslsmith_mod_i32(arg_0, -33633i)), func_4(_wgslsmith_f_op_f32(f32(-1f) * -595f), func_2(Struct_4(vec3<f32>(946f, 466f, -356f), true, Struct_3(Struct_2(vec4<u32>(34267u, global0[_wgslsmith_index_u32(u_input.a.x, 26u)], 78246u, 35996u), global0[_wgslsmith_index_u32(u_input.a.x, 26u)], u_input.a.x), vec4<f32>(-756f, -1000f, -206f, 705f), false), Struct_3(Struct_2(vec4<u32>(u_input.a.x, u_input.a.x, 16648u, 20750u), u_input.a.x, 6521u), vec4<f32>(250f, -833f, 1000f, -1138f), false)), 35571u, false), func_2(Struct_4(vec3<f32>(-348f, 623f, -408f), true, Struct_3(Struct_2(vec4<u32>(0u, u_input.a.x, 0u, 0u), 4671u, 121868u), vec4<f32>(-1960f, -1000f, -320f, 1310f), true), Struct_3(Struct_2(global1[_wgslsmith_index_u32(4294967295u, 27u)], 4294967295u, u_input.a.x), vec4<f32>(966f, 792f, 219f, -1231f), false)), 36733u, false), vec3<bool>(false, true, false)), firstLeadingBit(-vec2<i32>(1i, -1i)))), vec4<bool>(false, all(vec4<bool>(arg_0 == arg_0, true, true, false)), true, true), Struct_2(global1[_wgslsmith_index_u32(~1u, 27u)], func_6(1f, func_5(-32005i, vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 26u)], 5945u), _wgslsmith_div_vec2_i32(vec2<i32>(arg_0, 1i), vec2<i32>(arg_0, arg_0)))).b, ~(global0[_wgslsmith_index_u32(abs(39695u), 26u)] >> (44169u % 32u))), ~_wgslsmith_mod_vec4_u32(global1[_wgslsmith_index_u32(0u, 27u)], ~global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], 44537u), 27u)]));
    global0 = array<u32, 26>();
    global1 = array<vec4<u32>, 27>();
    global0 = array<u32, 26>();
    return Struct_3(func_7(Struct_2(_wgslsmith_clamp_vec4_u32(global1[_wgslsmith_index_u32(var_0.c, 27u)] & var_0.a, ~vec4<u32>(u_input.a.x, 61814u, var_0.c, 1u), vec4<u32>(1u, u_input.a.x, u_input.a.x, 2267u)), 0u, ~global0[_wgslsmith_index_u32(~1u, 26u)]), vec4<bool>(true, !any(vec4<bool>(false, false, false, true)), true, true), Struct_2(vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(1u, 26u)], 58705u, 0u), _wgslsmith_div_u32(68023u, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(0u, 26u)], 4294967295u)), _wgslsmith_add_u32(~5151u, ~var_0.a.x)), ~(~vec4<u32>(var_0.a.x, u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 26u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(844f, 915f, 545f, -138f), vec4<f32>(268f, 588f, -446f, -130f)) - vec4<f32>(-578f, 274f, 1000f, -289f)))), all(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true), true), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), false), false), select(var_0.c != 4294967295u, var_0.a.x >= 0u, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 26>();
    let var_0 = func_1(_wgslsmith_add_i32(_wgslsmith_mod_i32(2147483647i, ~_wgslsmith_clamp_i32(2147483647i, 14460i, 41264i)), _wgslsmith_mod_i32(0i, _wgslsmith_div_i32(countOneBits(51327i), 0i >> (global0[_wgslsmith_index_u32(0u, 26u)] % 32u)))));
    let var_1 = var_0;
    var var_2 = vec2<bool>(true, true);
    let var_3 = countOneBits(~(~u_input.a) >> (min(func_6(_wgslsmith_f_op_f32(min(var_1.b.x, 213f)), var_0.a).a.zww, vec3<u32>(var_1.a.a.x, var_1.a.b, _wgslsmith_add_u32(var_0.a.c, u_input.a.x))) % vec3<u32>(32u)));
    let var_4 = _wgslsmith_add_u32((firstTrailingBit(select(0u, 17388u, true)) << (~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], 26u)]) % 32u)) | var_0.a.b, ~var_1.a.c);
    var var_5 = abs(_wgslsmith_sub_vec2_u32(vec2<u32>(var_4, 9412u), ~(~func_5(-2147483647i, vec2<u32>(45832u, var_1.a.b), vec2<i32>(30222i, 49555i)).a.xy)));
    let var_6 = Struct_1(vec4<bool>(1u >= u_input.a.x, false, true, var_2.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.b.x, 1782f, var_0.b.x))), vec3<f32>(var_0.b.x, -191f, 329f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.b.x)), _wgslsmith_f_op_f32(var_0.b.x + 3042f), _wgslsmith_f_op_f32(f32(-1f) * -365f)))), !select(vec2<bool>(true, any(vec4<bool>(false, var_2.x, true, true))), vec2<bool>(true, var_1.c), var_2.x), vec4<i32>(-1i, 1i, -1i, 6667i));
    var_5 = vec2<u32>(var_3.x, var_1.a.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, var_6.e.x);
}

