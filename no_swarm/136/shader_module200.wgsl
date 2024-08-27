struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: f32;

var<private> global2: array<vec3<u32>, 22> = array<vec3<u32>, 22>(vec3<u32>(105312u, 67683u, 0u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(65546u, 8200u, 44591u), vec3<u32>(52564u, 0u, 1u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(1u, 54557u, 4294967295u), vec3<u32>(1u, 62092u, 4294967295u), vec3<u32>(48673u, 21307u, 21827u), vec3<u32>(69285u, 4294967295u, 0u), vec3<u32>(4294967295u, 96449u, 1u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(21008u, 1u, 48577u), vec3<u32>(4294967295u, 4294967295u, 3987u), vec3<u32>(54055u, 0u, 64103u), vec3<u32>(1u, 27811u, 19501u), vec3<u32>(4294967295u, 27717u, 0u), vec3<u32>(9529u, 0u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 54018u, 14894u), vec3<u32>(0u, 74434u, 10024u), vec3<u32>(4294967295u, 21363u, 41575u), vec3<u32>(15068u, 50426u, 4294967295u));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2879f)));
    var var_0 = vec4<bool>(true, true, true, any(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true))));
    let var_1 = Struct_2(Struct_1(1f != _wgslsmith_div_f32(-1952f, _wgslsmith_f_op_f32(select(1431f, -255f, var_0.x)))), vec4<u32>(u_input.b, u_input.c.x, 1u & abs(u_input.b >> (u_input.c.x % 32u)), reverseBits(u_input.c.x)), Struct_1(!var_0.x || var_0.x), -509f, select(select(!select(vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x)), select(vec4<bool>(true, true, true, var_0.x), vec4<bool>(true, var_0.x, false, var_0.x), !vec4<bool>(var_0.x, var_0.x, true, var_0.x)), !all(var_0.xxz)), vec4<bool>(false, var_0.x, true, (u_input.c.x >= 20009u) | true), select(select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), select(select(vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(var_0.x, false, true, true), vec4<bool>(true, var_0.x, var_0.x, false)), !vec4<bool>(var_0.x, false, false, false), vec4<bool>(var_0.x, var_0.x, false, var_0.x)), vec4<bool>(u_input.d != u_input.d, true, var_0.x, any(vec3<bool>(var_0.x, false, true))))));
    global0 = _wgslsmith_add_u32(~var_1.b.x, 1u);
    var var_2 = var_1;
    return select(var_2.e, select(!(!vec4<bool>(true, true, true, var_1.c.a)), !(!(!vec4<bool>(var_2.e.x, var_0.x, true, var_0.x))), var_0.x), vec4<bool>(!var_1.e.x, var_1.e.x, true, _wgslsmith_f_op_f32(round(var_2.d)) >= var_2.d));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-177f)), -196f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1575f, 447f) + vec2<f32>(778f, -407f)) - vec2<f32>(560f, -1249f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1105f * 723f), -713f)), 1292f)));
    var var_1 = Struct_1(all(select(func_3(), vec4<bool>(true, true, true, true), true)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(step(var_0.x, -233f)))), _wgslsmith_f_op_f32(round(-515f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(2332f, var_0.x))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(234f, var_0.x, var_0.x, -236f)))), !vec4<bool>(true != var_1.a, var_1.a, any(vec4<bool>(var_1.a, false, false, false)), true))));
    let var_3 = Struct_1(var_1.a);
    var var_4 = _wgslsmith_f_op_f32(abs(-285f));
    return var_3;
}

