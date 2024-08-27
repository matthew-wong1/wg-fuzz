struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_2 = Struct_2(true);

var<private> global2: Struct_3;

var<private> global3: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = u_input.a.x;
    var var_1 = Struct_2(false);
    global1 = Struct_2(all(!vec2<bool>(true, global1.a & var_1.a)));
    global1 = Struct_2(any(select(!vec3<bool>(global1.a, var_1.a, global1.a), vec3<bool>(var_1.a, true, true), vec3<bool>(select(global3.x, var_1.a, global1.a), any(vec3<bool>(true, true, var_1.a)), true))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(822f, -486f)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1064f, _wgslsmith_f_op_f32(148f * global2.a)))), vec3<bool>(~(~4129u) == ((4294967295u & u_input.c) & _wgslsmith_add_u32(28092u, u_input.c)), u_input.a.x == u_input.a.x, any(!select(vec3<bool>(global3.x, global2.b, global1.a), vec3<bool>(global1.a, global1.a, false), vec3<bool>(true, true, true)))), ~(-vec3<i32>(max(-15373i, -83778i), _wgslsmith_dot_vec3_i32(vec3<i32>(13484i, u_input.a.x, 1i), u_input.a), 2147483647i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c) * global2.a))), -1052f));
    return -498f < _wgslsmith_f_op_f32(min(180f, var_2.d));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: vec3<u32>, arg_3: i32) -> f32 {
    var var_0 = !func_3(global1.a);
    var var_1 = Struct_2(arg_0.a);
    let var_2 = Struct_2(true);
    global3 = vec2<bool>(true, true);
    var var_3 = _wgslsmith_sub_i32(-1i, _wgslsmith_add_i32(_wgslsmith_add_i32(arg_3, 1i), 40249i));
    return global2.a;
}

