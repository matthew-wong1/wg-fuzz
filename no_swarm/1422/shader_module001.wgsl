struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec4<f32>,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: vec3<bool>;

var<private> global2: array<vec3<bool>, 29> = array<vec3<bool>, 29>(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_2) -> f32 {
    global1 = select(!global2[_wgslsmith_index_u32(reverseBits(0u), 29u)], select(select(select(global2[_wgslsmith_index_u32(17448u, 29u)], global2[_wgslsmith_index_u32(10866u, 29u)], arg_2.c), select(vec3<bool>(global1.x, false, true), !global2[_wgslsmith_index_u32(60379u, 29u)], !vec3<bool>(true, arg_1.b.c, arg_2.c)), all(vec4<bool>(arg_2.c, global1.x, true, true))), !global2[_wgslsmith_index_u32(arg_3.b, 29u)], vec3<bool>(any(select(vec4<bool>(false, true, arg_2.c, global1.x), vec4<bool>(arg_2.c, true, true, arg_1.d.c), arg_2.c)), _wgslsmith_f_op_f32(select(arg_2.b.a.a.x, arg_3.a.c.x, global1.x)) <= arg_3.a.c.x, false && !arg_1.b.c)), false);
    let var_0 = arg_2.a;
    let var_1 = arg_2.a.b;
    let var_2 = var_0.a;
    global0 = arg_2.a.a.b;
    return 245f;
}

