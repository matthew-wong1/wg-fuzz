struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: i32) -> f32 {
    global0 = array<u32, 25>();
    let var_0 = select(!select(select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false))), vec4<bool>(true, true, true, true), all(vec3<bool>(true, true, true))), vec4<bool>(!(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.d), 25u)] != 1u), false, true, !all(vec4<bool>(false, false, false, false)) & select(true, true, true)), -1i < -min(_wgslsmith_add_i32(46136i, arg_0), ~(-22233i)));
    var var_1 = Struct_1(vec3<f32>(790f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(417f * 1041f) + _wgslsmith_f_op_f32(267f + 1000f)) * _wgslsmith_f_op_f32(floor(1f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-308f + _wgslsmith_div_f32(-924f, 532f)), _wgslsmith_f_op_f32(-384f - -1235f)))), select(42786u, ~_wgslsmith_add_u32(~u_input.d, global0[_wgslsmith_index_u32(firstLeadingBit(24987u), 25u)]), _wgslsmith_add_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 34527i, u_input.a, 0i), vec4<i32>(u_input.c, 2147483647i, arg_0, u_input.a))) > u_input.a));
    global0 = array<u32, 25>();
    var var_2 = var_1.a.zz;
    return _wgslsmith_f_op_f32(var_1.a.x * 1300f);
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_1) -> u32 {
    global0 = array<u32, 25>();
    var var_0 = vec3<u32>(reverseBits(reverseBits(global0[_wgslsmith_index_u32(1u, 25u)]) ^ u_input.b.x), _wgslsmith_mult_u32(arg_2.b, u_input.d), min(arg_2.b, u_input.b.x));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), arg_2.a.x, 264f), _wgslsmith_f_op_vec3_f32(-arg_2.a))) + arg_2.a), 1u);
    var var_2 = ~_wgslsmith_sub_vec4_i32(-firstTrailingBit(min(vec4<i32>(-19299i, u_input.a, 3662i, 9160i), vec4<i32>(u_input.c, u_input.c, u_input.c, -1i))), abs(vec4<i32>(1i, _wgslsmith_div_i32(u_input.a, u_input.c), u_input.a, _wgslsmith_clamp_i32(u_input.c, u_input.c, -1i))));
    var_0 = ~vec3<u32>(~u_input.d, max(reverseBits(var_0.x), ~firstTrailingBit(4294967295u)), ~global0[_wgslsmith_index_u32(~56823u, 25u)]);
    return ~arg_2.b;
}

fn func_2() -> vec2<i32> {
    let var_0 = !vec2<bool>(true, ~(1u | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 25u)]) >= func_4(_wgslsmith_f_op_f32(func_3(u_input.c)), vec4<bool>(true, true, true, true), Struct_1(vec3<f32>(-197f, -1489f, -1000f), 1u)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1321f, -228f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -387f) - _wgslsmith_f_op_f32(step(-1303f, 1275f)))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-615f, -778f, -924f) * vec3<f32>(867f, -1516f, -602f)), vec3<f32>(1f, 1f, 1f))))), _wgslsmith_div_u32(_wgslsmith_mult_u32(~reverseBits(global0[_wgslsmith_index_u32(u_input.b.x, 25u)]), global0[_wgslsmith_index_u32(1u, 25u)]), ~func_4(-248f, !vec4<bool>(true, false, false, var_0.x), Struct_1(vec3<f32>(-683f, 1873f, 1747f), 22024u))));
    var var_2 = var_1.b;
    var var_3 = var_0.x && any(vec3<bool>(u_input.b.x >= (u_input.b.x >> (u_input.d % 32u)), -24994i == u_input.c, false));
    let var_4 = Struct_1(var_1.a, 1u);
    return ~countOneBits(vec2<i32>(~70617i, _wgslsmith_dot_vec2_i32(vec2<i32>(25717i, u_input.c), vec2<i32>(-2147483647i, 1i)) >> (~u_input.d % 32u)));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec2<i32>) -> Struct_1 {
    global0 = array<u32, 25>();
    global0 = array<u32, 25>();
    global0 = array<u32, 25>();
    global0 = array<u32, 25>();
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(792f * -615f))) - -856f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -113f)) * _wgslsmith_f_op_f32(-arg_0.a.x))), func_4(arg_0.a.x, select(vec4<bool>(arg_2.x < u_input.a, !arg_1, arg_0.a.x >= -1000f, select(true, true, true)), vec4<bool>(arg_1, false, arg_1, arg_1), false), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(sign(1046f)), -297f, arg_0.a.x), ~arg_0.b)));
    return arg_0;
}

