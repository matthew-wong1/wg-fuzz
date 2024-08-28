struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(-14019i, 0i, vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), 31178i, vec4<f32>(848f, -441f, -1638f, -273f)), Struct_1(27264i, 1i, vec3<i32>(1i, -33345i, 2147483647i), 0i, vec4<f32>(-1178f, -417f, -1425f, -619f)));

var<private> global1: Struct_2 = Struct_2(Struct_1(27578i, i32(-2147483648), vec3<i32>(-37583i, -3373i, -22766i), -1279i, vec4<f32>(-1052f, 805f, 1000f, 538f)), 51622u, vec2<u32>(0u, 10344u), vec4<f32>(-1000f, -688f, -835f, -1781f), Struct_1(-66244i, 1i, vec3<i32>(i32(-2147483648), 2147483647i, -1i), -21950i, vec4<f32>(1016f, 2138f, 2104f, -1319f)));

var<private> global2: Struct_1;

var<private> global3: array<vec2<f32>, 30>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec2<f32>) -> u32 {
    global2 = arg_0.c.e;
    global1 = arg_0.c;
    var var_0 = arg_0.b;
    var var_1 = Struct_2(Struct_1(-1i, 38743i | (_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(0i, -2147483647i)) << ((arg_0.c.c.x << (u_input.a.x % 32u)) % 32u)), _wgslsmith_mod_vec3_i32(global1.a.c, global2.c ^ (global1.e.c & arg_0.c.e.c)), firstLeadingBit(reverseBits(global1.e.b)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.x, 670f, 491f, -394f)))))), arg_0.a.x, min(vec2<u32>(global1.b >> (global1.b % 32u), _wgslsmith_sub_u32(global1.b, 1u)) & u_input.a.zw, countOneBits(firstLeadingBit(arg_1) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.x, global1.b), vec2<u32>(arg_0.c.b, arg_1.x), global1.c) % vec2<u32>(32u)))), arg_0.c.e.e, arg_0.c.e);
    var var_2 = (min(_wgslsmith_div_vec2_u32(var_1.c, arg_0.c.c), ~(arg_0.c.c ^ var_1.c)) >> (_wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, var_1.c.x), global1.c) % vec2<u32>(32u))) << (~vec2<u32>(28553u, arg_1.x) % vec2<u32>(32u));
    return ~global1.b & global1.c.x;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec3<bool>) -> vec4<f32> {
    var var_0 = firstTrailingBit(-2147483647i ^ _wgslsmith_dot_vec2_i32(-global1.e.c.yz, _wgslsmith_sub_vec2_i32(arg_1.a.c.yz, global2.c.xy))) | 0i;
    let var_1 = Struct_3(abs(vec2<u32>(reverseBits(~1u), ~(~u_input.a.x))), arg_2.x, Struct_2(Struct_1(1i, _wgslsmith_sub_i32(u_input.c, -u_input.c), vec3<i32>(global1.e.b, min(global1.a.d, global2.c.x), ~0i), _wgslsmith_mod_i32(min(u_input.c, 31357i), _wgslsmith_mult_i32(-1i, global2.a)), global2.e), select(arg_1.c.x | 21501u, global1.c.x, !(arg_1.c.x < arg_1.c.x)), vec2<u32>(u_input.a.x, ~func_3(Struct_3(vec2<u32>(u_input.a.x, u_input.b), false, arg_1), arg_1.c, vec2<f32>(-109f, -1103f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(662f, 896f, global2.e.x, -1628f)))), Struct_1(1i, 1i, vec3<i32>(select(-2147483647i, global2.c.x, true), -51585i, arg_1.e.d), global2.c.x, _wgslsmith_f_op_vec4_f32(select(global2.e, _wgslsmith_f_op_vec4_f32(global1.a.e + arg_1.d), select(vec4<bool>(false, true, arg_2.x, false), vec4<bool>(false, true, arg_2.x, false), true))))));
    return _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(ceil(-1343f)), 160f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.c.a.e.x))), _wgslsmith_f_op_f32(-global2.e.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.e.e - vec4<f32>(823f, arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), 1f)) - global1.a.e)));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_3(global1.c, all(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)))), Struct_2(Struct_1(_wgslsmith_mult_i32(1i, abs(global2.a)), ~1i, vec3<i32>(-1i) * -vec3<i32>(1i, -2147483647i, 18089i), _wgslsmith_div_i32(_wgslsmith_sub_i32(43729i, global2.a), _wgslsmith_dot_vec2_i32(vec2<i32>(global1.e.a, u_input.c), vec2<i32>(1i, global2.a))), global1.e.e), 45512u, vec2<u32>(~_wgslsmith_mod_u32(global1.c.x, 7465u), firstLeadingBit(u_input.b)), _wgslsmith_f_op_vec4_f32(func_4(global2.e.wzx, Struct_2(Struct_1(-49306i, 0i, vec3<i32>(global1.a.b, global2.a, global2.a), -14372i, global2.e), func_3(Struct_3(global1.c, false, Struct_2(global1.e, 59067u, global1.c, vec4<f32>(-833f, -475f, global2.e.x, global2.e.x), Struct_1(u_input.c, 1i, global1.a.c, global2.c.x, global1.d))), vec2<u32>(55172u, 1u), global2.e.yx), vec2<u32>(arg_0.x, u_input.a.x), _wgslsmith_f_op_vec4_f32(-global2.e), global0[_wgslsmith_index_u32(u_input.a.x, 2u)]), vec3<bool>(u_input.c == u_input.c, global1.a.b < 2147483647i, arg_0.x <= global1.c.x))), global1.a));
    let var_1 = reverseBits(global2.c.zy);
    global2 = Struct_1(-2147483647i, 45330i | global1.a.d, ~(-(vec3<i32>(u_input.c, 0i, -78734i) << (vec3<u32>(4294967295u, 21316u, var_0.a.x) % vec3<u32>(32u)))) & -vec3<i32>(global1.e.d, var_0.c.a.b, var_0.c.a.c.x | 2147483647i), -select(global2.b & (var_1.x ^ var_0.c.e.b), 68702i, global1.a.e.x > _wgslsmith_f_op_f32(floor(global1.e.e.x))), vec4<f32>(_wgslsmith_f_op_f32(step(609f, _wgslsmith_f_op_f32(var_0.c.e.e.x + global2.e.x))), global2.e.x, _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, var_0.c.e.e.x, -1000f))), _wgslsmith_div_vec3_f32(vec3<f32>(global1.d.x, global1.a.e.x, 342f), vec3<f32>(global2.e.x, global2.e.x, var_0.c.a.e.x))), Struct_2(Struct_1(19403i, -7384i, vec3<i32>(1i, -2147483647i, -2147483647i), global2.a, var_0.c.e.e), 1u, vec2<u32>(arg_0.x, var_0.a.x), var_0.c.a.e, global0[_wgslsmith_index_u32(30386u, 2u)]), select(vec3<bool>(var_0.b, var_0.b, var_0.b), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), any(vec2<bool>(true, var_0.b))))).x, 602f));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-543f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(global2.e.www, Struct_2(Struct_1(var_0.c.e.b, var_1.x, vec3<i32>(global2.c.x, -50039i, global1.e.b), -3212i, global2.e), 0u, vec2<u32>(4294967295u, global1.b), vec4<f32>(-844f, 335f, global2.e.x, global1.a.e.x), Struct_1(global2.d, var_0.c.a.c.x, vec3<i32>(-2147483647i, global2.a, u_input.c), var_0.c.e.d, global1.a.e)), vec3<bool>(true, false, false))).x)) - _wgslsmith_f_op_f32(-1642f * global2.e.x)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), global2.e.x, true | var_0.b)));
    let var_3 = ~global1.b | ~4294967295u;
    return var_0.c.a;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: u32, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(floor(arg_0.x));
    global3 = array<vec2<f32>, 30>();
    var var_1 = Struct_3(vec2<u32>(arg_2, 34927u), false, Struct_2(func_2(countOneBits(_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(1u, u_input.b, 0u, global1.b)))), _wgslsmith_sub_u32(26033u, abs(~arg_2)), ~u_input.a.wx, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(global1.a.e)))), vec4<f32>(-2050f, _wgslsmith_f_op_f32(arg_3.x + 1609f), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(select(-1000f, global2.e.x, false))))), func_2(u_input.a)));
    let var_2 = global1.e.c;
    let var_3 = Struct_1(global2.b, ~global1.e.b, firstLeadingBit(global2.c), var_2.x, global1.a.e);
    return func_2(u_input.a);
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec4<f32>, arg_3: bool) -> Struct_2 {
    let var_0 = u_input.c;
    return Struct_2(Struct_1(~func_2(~vec4<u32>(6722u, u_input.b, arg_1, 0u)).a, u_input.c, global2.c, 0i, _wgslsmith_f_op_vec4_f32(-arg_2)), ~u_input.b, global1.c >> (vec2<u32>(~_wgslsmith_dot_vec3_u32(u_input.a.wyw, vec3<u32>(u_input.a.x, global1.c.x, global1.b)), ~(~14255u)) % vec2<u32>(32u)), arg_0.e, func_1(global2.e.xyz, select(select(vec4<bool>(false, true, arg_3, arg_3), !vec4<bool>(arg_3, true, true, arg_3), vec4<bool>(arg_3, arg_3, true, arg_3)), select(!vec4<bool>(false, arg_3, true, arg_3), vec4<bool>(arg_3, arg_3, false, arg_3), vec4<bool>(arg_3, arg_3, arg_3, arg_3)), !vec4<bool>(false, arg_3, true, false)), ~1013u, arg_0.e));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(func_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.d.x, 221f, global2.e.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1772f, global2.e.x, global1.e.e.x))))), !vec4<bool>(true, false, all(vec4<bool>(false, false, false, true)), true), 10028u, vec4<f32>(418f, global1.a.e.x, global2.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.e.e.x + global2.e.x) * _wgslsmith_f_op_f32(trunc(global1.a.e.x))))), ~(~30653u), _wgslsmith_div_vec4_f32(global1.a.e, global2.e), true);
    global2 = func_2(~u_input.a);
    global3 = array<vec2<f32>, 30>();
    var var_0 = Struct_2(func_1(_wgslsmith_f_op_vec3_f32(abs(global2.e.xwy)), vec4<bool>(true, true, true, true), global1.b >> (global1.c.x % 32u), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-global2.e), _wgslsmith_f_op_vec4_f32(-global2.e)))))), u_input.b, u_input.a.zz, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.d.x - -538f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.a.e.x))), global2.e.x), func_2(vec4<u32>(1u, abs(8947u), ~u_input.b, _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.b, u_input.b), 4294967295u >> (u_input.a.x % 32u)))));
    let var_1 = func_5(func_2(_wgslsmith_clamp_vec4_u32(~u_input.a, reverseBits(u_input.a), u_input.a)), firstLeadingBit(~_wgslsmith_dot_vec4_u32(~vec4<u32>(37965u, u_input.a.x, global1.c.x, global1.c.x), u_input.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global1.e.e)) + vec4<f32>(-1293f, -207f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.e.x) + var_0.a.e.x), _wgslsmith_f_op_f32(-var_0.e.e.x))), true).c.x;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.e.x * global2.e.x))))) - var_0.d.x), _wgslsmith_f_op_f32(floor(func_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(global2.e.yyz, global1.e.e.zyy), vec3<f32>(global2.e.x, var_0.d.x, global2.e.x)), vec4<bool>(true, true, false, true), max(47762u, 123318u), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(var_0.e.e, vec4<f32>(global1.e.e.x, 746f, -701f, 572f))))).e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-488f, global2.e.x)))));
    let var_3 = func_5(func_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.d.x, var_2.x) + var_2.x), 124f, func_1(func_1(vec3<f32>(-684f, -1808f, 1649f), vec4<bool>(true, false, false, false), u_input.b, global2.e).e.xwz, select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false)), _wgslsmith_mod_u32(57556u, u_input.b), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(397f, 1000f, global2.e.x, -924f)))).e.x), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), true), var_0.b, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(652f, -212f, var_0.a.e.x, 110f)), global2.e)))), select(30794u | var_0.c.x, ~max(min(var_1, 27603u), _wgslsmith_dot_vec2_u32(global1.c, vec2<u32>(u_input.b, 1u))), true), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, 1546f, -1258f, 749f), var_0.e.e))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.d))))), true).e;
    let x = u_input.a;
    s_output = StorageBuffer(var_1 << (u_input.b % 32u), ~(0u & _wgslsmith_add_u32(~u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 8064u), u_input.a.xy))), ~firstLeadingBit(firstLeadingBit(select(vec4<i32>(-21108i, var_0.a.c.x, global1.a.c.x, 2147483647i), vec4<i32>(var_0.e.a, -10279i, 34521i, 2147483647i), vec4<bool>(true, false, false, false)))));
}

