struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec4<f32>,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -674f;

var<private> global1: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(743f, vec2<f32>(1557f, -493f), -1098f, false, Struct_1(vec3<u32>(1u, 1498u, 8081u), 1u, vec4<f32>(-1000f, -700f, -2179f, -1000f), vec4<bool>(true, false, false, false), vec3<f32>(-1027f, -1268f, 572f))), Struct_2(-921f, vec2<f32>(-1000f, -469f), 547f, false, Struct_1(vec3<u32>(1u, 69578u, 1u), 4294967295u, vec4<f32>(640f, -250f, -149f, 274f), vec4<bool>(true, false, true, true), vec3<f32>(760f, -1929f, -710f))), Struct_2(-900f, vec2<f32>(178f, 886f), 743f, false, Struct_1(vec3<u32>(1u, 4294967295u, 0u), 46552u, vec4<f32>(268f, 191f, 1000f, 743f), vec4<bool>(true, true, false, true), vec3<f32>(419f, -1392f, -750f))), Struct_2(338f, vec2<f32>(-377f, 482f), 223f, false, Struct_1(vec3<u32>(9967u, 0u, 12840u), 0u, vec4<f32>(757f, -223f, -928f, -283f), vec4<bool>(true, true, true, false), vec3<f32>(-1000f, -119f, -187f))), Struct_2(601f, vec2<f32>(-257f, -476f), 150f, false, Struct_1(vec3<u32>(4294967295u, 104293u, 21048u), 50445u, vec4<f32>(-962f, -348f, 604f, 2012f), vec4<bool>(false, true, true, true), vec3<f32>(438f, -359f, -498f))), Struct_2(-116f, vec2<f32>(-598f, -118f), -399f, false, Struct_1(vec3<u32>(4294967295u, 39354u, 1u), 0u, vec4<f32>(142f, 885f, 1196f, 226f), vec4<bool>(false, true, false, true), vec3<f32>(274f, -857f, -1543f))), Struct_2(751f, vec2<f32>(-1048f, 1479f), -774f, false, Struct_1(vec3<u32>(0u, 1u, 4294967295u), 4294967295u, vec4<f32>(131f, -837f, 725f, 1493f), vec4<bool>(true, true, true, true), vec3<f32>(-145f, 706f, -799f))), Struct_2(-998f, vec2<f32>(1000f, 1209f), -625f, true, Struct_1(vec3<u32>(1605u, 31776u, 20082u), 17828u, vec4<f32>(-242f, -103f, -847f, -636f), vec4<bool>(false, true, true, true), vec3<f32>(186f, 111f, 956f))), Struct_2(842f, vec2<f32>(657f, -2145f), 157f, false, Struct_1(vec3<u32>(649u, 4294967295u, 21837u), 5261u, vec4<f32>(487f, 2077f, -702f, -731f), vec4<bool>(false, false, true, false), vec3<f32>(1227f, -1690f, 2922f))), Struct_2(137f, vec2<f32>(705f, 332f), 1005f, false, Struct_1(vec3<u32>(4294967295u, 1u, 0u), 32836u, vec4<f32>(435f, 1326f, 735f, -1164f), vec4<bool>(false, false, false, false), vec3<f32>(-1592f, 438f, -706f))), Struct_2(-240f, vec2<f32>(-1000f, 501f), 1000f, false, Struct_1(vec3<u32>(61355u, 0u, 74022u), 1u, vec4<f32>(1022f, 290f, 864f, 2514f), vec4<bool>(false, false, false, false), vec3<f32>(109f, 610f, -727f))), Struct_2(-1418f, vec2<f32>(2724f, 443f), 127f, true, Struct_1(vec3<u32>(17396u, 42893u, 13882u), 4851u, vec4<f32>(1006f, -560f, -570f, -738f), vec4<bool>(true, true, false, false), vec3<f32>(-1022f, -1365f, 568f))), Struct_2(1041f, vec2<f32>(-274f, 1062f), -1205f, true, Struct_1(vec3<u32>(1u, 4294967295u, 17037u), 4294967295u, vec4<f32>(-1563f, 840f, 748f, 385f), vec4<bool>(false, false, false, true), vec3<f32>(-948f, -1197f, -1000f))), Struct_2(-1489f, vec2<f32>(237f, -1000f), 869f, false, Struct_1(vec3<u32>(1u, 4294967295u, 0u), 47637u, vec4<f32>(-1053f, -553f, -1267f, 1000f), vec4<bool>(true, false, true, true), vec3<f32>(1000f, 1000f, 1655f))));

