struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec4<u32>,
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

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(1u, 1u), Struct_1(1u, 7386u), Struct_1(80341u, 21753u), Struct_1(2709u, 0u), Struct_1(1u, 4294967295u), Struct_1(4294967295u, 32881u), Struct_1(33914u, 4294967295u), Struct_1(39400u, 6733u), Struct_1(0u, 0u), Struct_1(0u, 49944u), Struct_1(0u, 32842u), Struct_1(13704u, 0u), Struct_1(46688u, 0u), Struct_1(0u, 37920u), Struct_1(34183u, 78348u), Struct_1(1u, 4294967295u), Struct_1(1u, 61531u), Struct_1(1u, 60487u), Struct_1(4294967295u, 62755u), Struct_1(4294967295u, 4294967295u), Struct_1(61654u, 18648u), Struct_1(36480u, 93997u), Struct_1(22943u, 15008u), Struct_1(14783u, 19252u), Struct_1(13034u, 0u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> f32 {
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    return _wgslsmith_f_op_f32(761f * 2246f);
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-180f, -2165f), vec2<f32>(196f, 103f), vec2<bool>(false, true)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-352f, -390f)), vec2<f32>(187f, -1400f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(892f)))), 1057f)));
    let var_1 = var_0.x;
    var var_2 = Struct_2(~_wgslsmith_sub_i32(~u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.d.x), abs(u_input.d.yz))), u_input.e.zxy, ~abs(reverseBits(u_input.a.yy)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -1189f, var_0.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1870f, -247f, var_1))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, var_0.x)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(var_0.x, var_0.x, 146f))))))));
    var_2 = Struct_2(~(-5271i), vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.e, abs(~u_input.e)), 8536u, ~_wgslsmith_add_u32(~var_2.c.x, ~arg_0.a)), abs(u_input.e.zw), _wgslsmith_f_op_vec3_f32(min(var_2.d, var_2.d)));
    var_2 = Struct_2(var_2.a, ~_wgslsmith_div_vec3_u32(u_input.e.zwx, reverseBits(vec3<u32>(4294967295u, var_2.b.x, 60074u))), select(vec2<u32>(30100u, var_2.c.x), u_input.a.xz, true) ^ ~vec2<u32>(~var_2.b.x, u_input.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1000f, 456f), var_0.x, any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(585f, var_2.d.x)) * _wgslsmith_f_op_f32(633f * -138f)), var_1) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -2131f, -3145f)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(239f, -897f))) * _wgslsmith_f_op_f32(-var_2.d.x)) + var_0.x));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2072f + -161f) + _wgslsmith_f_op_f32(-318f + 1170f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -309f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(867f, 839f, -2565f, 621f)))) - vec4<f32>(_wgslsmith_f_op_f32(select(1001f, 1000f, true)), _wgslsmith_f_op_f32(-1307f - 388f), _wgslsmith_f_op_f32(f32(-1f) * -436f), _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(u_input.b, 25u)])))))));
    let var_1 = Struct_1(firstTrailingBit(u_input.b), _wgslsmith_dot_vec2_u32(u_input.e.yw, ~(~vec2<u32>(107085u, u_input.e.x))));
    var var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c & 1i, (u_input.d.x | u_input.d.x) | _wgslsmith_add_i32(u_input.d.x | 1434i, u_input.c), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(6009i, 2147483647i, u_input.d.x, u_input.d.x) ^ vec4<i32>(36762i, u_input.d.x, u_input.d.x, u_input.c), countOneBits(vec4<i32>(6663i, u_input.d.x, u_input.c, u_input.c)))), -1i), ~vec4<i32>(16037i, 1i, u_input.d.x, abs(1i)));
    let var_3 = u_input.d.x;
    let var_4 = Struct_2(countOneBits(_wgslsmith_mod_i32(1i, u_input.d.x) << ((~var_1.a | u_input.e.x) % 32u)), abs(~vec3<u32>(var_1.b, 1u, var_1.b)), ~u_input.e.zy, var_0.ywz);
    return Struct_2(_wgslsmith_mod_i32(abs(var_4.a), -firstLeadingBit(u_input.d.x)), vec3<u32>(u_input.b, _wgslsmith_dot_vec4_u32(u_input.e, ~vec4<u32>(4294967295u, var_4.b.x, var_4.b.x, var_4.b.x) << (u_input.e % vec4<u32>(32u))), ~(~0u)), ~(~(~vec2<u32>(var_1.a, 0u)) & ((u_input.a.yz | vec2<u32>(u_input.a.x, u_input.b)) << (vec2<u32>(45264u, u_input.b) % vec2<u32>(32u)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, 695f, -1000f), var_0.xzz)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_4.d))), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1262f, var_4.d.x, var_0.x) + _wgslsmith_f_op_vec3_f32(round(var_0.www))), var_4.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 25>();
    let var_0 = -62791i;
    global0 = array<Struct_1, 25>();
    var var_1 = func_1();
    var var_2 = global0[_wgslsmith_index_u32(58502u, 25u)];
    let var_3 = any(!vec3<bool>(_wgslsmith_mod_i32(-27236i, var_1.a) != _wgslsmith_div_i32(26681i, var_0), true, any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false))));
    var_1 = func_1();
    let var_4 = _wgslsmith_clamp_vec3_u32(u_input.e.xxz, vec3<u32>(var_1.b.x, reverseBits(reverseBits(_wgslsmith_clamp_u32(2959u, var_1.c.x, 1u))), _wgslsmith_add_u32(max(~7338u, 0u), var_2.a)), vec3<u32>(abs(_wgslsmith_mod_u32(u_input.b, 4294967295u)), ~(var_1.c.x << (var_2.b % 32u)), _wgslsmith_mult_u32(4294967295u & var_2.a, ~1u)));
    var var_5 = (_wgslsmith_sub_i32(1i, var_0) << (u_input.e.x % 32u)) > -1i;
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

