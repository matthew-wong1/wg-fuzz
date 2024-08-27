struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(307f, -368f);

var<private> global1: Struct_1 = Struct_1(vec3<bool>(false, true, true), vec4<i32>(2551i, 33448i, i32(-2147483648), -14912i), vec4<f32>(-712f, -442f, 510f, -228f), vec2<u32>(1u, 1u));

var<private> global2: array<u32, 2>;

var<private> global3: array<vec3<f32>, 25> = array<vec3<f32>, 25>(vec3<f32>(-877f, 424f, 297f), vec3<f32>(589f, -395f, 1667f), vec3<f32>(-1013f, 872f, 129f), vec3<f32>(-212f, -839f, 111f), vec3<f32>(1000f, -381f, 383f), vec3<f32>(-834f, 773f, 525f), vec3<f32>(-1000f, -1053f, 757f), vec3<f32>(-493f, -429f, -494f), vec3<f32>(446f, 1548f, 780f), vec3<f32>(193f, -1467f, -211f), vec3<f32>(1245f, 912f, -662f), vec3<f32>(413f, 1879f, -979f), vec3<f32>(-287f, 295f, -1774f), vec3<f32>(-113f, -1135f, -1046f), vec3<f32>(215f, 174f, -853f), vec3<f32>(673f, -1376f, -306f), vec3<f32>(1940f, 285f, 176f), vec3<f32>(-1000f, 1415f, -867f), vec3<f32>(-1000f, 463f, -911f), vec3<f32>(-179f, 1697f, 1766f), vec3<f32>(-1053f, 1000f, -1000f), vec3<f32>(1089f, -2425f, 593f), vec3<f32>(-630f, 944f, -1147f), vec3<f32>(1000f, -1035f, 1104f), vec3<f32>(-347f, 344f, 1356f));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(1270f - -440f);
    global1 = Struct_1(global1.a, max(global1.b, min(vec4<i32>(firstTrailingBit(u_input.b), -42596i, 1i >> (0u % 32u), 1i), vec4<i32>(-1i, u_input.b, 55755i, ~global1.b.x))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_0)))) * -711f), 1982f, global1.c.x, _wgslsmith_f_op_f32(min(global1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1997f - global1.c.x))))), _wgslsmith_add_vec2_u32(~reverseBits(~u_input.a), global1.d));
    let var_1 = Struct_1(global1.a, -(~(~(global1.b ^ vec4<i32>(2147483647i, u_input.b, u_input.b, 8939i)))), global1.c, vec2<u32>(abs(u_input.a.x), reverseBits(global1.d.x)));
    global1 = Struct_1(vec3<bool>(true, select(var_1.a.x, abs(u_input.a.x) == 1u, !(var_1.a.x == global1.a.x)), true), global1.b, global1.c, var_1.d);
    let var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(global1.d.x, ~_wgslsmith_div_u32(var_1.d.x, u_input.a.x), global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(select(6627u, u_input.a.x, var_1.a.x), 2u)], 2u)], global1.d.x) | (~(~vec4<u32>(global2[_wgslsmith_index_u32(global1.d.x, 2u)], 23013u, global1.d.x, 68332u)) >> (_wgslsmith_div_vec4_u32(~vec4<u32>(0u, var_1.d.x, 0u, 0u), vec4<u32>(global1.d.x, 55004u, 97921u, 4294967295u) >> (vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(u_input.a.x, 2u)], 8235u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_div_u32(~firstTrailingBit(16088u), global1.d.x), 31172u, _wgslsmith_div_u32(countOneBits(var_1.d.x), firstLeadingBit(_wgslsmith_mult_u32(0u, global2[_wgslsmith_index_u32(53488u, 2u)]))), max(63847u, u_input.a.x)));
    return _wgslsmith_f_op_vec2_f32(global1.c.yz + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1682f - var_1.c.x))))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(!(!global1.a), ~global1.b, global1.c, vec2<u32>(4294967295u, ~25420u));
    global0 = _wgslsmith_f_op_vec2_f32(func_3(-7391i));
    let var_1 = ~0u;
    let var_2 = global1.a.x;
    global3 = array<vec3<f32>, 25>();
    return Struct_1(select(global1.a, global1.a, var_0.a.x), global1.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(929f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x - var_0.c.x) - -166f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1637f)) + 355f), var_0.c.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-628f, 312f, 810f, 231f))))), ~abs(~_wgslsmith_mod_vec2_u32(global1.d, vec2<u32>(global2[_wgslsmith_index_u32(var_1, 2u)], 97620u))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32, arg_3: Struct_1) -> i32 {
    let var_0 = func_2();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x + var_0.c.x), _wgslsmith_f_op_f32(581f - 1150f), all(arg_0.a)))))) + arg_3.c.x);
    let var_2 = _wgslsmith_clamp_vec3_u32(arg_1, arg_1, _wgslsmith_div_vec3_u32(~arg_1, vec3<u32>(firstTrailingBit(9346u), _wgslsmith_mult_u32(0u, max(1u, 4294967295u)), 0u)));
    let var_3 = arg_3;
    let var_4 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c.x, global1.c.x)) * _wgslsmith_f_op_f32(-var_3.c.x)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-120f + var_1))));
    return 2147483647i;
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    var var_0 = false;
    return arg_1;
}

