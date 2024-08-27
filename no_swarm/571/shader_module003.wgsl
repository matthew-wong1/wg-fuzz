struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
    c: Struct_3,
    d: vec4<u32>,
    e: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 21>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-897f, _wgslsmith_f_op_f32(188f * 1157f), -994f), vec3<f32>(_wgslsmith_f_op_f32(min(234f, -202f)), 869f, -274f), true))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1778f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-218f, -1000f))))) * 1000f), 0u, Struct_1(vec4<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-2147483647i, 12900i, 0i, -14800i)), countOneBits(vec4<i32>(1i, 2147483647i, 2147483647i, -2147483647i))), 1i, 1i, 1i), vec3<bool>(true, select(all(vec4<bool>(true, false, true, false)), true, u_input.a.x <= 45287u), true), global0[_wgslsmith_index_u32(u_input.a.x << (firstLeadingBit(u_input.a.x) % 32u), 21u)]));
    var var_1 = select(select(var_0.e.c.zy, vec2<bool>(!any(vec3<bool>(var_0.e.c.x, var_0.e.b.x, false)), false), !select(vec2<bool>(false, var_0.e.c.x), vec2<bool>(true, true), all(global0[_wgslsmith_index_u32(u_input.a.x, 21u)]))), !vec2<bool>(any(!var_0.e.b.xx), all(select(vec3<bool>(var_0.e.c.x, true, true), vec3<bool>(var_0.e.c.x, false, true), vec3<bool>(false, var_0.e.b.x, var_0.e.c.x)))), var_0.e.b.yz);
    let var_2 = vec2<bool>(true, true);
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.a.x)), _wgslsmith_f_op_f32(exp2(var_0.a.x)), _wgslsmith_f_op_f32(sign(1214f)), _wgslsmith_f_op_f32(abs(-2040f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1006f, -1547f, var_0.c, var_0.a.x)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(782f, var_0.c, -339f, var_0.b))))))));
}

fn func_2(arg_0: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())) * vec4<f32>(168f, _wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1451f))), _wgslsmith_f_op_f32(f32(-1f) * -409f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1192f, -1606f))))));
    var var_1 = reverseBits(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, max(39512i, -7323i), 1i, ~(-3607i)), vec4<i32>(0i, -1i, _wgslsmith_sub_i32(-1i, 52477i), ~2147483647i)));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_0.xzw))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(f32(-1f) * -343f)))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(min(~vec3<u32>(u_input.a.x, 64543u, u_input.a.x), u_input.a ^ vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), ~firstTrailingBit(vec3<u32>(35252u, 4294967295u, 33109u))), ~_wgslsmith_clamp_u32(1u >> (u_input.a.x % 32u), min(u_input.a.x, 4294967295u), abs(2778u))), Struct_1(vec4<i32>(-2147483647i, 1i, 2147483647i, 1i), !select(vec3<bool>(arg_0, true, true), global0[_wgslsmith_index_u32(0u, 21u)], vec3<bool>(true, arg_0, true)), !select(!vec3<bool>(arg_0, arg_0, false), select(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], vec3<bool>(true, false, arg_0), global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), any(vec2<bool>(false, arg_0)))));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -331f);
    global0 = array<vec3<bool>, 21>();
    return ~abs(_wgslsmith_dot_vec3_i32(~var_2.e.a.yxx, reverseBits(var_2.e.a.zxy) << (vec3<u32>(u_input.a.x, 1u, 1u) % vec3<u32>(32u))));
}

