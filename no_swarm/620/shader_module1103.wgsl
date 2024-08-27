struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_3,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: array<i32, 1>;

var<private> global2: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(vec2<bool>(false, false), vec4<bool>(true, false, false, true), -50493i, Struct_2(true, i32(-2147483648), Struct_1(true), vec3<i32>(3926i, -1i, 1i), vec4<bool>(true, true, true, true))), Struct_3(vec2<bool>(true, false), vec4<bool>(false, true, false, true), i32(-2147483648), Struct_2(true, -8863i, Struct_1(true), vec3<i32>(1i, 32122i, 0i), vec4<bool>(false, false, true, true))), Struct_3(vec2<bool>(false, true), vec4<bool>(true, false, true, true), -6635i, Struct_2(false, 26485i, Struct_1(true), vec3<i32>(-1i, -45080i, -622i), vec4<bool>(true, true, false, true))), Struct_3(vec2<bool>(true, false), vec4<bool>(true, true, true, true), 2147483647i, Struct_2(false, -57489i, Struct_1(true), vec3<i32>(31212i, 86058i, 21516i), vec4<bool>(true, false, false, true))), Struct_3(vec2<bool>(false, false), vec4<bool>(true, false, true, false), -39553i, Struct_2(true, i32(-2147483648), Struct_1(false), vec3<i32>(0i, -7200i, 8486i), vec4<bool>(false, false, true, false))), Struct_3(vec2<bool>(true, false), vec4<bool>(false, true, true, false), 23310i, Struct_2(true, -1i, Struct_1(true), vec3<i32>(0i, 1i, i32(-2147483648)), vec4<bool>(true, true, false, true))));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<u32>) -> vec3<f32> {
    global2 = array<Struct_3, 6>();
    var var_0 = global0[_wgslsmith_index_u32(~abs(7000u) >> (abs(u_input.b.x) % 32u), 30u)];
    var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~u_input.d, ~(~u_input.d ^ ~u_input.d)), 30u)];
    global0 = array<Struct_1, 30>();
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(728f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(516f, 157f)) * _wgslsmith_f_op_f32(f32(-1f) * -915f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(175f, -1241f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-275f, 749f, -1000f)))) - vec3<f32>(_wgslsmith_div_f32(1512f, -1000f), _wgslsmith_f_op_f32(-510f * -298f), -238f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -798f), _wgslsmith_f_op_f32(f32(-1f) * -270f), -1061f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1081f, -1004f, 1430f), vec3<f32>(-485f, 156f, 1109f), vec3<bool>(false, false, var_0.a)))))), vec3<bool>(any(select(vec3<bool>(true, false, false), !vec3<bool>(var_0.a, true, true), !vec3<bool>(var_0.a, var_0.a, true))), var_0.a, true)));
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: u32) -> Struct_4 {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(876f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1686f * 559f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -501f) * -506f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-473f, -697f, 1298f)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-668f, -770f, -1000f), vec3<f32>(522f, 588f, -541f)))) + _wgslsmith_f_op_vec3_f32(func_3(firstTrailingBit(u_input.b))))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-796f)) * -1418f), _wgslsmith_f_op_f32(f32(-1f) * -343f), _wgslsmith_f_op_f32(sign(-1320f))))));
    var var_2 = _wgslsmith_sub_i32(u_input.c.x, ~1i);
    global2 = array<Struct_3, 6>();
    let var_3 = select(-(~_wgslsmith_mod_i32(22756i >> (u_input.d.x % 32u), min(global1[_wgslsmith_index_u32(u_input.b.x, 1u)], 2147483647i))), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, var_0.c), vec2<i32>(~arg_1.c, -_wgslsmith_dot_vec4_i32(vec4<i32>(28388i, -1i, -2147483647i, 2147483647i), vec4<i32>(arg_0, -7293i, -2147483647i, arg_0)))), arg_1.a.x);
    return Struct_4(Struct_3(select(arg_1.d.e.wy, select(!vec2<bool>(var_0.a.x, arg_1.b.x), arg_1.a, var_0.a.x & arg_1.d.c.a), true), !arg_1.d.e, countOneBits(2147483647i), arg_1.d), var_0.d, Struct_3(select(arg_1.d.e.yy, select(select(vec2<bool>(var_0.a.x, false), var_0.b.wz, arg_1.b.wz), vec2<bool>(var_0.d.e.x, arg_1.a.x), var_0.d.e.zw), true), select(select(arg_1.d.e, var_0.b, select(var_0.d.e, vec4<bool>(true, arg_1.d.c.a, true, true), false)), !vec4<bool>(true, var_0.d.a, true, arg_1.a.x), arg_1.b.x), arg_1.d.d.x, var_0.d), Struct_1(select((u_input.c.x == arg_1.d.b) | arg_1.a.x, all(vec4<bool>(true, var_0.b.x, false, arg_1.a.x)), false)), Struct_2((~12149i >= (u_input.a & 0i)) & true, -_wgslsmith_dot_vec3_i32(-arg_1.d.d, var_0.d.d), Struct_1(_wgslsmith_f_op_f32(round(var_1.x)) < _wgslsmith_f_op_f32(max(-612f, var_1.x))), vec3<i32>(31018i, global1[_wgslsmith_index_u32(0u, 1u)] | ~arg_0, -1i), !select(vec4<bool>(var_0.d.e.x, false, false, true), select(arg_1.b, var_0.d.e, arg_1.a.x), !var_0.d.e)));
}

