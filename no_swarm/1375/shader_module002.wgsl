struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<bool>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25> = array<u32, 25>(0u, 4294967295u, 23853u, 4294967295u, 1u, 4294967295u, 4294967295u, 15051u, 16270u, 0u, 60137u, 64265u, 1u, 4370u, 22951u, 6717u, 0u, 86342u, 28758u, 49274u, 26878u, 12551u, 1u, 9231u, 50017u);

var<private> global1: array<i32, 23> = array<i32, 23>(i32(-2147483648), -1i, 1i, -39812i, -47268i, -9885i, 12796i, -1i, -48656i, -27089i, 0i, -53246i, i32(-2147483648), i32(-2147483648), 1i, -52830i, 38673i, 12068i, -1i, i32(-2147483648), 1029i, 1i, 1i);

var<private> global2: Struct_3;

var<private> global3: array<Struct_2, 7>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: Struct_3) -> f32 {
    var var_0 = !arg_3.b.c;
    var_0 = select(select(vec4<bool>(any(select(arg_3.d.c.yz, vec2<bool>(global2.b.c.x, true), var_0.yy)), true, true, var_0.x), arg_1.a.b.c, vec4<bool>(!select(false, var_0.x, arg_2.x), all(select(arg_3.d.c.xw, vec2<bool>(arg_2.x, var_0.x), false)), !any(arg_3.d.c), global2.b.c.x && true)), !select(global2.a.b.c, global2.b.c, all(!vec3<bool>(true, global2.b.c.x, false))), true);
    let var_1 = ~(-vec3<i32>(-global2.b.d, global2.a.b.d, -arg_3.a.b.d) & _wgslsmith_clamp_vec3_i32(vec3<i32>(-arg_1.a.b.d, global2.a.b.d, _wgslsmith_div_i32(-2147483647i, 59149i)), vec3<i32>(arg_3.d.d, arg_1.a.b.d, -2147483647i) >> (u_input.a % vec3<u32>(32u)), select(-vec3<i32>(arg_1.a.b.d, 54400i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 23u)]), vec3<i32>(global1[_wgslsmith_index_u32(48042u, 23u)], 17063i, 0i) ^ vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], arg_3.a.b.d, arg_3.a.b.d), var_0.x)));
    global3 = array<Struct_2, 7>();
    var_0 = select(vec4<bool>(true, true, !all(vec2<bool>(arg_1.a.b.c.x, false)), !var_0.x), vec4<bool>(any(vec3<bool>(global1[_wgslsmith_index_u32(1u, 23u)] == -13719i, global2.e >= -435f, 506f <= arg_1.d.a)), any(var_0.xzz), true || (_wgslsmith_div_i32(0i, 28358i) <= var_1.x), all(arg_1.a.b.c)), arg_1.d.c);
    return 1421f;
}

