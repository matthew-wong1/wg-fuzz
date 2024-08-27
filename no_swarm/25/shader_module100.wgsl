struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: u32,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: u32,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(785f, vec4<i32>(0i, 17469i, -38498i, 0i)), Struct_4(-1072f, vec4<i32>(36117i, 1i, 2147483647i, 1i)), Struct_4(-644f, vec4<i32>(1i, 1i, i32(-2147483648), 8953i)), Struct_4(-1000f, vec4<i32>(-2785i, 17183i, 1i, -18635i)), Struct_4(516f, vec4<i32>(-2193i, -12635i, i32(-2147483648), 39629i)), Struct_4(-100f, vec4<i32>(-46608i, -1i, -11681i, -100951i)), Struct_4(301f, vec4<i32>(2147483647i, -1i, 2147483647i, i32(-2147483648))), Struct_4(1251f, vec4<i32>(2147483647i, -19872i, -10523i, 1i)), Struct_4(136f, vec4<i32>(2147483647i, -836i, -29488i, -1i)), Struct_4(-563f, vec4<i32>(-62044i, -1i, 1i, 39569i)), Struct_4(430f, vec4<i32>(-1i, 8167i, -10489i, -57878i)), Struct_4(-172f, vec4<i32>(24i, -1i, 2147483647i, -1i)), Struct_4(682f, vec4<i32>(-64832i, i32(-2147483648), 1869i, 34785i)), Struct_4(-638f, vec4<i32>(i32(-2147483648), -21654i, -30020i, 0i)), Struct_4(1597f, vec4<i32>(-34181i, -2860i, -12557i, -1i)), Struct_4(-2058f, vec4<i32>(1i, -35251i, 1i, 26600i)), Struct_4(-2135f, vec4<i32>(-41489i, -1i, 21668i, 8023i)), Struct_4(112f, vec4<i32>(12745i, 32616i, -18983i, 12415i)), Struct_4(-1993f, vec4<i32>(i32(-2147483648), 1i, 10516i, 3678i)), Struct_4(1152f, vec4<i32>(22292i, i32(-2147483648), i32(-2147483648), 27630i)), Struct_4(-427f, vec4<i32>(14997i, -82164i, i32(-2147483648), 0i)), Struct_4(777f, vec4<i32>(i32(-2147483648), -46988i, -5593i, 0i)), Struct_4(454f, vec4<i32>(2147483647i, -1i, 29023i, -1i)), Struct_4(176f, vec4<i32>(1i, i32(-2147483648), -1i, 2147483647i)));

var<private> global1: array<f32, 1>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_3 {
    var var_0 = -1i;
    global0 = array<Struct_4, 24>();
    let var_1 = Struct_4(-1000f, -firstTrailingBit(vec4<i32>(firstTrailingBit(0i), u_input.b.x, u_input.b.x, _wgslsmith_sub_i32(73649i, u_input.b.x))));
    var var_2 = Struct_3(var_1.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), var_1.a), _wgslsmith_div_vec2_f32(vec2<f32>(-1034f, -724f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), u_input.c >> (4294967295u % 32u));
    var var_3 = countOneBits(vec2<i32>(~(-2147483647i), 45146i));
    return Struct_3(-1000f, var_2.c, vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(679f, -2542f), _wgslsmith_f_op_f32(ceil(-691f)))), -523f), ~firstLeadingBit(~33443u));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~u_input.a, 1u)])))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1[_wgslsmith_index_u32(arg_0.c.d.x, 1u)], global1[_wgslsmith_index_u32(1u, 1u)])))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1023f, global1[_wgslsmith_index_u32(arg_0.c.a.x, 1u)])) + vec2<f32>(global1[_wgslsmith_index_u32(1u, 1u)], 626f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c, 1u)]), _wgslsmith_f_op_f32(step(-1000f, global1[_wgslsmith_index_u32(0u, 1u)]))), _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(36526u, 4294967295u), 1u)]))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(934f, -374f), vec2<f32>(-334f, global1[_wgslsmith_index_u32(50113u, 1u)])))) + vec2<f32>(global1[_wgslsmith_index_u32(arg_0.b.d.x, 1u)], _wgslsmith_f_op_f32(f32(-1f) * -1460f)))), max(~arg_0.c.d.x, _wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, arg_0.b.d.x), arg_0.c.b)));
    global1 = array<f32, 1>();
    var var_1 = Struct_4(-628f, _wgslsmith_mult_vec4_i32(~(-countOneBits(vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, u_input.b.x))), vec4<i32>(12888i, _wgslsmith_mult_i32(u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, -8136i)), _wgslsmith_div_i32(min(-37864i, -2147483647i), firstLeadingBit(1i)), u_input.b.x)));
    var var_2 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(arg_0.c.a.x), 1u)]);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-141f, var_0.a, -1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(192f, -303f, var_1.a)))))) + vec3<f32>(var_1.a, 1165f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -277f)) - _wgslsmith_f_op_f32(f32(-1f) * -184f))));
    return arg_0.c.d.x;
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    let var_0 = vec2<u32>(36348u, max(~_wgslsmith_div_u32(func_3(Struct_2(false, Struct_1(vec2<u32>(arg_0.d, arg_0.d), 4294967295u, vec3<bool>(false, false, true), vec2<u32>(arg_0.d, u_input.c)), Struct_1(vec2<u32>(u_input.c, arg_0.d), arg_0.d, vec3<bool>(true, true, false), vec2<u32>(4294967295u, 22159u)))), 9578u), ~(~arg_0.d) ^ 4294967295u));
    var var_1 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, !(u_input.b.x >= 1i), u_input.c == 4294967295u, true), true), select(select(vec4<bool>(true, any(vec4<bool>(true, true, true, true)), true, false), vec4<bool>(false, all(vec3<bool>(true, false, false)), any(vec2<bool>(false, false)), true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(select(vec2<bool>(false, false), vec2<bool>(true, true), false)), true)), -866f < _wgslsmith_f_op_f32(-func_1(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(0u, 1u)], 1342f)), true).c.x));
    global1 = array<f32, 1>();
    var_1 = select(vec4<bool>(u_input.c <= (func_1(arg_0.c.x, true).d ^ max(arg_0.d, 0u)), true, var_1.x, var_1.x), !(!vec4<bool>(true, arg_0.a != arg_0.b.x, var_1.x, 17354u < var_0.x)), true);
    var var_2 = Struct_1(var_0, _wgslsmith_div_u32(75240u, arg_0.d), vec3<bool>(false, (_wgslsmith_f_op_f32(arg_0.a * -788f) > _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(8482u, 1u)] - global1[_wgslsmith_index_u32(u_input.a, 1u)])) != true, false || var_1.x), vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, var_0.x, 0u), vec4<u32>(arg_0.d, u_input.a, arg_0.d, var_0.x)), ~vec4<u32>(u_input.a, var_0.x, 0u, 5709u)), 1u) ^ ~_wgslsmith_add_vec2_u32(var_0 | var_0, var_0));
    return Struct_1(var_2.d, _wgslsmith_mult_u32(var_2.a.x, 1u), var_1.zxx, var_0);
}

