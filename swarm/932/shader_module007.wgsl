struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: f32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28> = array<i32, 28>(-1i, -16215i, -37384i, 11858i, 38510i, 14210i, 50435i, 2147483647i, 13617i, 13703i, -2000i, -12356i, 2147483647i, -12541i, -1i, 47812i, -27737i, 0i, 21405i, 30734i, 2147483647i, 42302i, 25497i, -1i, 1i, 0i, 0i, -14908i);

var<private> global1: array<u32, 5> = array<u32, 5>(64101u, 24628u, 0u, 4294967295u, 4028u);

var<private> global2: Struct_3;

var<private> global3: vec4<i32>;

var<private> global4: array<vec4<i32>, 1> = array<vec4<i32>, 1>(vec4<i32>(11456i, 102190i, -50813i, 1i));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global4 = array<vec4<i32>, 1>();
    var var_0 = Struct_2(true, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(global2.b.b, global2.b.b))), vec4<i32>(global2.b.c.x, ~(arg_0.a >> (select(global1[_wgslsmith_index_u32(arg_0.d, 5u)], arg_0.d, true) % 32u)), abs(-154i), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(global4[_wgslsmith_index_u32(4294967295u, 1u)], global4[_wgslsmith_index_u32(global2.a.x, 1u)]) & -global2.e.a, global0[_wgslsmith_index_u32(~0u, 28u)] | countOneBits(arg_0.a), -12634i)), global2.e);
    var var_1 = _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(~(~global2.a.zww), _wgslsmith_add_vec3_u32(select(vec3<u32>(global1[_wgslsmith_index_u32(80569u, 5u)], global1[_wgslsmith_index_u32(7328u, 5u)], 1544u), vec3<u32>(0u, 87066u, u_input.a.x), vec3<bool>(true, true, true)), global2.a.www | vec3<u32>(global2.d, u_input.b, u_input.a.x)) ^ select(abs(vec3<u32>(40293u, global2.e.b, arg_0.d)), _wgslsmith_clamp_vec3_u32(global2.a.wzy, global2.a.xyz, vec3<u32>(u_input.b, 68572u, global1[_wgslsmith_index_u32(4294967295u, 5u)])), var_0.a)), ~select(~global2.a.yzy, global2.a.wyz, any(vec3<bool>(true, var_0.a, false))));
    let var_2 = Struct_2(var_0.d.e.x, _wgslsmith_f_op_vec2_f32(sign(var_0.b)), -vec4<i32>(arg_0.a, _wgslsmith_add_i32(2147483647i, global2.b.d.a) ^ (arg_0.a & global3.x), -(~global2.b.c.x), -36604i), var_0.d);
    let var_3 = var_0.d;
    return u_input.a.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: bool) -> vec3<bool> {
    global0 = array<i32, 28>();
    var var_0 = Struct_1(arg_1.a, _wgslsmith_dot_vec4_u32(vec4<u32>(abs(0u), arg_1.b, _wgslsmith_div_u32(global2.b.d.d, 0u), _wgslsmith_mult_u32(1u, 4294967295u)), select(global2.a, select(~vec4<u32>(1u, global2.d, 0u, 1u), vec4<u32>(arg_1.b, arg_0.x, global1[_wgslsmith_index_u32(1u, 5u)], 8832u), !arg_1.e.x), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global2.e.c))))) + arg_1.c), arg_0.x, global2.e.e);
    let var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(1u, min(_wgslsmith_clamp_u32(3140u, 0u, 21767u), _wgslsmith_mod_u32(func_3(arg_1), 1u))), reverseBits(~(vec2<u32>(global2.b.d.b, 1u) & arg_0) >> (_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.a.x), arg_0, u_input.a), select(vec2<u32>(0u, global1[_wgslsmith_index_u32(25990u, 5u)]), global2.a.xw, false), vec2<u32>(u_input.b, 29392u)) % vec2<u32>(32u))));
    global3 = select(-global4[_wgslsmith_index_u32(~(~22049u), 1u)], global2.b.c, var_0.e.x);
    var var_2 = var_0.a | reverseBits(~93088i);
    return !(!select(!select(vec3<bool>(var_0.e.x, false, arg_2), vec3<bool>(true, true, false), vec3<bool>(var_0.e.x, false, arg_1.e.x)), vec3<bool>(false || global2.b.a, 77482u == u_input.b, false), all(global2.e.e)));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_3) -> vec4<u32> {
    var var_0 = !(!select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), arg_0.e.x), vec3<bool>(true, true, true), arg_0.e.x), !func_2(vec2<u32>(arg_0.d, arg_0.b), Struct_1(global0[_wgslsmith_index_u32(60691u, 28u)], global1[_wgslsmith_index_u32(u_input.a.x, 5u)], 299f, 0u, vec2<bool>(false, arg_0.e.x)), global2.e.e.x), !func_2(global2.a.yw, Struct_1(-2147483647i, 0u, global2.e.c, arg_2.d, vec2<bool>(arg_0.e.x, false)), arg_2.b.a).x));
    global2 = arg_2;
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c, arg_2.c)), _wgslsmith_f_op_f32(arg_0.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1547f * global2.b.d.c))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(553f - _wgslsmith_f_op_f32(arg_0.c + arg_2.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-283f, global2.c)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.c))))));
    var var_2 = Struct_3(global2.a, global2.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_1.x)))), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(52922u & arg_1, 0u >> (arg_1 % 32u)), ~u_input.a >> (min(vec2<u32>(1u, 8389u), global2.a.wx) % vec2<u32>(32u))), 4294967295u), Struct_1(_wgslsmith_sub_i32(-min(-1i, global0[_wgslsmith_index_u32(4294967295u, 28u)]), 5360i | global3.x), 79431u, global2.c, abs(~abs(global1[_wgslsmith_index_u32(u_input.b, 5u)])), !vec2<bool>(!arg_2.e.e.x, true)));
    let var_3 = Struct_2(any(select(select(vec4<bool>(var_0.x, true, var_0.x, arg_0.e.x), select(vec4<bool>(global2.b.d.e.x, true, arg_0.e.x, arg_0.e.x), vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(false, var_2.b.d.e.x, var_0.x, false)), any(vec4<bool>(false, true, var_2.e.e.x, true))), select(!vec4<bool>(false, arg_2.e.e.x, arg_0.e.x, global2.e.e.x), !vec4<bool>(global2.e.e.x, var_0.x, arg_0.e.x, global2.e.e.x), true), select(!vec4<bool>(false, var_2.b.a, arg_2.e.e.x, arg_2.b.a), select(vec4<bool>(false, arg_0.e.x, false, true), vec4<bool>(false, var_0.x, global2.e.e.x, false), global2.b.a), select(vec4<bool>(true, false, arg_2.b.d.e.x, true), vec4<bool>(var_2.b.d.e.x, false, true, arg_0.e.x), var_0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.c, _wgslsmith_div_f32(global2.b.d.c, var_2.c)), vec2<f32>(_wgslsmith_f_op_f32(ceil(global2.e.c)), 932f))), arg_2.b.c, Struct_1(_wgslsmith_dot_vec2_i32(-(vec2<i32>(global3.x, arg_0.a) & global3.yy), vec2<i32>(-2147483647i >> (u_input.a.x % 32u), ~27463i)), 16671u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.e.c - 1047f)), _wgslsmith_f_op_f32(floor(-969f)))), u_input.b, !select(!arg_2.b.d.e, !var_0.yz, 29268u == arg_0.b)));
    return ~select(_wgslsmith_div_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 49244u, var_3.d.d, u_input.a.x), global2.a, vec4<u32>(0u, global1[_wgslsmith_index_u32(10565u, 5u)], 1u, 4294967295u))), abs(_wgslsmith_mod_vec4_u32(global2.a, vec4<u32>(47638u, var_3.d.b, arg_0.b, u_input.b)))), var_2.a, select(vec4<bool>(var_0.x, false, select(arg_2.e.e.x, true, var_3.a), all(vec3<bool>(true, arg_2.b.a, true))), select(select(vec4<bool>(arg_0.e.x, true, var_0.x, var_0.x), vec4<bool>(var_3.a, false, arg_2.e.e.x, global2.b.d.e.x), vec4<bool>(false, arg_2.b.a, true, var_2.b.d.e.x)), !vec4<bool>(false, arg_0.e.x, var_0.x, arg_0.e.x), func_2(vec2<u32>(30988u, var_2.a.x), Struct_1(var_3.c.x, 20597u, arg_0.c, 1u, vec2<bool>(var_3.d.e.x, arg_2.b.a)), true).x), !arg_2.b.d.e.x));
}

