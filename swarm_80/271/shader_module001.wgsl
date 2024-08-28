struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<bool>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19> = array<bool, 19>(false, false, false, false, true, false, false, true, true, true, false, true, true, false, false, true, false, true, true);

var<private> global1: array<vec3<u32>, 32> = array<vec3<u32>, 32>(vec3<u32>(28235u, 59918u, 39201u), vec3<u32>(4294967295u, 51539u, 4294967295u), vec3<u32>(0u, 1u, 11146u), vec3<u32>(0u, 1u, 0u), vec3<u32>(69184u, 4294967295u, 57500u), vec3<u32>(5897u, 1u, 1603u), vec3<u32>(1u, 16936u, 4294967295u), vec3<u32>(34734u, 4294967295u, 32628u), vec3<u32>(12992u, 37489u, 35179u), vec3<u32>(10490u, 1u, 4294967295u), vec3<u32>(0u, 0u, 8910u), vec3<u32>(26241u, 4294967295u, 4294967295u), vec3<u32>(21403u, 9105u, 4294967295u), vec3<u32>(0u, 0u, 21437u), vec3<u32>(38764u, 4294967295u, 102909u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(0u, 38554u, 82990u), vec3<u32>(0u, 5150u, 0u), vec3<u32>(0u, 24136u, 0u), vec3<u32>(8328u, 23557u, 16358u), vec3<u32>(31397u, 70016u, 1538u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(59881u, 52608u, 18333u), vec3<u32>(4294967295u, 31030u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 5077u, 0u), vec3<u32>(32679u, 39481u, 37641u), vec3<u32>(26300u, 4294967295u, 4294967295u), vec3<u32>(0u, 0u, 30822u), vec3<u32>(0u, 15150u, 4294967295u), vec3<u32>(80351u, 1u, 72117u), vec3<u32>(59461u, 0u, 108295u));

var<private> global2: vec2<f32> = vec2<f32>(749f, -1000f);

var<private> global3: array<vec4<bool>, 30> = array<vec4<bool>, 30>(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false));

var<private> global4: Struct_5;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: u32) -> i32 {
    global0 = array<bool, 19>();
    let var_0 = 114323u >> (~(~firstLeadingBit(_wgslsmith_add_u32(24980u, arg_1))) % 32u);
    global2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(771f + _wgslsmith_f_op_f32(min(arg_0, global2.x))))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(arg_0 - -1615f), -1000f))));
    var var_1 = vec2<f32>(global4.c.a.x, 459f);
    var var_2 = -948f;
    return -u_input.a;
}

fn func_2() -> i32 {
    let var_0 = global4.c.e;
    var var_1 = Struct_2(-abs(-func_3(-185f, 0u)), ~(_wgslsmith_div_u32(~u_input.c.x, ~global4.d.x) ^ (_wgslsmith_mod_u32(global4.e.b, 4853u) | _wgslsmith_div_u32(0u, u_input.c.x))), vec3<bool>(any(vec2<bool>(true, true)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(21875u ^ global4.e.b, ~(~global4.d.x)), 19u)], !global0[_wgslsmith_index_u32(global4.e.b, 19u)]));
    var var_2 = -(~_wgslsmith_add_i32(firstTrailingBit(-50i) >> (_wgslsmith_sub_u32(50196u, 35576u) % 32u), -27875i));
    global2 = global4.c.a.yz;
    global1 = array<vec3<u32>, 32>();
    return _wgslsmith_div_i32(33945i, 2147483647i);
}