fn func_1() -> vec3<u32> {
    let var_0 = func_5(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-749f, -679f, -1008f))) * vec3<f32>(_wgslsmith_f_op_f32(round(499f)), _wgslsmith_f_op_f32(f32(-1f) * -691f), _wgslsmith_f_op_f32(max(-558f, -1293f)))), 10109u), any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true))) && all(vec3<bool>(true, true, true)), _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, -u_input.c), abs(abs(vec2<i32>(u_input.c, 0i))), select(func_2(), vec2<i32>(62054i, 1i), true)), select(vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, 1i, u_input.a), u_input.a), -select(vec2<i32>(46407i, 17309i), vec2<i32>(23881i, u_input.c), vec2<bool>(true, false)), true)));
    return abs(abs(abs(~vec3<u32>(0u, var_0.b, 0u) << (vec3<u32>(17509u, var_0.b, u_input.d) % vec3<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 25>();
    var var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(-abs(vec2<i32>(u_input.a, 0i)), vec2<i32>(u_input.a, i32(-1i) * -24017i)), -_wgslsmith_mod_vec2_i32(vec2<i32>(-28245i, -2147483647i), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(1i, u_input.a)))) & u_input.a;
    let var_1 = vec2<bool>(!(!(!all(vec3<bool>(false, true, true)))), all(vec4<bool>(true, false, any(vec4<bool>(true, true, true, true)), true)));
    let var_2 = countOneBits(select(_wgslsmith_dot_vec3_u32((vec3<u32>(1777u, global0[_wgslsmith_index_u32(u_input.b.x, 25u)], 24445u) ^ vec3<u32>(u_input.d, global0[_wgslsmith_index_u32(u_input.b.x, 25u)], global0[_wgslsmith_index_u32(0u, 25u)])) | func_1(), select(_wgslsmith_sub_vec3_u32(vec3<u32>(76364u, 71490u, global0[_wgslsmith_index_u32(u_input.d, 25u)]), vec3<u32>(55480u, u_input.b.x, u_input.d)), _wgslsmith_clamp_vec3_u32(vec3<u32>(24629u, u_input.b.x, 4294967295u), vec3<u32>(1u, global0[_wgslsmith_index_u32(33819u, 25u)], 45309u), vec3<u32>(global0[_wgslsmith_index_u32(1u, 25u)], 13018u, global0[_wgslsmith_index_u32(4294967295u, 25u)])), select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(true, false, var_1.x), var_1.x))), _wgslsmith_dot_vec3_u32(reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, global0[_wgslsmith_index_u32(0u, 25u)]), vec3<u32>(9623u, 60725u, 77716u))), select(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), vec3<u32>(21392u, 0u, 23875u), false) & _wgslsmith_div_vec3_u32(vec3<u32>(11540u, 14785u, u_input.d), vec3<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 25u)], u_input.b.x))), ~u_input.d > _wgslsmith_mod_u32(75159u, 4294967295u)));
    global0 = array<u32, 25>();
    var_0 = u_input.c;
    let var_3 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -610f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-823f, _wgslsmith_f_op_f32(func_3(u_input.a))) - 1000f), 170f, 208f)));
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(func_5(func_5(func_5(Struct_1(vec3<f32>(var_3.x, var_3.x, var_3.x), var_2), var_1.x, vec2<i32>(0i, u_input.a)), var_1.x, -vec2<i32>(u_input.c, u_input.a)), var_1.x, ~_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -27859i), vec2<i32>(u_input.a, u_input.c))).a)), u_input.b.x);
    var_0 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-25206i, u_input.a) & vec2<i32>(-13281i, 0i), vec2<i32>(u_input.a, u_input.c) >> (vec2<u32>(var_2, 4294967295u) % vec2<u32>(32u)), abs(vec2<i32>(-2147483647i, 21466i)))), _wgslsmith_f_op_f32(floor(var_4.a.x)), firstTrailingBit(vec4<i32>(~1i, 10996i, -2147483647i, 0i)) << (~_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(1u, var_4.b, 44904u, u_input.b.x)), ~vec4<u32>(0u, var_2, 0u, var_4.b)) % vec4<u32>(32u)), (vec2<i32>(-u_input.c, _wgslsmith_mod_i32(2147483647i, -15807i)) & ~_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(75926i, -1i))) | firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 2147483647i) >> (u_input.b % vec2<u32>(32u)), ~vec2<i32>(u_input.a, -1i), vec2<i32>(u_input.a, 31203i) ^ vec2<i32>(u_input.c, -2147483647i))));
}

