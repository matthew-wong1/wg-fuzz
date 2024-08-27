struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec4<bool> {
    global0 = array<bool, 20>();
    global0 = array<bool, 20>();
    global0 = array<bool, 20>();
    let var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(45006u, u_input.b, _wgslsmith_mult_u32(reverseBits(0u), min(0u, u_input.b)), ~10630u) | select(~vec4<u32>(0u, 10035u, 21583u, 80426u), ~(~vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b)), select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 20u)], global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(103570u, 20u)], global0[_wgslsmith_index_u32(u_input.b, 20u)]), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(18621u, 20u)], true, global0[_wgslsmith_index_u32(1u, 20u)]), true)), vec4<u32>(699u, ~u_input.b, u_input.b, u_input.b), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.b, 23110u) << (vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)), vec4<u32>(u_input.b, 1u, u_input.b, u_input.b)) << (~_wgslsmith_sub_vec4_u32(vec4<u32>(16126u, u_input.b, 38740u, 22323u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)) % vec4<u32>(32u)), firstTrailingBit(firstTrailingBit(vec4<u32>(u_input.b, u_input.b, u_input.b, 15122u)))));
    let var_1 = var_0.yx;
    return vec4<bool>(global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(~(~var_0.x), 20u)], all(vec4<bool>(true != global0[_wgslsmith_index_u32(var_0.x, 20u)], true, false, global0[_wgslsmith_index_u32(select(var_0.x, u_input.b, true), 20u)])) && all(select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(13328u, 20u)], global0[_wgslsmith_index_u32(var_0.x, 20u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(1u, 20u)], false, global0[_wgslsmith_index_u32(0u, 20u)]), global0[_wgslsmith_index_u32(55031u, 20u)])), !(-u_input.c.x > ~(-1i)) || true);
}

fn func_2(arg_0: f32, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = ~u_input.b;
    let var_1 = Struct_1(func_3());
    var var_2 = max(vec4<u32>(_wgslsmith_add_u32(u_input.b, ~min(5814u, u_input.b)), var_0, 4294967295u, ~u_input.b | 19183u), abs(vec4<u32>(~u_input.b, 40874u, ~(var_0 << (4294967295u % 32u)), (u_input.b ^ u_input.b) >> (u_input.b % 32u))));
    var_2 = select(vec4<u32>(~var_2.x, _wgslsmith_clamp_u32(var_0, ~firstTrailingBit(var_2.x), 1u << (_wgslsmith_dot_vec2_u32(vec2<u32>(33017u, var_0), vec2<u32>(var_2.x, var_0)) % 32u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0, var_2.x), ~firstLeadingBit(vec2<u32>(var_2.x, u_input.b))), var_2.x), reverseBits(firstTrailingBit(vec4<u32>(4294967295u, 1u, ~var_2.x, _wgslsmith_mult_u32(var_2.x, var_0)))), vec4<bool>(var_1.a.x, false, var_1.a.x, all(vec2<bool>(true, any(arg_1.yx)))));
    var_2 = abs(_wgslsmith_div_vec4_u32(min(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, var_0, 12505u, var_0), firstTrailingBit(vec4<u32>(27760u, var_0, 4294967295u, 4294967295u))), ~min(vec4<u32>(var_0, var_2.x, 1u, 23941u), vec4<u32>(var_2.x, var_0, var_0, 64310u))), vec4<u32>(_wgslsmith_mult_u32(firstTrailingBit(u_input.b), u_input.b), _wgslsmith_add_u32(9288u, firstTrailingBit(1u)), firstTrailingBit(_wgslsmith_add_u32(var_2.x, 44399u)), 0u)));
    return var_1;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(!arg_3.a);
    let var_1 = vec4<f32>(-813f, _wgslsmith_f_op_f32(floor(-648f)), _wgslsmith_f_op_f32(-1211f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2))))), _wgslsmith_f_op_f32(f32(-1f) * -740f));
    var var_2 = !(!(!func_2(_wgslsmith_div_f32(786f, arg_2), var_0.a.zwx).a.wx));
    var_2 = select(vec2<bool>(select(true, var_0.a.x, var_0.a.x), !var_2.x), !arg_1.a.xz, true);
    var var_3 = _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1096f))), _wgslsmith_f_op_f32(min(-207f, _wgslsmith_f_op_f32(f32(-1f) * -399f)))))));
    return func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(652f * arg_0.x))), _wgslsmith_f_op_f32(trunc(-113f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(step(arg_2, var_1.x))))), vec3<bool>(!(var_0.a.x & true), !(!global0[_wgslsmith_index_u32(~u_input.b, 20u)]), !arg_1.a.x));
}

