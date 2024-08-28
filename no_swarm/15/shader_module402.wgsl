struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25> = array<f32, 25>(368f, 1101f, 2154f, 534f, -1252f, -241f, -844f, 928f, 331f, -173f, -1000f, 365f, -1160f, 547f, 1223f, 1477f, 300f, 1572f, -393f, -252f, 532f, 652f, -273f, -453f, -147f);

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec3<f32>(-1120f, 1447f, 267f), vec3<f32>(-155f, 839f, -760f), 24834i, 643f), Struct_1(vec3<f32>(-1452f, 1292f, -1438f), vec3<f32>(1255f, 848f, -356f), -11533i, -110f), Struct_1(vec3<f32>(544f, -1163f, -682f), vec3<f32>(1000f, 268f, 1331f), 10486i, 1000f), Struct_1(vec3<f32>(-1000f, 767f, 1000f), vec3<f32>(1795f, -934f, 368f), -13760i, 1539f), Struct_1(vec3<f32>(911f, 1555f, 167f), vec3<f32>(-439f, -159f, 1048f), 0i, 351f), Struct_1(vec3<f32>(1179f, -2433f, 429f), vec3<f32>(-306f, 1203f, -855f), -1i, 1046f), Struct_1(vec3<f32>(173f, 1631f, 1615f), vec3<f32>(-1241f, 1531f, -847f), -337i, 1132f), Struct_1(vec3<f32>(1000f, -534f, 853f), vec3<f32>(-626f, -644f, -1047f), 0i, -191f), Struct_1(vec3<f32>(-461f, -1341f, 689f), vec3<f32>(367f, 181f, -494f), 1i, 1103f), Struct_1(vec3<f32>(1533f, -743f, -1000f), vec3<f32>(973f, -415f, 620f), 2147483647i, -1164f), Struct_1(vec3<f32>(-472f, -380f, 1003f), vec3<f32>(302f, 1000f, -1102f), i32(-2147483648), 115f), Struct_1(vec3<f32>(1000f, -712f, -717f), vec3<f32>(-1022f, 274f, 1044f), 4548i, 652f), Struct_1(vec3<f32>(-1426f, 782f, -1000f), vec3<f32>(1000f, 962f, 299f), -46698i, 376f), Struct_1(vec3<f32>(-1734f, 346f, -723f), vec3<f32>(-1129f, 1962f, 1041f), 1i, 1000f), Struct_1(vec3<f32>(-1161f, 2505f, -721f), vec3<f32>(477f, 1709f, -586f), 49417i, 621f), Struct_1(vec3<f32>(166f, 684f, -2152f), vec3<f32>(-169f, 120f, 233f), -1i, -913f), Struct_1(vec3<f32>(-285f, 1047f, -126f), vec3<f32>(-228f, -817f, -445f), 0i, 1000f), Struct_1(vec3<f32>(-844f, 1000f, 350f), vec3<f32>(1397f, 703f, -2019f), 2147483647i, 474f), Struct_1(vec3<f32>(1146f, 217f, -1344f), vec3<f32>(-1059f, -532f, -1324f), i32(-2147483648), 539f), Struct_1(vec3<f32>(388f, -582f, 685f), vec3<f32>(-388f, 2095f, -1000f), 45575i, 140f), Struct_1(vec3<f32>(-1070f, -110f, -1004f), vec3<f32>(663f, -812f, -330f), 1i, 944f), Struct_1(vec3<f32>(137f, -258f, -633f), vec3<f32>(727f, 759f, -1371f), 34786i, 732f));

