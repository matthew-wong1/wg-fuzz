struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 25> = array<vec4<u32>, 25>(vec4<u32>(1u, 77522u, 0u, 64864u), vec4<u32>(4328u, 1u, 1u, 1u), vec4<u32>(0u, 4294967295u, 13288u, 68221u), vec4<u32>(10586u, 1u, 0u, 28957u), vec4<u32>(0u, 38410u, 2744u, 755u), vec4<u32>(6825u, 0u, 28471u, 0u), vec4<u32>(0u, 0u, 84731u, 0u), vec4<u32>(1u, 1u, 4294967295u, 4294967295u), vec4<u32>(0u, 57405u, 1u, 17538u), vec4<u32>(0u, 0u, 1u, 4294967295u), vec4<u32>(85193u, 25707u, 0u, 38081u), vec4<u32>(6905u, 1u, 0u, 0u), vec4<u32>(0u, 39186u, 4294967295u, 1u), vec4<u32>(1u, 15273u, 26418u, 24179u), vec4<u32>(79153u, 7506u, 0u, 4294967295u), vec4<u32>(67522u, 19879u, 78459u, 1u), vec4<u32>(15699u, 49861u, 0u, 0u), vec4<u32>(4294967295u, 1u, 4294967295u, 24938u), vec4<u32>(4294967295u, 10504u, 1u, 63520u), vec4<u32>(4294967295u, 1u, 1u, 0u), vec4<u32>(28832u, 1u, 0u, 19188u), vec4<u32>(4294967295u, 0u, 1u, 75579u), vec4<u32>(1u, 1u, 0u, 4294967295u), vec4<u32>(9681u, 19638u, 27502u, 96060u), vec4<u32>(38416u, 10218u, 1u, 35346u));

var<private> global1: array<vec3<f32>, 6>;

var<private> global2: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(1033f, 346f), vec2<f32>(240f, 556f), vec2<f32>(-1006f, -1141f), vec2<f32>(108f, -575f), vec2<f32>(103f, -134f), vec2<f32>(-935f, 298f), vec2<f32>(-1008f, -1019f), vec2<f32>(-2068f, 1208f), vec2<f32>(-552f, -659f), vec2<f32>(-778f, 325f), vec2<f32>(1930f, -1068f), vec2<f32>(517f, 1000f), vec2<f32>(-363f, -1120f));

var<private> global3: array<vec2<bool>, 30>;

var<private> global4: Struct_1;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<u32>) -> bool {
    let var_0 = abs(~(~_wgslsmith_div_vec2_u32(~arg_0.b.d, vec2<u32>(47205u, 1u))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a) + arg_0.b.b.x), _wgslsmith_f_op_f32(max(global4.a, 472f)), arg_0.b.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1300f + arg_0.b.b.x) * _wgslsmith_f_op_f32(-global4.a))), -402f));
    global0 = array<vec4<u32>, 25>();
    let var_2 = arg_0;
    global4 = var_2.b;
    return arg_0.a;
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    global1 = array<vec3<f32>, 6>();
    global3 = array<vec2<bool>, 30>();
    var var_0 = firstLeadingBit(arg_2.b.d.x);
    return countOneBits(~26531i ^ abs(_wgslsmith_add_i32(abs(arg_1.b.e.x), ~7459i)));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: bool) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -621f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(178f, -263f, arg_2)))), -1575f)), vec3<f32>(361f, -485f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(749f + -128f), _wgslsmith_f_op_f32(-global4.b.x), all(vec4<bool>(false, true, arg_2, arg_2)))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(341f + arg_1.b.b.x), _wgslsmith_f_op_f32(ceil(994f)))))), select(_wgslsmith_mult_i32(1i, min(u_input.e.x, -arg_1.b.e.x)), _wgslsmith_mod_i32(2147483647i, arg_0), all(vec4<bool>(any(vec2<bool>(true, false)), arg_1.a & arg_2, arg_2, arg_1.a))), vec2<u32>(u_input.b, 0u & _wgslsmith_mod_u32(arg_1.b.d.x, ~arg_1.b.d.x)), vec3<i32>(global4.c, u_input.e.x, ~(~arg_1.b.e.x ^ ~u_input.e.x)));
    let var_1 = !(!select(select(!vec3<bool>(arg_2, arg_1.a, false), !vec3<bool>(arg_2, false, true), true), vec3<bool>(true, func_2(Struct_2(false, var_0), Struct_1(arg_1.b.a, global1[_wgslsmith_index_u32(0u, 6u)], 5105i, u_input.d, vec3<i32>(u_input.c.x, 58502i, u_input.e.x)), vec2<u32>(1u, u_input.a)), !arg_2), !vec3<bool>(arg_1.a, arg_2, arg_2)));
    var var_2 = abs(vec3<i32>(~(~1i), u_input.e.x, -1i) << (vec3<u32>(_wgslsmith_add_u32(0u, 0u), firstLeadingBit(15144u), var_0.d.x) % vec3<u32>(32u)));
    var var_3 = var_0.a;
    global1 = array<vec3<f32>, 6>();
    return false;
}

