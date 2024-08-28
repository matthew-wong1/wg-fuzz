struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(23061u, 636f, Struct_1(4294967295u, 714f, vec4<u32>(1u, 1u, 4294967295u, 9906u), true), 389f, false), Struct_2(27051u, -2166f, Struct_1(42025u, 1700f, vec4<u32>(0u, 5206u, 45660u, 4294967295u), false), -307f, false), Struct_2(15540u, -145f, Struct_1(1u, 404f, vec4<u32>(4294967295u, 55953u, 0u, 205u), true), -320f, true), Struct_2(14448u, 813f, Struct_1(4294967295u, 600f, vec4<u32>(4294967295u, 6666u, 36425u, 1u), true), -906f, false), Struct_2(1u, 772f, Struct_1(38400u, 1327f, vec4<u32>(18634u, 7682u, 59733u, 4855u), false), 1187f, false), Struct_2(4294967295u, 723f, Struct_1(10526u, 1007f, vec4<u32>(1u, 0u, 4294967295u, 9771u), false), 1906f, true), Struct_2(4294967295u, 495f, Struct_1(0u, -157f, vec4<u32>(4294967295u, 3848u, 4294967295u, 1u), false), 766f, true), Struct_2(30842u, -156f, Struct_1(1u, -479f, vec4<u32>(1u, 4294967295u, 4781u, 13712u), false), -646f, false), Struct_2(78284u, -831f, Struct_1(0u, 1095f, vec4<u32>(28224u, 13755u, 4294967295u, 65377u), false), 315f, false), Struct_2(13954u, -549f, Struct_1(13776u, 1130f, vec4<u32>(1u, 1u, 0u, 1u), false), -467f, false), Struct_2(1u, -217f, Struct_1(1u, 898f, vec4<u32>(75068u, 0u, 1u, 95280u), false), 723f, true), Struct_2(4294967295u, -324f, Struct_1(32898u, 1000f, vec4<u32>(24292u, 42736u, 0u, 11527u), true), -1600f, false), Struct_2(0u, 1617f, Struct_1(1u, -926f, vec4<u32>(21132u, 1u, 0u, 27312u), true), 1338f, true), Struct_2(16703u, -739f, Struct_1(62917u, 304f, vec4<u32>(1u, 63511u, 4294967295u, 4294967295u), true), 450f, false), Struct_2(4294967295u, 241f, Struct_1(80084u, 376f, vec4<u32>(4294967295u, 4294967295u, 22323u, 1u), true), 710f, true), Struct_2(7534u, -2455f, Struct_1(1u, 136f, vec4<u32>(4294967295u, 4294967295u, 0u, 0u), true), 873f, false), Struct_2(12732u, -1000f, Struct_1(4294967295u, 1625f, vec4<u32>(79042u, 171u, 1u, 0u), false), -884f, false), Struct_2(26142u, -911f, Struct_1(10042u, -475f, vec4<u32>(4294967295u, 34396u, 58888u, 0u), false), -1297f, true), Struct_2(0u, -391f, Struct_1(0u, 393f, vec4<u32>(90152u, 41401u, 4294967295u, 22600u), true), 632f, true), Struct_2(0u, 1718f, Struct_1(0u, -330f, vec4<u32>(30014u, 0u, 4294967295u, 1u), true), -498f, true), Struct_2(1u, -2363f, Struct_1(49253u, -483f, vec4<u32>(0u, 25973u, 4294967295u, 4294967295u), false), 441f, true), Struct_2(0u, -1665f, Struct_1(50338u, 1335f, vec4<u32>(4294967295u, 0u, 22496u, 48830u), false), -190f, true), Struct_2(0u, 731f, Struct_1(1u, 1697f, vec4<u32>(33829u, 0u, 29486u, 95214u), false), -419f, true), Struct_2(10195u, -291f, Struct_1(1u, 159f, vec4<u32>(21154u, 12654u, 24080u, 5314u), false), 735f, false), Struct_2(0u, 1000f, Struct_1(1u, -561f, vec4<u32>(23651u, 0u, 36741u, 53530u), false), 319f, false), Struct_2(25667u, 1251f, Struct_1(9995u, 1977f, vec4<u32>(28214u, 0u, 40233u, 71581u), false), 418f, true), Struct_2(22385u, -511f, Struct_1(1u, 824f, vec4<u32>(0u, 8879u, 4294967295u, 1u), true), 368f, false), Struct_2(70127u, 439f, Struct_1(4294967295u, 956f, vec4<u32>(4294967295u, 0u, 4294967295u, 28811u), false), 539f, false), Struct_2(0u, 1116f, Struct_1(16885u, 1778f, vec4<u32>(62185u, 2337u, 4294967295u, 1u), false), -1355f, true));