fn func_4(arg_0: i32, arg_1: vec3<u32>) -> Struct_1 {
    global0 = array<bool, 19>();
    let var_0 = !vec4<bool>(false, any(global3[_wgslsmith_index_u32(firstTrailingBit(max(99355u, 4294967295u)), 30u)]), true, global0[_wgslsmith_index_u32(~min(_wgslsmith_mod_u32(global4.d.x, u_input.b.x), _wgslsmith_add_u32(93416u, 36093u)), 19u)]);
    global4 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -828f)))), global4.c.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global4.a.x, _wgslsmith_f_op_f32(-global4.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-561f, _wgslsmith_f_op_f32(sign(-649f)))))), Struct_1(global4.c.a, true && any(select(vec3<bool>(true, true, true), var_0.wxy, global4.c.b)), !(!(!vec4<bool>(global0[_wgslsmith_index_u32(48003u, 19u)], var_0.x, global0[_wgslsmith_index_u32(arg_1.x, 19u)], global4.c.c.x))), 1520f, global4.c.e), abs(global4.d), global4.e);
    var var_1 = ~vec4<i32>(i32(-1i) * -(~u_input.a), countOneBits(i32(-1i) * -43180i), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-445f))), ~global4.e.b), -max(-32409i, _wgslsmith_mod_i32(arg_0, global4.e.a)));
    var var_2 = global4.c;
    return Struct_1(var_2.a, select(any(vec4<bool>(false, true, var_0.x, false)), true, global0[_wgslsmith_index_u32(global4.d.x, 19u)]), global4.c.c, 1064f, min(select(countOneBits(var_2.e), var_2.e, vec4<bool>(true, global0[_wgslsmith_index_u32(31570u, 19u)], global0[_wgslsmith_index_u32(1u, 19u)], false)) >> (_wgslsmith_mult_vec4_u32(global4.d, select(global4.d, vec4<u32>(arg_1.x, global4.e.b, u_input.b.x, global4.d.x), global4.c.c)) % vec4<u32>(32u)), vec4<i32>(var_2.e.x, ~u_input.a, func_3(_wgslsmith_f_op_f32(min(global2.x, var_2.d)), ~u_input.b.x), global4.c.e.x)));
}

fn func_5(arg_0: Struct_5) -> Struct_3 {
    var var_0 = select(!arg_0.e.c, vec3<bool>(true, !any(!global3[_wgslsmith_index_u32(49389u, 30u)]), false), 0i < select(arg_0.e.a, min(u_input.a & arg_0.e.a, u_input.a), global4.e.c.x));
    var_0 = vec3<bool>(global4.e.c.x, func_4(global4.e.a, select(vec3<u32>(16601u, u_input.b.x, 104916u) | global1[_wgslsmith_index_u32(0u, 32u)], arg_0.d.xxy, false) << (select(select(vec3<u32>(4741u, arg_0.e.b, global4.d.x), vec3<u32>(arg_0.e.b, 27444u, 1u), false), vec3<u32>(17381u, u_input.b.x, u_input.c.x), select(arg_0.e.c, global4.c.c.zwz, arg_0.c.c.wxy)) % vec3<u32>(32u))).b, true);
    let var_1 = vec2<bool>(any(func_4(countOneBits(1i), firstLeadingBit(~vec3<u32>(global4.d.x, arg_0.e.b, arg_0.d.x))).c.zww), all(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c.yx, arg_0.d.wx), 30u)]));
    global1 = array<vec3<u32>, 32>();
    global1 = array<vec3<u32>, 32>();
    return Struct_3(_wgslsmith_f_op_f32(arg_0.c.d * arg_0.c.a.x), global4.c.e << (reverseBits(_wgslsmith_clamp_vec4_u32(~arg_0.d, select(vec4<u32>(global4.d.x, 36129u, global4.e.b, 62384u), arg_0.d, global3[_wgslsmith_index_u32(9166u, 30u)]), ~vec4<u32>(arg_0.d.x, 1u, 1u, u_input.b.x))) % vec4<u32>(32u)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<f32>) -> Struct_1 {
    global1 = array<vec3<u32>, 32>();
    var var_0 = func_5(Struct_5(_wgslsmith_f_op_vec3_f32(exp2(global4.c.a.xwz)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(arg_1.zz)), _wgslsmith_f_op_vec2_f32(-arg_1.zx))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(803f, global2.x), arg_1.yx) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, -299f) * vec2<f32>(arg_1.x, 144f)))), func_4(func_2(), ~vec3<u32>(11362u, 55015u, u_input.b.x)), ~(~vec4<u32>(22282u, global4.d.x, 1u, u_input.c.x)), global4.e));
    var var_1 = max(global4.d, max(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 1u, global4.d.x, 73993u), _wgslsmith_mult_vec4_u32(global4.d, global4.d)) >> (global4.d % vec4<u32>(32u)), abs(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global4.e.b, 81884u, 77694u, global4.e.b), global4.d), global4.d))));
    var_1 = _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(global4.d & vec4<u32>(38942u, firstTrailingBit(var_1.x), firstTrailingBit(50521u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, 24167u, var_1.x), global4.d)), ~firstLeadingBit(vec4<u32>(u_input.c.x, u_input.b.x, u_input.b.x, var_1.x))), vec4<u32>(~33605u, ~94995u, reverseBits(0u ^ global4.d.x) << ((_wgslsmith_clamp_u32(global4.e.b, 28099u, 1u) << (~var_1.x % 32u)) % 32u), ~var_1.x));
    let var_2 = false;
    return Struct_1(_wgslsmith_f_op_vec4_f32(global4.c.a * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-global4.a.x), global2.x, var_0.a, _wgslsmith_f_op_f32(abs(global4.a.x)))))), arg_0.x, !vec4<bool>(false, true, all(global4.c.c.xxy), global0[_wgslsmith_index_u32(~(var_1.x << (var_1.x % 32u)), 19u)]), _wgslsmith_f_op_f32(min(global4.c.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(global2.x)))))), global4.c.e);
}