var<private> global2: array<f32, 5> = array<f32, 5>(204f, 481f, 1068f, -1000f, 1488f);

var<private> global3: vec4<u32> = vec4<u32>(676u, 23240u, 64019u, 32309u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(155f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-717f, global2[_wgslsmith_index_u32(13859u, 5u)]) - vec2<f32>(-1000f, global2[_wgslsmith_index_u32(4829u, 5u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1386f, global2[_wgslsmith_index_u32(59839u, 5u)])))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-483f, 1698f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 5u)], -1241f) + vec2<f32>(global2[_wgslsmith_index_u32(33837u, 5u)], global2[_wgslsmith_index_u32(global3.x, 5u)])), false))), global2[_wgslsmith_index_u32(0u, 5u)], !(firstLeadingBit(u_input.a.x) != ~1i), Struct_1(~global3.xyw, u_input.c.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(827f, -117f, 240f, -968f), vec4<f32>(2233f, -316f, -921f, global2[_wgslsmith_index_u32(global3.x, 5u)]))))), !vec4<bool>(all(vec4<bool>(false, false, true, false)), true, any(vec2<bool>(true, false)), true), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(22550u, 5u)], 296f, -1089f) + vec3<f32>(global2[_wgslsmith_index_u32(global3.x, 5u)], -544f, global2[_wgslsmith_index_u32(84847u, 5u)]))), vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global3.x, 5u)]), global2[_wgslsmith_index_u32(max(u_input.c.x, 4294967295u), 5u)], _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(70390u, 5u)])))))));
    var var_1 = i32(-1i) * -18464i;
    var_1 = -1i;
    global1 = array<Struct_2, 14>();
    var var_2 = var_0.e.b;
    return global2[_wgslsmith_index_u32(0u, 5u)];
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, 1u ^ u_input.c.x), firstLeadingBit(min(1u, u_input.c.x))), 5u)]);
    let var_1 = -(min(1i, max(~2147483647i, i32(-1i) * -757i)) << (global3.x % 32u));
    let var_2 = Struct_3(var_1, vec3<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), (_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(18608u, 5u)] - 2162f) != _wgslsmith_div_f32(1586f, 605f)) & (global2[_wgslsmith_index_u32(15016u, 5u)] <= 1224f), true), vec3<f32>(_wgslsmith_f_op_f32(-1000f + var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) - -695f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(ceil(var_0))))));
    let var_3 = -1876f;
    let var_4 = Struct_5(global3.xzw & max(~vec3<u32>(global3.x, global3.x, 14395u), max(vec3<u32>(global3.x, 35269u, 689u), vec3<u32>(global3.x, 4294967295u, global3.x))), ~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, reverseBits(8268i), var_2.a >> (1u % 32u)), reverseBits(vec3<i32>(34231i, var_2.a, var_1))), ~_wgslsmith_mod_u32(0u, 80629u));
    return ~(~(1u | _wgslsmith_div_u32(max(global3.x, var_4.c), reverseBits(1u))));
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: f32) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(1u, 14u)];
    let var_1 = reverseBits(u_input.c.x & 4294967295u) < 125186u;
    var var_2 = _wgslsmith_f_op_vec4_f32(-var_0.e.c);
    var var_3 = ~(vec4<u32>(28277u | global3.x, max(global3.x, _wgslsmith_dot_vec3_u32(global3.xxw, var_0.e.a)), func_2(), u_input.c.x << (37051u % 32u)) ^ (~firstTrailingBit(vec4<u32>(global3.x, 0u, 88676u, var_0.e.a.x)) & vec4<u32>(reverseBits(u_input.c.x), _wgslsmith_add_u32(var_0.e.b, var_0.e.b), ~4294967295u, var_0.e.a.x)));
    global1 = array<Struct_2, 14>();
    return _wgslsmith_mult_u32(~var_0.e.a.x, _wgslsmith_dot_vec4_u32(~(~firstLeadingBit(vec4<u32>(u_input.c.x, 9645u, 1u, var_3.x))), vec4<u32>(~59990u, _wgslsmith_mult_u32(0u, 32505u) | (42886u << (var_3.x % 32u)), u_input.c.x, 51360u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(global3.xz, u_input.b, global3.wzx << (global3.zyz % vec3<u32>(32u)));
    global3 = vec4<u32>(_wgslsmith_div_u32(global3.x, firstLeadingBit(30521u << (u_input.c.x % 32u))), var_0.c.x, min(0u, abs(func_1(vec3<bool>(true, true, true), -1528f, _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(global3.x, 5u)], global2[_wgslsmith_index_u32(23160u, 5u)]))))), firstLeadingBit(_wgslsmith_dot_vec3_u32(global3.zxy, var_0.c << (var_0.c % vec3<u32>(32u)))));
    let var_1 = Struct_4(vec2<u32>(firstTrailingBit(max(~global3.x, global3.x)), 55831u), firstLeadingBit(var_0.b), vec3<u32>(u_input.c.x, select(var_0.a.x, reverseBits(4294967295u), true) << (~(~0u) % 32u), ~global3.x));
    let var_2 = Struct_1(~(abs(firstLeadingBit(vec3<u32>(4294967295u, 75847u, var_0.a.x))) & select(vec3<u32>(var_0.a.x, var_1.a.x, var_1.a.x), vec3<u32>(var_0.a.x, global3.x, 45073u), vec3<bool>(true, true, true))), ~_wgslsmith_add_u32(min(56990u, global3.x), 1u), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2[_wgslsmith_index_u32(86267u, 5u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1621f) + _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(65817u, 5u)]))), 1432f, _wgslsmith_div_f32(global2[_wgslsmith_index_u32(0u, 5u)], 1810f)))), vec4<bool>(false, false, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true), vec3<f32>(global2[_wgslsmith_index_u32(0u, 5u)], -837f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(4294967295u, 5u)])))));
    let var_3 = Struct_4(vec2<u32>(~var_2.a.x, _wgslsmith_add_u32(var_1.c.x, u_input.c.x)), _wgslsmith_sub_i32(abs(~_wgslsmith_sub_i32(var_0.b, u_input.b)), _wgslsmith_clamp_i32(u_input.b, ~select(-1i, var_0.b, true), -(u_input.b | u_input.a.x))), _wgslsmith_div_vec3_u32(~(~max(global3.zxw, vec3<u32>(14399u, var_0.c.x, 48824u))), vec3<u32>(firstTrailingBit(64173u), 27374u, 11564u << (var_2.a.x % 32u))));
    global0 = -989f;
    var var_4 = _wgslsmith_f_op_f32(var_2.e.x + _wgslsmith_f_op_f32(-var_2.e.x));
    var var_5 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.e.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.c.zw - vec2<f32>(258f, 111f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.e.x, 840f))) - _wgslsmith_f_op_vec2_f32(max(var_2.c.zy, var_2.e.zy))), !var_2.d.wy)))), global2[_wgslsmith_index_u32(var_0.c.x, 5u)], true, Struct_1(_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_1.a.x, var_3.c.x, 15265u), ~vec3<u32>(var_0.a.x, 0u, 1u), ~var_3.c), global3.x, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c.x, global2[_wgslsmith_index_u32(0u, 5u)], 1067f, var_2.e.x) - _wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 5u)], global2[_wgslsmith_index_u32(var_0.c.x, 5u)], var_2.c.x, -794f), var_2.c)))), vec4<bool>(!var_2.d.x, false, var_2.d.x != (2147483647i <= var_1.b), var_1.b < -6103i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(var_3.a.x, 5u)], var_2.e.x, 249f), vec3<f32>(-1092f, -765f, -407f), vec3<bool>(var_2.d.x, true, true)))) + vec3<f32>(_wgslsmith_f_op_f32(var_2.e.x - -535f), -477f, _wgslsmith_f_op_f32(abs(var_2.c.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(-849f, _wgslsmith_f_op_f32(sign(-1053f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -919f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.c.x, var_2.c.x)))), u_input.a.ww & countOneBits(-u_input.a.zz));
}

