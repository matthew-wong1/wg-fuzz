struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: i32,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 11>;

var<private> global1: array<i32, 19>;

var<private> global2: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec2<bool>(true, false), vec3<bool>(false, true, false), 25154i, vec3<i32>(7059i, -38942i, -7123i), vec2<f32>(228f, 1116f)), Struct_1(vec2<bool>(false, false), vec3<bool>(true, true, true), 0i, vec3<i32>(2147483647i, -1i, 2147483647i), vec2<f32>(-776f, 756f)), Struct_1(vec2<bool>(true, true), vec3<bool>(false, false, false), -1i, vec3<i32>(-21603i, -56610i, 1i), vec2<f32>(-1000f, -501f)), Struct_1(vec2<bool>(false, false), vec3<bool>(false, true, true), -15238i, vec3<i32>(-7308i, i32(-2147483648), -2541i), vec2<f32>(754f, 395f)), Struct_1(vec2<bool>(false, false), vec3<bool>(false, true, true), -44133i, vec3<i32>(-1i, -81620i, 2147483647i), vec2<f32>(1000f, -516f)), Struct_1(vec2<bool>(true, true), vec3<bool>(true, false, false), i32(-2147483648), vec3<i32>(-30004i, 9138i, 34167i), vec2<f32>(546f, 661f)), Struct_1(vec2<bool>(false, true), vec3<bool>(false, false, true), 59517i, vec3<i32>(-1i, -20970i, 0i), vec2<f32>(520f, -1000f)), Struct_1(vec2<bool>(false, false), vec3<bool>(false, false, false), 24343i, vec3<i32>(24130i, -9159i, 27729i), vec2<f32>(514f, 1608f)), Struct_1(vec2<bool>(true, true), vec3<bool>(false, true, true), 5320i, vec3<i32>(-15789i, 31696i, 1i), vec2<f32>(-1728f, -577f)), Struct_1(vec2<bool>(true, false), vec3<bool>(true, false, false), 0i, vec3<i32>(0i, 2147483647i, 61618i), vec2<f32>(119f, 2333f)), Struct_1(vec2<bool>(true, true), vec3<bool>(false, false, true), -60452i, vec3<i32>(0i, 0i, -27036i), vec2<f32>(-400f, 1331f)), Struct_1(vec2<bool>(true, true), vec3<bool>(true, false, true), 2147483647i, vec3<i32>(-17016i, -15844i, -13171i), vec2<f32>(787f, 657f)), Struct_1(vec2<bool>(true, true), vec3<bool>(false, true, false), 2147483647i, vec3<i32>(-4095i, -40483i, 29838i), vec2<f32>(945f, -1607f)), Struct_1(vec2<bool>(true, false), vec3<bool>(false, false, false), -1i, vec3<i32>(-17707i, 1i, 0i), vec2<f32>(-317f, -128f)), Struct_1(vec2<bool>(false, true), vec3<bool>(false, false, true), -1i, vec3<i32>(-34555i, 54985i, -14443i), vec2<f32>(-490f, -493f)), Struct_1(vec2<bool>(false, true), vec3<bool>(true, false, true), -5962i, vec3<i32>(-6581i, -32082i, 25029i), vec2<f32>(121f, 412f)), Struct_1(vec2<bool>(true, false), vec3<bool>(true, false, false), 25163i, vec3<i32>(i32(-2147483648), -8669i, -13389i), vec2<f32>(502f, -1000f)), Struct_1(vec2<bool>(true, false), vec3<bool>(false, false, false), 8883i, vec3<i32>(-28031i, 74910i, 14409i), vec2<f32>(1000f, -1763f)), Struct_1(vec2<bool>(true, false), vec3<bool>(false, false, true), 1i, vec3<i32>(1i, 0i, -19349i), vec2<f32>(647f, 704f)), Struct_1(vec2<bool>(true, false), vec3<bool>(true, false, false), -13752i, vec3<i32>(-35185i, -40871i, 52014i), vec2<f32>(-1504f, -1231f)));

var<private> global3: array<f32, 17>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    global1 = array<i32, 19>();
    var var_0 = !(!(true && all(vec3<bool>(false, true, true))));
    let var_1 = all(select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), ~16174u >= min(0u, u_input.e.x))) & all(vec3<bool>(all(vec2<bool>(true, true)), true, false));
    let var_2 = global2[_wgslsmith_index_u32(0u, 20u)];
    var_0 = _wgslsmith_div_i32(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(9990i, u_input.a, 1i), ~var_2.d), u_input.b.yyx)) <= select(-1i, _wgslsmith_add_i32(~(-24068i), _wgslsmith_sub_i32(20930i, 38789i)) >> (u_input.d % 32u), !any(select(vec4<bool>(false, var_2.b.x, var_2.a.x, false), vec4<bool>(var_1, var_2.a.x, false, var_1), vec4<bool>(var_1, var_2.a.x, false, var_1))));
    return global3[_wgslsmith_index_u32(u_input.e.x, 17u)];
}

