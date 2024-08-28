struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3>;

var<private> global1: array<vec3<i32>, 13> = array<vec3<i32>, 13>(vec3<i32>(i32(-2147483648), 14277i, -2250i), vec3<i32>(10960i, -38687i, -10152i), vec3<i32>(0i, -46649i, 1i), vec3<i32>(18070i, i32(-2147483648), 1i), vec3<i32>(-18218i, -67546i, 1i), vec3<i32>(-23646i, -38100i, 0i), vec3<i32>(-23913i, 28549i, -19631i), vec3<i32>(18583i, i32(-2147483648), i32(-2147483648)), vec3<i32>(2147483647i, i32(-2147483648), -1i), vec3<i32>(-9096i, 1i, -1i), vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), vec3<i32>(-11323i, i32(-2147483648), 1i), vec3<i32>(-1i, i32(-2147483648), 2147483647i));

var<private> global2: array<vec4<u32>, 14>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: vec4<f32>) -> bool {
    var var_0 = vec2<i32>(u_input.a, _wgslsmith_dot_vec2_i32(firstLeadingBit(select(~vec2<i32>(u_input.a, 22518i), ~vec2<i32>(-2788i, u_input.a), !vec2<bool>(false, arg_0))), vec2<i32>(u_input.a, (u_input.a >> (1u % 32u)) << (4294967295u % 32u))));
    var_0 = vec2<i32>(var_0.x, _wgslsmith_mod_i32(23260i, 1i));
    var_0 = vec2<i32>(i32(-1i) * -(~max(0i, u_input.a)), firstTrailingBit(u_input.a));
    var var_1 = Struct_5(vec2<u32>(1u, 1u));
    global2 = array<vec4<u32>, 14>();
    return _wgslsmith_div_u32(21116u, var_1.a.x) != 38097u;
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> vec4<i32> {
    global2 = array<vec4<u32>, 14>();
    var var_0 = true;
    let var_1 = Struct_4(arg_1);
    let var_2 = ~38552u;
    global0 = array<i32, 3>();
    return vec4<i32>(u_input.a >> (_wgslsmith_mod_u32(countOneBits(select(0u, 48338u, false)), ~(~var_2)) % 32u), firstLeadingBit(global0[_wgslsmith_index_u32(~firstLeadingBit(~var_2), 3u)]), _wgslsmith_sub_i32(firstLeadingBit(u_input.a), reverseBits(min(0i, reverseBits(-1i)))), 1i);
}

fn func_2() -> f32 {
    global0 = array<i32, 3>();
    var var_0 = vec4<i32>(~_wgslsmith_mult_i32(-38443i, u_input.a) & 53095i, u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(~(-13713i), 0i), ~1i, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(73249u, 3u)], 0i), -global1[_wgslsmith_index_u32(4294967295u, 13u)]), u_input.a), vec4<i32>(u_input.a, ~(u_input.a << (4294967295u % 32u)), _wgslsmith_clamp_i32(2147483647i, _wgslsmith_clamp_i32(u_input.a, global0[_wgslsmith_index_u32(0u, 3u)], -2147483647i), global0[_wgslsmith_index_u32(4294967295u, 3u)] | u_input.a), ~reverseBits(-2147483647i))), _wgslsmith_add_i32(i32(-1i) * -37596i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(1u, 1u, 50488u)), vec3<u32>(25780u, 13311u, 4294967295u)), min(vec3<u32>(52843u, 21022u, 1u), vec3<u32>(12671u, 90710u, 4294967295u))), 3u)]));
    global1 = array<vec3<i32>, 13>();
    var_0 = max(firstLeadingBit(func_4(func_3(global0[_wgslsmith_index_u32(26644u, 3u)] > -20768i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1000f, 839f, 1434f)), vec4<f32>(-812f, 525f, -1418f, -1116f)), Struct_2(Struct_1(vec3<f32>(-1119f, -199f, 408f)), vec2<f32>(-295f, -1042f)))), _wgslsmith_mult_vec4_i32(min(-(vec4<i32>(var_0.x, global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(22366u, 3u)], 0i) | vec4<i32>(var_0.x, u_input.a, -50523i, 2147483647i)), select(vec4<i32>(-15526i, 1i, -2147483647i, global0[_wgslsmith_index_u32(72537u, 3u)]), vec4<i32>(2147483647i, u_input.a, -2147483647i, u_input.a), vec4<bool>(true, true, true, false)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(-20605i, 1i, -57337i, global0[_wgslsmith_index_u32(0u, 3u)]), vec4<i32>(-19543i, 21579i, 0i, 18866i))), vec4<i32>(25132i, _wgslsmith_dot_vec2_i32(var_0.zz, -vec2<i32>(u_input.a, -19189i)), ~1i, _wgslsmith_mod_i32(-21954i, u_input.a >> (0u % 32u)))));
    global2 = array<vec4<u32>, 14>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-1037f, -519f)), -2398f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-268f * 884f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - -268f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-2359f, 952f))), -2044f, true))));
}

