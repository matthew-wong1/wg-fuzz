struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(29613u, vec3<f32>(-449f, 1590f, -1133f), 31780u);

var<private> global1: array<u32, 21>;

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(0u, vec3<f32>(-645f, -1734f, 1370f), 4294967295u), Struct_1(18661u, vec3<f32>(-569f, 249f, -1681f), 0u), Struct_1(0u, vec3<f32>(268f, 911f, 791f), 0u), Struct_1(49345u, vec3<f32>(-195f, -683f, -807f), 1u), Struct_1(0u, vec3<f32>(-605f, 1155f, 294f), 0u), Struct_1(26058u, vec3<f32>(290f, 1059f, -575f), 37292u), Struct_1(84732u, vec3<f32>(-459f, 1356f, -789f), 0u), Struct_1(0u, vec3<f32>(1000f, 1000f, -560f), 133716u), Struct_1(56717u, vec3<f32>(-399f, 1505f, -1592f), 37162u), Struct_1(46740u, vec3<f32>(-458f, -1268f, 457f), 32017u), Struct_1(1u, vec3<f32>(675f, 619f, 1000f), 13457u), Struct_1(4294967295u, vec3<f32>(-1675f, -1450f, 939f), 0u), Struct_1(1u, vec3<f32>(-411f, 565f, -431f), 0u), Struct_1(4023u, vec3<f32>(-137f, 582f, -1273f), 35603u), Struct_1(0u, vec3<f32>(-686f, 2506f, -1900f), 0u), Struct_1(1u, vec3<f32>(270f, 1884f, 1191f), 0u), Struct_1(73944u, vec3<f32>(768f, 1292f, -529f), 4294967295u), Struct_1(29684u, vec3<f32>(-829f, 1406f, 1690f), 0u), Struct_1(0u, vec3<f32>(-1202f, -1527f, 193f), 44213u), Struct_1(4294967295u, vec3<f32>(131f, -997f, 772f), 27765u), Struct_1(84926u, vec3<f32>(732f, 1000f, 1000f), 0u), Struct_1(13950u, vec3<f32>(1653f, -1505f, -470f), 1u), Struct_1(44053u, vec3<f32>(-1000f, 613f, -350f), 1u), Struct_1(57624u, vec3<f32>(1078f, 609f, -867f), 23566u), Struct_1(68747u, vec3<f32>(226f, 1005f, -794f), 18711u), Struct_1(12683u, vec3<f32>(-251f, -640f, -428f), 0u), Struct_1(0u, vec3<f32>(-182f, -1458f, 431f), 0u), Struct_1(1u, vec3<f32>(-1185f, 1209f, 403f), 1u), Struct_1(0u, vec3<f32>(1157f, 794f, 921f), 1u), Struct_1(62294u, vec3<f32>(472f, -835f, -1387f), 9155u), Struct_1(4294967295u, vec3<f32>(-1020f, 644f, 1582f), 1u), Struct_1(0u, vec3<f32>(-113f, -1123f, -202f), 4294967295u));

var<private> global3: array<vec3<bool>, 31> = array<vec3<bool>, 31>(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: u32) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(5753u, global0.a, 11039u, 4294967295u), reverseBits(vec4<u32>(global0.c, u_input.b, 59971u, global0.a)))), 29176u), 32u)];
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(arg_0, 2147483647i, u_input.c.x), -2147483647i);
    let var_2 = var_0.b;
    var var_3 = Struct_1(arg_2, global0.b, firstLeadingBit(var_0.a));
    let var_4 = Struct_1(arg_2, _wgslsmith_f_op_vec3_f32(-var_0.b), min(_wgslsmith_mult_u32(14223u, firstTrailingBit(4294967295u | arg_2)), _wgslsmith_dot_vec3_u32(~min(vec3<u32>(arg_2, 0u, var_3.a), vec3<u32>(arg_2, u_input.b, var_3.a)), (vec3<u32>(16468u, var_0.a, var_3.a) | vec3<u32>(4865u, var_0.a, 37374u)) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(45598u, 4294967295u, 18554u), vec3<u32>(arg_2, 0u, global0.a)))));
    return ~_wgslsmith_mult_u32(firstTrailingBit(min(0u, var_3.c)), ~(~1u)) | 0u;
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = 650u;
    var var_1 = ~(~func_3(1i, (u_input.c.yz & u_input.c.zx) << (firstTrailingBit(vec2<u32>(4294967295u, arg_0)) % vec2<u32>(32u)), _wgslsmith_mod_u32(firstLeadingBit(arg_0), _wgslsmith_div_u32(global1[_wgslsmith_index_u32(arg_0, 21u)], arg_0))));
    global1 = array<u32, 21>();
    global0 = Struct_1(~global0.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_3.b.x)) + _wgslsmith_div_f32(1046f, arg_3.b.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-405f, 349f)))), _wgslsmith_f_op_f32(arg_3.b.x + -772f)) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1463f), -489f, global0.b.x)), 1u);
    var var_2 = vec2<bool>(arg_1.x, any(!(!(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false)))));
    return Struct_1(reverseBits(~0u), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1001f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b.x - global0.b.x) * _wgslsmith_f_op_f32(arg_3.b.x * 1000f)))), -1217f), arg_0);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> u32 {
    var var_0 = func_2(_wgslsmith_div_u32(u_input.b, _wgslsmith_clamp_u32(select(arg_1.a, arg_2, true), ~(~arg_1.a), 0u)), vec3<bool>(select(arg_3, !(!arg_3), all(select(vec2<bool>(true, arg_3), vec2<bool>(arg_3, true), false))), true, arg_3 | true), vec3<u32>(~41090u, select(1u, global1[_wgslsmith_index_u32(79889u, 21u)], true) << (~arg_1.c % 32u), 1u) << (~(_wgslsmith_mult_vec3_u32(vec3<u32>(37507u, arg_1.a, 0u), vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 21u)], 27988u, 44402u)) | max(vec3<u32>(u_input.b, 12537u, 9392u), vec3<u32>(global1[_wgslsmith_index_u32(arg_0.c, 21u)], 83721u, 1u))) % vec3<u32>(32u)), func_2(~(~52461u), global3[_wgslsmith_index_u32(abs(~arg_0.c) << (14959u % 32u), 31u)], ~select(~vec3<u32>(51403u, arg_2, u_input.b), vec3<u32>(arg_1.a, arg_0.a, 0u), any(vec3<bool>(false, arg_3, arg_3))), arg_1));
    global3 = array<vec3<bool>, 31>();
    global2 = array<Struct_1, 32>();
    global1 = array<u32, 21>();
    global3 = array<vec3<bool>, 31>();
    return 1u;
}