var<private> global2: vec3<f32> = vec3<f32>(-1000f, -556f, -1526f);

var<private> global3: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(0u, 11138u, 5440u), vec3<u32>(0u, 0u, 40899u), vec3<u32>(3079u, 0u, 31296u), vec3<u32>(1u, 53294u, 1u), vec3<u32>(29247u, 22037u, 4294967295u));

var<private> global4: vec4<u32>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2) -> f32 {
    global1 = array<Struct_2, 29>();
    let var_0 = global0.c;
    global3 = array<vec3<u32>, 5>();
    global4 = var_0.c & global0.c.c;
    let var_1 = -1i;
    return -881f;
}

fn func_3(arg_0: u32) -> vec2<bool> {
    global4 = global0.c.c;
    let var_0 = 2528f;
    global1 = array<Struct_2, 29>();
    let var_1 = -926f;
    global1 = array<Struct_2, 29>();
    return select(vec2<bool>(!(all(vec2<bool>(global0.c.d, true)) && global0.e), false), select(!vec2<bool>(global0.c.d, true), !vec2<bool>(global0.c.d, true), all(select(vec4<bool>(false, false, true, global0.e), vec4<bool>(false, global0.e, global0.c.d, global0.c.d), global0.e)) == global0.c.d), vec2<bool>(global0.c.d, false));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: vec2<bool>) -> Struct_1 {
    global4 = global0.c.c;
    var var_0 = vec3<bool>(arg_0, !arg_3.x, arg_1.x && true);
    global4 = vec4<u32>(global0.c.c.x, 4294967295u, min(_wgslsmith_mod_u32(0u, global4.x), select(global0.a, ~79384u, !arg_1.x)), max(36240u, ~global4.x)) >> (~countOneBits(vec4<u32>(_wgslsmith_dot_vec2_u32(global4.wz, global0.c.c.xz), abs(global0.c.c.x), ~18577u, 4294967295u)) % vec4<u32>(32u));
    var var_1 = -14428i;
    let var_2 = vec3<u32>(~(_wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, 28321u), _wgslsmith_mod_u32(1u, global0.c.c.x)) << (~firstLeadingBit(global4.x) % 32u)), max(global0.a, 83434u), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, ~(global0.a >> (15054u % 32u)), ~global0.c.a, 46006u), global0.c.c));
    return global0.c;
}

fn func_1() -> f32 {
    var var_0 = func_4(false, !select(vec4<bool>(u_input.a.x != u_input.a.x, global0.c.d, true, global4.x >= global4.x), vec4<bool>(false, !global0.c.d, true, global0.c.d & true), vec4<bool>(select(false, false, global0.e), any(vec3<bool>(false, false, false)), true, global0.e)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(2386f)), global0.c.b, 961f)) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.d, 620f)) - -1545f), _wgslsmith_f_op_f32(func_2(select(vec4<bool>(global0.c.d, global0.c.d, global0.e, true), vec4<bool>(global0.c.d, global0.e, false, global0.e), vec4<bool>(true, global0.c.d, false, true)), Struct_2(48586u, 1125f, global0.c, global2.x, global0.c.d))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(abs(global2.x))))), !(!select(func_3(global4.x), select(vec2<bool>(false, true), vec2<bool>(global0.e, false), false), vec2<bool>(true, true))));
    global2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-661f - _wgslsmith_f_op_f32(ceil(global0.d)))), -492f, 348f);
    var_0 = func_4(false, vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + var_0.b)) < 651f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global0.b, var_0.b), _wgslsmith_f_op_f32(-global2.x))) > global2.x, true, false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-711f, _wgslsmith_f_op_f32(857f * 666f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-2029f, -2364f), _wgslsmith_f_op_f32(var_0.b * global0.d))))), !(!select(vec2<bool>(false, true), !vec2<bool>(global0.c.d, global0.e), !vec2<bool>(global0.c.d, global0.c.d))));
    let var_1 = global0.c;
    let var_2 = u_input.a.x;
    return -1553f;
}

