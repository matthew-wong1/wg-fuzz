struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
    d: vec2<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

var<private> global1: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(46536i, Struct_1(vec3<u32>(1u, 0u, 4294967295u), vec2<f32>(876f, 1569f), 4603i, vec4<bool>(false, false, false, false)), vec3<u32>(4294967295u, 25852u, 17081u)), Struct_2(i32(-2147483648), Struct_1(vec3<u32>(91541u, 4294967295u, 4294967295u), vec2<f32>(-850f, -1505f), 4110i, vec4<bool>(false, true, true, true)), vec3<u32>(4294967295u, 15208u, 52665u)), Struct_2(0i, Struct_1(vec3<u32>(4294967295u, 13669u, 125579u), vec2<f32>(-1465f, -202f), 0i, vec4<bool>(false, false, false, true)), vec3<u32>(14237u, 12209u, 100618u)));

var<private> global2: array<vec3<f32>, 25>;

var<private> global3: vec4<i32> = vec4<i32>(0i, 4080i, -1i, -1i);

var<private> global4: vec3<i32>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1() -> f32 {
    let var_0 = !vec2<bool>(true, !(~u_input.a == _wgslsmith_add_u32(u_input.a, 1u)));
    global4 = -(~vec3<i32>(~(-29759i), 0i, ~u_input.b));
    return -1708f;
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: u32, arg_3: vec4<i32>) -> i32 {
    let var_0 = arg_0.b;
    var var_1 = -vec3<i32>(2147483647i, i32(-1i) * -2147483647i, select(_wgslsmith_div_i32(abs(-35987i), global3.x), max(16698i, ~(-44302i)), true));
    let var_2 = arg_0;
    var var_3 = Struct_4(select(firstTrailingBit(2147483647i), arg_0.a, 1u < _wgslsmith_add_u32(_wgslsmith_mult_u32(46296u, var_0.a.x), ~arg_0.c.x)), Struct_1(arg_0.c, vec2<f32>(arg_0.b.b.x, var_0.b.x), -_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-1i, 2147483647i, -32191i)), arg_3.xyx ^ vec3<i32>(u_input.b, u_input.b, var_0.c)), arg_0.b.d));
    var var_4 = arg_0.b.d.wy;
    return 1i;
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: vec2<i32>) -> vec3<i32> {
    global1 = array<Struct_2, 3>();
    var var_0 = 15122u;
    let var_1 = arg_1.b.b.x;
    global4 = vec3<i32>(arg_1.a, ~_wgslsmith_dot_vec4_i32(select(abs(vec4<i32>(arg_2.x, arg_2.x, 1047i, u_input.b)), vec4<i32>(arg_2.x, 0i, 20543i, global0[_wgslsmith_index_u32(0u, 5u)]) ^ vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 5u)], u_input.b, 1i, 1i), !arg_1.b.d), vec4<i32>(2147483647i, global3.x, 2147483647i, 0i)), firstTrailingBit(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(~(~u_input.a), 5u)], _wgslsmith_sub_i32(countOneBits(global3.x), 1i))));
    let var_2 = reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(global4.x | global4.x, _wgslsmith_sub_i32(arg_1.a, -1i), _wgslsmith_mod_i32(u_input.b, global0[_wgslsmith_index_u32(1266u, 5u)])), vec3<i32>(-42624i, abs(arg_1.b.c), min(global0[_wgslsmith_index_u32(u_input.a, 5u)], -52233i))) ^ _wgslsmith_add_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(0u, 5u)], 72435i, arg_0), global3.yxy), global3.wyw));
    return _wgslsmith_clamp_vec3_i32(abs(_wgslsmith_mod_vec3_i32(var_2, select(-vec3<i32>(1329i, 37155i, -34688i), ~global3.xzz, all(vec4<bool>(true, arg_1.b.d.x, true, arg_1.b.d.x))))), _wgslsmith_add_vec3_i32(firstLeadingBit(firstLeadingBit(abs(var_2))), -var_2), global3.yww ^ _wgslsmith_div_vec3_i32(~var_2, ~var_2));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    global0 = array<i32, 5>();
    let var_0 = false & !all(!select(arg_1.b.d.xz, arg_1.b.d.xy, arg_0.b.d.yz));
    let var_1 = func_4(_wgslsmith_div_i32(-func_3(Struct_2(global3.x, Struct_1(vec3<u32>(arg_1.c.x, u_input.a, arg_1.b.a.x), vec2<f32>(-500f, arg_0.b.b.x), 2147483647i, arg_1.b.d), vec3<u32>(arg_1.b.a.x, u_input.a, arg_1.c.x)), vec3<u32>(arg_1.b.a.x, arg_0.b.a.x, 0u) >> (vec3<u32>(arg_1.b.a.x, 0u, 92625u) % vec3<u32>(32u)), _wgslsmith_div_u32(u_input.a, arg_0.b.a.x), ~vec4<i32>(-28736i, global3.x, -7875i, u_input.b)), global3.x), Struct_4(_wgslsmith_div_i32(arg_0.a, -_wgslsmith_clamp_i32(-2147483647i, 14867i, global3.x)), Struct_1(vec3<u32>(arg_1.b.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(59656u, 52013u, 0u, arg_1.c.x), vec4<u32>(75919u, u_input.a, arg_0.b.a.x, 28624u)), ~18297u), arg_1.b.b, 19814i, arg_0.b.d)), _wgslsmith_div_vec2_i32(abs(global4.zy & global4.yy) << (vec2<u32>(20929u, ~arg_1.b.a.x) % vec2<u32>(32u)), -(~select(global4.xy, global3.yy, vec2<bool>(true, true)))));
    global1 = array<Struct_2, 3>();
    var var_2 = u_input.a;
    return arg_0.b;
}