fn func_2() -> f32 {
    global0 = u_input.b;
    let var_0 = 28970i;
    let var_1 = ~vec4<i32>(~_wgslsmith_mult_i32(-var_0, -1i), 39359i, -(~_wgslsmith_add_i32(-1i, 0i)), _wgslsmith_add_i32(~(~u_input.a), var_0));
    global2 = array<vec3<bool>, 29>();
    global2 = array<vec3<bool>, 29>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1042f)) - _wgslsmith_f_op_f32(-447f - 869f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(34057u, Struct_4(-622f, Struct_3(Struct_2(Struct_1(vec4<f32>(1000f, -417f, -772f, -1198f), var_1.x, vec3<f32>(1166f, -952f, 1000f)), 42510u), Struct_2(Struct_1(vec4<f32>(-558f, 170f, -1318f, 605f), u_input.a, vec3<f32>(811f, 1220f, 1000f)), 1u), true), vec4<f32>(490f, -941f, 1000f, -1634f), Struct_3(Struct_2(Struct_1(vec4<f32>(-499f, -467f, -1000f, 898f), var_1.x, vec3<f32>(2775f, 165f, 941f)), 4294967295u), Struct_2(Struct_1(vec4<f32>(1000f, -227f, -377f, -1101f), var_0, vec3<f32>(-1022f, -1265f, -170f)), 28738u), global1.x), Struct_1(vec4<f32>(493f, -693f, -397f, 1097f), var_1.x, vec3<f32>(-901f, 369f, 886f))), Struct_3(Struct_2(Struct_1(vec4<f32>(1131f, -725f, 148f, -731f), 14839i, vec3<f32>(-1454f, -1267f, 1174f)), 0u), Struct_2(Struct_1(vec4<f32>(276f, 215f, 862f, -1370f), -1i, vec3<f32>(130f, 502f, -1851f)), 0u), global1.x), Struct_2(Struct_1(vec4<f32>(-854f, -963f, -659f, -1000f), 42542i, vec3<f32>(546f, -1386f, -1323f)), 4294967295u))) * -598f))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -117f), _wgslsmith_f_op_f32(func_2()), 170f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2())))), -2147483647i, vec3<f32>(1f, 1f, 1f));
    let var_1 = var_0.c.xy;
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + 1146f))))), Struct_3(Struct_2(var_0, _wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 9892u, 4294967295u, 0u), vec4<u32>(4294967295u, 0u, 4294967295u, 0u), true), max(vec4<u32>(4294967295u, 24797u, 21274u, 28767u), vec4<u32>(0u, 104329u, 4294967295u, 4833u)))), Struct_2(var_0, 0u), !global1.x), vec4<f32>(_wgslsmith_f_op_f32(-345f - var_1.x), var_0.c.x, var_1.x, _wgslsmith_f_op_f32(trunc(1705f))), Struct_3(Struct_2(var_0, _wgslsmith_div_u32(1u, 8650u)), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, 1004f, 1029f, var_0.a.x) + vec4<f32>(var_0.c.x, var_0.c.x, var_1.x, -229f)), -1i, vec3<f32>(var_0.c.x, var_1.x, var_0.a.x)), _wgslsmith_clamp_u32(0u, 68152u, 4294967295u) | 90682u), global1.x), var_0);
    var var_3 = Struct_4(var_0.a.x, var_2.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, 984f, var_0.c.x, var_2.c.x) * var_0.a))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.e.a * vec4<f32>(var_1.x, -251f, 633f, var_2.a)) - _wgslsmith_f_op_vec4_f32(var_0.a + vec4<f32>(var_1.x, -1054f, -693f, var_2.d.b.a.c.x))))), Struct_3(Struct_2(var_0, 1u), var_2.d.a, 4294967295u <= (var_2.d.a.b >> (4294967295u % 32u))), Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(var_0.a + _wgslsmith_div_vec4_f32(vec4<f32>(-1316f, var_1.x, 462f, 266f), var_2.e.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(176f, var_2.a, var_2.b.a.a.c.x, 883f)))), _wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(var_2.b.b.a.b), var_0.b, select(-2147483647i, 4370i, var_2.b.c)), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(0i, var_2.b.b.a.b, var_2.b.a.a.b), vec3<i32>(16315i, var_0.b, var_0.b)), vec3<i32>(-19096i, 1i, -2147483647i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_0.a.wwy, var_2.d.a.a.c)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1143f, -1227f) + vec3<f32>(-1641f, -1086f, var_2.e.a.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, 1000f, var_1.x)) * var_0.c))));
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x, 867f, _wgslsmith_f_op_f32(trunc(-685f)))), -(~var_3.d.a.a.b), var_3.d.a.a.c), 1u);
    return Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-999f, 1221f, var_2.d.b.a.c.x, -677f)) - var_0.a), _wgslsmith_div_vec4_f32(var_4.a.a, _wgslsmith_f_op_vec4_f32(select(var_0.a, vec4<f32>(var_2.b.a.a.c.x, 1425f, 294f, var_2.b.a.a.a.x), false))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_2.d.a.a.c.x, -2846f)), _wgslsmith_div_f32(var_0.a.x, var_2.e.a.x)), _wgslsmith_f_op_f32(max(1f, 1274f)), -242f, var_2.b.b.a.c.x))), 0i, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x - 669f), var_1.x), _wgslsmith_div_f32(-2202f, var_4.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1485f)))))));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(204f * _wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_f_op_f32(-arg_1.c.x))), Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.c.x, 1000f, -1011f, arg_1.a.x), arg_1.a)), ~u_input.a, _wgslsmith_f_op_vec3_f32(arg_1.a.wyz * arg_1.c)), 0u), Struct_2(func_1(), 27440u), !(!(arg_1.a.x <= 1510f))), vec4<f32>(func_1().a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x - arg_1.a.x))), _wgslsmith_f_op_f32(arg_1.c.x - arg_1.a.x), _wgslsmith_div_f32(1352f, -389f)), Struct_3(Struct_2(Struct_1(arg_1.a, 1i, arg_1.c), 4294967295u), Struct_2(arg_1, ~_wgslsmith_add_u32(29509u, arg_0)), !global1.x), arg_1);
    var var_1 = -121452i;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), arg_1.a.x) - var_0.d.a.a.a.x), var_0.b.b.a.c.x, _wgslsmith_f_op_f32(floor(arg_1.c.x)));
    var var_3 = global2[_wgslsmith_index_u32(~var_0.b.a.b, 29u)];
    let var_4 = 1i;
    return var_0.b.a;
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: u32, arg_3: Struct_4) -> Struct_2 {
    let var_0 = all(vec2<bool>(!((u_input.b == arg_3.e.b) | any(vec4<bool>(false, global1.x, false, arg_3.b.c))), false));
    let var_1 = arg_0;
    var var_2 = func_4(arg_0, Struct_1(vec4<f32>(-2331f, arg_3.e.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1943f - arg_3.d.a.a.a.x))), arg_1.a.c.x), arg_3.d.b.a.b, _wgslsmith_f_op_vec3_f32(floor(arg_1.a.a.wwx))));
    var_2 = arg_3.b.a;
    global1 = global2[_wgslsmith_index_u32(func_4(_wgslsmith_clamp_u32(arg_0, _wgslsmith_mod_u32(~4294967295u, _wgslsmith_mult_u32(var_2.b >> (var_1 % 32u), reverseBits(1u))), abs(1u)), func_4(firstLeadingBit(66237u), var_2.a).a).b, 29u)];
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-arg_3.b.b.a.a), arg_3.b.b.a.b, vec3<f32>(268f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.a.x * var_2.a.c.x) * _wgslsmith_f_op_f32(-arg_1.a.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-863f * arg_1.a.a.x) - _wgslsmith_f_op_f32(floor(2311f))))), abs(~(firstLeadingBit(93826u) & arg_2)));
}

