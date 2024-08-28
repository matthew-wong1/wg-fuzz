struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: Struct_4,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 18> = array<vec2<i32>, 18>(vec2<i32>(0i, 0i), vec2<i32>(27525i, 8197i), vec2<i32>(24386i, -24958i), vec2<i32>(32502i, -3680i), vec2<i32>(2147483647i, 16274i), vec2<i32>(1i, 1i), vec2<i32>(38924i, -64790i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(1i, -1i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-70487i, -26126i), vec2<i32>(-25960i, 26151i), vec2<i32>(67702i, 1i), vec2<i32>(0i, -20863i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-446i, 0i), vec2<i32>(-1i, -45957i), vec2<i32>(0i, -12292i));

var<private> global1: f32;

var<private> global2: array<Struct_4, 27>;

var<private> global3: array<vec2<u32>, 25>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: u32) -> u32 {
    global3 = array<vec2<u32>, 25>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(713f)), _wgslsmith_f_op_f32(select(283f, 1182f, false)), -1000f, -912f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-697f, 1175f, -1042f, 205f)) * vec4<f32>(1317f, -500f, 521f, -523f)))), vec3<u32>(_wgslsmith_add_u32(reverseBits(~1u), ~select(u_input.a, 41036u, true)), max(~select(46894u, 4294967295u, false), ~4294967295u), abs(4294967295u)), all(vec3<bool>(!arg_0, arg_0, false)), ~(-(u_input.b >> (u_input.c % 32u)) << (reverseBits(27230u) % 32u)));
    var var_1 = firstTrailingBit(~firstLeadingBit(select(_wgslsmith_sub_vec2_u32(global3[_wgslsmith_index_u32(arg_1, 25u)], vec2<u32>(55050u, 0u)), ~vec2<u32>(u_input.a, arg_1), true)));
    let var_2 = Struct_5(_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_0.a.x, var_0.a.x)))))), Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, -225f, var_0.a.x, var_0.a.x), vec4<f32>(var_0.a.x, -1171f, 870f, var_0.a.x), true)))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2454f, var_0.a.x, var_0.a.x, var_0.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, -1796f, var_0.a.x))))), ~reverseBits(var_0.b) >> (vec3<u32>(countOneBits(var_1.x), arg_1, 1u) % vec3<u32>(32u)), all(select(!vec4<bool>(true, false, true, arg_0), select(vec4<bool>(var_0.c, true, arg_0, var_0.c), vec4<bool>(true, false, arg_0, var_0.c), arg_0), select(vec4<bool>(false, false, false, false), vec4<bool>(arg_0, arg_0, arg_0, true), true))), -7051i), Struct_4(~(~select(vec4<u32>(arg_1, var_1.x, var_1.x, 1u), vec4<u32>(0u, arg_1, arg_1, 45244u), true)), select(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, var_0.b.x, 17275u, 0u), max(vec4<u32>(54202u, arg_1, var_0.b.x, 84976u), vec4<u32>(13300u, 0u, var_0.b.x, var_1.x))), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1, var_1.x, 1u, var_1.x), select(vec4<u32>(arg_1, var_0.b.x, arg_1, var_1.x), vec4<u32>(var_0.b.x, 1u, var_1.x, 0u), vec4<bool>(true, arg_0, var_0.c, true)), vec4<u32>(var_0.b.x, 1u, 7201u, u_input.c) & vec4<u32>(var_1.x, var_0.b.x, 44439u, 13154u)), all(vec2<bool>(var_0.c, true))), Struct_1(min(_wgslsmith_dot_vec2_u32(vec2<u32>(70074u, u_input.a), vec2<u32>(43555u, 1u)), 1u << (u_input.a % 32u)), var_1.x)), Struct_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~var_0.b, ~var_0.b), min(4294967295u, u_input.c) << (var_1.x % 32u)), ~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(79115u, 4294967295u, arg_1, var_0.b.x)), ~vec4<u32>(31164u, 9135u, var_0.b.x, 38199u))));
    let var_3 = _wgslsmith_sub_u32(4294967295u, ~_wgslsmith_mod_u32(arg_1, select(var_2.d.a, var_1.x, false) << (select(40654u, var_2.c.a.x, var_2.b.c) % 32u)));
    return ~(~76441u);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_5) -> vec4<i32> {
    var var_0 = arg_1.d;
    global0 = array<vec2<i32>, 18>();
    var var_1 = firstLeadingBit(-(~firstTrailingBit(vec3<i32>(2147483647i, -2147483647i, u_input.b)) << ((_wgslsmith_add_vec3_u32(arg_1.c.b.zyy, arg_1.b.b) << ((arg_1.c.a.zyw >> (arg_1.b.b % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-159f, _wgslsmith_f_op_f32(arg_0.x - 712f))), _wgslsmith_f_op_f32(floor(768f))))));
    var var_2 = Struct_3(arg_1.b.a, vec3<u32>(~u_input.a, func_3(arg_1.b.c, ~var_0.b), _wgslsmith_add_u32(0u, 1u)), !(!(all(vec3<bool>(arg_1.b.c, arg_1.b.c, true)) && !arg_1.b.c)), ~_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(global0[_wgslsmith_index_u32(u_input.a >> (36251u % 32u), 18u)], _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.b.d, arg_1.b.d), vec2<i32>(2147483647i, -1i), var_1.yy)), vec2<i32>(~0i, arg_1.b.d)));
    return -countOneBits(_wgslsmith_mod_vec4_i32(-vec4<i32>(34566i, var_1.x, var_2.d, -2147483647i), ~vec4<i32>(var_1.x, var_2.d, -2147483647i, var_2.d)) ^ vec4<i32>(_wgslsmith_dot_vec2_i32(var_1.zx, global0[_wgslsmith_index_u32(var_0.a, 18u)]), 1i, ~2147483647i, -u_input.b));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2671f, -1221f, -193f, -1222f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 180f, 201f, -1612f) * vec4<f32>(2109f, -103f, -2017f, -390f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-582f, 233f, -672f, 1249f))))), ~vec3<u32>(0u, ~(~u_input.a), 1u), ~_wgslsmith_clamp_i32(-58250i, 1i, arg_0 << (u_input.c % 32u)) < _wgslsmith_dot_vec4_i32(func_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1034f, 716f, -916f))), Struct_5(-1000f, Struct_3(vec4<f32>(142f, 1394f, 3262f, 1068f), vec3<u32>(1u, 6510u, u_input.a), false, -1i), Struct_4(vec4<u32>(u_input.a, u_input.a, 98092u, 6682u), vec4<u32>(0u, u_input.a, 1u, 4294967295u), Struct_1(49750u, 0u)), Struct_1(1u, u_input.a))), vec4<i32>(-1i) * -vec4<i32>(u_input.b, u_input.b, arg_0, -66252i)), u_input.b | 1i);
    global2 = array<Struct_4, 27>();
    global3 = array<vec2<u32>, 25>();
    global3 = array<vec2<u32>, 25>();
    global2 = array<Struct_4, 27>();
    return Struct_1(~(_wgslsmith_sub_u32(var_0.b.x, u_input.c) << (~u_input.c % 32u)) | ~_wgslsmith_sub_u32(abs(1u), var_0.b.x >> (u_input.c % 32u)), ~(~48194u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(~(vec4<u32>(reverseBits(u_input.a), 1u, u_input.c, ~u_input.a) & ~countOneBits(vec4<u32>(0u, 1u, 0u, 25946u))), vec4<u32>(1u, countOneBits(reverseBits(u_input.a)), ~u_input.c, abs(u_input.a)), func_1(-14489i));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1030f, -473f, 480f, 390f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1055f, 1328f, -412f, -801f))))), vec3<u32>(100804u, func_3(false, firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, var_0.a.x), var_0.a))), u_input.a), !(u_input.b != -17147i), -_wgslsmith_mult_i32(max(i32(-1i) * -8988i, select(2147483647i, u_input.b, true)), ~func_2(vec3<f32>(261f, -881f, -635f), Struct_5(-421f, Struct_3(vec4<f32>(235f, -1000f, 849f, -135f), var_0.a.xzy, true, -41848i), Struct_4(var_0.a, var_0.a, var_0.c), var_0.c)).x));
    let var_2 = var_1;
    global3 = array<vec2<u32>, 25>();
    var var_3 = var_1.d;
    let var_4 = global3[_wgslsmith_index_u32(~u_input.a, 25u)];
    let var_5 = _wgslsmith_add_i32(~_wgslsmith_mult_i32(var_1.d, abs(-2147483647i)), reverseBits(firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-3735i, var_1.d, 1i), vec3<i32>(var_1.d, 1i, 22949i)), ~u_input.b))));
    var var_6 = reverseBits((min(~1u, firstTrailingBit(var_0.b.x)) << (_wgslsmith_clamp_u32(select(42214u, var_2.b.x, var_2.c), 17471u, ~var_2.b.x) % 32u)) << ((abs(u_input.a) >> (_wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(1u, 13364u)) % 32u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, firstLeadingBit(abs(~(~vec2<u32>(var_1.b.x, 2095u)))));
}