fn func_1() -> vec2<bool> {
    global0 = array<vec3<bool>, 21>();
    let var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-26141i, -5673i, -70043i, ~24428i), vec4<i32>(2147483647i, -2147483647i, select(75699i, -22575i, true), func_2(true))), _wgslsmith_add_i32(_wgslsmith_clamp_i32(1i, 1i, -2147483647i) | -42613i, 16684i), -2147483647i, select(~(-2147483647i), 13177i, true || all(vec2<bool>(false, true)))) >> (select(vec4<u32>(max(1u, ~10374u), ~1u, select(u_input.a.x, u_input.a.x, true), 91534u), vec4<u32>(countOneBits(u_input.a.x), abs(_wgslsmith_clamp_u32(1u, u_input.a.x, u_input.a.x)), ~_wgslsmith_mult_u32(9241u, 1u), select(1u, 12931u, true)), true) % vec4<u32>(32u));
    let var_1 = _wgslsmith_mult_u32(u_input.a.x, countOneBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(16095u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x))));
    global0 = array<vec3<bool>, 21>();
    global0 = array<vec3<bool>, 21>();
    return vec2<bool>(false, true);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: Struct_2) -> Struct_3 {
    let var_0 = u_input.a.zy;
    global0 = array<vec3<bool>, 21>();
    global0 = array<vec3<bool>, 21>();
    global0 = array<vec3<bool>, 21>();
    global0 = array<vec3<bool>, 21>();
    return Struct_3(vec4<bool>(arg_1.x, arg_0.x, !(!(true != arg_1.x)), true), ~_wgslsmith_sub_vec4_u32(abs(arg_2.e.b | arg_2.d), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_3.d, 0u, var_0.x), _wgslsmith_div_vec4_u32(vec4<u32>(arg_2.a, var_0.x, 1u, 1u), vec4<u32>(u_input.a.x, 0u, 0u, 0u)))), ~vec4<u32>(_wgslsmith_div_u32(arg_2.a & 2370u, var_0.x), _wgslsmith_dot_vec4_u32(arg_2.d, _wgslsmith_clamp_vec4_u32(arg_2.d, arg_2.c.b, vec4<u32>(arg_2.e.c.x, 14187u, arg_2.d.x, arg_2.c.b.x))), var_0.x, ~30185u), _wgslsmith_dot_vec3_i32(~(arg_2.e.e.a.zyw ^ vec3<i32>(arg_3.e.a.x, arg_2.c.e.a.x, arg_3.e.a.x)), vec3<i32>(-1i) * -arg_2.c.e.a.wyw) >= -(-949i | arg_3.e.a.x), Struct_1(select(reverseBits(-arg_3.e.a), select(vec4<i32>(18205i, arg_3.e.a.x, arg_2.c.e.a.x, 17914i), vec4<i32>(2147483647i, arg_3.e.a.x, 40843i, 2147483647i), false) ^ select(vec4<i32>(arg_2.e.e.a.x, arg_2.e.e.a.x, arg_2.e.e.a.x, arg_2.c.e.a.x), vec4<i32>(-70686i, 48646i, arg_3.e.a.x, arg_2.c.e.a.x), vec4<bool>(false, false, false, true)), false), arg_1.wyy, select(vec3<bool>(true, any(vec4<bool>(true, false, arg_3.e.b.x, arg_2.e.a.x)), arg_1.x), vec3<bool>(arg_0.x, false, var_0.x != var_0.x), vec3<bool>(arg_3.e.b.x, -2147483647i == arg_2.c.e.a.x, arg_0.x & false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = Struct_4(firstLeadingBit(0u), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-484f, 880f, 1000f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1460f, -221f, -1102f) * vec3<f32>(-1430f, 489f, 573f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1354f, 1175f, 889f), vec3<f32>(533f, 527f, 416f), global0[_wgslsmith_index_u32(u_input.a.x, 21u)])))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-303f, 1972f, -762f)))), global0[_wgslsmith_index_u32(2285u, 21u)])), func_4(vec4<bool>(false, any(func_1()), any(vec2<bool>(true, true)), all(vec4<bool>(false, false, true, true))), vec4<bool>(false, select(all(vec2<bool>(true, true)), any(vec4<bool>(false, true, false, true)), select(true, false, false)), false, true), Struct_4(abs(u_input.a.x ^ 77670u), vec3<f32>(_wgslsmith_f_op_f32(1000f + 485f), _wgslsmith_div_f32(-1527f, 519f), 150f), Struct_3(vec4<bool>(true, false, false, false), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 38674u, u_input.a.x), vec4<u32>(45318u, u_input.a.x, u_input.a.x, u_input.a.x)), ~vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), true, Struct_1(vec4<i32>(-57486i, 40162i, -10628i, -2147483647i), global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global0[_wgslsmith_index_u32(11028u, 21u)])), ~vec4<u32>(38115u, u_input.a.x, u_input.a.x, 4294967295u), Struct_3(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true)), _wgslsmith_div_vec4_u32(vec4<u32>(5851u, 0u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 19883u, 4294967295u, 0u)), max(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u)), true, Struct_1(vec4<i32>(0i, -9449i, -2956i, 2147483647i), vec3<bool>(false, true, true), global0[_wgslsmith_index_u32(1u, 21u)]))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1452f, -676f, -1142f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1144f, 1586f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1349f - -545f) + _wgslsmith_f_op_f32(f32(-1f) * -1402f)), u_input.a.x, Struct_1(abs(vec4<i32>(-2147483647i, -1i, 9811i, 46799i)), global0[_wgslsmith_index_u32(~u_input.a.x, 21u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(u_input.a.x, 28857u)), 21u)]))), vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(69273u, ~4294967295u, 12387u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), ~vec3<u32>(56554u, u_input.a.x, u_input.a.x))), 1u, ~select(~0u, 1u, true)), Struct_3(vec4<bool>(_wgslsmith_f_op_f32(floor(677f)) > _wgslsmith_f_op_f32(-326f + -637f), true, true, false), _wgslsmith_mult_vec4_u32(~vec4<u32>(66697u, u_input.a.x, 1u, u_input.a.x), abs(vec4<u32>(u_input.a.x, 10661u, 4294967295u, u_input.a.x))) << (~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 1u, 49389u, 3570u)) % vec4<u32>(32u)), ~(max(vec4<u32>(17261u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u)) >> (vec4<u32>(77427u, 22567u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), true, func_4(vec4<bool>(true, true, select(true, false, false), false), vec4<bool>(true, true, true, true), Struct_4(_wgslsmith_mod_u32(0u, 62843u), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(766f, 416f, 777f))), Struct_3(vec4<bool>(true, true, true, false), vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 31854u), false, Struct_1(vec4<i32>(-57377i, 2147483647i, 0i, -8349i), global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global0[_wgslsmith_index_u32(u_input.a.x, 21u)])), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 24425u), func_4(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), Struct_4(u_input.a.x, vec3<f32>(298f, 520f, 1000f), Struct_3(vec4<bool>(false, false, true, false), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 55197u, u_input.a.x, u_input.a.x), true, Struct_1(vec4<i32>(-34872i, -1126i, -2147483647i, -1i), global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global0[_wgslsmith_index_u32(83742u, 21u)])), vec4<u32>(u_input.a.x, 61574u, 48167u, u_input.a.x), Struct_3(vec4<bool>(false, false, true, false), vec4<u32>(18608u, 1u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 710u, u_input.a.x, u_input.a.x), true, Struct_1(vec4<i32>(-1i, -2147483647i, -2147483647i, -3933i), global0[_wgslsmith_index_u32(4499u, 21u)], vec3<bool>(true, false, false)))), Struct_2(vec3<f32>(-858f, 1000f, -514f), -664f, -259f, 0u, Struct_1(vec4<i32>(-3163i, 1i, 1i, -2147483647i), global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)])))), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-104f, -659f, 478f)), -1614f, -772f, u_input.a.x, func_4(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), Struct_4(35587u, vec3<f32>(590f, 1098f, -1847f), Struct_3(vec4<bool>(false, false, true, true), vec4<u32>(88576u, u_input.a.x, u_input.a.x, 2837u), vec4<u32>(u_input.a.x, 21176u, 4294967295u, 4294967295u), false, Struct_1(vec4<i32>(0i, 2147483647i, 6344i, 2147483647i), global0[_wgslsmith_index_u32(3727u, 21u)], vec3<bool>(true, false, false))), vec4<u32>(1u, 20991u, u_input.a.x, 25054u), Struct_3(vec4<bool>(true, true, false, true), vec4<u32>(48766u, 6675u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), false, Struct_1(vec4<i32>(2147483647i, -2147483647i, -2147483647i, 26416i), vec3<bool>(true, true, true), vec3<bool>(true, false, true)))), Struct_2(vec3<f32>(353f, 470f, -2129f), 366f, -1106f, u_input.a.x, Struct_1(vec4<i32>(-16876i, 2147483647i, 2147483647i, -38858i), global0[_wgslsmith_index_u32(45025u, 21u)], global0[_wgslsmith_index_u32(1u, 21u)]))).e)).e));
    var var_2 = var_1.c.e;
    let var_3 = Struct_4(u_input.a.x, var_1.b, func_4(!var_1.e.a, !(!var_1.e.a), Struct_4(var_1.e.b.x, var_1.b, var_1.e, var_1.e.c, Struct_3(var_1.e.a, select(vec4<u32>(var_1.c.b.x, var_1.e.c.x, 2393u, var_1.e.c.x), vec4<u32>(32221u, 2458u, u_input.a.x, 4294967295u), var_1.c.a), ~var_1.c.b, true, Struct_1(var_2.a, global0[_wgslsmith_index_u32(var_1.c.b.x, 21u)], global0[_wgslsmith_index_u32(1u, 21u)]))), Struct_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(531f, -854f, var_1.b.x) - vec3<f32>(1296f, var_1.b.x, 508f)))), _wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(step(2030f, 1f)), 0u, var_1.e.e)), _wgslsmith_add_vec4_u32(~vec4<u32>(_wgslsmith_mult_u32(54677u, 0u), 9000u, 83942u, ~0u), var_1.e.c), func_4(var_1.e.a, vec4<bool>(any(!var_1.c.a), any(vec2<bool>(var_2.b.x, false)), true, any(vec2<bool>(var_1.c.d, false))), Struct_4(78293u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1488f, 447f, var_1.b.x))), var_1.e, vec4<u32>(4294967295u, firstTrailingBit(var_1.a), 1u, 29800u), var_1.e), Struct_2(var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.b.x)) * -2071f), abs(8301u), Struct_1(~var_2.a, global0[_wgslsmith_index_u32(u_input.a.x, 21u)], select(vec3<bool>(false, var_1.c.d, var_2.b.x), var_2.b, var_2.c.x)))));
    global0 = array<vec3<bool>, 21>();
    var var_4 = var_1.e.a;
    var var_5 = abs(~abs(var_1.c.e.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(228f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), var_1.b.x), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -446f)))), -1622f));
}

