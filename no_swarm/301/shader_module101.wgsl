struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: vec4<bool>,
    d: f32,
    e: bool,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 10>;

var<private> global1: array<vec4<bool>, 11>;

var<private> global2: Struct_2;

var<private> global3: i32 = i32(-2147483648);

var<private> global4: array<i32, 2>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_5, arg_2: u32) -> vec2<u32> {
    global3 = arg_0.d;
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-391f, _wgslsmith_f_op_f32(913f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-216f)), _wgslsmith_div_f32(-1015f, -382f))), 623f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-234f, -777f) + 851f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1019f - -1613f))))));
    return _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(24565u, _wgslsmith_mod_u32(u_input.a, 44609u) >> (65666u % 32u)), max(countOneBits(abs(vec2<u32>(31097u, 4294967295u))), ~vec2<u32>(0u, 1u))), min(~(max(vec2<u32>(25571u, 1u), vec2<u32>(76564u, arg_2)) >> (max(vec2<u32>(16781u, arg_2), vec2<u32>(arg_0.c.b, global2.a.b)) % vec2<u32>(32u))), ~abs(~vec2<u32>(u_input.a, 71045u))));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec3<f32>, arg_3: vec2<u32>) -> bool {
    var var_0 = Struct_3(global2.c, arg_2.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(arg_2.x, -642f)), arg_2.x, _wgslsmith_f_op_f32(trunc(-1000f)), arg_2.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-490f, arg_2.x, arg_2.x, arg_2.x) * vec4<f32>(arg_2.x, arg_2.x, -377f, arg_2.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-203f, arg_2.x, 233f, arg_2.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, -366f, 1038f) - vec4<f32>(-590f, -588f, arg_2.x, arg_2.x))))));
    global2 = Struct_2(var_0.a, Struct_1(~firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.b, u_input.b)), ~_wgslsmith_clamp_u32(var_0.a.b, arg_0, global2.b.b)), Struct_1(1i, u_input.a), (2147483647i >> (~arg_0 % 32u)) << (~u_input.a % 32u));
    let var_1 = arg_0;
    global1 = array<vec4<bool>, 11>();
    let var_2 = Struct_5(!(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true), select(false, true, true))));
    return var_2.a.x & var_2.a.x;
}

fn func_2() -> Struct_3 {
    var var_0 = true;
    var_0 = func_4(~1u, reverseBits(~select(1u, ~u_input.a, false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-167f, -1697f)), 333f, _wgslsmith_div_f32(-1165f, -1000f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1000f - 702f), _wgslsmith_f_op_f32(f32(-1f) * -366f), _wgslsmith_f_op_f32(f32(-1f) * -156f)))), func_3(Struct_2(global2.a, global2.b, global2.b, u_input.b.x), Struct_5(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), reverseBits(4294967295u) & _wgslsmith_mult_u32(u_input.a, abs(1u))));
    var_0 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-484f)), -1837f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(415f)), -1428f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1635f * 500f)))));
    let var_1 = Struct_2(Struct_1(-1i, _wgslsmith_mult_u32(global2.b.b, 0u)), global2.a, global2.b, ~(-_wgslsmith_mult_i32(global4[_wgslsmith_index_u32(~u_input.a, 2u)], global2.d)));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(992f, 1000f, true))), -611f), _wgslsmith_f_op_f32(f32(-1f) * -1881f), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(820f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1723f, -620f, 247f, -286f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(461f, -1340f, 206f, 780f) - vec4<f32>(542f, -825f, -1473f, 1318f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(530f, 185f, 653f, 851f) * vec4<f32>(-1032f, -1317f, -483f, -301f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(126f, 1339f, -2722f, 276f) * vec4<f32>(-2693f, 783f, -1352f, -1168f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-479f, -816f, -767f, -794f) - vec4<f32>(778f, 163f, 1584f, 1204f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1000f, -471f, 1047f)))));
    return Struct_3(Struct_1(max(firstLeadingBit(2147483647i), _wgslsmith_mult_i32(global4[_wgslsmith_index_u32(1u, 2u)], _wgslsmith_div_i32(1i, 10817i))), ~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(15824u, var_1.c.b, 90715u), ~17090u, 1u)), var_2.x, var_2);
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: Struct_5, arg_3: vec3<f32>) -> vec2<u32> {
    var var_0 = abs(abs(u_input.b) & u_input.b);
    global0 = array<vec4<i32>, 10>();
    global1 = array<vec4<bool>, 11>();
    var var_1 = func_2();
    global3 = 40716i;
    return ~(~_wgslsmith_div_vec2_u32(~(~vec2<u32>(arg_0, arg_0)), func_3(Struct_2(var_1.a, global2.b, var_1.a, global4[_wgslsmith_index_u32(4294967295u, 2u)]), arg_2, _wgslsmith_mod_u32(global2.b.b, var_1.a.b))));
}

