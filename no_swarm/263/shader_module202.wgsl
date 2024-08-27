struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -357f;

var<private> global1: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(Struct_1(vec2<i32>(36156i, 20059i)), Struct_1(vec2<i32>(i32(-2147483648), -32314i)), Struct_1(vec2<i32>(2254i, 36195i)), vec2<i32>(-1i, 63408i), vec3<i32>(1i, 0i, -1i)), Struct_2(Struct_1(vec2<i32>(55686i, -1i)), Struct_1(vec2<i32>(1736i, 41026i)), Struct_1(vec2<i32>(34512i, -24757i)), vec2<i32>(27969i, 2147483647i), vec3<i32>(22266i, 0i, -34141i)), Struct_2(Struct_1(vec2<i32>(-50247i, 2147483647i)), Struct_1(vec2<i32>(0i, -55662i)), Struct_1(vec2<i32>(47882i, -1i)), vec2<i32>(0i, -7561i), vec3<i32>(2147483647i, 13370i, -18045i)), Struct_2(Struct_1(vec2<i32>(2147483647i, 475i)), Struct_1(vec2<i32>(11145i, -18699i)), Struct_1(vec2<i32>(1i, -1i)), vec2<i32>(-1i, -1i), vec3<i32>(22526i, -1i, 28902i)), Struct_2(Struct_1(vec2<i32>(-1262i, -49613i)), Struct_1(vec2<i32>(6690i, 7105i)), Struct_1(vec2<i32>(2147483647i, -18783i)), vec2<i32>(16288i, -1i), vec3<i32>(1i, 34376i, -25732i)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 19873i)), Struct_1(vec2<i32>(-9459i, -1i)), Struct_1(vec2<i32>(-64660i, 17424i)), vec2<i32>(-2374i, -20016i), vec3<i32>(-1i, -1i, 1i)), Struct_2(Struct_1(vec2<i32>(-13233i, 20311i)), Struct_1(vec2<i32>(0i, 2147483647i)), Struct_1(vec2<i32>(-16161i, 62292i)), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<i32>(-14871i, 1i, 1i)), Struct_2(Struct_1(vec2<i32>(-16867i, -43351i)), Struct_1(vec2<i32>(2147483647i, 2147483647i)), Struct_1(vec2<i32>(10767i, 14711i)), vec2<i32>(2147483647i, 2147483647i), vec3<i32>(37381i, 9883i, 27564i)), Struct_2(Struct_1(vec2<i32>(91790i, i32(-2147483648))), Struct_1(vec2<i32>(-662i, i32(-2147483648))), Struct_1(vec2<i32>(2147483647i, 29849i)), vec2<i32>(0i, 13865i), vec3<i32>(0i, i32(-2147483648), 0i)), Struct_2(Struct_1(vec2<i32>(0i, i32(-2147483648))), Struct_1(vec2<i32>(2147483647i, -1i)), Struct_1(vec2<i32>(0i, -1i)), vec2<i32>(i32(-2147483648), 41235i), vec3<i32>(25975i, -32140i, 1i)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 36526i)), Struct_1(vec2<i32>(-16295i, 0i)), Struct_1(vec2<i32>(i32(-2147483648), 1i)), vec2<i32>(2147483647i, 41112i), vec3<i32>(2147483647i, 22319i, 41567i)), Struct_2(Struct_1(vec2<i32>(288i, i32(-2147483648))), Struct_1(vec2<i32>(-14443i, 22981i)), Struct_1(vec2<i32>(2147483647i, -3049i)), vec2<i32>(-1i, -1i), vec3<i32>(2147483647i, -3293i, 54432i)), Struct_2(Struct_1(vec2<i32>(33489i, i32(-2147483648))), Struct_1(vec2<i32>(41842i, i32(-2147483648))), Struct_1(vec2<i32>(2147483647i, 21941i)), vec2<i32>(-7964i, -1i), vec3<i32>(-35316i, -38920i, 18784i)), Struct_2(Struct_1(vec2<i32>(42297i, -49071i)), Struct_1(vec2<i32>(2147483647i, 0i)), Struct_1(vec2<i32>(53579i, -11805i)), vec2<i32>(21269i, 0i), vec3<i32>(2147483647i, 9875i, -14250i)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -10578i)), Struct_1(vec2<i32>(-1i, 0i)), Struct_1(vec2<i32>(-30495i, 18079i)), vec2<i32>(0i, 2147483647i), vec3<i32>(-1i, 59100i, -31134i)), Struct_2(Struct_1(vec2<i32>(52812i, 0i)), Struct_1(vec2<i32>(27546i, -60822i)), Struct_1(vec2<i32>(74402i, 26179i)), vec2<i32>(0i, i32(-2147483648)), vec3<i32>(-1i, 2147483647i, -12245i)), Struct_2(Struct_1(vec2<i32>(2147483647i, -18809i)), Struct_1(vec2<i32>(-1i, -15796i)), Struct_1(vec2<i32>(66499i, -35849i)), vec2<i32>(-31360i, -15112i), vec3<i32>(21144i, -1i, -42780i)));