fn func_2(arg_0: bool) -> Struct_3 {
    global0 = array<vec4<i32>, 11>();
    var var_0 = vec4<f32>(-283f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.e.x, 17u)], -516f))))), -919f);
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-269f - -181f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1569f, global3[_wgslsmith_index_u32(u_input.e.x, 17u)]) - 1212f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.e.x, 17u)]) + 152f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))))), 1643f, 1f, _wgslsmith_f_op_f32(round(var_0.x)));
    var var_1 = Struct_2(Struct_1(select(select(vec2<bool>(true, arg_0), !vec2<bool>(arg_0, true), arg_0), vec2<bool>(true, true), select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(false, true)), vec2<bool>(true, true), select(true, true, arg_0))), select(vec3<bool>(arg_0, arg_0, true), select(vec3<bool>(arg_0, true, false), !vec3<bool>(true, arg_0, arg_0), arg_0), arg_0), u_input.b.x, max(u_input.b.www, u_input.b.yzz >> (_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 42498u, 8607u), vec3<u32>(u_input.d, u_input.e.x, u_input.e.x)) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(min(var_0.xx, var_0.xx))), firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.b.zy, u_input.c)), ~_wgslsmith_sub_u32(~u_input.d ^ u_input.d, _wgslsmith_clamp_u32(~19676u, u_input.e.x, ~0u)));
    global0 = array<vec4<i32>, 11>();
    return Struct_3(select(select(!select(vec4<bool>(true, false, arg_0, false), vec4<bool>(false, false, false, var_1.a.b.x), arg_0), select(select(vec4<bool>(var_1.a.b.x, var_1.a.b.x, arg_0, arg_0), vec4<bool>(var_1.a.b.x, var_1.a.a.x, arg_0, false), true), select(vec4<bool>(false, arg_0, arg_0, true), vec4<bool>(false, false, true, var_1.a.a.x), vec4<bool>(var_1.a.b.x, var_1.a.b.x, var_1.a.b.x, true)), vec4<bool>(var_1.a.b.x, var_1.a.a.x, arg_0, arg_0)), true), !vec4<bool>(arg_0, !var_1.a.a.x, u_input.c.x < global1[_wgslsmith_index_u32(1u, 19u)], var_1.a.b.x), !select(select(vec4<bool>(var_1.a.a.x, arg_0, false, arg_0), vec4<bool>(true, arg_0, arg_0, true), true), select(vec4<bool>(true, true, var_1.a.a.x, var_1.a.a.x), vec4<bool>(true, false, arg_0, false), true), !arg_0)));
}

fn func_1(arg_0: vec3<bool>) -> bool {
    var var_0 = func_2(arg_0.x);
    var var_1 = _wgslsmith_mod_u32(u_input.e.x >> (u_input.d % 32u), firstLeadingBit(reverseBits(0u)));
    let var_2 = Struct_4(!vec4<bool>(arg_0.x, true, false, any(vec2<bool>(true, false)) | select(true, var_0.a.x, true)), !vec4<bool>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.e.x, 17u)]) < global3[_wgslsmith_index_u32(0u, 17u)], arg_0.x | false, 818f <= _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.e.x, 17u)] * global3[_wgslsmith_index_u32(u_input.e.x, 17u)]), !(-2147483647i == global1[_wgslsmith_index_u32(1u, 19u)])));
    var var_3 = global2[_wgslsmith_index_u32(countOneBits(u_input.d), 20u)];
    var var_4 = ~vec4<i32>(-u_input.a, global1[_wgslsmith_index_u32(min(~reverseBits(52065u), u_input.d), 19u)], 2147483647i, 1i);
    return !all(vec3<bool>(var_3.a.x, var_3.a.x, all(var_0.a)));
}

