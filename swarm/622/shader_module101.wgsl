struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(406f, 25500u, vec3<bool>(false, true, true));

var<private> global1: Struct_4 = Struct_4(31479u);

var<private> global2: vec2<u32> = vec2<u32>(9181u, 99008u);

var<private> global3: i32;

var<private> global4: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(Struct_1(1000f, 15078u, vec3<bool>(true, false, false)), Struct_1(-553f, 4294967295u, vec3<bool>(false, false, true)), Struct_1(823f, 1u, vec3<bool>(false, false, true)), vec3<f32>(2418f, -749f, 1036f)), Struct_2(Struct_1(-452f, 76849u, vec3<bool>(true, false, true)), Struct_1(-1368f, 24892u, vec3<bool>(false, true, true)), Struct_1(986f, 1u, vec3<bool>(true, false, false)), vec3<f32>(350f, 711f, -385f)), Struct_2(Struct_1(141f, 1u, vec3<bool>(false, true, true)), Struct_1(1482f, 4294967295u, vec3<bool>(true, false, false)), Struct_1(-824f, 31868u, vec3<bool>(true, false, false)), vec3<f32>(-346f, -1000f, 2157f)), Struct_2(Struct_1(769f, 0u, vec3<bool>(false, false, true)), Struct_1(-917f, 11266u, vec3<bool>(false, true, true)), Struct_1(286f, 12674u, vec3<bool>(true, true, false)), vec3<f32>(-1699f, 977f, 1009f)), Struct_2(Struct_1(1383f, 24132u, vec3<bool>(true, true, false)), Struct_1(403f, 44058u, vec3<bool>(false, true, false)), Struct_1(-1020f, 1u, vec3<bool>(true, true, false)), vec3<f32>(592f, -231f, 2402f)), Struct_2(Struct_1(-1000f, 0u, vec3<bool>(false, true, false)), Struct_1(-1208f, 47912u, vec3<bool>(true, true, true)), Struct_1(-2301f, 59329u, vec3<bool>(false, false, false)), vec3<f32>(1777f, -912f, 718f)), Struct_2(Struct_1(-609f, 60743u, vec3<bool>(true, false, false)), Struct_1(1081f, 4294967295u, vec3<bool>(true, true, false)), Struct_1(-1000f, 32954u, vec3<bool>(true, false, true)), vec3<f32>(350f, 252f, 128f)), Struct_2(Struct_1(830f, 1u, vec3<bool>(true, true, false)), Struct_1(755f, 19885u, vec3<bool>(true, true, false)), Struct_1(106f, 29695u, vec3<bool>(true, false, false)), vec3<f32>(-987f, 358f, 177f)), Struct_2(Struct_1(-1721f, 14894u, vec3<bool>(true, true, false)), Struct_1(696f, 42858u, vec3<bool>(false, false, false)), Struct_1(-1648f, 1u, vec3<bool>(true, false, false)), vec3<f32>(-852f, -381f, 1067f)), Struct_2(Struct_1(403f, 26883u, vec3<bool>(true, true, true)), Struct_1(484f, 84369u, vec3<bool>(false, false, false)), Struct_1(-952f, 4294967295u, vec3<bool>(true, false, true)), vec3<f32>(-1208f, 911f, -1897f)), Struct_2(Struct_1(407f, 9329u, vec3<bool>(true, false, true)), Struct_1(104f, 0u, vec3<bool>(true, false, true)), Struct_1(-131f, 25563u, vec3<bool>(false, true, false)), vec3<f32>(866f, -588f, -136f)), Struct_2(Struct_1(2160f, 1u, vec3<bool>(true, true, false)), Struct_1(369f, 0u, vec3<bool>(true, false, true)), Struct_1(725f, 0u, vec3<bool>(false, true, false)), vec3<f32>(-884f, -676f, 1538f)), Struct_2(Struct_1(972f, 26431u, vec3<bool>(true, false, true)), Struct_1(-1000f, 1u, vec3<bool>(true, false, true)), Struct_1(-330f, 38437u, vec3<bool>(true, false, false)), vec3<f32>(445f, -544f, 687f)), Struct_2(Struct_1(-179f, 22859u, vec3<bool>(true, true, false)), Struct_1(-1466f, 1u, vec3<bool>(true, false, true)), Struct_1(-868f, 34950u, vec3<bool>(true, true, true)), vec3<f32>(-527f, -1000f, 262f)), Struct_2(Struct_1(-128f, 4294967295u, vec3<bool>(true, true, true)), Struct_1(-2655f, 10896u, vec3<bool>(true, true, true)), Struct_1(-831f, 4294967295u, vec3<bool>(false, false, true)), vec3<f32>(485f, 2104f, -308f)), Struct_2(Struct_1(-1423f, 0u, vec3<bool>(false, false, true)), Struct_1(-751f, 6623u, vec3<bool>(false, true, false)), Struct_1(172f, 0u, vec3<bool>(true, true, false)), vec3<f32>(1572f, -1215f, -1126f)), Struct_2(Struct_1(-465f, 0u, vec3<bool>(true, false, false)), Struct_1(-562f, 95673u, vec3<bool>(true, false, false)), Struct_1(1000f, 1u, vec3<bool>(false, false, true)), vec3<f32>(1000f, 331f, -359f)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_5 {
    var var_0 = Struct_5(!vec4<bool>(true, true, u_input.d != ~u_input.d, any(select(vec4<bool>(true, false, true, global0.c.x), vec4<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x, false), arg_1.c.x))));
    global3 = -8395i;
    global2 = u_input.b;
    let var_1 = _wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(trunc(-2051f)));
    var var_2 = global0.b;
    return Struct_5(vec4<bool>(all(var_0.a), true, any(vec4<bool>(true, true, !var_0.a.x, true)), false));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: vec3<i32>) -> Struct_5 {
    var var_0 = 56005u;
    var var_1 = func_2(554f, Struct_1(124f, ~arg_0, !vec3<bool>(global2.x < 1u, global1.a < arg_1.c.b, global0.a >= global0.a)));
    let var_2 = 16655u;
    let var_3 = ~u_input.a;
    global4 = array<Struct_2, 17>();
    return func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.a * arg_1.b.a))), _wgslsmith_f_op_f32(-arg_1.d.x), false && (7473u > abs(global2.x)))), Struct_1(global0.a, u_input.a.x | ~_wgslsmith_div_u32(global0.b, var_3.x), !select(!vec3<bool>(global0.c.x, false, true), select(var_1.a.yzw, arg_1.c.c, var_1.a.x), !vec3<bool>(false, global0.c.x, arg_1.a.c.x))));
}