var<private> global2: Struct_2;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<i32>) -> vec3<i32> {
    let var_0 = -_wgslsmith_mod_i32(global2.b.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-10033i, 1i) & u_input.a.xw, vec2<i32>(abs(21435i), max(2147483647i, arg_1.b.a.x))));
    var var_1 = true;
    var_1 = all(select(vec3<bool>(true, true, true), vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true))), true, false || any(vec3<bool>(false, true, true))), all(vec2<bool>(all(vec3<bool>(true, true, false)), false))));
    global2 = Struct_2(Struct_1(abs(vec2<i32>(global2.e.x, arg_2.x) >> (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u)))), arg_1.a, arg_1.a, vec2<i32>(_wgslsmith_mult_i32(0i, ~_wgslsmith_mult_i32(70892i, 0i)), arg_0.a.a.x), vec3<i32>(0i, (_wgslsmith_mod_i32(u_input.a.x, 28804i) << (4294967295u % 32u)) << (~firstTrailingBit(0u) % 32u), i32(-1i) * -17747i));
    return _wgslsmith_mod_vec3_i32(vec3<i32>(-59869i, ~arg_1.c.a.x, _wgslsmith_dot_vec3_i32(arg_0.e, _wgslsmith_mod_vec3_i32(~arg_1.e, select(vec3<i32>(-2147483647i, 2147483647i, 0i), vec3<i32>(-50471i, -1947i, 13674i), false)))), vec3<i32>(_wgslsmith_div_i32(36785i, -_wgslsmith_mod_i32(-27281i, -40728i)), var_0, ((1i ^ arg_0.d.x) >> (u_input.d % 32u)) & -36035i));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool, arg_3: vec2<u32>) -> u32 {
    global0 = 987f;
    global1 = array<Struct_2, 17>();
    global2 = Struct_2(Struct_1(vec2<i32>(i32(-1i) * -2147483647i, -318i)), arg_0, Struct_1(-global2.e.zz), firstTrailingBit(vec2<i32>(-1i) * -u_input.b), vec3<i32>(min(~arg_0.a.x, global2.a.a.x), 39816i, _wgslsmith_add_i32(-global2.d.x, 2147483647i) & select(-6654i, 1i, false)));
    var var_0 = Struct_3(true, Struct_2(Struct_1(arg_1.zy), global2.b, arg_0, vec2<i32>(-1i) * -vec2<i32>(-1i, 0i), -func_3(global1[_wgslsmith_index_u32(~u_input.d, 17u)], Struct_2(global2.c, Struct_1(vec2<i32>(-2737i, u_input.b.x)), global2.c, vec2<i32>(33635i, arg_0.a.x), arg_1.yzx), vec4<i32>(u_input.b.x, global2.d.x, 58307i, u_input.a.x))));
    return ~10822u;
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(~49591u, firstLeadingBit(41717u), ~4294967295u), firstLeadingBit(vec3<u32>(~arg_0, arg_0, u_input.d)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, 26953u, arg_0), abs(vec3<u32>(69035u, 1u, 18820u)))), ~(~vec3<u32>(44495u, 75279u, arg_0)) | vec3<u32>(u_input.d, ~(~234u), ~arg_0));
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(abs(countOneBits(123993u)), 33998u), ~vec2<u32>(u_input.d, reverseBits(_wgslsmith_sub_u32(u_input.d, 27674u))));
    global0 = 1035f;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))), 945f);
    let var_3 = Struct_2(Struct_1(firstLeadingBit(-u_input.b)), global2.b, Struct_1(select(-vec2<i32>(arg_2.x, 47515i), ~(-arg_3.b.a), select(arg_1.zy, select(arg_1.zz, arg_1.zy, true), false))), vec2<i32>(u_input.b.x & u_input.a.x, arg_2.x ^ 0i), vec3<i32>(arg_3.e.x, ~func_3(global1[_wgslsmith_index_u32(arg_0, 17u)], Struct_2(Struct_1(vec2<i32>(arg_3.d.x, -5923i)), Struct_1(vec2<i32>(u_input.a.x, global2.e.x)), global2.b, arg_2.yy, arg_2), vec4<i32>(-2147483647i, arg_3.c.a.x, -4633i, -1919i)).x, arg_3.a.a.x));
    return Struct_3(arg_1.x, global1[_wgslsmith_index_u32(0u, 17u)]);
}

