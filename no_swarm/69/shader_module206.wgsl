struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: vec2<f32>;

var<private> global1: array<vec3<i32>, 24> = array<vec3<i32>, 24>(vec3<i32>(-3150i, i32(-2147483648), 1i), vec3<i32>(-1i, 1i, 7108i), vec3<i32>(-35634i, -67029i, 2147483647i), vec3<i32>(i32(-2147483648), -436i, 33296i), vec3<i32>(0i, 2147483647i, 1i), vec3<i32>(0i, -68049i, -58126i), vec3<i32>(39996i, -77745i, 2724i), vec3<i32>(-50278i, 22836i, 2147483647i), vec3<i32>(-1i, 6649i, 2147483647i), vec3<i32>(-1i, 2147483647i, 7709i), vec3<i32>(7621i, 24230i, 1i), vec3<i32>(-1i, -1i, 2147483647i), vec3<i32>(2147483647i, -31782i, -22973i), vec3<i32>(0i, 1i, i32(-2147483648)), vec3<i32>(-32364i, 27306i, 1i), vec3<i32>(9284i, i32(-2147483648), 1i), vec3<i32>(13252i, 38055i, i32(-2147483648)), vec3<i32>(2147483647i, -4281i, 27066i), vec3<i32>(0i, 1139i, 1i), vec3<i32>(21004i, 1i, 1354i), vec3<i32>(-17025i, -1i, -30032i), vec3<i32>(1i, i32(-2147483648), 1956i), vec3<i32>(2147483647i, 1i, 0i), vec3<i32>(-3911i, -20500i, 1i));

var<private> global2: i32;

