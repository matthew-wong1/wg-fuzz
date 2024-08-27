struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec2<u32>,
    d: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    global0 = Struct_1(false);
    var var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(select(_wgslsmith_sub_i32(-2147483647i, ~1i), ~(~36440i), !any(arg_0.zz)), abs(27432i), firstTrailingBit(_wgslsmith_mod_i32(~36493i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 54851i), vec2<i32>(-29650i, 2211i)))), reverseBits(-1i) ^ -firstTrailingBit(0i)), reverseBits(vec4<i32>(2147483647i, abs(-2801i), i32(-1i) * -2147483647i, _wgslsmith_div_i32(1i, 1i))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1793f, 600f, 1907f), vec3<f32>(599f, -1881f, 2777f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(721f, -376f, -1000f)))), vec3<f32>(-2462f, _wgslsmith_f_op_f32(abs(-1596f)), 106f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -114f), _wgslsmith_f_op_f32(1619f * -868f), 1361f))));
    global0 = Struct_1(arg_0.x);
    global0 = Struct_1(!arg_0.x);
    return countOneBits(-1i);
}

fn func_4(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: vec3<i32>) -> f32 {
    global0 = arg_0.c;
    var var_0 = Struct_4(Struct_3(arg_0.d), Struct_3(Struct_2(u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-393f, -1178f)) + arg_1.x))), vec2<u32>(1u, ~(select(arg_0.d.a, 77697u, false) ^ u_input.a)), Struct_2(~46146u, _wgslsmith_f_op_f32(1412f * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0.b.x, -428f), 1520f)))));
    var var_1 = all(!(!vec4<bool>(global0.a, !arg_0.c.a, false, !global0.a)));
    let var_2 = true;
    var var_3 = arg_0.d;
    return _wgslsmith_f_op_f32(sign(-1469f));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: u32) -> Struct_3 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, u_input.a, u_input.a, u_input.a), ~vec4<u32>(21746u, 25341u, 27416u, 22111u)), min(1u, arg_3)), -312f));
    let var_1 = _wgslsmith_f_op_f32(func_4(Struct_5(-29698i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.b, 928f, -1000f, var_0.a.b) + vec4<f32>(var_0.a.b, var_0.a.b, 509f, -1186f))) - vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.b), 1215f, var_0.a.b, 677f)), Struct_1(any(!vec2<bool>(global0.a, arg_1.a))), var_0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1277f, var_0.a.b, 546f))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.b, -1162f, -1108f) * vec3<f32>(var_0.a.b, 906f, -2264f)))))), countOneBits(-vec3<i32>(func_3(vec4<bool>(arg_1.a, false, false, false)), reverseBits(-28832i), _wgslsmith_div_i32(8661i, 1i)))));
    var var_2 = arg_2;
    var_0 = Struct_3(Struct_2(arg_3, var_1));
    global0 = arg_1;
    return Struct_3(Struct_2(_wgslsmith_sub_u32(arg_0, arg_3) << (firstLeadingBit(10870u) % 32u), _wgslsmith_f_op_f32(123f + 854f)));
}

fn func_5(arg_0: Struct_4, arg_1: f32, arg_2: vec3<bool>, arg_3: f32) -> Struct_1 {
    var var_0 = true;
    var_0 = !(!select(!(4294967295u < u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 86892u, arg_0.d.a), vec4<u32>(53347u, 60820u, 31082u, 4294967295u)) <= arg_0.c.x, !any(arg_2.yz)));
    var_0 = false;
    var var_1 = -28972i;
    var_0 = select(false, true, global0.a);
    return Struct_1(true);
}