var<private> global2: array<vec4<f32>, 21>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> i32 {
    global2 = array<vec4<f32>, 21>();
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(1249f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b.x - -1000f), global0[_wgslsmith_index_u32(1u, 25u)]))), _wgslsmith_f_op_f32(max(arg_2, _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(39717u, 25u)])))) * -173f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(2744f * -1889f), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(32630u, 25u)])), _wgslsmith_f_op_f32(-arg_2))))), -(~1i), -928f);
    var var_1 = vec4<u32>(1u, 1u, 1u, 1u);
    let var_2 = select(_wgslsmith_add_vec3_i32(~(~vec3<i32>(arg_0, arg_0, 0i) ^ firstTrailingBit(vec3<i32>(arg_0, -34041i, 1i))), firstTrailingBit(~(~vec3<i32>(-19325i, 1i, arg_0)))), _wgslsmith_sub_vec3_i32(-max(vec3<i32>(0i, -36971i, 42952i), vec3<i32>(var_0.c, arg_1.c, 0i)) | _wgslsmith_div_vec3_i32(select(vec3<i32>(arg_0, 37188i, u_input.a), vec3<i32>(arg_0, 29737i, 1i), true), _wgslsmith_mod_vec3_i32(vec3<i32>(22551i, var_0.c, -19555i), vec3<i32>(1i, arg_1.c, u_input.a))), countOneBits(~vec3<i32>(arg_1.c, -1i, -18215i) | countOneBits(vec3<i32>(-1i, -21708i, arg_0)))), true);
    let var_3 = arg_1;
    return -33956i;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> i32 {
    global0 = array<f32, 25>();
    global2 = array<vec4<f32>, 21>();
    global2 = array<vec4<f32>, 21>();
    var var_0 = any(!vec2<bool>(any(vec2<bool>(false, true)) & all(vec2<bool>(false, false)), !select(false, true, false)));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -159f) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(0u, 88732u, 66701u, 0u)), 25u)] + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-930f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(arg_1 - global0[_wgslsmith_index_u32(37016u, 25u)])))));
    return 40604i;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global2 = array<vec4<f32>, 21>();
    var var_0 = func_4(func_3(1778i, arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(566f - _wgslsmith_f_op_f32(1000f - arg_1.d)) + arg_2.a.x)), arg_1.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(arg_0, 25u)])), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(arg_0, 25u)], -339f)))), global0[_wgslsmith_index_u32(0u, 25u)], true)), arg_1);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -353f)), arg_1.d, 476f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-467f + _wgslsmith_f_op_f32(-651f * 1428f))))));
    var var_2 = vec2<u32>(~_wgslsmith_div_u32(~57671u, arg_0), ~5007u) << (~_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(18438u, 6288u)), vec2<u32>(19318u, 0u), ~vec2<u32>(arg_0, arg_0)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, arg_0) >> (vec2<u32>(arg_0, 26668u) % vec2<u32>(32u)), vec2<u32>(56483u, arg_0) >> (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u)), ~vec2<u32>(75903u, arg_0))) % vec2<u32>(32u));
    var_2 = select(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, 30153u))), vec2<u32>(56926u, 62429u), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))) & ~(~(~(~vec2<u32>(4294967295u, var_2.x))));
    return _wgslsmith_sub_u32(arg_0, arg_0);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = any(vec3<bool>(true, arg_2, _wgslsmith_add_u32(0u, _wgslsmith_mod_u32(0u, 1u)) != abs(_wgslsmith_clamp_u32(0u, 0u, 5488u))));
    var_0 = reverseBits(_wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, func_2(0u, global1[_wgslsmith_index_u32(3507u, 22u)], global1[_wgslsmith_index_u32(1u, 22u)])), countOneBits(53989u))) != ~reverseBits(24702u);
    var var_1 = arg_1;
    var var_2 = !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-641f, -888f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.d)) - -1150f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1155f)))));
    var var_3 = (_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(48334u, 23964u, 35057u), ~vec3<u32>(4294967295u, 21540u, 76883u)), _wgslsmith_div_u32(~1056u, 1u)) | 13049u) ^ 1u;
    return _wgslsmith_mult_u32(82902u, ~_wgslsmith_sub_u32(select(45016u, 4294967295u, arg_0), 1u) & firstLeadingBit(_wgslsmith_add_u32(countOneBits(4294967295u), 74851u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(~(countOneBits(1u) ^ ~func_1(false, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 9515u, 4639u, 24743u), vec4<u32>(1u, 1u, 4294967295u, 1u)), 22u)], true)), 22u)];
    let var_1 = 1i;
    global0 = array<f32, 25>();
    global1 = array<Struct_1, 22>();
    global2 = array<vec4<f32>, 21>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 25u)]), -1059f, -1436f)), var_0.a, any(vec4<bool>(true, all(vec3<bool>(false, false, false)), true, false)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.a.x, var_0.b.x, 278f))), abs(func_4(var_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(371f, 789f)), var_0.d), -2083f, global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(21424u, 25532u), 22u)])), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(1u, 25u)])));
    let x = u_input.a;
    s_output = StorageBuffer(max(~vec2<u32>(1u << (0u % 32u), 1u), vec2<u32>(reverseBits(38431u), min(4294967295u, 109885u)) | _wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), abs(vec2<u32>(7963u, 48176u)), vec2<u32>(4294967295u, 70449u))), ~vec2<i32>(_wgslsmith_add_i32(u_input.a, -2147483647i | var_2.c), abs(-61807i)));
}

