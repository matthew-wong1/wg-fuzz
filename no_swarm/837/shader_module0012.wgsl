struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
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

var<private> global1: array<Struct_4, 30> = array<Struct_4, 30>(Struct_4(vec4<f32>(1098f, -1666f, 561f, -831f), 4294967295u, -536f, Struct_3(vec2<u32>(0u, 66163u))), Struct_4(vec4<f32>(-1000f, 893f, 1441f, -2659f), 4294967295u, -381f, Struct_3(vec2<u32>(2819u, 4294967295u))), Struct_4(vec4<f32>(1375f, 510f, -623f, -814f), 4294967295u, -1000f, Struct_3(vec2<u32>(23380u, 18262u))), Struct_4(vec4<f32>(1465f, 1803f, -121f, 212f), 4294967295u, -445f, Struct_3(vec2<u32>(12927u, 3720u))), Struct_4(vec4<f32>(1870f, 227f, 529f, 1187f), 4294967295u, 1475f, Struct_3(vec2<u32>(1u, 47880u))), Struct_4(vec4<f32>(1192f, -1225f, 933f, 571f), 5324u, -2247f, Struct_3(vec2<u32>(1u, 32654u))), Struct_4(vec4<f32>(255f, 637f, -701f, 472f), 124331u, 2216f, Struct_3(vec2<u32>(2157u, 42894u))), Struct_4(vec4<f32>(-623f, -1064f, -1000f, 149f), 49077u, -1000f, Struct_3(vec2<u32>(0u, 107553u))), Struct_4(vec4<f32>(-522f, 1314f, 2432f, -340f), 12093u, -1890f, Struct_3(vec2<u32>(82960u, 26466u))), Struct_4(vec4<f32>(-243f, 1000f, -379f, -599f), 9709u, -1244f, Struct_3(vec2<u32>(24261u, 9212u))), Struct_4(vec4<f32>(-1489f, 621f, -2529f, -231f), 4284u, -431f, Struct_3(vec2<u32>(4294967295u, 0u))), Struct_4(vec4<f32>(-1058f, 173f, 482f, -561f), 0u, -1000f, Struct_3(vec2<u32>(0u, 66386u))), Struct_4(vec4<f32>(-145f, 629f, 906f, -124f), 1u, 1097f, Struct_3(vec2<u32>(1u, 43859u))), Struct_4(vec4<f32>(-1574f, -485f, -995f, 938f), 4294967295u, -1101f, Struct_3(vec2<u32>(17261u, 24416u))), Struct_4(vec4<f32>(-927f, -1007f, -1453f, -366f), 1u, 1264f, Struct_3(vec2<u32>(46004u, 51719u))), Struct_4(vec4<f32>(-920f, -1233f, -468f, 631f), 58909u, -502f, Struct_3(vec2<u32>(85263u, 69696u))), Struct_4(vec4<f32>(159f, 763f, -249f, 151f), 0u, 1341f, Struct_3(vec2<u32>(1u, 1u))), Struct_4(vec4<f32>(-429f, -1044f, -557f, 991f), 4294967295u, -1903f, Struct_3(vec2<u32>(11013u, 37180u))), Struct_4(vec4<f32>(678f, 1028f, -1610f, 348f), 0u, 159f, Struct_3(vec2<u32>(1u, 60224u))), Struct_4(vec4<f32>(906f, -1000f, -1000f, -685f), 77951u, -698f, Struct_3(vec2<u32>(1u, 13814u))), Struct_4(vec4<f32>(828f, -587f, -718f, 3411f), 28488u, 891f, Struct_3(vec2<u32>(40769u, 1u))), Struct_4(vec4<f32>(1000f, 932f, -604f, -739f), 21504u, -742f, Struct_3(vec2<u32>(4294967295u, 150054u))), Struct_4(vec4<f32>(-444f, -1459f, -874f, 791f), 19845u, -1253f, Struct_3(vec2<u32>(4294967295u, 7391u))), Struct_4(vec4<f32>(1267f, 988f, -117f, 269f), 13582u, -233f, Struct_3(vec2<u32>(4294967295u, 0u))), Struct_4(vec4<f32>(-1297f, -952f, -250f, -1194f), 4294967295u, -221f, Struct_3(vec2<u32>(0u, 29058u))), Struct_4(vec4<f32>(852f, 1479f, -1596f, 343f), 0u, -1922f, Struct_3(vec2<u32>(16423u, 0u))), Struct_4(vec4<f32>(-865f, -1777f, 1000f, -1928f), 1u, -745f, Struct_3(vec2<u32>(9563u, 1u))), Struct_4(vec4<f32>(-703f, 883f, 1000f, 1598f), 60423u, 973f, Struct_3(vec2<u32>(1u, 43136u))), Struct_4(vec4<f32>(-380f, -1082f, -1110f, -1339f), 4294967295u, 1000f, Struct_3(vec2<u32>(31979u, 78853u))), Struct_4(vec4<f32>(1741f, 1179f, 190f, -1000f), 79965u, -346f, Struct_3(vec2<u32>(39669u, 1u))));

