struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: Struct_2,
    d: f32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1> = array<bool, 1>(true);

var<private> global1: u32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: Struct_4) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(0u, 1u)];
    let var_1 = vec2<u32>(_wgslsmith_mult_u32(4294967295u, arg_2.a.a) | ~_wgslsmith_sub_u32(~1u, ~u_input.a), 1u);
    var var_2 = arg_2.d;
    return arg_2.a.a;
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: vec3<bool>, arg_3: vec4<i32>) -> f32 {
    global0 = array<bool, 1>();
    var var_0 = Struct_5(Struct_4(Struct_1(_wgslsmith_add_u32(firstLeadingBit(39207u), _wgslsmith_sub_u32(57475u, 1u)), arg_3.ww), Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-743f - 1414f), _wgslsmith_f_op_f32(min(507f, -2155f)))), Struct_1(func_3(vec3<bool>(global0[_wgslsmith_index_u32(arg_1, 1u)], false, false), vec3<u32>(4294967295u, u_input.a, u_input.a), Struct_4(Struct_1(u_input.a, vec2<i32>(1i, arg_3.x)), Struct_2(-1000f, Struct_1(arg_1, vec2<i32>(-54826i, u_input.d)), vec4<bool>(arg_2.x, true, false, arg_2.x), Struct_1(arg_1, vec2<i32>(2147483647i, 1i))), vec2<f32>(406f, 514f), Struct_3(u_input.d, arg_3, false, -7210i))), countOneBits(vec2<i32>(-2147483647i, 1i))), vec4<bool>(true, false, arg_2.x, true), Struct_1(1u, vec2<i32>(arg_3.x, arg_3.x))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(768f, 455f) * vec2<f32>(-197f, 2230f))))), Struct_3(select(15699i, -arg_3.x, true), -(~vec4<i32>(arg_3.x, 2147483647i, -28373i, arg_3.x)), false, _wgslsmith_clamp_i32(u_input.b.x, max(13676i, arg_3.x), 2147483647i))), Struct_4(Struct_1(u_input.a, -(~vec2<i32>(-47083i, arg_3.x))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1131f + -3139f) * _wgslsmith_f_op_f32(step(-1521f, -1456f))), Struct_1(0u ^ u_input.a, u_input.e.xy), select(vec4<bool>(true, arg_2.x, global0[_wgslsmith_index_u32(arg_1, 1u)], true), vec4<bool>(global0[_wgslsmith_index_u32(1u, 1u)], arg_2.x, arg_2.x, false), select(vec4<bool>(global0[_wgslsmith_index_u32(28645u, 1u)], false, global0[_wgslsmith_index_u32(arg_0.x, 1u)], global0[_wgslsmith_index_u32(1u, 1u)]), vec4<bool>(true, true, false, arg_2.x), global0[_wgslsmith_index_u32(0u, 1u)])), Struct_1(~42304u, -u_input.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-904f, -1256f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-319f, 1438f))), 33379u >= arg_0.x))), Struct_3(~arg_3.x, arg_3, true, _wgslsmith_mod_i32(-1i, _wgslsmith_mult_i32(u_input.b.x, arg_3.x)))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1284f, 1364f))), Struct_1(abs(~u_input.a), vec2<i32>(-u_input.e.x, ~arg_3.x)), select(!(!vec4<bool>(true, arg_2.x, arg_2.x, true)), vec4<bool>(!arg_2.x, true, true, true), select(vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(46926u, 1u)]), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 1u)], true, false, false), !vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0.x, 1u)], true, false))), Struct_1(~(~4294967295u), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.c, -23917i), u_input.e), -arg_3.x))), 1764f, _wgslsmith_sub_vec4_i32(-(~select(vec4<i32>(13902i, 53859i, arg_3.x, arg_3.x), vec4<i32>(0i, u_input.b.x, 59836i, -1i), global0[_wgslsmith_index_u32(1u, 1u)])), vec4<i32>(-1i) * -vec4<i32>(u_input.c, arg_3.x, 0i, arg_3.x)));
    let var_1 = Struct_5(Struct_4(Struct_1(_wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(u_input.a, u_input.a)), min(_wgslsmith_div_vec2_i32(vec2<i32>(arg_3.x, -1i), vec2<i32>(-10819i, -37810i)), reverseBits(var_0.b.b.b.b))), var_0.a.b, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-947f, _wgslsmith_div_f32(var_0.b.b.a, var_0.a.c.x)), var_0.b.c)), var_0.a.d), var_0.a, Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.d, _wgslsmith_f_op_f32(f32(-1f) * -562f)))), var_0.b.a, !var_0.c.c, Struct_1((26744u << (arg_0.x % 32u)) & 37738u, ~vec2<i32>(u_input.c, var_0.c.b.b.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -1437f)) + -548f))), var_0.a.d.b);
    var var_2 = select(!(!vec3<bool>(any(vec3<bool>(true, var_1.c.c.x, var_0.c.c.x)), all(vec2<bool>(true, var_1.c.c.x)), var_1.c.c.x)), !arg_2, !var_0.a.b.c.ywx);
    var var_3 = 146f;
    return _wgslsmith_div_f32(var_0.d, _wgslsmith_div_f32(var_1.b.b.a, var_1.a.b.a));
}