fn func_1(arg_0: vec3<f32>, arg_1: f32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2311f + arg_1))), _wgslsmith_f_op_f32(arg_0.x * 241f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-453f + 1000f), -1291f), -1000f) * vec4<f32>(753f, _wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(ceil(-2444f)), _wgslsmith_f_op_f32(f32(-1f) * -2377f))));
    global3 = select(select(select(vec2<bool>(!global2.b, global3.x), vec2<bool>(false, false), any(!vec3<bool>(global2.b, false, global3.x))), select(vec2<bool>(true, true), !(!vec2<bool>(global1.a, false)), vec2<bool>(true, false)), any(vec4<bool>(all(vec2<bool>(false, false)), all(vec2<bool>(false, false)), false, global1.a))), !vec2<bool>(!all(vec2<bool>(global1.a, global2.b)), all(!vec3<bool>(global2.b, false, false))), !select(vec2<bool>(!global3.x, global2.b), !vec2<bool>(global3.x, true), !(false || global2.b)));
    global2 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1007f)))), false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a * -314f) * _wgslsmith_f_op_f32(select(-114f, 3148f, global3.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(false), u_input.a.x, vec3<u32>(u_input.b.x, 10677u, 4294967295u), 2147483647i))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), arg_0.x)), global3.x)));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(select(var_0.x, var_0.x, !global1.a))) - arg_0.x), Struct_1(global2.c, select(!select(vec3<bool>(global2.b, false, false), vec3<bool>(false, false, global1.a), global3.x), select(!vec3<bool>(global3.x, true, global1.a), !vec3<bool>(global2.b, global3.x, global1.a), vec3<bool>(global1.a, true, true)), vec3<bool>(global3.x && true, all(vec3<bool>(global1.a, true, global1.a)), !global3.x)), u_input.a, global2.c), Struct_1(_wgslsmith_f_op_f32(-var_0.x), vec3<bool>(any(!vec4<bool>(true, false, global3.x, false)), global3.x, true), abs(u_input.a), -1000f), firstTrailingBit(u_input.a.x), Struct_2(false));
    global2 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-654f, -193f))))))), !global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.c.d))));
    return Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2645f * _wgslsmith_f_op_f32(sign(var_0.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-581f, arg_0.x))))), _wgslsmith_f_op_f32(func_2(Struct_2(global1.a | true), 0i, ~(u_input.b.wwz | u_input.b.xzw), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d, var_1.b.c.x, 0i, u_input.a.x) >> (u_input.b % vec4<u32>(32u)), vec4<i32>(u_input.a.x, -2147483647i, -25537i, -1i)))))), var_1.b, Struct_1(-202f, !(!(!var_1.b.b)), u_input.a, _wgslsmith_f_op_f32(func_2(Struct_2(false), reverseBits(i32(-1i) * -29586i), u_input.b.wxw, _wgslsmith_add_i32(u_input.a.x, -13227i) >> (_wgslsmith_dot_vec4_u32(u_input.b, u_input.b) % 32u)))), _wgslsmith_sub_i32(abs(countOneBits(11955i) & _wgslsmith_div_i32(var_1.b.c.x, 1i)), 1i), Struct_2(global3.x));
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: bool) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-538f)))));
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_0.c.d, _wgslsmith_f_op_f32(abs(arg_0.b.d))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global2.c, arg_0.c.a)), -1717f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-297f - global2.c) * global2.a)) + vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_2(global3.x), firstTrailingBit(31426i), u_input.b.xxz << (u_input.b.yyx % vec3<u32>(32u)), ~arg_0.b.c.x)), 949f, _wgslsmith_f_op_f32(select(arg_0.c.a, -806f, !arg_0.e.a))))));
    let var_1 = u_input.b.xy;
    let var_2 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(-438f, global2.c, arg_0.c.d) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, var_0.x, -1727f), var_0))))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(func_1(var_0, global2.c).e, _wgslsmith_mult_i32(arg_0.b.c.x, -1i), select(u_input.b.wyy, vec3<u32>(8138u, 0u, 55271u), arg_0.b.b), arg_0.c.c.x)), -337f))));
    let var_3 = ~u_input.a.x;
    return var_2.b;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>) -> vec2<i32> {
    let var_0 = Struct_3(-465f, func_3(!(!all(vec4<bool>(global2.b, false, true, arg_0.b.x)))), arg_0.d);
    var var_1 = _wgslsmith_add_vec4_u32(u_input.b, u_input.b);
    var var_2 = ~abs(~(~var_1.yzw));
    global1 = func_1(vec3<f32>(global2.c, global2.a, 173f), var_0.c).e;
    var var_3 = func_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d, arg_0.a, arg_0.a) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.a, 1000f, global2.c))))))), _wgslsmith_f_op_f32(var_0.a + 1976f)).e;
    return _wgslsmith_mod_vec2_i32(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(254f, arg_0.a, arg_0.d), vec3<f32>(arg_0.d, -1587f, global2.c), arg_0.b)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(153f - global2.a), -123f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.c * 723f), 383f, var_0.b))))).c.c.xx, reverseBits(vec2<i32>(14305i, arg_0.c.x) << (var_2.yx % vec2<u32>(32u))));
}

