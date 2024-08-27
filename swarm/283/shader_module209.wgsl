struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(-671f, 1106f), vec2<f32>(178f, 1000f), vec2<f32>(1406f, -1126f), vec2<f32>(-1384f, 445f), vec2<f32>(-635f, -1135f), vec2<f32>(1037f, -1033f), vec2<f32>(1628f, -1340f), vec2<f32>(-1203f, -613f), vec2<f32>(-322f, 399f), vec2<f32>(1380f, 1161f), vec2<f32>(-623f, 491f), vec2<f32>(368f, 593f), vec2<f32>(-879f, 1297f));

var<private> global2: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(true, Struct_1(vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(vec2<i32>(-1i, 0i)), true), Struct_3(false, Struct_1(vec2<i32>(35322i, -3722i)), Struct_1(vec2<i32>(-1i, 6053i)), true), Struct_3(false, Struct_1(vec2<i32>(8659i, i32(-2147483648))), Struct_1(vec2<i32>(i32(-2147483648), 1i)), false), Struct_3(true, Struct_1(vec2<i32>(13864i, 1i)), Struct_1(vec2<i32>(0i, 37087i)), false));

var<private> global3: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(Struct_1(vec2<i32>(2147483647i, -1485i)), 47516u, 5712u, 1u), Struct_2(Struct_1(vec2<i32>(-34537i, -11024i)), 0u, 0u, 1u), Struct_2(Struct_1(vec2<i32>(1i, -50125i)), 1u, 72032u, 84340u), Struct_2(Struct_1(vec2<i32>(54639i, 2147483647i)), 88513u, 1u, 24842u), Struct_2(Struct_1(vec2<i32>(0i, 2147483647i)), 0u, 26220u, 37628u), Struct_2(Struct_1(vec2<i32>(1i, -13754i)), 1u, 0u, 30023u), Struct_2(Struct_1(vec2<i32>(2147483647i, 8480i)), 58203u, 1u, 62211u), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -6080i)), 1u, 65584u, 4294967295u), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 2147483647i)), 14695u, 53317u, 25486u), Struct_2(Struct_1(vec2<i32>(-1i, -1778i)), 80882u, 0u, 1u), Struct_2(Struct_1(vec2<i32>(27316i, 0i)), 38240u, 43645u, 42481u), Struct_2(Struct_1(vec2<i32>(-45296i, 2147483647i)), 30192u, 15107u, 0u), Struct_2(Struct_1(vec2<i32>(31119i, 1i)), 13452u, 24594u, 4294967295u), Struct_2(Struct_1(vec2<i32>(32255i, 20082i)), 4294967295u, 84383u, 21522u), Struct_2(Struct_1(vec2<i32>(2147483647i, -24142i)), 4294967295u, 1u, 1u), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -63589i)), 1u, 38931u, 9308u), Struct_2(Struct_1(vec2<i32>(18701i, 39003i)), 4294967295u, 48063u, 65613u), Struct_2(Struct_1(vec2<i32>(42274i, 1i)), 1u, 35477u, 1u), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -5424i)), 45800u, 57519u, 0u), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -435i)), 66356u, 4294967295u, 4294967295u), Struct_2(Struct_1(vec2<i32>(4762i, 13251i)), 1u, 0u, 39651u));

