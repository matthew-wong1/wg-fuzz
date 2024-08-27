struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 17>;

var<private> global1: Struct_3;

var<private> global2: array<vec2<i32>, 10>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global0 = array<vec2<bool>, 17>();
    let var_0 = Struct_3(global1.a);
    global0 = array<vec2<bool>, 17>();
    global2 = array<vec2<i32>, 10>();
    let var_1 = _wgslsmith_f_op_f32(-569f - var_0.a);
    return _wgslsmith_dot_vec3_i32(arg_1.a.wyx, vec3<i32>(u_input.b.x, firstLeadingBit(u_input.b.x), arg_0.a.x));
}

fn func_2(arg_0: i32) -> vec2<f32> {
    var var_0 = vec3<i32>(-func_3(Struct_1(-vec4<i32>(u_input.b.x, 78923i, u_input.b.x, u_input.b.x), ~vec4<u32>(27057u, 4294967295u, 30505u, 75422u)), Struct_1(vec4<i32>(-16029i, u_input.b.x, 2147483647i, u_input.b.x), _wgslsmith_add_vec4_u32(vec4<u32>(43628u, 0u, u_input.c, u_input.a), vec4<u32>(u_input.a, u_input.a, 30822u, u_input.a)))), min(-_wgslsmith_div_i32(-arg_0, u_input.b.x), -_wgslsmith_clamp_i32(abs(-2147483647i), ~0i, -10225i)), u_input.b.x);
    var_0 = vec3<i32>(var_0.x, -_wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_div_i32(1i, -37793i)), 1i), _wgslsmith_div_i32(2147483647i, var_0.x) | reverseBits(-(u_input.b.x | -1i)));
    var var_1 = select(vec3<bool>(all(vec4<bool>(1i < arg_0, true, any(vec3<bool>(false, true, true)), true)), false, true), !(!select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), any(select(global0[_wgslsmith_index_u32(min(u_input.a | u_input.a, ~u_input.a), 17u)], select(select(global0[_wgslsmith_index_u32(76788u, 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)], false), vec2<bool>(true, true), true), true)));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-196f + _wgslsmith_f_op_f32(exp2(global1.a))) * 808f)));
    var var_3 = Struct_2(Struct_1(_wgslsmith_mod_vec4_i32(-vec4<i32>(10369i, var_0.x, -1i, var_0.x) & reverseBits(vec4<i32>(-50270i, var_0.x, u_input.b.x, arg_0)), abs(vec4<i32>(2147483647i, var_0.x, 2147483647i, arg_0)) << (~vec4<u32>(1u, 73334u, 40186u, u_input.a) % vec4<u32>(32u))), ~(~vec4<u32>(4294967295u, u_input.a, 1u, 13896u) << (reverseBits(vec4<u32>(18135u, u_input.a, u_input.a, u_input.c)) % vec4<u32>(32u)))), 0u, Struct_1(vec4<i32>(u_input.b.x, var_0.x, var_0.x, _wgslsmith_mod_i32(-26936i, var_0.x ^ arg_0)), countOneBits(vec4<u32>(4294967295u, 1u, _wgslsmith_sub_u32(4294967295u, u_input.a), u_input.c))), var_1.zx, Struct_1(vec4<i32>(var_0.x, 1i, -u_input.b.x, u_input.b.x) | abs(vec4<i32>(u_input.b.x, u_input.b.x, 1i, u_input.b.x)), vec4<u32>(_wgslsmith_mod_u32(abs(u_input.c), 22319u), 0u, 108930u, 28716u)));
    return _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.a, 2699f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(1000f + global1.a), _wgslsmith_f_op_f32(min(-924f, global1.a))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, var_2.a)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(437f, global1.a), vec2<f32>(286f, var_2.a), var_1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1863f, -144f))), vec2<bool>(true, u_input.c >= 87255u))))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(arg_2.a.a, max(vec4<u32>(arg_2.a.b.x, max(68335u << (u_input.a % 32u), 5668u), u_input.a, ~_wgslsmith_clamp_u32(arg_2.b, 104257u, u_input.a)), _wgslsmith_add_vec4_u32(vec4<u32>(~4294967295u, u_input.c >> (16912u % 32u), max(4294967295u, 4294967295u), arg_2.e.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(101131u, 33012u, arg_2.a.b.x, arg_2.c.b.x), ~vec4<u32>(8196u, u_input.a, 4201u, 40460u)))));
    let var_1 = vec3<u32>(_wgslsmith_sub_u32(select(arg_2.e.b.x, _wgslsmith_dot_vec4_u32(arg_2.c.b, ~arg_2.c.b), false), _wgslsmith_div_u32(0u, 1u)), var_0.b.x, firstTrailingBit(50533u));
    global2 = array<vec2<i32>, 10>();
    var_0 = Struct_1(_wgslsmith_mod_vec4_i32(max(vec4<i32>(firstLeadingBit(-2147483647i), ~var_0.a.x, 1i, _wgslsmith_mult_i32(var_0.a.x, 18968i)), max(var_0.a, vec4<i32>(u_input.b.x, u_input.b.x, -632i, 15275i)) | select(var_0.a, vec4<i32>(-1i, 2147483647i, 0i, 5874i), vec4<bool>(arg_0.x, arg_0.x, true, false))), ~abs(vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, arg_2.c.a.x))), vec4<u32>(4294967295u, 1u, var_0.b.x ^ ~0u, firstLeadingBit(~(8992u | var_1.x))));
    let var_2 = arg_1.x;
    return Struct_1(~select(vec4<i32>(u_input.b.x, 1i, _wgslsmith_mult_i32(37814i, -29482i), _wgslsmith_div_i32(arg_2.a.a.x, u_input.b.x)), ~(arg_2.a.a | vec4<i32>(var_0.a.x, var_0.a.x, -1i, 27625i)), 46102u <= (0u | var_0.b.x)), vec4<u32>(~(~arg_2.a.b.x), ~firstTrailingBit(u_input.a), arg_2.a.b.x, 4294967295u));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: u32) -> vec4<f32> {
    global2 = array<vec2<i32>, 10>();
    let var_0 = select(global0[_wgslsmith_index_u32(11216u ^ ~u_input.c, 17u)], global0[_wgslsmith_index_u32(arg_2 | _wgslsmith_div_u32(firstLeadingBit(19546u) >> (~arg_2 % 32u), ~(arg_2 | arg_1.x)), 17u)], true);
    let var_1 = func_4(vec2<bool>(arg_0, var_0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(0i)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(min(global1.a, -659f)), _wgslsmith_f_op_f32(f32(-1f) * -1589f))))), Struct_2(Struct_1(firstTrailingBit(firstLeadingBit(vec4<i32>(-11035i, 0i, u_input.b.x, 19592i))), ~_wgslsmith_add_vec4_u32(vec4<u32>(16066u, arg_1.x, u_input.c, 0u), vec4<u32>(u_input.c, arg_2, arg_1.x, 4294967295u))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 45603u, ~u_input.a), ~(vec3<u32>(arg_2, arg_1.x, u_input.a) | vec3<u32>(u_input.a, 4294967295u, 30531u))), Struct_1(abs(countOneBits(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))), _wgslsmith_sub_vec4_u32(~vec4<u32>(arg_1.x, 1u, u_input.c, arg_2), vec4<u32>(u_input.a, u_input.c, 42407u, arg_1.x))), var_0, Struct_1(-vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -1988i), reverseBits(~vec4<u32>(38674u, arg_2, 0u, arg_2)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -729f), _wgslsmith_f_op_f32(select(global1.a, -1000f, true)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global1.a, 1426f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.a)) - _wgslsmith_f_op_f32(f32(-1f) * -1341f)), 364f) + vec4<f32>(global1.a, global1.a, _wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(1000f - 1199f)), global1.a)));
    let var_3 = true;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1058f, -2899f)), _wgslsmith_f_op_f32(trunc(144f)))), -714f, var_2.x, var_2.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), _wgslsmith_f_op_f32(-var_2.x), -802f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.a, 753f, var_2.x, global1.a))))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: Struct_1) -> StorageBuffer {
    global2 = array<vec2<i32>, 10>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -576f)), global1.a, global1.a);
    global1 = Struct_3(-1136f);
    var_0 = arg_0.wyw;
    let var_1 = select(select(vec4<bool>(true, true, false, u_input.b.x >= abs(-11067i)), select(vec4<bool>(true, 365f == arg_0.x, true, any(vec3<bool>(false, false, false))), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), true), select(select(select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true), 411f < _wgslsmith_f_op_f32(global1.a - arg_0.x)), !vec4<bool>(true, true, 2147483647i > u_input.b.x, false), true), vec4<bool>(_wgslsmith_mod_u32(abs(274u), arg_2.b.x) > u_input.a, true, !any(vec2<bool>(true, true)), !select(26142u > u_input.a, 349f == global1.a, select(false, false, false))));
    return StorageBuffer(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-var_0.x)), 2147483647i ^ arg_1.x, arg_2.b.xww);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 17>();
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, 1188f, _wgslsmith_f_op_f32(floor(global1.a)), 1333f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global1.a, -1686f), 548f, _wgslsmith_f_op_f32(-global1.a), global1.a) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(false, vec2<u32>(1u, 1u), u_input.a))))), _wgslsmith_mod_vec4_i32(max(vec4<i32>(u_input.b.x & 1i, ~u_input.b.x, u_input.b.x & 34155i, u_input.b.x ^ -37650i), vec4<i32>(1i, -47830i, _wgslsmith_clamp_i32(u_input.b.x, 0i, 45527i), firstLeadingBit(0i))), firstTrailingBit(vec4<i32>(0i >> (0u % 32u), u_input.b.x, ~(-46761i), u_input.b.x & 0i))), Struct_1(~vec4<i32>(-2147483647i, -11050i, u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 0i, u_input.b.x), vec4<i32>(-9098i, u_input.b.x, 39891i, u_input.b.x))), ~vec4<u32>(max(u_input.a, u_input.a), 1u, ~0u, 46855u)));
}