fn func_2() -> bool {
    global0 = array<u32, 25>();
    global2 = Struct_3(Struct_2(global2.a.a & (u_input.c != abs(global2.c)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.a - 1105f)), _wgslsmith_f_op_f32(func_3(vec2<u32>(0u, u_input.a.x) >> (u_input.a.yx % vec2<u32>(32u)), Struct_3(Struct_2(global2.a.a, Struct_1(-647f, global2.b.b, vec4<bool>(global2.d.c.x, global2.b.c.x, false, true), global2.b.d, 56785u), u_input.a.x, global2.a.d), Struct_1(1030f, -1253f, vec4<bool>(global2.d.c.x, false, false, global2.b.c.x), -5275i, 0u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.a.b.e, 25u)], 25u)], Struct_1(global2.d.a, global2.e, vec4<bool>(false, false, global2.a.b.c.x, false), global2.b.d, global2.c), global2.e), select(global2.d.c.zz, vec2<bool>(global2.a.b.c.x, global2.d.c.x), global2.a.b.c.zy), Struct_3(Struct_2(global2.d.c.x, Struct_1(-162f, 236f, global2.b.c, global1[_wgslsmith_index_u32(4294967295u, 23u)], global2.b.e), 4294967295u, vec2<f32>(global2.e, -2505f)), Struct_1(169f, -1071f, global2.d.c, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 23u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 25u)]), 40048u, Struct_1(-383f, global2.a.d.x, global2.a.b.c, global1[_wgslsmith_index_u32(2311u, 23u)], u_input.a.x), -1611f))), !global2.b.c, 2147483647i, ~reverseBits(u_input.c)), 50509u, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global2.a.b.a * 1836f), _wgslsmith_div_f32(-622f, -1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.d.a, -1258f) + _wgslsmith_f_op_vec2_f32(-global2.a.d)))), global2.d, ~20871u, global2.d, -1000f);
    let var_0 = Struct_5(Struct_4(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.e * -1000f))), -475f, !global2.d.c, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(44866u, global0[_wgslsmith_index_u32(1u, 25u)]), 4294967295u), 23u)], 50528u), Struct_3(Struct_2(false, global2.d, u_input.c, vec2<f32>(global2.b.b, global2.b.b)), global2.a.b, u_input.c >> (global2.d.e % 32u), Struct_1(_wgslsmith_f_op_f32(min(235f, 1540f)), global2.d.a, select(vec4<bool>(global2.d.c.x, global2.b.c.x, global2.b.c.x, global2.d.c.x), global2.b.c, global2.a.b.c), select(global2.b.d, global2.d.d, false), max(54767u, global0[_wgslsmith_index_u32(u_input.a.x, 25u)])), _wgslsmith_f_op_f32(f32(-1f) * -2075f)), global2.a), !(!(!select(vec3<bool>(global2.b.c.x, true, true), vec3<bool>(true, global2.b.c.x, true), global2.b.c.x))));
    var var_1 = vec2<bool>(_wgslsmith_clamp_i32(-(i32(-1i) * -17302i), 2147483647i, ~global1[_wgslsmith_index_u32(~var_0.a.a.e, 23u)]) < _wgslsmith_mult_i32(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(var_0.a.c.c, 23u)], 0i), var_0.a.b.d.d), true);
    global2 = Struct_3(global3[_wgslsmith_index_u32(66039u, 7u)], var_0.a.c.b, firstLeadingBit(21720u), Struct_1(_wgslsmith_div_f32(104f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.a.b.d.b, global2.d.b), _wgslsmith_f_op_f32(f32(-1f) * -220f)))), 1308f, select(!vec4<bool>(global2.a.a, global2.d.c.x, false, true), select(!vec4<bool>(true, var_1.x, var_1.x, var_1.x), select(var_0.a.a.c, vec4<bool>(true, false, false, false), true), vec4<bool>(var_1.x, false, true, false)), select(!var_0.a.b.a.b.c, !vec4<bool>(global2.d.c.x, true, var_0.a.b.a.a, var_0.a.b.d.c.x), true)), ~1i, 0u), _wgslsmith_f_op_f32(138f + -1000f));
    return _wgslsmith_f_op_f32(1876f * _wgslsmith_f_op_f32(-global2.b.b)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global2.b.a))))) * _wgslsmith_f_op_f32(func_3(firstTrailingBit(vec2<u32>(0u, 55965u)), var_0.a.b, global2.b.c.ww, var_0.a.b)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: f32, arg_3: i32) -> u32 {
    global1 = array<i32, 23>();
    var var_0 = !global2.d.c.x;
    var var_1 = Struct_3(Struct_2(func_2(), global2.a.b, _wgslsmith_mult_u32(~_wgslsmith_add_u32(1u, 1u), 1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global2.a.d - arg_1.xy))))), global2.b, _wgslsmith_dot_vec4_u32(select(_wgslsmith_div_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.b.e, 25u)], 25u)], 58885u, 4294967295u, global0[_wgslsmith_index_u32(71196u, 25u)]), vec4<u32>(18747u, 35105u, 91263u, global2.b.e) << (vec4<u32>(20523u, global0[_wgslsmith_index_u32(20576u, 25u)], 0u, global0[_wgslsmith_index_u32(u_input.a.x, 25u)]) % vec4<u32>(32u))), ~(~vec4<u32>(15931u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 25u)], 25u)], global2.d.e, global0[_wgslsmith_index_u32(global2.b.e, 25u)])), global2.b.c), reverseBits(~vec4<u32>(global2.a.c, global2.c, 1u, 4294967295u))), Struct_1(_wgslsmith_f_op_f32(max(arg_2, _wgslsmith_f_op_f32(-778f * arg_1.x))), arg_1.x, vec4<bool>(false, true || arg_0.x, false, global2.b.c.x), 0i, u_input.b), arg_2);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1114f);
    var var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(global2.a.d)), vec2<f32>(_wgslsmith_f_op_f32(ceil(-1316f)), arg_1.x), any(!(!vec3<bool>(false, arg_0.x, arg_0.x))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(195f - -726f), _wgslsmith_f_op_f32(-853f - global2.b.a)), _wgslsmith_f_op_vec2_f32(abs(var_1.a.d)), func_2())), var_1.a.d, select(select(var_1.b.c.xw, select(var_1.b.c.zy, var_1.d.c.zy, true), vec2<bool>(false, false)), select(var_1.a.b.c.zx, vec2<bool>(false, global2.a.a), var_1.b.a < global2.a.b.a), all(var_1.b.c.yww))))));
    return global0[_wgslsmith_index_u32(~u_input.a.x, 25u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 23>();
    let var_0 = vec3<u32>(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.a.zz), 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(select(1u, func_1(global2.a.b.c, vec4<f32>(-1242f, global2.b.b, global2.d.a, -1033f), global2.a.d.x, 23223i), false), countOneBits(max(global0[_wgslsmith_index_u32(global2.d.e, 25u)], 0u))), reverseBits(_wgslsmith_mod_vec2_u32(~u_input.a.yz, ~u_input.a.xy))), _wgslsmith_mult_u32(68129u, _wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.a), abs(vec3<u32>(global0[_wgslsmith_index_u32(55689u, 25u)], 4294967295u, 74154u))) << (firstLeadingBit(u_input.c | 1u) % 32u)));
    global0 = array<u32, 25>();
    global2 = Struct_3(Struct_2(true, Struct_1(_wgslsmith_f_op_f32(min(-1000f, 859f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-332f + global2.b.a)), select(global2.b.c, !vec4<bool>(global2.a.b.c.x, true, global2.a.b.c.x, false), !vec4<bool>(global2.d.c.x, true, true, true)), global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(var_0.x, 25u)], 74174u)), 23u)], ~global0[_wgslsmith_index_u32(func_1(vec4<bool>(true, true, global2.a.a, global2.a.b.c.x), vec4<f32>(global2.b.b, -1172f, global2.d.a, 1000f), 1253f, global2.d.d), 25u)]), global0[_wgslsmith_index_u32(58129u, 25u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2.d.b), 942f))), Struct_1(-2008f, 1000f, !select(select(global2.a.b.c, vec4<bool>(true, global2.b.c.x, global2.b.c.x, global2.a.a), global2.d.c.x), select(global2.a.b.c, vec4<bool>(global2.b.c.x, global2.d.c.x, true, false), false), global2.d.c.x), -global1[_wgslsmith_index_u32(abs(11743u) & _wgslsmith_dot_vec3_u32(var_0, u_input.a), 23u)], ~firstTrailingBit(0u)), 6475u, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1419f - _wgslsmith_f_op_f32(-global2.d.a)) + -1518f), global2.a.b.b, vec4<bool>(global2.a.a, all(select(vec2<bool>(global2.b.c.x, global2.d.c.x), global2.a.b.c.xw, vec2<bool>(true, global2.a.b.c.x))), select(true, global2.d.c.x, true), global2.a.b.d == 26248i), firstLeadingBit(global2.b.d), ~_wgslsmith_mod_u32(52965u, u_input.b)), -1000f);
    global2 = Struct_3(global3[_wgslsmith_index_u32(~(~global2.b.e), 7u)], Struct_1(_wgslsmith_f_op_f32(exp2(global2.b.a)), _wgslsmith_f_op_f32(-global2.a.d.x), select(!vec4<bool>(global2.a.a, false, true, global2.d.c.x), select(!vec4<bool>(true, global2.d.c.x, global2.d.c.x, global2.d.c.x), vec4<bool>(true, true, true, global2.d.c.x), global2.b.c.x), !(!global2.a.b.c)), _wgslsmith_div_i32(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.b.e, var_0.x, var_0.x, u_input.b), vec4<u32>(16332u, 0u, global0[_wgslsmith_index_u32(var_0.x, 25u)], u_input.a.x)), 23u)], -18544i), 17354u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.x, 53017u), var_0), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(var_0.x, global2.a.b.e), 25u)]), 18633u), 25u)], 25u)], global2.d, -486f);
    let var_1 = vec4<bool>(global2.d.c.x, false, any(!global2.a.b.c.zyz), true);
    global0 = array<u32, 25>();
    global3 = array<Struct_2, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global2.a.d))), reverseBits((~vec2<u32>(11882u, 1u) ^ firstLeadingBit(vec2<u32>(16236u, global0[_wgslsmith_index_u32(1u, 25u)]))) << (vec2<u32>(33213u, ~67812u) % vec2<u32>(32u))), ~(~firstLeadingBit(vec4<u32>(26788u, u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 0u) | vec4<u32>(12377u, 4294967295u, 5750u, 21454u))));
}

