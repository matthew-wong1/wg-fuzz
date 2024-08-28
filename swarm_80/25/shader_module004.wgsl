struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(-1040f, -1443f), vec2<f32>(1085f, 2565f), vec2<f32>(562f, -319f), vec2<f32>(399f, 1048f), vec2<f32>(644f, 1255f), vec2<f32>(773f, -1000f), vec2<f32>(-1191f, -1842f), vec2<f32>(1814f, -1114f), vec2<f32>(-1556f, 265f), vec2<f32>(-1000f, 1042f), vec2<f32>(1693f, 1000f), vec2<f32>(230f, -139f), vec2<f32>(348f, -914f), vec2<f32>(807f, 2919f), vec2<f32>(1415f, -146f), vec2<f32>(-412f, -486f), vec2<f32>(-580f, 1858f), vec2<f32>(2104f, 976f), vec2<f32>(-392f, 514f));

var<private> global1: array<f32, 32> = array<f32, 32>(1128f, -506f, -157f, 989f, 1046f, -320f, 232f, -356f, 230f, -1000f, -799f, 857f, -459f, 1030f, -453f, -373f, 1308f, -817f, 194f, -1868f, -1000f, 1045f, -605f, 428f, 503f, 2207f, 1253f, 520f, 1000f, 537f, 999f, 536f);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = abs(_wgslsmith_add_vec2_i32(countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x) << (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u)), abs(u_input.a.zx))), min(vec2<i32>(arg_0, arg_0), u_input.a.yy) & (vec2<i32>(-1i, u_input.a.x) ^ u_input.a.xx)));
    var var_1 = ~min(firstLeadingBit(~(-vec4<i32>(u_input.a.x, -2147483647i, var_0.x, 29934i))), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(49811i, arg_0, -2147483647i, var_0.x), ~vec4<i32>(u_input.a.x, -66358i, u_input.a.x, var_0.x)));
    var var_2 = true;
    var var_3 = Struct_2(_wgslsmith_dot_vec4_i32(-firstLeadingBit(vec4<i32>(u_input.a.x, var_1.x, var_1.x, u_input.a.x)), -vec4<i32>(arg_0, 64501i, arg_0, arg_0)) >> (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 2110u, 1u, 1416u)), countOneBits(vec4<u32>(1u, 1u, 1u, 1u))) % 32u), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-722f, 276f, global1[_wgslsmith_index_u32(43870u, 32u)], -1602f))))), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(18016u, 45042u, 4294967295u, 80187u)), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(60990u, 32u)], -1281f, -274f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(0u, 32u)], 1000f), vec3<f32>(global1[_wgslsmith_index_u32(40417u, 32u)], global1[_wgslsmith_index_u32(35706u, 32u)], -945f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(137265u, 32u)], global1[_wgslsmith_index_u32(62418u, 32u)]) * vec3<f32>(global1[_wgslsmith_index_u32(29014u, 32u)], global1[_wgslsmith_index_u32(69016u, 32u)], global1[_wgslsmith_index_u32(23152u, 32u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-993f)))), -(~var_0.x), vec4<bool>(u_input.a.x < arg_0, all(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false)), all(vec4<bool>(true, true, true, true)), false));
    let var_4 = var_3.b;
    return !var_3.d.x;
}

