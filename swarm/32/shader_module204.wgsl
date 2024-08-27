struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_2,
    d: i32,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 2> = array<vec2<f32>, 2>(vec2<f32>(1223f, -1317f), vec2<f32>(-2083f, -1419f));

var<private> global1: array<i32, 19> = array<i32, 19>(-1i, 2147483647i, -1i, 27955i, -106009i, 1i, -1i, 21302i, -22365i, -55681i, 2147483647i, -20901i, -48389i, -25876i, i32(-2147483648), 30523i, 6026i, -12902i, 1i);

var<private> global2: array<f32, 18>;

var<private> global3: u32;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: f32, arg_3: Struct_4) -> u32 {
    let var_0 = countOneBits(~_wgslsmith_clamp_vec2_u32(select(vec2<u32>(4294967295u, 0u), vec2<u32>(arg_1, arg_1), arg_3.a), vec2<u32>(arg_1, arg_1) >> (vec2<u32>(arg_1, arg_1) % vec2<u32>(32u)), vec2<u32>(35650u, 35550u)) ^ ~select(vec2<u32>(14648u, arg_1), vec2<u32>(1u, 1u), select(vec2<bool>(arg_3.a.x, false), arg_3.a, arg_3.a.x)));
    var var_1 = !select(select(select(vec3<bool>(true, true, true), vec3<bool>(arg_3.a.x, false, true), vec3<bool>(arg_3.a.x, true, false)), !select(vec3<bool>(arg_3.a.x, arg_3.a.x, false), vec3<bool>(true, true, false), arg_3.a.x), select(select(vec3<bool>(false, arg_3.a.x, arg_3.a.x), vec3<bool>(true, arg_3.a.x, arg_3.a.x), vec3<bool>(arg_3.a.x, arg_3.a.x, arg_3.a.x)), select(vec3<bool>(arg_3.a.x, false, arg_3.a.x), vec3<bool>(arg_3.a.x, false, arg_3.a.x), arg_3.a.x), vec3<bool>(arg_3.a.x, true, false))), !(!select(vec3<bool>(arg_3.a.x, arg_3.a.x, arg_3.a.x), vec3<bool>(true, false, true), vec3<bool>(false, arg_3.a.x, true))), !all(!vec4<bool>(false, arg_3.a.x, true, false)));
    var var_2 = Struct_3(Struct_1(33799u, _wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, arg_1) & vec3<u32>(var_0.x, var_0.x, 1u), (vec3<u32>(var_0.x, 4294967295u, arg_1) << (vec3<u32>(3537u, 66264u, var_0.x) % vec3<u32>(32u))) ^ vec3<u32>(1u, 41646u, 4294967295u)), var_1.x, reverseBits(vec4<i32>(-1i) * -vec4<i32>(2147483647i, 2147483647i, global1[_wgslsmith_index_u32(46374u, 19u)], global1[_wgslsmith_index_u32(arg_1, 19u)]))), _wgslsmith_clamp_vec2_i32(-(~u_input.b.xy) << (var_0 % vec2<u32>(32u)), vec2<i32>(-1i) * -vec2<i32>(global1[_wgslsmith_index_u32(52733u, 19u)], -90071i), _wgslsmith_div_vec2_i32(reverseBits(-vec2<i32>(8845i, global1[_wgslsmith_index_u32(var_0.x, 19u)])), ~u_input.b.zy)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1001f)))) * _wgslsmith_f_op_f32(f32(-1f) * -527f)), vec2<i32>(min(28880i, -global1[_wgslsmith_index_u32(var_0.x, 19u)]), -2147483647i), Struct_1(_wgslsmith_clamp_u32(3349u, var_0.x, arg_1) >> ((0u & arg_1) % 32u), select(~vec3<u32>(var_0.x, var_0.x, var_0.x), firstLeadingBit(vec3<u32>(arg_1, 3486u, var_0.x)), true), select(true, var_1.x & var_1.x, arg_3.a.x), reverseBits(max(vec4<i32>(global1[_wgslsmith_index_u32(var_0.x, 19u)], global1[_wgslsmith_index_u32(var_0.x, 19u)], u_input.a, global1[_wgslsmith_index_u32(var_0.x, 19u)]), vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(0u, 19u)], u_input.a, global1[_wgslsmith_index_u32(4294967295u, 19u)])))), Struct_1(50472u, ~vec3<u32>(1u, arg_1, var_0.x), var_1.x, -(vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(var_0.x, 19u)], -21048i, u_input.a) & vec4<i32>(35564i, 41379i, 2456i, global1[_wgslsmith_index_u32(var_0.x, 19u)])))), _wgslsmith_div_i32(-76811i, ~(abs(u_input.a) & global1[_wgslsmith_index_u32(0u, 19u)])), min(_wgslsmith_add_vec4_i32(~(-vec4<i32>(u_input.b.x, 32613i, -42160i, u_input.c.x)), select(countOneBits(vec4<i32>(-1i, -3952i, 2147483647i, -30200i)), vec4<i32>(-7840i, 0i, global1[_wgslsmith_index_u32(54031u, 19u)], -2147483647i), true)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, -1i, global1[_wgslsmith_index_u32(arg_1, 19u)], global1[_wgslsmith_index_u32(var_0.x, 19u)]), vec4<i32>(-64243i, u_input.b.x, -1i, -31245i)) & vec4<i32>(u_input.c.x, global1[_wgslsmith_index_u32(var_0.x, 19u)] ^ -18253i, u_input.b.x, global1[_wgslsmith_index_u32(8184u, 19u)])));
    global2 = array<f32, 18>();
    var var_3 = _wgslsmith_mult_u32(0u, var_2.c.d.a);
    return ~abs(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(3769u, arg_1, 0u), var_2.a.b)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = vec2<u32>(arg_0.d.b.x, ~(~(~_wgslsmith_add_u32(arg_1.b.x, 34085u))));
    var var_1 = 14656u;
    global1 = array<i32, 19>();
    global3 = arg_0.d.a;
    var var_2 = _wgslsmith_f_op_f32(select(-198f, -354f, true));
    return !(!select(!vec4<bool>(true, arg_1.c, arg_1.c, false), vec4<bool>(!arg_0.c.c, arg_0.d.c, false, u_input.a > 0i), vec4<bool>(false, true && arg_0.d.c, arg_0.d.c, false)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(617f, -1051f, arg_1.c.a)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(1u, 18u)], 483f, arg_0.a), vec3<f32>(arg_1.c.a, arg_1.c.a, -339f)))), true))))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1.c.d.b.x, arg_1.a.a), 18u)], -594f, _wgslsmith_f_op_f32(-1526f - arg_2.c.a)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(792f, 261f, global2[_wgslsmith_index_u32(0u, 18u)]))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), arg_1.c.a, -293f)) * vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(8055u, 18u)] + 610f) * arg_2.c.a))), _wgslsmith_f_op_f32(max(616f, var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-215f, arg_1.c.a, false))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -471f))))));
    global1 = array<i32, 19>();
    let var_1 = arg_2.c.a;
    var var_2 = select(vec4<bool>(false, true, true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1810f + 892f), _wgslsmith_f_op_f32(-829f + global2[_wgslsmith_index_u32(arg_2.a.a, 18u)])) <= var_1), func_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.c.a, arg_0.a, true))), vec2<i32>(global1[_wgslsmith_index_u32(func_3(vec3<f32>(arg_2.c.a, 1244f, var_1), arg_2.a.b.x, -1169f, Struct_4(vec2<bool>(arg_0.c.c, true))), 19u)], -4107i), Struct_1(48055u, vec3<u32>(arg_0.d.a, 20u, arg_2.a.a) | vec3<u32>(55725u, 1u, 64395u), true, arg_1.a.d), arg_1.a), Struct_1(min(8965u, select(46172u, arg_1.c.c.b.x, true)), vec3<u32>(0u, arg_2.c.d.b.x, arg_0.c.a), arg_1.a.c, arg_1.e)), !arg_0.c.c);
    return arg_1.c.c.b.yx;
}