fn func_4(arg_0: vec2<bool>) -> Struct_2 {
    let var_0 = ~(~(~vec4<u32>(u_input.d, u_input.d, u_input.d, 0u) >> (~(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, 31977u) >> (vec4<u32>(1u, u_input.d, 0u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_1 = (!all(!vec3<bool>(arg_0.x, false, arg_0.x)) && false) && !(!(!arg_0.x && func_1(vec3<bool>(arg_0.x, arg_0.x, arg_0.x))));
    let var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, ~(-global1[_wgslsmith_index_u32(1u, 19u)]), global1[_wgslsmith_index_u32(0u, 19u)]) >> (var_0.wxw % vec3<u32>(32u)), ~_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.b.wyx | vec3<i32>(global1[_wgslsmith_index_u32(u_input.e.x, 19u)], u_input.c.x, 10264i), countOneBits(vec3<i32>(-1361i, 0i, u_input.b.x))), u_input.b.wzy));
    global3 = array<f32, 17>();
    var var_3 = var_0.x;
    return Struct_2(Struct_1(func_2(arg_0.x).a.xx, vec3<bool>(true, func_2(any(vec3<bool>(false, false, false))).a.x, true), -(1i >> (abs(var_0.x) % 32u)), min(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, var_2.x, u_input.a), abs(vec3<i32>(u_input.b.x, 1i, -1i))), u_input.b.zww), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(604f, -887f) * vec2<f32>(global3[_wgslsmith_index_u32(u_input.d, 17u)], 653f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(10000u, 17u)], -785f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(21921u, 17u)], global3[_wgslsmith_index_u32(1u, 17u)]) - vec2<f32>(global3[_wgslsmith_index_u32(40974u, 17u)], -1504f)), arg_0.x & false))))), global1[_wgslsmith_index_u32(1u, 19u)], 1u);
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec3<i32>) -> vec3<bool> {
    var var_0 = firstTrailingBit(~min(vec4<u32>(_wgslsmith_add_u32(0u, 4294967295u), ~arg_0.c, 4294967295u, firstTrailingBit(arg_0.c)), vec4<u32>(arg_0.c | arg_0.c, 1u, ~6035u, ~1u)));
    var_0 = vec4<u32>(min(func_4(func_2(false).a.xz).c >> (~16799u % 32u), ~(~(~arg_0.c))), arg_0.c, abs(min(u_input.d, _wgslsmith_mult_u32(1u, 1u) >> (~arg_0.c % 32u))), ~1u);
    global2 = array<Struct_1, 20>();
    let var_1 = Struct_3(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 19u)] > ~_wgslsmith_add_i32(1i, u_input.c.x), 404f >= _wgslsmith_f_op_f32(func_3()), true, !(!(arg_2.x >= 22072i))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_0.c, 17u)]), global3[_wgslsmith_index_u32(0u >> (arg_0.c % 32u), 17u)], func_4(vec2<bool>(arg_0.a.a.x, var_1.a.x)).a.e.x, _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(u_input.e.x, 17u)], arg_0.a.e.x, false)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(arg_0.c, 17u)], 1000f, global3[_wgslsmith_index_u32(arg_0.c, 17u)], -1098f) - vec4<f32>(731f, arg_0.a.e.x, -763f, 667f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-292f, arg_0.a.e.x, 615f, 1382f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.e.x, 1594f, 2171f, 760f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(24905u, 17u)], arg_0.a.e.x, arg_0.a.e.x, arg_0.a.e.x) * vec4<f32>(-815f, 1002f, 769f, global3[_wgslsmith_index_u32(u_input.e.x, 17u)]))), true || !var_1.a.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a.e.x, arg_0.a.e.x, -400f, 247f), vec4<f32>(global3[_wgslsmith_index_u32(51313u, 17u)], 852f, arg_0.a.e.x, global3[_wgslsmith_index_u32(u_input.d, 17u)]), true))), vec4<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 17u)]), _wgslsmith_f_op_f32(f32(-1f) * -865f), global3[_wgslsmith_index_u32(firstLeadingBit(24811u), 17u)], -1076f)))));
    return vec3<bool>(true, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(vec3<u32>(~0u, min(u_input.d, 15920u), ~countOneBits(~1u)));
    var var_1 = true;
    let var_2 = func_5(func_4(select(vec2<bool>(func_1(vec3<bool>(true, true, true)), true), vec2<bool>(true, true), any(vec3<bool>(true, true, true)))), false, ~(~vec3<i32>(0i, u_input.a << (var_0.x % 32u), global1[_wgslsmith_index_u32(u_input.d, 19u)] ^ u_input.a)));
    global1 = array<i32, 19>();
    var var_3 = max(_wgslsmith_mod_u32(u_input.d, 1u), u_input.e.x);
    let var_4 = vec3<u32>(u_input.e.x, abs(_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.e.x, ~var_0.x, 5181u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.e.x, 3696u, 12428u), vec4<u32>(0u, u_input.e.x, 4294967295u, u_input.e.x)))), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(u_input.e, _wgslsmith_mod_vec2_u32(firstLeadingBit(~vec2<u32>(0u, 34276u)), var_4.xx)), select(u_input.b.x, _wgslsmith_clamp_i32((1i >> (u_input.e.x % 32u)) << (_wgslsmith_sub_u32(var_0.x, var_4.x) % 32u), u_input.a & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 14033i, global1[_wgslsmith_index_u32(1u, 19u)], -1i), global0[_wgslsmith_index_u32(var_0.x, 11u)]), -u_input.b.x), var_2.x & func_2(true).a.x), func_4(var_2.xz).c, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(var_4.x, 17u)])), -496f, _wgslsmith_f_op_f32(floor(813f)), 1291f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -407f, global3[_wgslsmith_index_u32(max(var_4.x, var_0.x), 17u)], 1570f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-474f, 365f, -2308f, global3[_wgslsmith_index_u32(u_input.e.x, 17u)])) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(77701u, 17u)], global3[_wgslsmith_index_u32(1u, 17u)], global3[_wgslsmith_index_u32(101073u, 17u)], -830f)))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(var_4.x, 17u)], 656f, global3[_wgslsmith_index_u32(54661u, 17u)])) + vec3<f32>(global3[_wgslsmith_index_u32(u_input.d, 17u)], -100f, 528f))))));
}