fn func_2(arg_0: i32, arg_1: vec2<i32>) -> vec4<u32> {
    global0 = array<vec2<f32>, 19>();
    let var_0 = select(select(vec2<bool>(true, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 32u)]) <= _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(108083u, 32u)]))), vec2<bool>(true, true), !func_3(arg_0 << (4294967295u % 32u))), vec2<bool>(any(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), true)), true), any(vec3<bool>(max(27055i, u_input.a.x) <= ~17575i, select(11316u, 22888u, false) >= ~4858u, func_3(~arg_1.x))));
    var var_1 = global1[_wgslsmith_index_u32(4564u, 32u)];
    return vec4<u32>(~_wgslsmith_sub_u32(~1u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_clamp_vec4_u32(~firstLeadingBit(vec4<u32>(1u, 19013u, 32849u, 4294967295u)), abs(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u))), 1u, 1u);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_2 {
    global0 = array<vec2<f32>, 19>();
    let var_0 = ~20192u;
    global0 = array<vec2<f32>, 19>();
    let var_1 = vec3<u32>(~_wgslsmith_sub_u32(~arg_1.b.x, 1u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.x, var_0, 48862u), vec3<u32>(arg_1.b.x, arg_1.b.x, 71440u))), ~var_0, abs(~1u));
    var var_2 = arg_0.x;
    return Struct_2(-1i, Struct_1(vec4<f32>(1044f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(49745u, 32u)], arg_1.c.x)), _wgslsmith_f_op_f32(select(-678f, arg_1.a.x, !arg_0.x)), _wgslsmith_f_op_f32(-arg_1.c.x)), func_2(~u_input.a.x, min(vec2<i32>(2147483647i, 1i), vec2<i32>(56384i, u_input.a.x))) & vec4<u32>(select(var_0, 23608u, false), ~4294967295u, var_1.x, ~75178u), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1484f, 250f, arg_1.c.x) * arg_1.c)))), _wgslsmith_f_op_f32(arg_1.d - arg_1.d)), firstLeadingBit(u_input.a.x), !vec4<bool>(func_3(-47300i) || true, all(arg_0.yy) != any(vec3<bool>(true, arg_0.x, arg_0.x)), !all(arg_0), !(u_input.a.x >= -34734i)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = !((_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0.b.b.x, 32u)] - _wgslsmith_div_f32(-1334f, 392f)) < _wgslsmith_f_op_f32(f32(-1f) * -319f)) | !(_wgslsmith_f_op_f32(-arg_1.d) < _wgslsmith_f_op_f32(489f - -1296f)));
    var var_1 = func_1(vec3<bool>(false, !(!any(vec4<bool>(true, arg_0.d.x, false, true))), all(func_1(!vec3<bool>(true, var_0, var_0), func_1(arg_0.d.wzz, Struct_1(arg_1.a, vec4<u32>(4294967295u, 4294967295u, 62218u, 4294967295u), vec3<f32>(global1[_wgslsmith_index_u32(74594u, 32u)], -1080f, -208f), 547f)).b).d.zz)), arg_1).b;
    var var_2 = func_1(select(!vec3<bool>(true, func_3(16547i), !arg_0.d.x), vec3<bool>(!(!arg_0.d.x), all(arg_0.d), _wgslsmith_f_op_f32(var_1.a.x * arg_0.b.d) == _wgslsmith_f_op_f32(sign(-1000f))), !select(all(vec4<bool>(var_0, var_0, true, arg_0.d.x)), true, true)), func_1(vec3<bool>(!all(vec2<bool>(false, true)), any(arg_0.d.xxz), var_0), arg_0.b).b);
    var var_3 = ~_wgslsmith_mod_vec3_u32(var_2.b.b.wxx, reverseBits(arg_0.b.b.xxx)) << (abs(_wgslsmith_mod_vec3_u32(vec3<u32>(min(arg_1.b.x, var_2.b.b.x), func_2(1i, u_input.a.yz).x, _wgslsmith_dot_vec4_u32(vec4<u32>(7489u, var_2.b.b.x, var_2.b.b.x, 0u), vec4<u32>(16506u, 19293u, arg_0.b.b.x, 0u))), ~arg_0.b.b.wxw)) % vec3<u32>(32u));
    var var_4 = var_2.d;
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), !(u_input.a.x > u_input.a.x));
    var_0 = func_4(func_1(select(!select(var_0.xxw, var_0.xxy, vec3<bool>(true, var_0.x, var_0.x)), var_0.wyy, vec3<bool>(var_0.x, any(vec4<bool>(var_0.x, var_0.x, var_0.x, false)), var_0.x)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(2164f, -1346f, global1[_wgslsmith_index_u32(26881u, 32u)], global1[_wgslsmith_index_u32(5695u, 32u)]), vec4<f32>(-832f, -720f, 1249f, global1[_wgslsmith_index_u32(27126u, 32u)]))), ~vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-699f, -1002f, global1[_wgslsmith_index_u32(88794u, 32u)])) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1744f, global1[_wgslsmith_index_u32(5373u, 32u)], global1[_wgslsmith_index_u32(4294967295u, 32u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 32u)] - global1[_wgslsmith_index_u32(89900u, 32u)]) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(43865u, 32u)] * global1[_wgslsmith_index_u32(1u, 32u)])))), func_1(var_0.yxw, Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(1877u, 32u)], global1[_wgslsmith_index_u32(25883u, 32u)], 1544f, -753f) - vec4<f32>(global1[_wgslsmith_index_u32(50874u, 32u)], -1000f, 209f, global1[_wgslsmith_index_u32(36263u, 32u)])), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-346f, 1000f, 617f, global1[_wgslsmith_index_u32(0u, 32u)])))), vec4<u32>(_wgslsmith_clamp_u32(83250u, 16293u, 4581u), _wgslsmith_mult_u32(0u, 1u), _wgslsmith_div_u32(0u, 23333u), 1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-988f, global1[_wgslsmith_index_u32(4294967295u, 32u)], 674f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(40195u, 32u)], global1[_wgslsmith_index_u32(54212u, 32u)]))), 291f)).b);
    var var_1 = u_input.a.zy;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_2(33654i, vec2<i32>(u_input.a.x, -4772i)).x, 1u), 32u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 20109u, 150400u), vec4<u32>(1u, 15180u, 1u, 65437u)), 32u)] * -1399f), _wgslsmith_f_op_f32(-func_1(vec3<bool>(true, true, var_0.x), Struct_1(vec4<f32>(global1[_wgslsmith_index_u32(0u, 32u)], 434f, global1[_wgslsmith_index_u32(10621u, 32u)], 824f), vec4<u32>(19264u, 63236u, 1u, 49630u), vec3<f32>(global1[_wgslsmith_index_u32(5549u, 32u)], global1[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(4294967295u, 32u)]), 824f)).b.d), global1[_wgslsmith_index_u32(func_1(!vec3<bool>(true, false, var_0.x), func_1(var_0.yxw, Struct_1(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 32u)], -1327f, global1[_wgslsmith_index_u32(43522u, 32u)], global1[_wgslsmith_index_u32(29271u, 32u)]), vec4<u32>(4294967295u, 38350u, 12441u, 23993u), vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 32u)], 1350f, 1751f), global1[_wgslsmith_index_u32(42061u, 32u)])).b).b.b.x, 32u)])), vec4<u32>(~12117u, 43106u, max(countOneBits(8415u), func_2(var_1.x >> (37845u % 32u), vec2<i32>(0i, 41091i) & u_input.a.xz).x), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(25050u, 38845u, 49840u, 0u), vec4<u32>(1u, 21169u, 4294967295u, 4294967295u)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(39219u, 4945u), vec2<u32>(0u, 4294967295u)) % 32u))), vec3<f32>(-1020f, _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(87646u, 49702u, 73038u), vec3<u32>(63667u, 53190u, 57769u)), 32u)])), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(257f + 395f)), 230f))), -1000f);
    var var_3 = func_1(select(select(vec3<bool>(true, true, any(vec2<bool>(var_0.x, var_0.x))), func_1(!var_0.zzx, func_1(vec3<bool>(var_0.x, true, var_0.x), Struct_1(var_2.a, var_2.b, var_2.c, 436f)).b).d.zww, var_0.zxx), func_1(select(var_0.xyy, var_0.xzy, vec3<bool>(true, true, true)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, var_2.c.x, 247f, -914f) * vec4<f32>(-592f, var_2.d, 323f, global1[_wgslsmith_index_u32(82655u, 32u)])), var_2.b, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-300f, 666f, 1714f), vec3<f32>(global1[_wgslsmith_index_u32(var_2.b.x, 32u)], -1855f, var_2.c.x), vec3<bool>(var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_f32(abs(-499f)))).d.wyx, vec3<bool>(!var_0.x | true, true, var_0.x)), Struct_1(var_2.a, firstLeadingBit(var_2.b), func_1(func_1(!var_0.wzy, Struct_1(var_2.a, var_2.b, var_2.c, 212f)).d.wwy, func_1(select(var_0.wzz, var_0.zyx, var_0.x), Struct_1(vec4<f32>(1421f, global1[_wgslsmith_index_u32(1u, 32u)], 1769f, global1[_wgslsmith_index_u32(var_2.b.x, 32u)]), vec4<u32>(var_2.b.x, 5978u, var_2.b.x, 4294967295u), var_2.c, -365f)).b).b.c, _wgslsmith_f_op_f32(var_2.d + global1[_wgslsmith_index_u32(var_2.b.x ^ ~1u, 32u)]))).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_2.a - var_3.a), _wgslsmith_div_vec4_f32(var_3.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_2.a, vec4<f32>(var_2.d, 640f, 794f, var_3.d))) - _wgslsmith_f_op_vec4_f32(var_2.a - vec4<f32>(-289f, global1[_wgslsmith_index_u32(27091u, 32u)], -1075f, -1665f)))), false)), var_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(637f + -255f)))), var_3.c.x, u_input.a.x);
}