fn func_1(arg_0: u32, arg_1: Struct_4, arg_2: i32) -> vec3<u32> {
    let var_0 = select(vec3<bool>(arg_1.a.x, (all(arg_1.a) || (680f >= global2[_wgslsmith_index_u32(1u, 18u)])) || arg_1.a.x, false), !select(!vec3<bool>(arg_1.a.x, arg_1.a.x, false), vec3<bool>(arg_2 >= u_input.b.x, any(vec3<bool>(true, false, arg_1.a.x)), arg_0 >= arg_0), vec3<bool>(all(vec2<bool>(false, arg_1.a.x)), arg_1.a.x || false, true)), select(!vec3<bool>(global2[_wgslsmith_index_u32(arg_0, 18u)] != global2[_wgslsmith_index_u32(1u, 18u)], arg_1.a.x, !arg_1.a.x), !vec3<bool>(true, !arg_1.a.x, true), false));
    global3 = 4294967295u;
    global2 = array<f32, 18>();
    return vec3<u32>(0u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~(~vec2<u32>(4294967295u, arg_0)), ~vec2<u32>(53052u, 4294967295u) & _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, arg_0), vec2<u32>(arg_0, 15177u))), ~countOneBits(func_2(Struct_2(global2[_wgslsmith_index_u32(0u, 18u)], vec2<i32>(0i, -2147483647i), Struct_1(116004u, vec3<u32>(arg_0, 49376u, arg_0), true, vec4<i32>(11300i, global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(1u, 19u)], -8743i)), Struct_1(arg_0, vec3<u32>(1u, arg_0, arg_0), false, vec4<i32>(global1[_wgslsmith_index_u32(arg_0, 19u)], 34461i, arg_2, -26764i))), Struct_3(Struct_1(0u, vec3<u32>(0u, 0u, 1u), var_0.x, vec4<i32>(global1[_wgslsmith_index_u32(29134u, 19u)], 1i, arg_2, global1[_wgslsmith_index_u32(arg_0, 19u)])), u_input.c, Struct_2(global2[_wgslsmith_index_u32(arg_0, 18u)], vec2<i32>(-11942i, global1[_wgslsmith_index_u32(arg_0, 19u)]), Struct_1(0u, vec3<u32>(1u, 10179u, 4294967295u), var_0.x, vec4<i32>(global1[_wgslsmith_index_u32(arg_0, 19u)], 12841i, arg_2, global1[_wgslsmith_index_u32(arg_0, 19u)])), Struct_1(arg_0, vec3<u32>(arg_0, 4294967295u, 4294967295u), arg_1.a.x, vec4<i32>(1666i, arg_2, u_input.c.x, global1[_wgslsmith_index_u32(0u, 19u)]))), 32433i, vec4<i32>(arg_2, -9142i, -20088i, -12968i)), Struct_3(Struct_1(24267u, vec3<u32>(arg_0, 0u, 4294967295u), true, vec4<i32>(arg_2, 0i, -22962i, 0i)), u_input.c, Struct_2(243f, u_input.c, Struct_1(arg_0, vec3<u32>(14489u, arg_0, arg_0), arg_1.a.x, vec4<i32>(1i, u_input.b.x, u_input.b.x, u_input.c.x)), Struct_1(arg_0, vec3<u32>(50364u, 38395u, arg_0), var_0.x, vec4<i32>(global1[_wgslsmith_index_u32(arg_0, 19u)], arg_2, 50915i, u_input.c.x))), u_input.b.x, vec4<i32>(-2147483647i, -7123i, 1379i, u_input.b.x))))), _wgslsmith_div_u32(_wgslsmith_sub_u32(65891u, 33123u), 18072u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(abs(global1[_wgslsmith_index_u32(0u, 19u)]), select(global1[_wgslsmith_index_u32(53306u, 19u)], 27198i, true)) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), min(vec2<u32>(0u, 4294967295u), vec2<u32>(37965u, 13861u))) % vec2<u32>(32u))), vec2<i32>(-firstLeadingBit(~(-36857i)), global1[_wgslsmith_index_u32(56033u >> (1u % 32u), 19u)]));
    let var_1 = _wgslsmith_mod_vec3_u32(func_1(max(firstLeadingBit(1u), 15144u), Struct_4(vec2<bool>(true, true)), _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(~33487u, 19u)], ~(-2147483647i), -1i), vec3<i32>(global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 19648u, 10872u), 19u)], -40865i))), vec3<u32>(0u, max(select(1u, ~91320u, all(vec3<bool>(false, false, false))), firstTrailingBit(0u)), ~_wgslsmith_div_u32(~18760u, _wgslsmith_add_u32(1280u, 20302u))));
    let var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.x, 34222u), vec2<u32>(~(~73058u), ~_wgslsmith_div_u32(var_1.x, var_1.x)), vec2<u32>((var_1.x & var_1.x) | (var_1.x << (var_1.x % 32u)), var_1.x)), max(~func_1(abs(var_1.x), Struct_4(vec2<bool>(true, true)), _wgslsmith_add_i32(u_input.a, 23765i)).yy, firstTrailingBit(countOneBits(_wgslsmith_add_vec2_u32(var_1.xy, var_1.zz)))));
    global2 = array<f32, 18>();
    let var_3 = ~(~(~(~_wgslsmith_mod_i32(u_input.c.x, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(1i, ~_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2, 14098u, 53387u, 87745u), vec4<u32>(1u, 0u, var_1.x, var_2), vec4<u32>(var_1.x, var_1.x, 0u, var_1.x)), vec4<u32>(var_1.x, 1u, 0u, var_2) | vec4<u32>(var_2, var_1.x, 1u, 73725u)) << (_wgslsmith_sub_vec4_u32(~vec4<u32>(var_1.x, var_2, var_1.x, 4294967295u), ~(~vec4<u32>(0u, 4294967295u, 0u, var_1.x))) % vec4<u32>(32u)), _wgslsmith_sub_u32(~(~_wgslsmith_sub_u32(4294967295u, var_2)), var_2 ^ 4294967295u), _wgslsmith_dot_vec2_i32(u_input.c, select(_wgslsmith_add_vec2_i32(u_input.c & u_input.c, -vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(var_2, 19u)])), u_input.c, vec2<bool>(all(vec4<bool>(false, false, true, true)), all(vec2<bool>(false, false))))));
}