fn func_3(arg_0: Struct_5, arg_1: u32) -> Struct_3 {
    let var_0 = vec2<i32>(max(u_input.d, countOneBits(-1i)), 5995i);
    let var_1 = Struct_5(arg_0.a);
    var var_2 = vec4<i32>(max(select(0i, 70934i, global0.c.x), 6697i), var_0.x, select(u_input.d, -1i, false), var_0.x) & abs(-(~(vec4<i32>(2147483647i, 1i, 17505i, u_input.d) & vec4<i32>(-2147483647i, 1i, var_0.x, -27013i))));
    global3 = var_2.x;
    let var_3 = func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1560f + 217f)))), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + global0.a) * 469f), _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(542f * 574f)))), arg_1, !global0.c));
    return Struct_3(Struct_1(1321f, 0u, select(var_3.a.zxy, func_2(1751f, Struct_1(434f, global0.b, vec3<bool>(true, false, true))).a.xww, _wgslsmith_f_op_f32(global0.a - global0.a) >= 1017f)));
}

fn func_4(arg_0: Struct_3) -> f32 {
    global0 = Struct_1(func_3(func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-831f, arg_0.a.a)), Struct_1(global0.a, _wgslsmith_clamp_u32(52401u, 11522u, 1u), vec3<bool>(global0.c.x, true, arg_0.a.c.x))), ~4294967295u).a.a, abs(52269u), arg_0.a.c);
    var var_0 = 130f;
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(180f * arg_0.a.a) * _wgslsmith_f_op_f32(-arg_0.a.a)) + func_3(func_2(-424f, arg_0.a), countOneBits(45492u)).a.a))));
    var var_1 = any(!vec4<bool>((false && global0.c.x) && func_3(Struct_5(vec4<bool>(arg_0.a.c.x, arg_0.a.c.x, false, false)), arg_0.a.b).a.c.x, true | arg_0.a.c.x, (arg_0.a.c.x | arg_0.a.c.x) && global0.c.x, false));
    var var_2 = !vec4<bool>(true, arg_0.a.c.x, global0.c.x, func_1(global0.b, global4[_wgslsmith_index_u32(~global1.a, 17u)], vec3<i32>(u_input.d, 2147483647i, 7595i) & vec3<i32>(-1i, u_input.d, u_input.d)).a.x | any(vec4<bool>(true, true, false, true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(784f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.a + global0.a))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -407f), -1399f))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_3(func_1(global2.x, global4[_wgslsmith_index_u32(1u, 17u)], vec3<i32>(1i, -1i, 1i)), ~global0.b)))), global0.b, vec3<bool>(global0.c.x, false, false));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-172f, var_1.a), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1132f, 1278f), vec2<f32>(var_0.x, 1262f))))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(1256f)), -347f) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, global0.a)))))));
    let var_2 = func_3(func_2(-238f, Struct_1(-246f, abs(1u), !select(vec3<bool>(global0.c.x, false, true), global0.c, true))), 98575u).a;
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.a)) - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(309f + global0.a), -853f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_0.x, -180f))))), 1449f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_5(vec4<bool>(false, var_1.c.x, global0.c.x, true)), var_1.b).a.a + -1222f) + 1000f)));
    var var_4 = Struct_3(func_3(Struct_5(vec4<bool>(true, true, true, true)), 48139u).a);
    let var_5 = Struct_5(!(!func_1(~9059u, global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2.x, global2.x), 17u)], _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, u_input.d, 8068i), vec3<i32>(-10857i, u_input.d, 0i))).a));
    var var_6 = _wgslsmith_f_op_f32(func_4(func_3(Struct_5(!select(vec4<bool>(true, true, true, global0.c.x), var_5.a, var_1.c.x)), 85733u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(func_3(var_5, 12339u).a.a, -415f), vec3<u32>(15714u, abs(abs(1u)), var_2.b));
}