fn func_4(arg_0: Struct_4, arg_1: f32) -> vec4<f32> {
    global1 = ~4294967295u;
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1856f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(448f)) - arg_1) * _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1, arg_1), _wgslsmith_f_op_f32(f32(-1f) * -875f))), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1023f)))), _wgslsmith_f_op_f32(round(1296f))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, 1000f, arg_0.b.a))))));
    var var_1 = select(select(!select(select(arg_0.b.c, arg_0.b.c, vec4<bool>(arg_0.d.c, true, true, false)), !vec4<bool>(arg_0.b.c.x, global0[_wgslsmith_index_u32(arg_0.b.d.a, 1u)], true, global0[_wgslsmith_index_u32(15312u, 1u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 1u)], true, false, global0[_wgslsmith_index_u32(u_input.a, 1u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 1u)], false, global0[_wgslsmith_index_u32(93741u, 1u)], false), arg_0.b.c)), select(vec4<bool>(!arg_0.b.c.x, true, true, all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 1u)], arg_0.b.c.x, false, false))), vec4<bool>(arg_0.d.c, true, arg_0.b.c.x, true), any(vec3<bool>(true, global0[_wgslsmith_index_u32(60595u, 1u)], global0[_wgslsmith_index_u32(arg_0.b.d.a, 1u)]))), all(vec4<bool>(!global0[_wgslsmith_index_u32(31747u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)], arg_0.a.b.x > 1i, arg_0.b.c.x))), vec4<bool>(global0[_wgslsmith_index_u32(select(arg_0.b.b.a, arg_0.b.b.a, true), 1u)], true, any(arg_0.b.c), false), global0[_wgslsmith_index_u32(firstLeadingBit(arg_0.b.b.a), 1u)]);
    var_1 = arg_0.b.c;
    let var_2 = ~(-u_input.e);
    return var_0;
}

fn func_1() -> StorageBuffer {
    let var_0 = vec3<bool>(global0[_wgslsmith_index_u32(24730u, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)], true);
    let var_1 = vec3<i32>(_wgslsmith_div_i32(-23926i, -u_input.b.x), _wgslsmith_sub_i32(u_input.c, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b.x, 3833i, u_input.e.x, -36534i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e.x, 2147483647i, u_input.c, u_input.e.x), vec4<i32>(6938i, u_input.b.x, 40873i, 18700i))), 1i)), u_input.b.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(func_4(Struct_4(Struct_1(_wgslsmith_mod_u32(1u, 1u), var_1.zz), Struct_2(1f, Struct_1(~4411u, vec2<i32>(0i, -1i)), !vec4<bool>(true, false, false, var_0.x), Struct_1(select(u_input.a, u_input.a, false), ~var_1.yy)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(269f, 159f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<u32>(u_input.a, 14439u), u_input.a, var_0, vec4<i32>(2147483647i, var_1.x, 19356i, var_1.x))))), Struct_3(u_input.b.x, -vec4<i32>(var_1.x, var_1.x, 0i, 1i) & vec4<i32>(-31646i, var_1.x, -1712i, -1i), true, ~(~77513i))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(614f, -922f, false)) + -1338f), 936f)))));
    var var_3 = !select(vec4<bool>(_wgslsmith_f_op_f32(sign(var_2.x)) == _wgslsmith_f_op_f32(var_2.x + var_2.x), var_0.x, true, global0[_wgslsmith_index_u32(1u, 1u)]), !vec4<bool>(true, var_0.x, !global0[_wgslsmith_index_u32(0u, 1u)], false), true);
    let var_4 = -_wgslsmith_mult_vec4_i32(select(vec4<i32>(-1i) * -vec4<i32>(var_1.x, 2147483647i, var_1.x, -13193i), vec4<i32>(1i, -var_1.x, abs(-2147483647i), -var_1.x), var_0.x), vec4<i32>(~_wgslsmith_clamp_i32(u_input.b.x, 1787i, -43306i), u_input.c, countOneBits(i32(-1i) * -40370i), 0i));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_2.wx, _wgslsmith_f_op_vec2_f32(trunc(var_2.yw)))))), firstTrailingBit(~vec3<u32>(u_input.a, firstLeadingBit(u_input.a), 1u)), _wgslsmith_sub_i32(var_1.x, -1i), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_4(Struct_1(u_input.a, u_input.b), Struct_2(var_2.x, Struct_1(30686u, var_1.zy), vec4<bool>(true, false, true, var_0.x), Struct_1(u_input.a, vec2<i32>(u_input.d, 1i))), var_2.yw, Struct_3(var_4.x, vec4<i32>(u_input.c, var_4.x, var_4.x, var_4.x), true, 8143i)), _wgslsmith_f_op_f32(983f * 1853f))).x * 177f), var_2.x, _wgslsmith_f_op_f32(select(-2007f, _wgslsmith_f_op_f32(-var_2.x), true))), ~(-vec4<i32>(~11454i, var_1.x, ~var_4.x, _wgslsmith_div_i32(-17778i, var_4.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

