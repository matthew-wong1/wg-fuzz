struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: u32,
    c: Struct_1,
    d: f32,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: Struct_1,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
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

var<private> global0: i32;

var<private> global1: array<vec2<f32>, 12>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    let var_0 = Struct_5(_wgslsmith_dot_vec2_i32(abs(select(u_input.d.xw << (arg_0.wz % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, -2656i), u_input.d.zz), vec2<bool>(true, true))), ~vec2<i32>(countOneBits(0i), u_input.c ^ 2147483647i)), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f)))), u_input.b, Struct_1(true, _wgslsmith_mod_vec3_i32(u_input.d.wwx, vec3<i32>(-42044i, u_input.d.x, u_input.d.x)) >> ((vec3<u32>(u_input.b, arg_0.x, arg_0.x) << (vec3<u32>(31772u, arg_0.x, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)), ~firstTrailingBit(-7906i), select(u_input.c & u_input.d.x, -13321i >> (0u % 32u), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1069f + 2545f)), vec3<u32>(_wgslsmith_sub_u32(arg_0.x, _wgslsmith_mult_u32(36808u, arg_0.x)), u_input.b, _wgslsmith_mod_u32(arg_0.x, _wgslsmith_mult_u32(arg_0.x, arg_0.x)))), Struct_1(all(vec2<bool>(true, true)), vec3<i32>(i32(-1i) * -103967i, -(~0i), -abs(u_input.c)), _wgslsmith_mult_i32(1i, _wgslsmith_add_i32(~1i, 14582i)), u_input.d.x | u_input.d.x), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(24809i, -1i, 0i), ~(~vec3<i32>(29150i, 0i, u_input.c)), _wgslsmith_div_vec3_i32(~vec3<i32>(u_input.d.x, u_input.d.x, -1i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, u_input.d.x, -11528i), vec3<i32>(u_input.c, u_input.c, -56718i)))), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(0i, 1i, u_input.d.x) ^ countOneBits(u_input.d.yyy), select(reverseBits(u_input.d.yxx), u_input.d.wwz ^ vec3<i32>(u_input.d.x, 1i, -32761i), true)), u_input.d.xxw));
    let var_1 = var_0.d.x;
    let var_2 = ~countOneBits(~(var_1 & var_0.d.x)) ^ var_0.a;
    var var_3 = vec2<bool>(all(select(select(vec2<bool>(var_0.c.a, var_0.b.c.a), select(vec2<bool>(true, var_0.b.c.a), vec2<bool>(false, false), true), vec2<bool>(var_0.b.c.a, true)), vec2<bool>(true, true), select(!vec2<bool>(true, var_0.c.a), vec2<bool>(true, true), var_0.b.c.a))), var_0.b.c.a && (1u > u_input.a));
    var var_4 = ~var_0.b.c.b.yz;
    return ~_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 42000u) | vec2<u32>(arg_0.x, 105712u), var_0.b.e.zz), max(_wgslsmith_dot_vec4_u32(vec4<u32>(81996u, 40162u, arg_0.x, 1u), vec4<u32>(var_0.b.e.x, 12706u, 71152u, u_input.e.x)), _wgslsmith_mult_u32(u_input.a, var_0.b.b))), u_input.e.x);
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_3) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-789f, 550f) + -339f);
    var var_1 = 1f;
    let var_2 = select(vec4<bool>(all(vec2<bool>(true, arg_3.c.a)) & false, ~arg_3.c.b.x <= -(~(-1i)), true, !arg_3.c.a), vec4<bool>(arg_3.c.a, arg_3.c.a, arg_3.c.a, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1964f, arg_3.d)))) <= -534f);
    var var_3 = Struct_2(~vec3<i32>(arg_0.x, -arg_0.x, i32(-1i) * -47518i), var_2.zyw);
    var var_4 = arg_1;
    return arg_3.a.x;
}

fn func_2() -> vec4<i32> {
    var var_0 = -1052f;
    let var_1 = vec3<f32>(-959f, -880f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(u_input.d.zx, u_input.b, abs(vec4<u32>(0u, 60975u, 39048u, u_input.a)), Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(1368f, 1471f, 2468f, 174f) - vec4<f32>(-360f, 411f, 668f, 580f)), func_3(vec4<u32>(65365u, 4294967295u, u_input.e.x, u_input.b)), Struct_1(true, u_input.d.ywy, -14440i, 2147483647i), _wgslsmith_div_f32(-1425f, -226f), vec3<u32>(4294967295u, 4666u, 582u)))) - 1000f));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_1.x)))))));
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -1239f, var_1.x, -2329f), vec4<f32>(-1294f, var_1.x, var_1.x, 521f))))), u_input.b, Struct_1(!any(vec2<bool>(true, true)), -(~(-vec3<i32>(-2147483647i, 1i, -1i))), 16064i, ~(-24064i)), var_1.x, ~vec3<u32>(~u_input.b, u_input.e.x, func_3(min(vec4<u32>(u_input.a, u_input.a, 1u, u_input.e.x), vec4<u32>(10254u, 4294967295u, u_input.b, 0u)))));
    var_0 = -1000f;
    return u_input.d;
}

