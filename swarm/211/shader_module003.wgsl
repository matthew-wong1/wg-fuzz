struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<bool>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -40593i;

var<private> global1: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(1i, i32(-2147483648)));

var<private> global2: array<f32, 14> = array<f32, 14>(1165f, -923f, 617f, 1327f, 710f, -542f, -943f, -1278f, -137f, 778f, 468f, 1000f, 1676f, 430f);

var<private> global3: u32 = 4294967295u;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> bool {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(~(~(~5434u))), 22450u), 14u)];
    let var_1 = Struct_3(countOneBits(arg_0));
    let var_2 = ~arg_1.c;
    let var_3 = Struct_1(vec4<i32>(firstLeadingBit(1i), _wgslsmith_mult_i32(var_2, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-2147483647i, -6442i, -1i))), ~(arg_1.c ^ _wgslsmith_dot_vec4_i32(arg_1.d.a, vec4<i32>(-2147483647i, arg_1.c, var_2, -1i))), 0i), !any(vec2<bool>(false, true)), select(!select(arg_1.d.c, !arg_1.d.c, !arg_1.d.c.x), vec2<bool>(true, true), arg_1.d.c), -429f, vec2<i32>(_wgslsmith_dot_vec2_i32(select(min(arg_1.d.e, vec2<i32>(2147483647i, 2147483647i)), vec2<i32>(arg_1.c, arg_1.c), arg_1.d.c), arg_1.d.e & _wgslsmith_div_vec2_i32(arg_1.d.e, u_input.b.yz)), i32(-1i) * -11676i));
    global1 = array<vec2<i32>, 1>();
    return true;
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: vec4<bool>) -> Struct_4 {
    let var_0 = Struct_3(40776u >> (~select(90242u, 32946u, !arg_2.x) % 32u));
    var var_1 = _wgslsmith_mult_i32(u_input.a.x, u_input.b.x);
    let var_2 = Struct_2(arg_0.xy, any(!arg_2.wyy), i32(-1i) * -23821i, Struct_1(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, -1i, 8446i, -1i)) | vec4<i32>(1i, u_input.b.x, u_input.a.x, u_input.b.x)), !func_3(~var_0.a, Struct_2(arg_0.xy, false, 0i, Struct_1(vec4<i32>(-1i, u_input.b.x, 2147483647i, u_input.a.x), arg_1, arg_2.xw, global2[_wgslsmith_index_u32(var_0.a, 14u)], u_input.a.zx))), select(vec2<bool>(true, !arg_2.x), vec2<bool>(arg_2.x, true), arg_2.ww), _wgslsmith_f_op_f32(-492f - arg_0.x), _wgslsmith_mod_vec2_i32(-(~u_input.a.xx), global1[_wgslsmith_index_u32(~firstLeadingBit(var_0.a), 1u)])));
    let var_3 = !arg_2;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(step(1623f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_2.d.d, global2[_wgslsmith_index_u32(var_0.a, 14u)])))))) + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_0.a, 14u)]));
    return Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-517f, -1249f) - var_2.a) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 673f))))), any(var_3), -1i, var_2.d), var_2, Struct_2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(768f + var_4)))), var_3.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(var_2.d.a.yx, global1[_wgslsmith_index_u32(11741u, 1u)]) ^ _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(var_2.c, u_input.b.x, -11852i)), ~(var_2.d.a.x & -2147483647i)), var_2.d), var_0);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: u32) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(reverseBits(68852u) | _wgslsmith_mult_u32(arg_0.a, 23157u), 14u)]), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(1512f * arg_1.d.d)))) + _wgslsmith_f_op_f32(-1357f - 187f));
    global1 = array<vec2<i32>, 1>();
    global2 = array<f32, 14>();
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), global2[_wgslsmith_index_u32(min(97730u & arg_0.a, ~arg_3), 14u)], global2[_wgslsmith_index_u32(arg_3, 14u)]) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.d.d, global2[_wgslsmith_index_u32(1u, 14u)], -1496f)))))), all(!vec3<bool>(arg_1.d.b, false, arg_1.d.b)), !(!select(vec4<bool>(true, true, true, true), !vec4<bool>(false, arg_1.d.c.x, false, arg_1.b), true)));
    global0 = 13965i;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-474f, arg_1.a.x, 1008f) * vec3<f32>(global2[_wgslsmith_index_u32(arg_2.x, 14u)], 1790f, 1251f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1540f, global2[_wgslsmith_index_u32(1u, 14u)], arg_1.d.d), _wgslsmith_f_op_vec3_f32(vec3<f32>(294f, -140f, 1173f) - vec3<f32>(-588f, arg_1.a.x, 535f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1192f, global2[_wgslsmith_index_u32(4294967295u, 14u)], global2[_wgslsmith_index_u32(var_1.d.a, 14u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_1(Struct_3(1337u), Struct_2(vec2<f32>(302f, -292f), false, 21520i, Struct_1(vec4<i32>(u_input.a.x, -5312i, u_input.a.x, -2207i), false, vec2<bool>(true, false), 1372f, global1[_wgslsmith_index_u32(0u, 1u)])), vec3<u32>(18053u, 0u, 0u), 31480u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-373f, global2[_wgslsmith_index_u32(73013u, 14u)], 1349f)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))), vec3<f32>(-574f, global2[_wgslsmith_index_u32(firstTrailingBit(39466u), 14u)], _wgslsmith_f_op_f32(trunc(-791f)))))));
    global1 = array<vec2<i32>, 1>();
    let var_1 = u_input.b.x | func_2(var_0, false, !(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true)))).c.d.a.x;
    let var_2 = select(vec2<bool>(all(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-997f, global2[_wgslsmith_index_u32(1u, 14u)], 825f)), true, vec4<bool>(true, true, true, true)).b.d.c), !func_2(_wgslsmith_f_op_vec3_f32(var_0 + var_0), all(vec3<bool>(true, false, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), false)).b.d.c.x), !func_2(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), -957f, _wgslsmith_div_f32(-848f, global2[_wgslsmith_index_u32(19165u, 14u)])), var_0.x <= _wgslsmith_f_op_f32(var_0.x + var_0.x), vec4<bool>(true, true, true, true)).b.d.c, select(func_2(_wgslsmith_f_op_vec3_f32(-var_0), func_2(var_0, func_3(0u, Struct_2(vec2<f32>(var_0.x, 1000f), false, var_1, Struct_1(vec4<i32>(var_1, var_1, u_input.a.x, 2147483647i), true, vec2<bool>(false, false), 1326f, u_input.b.xx))), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))).c.b, vec4<bool>(true, true, true, func_2(var_0, false, vec4<bool>(false, true, true, true)).c.b)).c.d.c, func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0) + _wgslsmith_f_op_vec3_f32(func_1(Struct_3(10354u), Struct_2(vec2<f32>(501f, global2[_wgslsmith_index_u32(0u, 14u)]), false, -21994i, Struct_1(vec4<i32>(42028i, var_1, 2147483647i, u_input.a.x), true, vec2<bool>(false, false), global2[_wgslsmith_index_u32(71242u, 14u)], global1[_wgslsmith_index_u32(116974u, 1u)])), vec3<u32>(0u, 5364u, 16224u), 0u))), true, select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false))).c.d.c, true));
    global0 = 2147483647i;
    let var_3 = func_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1227f) * 1620f), func_2(_wgslsmith_div_vec3_f32(var_0, vec3<f32>(475f, -1561f, global2[_wgslsmith_index_u32(91805u, 14u)])), true, !select(vec4<bool>(var_2.x, true, true, false), vec4<bool>(var_2.x, false, var_2.x, var_2.x), var_2.x)).b.a.x, -1080f), true, select(select(vec4<bool>(true, var_2.x, select(var_2.x, true, false), var_2.x), !vec4<bool>(false, var_2.x, var_2.x, var_2.x), any(vec4<bool>(true, false, var_2.x, var_2.x))), select(vec4<bool>(var_2.x, false, var_2.x, false || var_2.x), !select(vec4<bool>(true, false, true, false), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, true)), var_2.x), select(vec4<bool>(true, false, true, !var_2.x), select(select(vec4<bool>(true, false, false, var_2.x), vec4<bool>(var_2.x, var_2.x, true, var_2.x), vec4<bool>(var_2.x, true, var_2.x, var_2.x)), !vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, true, var_2.x)), var_2.x)));
    let var_4 = 7540u << (~(~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.d.a, var_3.d.a), vec2<u32>(28342u, var_3.d.a)), var_3.d.a)) % 32u);
    let var_5 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(var_3.d.a, 0u, var_3.d.a, 11471u) >> (vec4<u32>(var_3.d.a, 1u, 1u, var_4) % vec4<u32>(32u))), vec4<u32>(~41039u, reverseBits(var_4), ~22262u, 4294967295u | var_4)), 25438u) << (var_4 % 32u);
    var var_6 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(~abs(var_1), -21814i, reverseBits(firstTrailingBit(~11336i))), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(1u, var_4)), ~(~vec2<u32>(var_4, var_4))) >> ((_wgslsmith_add_u32(~var_5, max(var_5, 0u)) << (~0u % 32u)) % 32u), _wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(select(vec4<u32>(var_4, 0u, 92558u, 14477u), vec4<u32>(0u, 0u, var_5, 23308u), vec4<bool>(false, true, var_6.d.b, var_6.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_4, var_3.d.a, 15690u, 1u), vec4<u32>(var_3.d.a, 4294967295u, 1u, 1u))), vec4<u32>(~var_5, 1u, 1u, 141947u)), 2147483647i >> (countOneBits(var_5) % 32u), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_6.a * vec2<f32>(-1023f, var_6.a.x)))));
}