var<private> global3: Struct_1 = Struct_1(true, 14675i, 34577u, vec2<f32>(1253f, -622f));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2) -> bool {
    global2 = (~(-2147483647i) | -select(_wgslsmith_sub_i32(arg_0.a.b, arg_0.e.b), u_input.a.x, !arg_0.d.a)) ^ -1i;
    global3 = Struct_1(true, -arg_0.c.x, ~(~(~4294967295u)), vec2<f32>(arg_0.a.d.x, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-global3.d.x))));
    var var_0 = Struct_3(Struct_1(arg_0.b.a | ((u_input.a.x ^ u_input.a.x) != 39295i), arg_0.d.b, arg_0.e.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.d)))), 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -606f)))), Struct_2(Struct_1(true, -_wgslsmith_add_i32(global3.b, u_input.a.x), 71506u, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-951f, arg_0.e.d.x) + arg_0.b.d)))), Struct_1(false, select(-u_input.a.x, ~8354i, !arg_0.e.a), 1u, vec2<f32>(_wgslsmith_f_op_f32(trunc(-767f)), _wgslsmith_f_op_f32(round(-1000f)))), vec3<i32>(global3.b, ~(global3.b ^ global3.b), -reverseBits(global3.b)), arg_0.a, Struct_1(any(vec3<bool>(arg_0.e.a, arg_0.a.a, global3.a)), _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_0.e.b, u_input.a.x, arg_0.d.b), vec3<i32>(global3.b, arg_0.c.x, 2147483647i)), 10406u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_0.e.d)), vec2<f32>(408f, -633f)))));
    let var_1 = 307f;
    let var_2 = Struct_3(arg_0.b, global3.c, global3.d.x, arg_0);
    return select(true, true, all(select(!select(vec2<bool>(false, var_2.a.a), vec2<bool>(var_0.d.d.a, var_0.a.a), true), select(select(vec2<bool>(var_2.d.a.a, global3.a), vec2<bool>(false, true), vec2<bool>(true, arg_0.e.a)), vec2<bool>(var_2.a.a, false), vec2<bool>(false, true)), !select(vec2<bool>(true, arg_0.e.a), vec2<bool>(false, var_2.d.b.a), vec2<bool>(true, global3.a)))));
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    global3 = Struct_1(any(vec4<bool>(func_3(Struct_2(Struct_1(true, -2147483647i, global3.c, vec2<f32>(global3.d.x, 1425f)), Struct_1(false, u_input.a.x, global3.c, vec2<f32>(523f, arg_0.x)), vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), Struct_1(global3.a, u_input.a.x, 4294967295u, vec2<f32>(634f, 459f)), Struct_1(global3.a, -1i, global3.c, arg_0))), global3.a, any(!vec2<bool>(true, global3.a)), global3.a)), u_input.a.x, _wgslsmith_mod_u32(1u, global3.c & 1u), vec2<f32>(1617f, global0.x));
    global0 = global3.d;
    var var_0 = vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.b, global3.b & -1i, global3.b), select(u_input.a.yzx, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(31227u, global3.c, global3.c, global3.c), vec4<u32>(global3.c, global3.c, global3.c, 14946u)), 24u)], global3.a)), global3.b), i32(-1i) * -countOneBits(~global3.b));
    var var_1 = _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a.x, ~(-14668i)), max(vec2<i32>(37516i, _wgslsmith_dot_vec2_i32(u_input.a.xw, _wgslsmith_add_vec2_i32(vec2<i32>(global3.b, -1i), u_input.a.wx))), -firstLeadingBit(vec2<i32>(63177i, 2147483647i))));
    var var_2 = Struct_2(Struct_1(!any(select(vec2<bool>(false, false), vec2<bool>(global3.a, global3.a), false)), ~(~var_0.x), global3.c, global3.d), Struct_1(any(!(!vec2<bool>(false, global3.a))), firstLeadingBit(-1i), _wgslsmith_clamp_u32(select(_wgslsmith_div_u32(318u, 1u), global3.c, false), _wgslsmith_clamp_u32(global3.c, ~22474u, 4294967295u | global3.c), ~35956u), _wgslsmith_f_op_vec2_f32(vec2<f32>(-681f, _wgslsmith_f_op_f32(-151f - -610f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, 550f), vec2<f32>(-1622f, 338f)) * _wgslsmith_div_vec2_f32(vec2<f32>(global3.d.x, -1450f), vec2<f32>(987f, -1593f))))), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(global3.b, var_0.x >> (40120u % 32u), _wgslsmith_mult_i32(var_0.x, -2147483647i)), select(vec3<i32>(var_0.x, 2147483647i, -4666i), global1[_wgslsmith_index_u32(14669u, 24u)], any(vec3<bool>(global3.a, true, global3.a))), u_input.a.wyy), global1[_wgslsmith_index_u32(global3.c, 24u)], select(vec3<bool>(true, all(vec4<bool>(false, true, global3.a, global3.a)), global3.a), !select(vec3<bool>(true, global3.a, true), vec3<bool>(global3.a, global3.a, false), vec3<bool>(global3.a, global3.a, false)), false)), Struct_1(true, ~(-25734i), 17209u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_0 * vec2<f32>(global3.d.x, arg_0.x)), _wgslsmith_f_op_vec2_f32(step(global3.d, vec2<f32>(global0.x, -823f))), !global3.a)))), Struct_1(global3.a != false, global3.b, 4294967295u, _wgslsmith_f_op_vec2_f32(floor(global3.d))));
    return var_2.d;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> Struct_3 {
    return Struct_3(Struct_1(arg_3.d.a, -_wgslsmith_dot_vec2_i32(select(u_input.a.zw, arg_3.c.xx, vec2<bool>(arg_3.b.a, true)), select(arg_3.c.zz, vec2<i32>(u_input.a.x, 19177i), vec2<bool>(global3.a, false))), ~_wgslsmith_sub_u32(16139u, select(1u, arg_3.b.c, global3.a)), _wgslsmith_f_op_vec2_f32(-arg_0.yw)), 4294967295u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.d.x))), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(floor(global3.d.x))), !arg_3.b.a)), Struct_2(func_2(arg_0.yy), Struct_1(!arg_1.a, -(~u_input.a.x), global3.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.xy - vec2<f32>(-646f, 827f)) * arg_0.ww)), global1[_wgslsmith_index_u32(firstTrailingBit(arg_3.d.c), 24u)], func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global3.d.x, -1490f), vec2<f32>(global3.d.x, 763f)))), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global3.d.x, -1639f), arg_0.zw)) + _wgslsmith_f_op_vec2_f32(arg_0.xw - vec2<f32>(1244f, arg_1.d.x))))));
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: Struct_3, arg_3: f32) -> Struct_1 {
    let var_0 = arg_2.d;
    var var_1 = arg_2;
    var var_2 = all(select(!select(vec2<bool>(false, var_1.d.e.a), vec2<bool>(false, arg_2.a.a), vec2<bool>(false, var_1.d.e.a)), select(vec2<bool>(true, true), select(vec2<bool>(arg_2.d.a.a, var_0.e.a), vec2<bool>(true, var_0.e.a), vec2<bool>(global3.a, false)), vec2<bool>(false, global3.a)), select(vec2<bool>(var_1.a.a, global3.a), select(vec2<bool>(global3.a, var_1.d.a.a), vec2<bool>(false, false), global3.a), select(vec2<bool>(var_1.a.a, global3.a), vec2<bool>(global3.a, global3.a), false)))) & (!var_1.d.a.a && var_1.a.a);
    var var_3 = ~select(vec2<u32>(_wgslsmith_sub_u32(1u >> (var_1.a.c % 32u), var_0.d.c), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.c, var_0.d.c, 11876u, var_1.d.b.c), vec4<u32>(1u, var_1.b, 34234u, var_1.a.c)))), ~firstTrailingBit(vec2<u32>(18194u, 75050u) & vec2<u32>(global3.c, 33230u)), false);
    var var_4 = select(!select(select(vec2<bool>(var_0.b.a, var_1.a.a), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(var_1.a.a, var_0.e.a)), vec2<bool>(true, true)), vec2<bool>(!global3.a, false), select(!vec2<bool>(var_0.a.a, false), !vec2<bool>(global3.a, arg_2.d.e.a), true)), select(vec2<bool>(u_input.a.x > u_input.a.x, var_3.x < max(4294967295u, 4294967295u)), vec2<bool>(!var_0.d.a, !var_0.d.a), abs(_wgslsmith_add_u32(global3.c, 0u)) <= func_2(_wgslsmith_f_op_vec2_f32(-var_0.b.d)).c), vec2<bool>(all(vec2<bool>(var_0.e.a & false, global3.a)), global3.a));
    return func_2(_wgslsmith_f_op_vec2_f32(-global3.d));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: u32) -> vec4<f32> {
    var var_0 = _wgslsmith_add_i32(-38456i, _wgslsmith_div_i32(-1i, firstLeadingBit(u_input.a.x)));
    var var_1 = u_input.a.x;
    var var_2 = global3.a;
    global3 = arg_0;
    let var_3 = u_input.a.wwz;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1842f, _wgslsmith_f_op_f32(min(333f, -1335f)), _wgslsmith_f_op_f32(-arg_0.d.x), -1000f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global3.d.x, _wgslsmith_f_op_f32(-global0.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(309f, global3.d.x, 1000f, 1000f)), vec4<f32>(562f, -136f, global3.d.x, global3.d.x))))));
}