fn func_5(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: vec2<u32>) -> bool {
    let var_0 = Struct_3(arg_2.b, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.b.b.x, 967f, -882f, 2037f), vec4<f32>(arg_2.b.b.x, arg_2.b.b.x, arg_2.b.b.x, arg_2.b.b.x), true)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.b.x, -166f, arg_2.b.b.x, -1437f)))))), 1i, vec2<bool>(!any(vec3<bool>(true, arg_0, true)), all(!select(arg_2.b.d.zy, vec2<bool>(arg_0, arg_2.b.d.x), vec2<bool>(true, false)))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(arg_2.b.a.x), 4294967295u, firstLeadingBit(u_input.a), _wgslsmith_dot_vec3_u32(arg_2.b.a, arg_2.b.a) ^ arg_2.b.a.x), select(firstLeadingBit(vec4<u32>(4294967295u, 0u, arg_2.b.a.x, arg_3.x)), firstLeadingBit(vec4<u32>(arg_3.x, arg_3.x, arg_3.x, 63508u)), vec4<bool>(true, true, false, arg_2.b.d.x)) << (select(vec4<u32>(arg_3.x, arg_2.b.a.x, arg_3.x, 4294967295u), vec4<u32>(1u, 55984u, arg_2.b.a.x, arg_2.b.a.x), arg_2.b.d.x) % vec4<u32>(32u))), 3u)]);
    let var_1 = var_0.b.zxy;
    global1 = array<Struct_2, 3>();
    global1 = array<Struct_2, 3>();
    var var_2 = vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_2.b.a.x, 0u, u_input.a), var_0.a.a.x), _wgslsmith_add_u32(u_input.a, ~arg_3.x), 55068u), arg_2.b.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.a.x, var_0.a.a.x, 17493u), max(_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 1u, var_0.e.c.x), _wgslsmith_mod_vec3_u32(var_0.a.a, vec3<u32>(48815u, 0u, 0u))), firstTrailingBit(arg_2.b.a))), _wgslsmith_add_u32(u_input.a, _wgslsmith_clamp_u32(u_input.a, var_0.e.b.a.x, arg_2.b.a.x)));
    return select(!var_0.a.d.x, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 3>();
    let var_0 = !(!(u_input.b <= -u_input.b));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1190f, 1000f) - vec2<f32>(-638f, -252f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1832f, -630f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1225f, -353f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(810f, 434f)))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -666f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(935f * -635f)))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(105f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(617f)), _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -387f))))));
    let var_2 = Struct_1(~vec3<u32>(~_wgslsmith_sub_u32(u_input.a, u_input.a), u_input.a, 11472u), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1 + _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, -2689f), vec2<f32>(-197f, 1596f))) - vec2<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x + var_1.x))))), global0[_wgslsmith_index_u32(59838u ^ u_input.a, 5u)], select(!vec4<bool>(!var_0, true, var_0, true), !(!vec4<bool>(var_0, true, var_0, var_0)), func_5(any(!vec4<bool>(false, var_0, false, var_0)), firstLeadingBit(global3.xzw) >> ((vec3<u32>(u_input.a, 19314u, u_input.a) & vec3<u32>(37876u, u_input.a, u_input.a)) % vec3<u32>(32u)), Struct_4(global4.x, func_2(Struct_4(u_input.b, Struct_1(vec3<u32>(u_input.a, 0u, u_input.a), vec2<f32>(684f, 209f), 1i, vec4<bool>(var_0, false, false, true))), global1[_wgslsmith_index_u32(16615u, 3u)], false)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 66147u), vec2<u32>(4294967295u, 51965u)))));
    let var_3 = var_2;
    let var_4 = _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(max(var_3.a | var_3.a, vec3<u32>(var_2.a.x, var_3.a.x, 1u)), var_2.a), reverseBits(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(var_2.a.x, var_2.a.x, u_input.a)), ~_wgslsmith_sub_vec3_u32(var_2.a, var_2.a), vec3<u32>(reverseBits(15545u), 47373u, var_3.a.x))));
    let var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(405f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -987f), -690f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(476f, var_3.b.x))))), _wgslsmith_f_op_f32(step(247f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_3.b.x, _wgslsmith_div_f32(1020f, var_2.b.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(vec4<u32>(var_3.a.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(42199u, var_3.a.x, 21047u), ~vec3<u32>(var_2.a.x, 0u, var_2.a.x)), firstLeadingBit(var_4) & _wgslsmith_clamp_u32(var_2.a.x, u_input.a, 87180u), 0u), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a, 26317u, 4294967295u), vec4<u32>(var_4, 3440u, u_input.a, 7622u)))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_5, _wgslsmith_f_op_f32(-var_1.x)))), var_2.b.x, var_5));
}

