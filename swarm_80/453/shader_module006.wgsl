struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: vec2<bool>,
    d: vec3<f32>,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: i32,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: vec3<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_2 = Struct_2(true, vec4<f32>(-440f, -1000f, -1274f, 1055f), vec2<bool>(false, true), vec3<f32>(657f, -150f, 1512f), true);

var<private> global2: array<Struct_2, 2>;

var<private> global3: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: i32) -> f32 {
    global1 = Struct_2(global1.e, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(427f + global1.d.x), 710f, _wgslsmith_f_op_f32(f32(-1f) * -858f), 372f))), global1.b, select(select(vec4<bool>(false, true, global1.c.x, global1.c.x), !vec4<bool>(false, global1.a, true, true), false), select(!vec4<bool>(global1.a, false, global1.a, global1.e), vec4<bool>(true, true, true, true), true), false))), vec2<bool>(global1.a, true), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(1882f, _wgslsmith_f_op_f32(1142f + -954f), -875f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.d.x, -1130f, global1.b.x))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(342f, 649f)) * 1000f), _wgslsmith_f_op_f32(-741f - _wgslsmith_f_op_f32(f32(-1f) * -1898f)), _wgslsmith_f_op_f32(min(global1.b.x, global1.b.x))))), true);
    var var_0 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.b.x - _wgslsmith_f_op_f32(step(global1.b.x, global1.b.x))), global1.b.x)), -10794i, firstTrailingBit(countOneBits(arg_1)), select(vec4<bool>(all(select(vec3<bool>(true, global1.c.x, global1.e), vec3<bool>(true, global1.a, global1.a), true)), false, global1.c.x, (arg_1 >> (1u % 32u)) != _wgslsmith_div_i32(u_input.a, arg_1)), vec4<bool>(false, true, all(vec4<bool>(true, false, true, global1.e)) && (arg_0.x < 32770u), !any(global1.c)), !select(!vec4<bool>(true, true, global1.c.x, global1.a), !vec4<bool>(global1.a, true, global1.a, false), global1.a)), Struct_1(vec4<f32>(1894f, global1.d.x, global1.b.x, _wgslsmith_div_f32(-141f, _wgslsmith_f_op_f32(trunc(1132f)))), abs(~reverseBits(arg_0.x)), global1.d));
    let var_1 = _wgslsmith_f_op_f32(-var_0.e.c.x);
    let var_2 = Struct_5(var_0.e.b, global2[_wgslsmith_index_u32(38122u, 2u)], global2[_wgslsmith_index_u32(0u, 2u)]);
    var var_3 = arg_0.xwz;
    return 1215f;
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: i32, arg_3: vec3<bool>) -> i32 {
    global3 = _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d.x * -884f) + _wgslsmith_f_op_f32(func_3(vec4<u32>(19793u, 8142u, 58080u, 0u), 10407i)))))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.d.x, 153f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -119f) + _wgslsmith_f_op_f32(-global1.d.x)))) - _wgslsmith_f_op_f32(f32(-1f) * -664f));
    global0 = 26554i;
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(2034f))))), _wgslsmith_f_op_f32(-1791f - _wgslsmith_f_op_f32(func_3(vec4<u32>(_wgslsmith_add_u32(60468u, 1u), 1u, countOneBits(32526u), 1u), ~(~2147483647i)))), -1553f, 1725f);
    let var_1 = global2[_wgslsmith_index_u32(max(64008u, 1u), 2u)];
    var var_2 = u_input.a;
    return -33113i;
}

