struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: bool,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec4<i32>(-26170i, i32(-2147483648), -7798i, -1i), false, true, 2147483647i), vec3<u32>(35816u, 4294967295u, 4294967295u), Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(-48883i, 0i, -26446i, 0i), true, false, -27875i), Struct_1(vec4<bool>(false, true, false, false), vec4<i32>(2147483647i, 3095i, 17751i, 1i), false, true, -1i), Struct_1(vec4<bool>(true, true, true, false), vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), i32(-2147483648)), true, true, -81815i)), vec2<u32>(1u, 59328u));

var<private> global1: Struct_4 = Struct_4(Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(9993i, -37057i, -40801i, 1i), true, false, 35527i), vec3<u32>(1u, 10178u, 60433u), Struct_1(vec4<bool>(true, false, false, true), vec4<i32>(-24161i, i32(-2147483648), -3842i, -19113i), true, true, 1i), Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(2147483647i, 1i, -11647i, 3233i), false, false, i32(-2147483648)), Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(0i, 0i, 1i, i32(-2147483648)), true, true, 2147483647i)), vec2<u32>(1u, 4294967295u));

var<private> global2: array<Struct_2, 4>;

var<private> global3: array<vec2<u32>, 20>;

var<private> global4: u32 = 0u;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<bool>) -> bool {
    global2 = array<Struct_2, 4>();
    let var_0 = global1.a.c.e;
    let var_1 = _wgslsmith_f_op_f32(-185f - _wgslsmith_f_op_f32(f32(-1f) * -704f));
    global1 = Struct_4(Struct_2(Struct_1(global0.a.c.a, vec4<i32>(_wgslsmith_mod_i32(-2147483647i, global1.a.e.e), ~(-1i), -81999i, 0i), all(arg_0) & true, all(!arg_0.zxw), u_input.c.x), (_wgslsmith_clamp_vec3_u32(global0.a.b, global0.a.b, vec3<u32>(u_input.d, 1u, 1u)) ^ countOneBits(global0.a.b)) ^ vec3<u32>(1u, max(global0.a.b.x, 4294967295u), global0.a.b.x << (global1.b.x % 32u)), global0.a.e, Struct_1(global1.a.e.a, global1.a.a.b & vec4<i32>(2147483647i, 7391i, -2147483647i, global1.a.e.e), _wgslsmith_f_op_f32(var_1 + var_1) == -464f, select(true, global1.a.d.a.x, true), abs(~u_input.c.x)), Struct_1(select(!vec4<bool>(arg_0.x, global0.a.c.c, global1.a.e.c, arg_0.x), vec4<bool>(true, true, arg_0.x, false), true), abs(abs(global1.a.c.b)), all(select(vec4<bool>(true, false, global0.a.c.a.x, false), arg_0, global0.a.c.c)), global0.a.d.c, reverseBits(~global1.a.c.e))), abs((vec2<u32>(24171u, u_input.b) >> (vec2<u32>(global0.b.x, 34418u) % vec2<u32>(32u))) << (vec2<u32>(global1.a.b.x, ~global0.a.b.x) % vec2<u32>(32u))));
    var var_2 = Struct_5(Struct_1(global0.a.c.a, vec4<i32>(global1.a.e.b.x, u_input.c.x, reverseBits(max(u_input.a.x, global0.a.c.b.x)), _wgslsmith_mod_i32(16083i, global0.a.a.b.x)), any(select(global1.a.e.a, vec4<bool>(true, global0.a.e.c, false, arg_0.x), global1.a.a.a)) & global1.a.c.d, !(abs(global0.a.c.b.x) < _wgslsmith_div_i32(1i, u_input.a.x)), firstLeadingBit(global0.a.c.e)), (-global1.a.d.b.x << (4294967295u % 32u)) << (58098u % 32u));
    return global0.a.e.a.x;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec3<bool>) -> i32 {
    let var_0 = global1.a.a.b.zz & select(_wgslsmith_mult_vec2_i32(~_wgslsmith_div_vec2_i32(global0.a.a.b.zy, global0.a.a.b.zw), ~(-global0.a.d.b.xw)), global1.a.a.b.zz, !(!vec2<bool>(true, arg_2.x)));
    var var_1 = Struct_3(vec2<bool>(!(func_3(vec4<bool>(false, arg_1, true, false)) || all(vec2<bool>(false, global1.a.e.d))), all(select(global1.a.e.a.wzw, vec3<bool>(global1.a.d.c, true, arg_1), global0.a.e.a.wzw)) & true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1727f, _wgslsmith_f_op_f32(247f + 525f), -319f, _wgslsmith_f_op_f32(-792f * 599f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(818f + -606f)))))));
    let var_2 = countOneBits(global0.b.x);
    global4 = reverseBits(~(~0u));
    global3 = array<vec2<u32>, 20>();
    return ~2147483647i;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: i32) -> Struct_4 {
    var var_0 = firstTrailingBit(_wgslsmith_sub_u32(33993u << (~global1.a.b.x % 32u), _wgslsmith_clamp_u32(u_input.b, min(29063u, 0u << (global1.a.b.x % 32u)), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(55214u, 29347u, 31979u), global1.a.b), global0.a.b >> (vec3<u32>(global0.a.b.x, 1u, 0u) % vec3<u32>(32u))))));
    global2 = array<Struct_2, 4>();
    global2 = array<Struct_2, 4>();
    let var_1 = _wgslsmith_clamp_vec4_u32(abs(abs(min(vec4<u32>(u_input.b, global0.b.x, 0u, 50809u), vec4<u32>(9637u, 88151u, global1.b.x, 40060u)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(global0.b.x, 0u, global0.a.b.x, 0u), vec4<u32>(3297u, global0.a.b.x, global1.a.b.x, 3399u)))), ~abs(~(vec4<u32>(11180u, global1.a.b.x, arg_2.a.b.x, u_input.b) & vec4<u32>(4294967295u, arg_2.b.x, 7287u, 1u))), vec4<u32>(global1.b.x, 85370u, ~global1.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, arg_2.b.x, global1.a.b.x), min(vec4<u32>(arg_2.b.x, 63225u, 0u, u_input.b), vec4<u32>(arg_2.a.b.x, arg_2.b.x, global0.a.b.x, global0.a.b.x))) >> (~40680u % 32u)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(1176f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(408f))));
    return Struct_4(Struct_2(arg_2.a.c, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, global1.b.x, 33871u), vec3<u32>(1u, 5117u, 33819u) >> (arg_2.a.b % vec3<u32>(32u))) & global0.a.b, Struct_1(select(!vec4<bool>(global0.a.e.c, arg_2.a.d.c, arg_1.x, true), !vec4<bool>(arg_2.a.e.d, true, arg_1.x, arg_1.x), func_3(vec4<bool>(true, false, false, global1.a.d.a.x))), vec4<i32>(~arg_0.x, ~u_input.c.x, ~0i, -1i), 1i <= _wgslsmith_mult_i32(2147483647i, arg_3), true, _wgslsmith_clamp_i32(36812i, ~(-2147483647i), arg_3)), global1.a.a, Struct_1(vec4<bool>(any(global0.a.e.a.yx), true, true, global0.a.a.d), -vec4<i32>(-16279i, 57351i, global0.a.e.e, 1i), any(vec2<bool>(arg_1.x, global0.a.e.c)), true, global1.a.c.e)), global0.a.b.xx);
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    global1 = func_4(-(~vec4<i32>(func_2(u_input.c.x, true, global1.a.d.a.yyz), firstTrailingBit(-20101i), abs(-1276i), ~global1.a.a.b.x)), select(vec3<bool>(global1.a.a.a.x, false, global1.b.x > abs(u_input.d)), select(global0.a.e.a.wxw, global0.a.d.a.zxy, vec3<bool>(any(global0.a.e.a), true, !global0.a.d.d)), !(_wgslsmith_f_op_f32(arg_0.x * arg_0.x) < _wgslsmith_f_op_f32(2382f + -155f))), Struct_4(global1.a, _wgslsmith_div_vec2_u32(~_wgslsmith_mult_vec2_u32(global3[_wgslsmith_index_u32(0u, 20u)], global3[_wgslsmith_index_u32(1u, 20u)]), vec2<u32>(_wgslsmith_clamp_u32(global0.a.b.x, u_input.b, global0.a.b.x), select(23113u, 15933u, false)))), (i32(-1i) * -global0.a.c.e) & global0.a.d.e);
    var var_0 = -3775i;
    global1 = func_4(-global1.a.e.b, func_4(global0.a.a.b, !global1.a.a.a.zxx, func_4(-global1.a.c.b, select(vec3<bool>(false, global1.a.d.a.x, false), !global0.a.a.a.wzz, !global1.a.d.d), Struct_4(global1.a, vec2<u32>(u_input.b, 1u)), global0.a.e.e), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(40690i, global1.a.a.e, -2147483647i) << (vec3<u32>(global0.a.b.x, global1.b.x, 1u) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_mod_i32(global1.a.e.e, global0.a.c.e), -31635i, global1.a.c.e))).a.a.a.zwy, Struct_4(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(firstLeadingBit(vec4<u32>(54589u, global1.b.x, global1.b.x, 1u))), vec4<u32>(4294967295u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(116895u, 0u, u_input.b, global1.a.b.x), vec4<u32>(global1.a.b.x, 19669u, 62030u, global0.b.x)), global0.a.b.x)), 4u)], vec2<u32>(62553u, 74566u)), select(1i, global0.a.a.e, !(false && global1.a.a.c)) & -12297i);
    let var_1 = Struct_5(global1.a.e, _wgslsmith_dot_vec4_i32(vec4<i32>(select(_wgslsmith_mult_i32(global0.a.a.e, -37046i), global0.a.c.b.x, false), u_input.a.x, u_input.a.x, 1i), (select(global0.a.a.b, vec4<i32>(-29866i, global1.a.a.e, -30761i, global1.a.d.b.x), global1.a.c.d) << (~vec4<u32>(global0.b.x, global0.a.b.x, global0.b.x, u_input.b) % vec4<u32>(32u))) ^ global1.a.d.b));
    global4 = _wgslsmith_add_u32(_wgslsmith_mult_u32(56717u, global1.b.x), u_input.b);
    return global1.a.e;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = u_input.b;
    let var_0 = Struct_2(Struct_1(global0.a.a.a, vec4<i32>(global1.a.d.b.x, 0i, abs(-1i), ~global0.a.e.b.x), true, !(!global0.a.e.d), max(983i, min(reverseBits(global1.a.d.b.x), u_input.c.x))), global0.a.b, func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-309f, 154f), vec2<f32>(-1058f, 315f), true)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1329f, -1378f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1026f, 122f) * vec2<f32>(620f, 642f))))), func_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(163f, 1168f)), vec2<f32>(-1561f, 332f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -815f), _wgslsmith_f_op_f32(f32(-1f) * -109f))))), Struct_1(global0.a.e.a, vec4<i32>(firstLeadingBit(min(2147483647i, u_input.c.x)), global0.a.a.b.x, 0i, 18890i), all(vec3<bool>(true, !global1.a.a.d, false)), !any(vec4<bool>(false, global1.a.c.c, global1.a.e.a.x, global1.a.d.c)), global0.a.a.b.x));
    global4 = global0.b.x;
    global4 = _wgslsmith_dot_vec3_u32(~var_0.b, vec3<u32>(~max(max(0u, 64133u), 1u), ~46952u, global1.b.x));
    global0 = func_4(var_0.e.b >> (_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.b.x, 72930u, 4294967295u), vec3<u32>(68419u, 15587u, 21474u)), ~global1.a.b.x, 65531u, var_0.b.x), ~(~vec4<u32>(var_0.b.x, var_0.b.x, global0.a.b.x, 81365u))) % vec4<u32>(32u)), !vec3<bool>(true, func_4(reverseBits(vec4<i32>(2147483647i, global1.a.d.e, global0.a.e.e, -2147483647i)), vec3<bool>(global1.a.e.d, false, false), Struct_4(Struct_2(Struct_1(vec4<bool>(var_0.a.c, global0.a.d.d, false, false), vec4<i32>(1i, var_0.e.e, 21518i, -22205i), false, var_0.d.c, u_input.a.x), global1.a.b, Struct_1(vec4<bool>(false, false, false, global0.a.c.a.x), vec4<i32>(var_0.d.e, -1i, 51347i, 1i), true, true, 0i), Struct_1(global1.a.c.a, global1.a.e.b, var_0.d.c, true, var_0.a.e), Struct_1(global0.a.d.a, vec4<i32>(-2147483647i, global1.a.d.e, 1i, global0.a.c.e), global0.a.e.c, global0.a.c.c, 5647i)), vec2<u32>(global1.a.b.x, 4294967295u)), u_input.c.x).a.c.a.x, min(global0.a.b.x, 1u) == 4294967295u), func_4(vec4<i32>(-1700i, ~var_0.c.b.x, -global0.a.d.b.x & ~var_0.a.e, _wgslsmith_clamp_i32(global0.a.e.b.x, global1.a.e.b.x, _wgslsmith_add_i32(u_input.a.x, 0i))), !vec3<bool>(!global1.a.a.a.x, true, true), func_4(select(vec4<i32>(-1i, 1i, 2147483647i, var_0.a.e) ^ global1.a.c.b, func_4(global1.a.c.b, vec3<bool>(global1.a.e.a.x, global1.a.a.c, global0.a.e.c), Struct_4(Struct_2(global0.a.e, vec3<u32>(var_0.b.x, 14787u, 27406u), global0.a.d, global1.a.a, var_0.e), vec2<u32>(20714u, var_0.b.x)), global0.a.d.b.x).a.c.b, global0.a.e.d || false), select(!vec3<bool>(false, var_0.d.a.x, true), !var_0.a.a.wxx, global0.a.a.a.wzw), Struct_4(func_4(vec4<i32>(-2147483647i, u_input.c.x, 42267i, u_input.c.x), vec3<bool>(false, global1.a.c.c, true), Struct_4(Struct_2(Struct_1(global1.a.d.a, vec4<i32>(u_input.a.x, var_0.d.b.x, var_0.d.b.x, var_0.d.b.x), var_0.d.d, false, global0.a.c.b.x), vec3<u32>(var_0.b.x, u_input.d, global1.a.b.x), Struct_1(vec4<bool>(false, global1.a.d.c, var_0.c.a.x, global1.a.c.c), vec4<i32>(-5720i, var_0.c.e, u_input.c.x, u_input.c.x), global0.a.a.c, var_0.e.a.x, -2147483647i), var_0.d, Struct_1(global1.a.a.a, vec4<i32>(global0.a.c.b.x, 1i, u_input.c.x, -1i), false, global1.a.d.a.x, -32228i)), var_0.b.zz), 2147483647i).a, ~vec2<u32>(global1.b.x, u_input.b)), reverseBits(_wgslsmith_sub_i32(var_0.d.e, 0i))), -23824i), 1i);
    global2 = array<Struct_2, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(global1.a.b.x, var_0.b.x, ~global0.b.x, ~(~global0.b.x)), -1i, 2335f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-420f + 374f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-137f, 414f, 445f, 1429f)) - vec4<f32>(_wgslsmith_f_op_f32(102f + -610f), _wgslsmith_div_f32(-484f, 299f), _wgslsmith_f_op_f32(round(-2315f)), _wgslsmith_f_op_f32(f32(-1f) * -816f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-845f, 929f, -1140f, 816f))), vec4<f32>(-1325f, _wgslsmith_f_op_f32(1291f - -334f), -951f, _wgslsmith_f_op_f32(f32(-1f) * -271f)), var_0.e.c))));
}

