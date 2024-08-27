struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec3<bool>,
    d: bool,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25> = array<u32, 25>(0u, 43048u, 0u, 19830u, 1u, 3453u, 9836u, 32300u, 1u, 35544u, 0u, 4294967295u, 72588u, 1u, 1u, 1u, 0u, 1u, 101815u, 80372u, 37898u, 53818u, 4294967295u, 8916u, 4294967295u);

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec2<f32>(741f, 303f)), Struct_1(vec2<f32>(361f, 1050f)), Struct_1(vec2<f32>(469f, 1010f)), Struct_1(vec2<f32>(994f, -774f)), Struct_1(vec2<f32>(2117f, 361f)), Struct_1(vec2<f32>(1000f, 1533f)), Struct_1(vec2<f32>(-1167f, 756f)), Struct_1(vec2<f32>(564f, 884f)), Struct_1(vec2<f32>(127f, 936f)), Struct_1(vec2<f32>(-202f, 461f)), Struct_1(vec2<f32>(-161f, 1188f)), Struct_1(vec2<f32>(-325f, -301f)), Struct_1(vec2<f32>(576f, -996f)), Struct_1(vec2<f32>(1314f, -735f)), Struct_1(vec2<f32>(317f, 893f)), Struct_1(vec2<f32>(-463f, 530f)), Struct_1(vec2<f32>(-569f, -456f)));

var<private> global2: vec2<f32>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> f32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.a * vec2<f32>(arg_0.a.x, -1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1593f, global2.x) * arg_0.a) - vec2<f32>(443f, -524f)), vec2<bool>(true, true)))), !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), true), vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(false, false, true, false)), true, true, true)));
    let var_1 = true;
    global1 = array<Struct_1, 17>();
    let var_2 = abs(vec3<u32>(abs(4294967295u), 0u | ~global0[_wgslsmith_index_u32(44539u, 25u)], _wgslsmith_div_u32(firstTrailingBit(global0[_wgslsmith_index_u32(4294967295u, 25u)]), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 62191u), 25u)]))) & vec3<u32>(global0[_wgslsmith_index_u32(~1u, 25u)], global0[_wgslsmith_index_u32(61190u, 25u)], min(max(global0[_wgslsmith_index_u32(41130u, 25u)], arg_1.x), ~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 25u)], global0[_wgslsmith_index_u32(38059u, 25u)])));
    let var_3 = vec3<u32>(27231u, _wgslsmith_mult_u32(~arg_1.x, max(~(~var_2.x), 1u)), 4294967295u);
    return -742f;
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, _wgslsmith_f_op_f32(abs(global2.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -919f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.a.x) * arg_0.a.a.x)), vec4<f32>(_wgslsmith_f_op_f32(190f + _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(19929u, 17u)], vec2<u32>(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(14091u, 25u)])))), _wgslsmith_f_op_f32(-arg_0.a.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_0.a.a.x, global2.x))), global2.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a.x, global2.x, arg_0.a.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global2.x)), global2.x)))));
    let var_1 = Struct_3((var_0.x < 661f) && false, global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(56989u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 25u)], global0[_wgslsmith_index_u32(16992u, 25u)], 0u)), firstLeadingBit(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 25u)], 25u)], 25u)], global0[_wgslsmith_index_u32(3738u, 25u)]))), 25u)], 25u)]), 25u)], !arg_0.b.zzz, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + var_0.x)) <= _wgslsmith_f_op_f32(-global2.x)), min(~_wgslsmith_clamp_vec4_u32(select(vec4<u32>(68660u, 40135u, 62127u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 25u)], 25u)]), vec4<u32>(global0[_wgslsmith_index_u32(74816u, 25u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 25u)], 25u)], 44751u, global0[_wgslsmith_index_u32(81303u, 25u)]), true), vec4<u32>(27025u, global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22023u, 25u)], 25u)], 18369u), ~vec4<u32>(0u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4388u, 25u)], 25u)], 25u)], 25u)])), vec4<u32>(1u, firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 25u)] >> (global0[_wgslsmith_index_u32(13382u, 25u)] % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 25u)], 10108u), ~vec3<u32>(global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(83940u, 25u)], 0u)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(62022u, 4294967295u), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(0u, 25u)], 25u)]))));
    var var_2 = vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(0u, 25u)], 0u, 0u, 1u), var_1.e), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_1.e, vec4<u32>(global0[_wgslsmith_index_u32(5353u, 25u)], 42976u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 25u)], global0[_wgslsmith_index_u32(var_1.b, 25u)])), 25u)]) | ~reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 25u)]), 25u)], 25u)], ~_wgslsmith_add_u32(select(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)], var_1.a), _wgslsmith_add_u32(40773u, 20129u))) | var_1.e.zz;
    var var_3 = Struct_3(false, _wgslsmith_div_u32(0u, ~countOneBits(4294967295u)), vec3<bool>(arg_0.b.x, var_0.x == arg_0.a.a.x, true), select(4294967295u < var_2.x, true, true), ~_wgslsmith_div_vec4_u32(select(vec4<u32>(51602u, 1u, global0[_wgslsmith_index_u32(4294967295u, 25u)], var_1.b), var_1.e, vec4<bool>(false, true, true, false)), ~(~vec4<u32>(var_2.x, var_1.e.x, global0[_wgslsmith_index_u32(0u, 25u)], 0u))));
    var var_4 = !var_1.c.yx;
    return var_1;
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_3, arg_3: i32) -> Struct_2 {
    global0 = array<u32, 25>();
    var var_0 = !any(vec3<bool>(_wgslsmith_dot_vec2_i32(arg_0.ww, vec2<i32>(arg_3, 1i)) < 54131i, min(1762u, 16992u) > firstLeadingBit(arg_2.b), true));
    var_0 = false;
    var_0 = !arg_2.d || (global0[_wgslsmith_index_u32(~arg_2.b, 25u)] < _wgslsmith_mult_u32(_wgslsmith_sub_u32(func_2(Struct_2(Struct_1(vec2<f32>(261f, -1368f)), vec4<bool>(false, arg_2.c.x, false, arg_2.c.x))).e.x, arg_2.b ^ 1u), arg_2.e.x));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) - vec2<f32>(-214f, 469f))))), !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, arg_2.c.x, false, arg_2.d), vec4<bool>(false, false, arg_2.a, arg_2.a)), !vec4<bool>(arg_2.a, true, arg_2.d, arg_2.a))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> i32 {
    let var_0 = select(~(-select(vec3<i32>(-31310i, u_input.c, -3684i), u_input.e.zzx, false) << ((vec3<u32>(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 25u)], 25u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 25u)]) | func_2(Struct_2(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52365u, 25u)], 25u)], 17u)], vec4<bool>(arg_1.b.x, true, arg_1.b.x, false))).e.wyw) % vec3<u32>(32u))), -vec3<i32>(5949i, -u_input.d >> (~global0[_wgslsmith_index_u32(36536u, 25u)] % 32u), _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, u_input.b.x, -2147483647i, u_input.a), _wgslsmith_sub_vec4_i32(vec4<i32>(8373i, 53645i, u_input.d, u_input.a), u_input.e))), arg_3.b.zyw);
    global1 = array<Struct_1, 17>();
    return var_0.x;
}