fn func_4(arg_0: Struct_3) -> Struct_4 {
    let var_0 = Struct_1(vec4<f32>(arg_0.e.c.x, 1000f, global1.d.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -675f) - 392f)))), arg_0.e.b, _wgslsmith_div_vec3_f32(arg_0.e.a.xwz, _wgslsmith_f_op_vec3_f32(vec3<f32>(-983f, _wgslsmith_f_op_f32(trunc(global1.b.x)), _wgslsmith_f_op_f32(max(arg_0.a, arg_0.e.a.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_0.e.a.wwz, global1.b.yzz))))));
    global3 = ~(-(i32(-1i) * -8177i) ^ ~_wgslsmith_clamp_i32(-75921i, -1i, 0i)) <= -5085i;
    global2 = array<Struct_2, 2>();
    let var_1 = _wgslsmith_f_op_f32(496f * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.c.x, arg_0.e.a.x))));
    global3 = any(vec4<bool>(true, arg_0.d.x, !global1.e, !arg_0.d.x & any(vec2<bool>(global1.e, false)))) & all(select(select(arg_0.d.wz, global1.c, vec2<bool>(global1.c.x, arg_0.d.x)), !global1.c, !(!vec2<bool>(true, global1.a))));
    return Struct_4(Struct_1(global1.b, 97749u, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(global1.b.x)), _wgslsmith_f_op_f32(ceil(var_0.a.x)), _wgslsmith_f_op_f32(ceil(global1.b.x))), _wgslsmith_f_op_vec3_f32(global1.d + _wgslsmith_f_op_vec3_f32(var_0.a.yyx - var_0.a.zzw)))));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_5, arg_3: Struct_5) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-194f * global1.b.x)), -1593f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.c.d.x) * 332f)))));
    var var_1 = func_4(Struct_3(arg_3.b.b.x, func_2(u_input.a, Struct_2(arg_3.c.e, global1.b, arg_3.c.c, vec3<f32>(arg_3.c.b.x, global1.b.x, -994f), arg_3.b.a), -u_input.a, select(vec3<bool>(arg_2.b.c.x, arg_3.b.c.x, true), vec3<bool>(true, false, arg_3.c.e), global1.e)) & (i32(-1i) * -arg_0), _wgslsmith_div_i32(u_input.a, -1i), select(vec4<bool>(true, all(vec4<bool>(true, true, false, false)), false & arg_3.b.e, any(vec3<bool>(true, global1.e, false))), select(select(vec4<bool>(arg_3.b.c.x, arg_2.c.a, true, global1.a), vec4<bool>(false, arg_2.c.c.x, arg_2.c.e, true), false), vec4<bool>(arg_3.b.e, true, arg_3.b.a, false), !vec4<bool>(arg_3.b.a, arg_3.c.c.x, arg_2.b.a, global1.c.x)), select(!vec4<bool>(false, arg_3.c.e, true, true), !vec4<bool>(true, true, false, arg_3.b.e), select(vec4<bool>(true, arg_2.b.c.x, true, false), vec4<bool>(arg_2.b.e, global1.c.x, arg_3.b.c.x, true), arg_2.c.e))), Struct_1(_wgslsmith_f_op_vec4_f32(round(arg_2.c.b)), ~(~arg_3.a), vec3<f32>(-215f, -2086f, _wgslsmith_f_op_f32(739f - arg_2.c.b.x)))));
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_2.a, arg_2.a, ~arg_3.a) | 21074u, 4294967295u ^ reverseBits(countOneBits(~arg_3.a))), 2u)];
    var var_2 = global1.d.x > 1000f;
    global1 = Struct_2(!arg_3.b.c.x, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(261f, _wgslsmith_f_op_f32(f32(-1f) * -1541f), 333f, _wgslsmith_f_op_f32(floor(var_1.a.a.x))), global1.b))), vec2<bool>(true, !any(select(vec4<bool>(false, global1.c.x, true, true), vec4<bool>(arg_2.c.c.x, arg_2.b.c.x, arg_3.c.a, arg_3.c.e), vec4<bool>(false, false, true, true)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(-234f + 1127f), _wgslsmith_f_op_f32(-arg_3.b.d.x))))), true);
    return global2[_wgslsmith_index_u32(var_1.a.b, 2u)];
}

