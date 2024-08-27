struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: f32,
    c: Struct_2,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -828f;

var<private> global1: Struct_3 = Struct_3(true, Struct_2(Struct_1(vec3<f32>(-177f, -211f, -1171f), vec4<u32>(17894u, 1u, 4294967295u, 3557u), vec2<bool>(true, false))));

var<private> global2: f32;

var<private> global3: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(-31959i, -19868i, 2147483647i), vec3<i32>(-32211i, -30878i, -66855i), vec3<i32>(-1i, 1i, -28220i), vec3<i32>(18330i, 12316i, 1i), vec3<i32>(-67588i, 52630i, 0i), vec3<i32>(-1i, 24609i, -1i), vec3<i32>(2371i, -16345i, i32(-2147483648)), vec3<i32>(38634i, -5352i, -43918i), vec3<i32>(0i, 1i, -1i), vec3<i32>(-42006i, -35147i, -1i), vec3<i32>(2147483647i, -24367i, -1i), vec3<i32>(15330i, -7499i, 1i), vec3<i32>(1i, -19i, 35494i), vec3<i32>(1i, 29289i, 10762i), vec3<i32>(1i, 25339i, 4871i), vec3<i32>(-35691i, i32(-2147483648), 1i), vec3<i32>(19334i, 0i, 23119i), vec3<i32>(-9266i, -30698i, -26218i), vec3<i32>(1i, 0i, 2147483647i), vec3<i32>(-41617i, 39281i, 2147483647i), vec3<i32>(1i, 1i, 2147483647i), vec3<i32>(-38793i, -1i, -59817i));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    global3 = array<vec3<i32>, 22>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global1.b.a.a.x)), global1.b.a.a.x)), -1211f)));
    global1 = Struct_3(true, global1.b);
    global3 = array<vec3<i32>, 22>();
    var var_1 = ~0u;
    return any(select(vec3<bool>(false, select(any(global1.b.a.c), all(vec4<bool>(true, false, global1.a, global1.b.a.c.x)), 495f < var_0.x), global1.b.a.c.x), vec3<bool>(any(!vec4<bool>(false, false, global1.b.a.c.x, global1.a)), global1.a, true), !(!select(vec3<bool>(false, global1.b.a.c.x, false), vec3<bool>(false, global1.b.a.c.x, false), false))));
}

fn func_2(arg_0: vec3<bool>) -> Struct_5 {
    var var_0 = func_3();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(608f, global1.b.a.a.x) + global1.b.a.a.x))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.a.a.x - _wgslsmith_div_f32(global1.b.a.a.x, global1.b.a.a.x)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(746f - global1.b.a.a.x)))), global1.b.a.a.x, true)));
    global0 = global1.b.a.a.x;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1909f + global1.b.a.a.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.b.a.a.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.a.a.x + global1.b.a.a.x))) * -941f));
    var_1 = -1821f;
    return Struct_5(global1.b.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global1.b.a.a.x, 1000f)), global1.b.a.a.x)) - 1482f) * 132f), Struct_2(global1.b.a), select(select(global1.b.a.c, global1.b.a.c, !arg_0.zz), vec2<bool>(all(!vec3<bool>(global1.a, global1.b.a.c.x, true)), any(!vec4<bool>(false, arg_0.x, arg_0.x, true))), false), global1.b.a.a.x);
}