fn func_4(arg_0: Struct_4) -> vec3<bool> {
    var var_0 = Struct_3(!vec2<bool>(arg_0.c.a.x, _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(u_input.b.x, 15647u, 25931u)) != ~u_input.b.x), !func_2(-(~global1[_wgslsmith_index_u32(u_input.b.x, 1u)]), global2[_wgslsmith_index_u32(1u, 6u)], _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), vec3<u32>(u_input.b.x, 0u, u_input.d.x) & u_input.d)).b.e, ~u_input.c.x, func_2(max(-global1[_wgslsmith_index_u32(u_input.b.x, 1u)], ~1i >> (0u % 32u)), Struct_3(select(vec2<bool>(arg_0.b.c.a, arg_0.b.e.x), select(vec2<bool>(arg_0.c.b.x, false), arg_0.c.b.yx, arg_0.a.b.yy), all(vec3<bool>(false, arg_0.a.a.x, arg_0.c.d.e.x))), select(func_2(u_input.e.x, global2[_wgslsmith_index_u32(29583u, 6u)], 18190u).c.b, vec4<bool>(true, false, true, false), arg_0.b.e), arg_0.e.b, func_2(select(global1[_wgslsmith_index_u32(28000u, 1u)], 0i, false), arg_0.a, firstLeadingBit(12852u)).a.d), _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(_wgslsmith_div_u32(10818u, u_input.b.x), 1u, ~36126u))).a.d);
    let var_1 = func_2(u_input.c.x, arg_0.a, 0u | countOneBits(u_input.b.x)).c;
    global2 = array<Struct_3, 6>();
    let var_2 = vec3<i32>(_wgslsmith_clamp_i32(-13290i, -1i, _wgslsmith_mod_i32(i32(-1i) * -global1[_wgslsmith_index_u32(u_input.d.x, 1u)], var_1.c)), -2147483647i, 1i);
    var_0 = var_1;
    return arg_0.b.e.wyz;
}