fn func_4(arg_0: Struct_2) -> vec3<f32> {
    var var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(reverseBits(u_input.b.x), u_input.b.x), u_input.b.yx), u_input.b.yy);
    var var_1 = -1000f;
    var var_2 = vec3<bool>(arg_0.c.c.x, func_2(func_1(_wgslsmith_f_op_f32(max(-323f, _wgslsmith_f_op_f32(f32(-1f) * -831f))), arg_0.a)).c.x, arg_0.c.c.x);
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(15581u, 1u)] - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(17989u, 1u)], global1[_wgslsmith_index_u32(4294967295u, 1u)]))))), -470f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 1u)] - -493f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_4(Struct_2(all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))) || ((13520u >> (u_input.a % 32u)) == 4294967295u), Struct_1(~vec2<u32>(u_input.c, 0u), u_input.c | 4294967295u, vec3<bool>(false, true, true), vec2<u32>(max(0u, u_input.c), u_input.a)), func_2(func_1(global1[_wgslsmith_index_u32(~u_input.c, 1u)], all(vec4<bool>(false, true, false, false)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(abs(var_0.x))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(51031u, 1u)]) * _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(1u, 1u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(377f, global1[_wgslsmith_index_u32(u_input.c, 1u)], global1[_wgslsmith_index_u32(u_input.a, 1u)])))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(52644u, 1u)]) * -506f), global1[_wgslsmith_index_u32(u_input.a, 1u)]) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(0u, 1u)])), global1[_wgslsmith_index_u32(u_input.c, 1u)]), -507f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x + 1010f), _wgslsmith_f_op_f32(-var_0.x))))));
    let var_1 = func_2(func_1(var_0.x, true));
    let var_2 = var_1.c.x;
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1024f, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(var_0.x - 383f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2009f)))), vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 1u)], -1584f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-631f, global1[_wgslsmith_index_u32(8240u, 1u)])), func_1(global1[_wgslsmith_index_u32(50671u, 1u)], false).c.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.x + -2460f), _wgslsmith_div_f32(1000f, global1[_wgslsmith_index_u32(1u, 1u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c, 1u)])), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, global1[_wgslsmith_index_u32(u_input.c, 1u)], 1008f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(552f, -1910f, var_0.x) * vec3<f32>(336f, 1457f, global1[_wgslsmith_index_u32(49900u, 1u)]))))) * vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1043f)))), 1166f, 1386f)));
    global0 = array<Struct_4, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(select(~abs(min(vec2<u32>(52458u, 45323u), vec2<u32>(u_input.c, u_input.a))), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(var_1.d, var_1.a), vec2<u32>(u_input.a, 55858u)), var_1.c.xz));
}

