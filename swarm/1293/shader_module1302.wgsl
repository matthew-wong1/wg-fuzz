struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<f32>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec2<i32>(-27162i, 23911i), true, vec3<f32>(1024f, 546f, -2037f), vec4<i32>(64938i, 41810i, -1i, 66315i), false), Struct_1(vec2<i32>(29350i, i32(-2147483648)), true, vec3<f32>(217f, -242f, 695f), vec4<i32>(1i, -15789i, 1i, 54838i), true), Struct_1(vec2<i32>(-41373i, 12510i), true, vec3<f32>(221f, 1000f, -229f), vec4<i32>(2147483647i, -11991i, 2308i, i32(-2147483648)), false), Struct_1(vec2<i32>(i32(-2147483648), 17958i), false, vec3<f32>(-937f, 1904f, 499f), vec4<i32>(13415i, 2147483647i, -1i, -10102i), false), Struct_1(vec2<i32>(9935i, 2147483647i), false, vec3<f32>(505f, 863f, 731f), vec4<i32>(-41608i, 48988i, 1i, 8410i), false), Struct_1(vec2<i32>(2147483647i, -1i), false, vec3<f32>(1058f, 217f, 794f), vec4<i32>(10579i, -10951i, 0i, 26397i), true), Struct_1(vec2<i32>(i32(-2147483648), 8151i), true, vec3<f32>(407f, -484f, 1679f), vec4<i32>(1i, 45244i, 2147483647i, -13086i), false), Struct_1(vec2<i32>(1i, 18516i), true, vec3<f32>(-1000f, 115f, 566f), vec4<i32>(-39921i, 765i, 0i, 49183i), false), Struct_1(vec2<i32>(15022i, 2147483647i), true, vec3<f32>(-825f, 622f, 285f), vec4<i32>(i32(-2147483648), 2147483647i, 1i, 43580i), false), Struct_1(vec2<i32>(1609i, 2147483647i), true, vec3<f32>(-1366f, -645f, 1783f), vec4<i32>(1i, -61040i, -14283i, -12330i), true), Struct_1(vec2<i32>(27010i, -1i), true, vec3<f32>(-533f, 367f, 674f), vec4<i32>(-1i, 2147483647i, 38429i, 65756i), false), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), true, vec3<f32>(-1223f, -1487f, -829f), vec4<i32>(2147483647i, i32(-2147483648), -76464i, -22170i), true), Struct_1(vec2<i32>(-1i, -1i), false, vec3<f32>(-199f, -182f, 829f), vec4<i32>(-8864i, 32143i, 1i, 0i), false));

var<private> global1: array<bool, 20>;

var<private> global2: vec4<u32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec3<f32>) -> i32 {
    global0 = array<Struct_1, 13>();
    var var_0 = Struct_4(~(u_input.a.x & max(-13358i, ~u_input.c.x)), _wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_add_u32(u_input.e, ~28531u)), ~(~u_input.e), u_input.d));
    let var_1 = Struct_4(-_wgslsmith_div_i32(max(~u_input.c.x, -var_0.a), var_0.a), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.e, global2.x, 52677u), ~vec3<u32>(u_input.d, u_input.d, u_input.d)), global2.xxw), _wgslsmith_mult_vec3_u32(reverseBits(min(vec3<u32>(21098u, 29356u, u_input.e), vec3<u32>(5191u, 0u, u_input.d))), ~global2.xzz)));
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    return -16807i;
}