fn func_5(arg_0: bool, arg_1: Struct_5) -> f32 {
    var var_0 = arg_1;
    let var_1 = arg_1.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2129f, -1170f, -545f, var_0.c.d.x) + vec4<f32>(var_0.b.b.x, 395f, 672f, 1000f)))), _wgslsmith_f_op_vec4_f32(-arg_1.c.b), false)), vec4<f32>(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(ceil(-1228f)), -1472f, _wgslsmith_f_op_f32(ceil(320f))))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -387f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.b.x)))), var_0.b.b.x, _wgslsmith_f_op_f32(1217f * 984f)));
    global1 = arg_1.c;
    var var_3 = arg_1.b.e;
    return _wgslsmith_div_f32(func_4(Struct_3(_wgslsmith_f_op_f32(-1f), u_input.a, -8043i, vec4<bool>(false, !var_0.b.e, select(arg_1.c.a, global1.c.x, false), -1845f >= var_2.x), func_4(Struct_3(-188f, 1i, u_input.a, vec4<bool>(arg_1.c.a, arg_0, global1.e, false), Struct_1(global1.b, 1u, arg_1.c.d))).a)).a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_5(true, Struct_5(~31166u, func_1(u_input.a, global1.d.x, Struct_5(4294967295u, Struct_2(global1.e, global1.b, vec2<bool>(global1.a, global1.c.x), global1.b.yxx, false), global2[_wgslsmith_index_u32(86092u, 2u)]), Struct_5(4294967295u, Struct_2(global1.a, global1.b, global1.c, vec3<f32>(global1.b.x, global1.b.x, 914f), global1.e), Struct_2(global1.c.x, global1.b, global1.c, global1.b.wxw, global1.a))), Struct_2(false, global1.b, vec2<bool>(true, true), vec3<f32>(150f, global1.b.x, 866f), false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-915f - 230f) + global1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(vec4<u32>(0u, 50822u, 1u, 23007u), 1416i)))))) - global1.d);
    let var_1 = all(select(func_1(countOneBits(4260i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(552f, var_0.x))), Struct_5(firstLeadingBit(32458u), func_1(23183i, -1000f, Struct_5(99u, global2[_wgslsmith_index_u32(1u, 2u)], Struct_2(global1.a, global1.b, vec2<bool>(false, false), vec3<f32>(var_0.x, var_0.x, 1558f), true)), Struct_5(4294967295u, global2[_wgslsmith_index_u32(119423u, 2u)], Struct_2(global1.c.x, global1.b, vec2<bool>(global1.a, global1.a), global1.b.zwy, true))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(58558u, 1u), 2u)]), Struct_5(1u, global2[_wgslsmith_index_u32(~0u, 2u)], func_1(2147483647i, -3268f, Struct_5(1u, Struct_2(true, global1.b, vec2<bool>(true, true), global1.d, false), Struct_2(true, vec4<f32>(544f, 811f, var_0.x, var_0.x), vec2<bool>(false, false), global1.d, true)), Struct_5(0u, Struct_2(true, vec4<f32>(719f, global1.d.x, var_0.x, global1.b.x), vec2<bool>(false, global1.e), global1.b.xwz, false), Struct_2(global1.a, vec4<f32>(1000f, var_0.x, global1.d.x, 1140f), vec2<bool>(false, true), global1.d, false))))).c, !vec2<bool>(false, select(true, global1.e, false)), all(select(vec4<bool>(false, global1.a, true, false), select(vec4<bool>(global1.c.x, false, true, true), vec4<bool>(true, global1.a, false, global1.e), vec4<bool>(true, false, false, true)), select(vec4<bool>(global1.c.x, global1.a, global1.a, false), vec4<bool>(true, global1.c.x, global1.e, false), false)))));
    var var_2 = Struct_4(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(613f)) * _wgslsmith_div_f32(-490f, -402f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global1.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(select(global1.d.x, global1.d.x, true)))), 0u, global1.d));
    global3 = all(vec4<bool>(true, select(global1.e, var_1, select(global1.c.x, global1.e, var_1)), true, any(vec2<bool>(var_1, false)))) | !any(select(global1.c, vec2<bool>(global1.e, true), !global1.c));
    global1 = func_1(2147483647i, -625f, Struct_5(13371u, global2[_wgslsmith_index_u32(~firstTrailingBit(firstTrailingBit(25024u)), 2u)], Struct_2(var_0.x == _wgslsmith_f_op_f32(step(586f, -188f)), _wgslsmith_div_vec4_f32(global1.b, _wgslsmith_f_op_vec4_f32(var_2.a.a - var_2.a.a)), select(func_1(30677i, global1.d.x, Struct_5(var_2.a.b, global2[_wgslsmith_index_u32(5691u, 2u)], Struct_2(global1.e, var_2.a.a, vec2<bool>(var_1, var_1), global1.b.zzy, true)), Struct_5(8625u, global2[_wgslsmith_index_u32(var_2.a.b, 2u)], Struct_2(var_1, global1.b, vec2<bool>(global1.c.x, global1.c.x), vec3<f32>(461f, -358f, -1821f), true))).c, global1.c, vec2<bool>(false, global1.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-343f, var_2.a.c.x, var_2.a.c.x)), func_1(u_input.a, 134f, Struct_5(var_2.a.b, Struct_2(false, vec4<f32>(144f, 271f, 260f, var_0.x), vec2<bool>(global1.c.x, false), var_2.a.c, false), global2[_wgslsmith_index_u32(62261u, 2u)]), Struct_5(var_2.a.b, Struct_2(false, vec4<f32>(global1.d.x, -1306f, var_2.a.a.x, var_0.x), vec2<bool>(true, false), var_2.a.a.wzz, true), Struct_2(global1.a, var_2.a.a, vec2<bool>(false, global1.a), vec3<f32>(var_0.x, var_0.x, 1744f), var_1))).c.x)), Struct_5(~64112u, func_1(u_input.a, 2486f, Struct_5(37823u, func_1(u_input.a, 345f, Struct_5(var_2.a.b, global2[_wgslsmith_index_u32(var_2.a.b, 2u)], Struct_2(global1.c.x, global1.b, vec2<bool>(global1.c.x, true), vec3<f32>(-1000f, global1.b.x, -654f), global1.c.x)), Struct_5(var_2.a.b, global2[_wgslsmith_index_u32(var_2.a.b, 2u)], global2[_wgslsmith_index_u32(var_2.a.b, 2u)])), Struct_2(var_1, global1.b, vec2<bool>(false, global1.e), global1.d, var_1)), Struct_5(var_2.a.b, Struct_2(true, vec4<f32>(var_2.a.a.x, var_2.a.c.x, var_0.x, var_2.a.c.x), global1.c, vec3<f32>(-1166f, 784f, 417f), true), Struct_2(true, vec4<f32>(-423f, -270f, var_0.x, -191f), global1.c, vec3<f32>(var_0.x, var_2.a.c.x, global1.b.x), global1.c.x))), func_1(1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(953f * 2279f) - _wgslsmith_f_op_f32(global1.d.x * var_0.x)), Struct_5(var_2.a.b, global2[_wgslsmith_index_u32(min(var_2.a.b, var_2.a.b), 2u)], Struct_2(false, var_2.a.a, vec2<bool>(false, false), vec3<f32>(global1.d.x, -650f, -135f), global1.e)), Struct_5(~var_2.a.b, func_1(u_input.a, var_0.x, Struct_5(16489u, Struct_2(true, var_2.a.a, global1.c, vec3<f32>(var_2.a.a.x, global1.d.x, var_0.x), var_1), Struct_2(true, var_2.a.a, global1.c, global1.b.xxy, global1.a)), Struct_5(14086u, global2[_wgslsmith_index_u32(var_2.a.b, 2u)], Struct_2(var_1, global1.b, global1.c, var_2.a.a.ywz, true))), Struct_2(false, vec4<f32>(-1671f, 671f, var_2.a.a.x, global1.d.x), global1.c, vec3<f32>(1231f, global1.d.x, global1.b.x), true)))));
    let var_3 = vec2<i32>(abs(~(-18134i)), 0i);
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, select(~vec3<u32>(var_2.a.b, var_2.a.b, 68715u), vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(~vec2<u32>(84416u, 65331u), vec2<u32>(var_2.a.b, 12112u) << (vec2<u32>(var_2.a.b, 0u) % vec2<u32>(32u))), _wgslsmith_clamp_u32(countOneBits(var_2.a.b), var_2.a.b, _wgslsmith_div_u32(0u, var_2.a.b))), select(!vec3<bool>(true, false, global1.e), select(!vec3<bool>(var_1, global1.e, var_1), !vec3<bool>(true, global1.c.x, global1.c.x), select(vec3<bool>(var_1, false, true), vec3<bool>(true, global1.c.x, false), false)), true)), var_0.x, vec3<u32>(~var_2.a.b, _wgslsmith_mod_u32(~var_2.a.b, var_2.a.b), var_2.a.b), ~max(firstLeadingBit(select(vec3<u32>(0u, 35482u, var_2.a.b), vec3<u32>(var_2.a.b, var_2.a.b, 54095u), vec3<bool>(global1.a, global1.c.x, true))), ~vec3<u32>(0u, 82055u, 0u)));
}