fn func_7(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: f32) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(sign(global3.d));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: bool) -> Struct_3 {
    global0 = _wgslsmith_f_op_vec2_f32(func_7(_wgslsmith_f_op_vec4_f32(func_6(func_5(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), func_4(vec4<f32>(global0.x, 1342f, arg_0.x, 222f), func_2(global3.d), -297f, Struct_2(Struct_1(arg_1, -11745i, 4294967295u, arg_0), Struct_1(true, global3.b, 1u, vec2<f32>(arg_0.x, global0.x)), vec3<i32>(global3.b, global3.b, 0i), Struct_1(false, global3.b, 39189u, global3.d), Struct_1(arg_2, u_input.a.x, global3.c, global3.d))), _wgslsmith_f_op_f32(689f * _wgslsmith_f_op_f32(-global0.x))), vec2<bool>(any(select(vec2<bool>(false, global3.a), vec2<bool>(false, false), true)), true), 0u)), u_input.a.zz, 373f));
    global3 = Struct_1(func_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global3.d), _wgslsmith_f_op_vec2_f32(vec2<f32>(1716f, global3.d.x) - vec2<f32>(global0.x, arg_0.x)))), arg_0))).a, -_wgslsmith_div_i32(-18984i, ~u_input.a.x << (~4294967295u % 32u)), 1u, vec2<f32>(-2340f, _wgslsmith_f_op_vec4_f32(func_6(Struct_1(true, global3.b, 1u, vec2<f32>(global3.d.x, arg_0.x)), select(!vec2<bool>(arg_2, arg_1), select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, global3.a), vec2<bool>(arg_2, false)), !vec2<bool>(arg_2, true)), reverseBits(global3.c))).x));
    let var_0 = _wgslsmith_mod_i32(global3.b, 17877i);
    return func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_vec2_f32(func_7(vec4<f32>(arg_0.x, global0.x, arg_0.x, -1559f), u_input.a.wx, 1074f)).x, _wgslsmith_f_op_f32(sign(152f)), _wgslsmith_f_op_f32(-arg_0.x)))), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, _wgslsmith_f_op_vec4_f32(func_6(Struct_1(true, -8937i, global3.c, arg_0), vec2<bool>(arg_2, global3.a), global3.c)).x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - -1762f), Struct_2(Struct_1(arg_1 && func_4(vec4<f32>(1118f, global3.d.x, global0.x, global3.d.x), Struct_1(global3.a, -31753i, global3.c, vec2<f32>(global3.d.x, -1000f)), global3.d.x, Struct_2(Struct_1(false, 20011i, 4294967295u, vec2<f32>(-1000f, global0.x)), Struct_1(global3.a, var_0, 0u, vec2<f32>(-1292f, global3.d.x)), u_input.a.wzx, Struct_1(true, global3.b, global3.c, global3.d), Struct_1(true, var_0, global3.c, vec2<f32>(global3.d.x, -680f)))).d.d.a, min(35287i, -global3.b), 1u, global3.d), Struct_1(true, abs(46353i), ~global3.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x)))), ~(vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, 13128i, 0i)), func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_7(vec4<f32>(660f, arg_0.x, global3.d.x, -447f), vec2<i32>(-14159i, -2147483647i), global3.d.x)), _wgslsmith_f_op_vec2_f32(-arg_0))), Struct_1(func_5(_wgslsmith_f_op_f32(arg_0.x * global0.x), arg_0.x, Struct_3(Struct_1(arg_2, var_0, 6179u, vec2<f32>(global3.d.x, global3.d.x)), 9153u, global0.x, Struct_2(Struct_1(arg_1, var_0, global3.c, vec2<f32>(global0.x, global3.d.x)), Struct_1(global3.a, 5823i, 4294967295u, global3.d), vec3<i32>(0i, -24520i, 12144i), Struct_1(arg_2, 1i, global3.c, vec2<f32>(640f, global3.d.x)), Struct_1(false, -5418i, global3.c, arg_0))), _wgslsmith_f_op_f32(sign(1169f))).a, 1i, 0u, arg_0)));
}