fn func_5(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_5) -> i32 {
    let var_0 = arg_1.yz;
    let var_1 = Struct_1(vec3<f32>(-720f, -295f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -645f)), _wgslsmith_f_op_f32(sign(-231f))))));
    var var_2 = Struct_4(Struct_2(var_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, 1000f))))));
    let var_3 = any(select(select(!vec3<bool>(false, false, arg_0), select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, arg_0, arg_0), select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(true, false, false), arg_0)), !arg_0), select(select(vec3<bool>(true, false, false), select(vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, true, false), arg_0), true), vec3<bool>(arg_0 | true, any(vec3<bool>(arg_0, false, false)), true), all(select(vec3<bool>(arg_0, false, false), vec3<bool>(false, true, arg_0), arg_0))), select(vec3<bool>(var_0.x >= -265f, !arg_0, true), vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 3u)] <= global0[_wgslsmith_index_u32(17298u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)] <= global0[_wgslsmith_index_u32(0u, 3u)]), true | all(vec4<bool>(arg_0, arg_0, arg_0, arg_0)))));
    let var_4 = ~firstLeadingBit(global1[_wgslsmith_index_u32(~(~36222u), 13u)] << (vec3<u32>(27886u, arg_3.a.x | arg_3.a.x, ~arg_3.a.x) % vec3<u32>(32u)));
    return firstTrailingBit(u_input.a);
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> vec2<i32> {
    var var_0 = firstLeadingBit(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~31599u), firstTrailingBit(firstTrailingBit(0u))), 3u)], _wgslsmith_mod_i32(i32(-1i) * -u_input.a, abs(u_input.a))));
    var var_1 = _wgslsmith_mod_i32(-1i ^ (global0[_wgslsmith_index_u32(~28935u, 3u)] & firstTrailingBit(firstLeadingBit(global0[_wgslsmith_index_u32(1u, 3u)]))), func_5((false || (-575f == arg_1)) || !select(false, false, false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(arg_0.b.x + 416f), 488f)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0.a.a, vec3<f32>(-628f, arg_0.b.x, arg_1), false)) + _wgslsmith_f_op_vec3_f32(arg_0.a.a - arg_0.a.a))), Struct_5(vec2<u32>(1u, ~22425u))));
    let var_2 = vec4<u32>(16816u, 0u, 15904u, _wgslsmith_dot_vec4_u32((global2[_wgslsmith_index_u32(~1u, 14u)] << (_wgslsmith_mod_vec4_u32(global2[_wgslsmith_index_u32(1u, 14u)], vec4<u32>(6813u, 1u, 4294967295u, 0u)) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_clamp_u32(25412u, 36008u, 37869u), 1u, 27342u, ~28297u) % vec4<u32>(32u)), abs(~vec4<u32>(31244u, 26427u, 1u, 51289u))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1, _wgslsmith_div_f32(-861f, arg_0.a.a.x), -161f, -986f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.b.x, 493f, arg_0.a.a.x, arg_0.a.a.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-272f, arg_1, arg_0.a.a.x, arg_0.b.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, arg_0.a.a.x, 611f, arg_1)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 518f, -808f, 1538f)))))));
    var var_4 = arg_0;
    return vec2<i32>(-1i) * -vec2<i32>(min(min(u_input.a, u_input.a), -global0[_wgslsmith_index_u32(var_2.x, 3u)]), (u_input.a >> (var_2.x % 32u)) & -17065i);
}

fn func_6(arg_0: vec2<i32>) -> i32 {
    let var_0 = Struct_4(Struct_2(Struct_1(vec3<f32>(-1000f, _wgslsmith_f_op_f32(1357f - 503f), _wgslsmith_f_op_f32(min(-752f, 209f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(291f)), -337f))));
    global1 = array<vec3<i32>, 13>();
    global2 = array<vec4<u32>, 14>();
    let var_1 = var_0;
    var var_2 = var_1.a.b.x;
    return func_5(true, var_1.a.a.a, var_0.a.a, Struct_5(~vec2<u32>(1u, 1u)));
}

fn func_7(arg_0: i32, arg_1: vec4<i32>) -> Struct_3 {
    var var_0 = -357f;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(449f, -185f, 624f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(876f, -1835f, -329f), vec3<f32>(-533f, -1437f, -1000f), vec3<bool>(false, false, false)))))))));
    let var_2 = arg_1.x;
    var var_3 = Struct_3(Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(1268f - var_1.a.x), -399f, _wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_vec2_f32(-var_1.a.xx)));
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(var_1.a, var_1.a, vec3<bool>(false, false, true))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.a.x, 156f, 1252f), vec3<f32>(964f, var_1.a.x, 490f))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)))))) * vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x)));
    return Struct_3(var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-607f, 267f, -694f))), vec2<f32>(-1791f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1300f * 580f)))));
    var var_1 = func_7(func_6(select(~func_1(var_0.a, 165f), countOneBits(min(vec2<i32>(u_input.a, u_input.a), vec2<i32>(global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(41440u, 3u)]))), !select(vec2<bool>(true, false), vec2<bool>(true, false), false))), -_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)], -14623i), -abs(vec4<i32>(global0[_wgslsmith_index_u32(40165u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)], u_input.a))));
    let var_2 = ~_wgslsmith_mult_vec2_u32(vec2<u32>(select(1u, abs(7487u), false), firstLeadingBit(_wgslsmith_mult_u32(29164u, 23222u))), max(vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(11638u, 9807u, 8789u, 86109u), global2[_wgslsmith_index_u32(1u, 14u)]), 1u)));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    global1 = array<vec3<i32>, 13>();
    var_1 = Struct_3(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(-1287f, vec3<u32>(54799u, 0u, 1u));
}