fn func_1(arg_0: u32, arg_1: f32) -> i32 {
    let var_0 = func_4(_wgslsmith_mod_u32(func_2(Struct_1(-vec2<i32>(0i, 39534i)), -u_input.a & -u_input.a, any(vec2<bool>(true, true)), ~(vec2<u32>(u_input.d, 0u) << (vec2<u32>(24348u, arg_0) % vec2<u32>(32u)))), ~(~abs(arg_0))), vec3<bool>(false, true, any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), true))), ~_wgslsmith_clamp_vec3_i32(global2.e, global2.e, global2.e), global1[_wgslsmith_index_u32(select(~arg_0, arg_0, !(_wgslsmith_f_op_f32(min(arg_1, arg_1)) > arg_1)), 17u)]);
    global2 = global1[_wgslsmith_index_u32(~arg_0, 17u)];
    let var_1 = u_input.a.x;
    let var_2 = select(select(_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.b.x, var_0.b.e.x), func_3(func_4(1u, vec3<bool>(var_0.a, false, false), var_0.b.e, var_0.b).b, func_4(0u, vec3<bool>(true, true, true), global2.e, Struct_2(var_0.b.a, Struct_1(vec2<i32>(global2.e.x, -24338i)), Struct_1(u_input.a.wx), vec2<i32>(global2.b.a.x, 13928i), vec3<i32>(7442i, global2.c.a.x, 31646i))).b, u_input.a).x), global2.e.x, var_0.a), ~u_input.c, all(select(select(vec4<bool>(var_0.a, true, var_0.a, false), select(vec4<bool>(var_0.a, var_0.a, false, var_0.a), vec4<bool>(false, var_0.a, true, false), vec4<bool>(var_0.a, var_0.a, var_0.a, true)), select(var_0.a, false, var_0.a)), vec4<bool>(false, u_input.b.x == var_0.b.b.a.x, false, true), func_4(82630u, select(vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(var_0.a, var_0.a, var_0.a), true), u_input.a.zxz, func_4(85820u, vec3<bool>(var_0.a, true, true), global2.e, var_0.b).b).a)));
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1, -872f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, arg_1), vec2<f32>(arg_1, arg_1), vec2<bool>(var_0.a, true)))))), vec2<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))), true));
    return _wgslsmith_sub_i32(-1i, ~(i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(var_1, var_0.b.c.a.x), vec2<i32>(var_1, 0i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(((u_input.a.x & (2903i & u_input.c)) ^ ~func_1(u_input.d, -670f)) << (~u_input.d % 32u), -10622i << (abs(1u) % 32u), true);
    global1 = array<Struct_2, 17>();
    global2 = func_4(select(_wgslsmith_div_u32(3940u, 4294967295u), reverseBits(1u), any(vec4<bool>(true, true, true, true))), select(vec3<bool>(true, true, select(true, true, true)), vec3<bool>(false, true, true), !vec3<bool>(true, all(vec2<bool>(true, false)), false)), ~global2.e, Struct_2(func_4(u_input.d | (96923u >> (u_input.d % 32u)), vec3<bool>(true, true, true), vec3<i32>(_wgslsmith_sub_i32(-1i, 3054i), 0i ^ var_0, 15845i), Struct_2(global2.c, global2.b, Struct_1(vec2<i32>(0i, var_0)), -vec2<i32>(-2147483647i, var_0), _wgslsmith_clamp_vec3_i32(vec3<i32>(-18425i, -1i, global2.d.x), u_input.a.zzy, vec3<i32>(-2147483647i, u_input.a.x, var_0)))).b.c, func_4(31655u, select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true)), abs(u_input.a.www), global1[_wgslsmith_index_u32(min(~u_input.d, u_input.d), 17u)]).b.a, global2.c, _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(global2.d, global2.c.a), firstTrailingBit(u_input.a.zz)) & vec2<i32>(_wgslsmith_mult_i32(-7687i, var_0), _wgslsmith_sub_i32(global2.c.a.x, var_0)), -u_input.a.yzx)).b;
    let var_1 = _wgslsmith_f_op_f32(582f + -658f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1117f - 744f), -197f, u_input.b.x <= u_input.a.x)) + -395f));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1920f), _wgslsmith_f_op_f32(f32(-1f) * -684f))))), _wgslsmith_div_f32(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(2369f)), _wgslsmith_f_op_f32(1742f * -606f))));
    global1 = array<Struct_2, 17>();
    let var_2 = vec4<f32>(-501f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1193f + -305f))) + _wgslsmith_f_op_f32(sign(-331f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -309f))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -709f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -151f))))));
    global1 = array<Struct_2, 17>();
    let var_3 = vec4<u32>(u_input.d, u_input.d, 52354u, 57435u);
    let x = u_input.a;
    s_output = StorageBuffer(var_0, global2.a.a.x);
}