fn func_1(arg_0: vec2<i32>) -> f32 {
    let var_0 = 4294967295u;
    var var_1 = global0.x;
    let var_2 = func_5(arg_0.x, Struct_1(vec3<bool>(!(global1.a.x | global1.a.x), -225f < global1.c.x, true), vec4<i32>(-14757i, ~(~arg_0.x), select(1i, 2147483647i, false), func_4(func_2(), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 16518u, global2[_wgslsmith_index_u32(u_input.a.x, 2u)]), vec3<u32>(4294967295u, 40460u, global1.d.x)), _wgslsmith_f_op_f32(trunc(global0.x)), func_2())), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1049f, 1060f, global1.c.x, global0.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global1.c, vec4<f32>(1000f, -1668f, global1.c.x, global1.c.x))) * _wgslsmith_f_op_vec4_f32(exp2(global1.c)))), vec2<u32>(_wgslsmith_sub_u32(firstLeadingBit(var_0), global1.d.x), global2[_wgslsmith_index_u32(countOneBits(firstLeadingBit(var_0)), 2u)])), global1.c.x);
    let var_3 = !(!(~_wgslsmith_dot_vec2_u32(var_2.d, vec2<u32>(83867u, u_input.a.x)) == reverseBits(func_2().d.x)));
    var var_4 = Struct_1(select(func_5(_wgslsmith_mult_i32(-global1.b.x, func_5(var_2.b.x, Struct_1(vec3<bool>(true, global1.a.x, var_2.a.x), global1.b, var_2.c, var_2.d), var_2.c.x).b.x), var_2, _wgslsmith_f_op_f32(global0.x * global0.x)).a, !vec3<bool>(!var_3, true, any(vec4<bool>(true, var_2.a.x, true, false))), func_5(1i, var_2, global0.x).a.x), min(func_2().b, global1.b), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(var_2.c * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.c))))), u_input.a);
    return global0.x;
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    global1 = Struct_1(vec3<bool>(false, global1.a.x, arg_0.a.x), -select(func_5(_wgslsmith_dot_vec3_i32(arg_0.b.zwx, vec3<i32>(21764i, arg_0.b.x, 1i)), func_5(u_input.b, arg_0, global0.x), _wgslsmith_f_op_f32(round(arg_0.c.x))).b, ~(-arg_0.b), !global1.a.x), global1.c, firstLeadingBit(max(~vec2<u32>(global1.d.x, 1u), vec2<u32>(arg_0.d.x, _wgslsmith_add_u32(arg_0.d.x, 31904u)))));
    let var_0 = arg_0;
    global1 = var_0;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(u_input.a.x, 1u);
    var var_1 = func_6(Struct_1(global1.a, _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(global1.b, global1.b), vec4<i32>(0i, -12301i, u_input.b, u_input.b)), -vec4<i32>(u_input.b, -1i, global1.b.x, -2521i)), vec4<f32>(756f, _wgslsmith_f_op_f32(func_1(select(vec2<i32>(-2147483647i, 1i), vec2<i32>(4440i, 1i), global1.a.yx))), global0.x, _wgslsmith_f_op_f32(-1370f + _wgslsmith_f_op_f32(-global0.x))), global1.d));
    global1 = func_6(Struct_1(global1.a, select(var_1.b, vec4<i32>(-3524i, ~global1.b.x, -1i, 2147483647i), !vec4<bool>(var_1.a.x, global1.a.x, var_1.a.x, global1.a.x)), _wgslsmith_f_op_vec4_f32(var_1.c * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.c.x, -758f, var_1.c.x, -275f), vec4<f32>(var_1.c.x, global0.x, global0.x, 1270f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, global0.x, var_1.c.x, global0.x), var_1.c, vec4<bool>(true, false, global1.a.x, global1.a.x))))), global1.d));
    let var_2 = Struct_1(vec3<bool>(all(global1.a), var_1.a.x, (true || all(vec4<bool>(false, false, true, true))) && all(select(global1.a, vec3<bool>(false, false, true), true))), _wgslsmith_clamp_vec4_i32(var_1.b, firstLeadingBit(~countOneBits(global1.b)), _wgslsmith_mod_vec4_i32(select(vec4<i32>(global1.b.x, -55625i, u_input.b, global1.b.x), var_1.b, !vec4<bool>(true, var_1.a.x, var_1.a.x, false)), -vec4<i32>(0i, 6102i, -45761i, var_1.b.x))), _wgslsmith_div_vec4_f32(var_1.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_1.c, vec4<f32>(-1837f, 1197f, -1166f, -638f)) * vec4<f32>(global0.x, -1608f, var_1.c.x, global0.x)))), var_1.d);
    var var_3 = ~64604u;
    var var_4 = func_6(var_2);
    let var_5 = Struct_1(!var_4.a, _wgslsmith_mult_vec4_i32(abs(_wgslsmith_div_vec4_i32(vec4<i32>(-18862i, u_input.b, global1.b.x, u_input.b), abs(vec4<i32>(1i, -74105i, -2147483647i, u_input.b)))), func_2().b), _wgslsmith_f_op_vec4_f32(step(global1.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.c + vec4<f32>(global0.x, global1.c.x, -2240f, var_4.c.x)) * var_4.c) - var_1.c))), abs(func_5(-42299i, var_2, var_2.c.x).d));
    let x = u_input.a;
    s_output = StorageBuffer(~(~firstTrailingBit(func_5(-3049i, var_5, var_5.c.x).d)), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-24473i, _wgslsmith_mod_i32(func_6(var_2).b.x, _wgslsmith_dot_vec3_i32(var_1.b.wyz, var_5.b.wwz)), 1i), -1i), 1u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_4.c.x)) * var_4.c.x), var_2.c.x)), countOneBits(vec4<i32>(var_5.b.x ^ _wgslsmith_div_i32(2147483647i, u_input.b), global1.b.x, ~u_input.b, var_2.b.x)));
}