fn func_4(arg_0: Struct_5, arg_1: vec3<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_1.x, -1537f)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(499f + 1525f) + arg_1.x)))));
    let var_1 = arg_0.c.a.a.x;
    let var_2 = Struct_4(func_2(!vec3<bool>(arg_0.c.a.c.x, func_3(), all(vec4<bool>(global1.a, arg_0.d.x, global1.b.a.c.x, arg_0.c.a.c.x)))).c.a, select(~(~arg_0.c.a.b), vec4<u32>(83430u, u_input.d, 1u, _wgslsmith_dot_vec3_u32(arg_0.c.a.b.wxx, vec3<u32>(0u, 0u, arg_0.c.a.b.x))), select(select(vec4<bool>(false, global1.b.a.c.x, global1.b.a.c.x, arg_0.d.x), vec4<bool>(true, global1.b.a.c.x, true, true), arg_0.d.x), select(vec4<bool>(arg_0.d.x, false, global1.b.a.c.x, global1.b.a.c.x), vec4<bool>(true, arg_0.c.a.c.x, arg_0.c.a.c.x, false), vec4<bool>(arg_0.c.a.c.x, arg_0.c.a.c.x, global1.a, global1.a)), arg_0.d.x)) << (~arg_0.c.a.b % vec4<u32>(32u)));
    global1 = Struct_3(select(select(arg_0.d.x, global1.a, func_3()), (~(-1i) | u_input.b.x) <= ~u_input.b.x, false), global1.b);
    let var_3 = _wgslsmith_div_vec3_u32(firstLeadingBit(max(~arg_0.c.a.b.wzw, abs(global1.b.a.b.xzz)) ^ var_2.b.xww), ~arg_0.c.a.b.yxw);
    return func_2(!vec3<bool>(global1.b.a.a.x > _wgslsmith_f_op_f32(f32(-1f) * -776f), !(482f >= global1.b.a.a.x), any(!vec2<bool>(arg_0.c.a.c.x, false)))).c;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_4) -> Struct_3 {
    let var_0 = firstLeadingBit(~1u);
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(371f - 253f), 371f))), 1113f, _wgslsmith_f_op_f32(-arg_1.x)), arg_0.a.b, arg_0.a.c);
    var var_2 = ~(~var_0);
    let var_3 = -517f;
    var var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-600f, _wgslsmith_f_op_f32(-arg_0.a.a.x))));
    return Struct_3(true, Struct_2(global1.b.a));
}