fn func_4(arg_0: f32, arg_1: vec2<i32>, arg_2: i32, arg_3: Struct_3) -> vec2<f32> {
    global0 = array<i32, 28>();
    var var_0 = vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(min(2147483647i, arg_1.x) << (_wgslsmith_mult_u32(62692u, u_input.a.x) % 32u), _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(42495u, 28u)], i32(-1i) * -16249i, _wgslsmith_dot_vec3_i32(global3.xxw, global3.wwz)), -21982i), global3.zxy), -countOneBits(global2.b.d.a));
    let var_1 = arg_3;
    var var_2 = false;
    var_2 = true;
    return var_1.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 5>();
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_4(global2.c, max(-(global2.b.c.xy >> (vec2<u32>(10137u, 4294967295u) % vec2<u32>(32u))), ~(global3.wy ^ global3.xw)), global2.e.a, Struct_3(func_1(global2.b.d, u_input.a.x, Struct_3(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 5u)], global2.b.d.b, 4294967295u, u_input.a.x), global2.b, 512f, u_input.a.x, Struct_1(1099i, u_input.a.x, global2.b.b.x, 100698u, global2.b.d.e))), global2.b, -1308f, _wgslsmith_div_u32(~global2.b.d.d, global2.e.d), global2.b.d)))));
    global2 = Struct_3(_wgslsmith_mult_vec4_u32(~global2.a, _wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 7925u, global2.d, global1[_wgslsmith_index_u32(4294967295u, 5u)]), global2.a)), global2.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x * -453f))), _wgslsmith_f_op_f32(-global2.b.d.c)), 4294967295u, Struct_1(1i, global2.d, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.e.c), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), ~(~global1[_wgslsmith_index_u32(4294967295u, 5u)]), select(func_2(u_input.a, global2.e, global2.b.b.x <= var_0.x).zz, !vec2<bool>(global2.e.e.x, true), vec2<bool>(true, true))));
    var var_1 = true;
    var var_2 = Struct_3(global2.a, global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_mod_u32(4294967295u, countOneBits(~u_input.a.x)), global2.e);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~global2.b.d.b, _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(11814u, u_input.b, global1[_wgslsmith_index_u32(31957u, 5u)]), var_2.a.wxy), global2.a.xyx)), 0u);
}