fn func_4(arg_0: Struct_1) -> f32 {
    global2 = array<vec3<u32>, 22>();
    return _wgslsmith_f_op_f32(exp2(1f));
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(-1612f + _wgslsmith_f_op_f32(func_4(func_2())));
    var var_0 = vec4<i32>(u_input.e, 1i, i32(-1i) * -1i, ~_wgslsmith_sub_i32(u_input.e, -18575i));
    let var_1 = -2147483647i;
    return func_2();
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    global2 = array<vec3<u32>, 22>();
    var var_0 = arg_3.b.zy << ((~((arg_0.b.zz << (u_input.c.xz % vec2<u32>(32u))) ^ max(arg_0.b.ww, vec2<u32>(u_input.b, arg_0.b.x))) | ~vec2<u32>(~1u, firstTrailingBit(0u))) % vec2<u32>(32u));
    global1 = 619f;
    let var_1 = u_input.e == u_input.d;
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.d, arg_0.d, arg_3.d) + vec3<f32>(-812f, arg_0.d, 882f)))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-395f, arg_3.d, arg_3.d)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-404f, arg_3.d, -749f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-216f, 641f, 1855f), vec3<f32>(-410f, -653f, 1145f))))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d, 1607f)))), _wgslsmith_div_f32(462f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_3.d, 1200f)))), arg_0.d)));
    return Struct_1(var_1);
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1801f, -253f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-670f, 595f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1077f, -431f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-348f, -158f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(577f, 1394f) - vec2<f32>(-691f, -166f))))))));
    global0 = ~(~_wgslsmith_div_u32(_wgslsmith_clamp_u32(22714u, 1u, 88717u), abs(4294967295u))) & 1u;
    global2 = array<vec3<u32>, 22>();
    let var_1 = ~_wgslsmith_sub_vec4_i32(-vec4<i32>(-27009i, u_input.d, u_input.a.x, -2147483647i), ~(~vec4<i32>(u_input.e, -14370i, -2147483647i, -24811i))) >> (select(vec4<u32>(max(~u_input.b, 12693u), firstTrailingBit(0u), 4294967295u, 1u), vec4<u32>(u_input.c.x, countOneBits(97650u), u_input.b, ~6603u), all(!(!vec3<bool>(arg_0.x, false, true)))) % vec4<u32>(32u));
    let var_2 = Struct_1(arg_0.x);
    return _wgslsmith_f_op_f32(f32(-1f) * -647f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(min(-339f, -1221f));
    var var_0 = vec4<f32>(-225f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-435f)) + -785f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1309f, -1384f), _wgslsmith_f_op_f32(max(-404f, -1206f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1206f) - _wgslsmith_f_op_f32(min(185f, _wgslsmith_f_op_f32(226f - -668f))))), _wgslsmith_f_op_f32(func_6(vec2<bool>(true, all(vec2<bool>(true, false))), func_5(Struct_2(func_1(vec3<bool>(false, false, true)), vec4<u32>(44116u, u_input.c.x, u_input.b, u_input.c.x), func_2(), 367f, select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true))), Struct_1(select(false, true, false)), u_input.c.x, Struct_2(func_1(vec3<bool>(false, false, true)), ~vec4<u32>(u_input.c.x, u_input.c.x, u_input.b, 38035u), Struct_1(false), 503f, func_3())), abs(19600u) <= u_input.c.x)));
    global1 = var_0.x;
    var var_1 = func_5(Struct_2(func_2(), reverseBits(min(vec4<u32>(u_input.b, 839u, 6962u, 44703u), _wgslsmith_div_vec4_u32(vec4<u32>(52049u, 4294967295u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.b, 0u, u_input.c.x, 4294967295u)))), func_1(!func_3().zyw), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_0.x)))), vec4<bool>(true, true, true, true)), Struct_1(!func_5(Struct_2(Struct_1(false), vec4<u32>(27361u, u_input.c.x, u_input.b, 19332u), Struct_1(false), 721f, vec4<bool>(true, true, true, true)), func_1(vec3<bool>(true, true, false)), ~u_input.c.x, Struct_2(Struct_1(true), vec4<u32>(1u, 31835u, 0u, 1u), Struct_1(false), var_0.x, vec4<bool>(false, false, false, true))).a), u_input.c.x, Struct_2(Struct_1(func_5(Struct_2(Struct_1(false), vec4<u32>(u_input.c.x, 17696u, u_input.b, 31259u), Struct_1(true), var_0.x, vec4<bool>(false, true, false, false)), func_2(), u_input.c.x, Struct_2(Struct_1(false), vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x), Struct_1(true), 488f, vec4<bool>(true, true, false, false))).a), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(u_input.c.x, 2665u, 1u, u_input.c.x)), ~vec4<u32>(4294967295u, 3526u, u_input.c.x, 4294967295u)), vec4<u32>(0u, u_input.c.x, 33049u & u_input.b, u_input.b), ~(~vec4<u32>(u_input.c.x, 9971u, 1u, u_input.c.x))), Struct_1(var_0.x > _wgslsmith_f_op_f32(f32(-1f) * -1086f)), _wgslsmith_f_op_f32(-535f + _wgslsmith_f_op_f32(func_4(Struct_1(true)))), func_3()));
    var_1 = Struct_1(!var_1.a);
    let var_2 = vec3<u32>(~44992u, u_input.c.x, ~u_input.b) & ~vec3<u32>(~(~u_input.c.x), u_input.c.x, _wgslsmith_mult_u32(~4294967295u, 1u));
    var var_3 = func_1(!select(select(!vec3<bool>(var_1.a, var_1.a, var_1.a), select(vec3<bool>(true, var_1.a, false), vec3<bool>(true, var_1.a, false), vec3<bool>(var_1.a, true, var_1.a)), !var_1.a), !vec3<bool>(var_1.a, true, true), any(select(vec3<bool>(true, false, var_1.a), vec3<bool>(false, false, var_1.a), vec3<bool>(true, var_1.a, false)))));
    var var_4 = select(!select(select(select(vec3<bool>(var_1.a, var_1.a, true), vec3<bool>(true, var_3.a, var_3.a), vec3<bool>(var_3.a, var_1.a, var_1.a)), !vec3<bool>(false, var_1.a, true), vec3<bool>(var_1.a, var_1.a, var_1.a)), !vec3<bool>(var_3.a, false, var_3.a), true), vec3<bool>(var_3.a && ((0i > u_input.a.x) & var_1.a), true, false), vec3<bool>(all(!vec2<bool>(var_1.a, true)), all(func_3().yyz), func_5(Struct_2(Struct_1(true), vec4<u32>(u_input.c.x, u_input.c.x, u_input.b, u_input.b), Struct_1(true), var_0.x, vec4<bool>(false, false, var_3.a, false)), func_2(), ~u_input.c.x, Struct_2(Struct_1(true), vec4<u32>(u_input.c.x, var_2.x, u_input.b, u_input.b), Struct_1(false), -109f, vec4<bool>(false, true, true, true))).a | !(var_0.x < var_0.x)));
    var_3 = func_1(!select(!vec3<bool>(var_4.x, var_3.a, true), vec3<bool>(true, u_input.b != u_input.c.x, select(var_3.a, false, var_1.a)), select(vec3<bool>(var_4.x, var_1.a, false), select(vec3<bool>(false, var_1.a, true), vec3<bool>(true, var_4.x, var_3.a), vec3<bool>(true, true, var_1.a)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(-20973i)), _wgslsmith_dot_vec4_i32(vec4<i32>(~(-u_input.e), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.e, -28929i, -16054i, -25326i), vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x) & vec4<i32>(u_input.a.x, u_input.d, -30704i, -8445i)), select(1i, min(u_input.d, u_input.e), all(vec2<bool>(var_4.x, true))), reverseBits(u_input.d)), _wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(u_input.e, -1i, 26094i, 1i)), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a.xx, vec2<i32>(1i, u_input.e)), _wgslsmith_add_i32(u_input.d, -1i), u_input.d | -1i, u_input.a.x), max(vec4<i32>(2147483647i, u_input.d, -4620i, 10168i), vec4<i32>(u_input.e, u_input.e, 11751i, u_input.d)) ^ vec4<i32>(u_input.e, -69926i, u_input.e, u_input.d))), var_0.x, u_input.e, u_input.e);
}