fn func_1(arg_0: vec2<f32>) -> f32 {
    let var_0 = (vec2<i32>(-1i) * -vec2<i32>(1712i >> (u_input.a % 32u), _wgslsmith_clamp_i32(0i, -2147483647i, 23428i))) ^ vec2<i32>(-_wgslsmith_sub_i32(-24031i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(-13830i, 2147483647i))), -select(i32(-1i) * -53246i, -1i, global0.a));
    global0 = func_5(Struct_4(func_2(max(u_input.a, u_input.a), Struct_1(global0.a), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 23944u) & vec2<u32>(u_input.a, 38804u)), ~(35859u >> (u_input.a % 32u))), Struct_3(Struct_2(u_input.a, _wgslsmith_f_op_f32(-953f * -745f))), ~select(vec2<u32>(4294967295u, u_input.a) & vec2<u32>(4294967295u, u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, u_input.a)), vec2<bool>(global0.a, global0.a)), func_2(~_wgslsmith_mod_u32(u_input.a, 26425u), Struct_1(u_input.a >= u_input.a), abs(abs(vec2<u32>(u_input.a, 0u))), ~68572u).a), -193f, !vec3<bool>(arg_0.x < _wgslsmith_f_op_f32(-1164f - -696f), true, false), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.x * -719f))) + arg_0.x))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-arg_0);
    var_1 = arg_0;
    global0 = Struct_1(global0.a);
    return arg_0.x;
}