fn func_6(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: u32) -> Struct_4 {
    global2 = Struct_3(arg_2.c.a, false, func_4(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c.d, 161f, 653f)), global2.a), ~(~(arg_3 | arg_3)), true).d);
    var var_0 = _wgslsmith_f_op_f32(1023f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-849f)))))));
    let var_1 = arg_2.b;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), true, _wgslsmith_f_op_f32(select(-180f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.a * 992f))), true != global1.a)));
    var var_3 = firstLeadingBit(u_input.a.x);
    return func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(788f, arg_2.b.a, var_1.d)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1561f, 448f, var_1.d)))))))), 624f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(!select(vec3<bool>(false, !global2.b, any(vec4<bool>(false, false, true, false))), select(vec3<bool>(false, false, true), vec3<bool>(global2.b, global3.x, true), global1.a), any(vec4<bool>(true, global3.x, false, false))), ~func_5(func_4(func_1(vec3<f32>(-491f, global2.a, global2.c), -1000f), _wgslsmith_add_u32(u_input.c, 1u), global2.b), ~u_input.b), Struct_4(_wgslsmith_f_op_f32(round(-264f)), func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-2068f, 185f, global2.c), vec3<f32>(global2.a, global2.a, global2.a)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-538f, 747f, -1690f), vec3<f32>(global2.c, global2.c, global2.a), vec3<bool>(true, global1.a, global3.x)))), global2.a).c, Struct_1(global2.c, !vec3<bool>(true, global3.x, global3.x), _wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(-57173i, u_input.a.x, -1i)), vec3<i32>(0i, 17022i, -34168i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.c), global2.a)), -(u_input.a.x & -2147483647i), Struct_2(global2.b)), 4294967295u);
    var var_1 = var_0.e;
    global1 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c, var_0.b.d, 826f) * _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, global2.c, var_0.c.d), vec3<f32>(-1008f, 576f, global2.c)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-315f + _wgslsmith_f_op_f32(abs(global2.a))) * _wgslsmith_f_op_f32(f32(-1f) * -370f)), global2.c)).e;
    var_1 = func_6(!var_0.b.b, ~vec2<i32>(2147483647i & _wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(var_0.d, -4897i)), ~(-u_input.a.x)), func_1(vec3<f32>(-1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global2.a)), -499f)), _wgslsmith_f_op_f32(-global2.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b.a, -1484f))) - var_0.a)), ~reverseBits(max(u_input.b.x, u_input.c))).e;
    var var_2 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1471f), var_0.c, var_0.c, -_wgslsmith_add_i32(1i, -(i32(-1i) * -2147483647i)), var_0.e);
    let var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(var_0.e, 1i, vec3<u32>(reverseBits(u_input.c), ~4294967295u, u_input.b.x | u_input.c), abs(2147483647i))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.c - global2.c), _wgslsmith_f_op_f32(-var_2.a))), !(false & ((var_2.b.b.x || false) && func_1(vec3<f32>(526f, global2.c, global2.a), var_0.c.d).c.b.x)), var_0.a);
    global2 = Struct_3(-410f, var_1.a, var_0.a);
    var_2 = Struct_4(-1307f, func_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(1736f, -1156f), var_2.b.a, _wgslsmith_f_op_f32(var_0.b.a + var_3.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2738f, -1638f, var_2.c.d))))), var_3.c).c, Struct_1(func_6(!var_2.b.b, -(u_input.a.zz >> (vec2<u32>(4294967295u, 30287u) % vec2<u32>(32u))), func_6(!var_2.b.b, vec2<i32>(35509i, 0i), func_6(var_0.b.b, vec2<i32>(-1i, -1i), Struct_4(-111f, var_0.c, var_0.c, 67643i, var_2.e), u_input.b.x), countOneBits(118240u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(27203u, 1u), vec2<u32>(u_input.b.x, 39063u)), firstTrailingBit(u_input.b.x))).c.d, vec3<bool>(!(global2.a != 612f), !var_3.b, true), _wgslsmith_clamp_vec3_i32(~var_2.b.c, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d, 10828i, var_2.d, 20137i), vec4<i32>(var_2.d, 31661i, -1i, var_0.c.c.x)), u_input.a.x, u_input.a.x), select(abs(vec3<i32>(u_input.a.x, var_0.b.c.x, u_input.a.x)), var_0.b.c, true)), -433f), -28239i & var_2.c.c.x, var_0.e);
    global3 = var_2.c.b.yx;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(max(var_2.c.c.x, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(var_0.b.c.x, u_input.a.x, var_2.b.c.x, 7414i)), min(vec4<i32>(26717i, var_0.b.c.x, 37777i, u_input.a.x), vec4<i32>(-1i, -17746i, 18455i, var_0.d)))), firstTrailingBit(0i)), firstLeadingBit(~var_0.c.c) ^ vec3<i32>(~u_input.a.x, countOneBits(~u_input.a.x), min(3362i, func_5(var_0.c, vec4<u32>(1u, u_input.b.x, 1623u, 0u)).x)), _wgslsmith_add_u32(~(~_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(0u, u_input.c, 1u, 42949u))), abs(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b.yyx, u_input.b.xzx), firstTrailingBit(u_input.b.zwy)))));
}