fn func_5(arg_0: vec4<u32>) -> Struct_1 {
    global1 = array<u32, 21>();
    var var_0 = global2[_wgslsmith_index_u32(abs(abs(global0.a)), 32u)];
    let var_1 = !select(vec4<bool>(true, var_0.c >= min(var_0.c, var_0.a), false, all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)))), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true))), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), true), true & (u_input.c.x > 2147483647i)), u_input.d != u_input.a);
    global0 = global2[_wgslsmith_index_u32(12128u, 32u)];
    global0 = func_2(arg_0.x, vec3<bool>(all(var_1.xxw), true, select(var_1.x, var_1.x, all(var_1))), arg_0.xwx, func_2(1u, !vec3<bool>(false, !var_1.x, var_1.x), ~vec3<u32>(~0u, 13524u, ~1u), global2[_wgslsmith_index_u32(var_0.a, 32u)]));
    return Struct_1(48403u, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1025f, global0.b.x, -1176f))), global0.b)), ~(~(~func_2(4294967295u, vec3<bool>(true, var_1.x, var_1.x), arg_0.zzx, Struct_1(global0.a, global0.b, 39956u)).a)));
}

fn func_1(arg_0: i32, arg_1: vec3<i32>) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(~abs(u_input.b), 21u)], firstLeadingBit(0u), _wgslsmith_dot_vec2_u32(select(vec2<u32>(global0.c, 47835u), vec2<u32>(6650u, 0u), vec2<bool>(true, true)), ~vec2<u32>(global0.c, u_input.b))), vec3<u32>(~global0.c, global0.c, ~abs(11078u))) ^ 54774u, 32u)];
    var var_1 = func_5(vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.c, u_input.b, global1[_wgslsmith_index_u32(var_0.a, 21u)], global0.c), vec4<u32>(global1[_wgslsmith_index_u32(u_input.b, 21u)], var_0.c, 16728u, 1u) | vec4<u32>(24330u, 1u, 2095u, var_0.c)), ~(~vec4<u32>(0u, var_0.c, u_input.b, global1[_wgslsmith_index_u32(18654u, 21u)]))), ~func_4(func_2(global1[_wgslsmith_index_u32(22025u, 21u)], vec3<bool>(true, false, true), vec3<u32>(u_input.b, 138400u, 1u), Struct_1(5203u, var_0.b, global0.a)), func_2(var_0.a, vec3<bool>(true, true, true), vec3<u32>(global1[_wgslsmith_index_u32(global0.c, 21u)], u_input.b, global0.c), Struct_1(51352u, global0.b, global0.c)), var_0.a & u_input.b, false), global0.a, abs(~0u)));
    global1 = array<u32, 21>();
    var_1 = func_5(select(~_wgslsmith_add_vec4_u32(vec4<u32>(1u, var_0.a, global0.c, var_0.a), vec4<u32>(24530u, var_1.a, 13276u, 4294967295u)) << (~(vec4<u32>(u_input.b, var_0.a, var_0.c, 1u) >> (vec4<u32>(35488u, var_1.a, 40491u, 43012u) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(global0.c, var_0.a, var_1.a, var_1.a)), vec4<u32>(u_input.b & 4294967295u, max(global0.a, 28701u), firstTrailingBit(0u), var_1.c)), false));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -146f) - -978f)), 1000f, global0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.b.x), -739f)) + 769f)));
    return 75250u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-264f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) + _wgslsmith_f_op_f32(-global0.b.x)))));
    var var_1 = ~min(~vec2<u32>(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 21u)], 21u)], _wgslsmith_mult_u32(global0.a, 14546u)), vec2<u32>(~(global0.a << (global0.c % 32u)), global0.c));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b.yz)))) + _wgslsmith_f_op_vec2_f32(exp2(global0.b.zz)));
    global0 = global2[_wgslsmith_index_u32(1u << (~(~(var_1.x << (func_1(2147483647i, u_input.c) % 32u))) % 32u), 32u)];
    global3 = array<vec3<bool>, 31>();
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.b.x - 2647f)))))));
    global2 = array<Struct_1, 32>();
    global3 = array<vec3<bool>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(~((vec4<i32>(-50453i, 1i, 5288i, u_input.d) | vec4<i32>(u_input.a, 0i, 6785i, u_input.e)) << (~vec4<u32>(global1[_wgslsmith_index_u32(global0.c, 21u)], global0.c, 35481u, u_input.b) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.e, u_input.c.x, 0i, u_input.a), vec4<i32>(u_input.e, -10755i, u_input.e, u_input.a)) & ~vec4<i32>(u_input.e, u_input.d, u_input.d, 63557i)));
}