fn func_1() -> vec2<bool> {
    global1 = func_5(func_4(func_2(vec3<bool>(global1.a | false, global1.b.a.c.x, global1.a)), _wgslsmith_f_op_vec3_f32(global1.b.a.a * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.b.a.a.x, 171f, global1.b.a.a.x), _wgslsmith_div_vec3_f32(global1.b.a.a, vec3<f32>(445f, 2611f, 1318f)), true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.b.a.a.x, global1.b.a.a.x, -1605f, global1.b.a.a.x), _wgslsmith_div_vec4_f32(vec4<f32>(-267f, 1000f, global1.b.a.a.x, global1.b.a.a.x), vec4<f32>(global1.b.a.a.x, -626f, global1.b.a.a.x, -195f)))), vec4<f32>(_wgslsmith_f_op_f32(global1.b.a.a.x + global1.b.a.a.x), 920f, _wgslsmith_f_op_f32(exp2(global1.b.a.a.x)), _wgslsmith_f_op_f32(-global1.b.a.a.x)))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-343f, 503f, 1537f, -363f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-586f, 1191f, -658f, 927f))), vec4<bool>(true, true, true, true)))), Struct_4(func_2(!vec3<bool>(global1.b.a.c.x, false, true)).c.a, vec4<u32>(u_input.d, ~1u, countOneBits(func_2(vec3<bool>(global1.b.a.c.x, global1.a, global1.b.a.c.x)).c.a.b.x), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(0u, 4294967295u, u_input.d)), global1.b.a.b.zyx))));
    global2 = 1677f;
    let var_0 = min(-_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, _wgslsmith_add_i32(u_input.c.x, -31813i), u_input.a), vec3<i32>(2147483647i, u_input.c.x & -31331i, countOneBits(30201i))), vec3<i32>(u_input.c.x, select(u_input.b.x, -50692i, all(!vec4<bool>(global1.b.a.c.x, false, global1.b.a.c.x, true))), 0i));
    let var_1 = Struct_4(func_2(select(vec3<bool>(all(vec4<bool>(false, global1.b.a.c.x, global1.a, global1.a)), true, any(vec3<bool>(false, false, global1.a))), vec3<bool>(global1.b.a.c.x, true, func_4(Struct_5(global1.b.a.a, global1.b.a.a.x, global1.b, global1.b.a.c, -978f), vec3<f32>(global1.b.a.a.x, global1.b.a.a.x, global1.b.a.a.x)).a.c.x), true)).c.a, func_4(func_2(vec3<bool>(func_3(), !global1.b.a.c.x, func_2(vec3<bool>(false, global1.b.a.c.x, global1.b.a.c.x)).c.a.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global1.b.a.a, global1.b.a.a, false)))).a.b);
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-482f, 528f), _wgslsmith_f_op_f32(global1.b.a.a.x * -514f)));
    return func_2(!select(vec3<bool>(!var_1.a.c.x, 1i >= var_0.x, 13889u < var_1.a.b.x), select(vec3<bool>(var_1.a.c.x, false, var_1.a.c.x), select(vec3<bool>(var_1.a.c.x, true, var_1.a.c.x), vec3<bool>(false, true, var_1.a.c.x), false), func_4(Struct_5(vec3<f32>(var_1.a.a.x, -751f, var_1.a.a.x), var_2, Struct_2(global1.b.a), vec2<bool>(true, var_1.a.c.x), global1.b.a.a.x), vec3<f32>(212f, -2482f, global1.b.a.a.x)).a.c.x), _wgslsmith_add_u32(6747u, 68608u) >= global1.b.a.b.x)).d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.b;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.a) + _wgslsmith_f_op_vec3_f32(trunc(var_0.a.a))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(925f, 509f, -1228f) * vec3<f32>(global1.b.a.a.x, global1.b.a.a.x, 539f))))), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(~global1.b.a.b, ~global1.b.a.b), global1.b.a.b), func_1()));
    global2 = -645f;
    let var_2 = select(!vec3<bool>(func_1().x, true, true), vec3<bool>(true, true, true), vec3<bool>(108f <= _wgslsmith_f_op_f32(var_0.a.a.x + var_0.a.a.x), false, var_0.a.c.x));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.a.a.x))) - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(169f, _wgslsmith_f_op_f32(min(-185f, var_0.a.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.a.a.x))), func_5(Struct_2(global1.b.a), vec4<f32>(var_0.a.a.x, var_1.a.a.x, _wgslsmith_f_op_f32(-var_1.a.a.x), _wgslsmith_div_f32(1542f, -1483f)), Struct_4(func_4(Struct_5(vec3<f32>(306f, var_0.a.a.x, 635f), 309f, Struct_2(var_0.a), var_1.a.c, global1.b.a.a.x), var_1.a.a).a, global1.b.a.b)).b.a.a.x));
    var var_3 = _wgslsmith_mod_u32(44556u, ~65218u);
    var_1 = Struct_2(var_1.a);
    global0 = _wgslsmith_div_f32(var_0.a.a.x, _wgslsmith_f_op_f32(-global1.b.a.a.x));
    global1 = Struct_3(func_5(func_5(global1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.a.x, -811f, global1.b.a.a.x, global1.b.a.a.x), vec4<f32>(var_1.a.a.x, 971f, -1418f, -1157f), global1.b.a.c.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1541f, var_1.a.a.x, 1000f, -749f) + vec4<f32>(var_0.a.a.x, global1.b.a.a.x, var_0.a.a.x, -806f))), Struct_4(func_4(Struct_5(global1.b.a.a, 1285f, Struct_2(Struct_1(var_0.a.a, vec4<u32>(88426u, 6871u, var_0.a.b.x, var_0.a.b.x), vec2<bool>(false, true))), var_0.a.c, var_1.a.a.x), var_0.a.a).a, vec4<u32>(10724u, 23608u, var_0.a.b.x, var_1.a.b.x))).b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1518f, _wgslsmith_f_op_f32(select(-372f, 1387f, var_0.a.c.x)), _wgslsmith_f_op_f32(-global1.b.a.a.x), -842f)), Struct_4(func_5(func_5(global1.b, vec4<f32>(var_0.a.a.x, global1.b.a.a.x, -488f, global1.b.a.a.x), Struct_4(var_0.a, vec4<u32>(1u, global1.b.a.b.x, u_input.d, u_input.d))).b, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1335f, -1000f, global1.b.a.a.x, 547f))), Struct_4(Struct_1(vec3<f32>(var_1.a.a.x, var_0.a.a.x, var_1.a.a.x), global1.b.a.b, var_2.zx), var_0.a.b)).b.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 24986u, 4294967295u, var_0.a.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, var_0.a.b.x, u_input.d), var_1.a.b), var_1.a.b))).a, global1.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.b.zy | func_4(func_2(select(var_2, var_2, vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.b.a.a + vec3<f32>(-578f, -438f, var_1.a.a.x)) - vec3<f32>(-310f, var_0.a.a.x, global1.b.a.a.x))).a.b.xx, _wgslsmith_f_op_f32(-global1.b.a.a.x), _wgslsmith_f_op_f32(round(var_1.a.a.x)));
}