fn func_8(arg_0: Struct_3) -> Struct_2 {
    var var_0 = select(vec2<bool>(true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2412f), global3.d.x)) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(323f))))), select(!(!select(vec2<bool>(true, false), vec2<bool>(global3.a, global3.a), arg_0.d.b.a)), vec2<bool>(false, false & global3.a), select(select(vec2<bool>(global3.a, false), select(vec2<bool>(global3.a, false), vec2<bool>(true, false), arg_0.d.e.a), global0.x <= -571f), vec2<bool>(func_4(vec4<f32>(2639f, global0.x, -207f, -109f), arg_0.a, global0.x, arg_0.d).d.b.a, global3.a), !vec2<bool>(global3.a, arg_0.d.b.a))), !vec2<bool>(!(-1481f < arg_0.c), func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1004f, global3.d.x, 1545f, 677f) * vec4<f32>(arg_0.a.d.x, -1516f, 1067f, global3.d.x)), func_5(arg_0.a.d.x, arg_0.a.d.x, arg_0, -2184f), _wgslsmith_f_op_f32(arg_0.a.d.x + -1364f), func_1(arg_0.d.b.d, true, global3.a).d).d.b.a));
    let var_1 = select(vec4<bool>(!arg_0.d.a.a, global3.a, false, any(select(vec3<bool>(arg_0.d.e.a, global3.a, false), select(vec3<bool>(var_0.x, true, arg_0.d.b.a), vec3<bool>(true, false, var_0.x), true), vec3<bool>(var_0.x, var_0.x, false)))), !select(!select(vec4<bool>(var_0.x, true, var_0.x, global3.a), vec4<bool>(true, true, true, false), global3.a), select(select(vec4<bool>(var_0.x, arg_0.a.a, true, var_0.x), vec4<bool>(false, var_0.x, true, var_0.x), false), vec4<bool>(true, false, global3.a, false), select(true, true, var_0.x)), true), var_0.x);
    global3 = arg_0.a;
    let var_2 = -vec4<i32>(-2147483647i, select(-7012i, -8729i, !select(arg_0.d.b.a, true, var_0.x)), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(i32(-1i) * -4512i, _wgslsmith_clamp_i32(u_input.a.x, arg_0.a.b, -2147483647i), ~global3.b, 0i)), arg_0.a.b);
    let var_3 = arg_0.d.e.a;
    return func_4(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2280f, _wgslsmith_f_op_f32(-1789f * _wgslsmith_div_f32(arg_0.d.b.d.x, arg_0.c)), 555f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.d.x)))))), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.d.e.d) * func_2(vec2<f32>(global3.d.x, global3.d.x)).d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-292f, 246f, arg_0.a.a)), func_1(vec2<f32>(359f, global0.x), true, var_1.x).a.d.x))), Struct_2(func_5(-281f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3.d.x - -1000f))), Struct_3(Struct_1(var_3, 9521i, 110307u, vec2<f32>(-1579f, 883f)), abs(24949u), _wgslsmith_div_f32(-2123f, global0.x), func_4(vec4<f32>(arg_0.d.e.d.x, 1132f, 755f, arg_0.c), Struct_1(true, global3.b, global3.c, vec2<f32>(global3.d.x, global3.d.x)), arg_0.c, Struct_2(Struct_1(false, -2147483647i, arg_0.a.c, global3.d), arg_0.d.e, global1[_wgslsmith_index_u32(global3.c, 24u)], Struct_1(false, arg_0.a.b, arg_0.a.c, arg_0.d.a.d), Struct_1(true, 2147483647i, arg_0.d.e.c, vec2<f32>(arg_0.c, arg_0.c)))).d), global3.d.x), func_5(-1990f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x - global3.d.x))), arg_0, arg_0.d.e.d.x), -(vec3<i32>(-1i) * -global1[_wgslsmith_index_u32(19635u, 24u)]), func_5(_wgslsmith_f_op_f32(global0.x * 2109f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x)), arg_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.c)))), arg_0.d.d)).d;
}