fn func_4(arg_0: i32, arg_1: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(1f * 704f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1233f) + -1011f))));
    let var_1 = Struct_3(u_input.b.x, 27433u, Struct_2(~u_input.c.x, _wgslsmith_mult_vec3_u32(global2.ywy, _wgslsmith_add_vec3_u32(vec3<u32>(0u, 4294967295u, 13621u), vec3<u32>(u_input.e, 100657u, 99662u))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(36702u, 0u, global2.x, u_input.d)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, global2.x, global2.x, u_input.e), vec4<u32>(1u, 0u, 40047u, 0u), vec4<u32>(u_input.e, u_input.e, 1u, u_input.e) ^ vec4<u32>(20825u, 1u, global2.x, 58198u))), 13u)]), ~u_input.e);
    let var_2 = var_1.c.c.c.x;
    global2 = _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(min(_wgslsmith_sub_vec4_u32(vec4<u32>(36896u, global2.x, u_input.e, 4294967295u), vec4<u32>(u_input.e, 127469u, 0u, 4294967295u)), reverseBits(vec4<u32>(4294967295u, global2.x, 4294967295u, u_input.e))), vec4<u32>(u_input.e, _wgslsmith_dot_vec2_u32(vec2<u32>(3999u, var_1.c.b.x), global2.zz), 4294967295u, global2.x)), select(vec4<u32>(max(11594u, u_input.d), 21739u | var_1.c.b.x, global2.x, reverseBits(4294967295u)), ~(~vec4<u32>(1u, u_input.d, 1u, 2548u)), any(select(arg_1.xyx, vec3<bool>(false, var_1.c.c.e, var_1.c.c.e), vec3<bool>(true, arg_1.x, var_1.c.c.e))))), ~_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global2.x, 1u, 52765u, 56575u), vec4<u32>(434u, 0u, 0u, 18430u)), vec4<u32>(1u, 46361u, 4294967295u, 100995u) >> (vec4<u32>(u_input.d, global2.x, var_1.c.b.x, 123504u) % vec4<u32>(32u))) | _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.e, var_1.b, 0u), min(vec4<u32>(u_input.d, 1u, 4294967295u, 2570u), vec4<u32>(var_1.b, var_1.b, 1u, 9796u))), vec4<u32>(_wgslsmith_mult_u32(103154u, 12602u), _wgslsmith_mod_u32(u_input.e, 4294967295u), ~global2.x, ~global2.x), ~vec4<u32>(global2.x, var_1.d, 1u, 0u)));
    global1 = array<bool, 20>();
    return _wgslsmith_f_op_f32(ceil(227f));
}

fn func_2() -> bool {
    global1 = array<bool, 20>();
    var var_0 = -766f;
    global1 = array<bool, 20>();
    var var_1 = u_input.c.x;
    var var_2 = Struct_1(reverseBits(~vec2<i32>(max(u_input.c.x, u_input.b.x), -28341i)), (~_wgslsmith_dot_vec2_i32(u_input.b.zx, vec2<i32>(-24503i, 13987i)) > ~_wgslsmith_div_i32(-28286i, -28414i)) | global1[_wgslsmith_index_u32(min(countOneBits(u_input.d) ^ ~24168u, ~(u_input.d ^ u_input.e)), 20u)], vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(340f)))), _wgslsmith_f_op_f32(func_4(func_3(false || global1[_wgslsmith_index_u32(56269u, 20u)], false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(187f, 1207f, 433f))), !(!vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(global2.x, 20u)], true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(0i, vec4<bool>(global1[_wgslsmith_index_u32(global2.x, 20u)], global1[_wgslsmith_index_u32(global2.x, 20u)], false, global1[_wgslsmith_index_u32(66351u, 20u)]))) - _wgslsmith_f_op_f32(trunc(1256f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(263f + 108f)))), vec4<i32>(u_input.b.x, (2147483647i >> (global2.x % 32u)) >> (94223u % 32u), -(~1i), -_wgslsmith_dot_vec2_i32(u_input.c.zx, u_input.b.yz)) ^ u_input.a, !(-1i <= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 4328i) & vec2<i32>(-5337i, u_input.b.x), u_input.a.yw)));
    return var_2.b;
}