fn func_5(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = vec3<u32>(_wgslsmith_mult_u32(global0.a, ~(func_4(false, vec4<bool>(arg_2.e, true, true, global0.c.d), vec3<f32>(arg_2.c.b, 1085f, -1277f), vec2<bool>(global0.e, false)).a | ~arg_0)), ~(~(~1u)), global0.c.a);
    let var_1 = vec3<i32>(_wgslsmith_dot_vec2_i32((vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, -28831i)) << (_wgslsmith_div_vec2_u32(~vec2<u32>(50420u, 20184u), arg_2.c.c.yw >> (vec2<u32>(arg_1.x, arg_0) % vec2<u32>(32u))) % vec2<u32>(32u)), ~(-vec2<i32>(u_input.a.x, -23361i))), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, ~2147483647i), ~u_input.a.yx), -u_input.a.x);
    global4 = _wgslsmith_add_vec4_u32(~firstTrailingBit(~(~vec4<u32>(1u, 4294967295u, arg_2.c.c.x, 34038u))), arg_2.c.c);
    let var_2 = u_input.a;
    var var_3 = global0.c.c.x > arg_1.x;
    return Struct_2(global4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-529f, -451f)), arg_2.b))), Struct_1(func_4(arg_2.c.d & true, !vec4<bool>(global0.c.d, arg_2.e, arg_2.e, false), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.x, -247f, arg_2.d))), select(vec2<bool>(global0.c.d, false), vec2<bool>(arg_2.c.d, arg_2.c.d), arg_2.e)).a >> (arg_1.x % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1724f)), global0.c.c, !(arg_2.a == ~84348u)), global0.d, global2.x < _wgslsmith_f_op_f32(abs(-1312f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(select(~global4.x, _wgslsmith_dot_vec4_u32(vec4<u32>(13735u, global0.a, 43441u, global4.x), global0.c.c & vec4<u32>(1u, global0.c.a, 0u, 0u)), global0.c.d) ^ ~0u, _wgslsmith_add_vec2_u32(vec2<u32>(global4.x, 1u), vec2<u32>(~_wgslsmith_dot_vec4_u32(global0.c.c, global0.c.c), ~global0.a)), Struct_2(21145u, _wgslsmith_f_op_f32(func_1()), global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.c.b - global2.x))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1180f))))), global0.c.d));
    let var_0 = vec4<i32>(u_input.a.x, min(-_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.a.yy, u_input.a.zx), 0i ^ u_input.a.x), i32(-1i) * -10998i), _wgslsmith_add_i32(~(~u_input.a.x), 0i), 1i);
    global2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(-global2.x)), 1600f, _wgslsmith_f_op_f32(-1461f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2428f, 1897f)))));
    let var_1 = vec4<u32>(7896u, abs(global4.x), ~_wgslsmith_div_u32(~25339u, global4.x), max(global4.x, 4294967295u));
    global4 = vec4<u32>(global4.x, _wgslsmith_dot_vec2_u32(~global0.c.c.wx << (~vec2<u32>(118469u, 3203u) % vec2<u32>(32u)), func_4(true, select(vec4<bool>(global0.c.d, false, false, true), select(vec4<bool>(true, global0.c.d, global0.e, true), vec4<bool>(true, true, true, global0.c.d), vec4<bool>(global0.e, global0.e, true, global0.e)), global0.e), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(250f, global0.c.b, global0.b), vec3<f32>(global0.b, -1096f, 623f))), vec3<f32>(-1461f, global2.x, -1340f), vec3<bool>(true, true, true))), func_3(_wgslsmith_mult_u32(var_1.x, global0.c.c.x))).c.yx), 1u, ~_wgslsmith_div_u32(_wgslsmith_sub_u32(1u, global4.x), _wgslsmith_mult_u32(4332u, 0u)) >> (global0.a % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_div_f32(global2.x, -1000f), _wgslsmith_f_op_f32(-global0.c.b)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1894f, global2.x, 1387f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d, global0.d, 445f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1027f, 714f, -1000f))), vec3<f32>(global0.d, -346f, global0.b)))), select(select(!vec3<bool>(global0.c.d, false, true), vec3<bool>(global0.e, false, global0.e), select(vec3<bool>(true, global0.c.d, true), vec3<bool>(global0.e, false, global0.c.d), false)), select(!vec3<bool>(true, global0.c.d, global0.e), select(vec3<bool>(true, global0.e, global0.e), vec3<bool>(global0.c.d, global0.c.d, global0.c.d), vec3<bool>(true, false, true)), select(vec3<bool>(global0.c.d, global0.e, global0.c.d), vec3<bool>(global0.c.d, global0.e, true), vec3<bool>(false, true, global0.e))), select(!vec3<bool>(false, global0.c.d, false), vec3<bool>(true, true, true), vec3<bool>(true, global0.c.d, false))))), u_input.a.x);
}