fn func_1() -> f32 {
    let var_0 = func_5(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4074u, ~_wgslsmith_mod_u32(0u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(6173u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(96783u, 25u)], 25u)], 4294967295u), vec4<u32>(82889u, 61357u, global0[_wgslsmith_index_u32(29331u, 25u)], 20482u)), 25u)])), 17u)], func_4(_wgslsmith_mod_vec4_i32(u_input.e, _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, u_input.c, u_input.d, -2147483647i), vec4<i32>(63862i, u_input.e.x, u_input.a, 24085i)) | reverseBits(vec4<i32>(-2147483647i, 22578i, -8277i, 13236i))), 14548i, func_2(Struct_2(Struct_1(vec2<f32>(global2.x, 506f)), vec4<bool>(true, true, true, true))), u_input.d), _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.x))))), func_4(vec4<i32>(-26962i, ~u_input.e.x, ~15836i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.b, u_input.e.xyx), select(vec3<i32>(u_input.e.x, -2147483647i, u_input.d), u_input.e.xyy, true))), -max(1i, u_input.e.x ^ -25311i), Struct_3(true, ~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], !select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), !select(true, true, false), vec4<u32>(reverseBits(4294967295u), global0[_wgslsmith_index_u32(firstTrailingBit(0u), 25u)], reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1281u, 25u)], 25u)], 25u)], 25u)], 25u)]), 0u)), ~(-2147483647i)));
    var var_1 = vec4<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(max(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 73392u), vec2<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 25u)], 25u)], 25u)])), 25u)], ~88424u), 25u)], 25u)] | 0u, 4648u << (global0[_wgslsmith_index_u32(~(~1u), 25u)] % 32u), _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(37081u, 25u)], 25u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 25u)], 25u)]), 25u)], ~global0[_wgslsmith_index_u32(select(72166u, global0[_wgslsmith_index_u32(34306u, 25u)], true), 25u)]), 25u)], 25u)], 25u)]), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30286u, 25u)], 25u)], 25u)], 25u)], 9540u), 25u)], _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(0u, 25u)], 5336u), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 25u)], 34334u)), _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(37210u, 25u)], global0[_wgslsmith_index_u32(35195u, 25u)], 0u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(36461u, 25u)], 25u)], global0[_wgslsmith_index_u32(58544u, 25u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(91383u, 25u)], 25u)], 25u)])), ~9203u), ~(~vec4<u32>(global0[_wgslsmith_index_u32(5646u, 25u)], global0[_wgslsmith_index_u32(30323u, 25u)], 9621u, 40851u))), 25u)]);
    global2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * global2.x) + global2.x), 908f);
    var var_2 = func_4(_wgslsmith_sub_vec4_i32(u_input.e, abs(u_input.e)), var_0, func_2(Struct_2(func_4(~u_input.e, firstLeadingBit(7123i), Struct_3(true, var_1.x, vec3<bool>(true, false, false), true, vec4<u32>(global0[_wgslsmith_index_u32(12140u, 25u)], var_1.x, 67992u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 25u)])), var_0).a, vec4<bool>(true, true, true, true))), _wgslsmith_dot_vec2_i32(u_input.b.zy ^ vec2<i32>(-5455i, -34530i), -(vec2<i32>(u_input.c, 0i) & vec2<i32>(u_input.b.x, var_0))) | -u_input.e.x);
    let var_3 = vec2<u32>(var_1.x, _wgslsmith_clamp_u32(_wgslsmith_add_u32(~1u, ~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0[_wgslsmith_index_u32(var_1.x, 25u)], global0[_wgslsmith_index_u32(100689u, 25u)]) | firstTrailingBit(vec3<u32>(global0[_wgslsmith_index_u32(var_1.x, 25u)], global0[_wgslsmith_index_u32(17580u, 25u)], 5273u)), _wgslsmith_div_vec3_u32(max(var_1.zyw, var_1.yzw), ~vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34080u, 25u)], 25u)]))), ~global0[_wgslsmith_index_u32(54983u, 25u)]));
    return -734f;
}

