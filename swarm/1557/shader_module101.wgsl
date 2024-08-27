struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(false, vec3<i32>(0i, 25308i, -35136i), vec3<u32>(14487u, 4294967295u, 49474u), -46208i), Struct_1(true, vec3<i32>(1i, i32(-2147483648), -1i), vec3<u32>(24538u, 0u, 1u), 2147483647i));

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 24>;

var<private> global3: Struct_2 = Struct_2(Struct_1(true, vec3<i32>(1i, 2147483647i, 0i), vec3<u32>(17816u, 7750u, 3767u), -18409i), Struct_1(true, vec3<i32>(-1i, -19960i, -25868i), vec3<u32>(6372u, 22521u, 1u), -54081i));

var<private> global4: array<bool, 11>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2) -> u32 {
    global2 = array<Struct_2, 24>();
    var var_0 = !select(select(select(!vec3<bool>(global3.b.a, global1.a.a, global3.b.a), select(vec3<bool>(true, arg_1.b.a, false), vec3<bool>(false, global3.b.a, global1.a.a), global1.b.a), true), vec3<bool>(true, true, true), global1.a.a), select(!select(vec3<bool>(global3.a.a, false, global3.a.a), vec3<bool>(global1.b.a, true, global0.a.a), false), vec3<bool>(true, false, all(vec4<bool>(false, global0.a.a, false, global1.a.a))), select(select(vec3<bool>(global0.a.a, false, global4[_wgslsmith_index_u32(global1.a.c.x, 11u)]), vec3<bool>(false, true, true), global3.a.a), vec3<bool>(global4[_wgslsmith_index_u32(global1.a.c.x, 11u)], false, true), true)), true);
    var var_1 = global1.a;
    var var_2 = global3.b;
    let var_3 = global0.a.c.x;
    return u_input.a.x & _wgslsmith_dot_vec3_u32(~var_1.c, abs(var_2.c));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: bool, arg_3: bool) -> vec4<bool> {
    global2 = array<Struct_2, 24>();
    var var_0 = global0.a;
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) * _wgslsmith_div_f32(592f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(875f, 1065f), _wgslsmith_f_op_f32(-587f + -1049f), true))))));
    var var_2 = -5131i;
    var var_3 = global1.b;
    return !(!(!vec4<bool>(!var_0.a, true, false, global4[_wgslsmith_index_u32(~global3.a.c.x, 11u)])));
}

fn func_2() -> u32 {
    let var_0 = select(vec2<bool>(true, false), vec2<bool>(!any(vec2<bool>(global1.a.a, false)), global3.b.a), vec2<bool>(true, true));
    let var_1 = func_4(func_3(global0.b.b.yz, Struct_2(Struct_1(global0.b.d >= -7657i, global1.b.b, global3.b.c, _wgslsmith_clamp_i32(global3.b.b.x, global1.b.b.x, global3.b.b.x)), Struct_1(-2147483647i <= global1.b.d, vec3<i32>(-21551i, global0.a.d, global3.a.b.x) & vec3<i32>(global1.b.b.x, global3.b.b.x, global1.b.d), global3.b.c, global3.a.b.x))), min(-abs(global0.b.b.x), global3.a.b.x), (-_wgslsmith_mod_i32(2147483647i, 2147483647i) >= abs(global1.a.b.x)) || (true && !(!global0.b.a)), !global3.a.a);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1181f, -892f, 998f), vec3<f32>(-1010f, -282f, -794f), global0.a.a)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(205f, -981f, 298f)))))), vec3<f32>(1f, 1f, 1f))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 1003f, 1009f, var_2.x)), vec4<f32>(1271f, var_2.x, var_2.x, 458f), true)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1335f, 134f, 1681f, var_2.x) * vec4<f32>(185f, var_2.x, var_2.x, var_2.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(714f, 386f, var_2.x, var_2.x)))))));
    var var_4 = Struct_2(Struct_1(all(select(vec2<bool>(false, false), vec2<bool>(global0.a.a, global1.a.a), global3.a.a)) && false, ~(~(global1.b.b | vec3<i32>(global0.a.b.x, -16241i, -2147483647i))), abs(_wgslsmith_mult_vec3_u32(global1.b.c, vec3<u32>(global1.a.c.x, global0.b.c.x, global0.a.c.x))), _wgslsmith_add_i32(~(-39i), _wgslsmith_add_i32(global1.a.b.x, 1i)) << (1u % 32u)), Struct_1(all(var_1.wxw), global3.b.b & global1.a.b, vec3<u32>(~reverseBits(global0.a.c.x), ~global0.b.c.x >> (_wgslsmith_mult_u32(4294967295u, global0.b.c.x) % 32u), ~(~125647u)), -global1.b.b.x));
    return 47002u;
}

fn func_1() -> Struct_2 {
    global4 = array<bool, 11>();
    global4 = array<bool, 11>();
    var var_0 = countOneBits(12878i);
    let var_1 = 1663f;
    var var_2 = !vec3<bool>(global1.b.a, true, !(any(vec4<bool>(global4[_wgslsmith_index_u32(22640u, 11u)], false, global3.a.a, global1.a.a)) & false));
    return global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(13884u, func_2()), ~4294967295u) ^ u_input.b.x, 24u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global4 = array<bool, 11>();
    global1 = func_1();
    var var_1 = 592f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -301f) + _wgslsmith_f_op_f32(round(1f))) * _wgslsmith_f_op_f32(-989f - 1664f));
    global3 = Struct_2(func_1().a, Struct_1(func_4(abs(19399u), ~(-2147483647i << (u_input.a.x % 32u)), true, global3.a.a).x, select(select(vec3<i32>(1i, global3.b.d, global3.b.d), vec3<i32>(54274i, -2147483647i, global3.a.b.x) ^ global1.b.b, select(vec3<bool>(var_0, global4[_wgslsmith_index_u32(global3.b.c.x, 11u)], global1.a.a), vec3<bool>(true, false, true), global0.b.a)), -_wgslsmith_mult_vec3_i32(global3.b.b, global0.a.b), func_4(29740u, 0i, func_4(global0.b.c.x, global3.b.b.x, global4[_wgslsmith_index_u32(0u, 11u)], false).x, global3.a.a).yyz), vec3<u32>(~4294967295u, _wgslsmith_div_u32(4294967295u, 29187u), ~(global3.b.c.x ^ 4294967295u)), _wgslsmith_dot_vec4_i32(~reverseBits(vec4<i32>(global0.b.b.x, -1i, global1.b.d, -5186i)), abs(vec4<i32>(global1.a.b.x, -1i, 2147483647i, 0i)))));
    var var_2 = func_1().a;
    var_1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 301f, 1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(983f, 764f)), _wgslsmith_f_op_f32(min(642f, 1991f)), true))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-167f + -393f)), 1814f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-544f)) + _wgslsmith_f_op_f32(f32(-1f) * -1360f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -108f), _wgslsmith_f_op_f32(f32(-1f) * -1889f), func_1().a.a)))), ~(min(global0.b.c, func_1().b.c) << (vec3<u32>(u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.a.yxy, vec3<u32>(global0.b.c.x, var_2.c.x, 12591u)), ~4294967295u) % vec3<u32>(32u))));
}

