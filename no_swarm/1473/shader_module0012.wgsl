struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5> = array<f32, 5>(-1000f, 1949f, -706f, -587f, 467f);

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec3<bool>(false, true, true), vec3<u32>(1344u, 72154u, 55951u), vec4<f32>(267f, -1700f, 1239f, 1768f)), Struct_1(vec3<bool>(true, true, true), vec3<u32>(1u, 3246u, 63528u), vec4<f32>(466f, 412f, 1551f, -1000f)), Struct_1(vec3<bool>(false, true, false), vec3<u32>(1u, 4294967295u, 0u), vec4<f32>(-973f, 572f, -1137f, 209f)), Struct_1(vec3<bool>(true, false, false), vec3<u32>(4294967295u, 0u, 1u), vec4<f32>(220f, -902f, 363f, 880f)), Struct_1(vec3<bool>(false, true, true), vec3<u32>(0u, 4294967295u, 14649u), vec4<f32>(827f, -718f, -1151f, 1316f)), Struct_1(vec3<bool>(true, false, true), vec3<u32>(0u, 1u, 1u), vec4<f32>(-696f, -1541f, -293f, -1763f)), Struct_1(vec3<bool>(true, false, false), vec3<u32>(1u, 30918u, 0u), vec4<f32>(568f, 435f, 264f, 411f)), Struct_1(vec3<bool>(true, false, false), vec3<u32>(1930u, 45265u, 0u), vec4<f32>(-466f, -282f, 413f, 1000f)), Struct_1(vec3<bool>(true, true, false), vec3<u32>(1u, 1u, 19617u), vec4<f32>(-546f, -1435f, -807f, -727f)), Struct_1(vec3<bool>(true, false, true), vec3<u32>(26672u, 271u, 1u), vec4<f32>(-1097f, -396f, 144f, 1522f)), Struct_1(vec3<bool>(false, false, false), vec3<u32>(3554u, 1u, 3714u), vec4<f32>(1204f, -697f, 1240f, -504f)), Struct_1(vec3<bool>(false, true, true), vec3<u32>(63571u, 83849u, 1u), vec4<f32>(-1319f, -483f, -307f, -1374f)), Struct_1(vec3<bool>(true, true, false), vec3<u32>(81729u, 4294967295u, 4294967295u), vec4<f32>(-905f, 662f, 396f, -1248f)), Struct_1(vec3<bool>(false, true, false), vec3<u32>(1471u, 17261u, 1u), vec4<f32>(-289f, 583f, -1000f, -1417f)), Struct_1(vec3<bool>(false, false, true), vec3<u32>(43891u, 0u, 4294967295u), vec4<f32>(-263f, -909f, -947f, 1291f)), Struct_1(vec3<bool>(true, true, false), vec3<u32>(15733u, 0u, 4917u), vec4<f32>(-1185f, 1278f, -192f, 857f)), Struct_1(vec3<bool>(true, false, true), vec3<u32>(4294967295u, 0u, 4294967295u), vec4<f32>(-353f, -887f, -1000f, -948f)), Struct_1(vec3<bool>(false, true, true), vec3<u32>(41751u, 6546u, 4294967295u), vec4<f32>(-422f, -159f, -227f, -3424f)), Struct_1(vec3<bool>(true, true, false), vec3<u32>(14350u, 71885u, 105823u), vec4<f32>(799f, -241f, 1136f, -605f)), Struct_1(vec3<bool>(false, false, true), vec3<u32>(0u, 80564u, 41069u), vec4<f32>(-1131f, -1620f, 422f, -1186f)), Struct_1(vec3<bool>(false, true, false), vec3<u32>(0u, 4294967295u, 1u), vec4<f32>(-362f, 1247f, 1000f, -201f)), Struct_1(vec3<bool>(true, false, true), vec3<u32>(1u, 92700u, 4294967295u), vec4<f32>(-1000f, -1320f, -225f, 727f)), Struct_1(vec3<bool>(true, false, true), vec3<u32>(1u, 30670u, 10808u), vec4<f32>(462f, 832f, 130f, -534f)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_1, arg_3: vec4<i32>) -> u32 {
    var var_0 = vec4<bool>(arg_2.a.x, arg_2.a.x, true, arg_2.a.x);
    var_0 = vec4<bool>(!(arg_3.x == ~(~arg_3.x)), all(!vec2<bool>(var_0.x, false)), true | all(!(!vec4<bool>(false, arg_1, true, var_0.x))), all(var_0.xyy));
    var var_1 = vec3<f32>(arg_2.c.x, -817f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0.x, 5u)] * _wgslsmith_f_op_f32(773f - -112f)));
    global1 = array<Struct_1, 23>();
    var_0 = select(select(vec4<bool>(all(vec3<bool>(var_0.x, false, false)), arg_2.a.x, all(var_0.wz), true), vec4<bool>(true && all(var_0.zyz), true, all(!vec4<bool>(var_0.x, arg_2.a.x, false, false)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(27387u, 5u)]) >= _wgslsmith_f_op_f32(select(2960f, global0[_wgslsmith_index_u32(78303u, 5u)], false))), true), select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, var_0.x, false, true), select(vec4<bool>(arg_2.a.x, false, false, arg_2.a.x), vec4<bool>(var_0.x, true, arg_1, var_0.x), vec4<bool>(arg_2.a.x, arg_2.a.x, false, false))), vec4<bool>(var_0.x, var_0.x & false, arg_1, true), vec4<bool>(var_0.x, !arg_2.a.x, arg_1, !arg_1)), select(vec4<bool>(!arg_2.a.x, !arg_1, false, true), vec4<bool>(true, var_1.x == 2373f, !arg_2.a.x, arg_1), select(vec4<bool>(arg_2.a.x, arg_2.a.x, true, arg_1), vec4<bool>(true, arg_2.a.x, var_0.x, false), select(vec4<bool>(false, var_0.x, true, true), vec4<bool>(true, true, arg_2.a.x, var_0.x), true))), select(vec4<bool>(true, true, all(vec4<bool>(var_0.x, var_0.x, var_0.x, arg_2.a.x)), false), select(!vec4<bool>(arg_1, true, true, arg_1), select(vec4<bool>(true, var_0.x, arg_1, false), vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(true, false, false, arg_2.a.x)), !vec4<bool>(arg_1, false, var_0.x, var_0.x)), select(vec4<bool>(false, true, arg_1, true), !vec4<bool>(var_0.x, false, var_0.x, true), true))), select(select(!vec4<bool>(arg_1, var_0.x, false, var_0.x), !(!vec4<bool>(false, var_0.x, arg_2.a.x, false)), !(!vec4<bool>(false, true, false, var_0.x))), !(!select(vec4<bool>(arg_1, arg_1, var_0.x, arg_2.a.x), vec4<bool>(arg_1, true, var_0.x, arg_2.a.x), arg_1)), ((u_input.c.x | 896i) <= _wgslsmith_clamp_i32(-44830i, -21412i, u_input.c.x)) || (false & all(vec4<bool>(false, arg_1, var_0.x, arg_2.a.x)))));
    return 86587u;
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = u_input.c.x;
    let var_1 = arg_0;
    return ~(~_wgslsmith_mod_u32(~u_input.a >> (arg_0.b.x % 32u), func_3(var_1.b | arg_0.b, arg_0.a.x, Struct_1(arg_0.a, vec3<u32>(arg_0.b.x, 0u, var_1.b.x), vec4<f32>(arg_0.c.x, var_1.c.x, var_1.c.x, var_1.c.x)), u_input.c)));
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = -799f;
    global1 = array<Struct_1, 23>();
    var var_1 = arg_0.b.x;
    let var_2 = (vec2<u32>(func_2(Struct_1(vec3<bool>(false, false, true), vec3<u32>(2922u, u_input.b.x, 0u), vec4<f32>(-1865f, global0[_wgslsmith_index_u32(u_input.b.x, 5u)], arg_0.c.x, 138f))), func_3(vec3<u32>(0u, u_input.b.x, 37515u) >> (arg_0.b % vec3<u32>(32u)), false, Struct_1(vec3<bool>(arg_0.a.x, false, true), vec3<u32>(u_input.b.x, 38320u, 0u), vec4<f32>(-964f, 1302f, 676f, -706f)), u_input.c)) >> ((select(vec2<u32>(4294967295u, arg_0.b.x), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.b.x), vec2<u32>(arg_0.b.x, arg_0.b.x)), vec2<bool>(arg_0.a.x, true)) | ~select(vec2<u32>(u_input.b.x, 20120u), u_input.b, vec2<bool>(arg_0.a.x, true))) % vec2<u32>(32u))) ^ ~arg_0.b.xz;
    let var_3 = global1[_wgslsmith_index_u32(firstTrailingBit(max(~61072u, 62952u)) | 1616u, 23u)];
    return 15471u;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> StorageBuffer {
    global1 = array<Struct_1, 23>();
    global0 = array<f32, 5>();
    let var_0 = arg_3;
    var var_1 = Struct_1(!vec3<bool>(true, true, (41778u | arg_2.b.x) < arg_1), ~(~(~(arg_3.b ^ vec3<u32>(65628u, 4294967295u, arg_1)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(517f, 1240f)) - arg_2.c.x)), arg_3.c.x, 983f));
    let var_2 = global0[_wgslsmith_index_u32(firstTrailingBit(25069u), 5u)];
    return StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-940f)), _wgslsmith_f_op_f32(f32(-1f) * -625f), _wgslsmith_f_op_f32(-arg_2.c.x), _wgslsmith_f_op_f32(f32(-1f) * -495f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.c.x, var_1.c.x, 773f, arg_2.c.x) - var_1.c))), ~vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_2.b.x, arg_2.b.x), 25908u), arg_2.b.x), 47447i, global0[_wgslsmith_index_u32(arg_1 | _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(arg_2.b.x, 1u)), ~_wgslsmith_sub_vec2_u32(var_0.b.zy, vec2<u32>(81799u, arg_1))), 5u)], 38378u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(vec3<bool>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(62988u, 5u)]) <= 1314f, !any(vec2<bool>(false, true)), false), !vec3<bool>(true, false, all(vec4<bool>(false, true, true, false))), !vec3<bool>(u_input.c.x >= u_input.c.x, true, false)), vec3<u32>(_wgslsmith_mult_u32(u_input.a, _wgslsmith_mult_u32(select(u_input.b.x, 25162u, true), u_input.a)), 1u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, 7352u, u_input.b.x), vec4<u32>(55877u, 4294967295u, u_input.b.x, u_input.a)), vec4<u32>(0u, 4294967295u, u_input.b.x, 1548u)) ^ _wgslsmith_div_u32(u_input.a >> (u_input.a % 32u), _wgslsmith_div_u32(u_input.a, u_input.a))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1225f, -545f, 1208f, global0[_wgslsmith_index_u32(u_input.a, 5u)]))))))));
    var var_1 = vec2<bool>(var_0.a.x, select(false, false, var_0.a.x && true));
    var var_2 = var_1.x & false;
    let var_3 = countOneBits(u_input.c.x);
    let var_4 = ~(~(var_0.b.x | _wgslsmith_mod_u32(~u_input.b.x, 1u)));
    var var_5 = vec3<i32>(firstLeadingBit(~8576i >> (~var_4 % 32u)), _wgslsmith_dot_vec3_i32(u_input.c.zzy, u_input.c.xww), i32(-1i) * -1i);
    let x = u_input.a;
    s_output = func_4(false, _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.b.x, 25919u), ~(func_1(global1[_wgslsmith_index_u32(u_input.a, 23u)]) << (var_4 % 32u))), Struct_1(select(!var_0.a, select(vec3<bool>(var_0.a.x, false, false), vec3<bool>(true, var_0.a.x, var_1.x), any(vec2<bool>(var_0.a.x, var_0.a.x))), select(true, !var_1.x, var_5.x >= 1i)), var_0.b, var_0.c), Struct_1(var_0.a, var_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c) - var_0.c)));
}

