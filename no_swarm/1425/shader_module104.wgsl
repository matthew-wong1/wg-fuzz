struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(vec3<f32>(803f, -2268f, 1000f)), Struct_2(vec3<f32>(-1285f, -1631f, -711f)), vec3<i32>(40082i, -1i, -1i));

var<private> global1: vec2<f32>;

var<private> global2: array<vec2<u32>, 7> = array<vec2<u32>, 7>(vec2<u32>(24808u, 24668u), vec2<u32>(4294967295u, 35481u), vec2<u32>(52197u, 4294967295u), vec2<u32>(39257u, 4294967295u), vec2<u32>(18959u, 143786u), vec2<u32>(4294967295u, 51247u), vec2<u32>(0u, 0u));

var<private> global3: Struct_2 = Struct_2(vec3<f32>(-1286f, 2046f, -1361f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: f32) -> vec3<i32> {
    var var_0 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.x - -1310f)) != global0.a.a.x);
    global1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-214f, -1533f) - _wgslsmith_f_op_vec2_f32(global0.b.a.yx - global0.b.a.zy))), vec2<f32>(global0.a.a.x, arg_2))));
    let var_1 = Struct_1(~_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(~global0.c, global0.c), min(-global0.c, vec3<i32>(global0.c.x, global0.c.x, global0.c.x))), 27428u);
    var var_2 = firstTrailingBit(~(~_wgslsmith_div_vec4_u32(~vec4<u32>(1u, 1u, u_input.e, var_1.b), select(vec4<u32>(43228u, 4294967295u, var_1.b, 4294967295u), vec4<u32>(0u, 52324u, 28548u, var_1.b), vec4<bool>(arg_0, arg_0, false, false)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-669f, _wgslsmith_f_op_f32(-1587f * global3.a.x), _wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(arg_2 * 387f))))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -487f) - arg_1.a.x), global3.a.x, _wgslsmith_f_op_f32(min(global3.a.x, arg_1.a.x))))));
    return var_1.a;
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: i32, arg_3: i32) -> u32 {
    var var_0 = false;
    global0 = Struct_3(Struct_2(global0.a.a), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.x, 1000f) + _wgslsmith_f_op_f32(242f * 500f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(507f, arg_1))), _wgslsmith_f_op_f32(-arg_0.a.x))), func_3(true, Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_div_f32(global0.b.a.x, arg_1), -177f)), _wgslsmith_f_op_f32(f32(-1f) * -178f)));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.b.a.x), _wgslsmith_f_op_f32(sign(302f)), _wgslsmith_f_op_f32(-arg_0.a.x)) + vec3<f32>(-465f, arg_1, _wgslsmith_f_op_f32(-516f - global3.a.x)))), arg_0, ~vec3<i32>(_wgslsmith_mod_i32(-arg_3, u_input.a), i32(-1i) * -1i, _wgslsmith_div_i32(i32(-1i) * -4866i, arg_3)));
    var var_2 = Struct_3(global0.b, arg_0, -vec3<i32>(~69906i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, var_1.c.x, 1i, arg_3), vec4<i32>(global0.c.x, arg_3, arg_2, 55310i)) & ~global0.c.x, firstTrailingBit(78928i ^ arg_3)));
    var_1 = Struct_3(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-415f - global0.a.a.x))), _wgslsmith_f_op_f32(floor(-744f)), _wgslsmith_f_op_f32(f32(-1f) * -1490f))), var_1.b, var_1.c & ~(reverseBits(var_1.c) | var_2.c));
    return min(_wgslsmith_mult_u32(u_input.e ^ (_wgslsmith_mult_u32(u_input.e, u_input.e) ^ _wgslsmith_add_u32(0u, u_input.c)), u_input.e), 19065u);
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: u32, arg_3: f32) -> Struct_3 {
    return Struct_3(Struct_2(global0.b.a), global0.b, _wgslsmith_clamp_vec3_i32(global0.c, global0.c & _wgslsmith_mod_vec3_i32(reverseBits(global0.c), abs(vec3<i32>(0i, global0.c.x, -1i))), vec3<i32>(min(-global0.c.x, 2147483647i), min(global0.c.x, 5549i), -reverseBits(-1i))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = arg_3;
    global0 = func_4(arg_2.b & func_2(Struct_2(vec3<f32>(global1.x, -1654f, -253f)), _wgslsmith_f_op_f32(736f * _wgslsmith_f_op_f32(593f - arg_1.x)), arg_2.a.x ^ 56170i, global0.c.x), any(vec4<bool>(!arg_0.x, false, false, all(arg_0))) && (_wgslsmith_f_op_f32(sign(arg_1.x)) < -107f), ~_wgslsmith_mult_u32(arg_3.b, u_input.e), 411f);
    return ~_wgslsmith_dot_vec4_u32(max(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, arg_3.b, arg_2.b, u_input.c), vec4<u32>(var_0.b, var_0.b, 30806u, 13337u)), max(max(vec4<u32>(4294967295u, 53212u, arg_2.b, 36393u), vec4<u32>(var_0.b, 17539u, 1u, arg_2.b)), ~vec4<u32>(u_input.c, u_input.c, 27474u, 4294967295u))), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, u_input.e), vec4<u32>(0u, 34865u, 71704u, 0u))));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = global0.b.a.x;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec4<u32>(86981u, 4294967295u, 1u, max(1u, _wgslsmith_clamp_u32(u_input.e, u_input.e, u_input.c))) ^ vec4<u32>(firstLeadingBit(func_1(vec4<bool>(true, false, true, false), global0.b.a, Struct_1(global0.c, 0u), Struct_1(vec3<i32>(-11322i, 2147483647i, 672i), 32727u))), 22308u, firstTrailingBit(u_input.e & u_input.c), _wgslsmith_mult_u32(u_input.c ^ 4294967295u, func_1(vec4<bool>(false, false, false, false), vec3<f32>(724f, global1.x, -892f), Struct_1(vec3<i32>(global0.c.x, 2147483647i, -29748i), u_input.c), Struct_1(global0.c, 0u)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(sign(global3.a.x)), -1517f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global3.a.yx))) + _wgslsmith_div_vec2_f32(vec2<f32>(global0.a.a.x, -898f), vec2<f32>(1000f, global3.a.x))))), vec3<bool>(true, true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))))), Struct_1(~vec3<i32>(abs(global0.c.x), abs(-33483i), countOneBits(u_input.d)), abs(_wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, u_input.c), 4294967295u))));
    global1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global0.a.a.xx + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1456f, global1.x) * _wgslsmith_f_op_vec2_f32(-global0.b.a.zy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global3.a.xx))))))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -570f);
    let var_2 = func_4(~firstTrailingBit((4294967295u << (u_input.e % 32u)) >> (~u_input.e % 32u)), false, var_0.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(global3.a.x))))).a;
    global2 = array<vec2<u32>, 7>();
    let var_3 = u_input.d;
    global0 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a.a) * _wgslsmith_f_op_vec3_f32(-global0.b.a))))), func_4(var_0.b, false, 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(func_4(var_0.b, true, 23488u, var_2.a.x).a.a.x, global0.a.a.x)))).b, select(vec3<i32>(-1i) * -(var_0.a << (vec3<u32>(var_0.b, var_0.b, var_0.b) % vec3<u32>(32u))), func_4(var_0.b & select(29980u, 19015u, false), true, ~var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -824f) * _wgslsmith_f_op_f32(427f + -291f))).c, vec3<bool>(true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.b.a.x - _wgslsmith_div_f32(-970f, _wgslsmith_f_op_f32(f32(-1f) * -572f))))), _wgslsmith_mod_u32(~var_0.b << (~u_input.e % 32u), func_5(select(vec4<u32>(u_input.e, var_0.b, 1u, var_0.b), vec4<u32>(58053u, 1u, var_0.b, 28663u), true), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, var_2.a.x))), vec3<bool>(true, true, true), func_5(vec4<u32>(var_0.b, u_input.c, var_0.b, u_input.e), vec2<f32>(var_2.a.x, var_2.a.x), vec3<bool>(false, true, true), Struct_1(var_0.a, 1u))).b | var_0.b), 1u, -abs(select(global0.c.yx, vec2<i32>(u_input.b, 1i), true) | func_5(vec4<u32>(u_input.c, var_0.b, 34830u, 0u), vec2<f32>(500f, var_2.a.x), vec3<bool>(true, true, false), var_0).a.yy));
}