fn func_9(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_3 {
    global1 = array<vec3<i32>, 24>();
    let var_0 = Struct_2(Struct_1(func_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global3.d.x, 591f), vec2<f32>(arg_2.d.x, arg_3.x)))))).a, _wgslsmith_add_i32(~abs(arg_0.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-8479i, u_input.a.x), arg_0.c.yy) >> (arg_0.b.c % 32u)), _wgslsmith_div_u32(arg_2.c, global3.c), arg_0.a.d), Struct_1(!(!(arg_0.a.a && global3.a)), func_8(func_4(_wgslsmith_f_op_vec4_f32(func_6(arg_0.b, vec2<bool>(true, false), global3.c)), Struct_1(false, global3.b, 3926u, arg_0.b.d), -1987f, arg_0)).d.b, 1u, arg_2.d), -vec3<i32>(_wgslsmith_mult_i32(arg_0.b.b, 1i), 0i << (global3.c % 32u), countOneBits(arg_1)), Struct_1(!all(vec4<bool>(arg_0.b.a, false, false, arg_2.a)), 5055i, abs(global3.c), arg_2.d), func_1(vec2<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -312f)))), true, func_5(1f, arg_0.a.d.x, func_4(vec4<f32>(568f, 398f, arg_0.a.d.x, arg_3.x), arg_0.b, _wgslsmith_f_op_f32(arg_2.d.x * arg_3.x), Struct_2(Struct_1(arg_2.a, -26469i, arg_2.c, vec2<f32>(-1043f, arg_3.x)), Struct_1(true, u_input.a.x, 40450u, vec2<f32>(785f, arg_3.x)), arg_0.c, Struct_1(global3.a, arg_1, global3.c, vec2<f32>(arg_2.d.x, arg_2.d.x)), arg_2)), arg_0.a.d.x).a).d.d);
    var var_1 = ~abs(~(~vec4<u32>(arg_2.c, var_0.a.c, 4294967295u, arg_2.c)));
    var var_2 = var_0;
    global2 = _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-(_wgslsmith_mult_vec3_i32(vec3<i32>(var_2.a.b, global3.b, -1i), vec3<i32>(2147483647i, 0i, -33695i)) | -vec3<i32>(6011i, 2147483647i, var_0.d.b)), vec3<i32>(~(-2147483647i), arg_2.b, global3.b)), -vec3<i32>(-arg_0.e.b, select(1i, u_input.a.x, true), 2147483647i) & (select(var_0.c << (var_1.wyz % vec3<u32>(32u)), ~vec3<i32>(88466i, var_2.a.b, -30978i), vec3<bool>(true, true, true)) << (vec3<u32>(~2136u, _wgslsmith_add_u32(0u, arg_2.c), var_0.d.c) % vec3<u32>(32u))));
    return Struct_3(func_4(vec4<f32>(global3.d.x, func_8(func_1(vec2<f32>(-1388f, var_2.e.d.x), var_2.d.a, true)).d.d.x, _wgslsmith_f_op_vec4_f32(func_6(var_0.e, vec2<bool>(arg_0.e.a, var_0.d.a), reverseBits(var_2.e.c))).x, _wgslsmith_f_op_f32(sign(func_5(var_2.a.d.x, 186f, Struct_3(var_2.b, var_0.d.c, arg_2.d.x, arg_0), var_2.a.d.x).d.x))), func_4(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.d.x, -993f, -100f, 349f), vec4<f32>(var_0.b.d.x, 822f, 1629f, global3.d.x)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.d.x, 129f, 1005f, arg_0.b.d.x), vec4<f32>(-1102f, 275f, var_0.a.d.x, arg_0.b.d.x)))), func_4(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-479f, arg_3.x, 958f, -1808f))), Struct_1(arg_0.b.a, 31505i, 10353u, vec2<f32>(738f, arg_0.b.d.x)), arg_3.x, Struct_2(arg_2, Struct_1(arg_2.a, 0i, var_2.e.c, var_2.d.d), global1[_wgslsmith_index_u32(53529u, 24u)], arg_0.a, Struct_1(true, arg_0.e.b, var_0.b.c, arg_0.b.d))).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -353f)), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.d.x, 1618f, -1000f, -268f)), Struct_1(true, var_0.e.b, 4294967295u, vec2<f32>(arg_3.x, arg_2.d.x)), arg_0.b.d.x, Struct_2(Struct_1(var_2.e.a, u_input.a.x, 1581u, vec2<f32>(arg_3.x, arg_3.x)), Struct_1(var_2.a.a, 0i, 4294u, vec2<f32>(global0.x, var_0.b.d.x)), vec3<i32>(var_2.b.b, 2147483647i, 1i), arg_0.d, arg_0.a)).d).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.d.x)) * _wgslsmith_f_op_f32(f32(-1f) * -782f)), var_0).d.a, 1365u, -710f, var_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_9(func_8(func_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global3.d + vec2<f32>(-2068f, global0.x)), _wgslsmith_f_op_vec2_f32(-global3.d))), global3.a, !(!global3.a))), u_input.a.x, Struct_1(!(!global3.a), max(_wgslsmith_add_i32(u_input.a.x, global3.b) & ~(-2147483647i), 26184i), 4294967295u, global3.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1474f))).d.x, global3.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))))));
    var var_1 = func_8(Struct_3(var_0.a, 28611u, func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_6(Struct_1(var_0.a.a, 59132i, 0u, var_0.a.d), vec2<bool>(true, global3.a), 46903u)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.d.x, -1445f, global3.d.x, 924f))), var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-313f, global0.x))), Struct_2(func_8(Struct_3(Struct_1(global3.a, 1i, 0u, global3.d), var_0.a.c, var_0.d.d.d.x, var_0.d)).e, var_0.a, var_0.d.c | u_input.a.yzz, var_0.d.e, var_0.d.a)).c, Struct_2(Struct_1(var_0.d.b.a, u_input.a.x, func_2(vec2<f32>(-424f, 220f)).c, vec2<f32>(global3.d.x, global0.x)), var_0.d.e, ~u_input.a.yxx << (select(vec3<u32>(var_0.d.a.c, 1u, 0u), vec3<u32>(var_0.a.c, var_0.b, 43157u), vec3<bool>(true, true, global3.a)) % vec3<u32>(32u)), var_0.d.a, Struct_1(true, global3.b, ~var_0.d.b.c, vec2<f32>(-1437f, -308f)))));
    var var_2 = u_input.a;
    global0 = global3.d;
    let var_3 = -440f;
    let x = u_input.a;
    s_output = StorageBuffer(~6837u, 1i);
}