fn func_1() -> bool {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1297f, -2036f, _wgslsmith_f_op_f32(1000f - -1173f), _wgslsmith_f_op_f32(f32(-1f) * -1043f)), vec4<f32>(_wgslsmith_f_op_f32(sign(635f)), _wgslsmith_f_op_f32(f32(-1f) * -237f), 1505f, _wgslsmith_f_op_f32(f32(-1f) * -260f)))), Struct_1(!select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(u_input.b, 20u)], global0[_wgslsmith_index_u32(66216u, 20u)], true), select(vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(u_input.b, 20u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 20u)], true, true), vec4<bool>(true, global0[_wgslsmith_index_u32(53711u, 20u)], global0[_wgslsmith_index_u32(u_input.b, 20u)], global0[_wgslsmith_index_u32(8501u, 20u)])), true)), _wgslsmith_f_op_f32(f32(-1f) * -495f), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(215f + _wgslsmith_f_op_f32(abs(1623f)))), !vec3<bool>(!global0[_wgslsmith_index_u32(0u, 20u)], true, any(vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 20u)])))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, -1333f)) - 295f), 1192f))) - 158f);
    let var_2 = false;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(858f))));
    let var_4 = u_input.a.x;
    return func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(max(var_3, 122f)), -125f, _wgslsmith_f_op_f32(max(1523f, 346f)), _wgslsmith_f_op_f32(783f - -490f)), vec4<f32>(_wgslsmith_f_op_f32(var_3 - 662f), _wgslsmith_f_op_f32(-1165f - var_3), -1030f, 1000f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1173f, 232f, var_3)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-829f, var_3, var_3, var_3)))))), Struct_1(func_2(var_3, !vec3<bool>(var_2, var_2, false)).a), _wgslsmith_f_op_f32(ceil(var_3)), Struct_1(!vec4<bool>(!var_2, var_0.a.x, all(var_0.a.wz), !var_2))).a.x;
}

fn func_5(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = ~u_input.c.yyz;
    let var_1 = countOneBits(abs(u_input.c));
    let var_2 = -((_wgslsmith_sub_i32(var_0.x, _wgslsmith_mult_i32(var_0.x, var_0.x)) << (u_input.b % 32u)) >> (min(u_input.b, 52470u) % 32u));
    global0 = array<bool, 20>();
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -1694f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(856f, -1000f)))) * -679f), 371f);
    return func_4(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1316f), 768f), _wgslsmith_f_op_f32(abs(var_3.x)), -1351f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(548f * 357f)))), Struct_1(!vec4<bool>(true, false == arg_0.x, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(359f, var_3.x) * _wgslsmith_f_op_f32(-var_3.x)) * 526f)), Struct_1(arg_0));
}

fn func_6(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = u_input.b >= u_input.b;
    var var_1 = vec2<bool>(arg_0.a.x, !func_5(arg_0.a).a.x);
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(327f, -2571f) - _wgslsmith_f_op_f32(-1402f - -840f)), _wgslsmith_f_op_f32(abs(-524f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(262f, -183f)))));
    let var_4 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(-_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.c.x, u_input.c.x)), u_input.c.x), -reverseBits(_wgslsmith_sub_i32(u_input.c.x, u_input.c.x))), ~min(vec2<i32>(~0i, u_input.a.x), vec2<i32>(-u_input.a.x, u_input.c.x)));
    return Struct_1(arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(vec4<bool>(global0[_wgslsmith_index_u32(select(u_input.b, u_input.b, true) | 27373u, 20u)], global0[_wgslsmith_index_u32(74535u, 20u)], true == (true && global0[_wgslsmith_index_u32(96875u, 20u)]), func_1() && any(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 20u)], global0[_wgslsmith_index_u32(u_input.b, 20u)])))), !func_2(-956f, !(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 20u)], false, global0[_wgslsmith_index_u32(u_input.b, 20u)]))).a.zzy);
    var var_1 = func_6(Struct_1(func_2(_wgslsmith_f_op_f32(952f - _wgslsmith_f_op_f32(1216f - -1509f)), !(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 20u)], true, false))).a), var_0.a.zzw);
    let var_2 = var_1.a.x & (-22275i < (_wgslsmith_clamp_i32(-9370i, ~u_input.c.x, u_input.c.x >> (u_input.b % 32u)) ^ (u_input.a.x | countOneBits(30244i))));
    let var_3 = 1240f;
    let var_4 = -863f;
    var var_5 = func_4(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) - _wgslsmith_div_f32(var_3, var_4)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-422f * var_4)))), var_3, var_4, -273f), Struct_1(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-519f, _wgslsmith_f_op_f32(452f * _wgslsmith_f_op_f32(-var_4)), !var_0.a.x != all(var_0.a))) + 276f), func_5(select(!(!var_0.a), var_0.a, select(!vec4<bool>(false, var_2, var_0.a.x, false), var_1.a, !var_1.a))));
    var var_6 = var_5.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 1u, ~0u), vec3<u32>(firstLeadingBit(abs(0u)), ~(~u_input.b), firstTrailingBit(max(u_input.b, 24001u)))), var_4, 4294967295u);
}