fn func_1(arg_0: i32, arg_1: vec3<u32>) -> u32 {
    var var_0 = vec3<bool>(!((761f < _wgslsmith_f_op_f32(575f * global4.a)) || all(vec2<bool>(true, true))), func_4(global4.e.x, Struct_2(true != func_2(Struct_2(false, Struct_1(global4.b.x, vec3<f32>(global4.a, 329f, global4.b.x), -1i, global4.d, vec3<i32>(-54641i, -32408i, arg_0))), Struct_1(global4.b.x, global1[_wgslsmith_index_u32(arg_1.x, 6u)], global4.e.x, u_input.d, global4.e), global4.d), Struct_1(_wgslsmith_f_op_f32(-global4.a), vec3<f32>(-388f, 414f, -429f), func_3(1409f, Struct_2(true, Struct_1(-789f, vec3<f32>(-606f, 476f, global4.b.x), arg_0, vec2<u32>(arg_1.x, 19417u), vec3<i32>(-2147483647i, global4.c, global4.e.x))), Struct_2(true, Struct_1(global4.a, global1[_wgslsmith_index_u32(u_input.b, 6u)], arg_0, global4.d, u_input.c))), vec2<u32>(u_input.d.x, 1u) >> (arg_1.zy % vec2<u32>(32u)), vec3<i32>(67112i, 0i, 21252i) | vec3<i32>(u_input.e.x, 1i, arg_0))), !(u_input.e.x <= _wgslsmith_dot_vec3_i32(vec3<i32>(global4.e.x, global4.e.x, -2147483647i), vec3<i32>(u_input.e.x, -14283i, 5359i)))), !all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), true)));
    var var_1 = ~min(~u_input.e.x, -3624i);
    global3 = array<vec2<bool>, 30>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b.x)));
    var var_3 = Struct_1(1114f, _wgslsmith_f_op_vec3_f32(-global4.b), -6746i, arg_1.zy, abs(u_input.c));
    return _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(~(arg_1.x ^ 13872u), 25u)], vec4<u32>(~max(select(global4.d.x, var_3.d.x, var_0.x), ~global4.d.x), ~var_3.d.x, 54297u, ~(~global4.d.x & abs(global4.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 13>();
    var var_0 = ~(vec2<u32>(~func_1(-2147483647i, vec3<u32>(u_input.d.x, u_input.d.x, 43607u)), 19706u) | global4.d);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1237f)), _wgslsmith_f_op_f32(-1f))) - _wgslsmith_f_op_f32(global4.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b.x)))));
    global2 = array<vec2<f32>, 13>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(abs(-1548f)), vec3<f32>(var_1, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global4.b.x)) * 387f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1244f - _wgslsmith_f_op_f32(-var_1)))), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(global4.e.x, u_input.e.x, global4.e.x, 1i), _wgslsmith_mult_vec4_i32(-reverseBits(vec4<i32>(u_input.e.x, 25962i, global4.c, -2147483647i)), min(vec4<i32>(u_input.e.x, 0i, -1i, -1i), _wgslsmith_sub_vec4_i32(vec4<i32>(global4.e.x, 80204i, u_input.c.x, 1i), vec4<i32>(u_input.e.x, 564i, global4.c, global4.e.x))))), vec2<u32>(~(~reverseBits(47683u)), abs(_wgslsmith_clamp_u32(abs(var_0.x), var_0.x, var_0.x))), vec3<i32>(_wgslsmith_mult_i32(u_input.e.x, 0i), ~u_input.c.x, 8337i));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(870f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(38704i, abs(var_2.e.x) | var_2.e.x, -62184i), ~17463u);
}