var<private> global4: array<bool, 32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> bool {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-251f * -498f));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a)))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(1u, 13u)]);
    var var_3 = global2[_wgslsmith_index_u32(~u_input.a | 4294967295u, 4u)];
    let var_4 = var_3.c;
    return ~(~abs(4294967295u) ^ firstTrailingBit(u_input.b)) <= reverseBits(~(~_wgslsmith_sub_u32(0u, u_input.b)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    global0 = vec4<bool>(false, !(u_input.c.x != select(u_input.c.x, ~u_input.c.x, !global4[_wgslsmith_index_u32(u_input.b, 32u)])), global4[_wgslsmith_index_u32(u_input.b, 32u)], func_3() && true);
    global3 = array<Struct_2, 21>();
    global1 = array<vec2<f32>, 13>();
    var var_0 = abs(select(_wgslsmith_clamp_i32(abs(_wgslsmith_add_i32(1i, u_input.c.x)), -u_input.c.x ^ (i32(-1i) * -1i), -18451i & (u_input.c.x | u_input.c.x)), ~_wgslsmith_dot_vec2_i32(~vec2<i32>(0i, 1i), u_input.c.wx), (u_input.a >= _wgslsmith_sub_u32(4294967295u, 1u)) || false));
    var_0 = u_input.c.x;
    return Struct_1(u_input.c.yx << ((vec2<u32>(5529u, u_input.b ^ u_input.b) >> (~select(vec2<u32>(76613u, 1840u), vec2<u32>(u_input.b, u_input.a), false) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_2) -> Struct_3 {
    global1 = array<vec2<f32>, 13>();
    var var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(arg_3.d, ~1u), 4u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -540f)), 1103f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1492f, -1411f), -183f, any(vec3<bool>(false, false, arg_1.x)))) - _wgslsmith_f_op_f32(floor(1598f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(142f + -1725f) * _wgslsmith_f_op_f32(select(-218f, 2213f, global0.x))) - -572f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(171f, 288f, 756f, 1182f) + vec4<f32>(1886f, 649f, -1591f, 336f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-687f, 1000f, 1890f, 1704f))))));
    global4 = array<bool, 32>();
    global1 = array<vec2<f32>, 13>();
    return Struct_3(arg_0, func_2(var_0.d), Struct_1(abs(vec2<i32>(-58261i, u_input.c.x))), global0.x);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4) -> f32 {
    global4 = array<bool, 32>();
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1085f, _wgslsmith_div_f32(1000f, -1051f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.a, -1159f)) + 193f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -210f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, -203f, 1792f)))))));
    var var_1 = -861f;
    let var_2 = Struct_4(_wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(abs(-1434f))));
    let var_3 = func_1(!(any(vec3<bool>(false, global0.x, true)) != global4[_wgslsmith_index_u32(~max(552u, u_input.a), 32u)]), vec4<bool>(arg_0.a, false || global0.x, !all(vec2<bool>(true, arg_0.d)), abs(min(4294967295u, u_input.b)) <= ~(u_input.b ^ u_input.a)), ~u_input.a, global3[_wgslsmith_index_u32(~reverseBits(1u), 21u)]);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a - arg_1.a) - 876f)));
}