fn func_1(arg_0: vec2<bool>) -> vec3<u32> {
    let var_0 = any(select(vec2<bool>(func_2(), arg_0.x), arg_0, arg_0));
    let var_1 = true;
    var var_2 = Struct_3(~(~reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 7226i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, u_input.c.x)))), abs(global2.x), Struct_2(-(~u_input.c.x << (~global2.x % 32u)), global2.xzy, global0[_wgslsmith_index_u32(4294967295u, 13u)]), ~_wgslsmith_dot_vec2_u32(abs(global2.yy) | _wgslsmith_mult_vec2_u32(global2.yy, vec2<u32>(global2.x, global2.x)), max(global2.zz, vec2<u32>(u_input.d, u_input.e) ^ vec2<u32>(4294967295u, 4294967295u))));
    var var_3 = false;
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1475f * 1059f), var_2.c.c.c.x);
    return ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(60271u >> (1u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 80979u), global2.xx), abs(107008u)), countOneBits(vec3<u32>(4294967295u, var_2.d, global2.x)), vec3<u32>(abs(135877u), 7227u, firstLeadingBit(global2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 20>();
    var var_0 = Struct_3(select(i32(-1i) * -17613i, abs(u_input.a.x), _wgslsmith_mod_u32(global2.x, ~global2.x) <= global2.x), u_input.e | 44905u, Struct_2(u_input.a.x, func_1(vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4747u, global2.x, 1930u, u_input.d), vec4<u32>(global2.x, u_input.e, 22320u, 4294967295u)), 20u)], all(vec4<bool>(true, global1[_wgslsmith_index_u32(79540u, 20u)], true, global1[_wgslsmith_index_u32(u_input.d, 20u)])))), Struct_1(-u_input.a.wx, all(!vec3<bool>(false, global1[_wgslsmith_index_u32(14827u, 20u)], global1[_wgslsmith_index_u32(u_input.d, 20u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(-660f, 745f, -894f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-418f, 1005f, 156f), vec3<f32>(-397f, 2125f, 1000f), vec3<bool>(false, false, true)))), vec4<i32>(min(-2147483647i, 0i), _wgslsmith_add_i32(u_input.a.x, 1i), 41980i, -u_input.c.x), any(select(vec3<bool>(true, global1[_wgslsmith_index_u32(global2.x, 20u)], global1[_wgslsmith_index_u32(u_input.e, 20u)]), vec3<bool>(global1[_wgslsmith_index_u32(global2.x, 20u)], global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(u_input.e, 20u)]), global1[_wgslsmith_index_u32(u_input.d, 20u)])))), u_input.d ^ global2.x);
    global0 = array<Struct_1, 13>();
    global2 = ~min(~_wgslsmith_add_vec4_u32(min(vec4<u32>(4294967295u, global2.x, 0u, var_0.c.b.x), vec4<u32>(u_input.e, var_0.c.b.x, u_input.e, 4294967295u)), vec4<u32>(global2.x, 113991u, 48942u, 0u)), ~vec4<u32>(min(u_input.e, 4294967295u), firstLeadingBit(var_0.b), ~0u, 9621u));
    global0 = array<Struct_1, 13>();
    var var_1 = vec3<f32>(var_0.c.c.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1041f + var_0.c.c.c.x) * var_0.c.c.c.x), _wgslsmith_f_op_f32(round(580f)))), var_0.c.c.c.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-375f, var_0.c.c.c.x, -969f)) * _wgslsmith_f_op_vec3_f32(select(var_0.c.c.c, vec3<f32>(284f, 353f, var_1.x), global1[_wgslsmith_index_u32(var_0.b, 20u)])))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c.c.c) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(539f, var_1.x, var_0.c.c.c.x)), var_0.c.c.c, !vec3<bool>(true, var_0.c.c.e, var_0.c.c.e)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.c.c.x + -1090f) - _wgslsmith_f_op_f32(1563f * -1658f)), 405f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(561f)))))));
    var var_3 = -countOneBits(max(select(1i, u_input.c.x, true), 0i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(-1214f)), -1000f, var_2.x), var_2, vec3<bool>(var_0.c.c.b, true, false)))), vec4<i32>(2147483647i, u_input.c.x, -(~min(u_input.b.x, var_0.a)), u_input.a.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.c.c.x + -525f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.c.c.x)), var_2.x, _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(abs(1000f))))), vec4<f32>(_wgslsmith_f_op_f32(min(-400f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.x))))), -524f, _wgslsmith_f_op_f32(func_4(var_0.a, select(vec4<bool>(global1[_wgslsmith_index_u32(var_0.d, 20u)], var_0.c.c.e, global1[_wgslsmith_index_u32(16775u, 20u)], false), vec4<bool>(true, true, global1[_wgslsmith_index_u32(var_0.b, 20u)], var_0.c.c.b), false))), var_2.x));
}