fn func_5(arg_0: u32) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -720f, _wgslsmith_f_op_f32(select(598f, 1326f, true))))))));
    var var_1 = Struct_3(Struct_1(-32408i, 50201u), -631f, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(531f, var_0.x, -1000f, 770f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-850f, var_0.x, -983f, var_0.x), vec4<f32>(var_0.x, -1805f, -1026f, var_0.x), false))), vec4<f32>(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(select(var_0.x, 1343f, true)), var_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1849f, var_0.x, var_0.x, -1485f), vec4<f32>(var_0.x, 1875f, 1842f, 511f), vec4<bool>(false, false, true, true))) - vec4<f32>(187f, var_0.x, -1673f, -2060f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))));
    var var_2 = Struct_4(vec3<bool>(35122u < _wgslsmith_sub_u32(global2.a.b >> (var_1.a.b % 32u), ~4294967295u), -(var_1.a.a | global4[_wgslsmith_index_u32(4294967295u, 2u)]) >= (-2147483647i << (firstTrailingBit(2432u) % 32u)), !any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - var_1.b), -254f)), select(vec4<bool>(true, !(-1000f > var_1.c.x), true, true), !vec4<bool>(var_0.x < var_1.c.x, all(vec3<bool>(false, false, true)), true, arg_0 != global2.c.b), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), true))), _wgslsmith_f_op_f32(abs(var_0.x)), func_4(7075u, _wgslsmith_sub_u32(reverseBits(arg_0), 21526u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, 802f, var_1.b), var_1.c.xwx, vec3<bool>(true, false, true)))))), ~vec2<u32>(0u, global2.c.b)));
    let var_3 = Struct_2(func_2().a, var_1.a, global2.c, _wgslsmith_mult_i32(_wgslsmith_mod_i32(-33745i, 33091i), abs(u_input.b.x)));
    var_2 = Struct_4(select(var_2.a, vec3<bool>(true, true, true), var_2.a.x), var_0.x, select(select(select(!global1[_wgslsmith_index_u32(var_3.a.b, 11u)], vec4<bool>(false, false, var_2.c.x, true), all(var_2.c.wx)), vec4<bool>(var_1.a.a <= u_input.b.x, true, false, any(var_2.c)), vec4<bool>(false, false, !var_2.e, var_2.e)), global1[_wgslsmith_index_u32(min(firstTrailingBit(var_1.a.b << (4294967295u % 32u)), _wgslsmith_sub_u32(reverseBits(82465u), 1u)), 11u)], global1[_wgslsmith_index_u32(4294967295u, 11u)]), -1087f, var_2.e);
    return Struct_5(var_2.a.zx);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<i32, 2>();
    var var_0 = u_input.b;
    var var_1 = func_5(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(global2.c.b, global2.c.b) & func_1(0u, -2124f, Struct_5(vec2<bool>(true, false)), vec3<f32>(540f, 1117f, 403f)), vec2<u32>(u_input.a, func_1(u_input.a, -1128f, Struct_5(vec2<bool>(false, false)), vec3<f32>(-834f, 797f, -2052f)).x)), u_input.a));
    let var_2 = func_5(0u).a;
    var_1 = func_5(5306u);
    let var_3 = ~vec4<u32>(global2.c.b, firstLeadingBit(~(~u_input.a)), 40442u, abs(~firstLeadingBit(19491u)));
    var var_4 = u_input.b;
    let var_5 = global2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(sign(-597f)), -443f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-522f, 1196f, -838f)) * vec3<f32>(_wgslsmith_f_op_f32(sign(1291f)), 1000f, -1000f))), ~max(u_input.a | u_input.a, ~global2.a.b << (u_input.a % 32u)));
}