fn func_5(arg_0: i32, arg_1: f32) -> Struct_4 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-924f))), -456f)));
    global3 = array<Struct_2, 21>();
    global1 = array<vec2<f32>, 13>();
    var var_1 = !select(vec4<bool>(all(global0.yy), global0.x == select(global4[_wgslsmith_index_u32(19341u, 32u)], global4[_wgslsmith_index_u32(u_input.b, 32u)], global0.x), !func_1(global4[_wgslsmith_index_u32(u_input.a, 32u)], vec4<bool>(global4[_wgslsmith_index_u32(u_input.b, 32u)], global4[_wgslsmith_index_u32(1205u, 32u)], global0.x, global4[_wgslsmith_index_u32(4294967295u, 32u)]), u_input.b, Struct_2(Struct_1(vec2<i32>(40546i, arg_0)), u_input.b, 32298u, u_input.a)).d, !any(vec4<bool>(global0.x, global4[_wgslsmith_index_u32(4294967295u, 32u)], global0.x, global0.x))), select(!select(vec4<bool>(true, true, global4[_wgslsmith_index_u32(u_input.a, 32u)], global0.x), vec4<bool>(global0.x, global4[_wgslsmith_index_u32(u_input.b, 32u)], true, true), vec4<bool>(false, false, global4[_wgslsmith_index_u32(u_input.b, 32u)], global4[_wgslsmith_index_u32(u_input.a, 32u)])), vec4<bool>(global0.x, global4[_wgslsmith_index_u32(~u_input.a, 32u)], global0.x, true), true), select(vec4<bool>(!global0.x, all(vec3<bool>(global0.x, true, false)), !global4[_wgslsmith_index_u32(4294967295u, 32u)], global0.x), vec4<bool>(global0.x, any(vec4<bool>(global4[_wgslsmith_index_u32(71544u, 32u)], global0.x, true, global4[_wgslsmith_index_u32(18902u, 32u)])), -199f >= arg_1, global0.x), select(vec4<bool>(true, false, false, false), vec4<bool>(global4[_wgslsmith_index_u32(1u, 32u)], global0.x, false, false), global4[_wgslsmith_index_u32(abs(u_input.b), 32u)])));
    var_1 = select(!(!select(vec4<bool>(true, false, global4[_wgslsmith_index_u32(1u, 32u)], global4[_wgslsmith_index_u32(0u, 32u)]), select(vec4<bool>(true, global4[_wgslsmith_index_u32(4294967295u, 32u)], true, var_1.x), vec4<bool>(true, global0.x, false, global0.x), false), vec4<bool>(global0.x, global0.x, true, true))), vec4<bool>((-1206f == _wgslsmith_f_op_f32(round(var_0.a))) & all(select(vec4<bool>(true, false, var_1.x, global4[_wgslsmith_index_u32(4294967295u, 32u)]), vec4<bool>(global0.x, false, var_1.x, false), vec4<bool>(true, true, true, global4[_wgslsmith_index_u32(u_input.b, 32u)]))), true, !(all(global0.zy) & all(vec2<bool>(var_1.x, true))), all(vec3<bool>(func_3(), true, global0.x))), true);
    return Struct_4(arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(firstLeadingBit(min(abs(u_input.c.x), -31352i)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(func_1(global4[_wgslsmith_index_u32(u_input.b, 32u)], vec4<bool>(true, global0.x, global0.x, global4[_wgslsmith_index_u32(0u, 32u)]), u_input.a, global3[_wgslsmith_index_u32(u_input.b, 21u)]), Struct_4(125f))), -1379f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1073f, 1351f, -612f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1055f, var_0.a, var_0.a) * vec3<f32>(var_0.a, -498f, -1001f))))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), var_1.x, _wgslsmith_f_op_f32(ceil(var_0.a))));
    var_0 = func_5(20298i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - var_0.a))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.x, var_1.x, global0.x))))));
    let var_3 = Struct_2(func_2(any(select(!vec3<bool>(global4[_wgslsmith_index_u32(0u, 32u)], global4[_wgslsmith_index_u32(u_input.a, 32u)], global4[_wgslsmith_index_u32(u_input.b, 32u)]), vec3<bool>(true, true, true), !global0.x))), ~(~(~15805u)) & _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(56711u, u_input.a, u_input.b, u_input.b), vec4<u32>(u_input.a, 0u, u_input.a, u_input.b)), ~(u_input.b | 4294967295u)), _wgslsmith_clamp_u32(countOneBits(u_input.b), 14835u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 0u), vec4<u32>(65254u, u_input.a, 7481u, u_input.a)) & 4294967295u), 13541u);
    let var_4 = func_1(any(vec3<bool>(global0.x, global4[_wgslsmith_index_u32(~_wgslsmith_add_u32(var_3.d, 2416u), 32u)], true)), vec4<bool>(any(select(!vec4<bool>(false, true, global0.x, true), vec4<bool>(global4[_wgslsmith_index_u32(u_input.b, 32u)], global4[_wgslsmith_index_u32(1u, 32u)], global4[_wgslsmith_index_u32(33431u, 32u)], global4[_wgslsmith_index_u32(var_3.c, 32u)]), vec4<bool>(true, true, true, global4[_wgslsmith_index_u32(0u, 32u)]))), any(!vec4<bool>(global0.x, global0.x, global0.x, true)), func_3(), any(!select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(true, true, false, global0.x), vec4<bool>(global4[_wgslsmith_index_u32(1u, 32u)], false, true, false)))), _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(_wgslsmith_div_u32(0u, 4294967295u)), ~var_3.d), ~select(abs(vec2<u32>(4294967295u, var_3.d)), vec2<u32>(4294967295u, u_input.b), select(vec2<bool>(false, global0.x), vec2<bool>(false, global4[_wgslsmith_index_u32(1u, 32u)]), global0.yy))), global3[_wgslsmith_index_u32(min(~(~u_input.a >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 35983u, u_input.b, u_input.a), vec4<u32>(u_input.a, var_3.c, u_input.b, var_3.b)) % 32u)), firstLeadingBit(~(~var_3.b))), 21u)]).b;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(~u_input.a, ~4294967295u)), 4294967295u);
}