fn func_6(arg_0: Struct_3, arg_1: vec3<u32>) -> Struct_4 {
    global1 = select(vec3<bool>(!global1.x, _wgslsmith_f_op_f32(sign(arg_0.a.a.c.x)) < -170f, global1.x), !select(global2[_wgslsmith_index_u32(~(~1u), 29u)], select(global2[_wgslsmith_index_u32(abs(arg_1.x), 29u)], global2[_wgslsmith_index_u32(arg_1.x, 29u)], select(vec3<bool>(true, true, false), vec3<bool>(global1.x, global1.x, arg_0.c), true)), !any(vec4<bool>(arg_0.c, global1.x, false, false))), !vec3<bool>(true, arg_0.c, true));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1449f, arg_0.b.a.a.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.a.a.x) * 589f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1000f, 702f)), 723f)), _wgslsmith_f_op_f32(step(1133f, _wgslsmith_f_op_f32(round(arg_0.b.a.a.x)))))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1018f, _wgslsmith_div_f32(182f, arg_0.b.a.a.x))))));
    var var_2 = var_1;
    let var_3 = abs(u_input.a & -arg_0.b.a.b);
    return Struct_4(-1478f, arg_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(-478f, _wgslsmith_f_op_f32(f32(-1f) * -656f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(828f - 498f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-631f - var_1.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.a.c.x, arg_0.b.a.a.x, 654f, arg_0.b.a.a.x))))), arg_0, func_4(arg_0.a.b, Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-806f, arg_0.b.a.c.x, var_2.x, 1000f))), var_3, _wgslsmith_f_op_vec3_f32(-arg_0.b.a.a.zwx))).a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a;
    let var_0 = func_6(Struct_3(func_5(1u, func_4(~53772u, func_1()), _wgslsmith_clamp_u32(~51321u, reverseBits(4294967295u), ~97203u), Struct_4(_wgslsmith_f_op_f32(min(-1000f, 947f)), Struct_3(Struct_2(Struct_1(vec4<f32>(-136f, -839f, 264f, 134f), u_input.b, vec3<f32>(-115f, 1000f, -175f)), 28333u), Struct_2(Struct_1(vec4<f32>(296f, -1951f, 436f, -478f), u_input.b, vec3<f32>(-134f, 531f, 279f)), 4294967295u), true), func_1().a, Struct_3(Struct_2(Struct_1(vec4<f32>(-183f, -1733f, 150f, -1058f), 0i, vec3<f32>(1033f, 916f, -1626f)), 0u), Struct_2(Struct_1(vec4<f32>(252f, 569f, 1150f, -1080f), u_input.a, vec3<f32>(-1543f, -890f, -1455f)), 1u), global1.x), func_1())), func_4(1u, func_4(1u, func_4(3605u, Struct_1(vec4<f32>(-719f, 687f, 1000f, -197f), 2147483647i, vec3<f32>(-144f, 1000f, -548f))).a).a), false), ~(~(~vec3<u32>(1u, 1u, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_div_u32(abs(~51263u), _wgslsmith_div_u32(18340u ^ var_0.d.a.b, func_4(var_0.b.b.b, var_0.d.a.a).b)), _wgslsmith_div_u32(_wgslsmith_div_u32(countOneBits(var_0.d.a.b), _wgslsmith_add_u32(var_0.d.a.b, 0u)), 15386u)), -1142f, 2147483647i, _wgslsmith_sub_i32(i32(-1i) * -(-69189i ^ u_input.a), i32(-1i) * -30227i), var_0.b.a.a.c);
}