var<private> global2: Struct_1 = Struct_1(false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: Struct_4) -> Struct_2 {
    let var_0 = -(2147483647i & u_input.b.x);
    global1 = array<Struct_4, 30>();
    var var_1 = arg_2.d;
    let var_2 = !all(select(!vec4<bool>(global2.a, arg_1, global2.a, arg_1), vec4<bool>(global2.a, global2.a, arg_2.a.x > 1626f, !arg_1), !vec4<bool>(global2.a, false, true, false)));
    return arg_0;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: i32) -> vec2<u32> {
    var var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_clamp_u32(global0.a.x, ~arg_1.a.x | _wgslsmith_div_u32(arg_1.a.x, ~arg_2.a.x), _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(1692u, 4294967295u), _wgslsmith_add_u32(~1u, 1u), ~(u_input.a.x | global0.a.x)))), 30u)];
    global1 = array<Struct_4, 30>();
    var var_1 = _wgslsmith_f_op_f32(max(781f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x)))), var_0.c))));
    let var_2 = _wgslsmith_f_op_vec2_f32(arg_0.yz + vec2<f32>(771f, -1000f));
    var var_3 = _wgslsmith_add_i32(~countOneBits(-u_input.b.x), _wgslsmith_div_i32(~53790i, u_input.b.x) ^ ~(-39913i)) ^ (0i & u_input.b.x);
    return ~max(arg_1.a, u_input.a.yy);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<u32>) -> Struct_2 {
    var var_0 = vec2<u32>(func_2(func_2(Struct_2(vec2<u32>(4294967295u, global0.a.x)), arg_0.x, global1[_wgslsmith_index_u32(~countOneBits(102059u), 30u)]), !all(select(vec3<bool>(global2.a, false, global2.a), vec3<bool>(false, arg_0.x, false), vec3<bool>(arg_0.x, arg_0.x, false))), global1[_wgslsmith_index_u32(~(~func_2(Struct_2(vec2<u32>(u_input.a.x, 0u)), global2.a, Struct_4(vec4<f32>(-1000f, 1137f, 362f, -2990f), u_input.a.x, 366f, Struct_3(arg_1))).a.x), 30u)]).a.x, _wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(4294967295u, 4294967295u, arg_1.x)), vec3<u32>(~abs(0u), 0u >> ((31571u << (u_input.a.x % 32u)) % 32u), arg_1.x)));
    global1 = array<Struct_4, 30>();
    var_0 = global0.a;
    var var_1 = Struct_1(select(all(vec3<bool>(true, true, true)), global2.a, firstTrailingBit(global0.a.x) <= global0.a.x));
    global2 = Struct_1(any(!select(select(vec2<bool>(true, arg_0.x), arg_0, arg_0.x), arg_0, select(vec2<bool>(false, var_1.a), arg_0, arg_0))));
    return Struct_2(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, firstLeadingBit(u_input.a.x)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 69216u, 1u, global0.a.x), vec4<u32>(35699u, 4294967295u, global0.a.x, u_input.a.x)), _wgslsmith_div_u32(var_0.x, 44413u))), arg_1.x));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4) -> u32 {
    var var_0 = Struct_1(false);
    let var_1 = arg_0.a;
    let var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(360f * 1538f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(389f)) - 1378f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) - _wgslsmith_f_op_f32(step(1080f, arg_1.a.x))) + 195f) * -100f), -1377f, _wgslsmith_div_f32(arg_1.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(325f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(-arg_1.a.x)))))));
    global0 = Struct_2(~(~_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, var_1.x), vec2<u32>(arg_1.b, arg_0.a.x)), ~vec2<u32>(4294967295u, arg_1.d.a.x))));
    global0 = Struct_2(vec2<u32>(min(~select(90950u, 20393u, false), ~arg_1.b << (4294967295u % 32u)), ~4294967295u));
    return func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_2), _wgslsmith_f_op_vec4_f32(trunc(arg_1.a)), any(vec4<bool>(false, true, var_0.a, var_0.a))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_2)) + vec4<f32>(arg_1.c, 171f, arg_1.a.x, 164f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, 279f, var_2.x, arg_1.a.x)) - vec4<f32>(var_2.x, 1358f, 1113f, 274f)))), Struct_2(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(arg_1.b, 72543u)), vec2<u32>(11912u, 26708u), firstTrailingBit(vec2<u32>(0u, u_input.a.x))), _wgslsmith_mod_vec2_u32(u_input.a.xx, vec2<u32>(u_input.a.x, 4294967295u)), func_3(_wgslsmith_f_op_vec4_f32(-var_2), arg_0, func_4(vec2<bool>(var_0.a, true), vec2<u32>(59045u, var_1.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(-66259i, u_input.b.x), vec2<i32>(44953i, u_input.b.x))))), Struct_2(vec2<u32>(1u, _wgslsmith_mult_u32(arg_1.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global0.a.x, 15982u, u_input.a.x), vec4<u32>(u_input.a.x, arg_0.a.x, 76816u, global0.a.x))))), u_input.b.x).x;
}