fn func_6(arg_0: vec3<f32>, arg_1: u32) -> Struct_1 {
    global0 = Struct_1(global0.a || true);
    global0 = func_5(Struct_4(Struct_3(func_2(u_input.a, func_5(Struct_4(Struct_3(Struct_2(arg_1, arg_0.x)), Struct_3(Struct_2(1u, -628f)), vec2<u32>(1u, arg_1), Struct_2(arg_1, -566f)), arg_0.x, vec3<bool>(true, true, global0.a), arg_0.x), ~vec2<u32>(1u, 60853u), 1u).a), func_2(u_input.a, func_5(Struct_4(Struct_3(Struct_2(arg_1, arg_0.x)), Struct_3(Struct_2(arg_1, arg_0.x)), vec2<u32>(39517u, 89775u), Struct_2(1u, -135f)), arg_0.x, vec3<bool>(global0.a, true, global0.a), arg_0.x), reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(4294967295u, arg_1))), ~reverseBits(u_input.a)), ~(~select(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, arg_1), vec2<bool>(global0.a, global0.a))), Struct_2(4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x) + _wgslsmith_f_op_f32(floor(arg_0.x))))), 294f, select(select(!(!vec3<bool>(global0.a, global0.a, false)), vec3<bool>(true, true, true), false), vec3<bool>(global0.a, false, all(select(vec2<bool>(true, global0.a), vec2<bool>(true, global0.a), vec2<bool>(false, global0.a)))), vec3<bool>(all(vec4<bool>(global0.a, false, true, true)), all(vec2<bool>(global0.a, global0.a)), global0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_0.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -739f) + arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x)))));
    var var_0 = vec2<f32>(-139f, -460f);
    var var_1 = _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(select(-10142i, 2147483647i, false), select(-22879i, -20361i, global0.a), 0i)), -(~vec3<i32>(-2147483647i, 1i, 0i)) ^ ~select(vec3<i32>(-27781i, 2147483647i, -1i), vec3<i32>(1i, -43385i, -2147483647i), true)), -vec3<i32>(~(-2147483647i) >> ((56959u ^ arg_1) % 32u), 1i, abs(-1i)));
    let var_2 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, 0i, ~_wgslsmith_div_i32(0i, -50533i)), vec3<i32>(-26137i, max(var_1.x, 2147483647i), var_1.x));
    return func_5(Struct_4(Struct_3(Struct_2(reverseBits(75646u), func_2(arg_1, Struct_1(global0.a), vec2<u32>(12070u, 98356u), arg_1).a.b)), func_2(66458u, func_5(Struct_4(Struct_3(Struct_2(arg_1, 971f)), Struct_3(Struct_2(arg_1, arg_0.x)), vec2<u32>(0u, 57u), Struct_2(14828u, var_0.x)), _wgslsmith_f_op_f32(step(269f, var_0.x)), select(vec3<bool>(global0.a, true, global0.a), vec3<bool>(global0.a, global0.a, global0.a), global0.a), _wgslsmith_f_op_f32(f32(-1f) * -1347f)), _wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(arg_1, 100709u)), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1, 4294967295u), vec2<u32>(37715u, u_input.a))), ~arg_1), vec2<u32>(firstTrailingBit(130868u), ~1u), func_2(max(~u_input.a, u_input.a & 1675u), func_5(Struct_4(Struct_3(Struct_2(u_input.a, -1667f)), Struct_3(Struct_2(arg_1, -520f)), vec2<u32>(u_input.a, u_input.a), Struct_2(44365u, var_0.x)), _wgslsmith_f_op_f32(trunc(166f)), !vec3<bool>(global0.a, global0.a, true), _wgslsmith_f_op_f32(var_0.x * 543f)), abs(vec2<u32>(18147u, 0u)), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(1u, u_input.a)), vec2<u32>(4294967295u, arg_1))).a), _wgslsmith_f_op_f32(var_0.x + var_0.x), vec3<bool>(true, (!global0.a & all(vec4<bool>(global0.a, false, global0.a, global0.a))) != any(select(vec3<bool>(false, false, global0.a), vec3<bool>(global0.a, true, false), false)), func_5(Struct_4(func_2(1u, Struct_1(global0.a), vec2<u32>(16580u, 1u), 1u), Struct_3(Struct_2(arg_1, -590f)), ~vec2<u32>(u_input.a, arg_1), Struct_2(67023u, var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) * var_0.x), !(!vec3<bool>(global0.a, false, global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + -1696f))).a), -275f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -534f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1640f, 689f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<f32>(284f, 663f))) * -124f), -2810f), u_input.a);
    let var_0 = vec4<bool>(any(select(vec2<bool>(true, false), !vec2<bool>(global0.a, false), global0.a)) || global0.a, select(u_input.a == u_input.a, true, false) == all(select(vec2<bool>(true, global0.a), select(vec2<bool>(true, true), vec2<bool>(global0.a, true), false), select(vec2<bool>(false, global0.a), vec2<bool>(false, global0.a), false))), u_input.a != (countOneBits(u_input.a) ^ 6641u), true);
    let var_1 = vec3<u32>(u_input.a, 0u, u_input.a | (_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a, 49796u, u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(8333u, u_input.a), vec2<u32>(u_input.a, 14612u))) >> (4294967295u % 32u)));
    var var_2 = 14330i;
    global0 = func_5(Struct_4(func_2(~0u, Struct_1(global0.a), max(var_1.zy, vec2<u32>(0u, 47704u)) << (min(vec2<u32>(20733u, var_1.x), vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), abs(~var_1.x)), Struct_3(Struct_2(_wgslsmith_sub_u32(4294967295u, 4294967295u), _wgslsmith_f_op_f32(max(-795f, -703f)))), ~var_1.xy, Struct_2(933u, _wgslsmith_f_op_f32(835f - _wgslsmith_f_op_f32(sign(-1702f))))), -511f, vec3<bool>(all(select(select(var_0.yy, vec2<bool>(true, false), var_0.xw), !vec2<bool>(global0.a, var_0.x), global0.a)), false, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-196f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-680f, _wgslsmith_f_op_f32(1043f - -1042f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-538f, 1000f)) - _wgslsmith_f_op_f32(min(-130f, -964f))))));
    global0 = Struct_1(any(select(vec2<bool>(true, true), select(vec2<bool>(var_0.x, false), !vec2<bool>(global0.a, false), all(var_0.yzx)), select(vec2<bool>(var_0.x, global0.a), !vec2<bool>(global0.a, var_0.x), func_6(vec3<f32>(-1000f, 186f, 1459f), u_input.a).a))));
    let var_3 = Struct_5(1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1541f, _wgslsmith_f_op_f32(366f * 1331f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(-506f, -741f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(177f, 801f, 923f, 428f) * vec4<f32>(-874f, 671f, 668f, -440f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), func_6(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, -1000f, 966f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-999f, 1681f, -399f), vec3<f32>(1794f, 2411f, -189f)))), select(abs(4294967295u), var_1.x, func_5(Struct_4(Struct_3(Struct_2(var_1.x, -886f)), Struct_3(Struct_2(0u, 986f)), var_1.zz, Struct_2(u_input.a, 185f)), 353f, vec3<bool>(global0.a, false, var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -2837f)).a)), Struct_2(39872u, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(max(-1000f, 1000f)))));
    var_2 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(-14420i, 0i, var_3.a, var_3.a)) | vec4<i32>(var_3.a, -28711i, ~var_3.a, 34732i), vec4<i32>(-1i) * -(~vec4<i32>(-19416i, -2147483647i, var_3.a, 34369i))));
}