fn func_6(arg_0: f32) -> bool {
    var var_0 = _wgslsmith_add_vec2_i32(u_input.b.yy, firstTrailingBit(u_input.e.xy));
    global2 = vec2<f32>(global2.x, -1631f);
    global1 = array<Struct_1, 17>();
    global1 = array<Struct_1, 17>();
    var_0 = vec2<i32>(abs(var_0.x << (11891u % 32u)), _wgslsmith_clamp_i32(firstLeadingBit(u_input.c) | -9276i, _wgslsmith_mult_i32(-3865i, _wgslsmith_add_i32(var_0.x, u_input.b.x)), 34302i)) ^ -vec2<i32>(_wgslsmith_mult_i32(u_input.c, u_input.a), 1i);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 832f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global2.x, -395f), vec2<f32>(-1126f, -346f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) * vec2<f32>(global2.x, -313f)))) + vec2<f32>(global2.x, _wgslsmith_f_op_f32(sign(1000f))))));
    var var_0 = u_input.e.x;
    let var_1 = Struct_3(func_6(_wgslsmith_f_op_f32(func_1())), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, 50546u << (global0[_wgslsmith_index_u32(select(~13266u, global0[_wgslsmith_index_u32(1u, 25u)], any(vec4<bool>(false, false, false, false))), 25u)] % 32u)), 25u)], !(!vec3<bool>(all(vec2<bool>(false, false)), true, false)), global2.x <= -364f, _wgslsmith_sub_vec4_u32(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(58308u, global0[_wgslsmith_index_u32(2985u, 25u)], 4294967295u, global0[_wgslsmith_index_u32(0u, 25u)]), vec4<u32>(1u, global0[_wgslsmith_index_u32(18865u, 25u)], 22459u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 25u)]))) & _wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(0u, 25u)], 46557u, global0[_wgslsmith_index_u32(0u, 25u)], 32714u) ^ vec4<u32>(global0[_wgslsmith_index_u32(21554u, 25u)], 95489u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32899u, 25u)], 25u)], 17904u), vec4<u32>(global0[_wgslsmith_index_u32(50622u, 25u)], global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)], 4294967295u)), _wgslsmith_mult_vec4_u32(abs(func_2(Struct_2(global1[_wgslsmith_index_u32(59193u, 17u)], vec4<bool>(false, false, false, true))).e), vec4<u32>(global0[_wgslsmith_index_u32(24452u, 25u)], ~17128u, 11505u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40485u, 25u)], 25u)], 25u)], 25u)], 25u)], 25u)], 25u)] << (23953u % 32u)))));
    global0 = array<u32, 25>();
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2.x, global2.x)))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-global2.x), global2.x), vec2<f32>(_wgslsmith_f_op_f32(sign(global2.x)), _wgslsmith_f_op_f32(global2.x * global2.x)), var_1.a)))));
    var var_2 = true & !(!var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1149f, global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -722f) * _wgslsmith_div_f32(-144f, _wgslsmith_f_op_f32(min(global2.x, -208f))))), 0i << (1u % 32u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(countOneBits(43768u), 25u)], 25u)], 25u)], 25u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, global2.x, -175f, global2.x), vec4<f32>(753f, 385f, -794f, -483f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 1189f, -1123f, global2.x)))) - vec4<f32>(global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), 583f), _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(step(global2.x, global2.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-364f * 134f), global2.x))), vec2<i32>(u_input.d, firstTrailingBit(1i)) << (abs(_wgslsmith_div_vec2_u32(var_1.e.zy, _wgslsmith_sub_vec2_u32(var_1.e.xz, vec2<u32>(1u, global0[_wgslsmith_index_u32(var_1.e.x, 25u)])))) % vec2<u32>(32u)));
}