fn func_1(arg_0: vec2<i32>) -> vec2<bool> {
    let var_0 = func_5(func_4(!(!(!vec2<bool>(true, global2.a))), _wgslsmith_div_vec2_u32(vec2<u32>(0u, _wgslsmith_add_u32(4294967295u, global0.a.x)), func_3(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1153f, -155f, -1915f, 1822f))), func_2(Struct_2(vec2<u32>(4294967295u, global0.a.x)), false, global1[_wgslsmith_index_u32(26610u, 30u)]), func_2(Struct_2(vec2<u32>(global0.a.x, global0.a.x)), false, global1[_wgslsmith_index_u32(global0.a.x, 30u)]), ~(-1908i)))), Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-716f, -1330f, -1000f, 333f) - vec4<f32>(-718f, 1439f, 210f, 1777f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1344f, 1085f, 1000f, -2341f)), select(vec4<bool>(global2.a, global2.a, false, false), vec4<bool>(global2.a, global2.a, global2.a, global2.a), vec4<bool>(global2.a, true, false, false)))) * vec4<f32>(460f, 1562f, -1511f, 1041f)), func_3(vec4<f32>(_wgslsmith_f_op_f32(562f * 970f), 148f, 1273f, -212f), Struct_2(vec2<u32>(u_input.a.x, 15937u)), func_2(func_4(vec2<bool>(false, true), vec2<u32>(global0.a.x, 0u)), any(vec3<bool>(false, global2.a, global2.a)), global1[_wgslsmith_index_u32(func_2(Struct_2(global0.a), true, global1[_wgslsmith_index_u32(10292u, 30u)]).a.x, 30u)]), arg_0.x).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-414f - 672f) + _wgslsmith_f_op_f32(-348f + 1413f))), Struct_3(_wgslsmith_mult_vec2_u32(global0.a, u_input.a.yy) & _wgslsmith_add_vec2_u32(global0.a, vec2<u32>(global0.a.x, global0.a.x)))));
    global1 = array<Struct_4, 30>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-697f, -781f, true))), _wgslsmith_f_op_f32(ceil(1144f)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1880f - -1126f))))));
    global2 = Struct_1(!(!(!global2.a)));
    global2 = Struct_1(global2.a);
    return !select(!select(vec2<bool>(true, true), !vec2<bool>(global2.a, global2.a), !vec2<bool>(true, global2.a)), vec2<bool>(true, global2.a), any(select(!vec2<bool>(global2.a, global2.a), !vec2<bool>(global2.a, global2.a), vec2<bool>(global2.a, global2.a))));
}