fn func_1() -> vec3<u32> {
    global0 = -_wgslsmith_dot_vec4_i32(countOneBits(u_input.d), func_2());
    let var_0 = ~firstTrailingBit(vec3<i32>(-11872i, u_input.c, -13019i));
    global1 = array<vec2<f32>, 12>();
    return ~(~min(u_input.e, u_input.e) >> ((firstTrailingBit(max(vec3<u32>(76797u, 4294967295u, 50391u), u_input.e)) >> (vec3<u32>(187u, 4294967295u, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec3<bool>) -> Struct_3 {
    var var_0 = Struct_5(abs(_wgslsmith_dot_vec3_i32(arg_0.c.b, u_input.d.wyz)), arg_0, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)) != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1411f, arg_0.a.x)))), arg_0.c.b, countOneBits(-78828i), countOneBits(-22825i)), -(firstTrailingBit(u_input.d.xzz) & select(-vec3<i32>(0i, -4777i, 1i), -vec3<i32>(arg_0.c.b.x, 1393i, arg_1.b), arg_0.c.a | true)), min(vec3<i32>(74466i, _wgslsmith_add_i32(1i, -24527i), u_input.c | 17581i) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.b, 33594i, 0i), -arg_0.c.b), vec3<i32>(u_input.d.x, select(2147483647i >> (u_input.b % 32u), arg_1.a.a.x, arg_2.x), -17473i)));
    global1 = array<vec2<f32>, 12>();
    let var_1 = var_0.c.a;
    global1 = array<vec2<f32>, 12>();
    let var_2 = 1u;
    return Struct_3(_wgslsmith_div_vec4_f32(var_0.b.a, arg_0.a), 4948u, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1598f)) * _wgslsmith_f_op_f32(arg_0.d * -1000f)) == 621f, firstTrailingBit(_wgslsmith_div_vec3_i32(u_input.d.wyw, vec3<i32>(var_0.d.x, -29785i, arg_0.c.c))) >> (u_input.e % vec3<u32>(32u)), firstTrailingBit(-_wgslsmith_div_i32(33247i, 19818i)), 15560i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.a.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b.a.x)))) * var_0.b.a.x), _wgslsmith_sub_vec3_u32(~vec3<u32>(arg_0.b, var_0.b.b, var_0.b.e.x) << (~vec3<u32>(920u, arg_0.b, arg_0.e.x) % vec3<u32>(32u)), u_input.e));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32) -> Struct_4 {
    var var_0 = arg_1;
    let var_1 = var_0.c.a | !(var_0.c.b.x < ~(-36969i));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * -1000f)) + var_0.a.x);
    var_2 = _wgslsmith_f_op_f32(sign(624f));
    global1 = array<vec2<f32>, 12>();
    return Struct_4(Struct_2(~u_input.d.wwz, select(!(!vec3<bool>(arg_0.a, false, var_0.c.a)), !select(vec3<bool>(true, arg_0.a, arg_0.a), vec3<bool>(false, false, true), vec3<bool>(false, true, arg_1.c.a)), all(vec4<bool>(false, var_1, false, false)))), 63459i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_1(true, abs(u_input.d.yzy), u_input.c, 11489i), func_5(Struct_3(vec4<f32>(_wgslsmith_f_op_f32(1060f * -2457f), -442f, _wgslsmith_f_op_f32(-598f + -1194f), _wgslsmith_f_op_f32(floor(1413f))), ~(~u_input.e.x), Struct_1(true, abs(vec3<i32>(u_input.c, u_input.c, -42874i)), u_input.c | 14534i, -2147483647i), _wgslsmith_f_op_f32(_wgslsmith_div_f32(357f, -105f) + _wgslsmith_f_op_f32(-1928f + -1711f)), func_1()), Struct_4(Struct_2(countOneBits(u_input.d.xxx), vec3<bool>(true, false, false)), -u_input.d.x & _wgslsmith_sub_i32(0i, 64836i)), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))), -_wgslsmith_div_i32(27056i, _wgslsmith_dot_vec4_i32(u_input.d, u_input.d) | -19705i));
    var var_1 = _wgslsmith_div_f32(-480f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-282f, _wgslsmith_f_op_f32(514f * _wgslsmith_div_f32(134f, 134f))), _wgslsmith_f_op_f32(-1664f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), all(var_0.a.b))));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1309f, 1378f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(439f + 603f), _wgslsmith_f_op_f32(f32(-1f) * -1999f))) * _wgslsmith_f_op_f32(select(-1343f, 1006f, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(531f, 621f), -1443f, any(vec4<bool>(true, var_0.a.b.x, false, var_0.a.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -199f) - _wgslsmith_div_f32(1802f, 716f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_5(Struct_3(vec4<f32>(1075f, 1625f, -507f, 987f), 33310u, Struct_1(false, u_input.d.xzy, u_input.c, u_input.d.x), -1000f, vec3<u32>(15328u, 43665u, u_input.b)), Struct_4(Struct_2(u_input.d.ywy, var_0.a.b), var_0.b), var_0.a.b).a.x))));
    global1 = array<vec2<f32>, 12>();
    let var_2 = ~u_input.e.x;
    var var_3 = true;
    let var_4 = vec3<f32>(1f, 1f, 1f);
    let x = u_input.a;
    s_output = StorageBuffer(-59904i);
}