fn func_1(arg_0: bool) -> vec4<bool> {
    global2 = array<Struct_3, 6>();
    var var_0 = Struct_2(all(func_4(func_2(1i, Struct_3(vec2<bool>(false, arg_0), vec4<bool>(false, arg_0, true, arg_0), -62989i, Struct_2(true, global1[_wgslsmith_index_u32(u_input.b.x, 1u)], Struct_1(arg_0), vec3<i32>(-44867i, global1[_wgslsmith_index_u32(u_input.d.x, 1u)], u_input.e.x), vec4<bool>(true, true, arg_0, false))), 59214u))) | false, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~42238u, ~4294967295u, abs(_wgslsmith_div_u32(u_input.d.x, 50833u))) | 24770u, 1u)], global0[_wgslsmith_index_u32(u_input.b.x, 30u)], vec3<i32>(~(~_wgslsmith_add_i32(global1[_wgslsmith_index_u32(16971u, 1u)], -315i)), u_input.e.x, u_input.a), select(vec4<bool>(true, true, true, _wgslsmith_add_u32(u_input.b.x, 0u) < _wgslsmith_div_u32(u_input.b.x, u_input.d.x)), vec4<bool>(true, arg_0, true, min(u_input.b.x, 13336u) == ~u_input.b.x), arg_0));
    let var_1 = func_2(0i >> (reverseBits(_wgslsmith_add_u32(abs(u_input.b.x), firstLeadingBit(u_input.b.x))) % 32u), func_2(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(2147483647i, 1i, -8506i, global1[_wgslsmith_index_u32(4294967295u, 1u)])), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.b, u_input.a, 0i, var_0.b), vec4<i32>(2147483647i, 11331i, 0i, global1[_wgslsmith_index_u32(u_input.d.x, 1u)])) << (abs(vec4<u32>(0u, 48663u, 3286u, 0u)) % vec4<u32>(32u))), Struct_3(!select(vec2<bool>(false, true), var_0.e.zw, vec2<bool>(false, false)), var_0.e, var_0.b, Struct_2(true, ~0i, func_2(-1i, global2[_wgslsmith_index_u32(54637u, 6u)], u_input.b.x).e.c, u_input.e, var_0.e)), countOneBits(1u)).a, _wgslsmith_add_u32(u_input.b.x, _wgslsmith_mult_u32(14176u, _wgslsmith_sub_u32(u_input.b.x, u_input.d.x >> (u_input.d.x % 32u))))).e.d;
    let var_2 = Struct_4(func_2(1i, func_2(min(-26829i, -2147483647i), Struct_3(func_4(Struct_4(Struct_3(var_0.e.yx, var_0.e, 1i, Struct_2(var_0.e.x, 33001i, var_0.c, vec3<i32>(var_0.d.x, var_0.b, 1i), var_0.e)), Struct_2(arg_0, u_input.c.x, Struct_1(true), var_1, var_0.e), Struct_3(vec2<bool>(var_0.a, true), var_0.e, u_input.e.x, Struct_2(arg_0, var_1.x, Struct_1(false), var_1, var_0.e)), Struct_1(arg_0), Struct_2(true, u_input.a, global0[_wgslsmith_index_u32(u_input.b.x, 30u)], vec3<i32>(5204i, -26433i, -1i), vec4<bool>(var_0.e.x, true, false, var_0.a)))).yz, vec4<bool>(arg_0, var_0.e.x, arg_0, var_0.e.x), func_2(-1i, global2[_wgslsmith_index_u32(u_input.d.x, 6u)], 0u).b.d.x, func_2(-32067i, global2[_wgslsmith_index_u32(91603u, 6u)], 1u).b), 1u).c, 4294967295u).c, func_2(1i, func_2(global1[_wgslsmith_index_u32(u_input.d.x, 1u)], func_2(2147483647i, global2[_wgslsmith_index_u32(32752u, 6u)], 1u).c, abs(1u)).a, abs(~u_input.b.x)).a.d, func_2(-var_1.x, func_2(~func_2(var_1.x, Struct_3(vec2<bool>(false, var_0.c.a), var_0.e, -2147483647i, Struct_2(true, global1[_wgslsmith_index_u32(u_input.b.x, 1u)], Struct_1(true), vec3<i32>(u_input.e.x, -25622i, var_0.d.x), var_0.e)), u_input.b.x).b.b, global2[_wgslsmith_index_u32(u_input.b.x, 6u)], _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(70553u, u_input.d.x)), vec2<u32>(u_input.b.x, u_input.b.x))).a, u_input.b.x).a, func_2(u_input.a, Struct_3(select(select(vec2<bool>(arg_0, true), vec2<bool>(true, arg_0), vec2<bool>(false, true)), select(var_0.e.xw, var_0.e.zx, var_0.e.x), var_0.e.x), vec4<bool>(arg_0 | true, 0u <= u_input.b.x, false && var_0.c.a, !arg_0), u_input.c.x, Struct_2(true, -2511i, Struct_1(false), vec3<i32>(u_input.c.x, -2147483647i, u_input.a) << (u_input.d % vec3<u32>(32u)), !vec4<bool>(arg_0, var_0.e.x, arg_0, arg_0))), ~1u).c.d.c, Struct_2(any(var_0.e.wzx) | false, ~(-var_1.x) << (_wgslsmith_mod_u32(abs(u_input.d.x), u_input.b.x) % 32u), Struct_1(!var_0.e.x), select(firstLeadingBit(vec3<i32>(-13168i, var_0.d.x, u_input.a)), var_0.d, false), var_0.e));
    let var_3 = 885f;
    return !(!(!var_0.e));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 1>();
    var var_0 = vec2<bool>(all(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)))), true);
    var var_1 = all(select(!select(func_1(true), func_2(global1[_wgslsmith_index_u32(u_input.d.x, 1u)], Struct_3(vec2<bool>(true, var_0.x), vec4<bool>(true, var_0.x, false, var_0.x), u_input.c.x, Struct_2(var_0.x, u_input.e.x, global0[_wgslsmith_index_u32(7918u, 30u)], vec3<i32>(2964i, 1i, -32537i), vec4<bool>(true, var_0.x, true, var_0.x))), 1u).e.e, all(vec4<bool>(var_0.x, true, false, var_0.x))), vec4<bool>(var_0.x, func_1(var_0.x).x, any(!vec3<bool>(var_0.x, var_0.x, false)), !(var_0.x | false)), !var_0.x));
    global0 = array<Struct_1, 30>();
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.d.x, min(6444u, u_input.b.x)), 17576u), ~(~u_input.d.x));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1098f * _wgslsmith_f_op_f32(-1000f - -1265f))), _wgslsmith_f_op_f32(-155f - _wgslsmith_f_op_f32(select(-302f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -110f) + _wgslsmith_f_op_f32(max(-507f, 1207f))), var_0.x))));
    var var_4 = vec3<i32>(-26167i, 2147483647i, -78674i);
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.e.x);
}