fn func_6(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = !((_wgslsmith_f_op_f32(ceil(975f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1656f)) * -337f)) | arg_1.x);
    let var_1 = Struct_3(vec2<u32>(22848u, u_input.a.x));
    let var_2 = 144f;
    let var_3 = ~arg_0.wxz;
    var var_4 = var_2;
    return func_2(Struct_2(vec2<u32>(0u, abs(33358u))), any(!vec4<bool>(true, false & global2.a, !global2.a, arg_1.x)), global1[_wgslsmith_index_u32(arg_2.x, 30u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(abs(~(~vec4<u32>(global0.a.x, global0.a.x, 11213u, u_input.a.x))) << (firstTrailingBit(vec4<u32>(4294967295u, 5492u, abs(1u), 4294967295u)) % vec4<u32>(32u)), select(func_1(vec2<i32>(-66754i, u_input.b.x) << (global0.a % vec2<u32>(32u))), !func_1(vec2<i32>(u_input.b.x, -2147483647i)), !(!select(vec2<bool>(true, true), vec2<bool>(global2.a, global2.a), vec2<bool>(false, false)))), vec2<u32>(global0.a.x, _wgslsmith_add_u32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 696f, -329f, -737f)), Struct_2(vec2<u32>(u_input.a.x, u_input.a.x)), func_2(Struct_2(vec2<u32>(4294967295u, global0.a.x)), global2.a, global1[_wgslsmith_index_u32(0u, 30u)]), select(-2147483647i, 0i, global2.a)).x, _wgslsmith_div_u32(u_input.a.x, max(4294967295u, 0u)))));
    global2 = Struct_1(any(vec3<bool>(global2.a, !global2.a, global2.a)));
    var var_0 = false;
    let var_1 = _wgslsmith_dot_vec3_u32((vec3<u32>(4998u, 52988u, 3452u) ^ select(vec3<u32>(global0.a.x, 0u, 0u), vec3<u32>(4294967295u, 1u, 52341u), true)) & u_input.a, abs(reverseBits(~u_input.a))) >> (min(func_5(func_2(Struct_2(u_input.a.zx), all(vec3<bool>(global2.a, global2.a, true)), global1[_wgslsmith_index_u32(0u & global0.a.x, 30u)]), global1[_wgslsmith_index_u32(u_input.a.x, 30u)]), ~global0.a.x) % 32u);
    var var_2 = -1593f;
    global1 = array<Struct_4, 30>();
    var var_3 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-293f - 396f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-533f)))), 1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-486f, 246f)))))));
    var var_4 = !select(!func_1(u_input.b.yx), !func_1(u_input.b.zy), vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-248f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) - _wgslsmith_f_op_f32(680f * 1000f))))), ~(~(min(2147483647i, u_input.b.x) >> (_wgslsmith_div_u32(var_1, 31911u) % 32u))));
}