fn func_6(arg_0: Struct_1, arg_1: i32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1420f) + -321f));
    let var_1 = abs(select(max(firstLeadingBit(firstTrailingBit(vec4<u32>(33278u, global4.d.x, 54705u, global4.d.x))), _wgslsmith_div_vec4_u32(global4.d, ~global4.d)), _wgslsmith_mod_vec4_u32(global4.d, global4.d), false));
    let var_2 = global4.e.c.x;
    global0 = array<bool, 19>();
    var_0 = _wgslsmith_f_op_f32(global4.b.x * -1125f);
    return func_5(Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, 2634f, global2.x) - vec3<f32>(global4.c.d, global4.c.d, global2.x)) + arg_0.a.wyy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global4.c.a.yx + vec2<f32>(143f, -130f)) + arg_0.a.zw) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.c.d, -511f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1330f, global4.b.x)))), func_1(select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], false, global4.c.b), vec3<bool>(true, true, true), false), global4.c.a.wwz), select(abs(global4.d), vec4<u32>(~4294967295u, ~global4.e.b, ~55211u, 46739u), _wgslsmith_f_op_f32(global2.x - 864f) != _wgslsmith_f_op_f32(1021f - 1558f)), Struct_2(arg_0.e.x << (39337u % 32u), ~0u, vec3<bool>(all(vec3<bool>(arg_0.c.x, global0[_wgslsmith_index_u32(u_input.b.x, 19u)], true)), all(arg_0.c.xz), global0[_wgslsmith_index_u32(0u, 19u)] == arg_0.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(318f))), _wgslsmith_f_op_f32(f32(-1f) * -572f)))));
    let var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.c.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1351f)) + -912f), -858f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global4.a - vec3<f32>(global2.x, 146f, global4.a.x)) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2256f, 182f, 432f) - vec3<f32>(-578f, global2.x, -569f)), vec3<f32>(global2.x, 905f, 1335f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.b)) - global4.c.a.wz), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -203f), global2.x), global4.e.c.yz)), global4.c, firstLeadingBit(global4.d), Struct_2(~global4.e.a, _wgslsmith_clamp_u32(global4.d.x >> (~global4.d.x % 32u), 30464u, (global4.e.b >> (global4.e.b % 32u)) | 4294967295u), global4.e.c));
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(select(global4.c.a.wwx, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2.x, _wgslsmith_f_op_f32(min(var_0.a.x, 1307f)), _wgslsmith_f_op_f32(-global4.b.x)))), global4.c.c.x)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -530f))))), _wgslsmith_f_op_f32(1166f - 384f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-431f, 759f))))))));
    var var_3 = func_6(func_1(select(vec3<bool>(false, u_input.a >= -100182i, true), !select(vec3<bool>(true, true, false), var_0.e.c, global0[_wgslsmith_index_u32(14155u, 19u)]), true & (true & global0[_wgslsmith_index_u32(u_input.c.x, 19u)])), vec3<f32>(_wgslsmith_f_op_f32(round(var_1.a.x)), 1337f, _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_add_i32(abs(_wgslsmith_div_i32(-1i, u_input.a) | (46336i >> (1u % 32u))), global4.e.a));
    let x = u_input.a;
    s_output = StorageBuffer(-var_3.b.xw, _wgslsmith_div_i32(_wgslsmith_clamp_i32(20323i, abs(var_3.b.x & var_3.b.x), -(~2147483647i)), -(~var_0.e.a)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(435f, var_1.a.x) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1953f), var_3.a)), _wgslsmith_f_op_vec2_f32(-var_0.b))), var_1.a, global4.e.b);
}

