struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 5>;

var<private> global1: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true));

var<private> global2: array<vec2<bool>, 14>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: vec3<u32>) -> f32 {
    var var_0 = vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-arg_0.x)) - _wgslsmith_f_op_f32(-2074f + arg_0.x)), 607f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1228f - arg_0.x), arg_0.x, arg_1 >= arg_2.x))), _wgslsmith_f_op_f32(f32(-1f) * -799f)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-816f, var_0.x, _wgslsmith_f_op_f32(trunc(229f)), _wgslsmith_f_op_f32(f32(-1f) * -711f)), vec4<f32>(250f, 1169f, var_0.x, _wgslsmith_f_op_f32(max(1845f, var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, arg_0.x, -984f, 407f))) * vec4<f32>(341f, arg_0.x, -1327f, arg_0.x))))));
    var var_1 = ~(~vec4<u32>(4294967295u, _wgslsmith_div_u32(arg_2.x, 14997u), ~arg_1, 56853u) << (_wgslsmith_mult_vec4_u32(~(~vec4<u32>(arg_1, 1u, arg_2.x, arg_1)), select(vec4<u32>(113697u, 45059u, arg_2.x, arg_1) ^ vec4<u32>(arg_1, arg_2.x, arg_2.x, 18609u), vec4<u32>(arg_1, 5163u, arg_2.x, arg_1), vec4<bool>(true, true, true, true))) % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(floor(var_0.x));
}

fn func_2(arg_0: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1425f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-113f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<f32>(997f, 270f), 41715u, vec3<u32>(arg_0, 4294967295u, arg_0))) - _wgslsmith_div_f32(230f, 1373f)))))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(493f, 1000f, -1708f, 2153f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(194f, -670f, -1101f, 662f) + vec4<f32>(1000f, -616f, -271f, -686f))), vec4<f32>(_wgslsmith_div_f32(-1161f, -1286f), -682f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -532f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(647f, -684f, true)), _wgslsmith_f_op_f32(min(-835f, 325f)), _wgslsmith_f_op_f32(307f - -406f)) + vec4<f32>(276f, _wgslsmith_f_op_f32(1590f - 1569f), _wgslsmith_f_op_f32(-667f - -515f), _wgslsmith_f_op_f32(-1000f - 209f))), vec4<bool>(true, true, true, true))), any(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 4294967295u ^ arg_0, arg_0 & _wgslsmith_sub_u32(arg_0, arg_0)), 2u)]), Struct_1(52346u, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 563f, 277f, 452f)))))), _wgslsmith_clamp_vec2_u32(global0[_wgslsmith_index_u32(~4294967295u, 5u)], _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(global0[_wgslsmith_index_u32(arg_0, 5u)], global0[_wgslsmith_index_u32(94446u, 5u)]), global0[_wgslsmith_index_u32(~arg_0, 5u)]), vec2<u32>(~arg_0, arg_0))), all(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0, arg_0 | ~arg_0), 14u)]));
    global0 = array<vec2<u32>, 5>();
    var var_2 = _wgslsmith_dot_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(firstLeadingBit(31058i), 49390i), reverseBits(vec2<i32>(21107i, -1i))), vec2<i32>(0i, -11972i));
    let var_3 = countOneBits(0i) | firstLeadingBit(u_input.a);
    return var_3;
}

fn func_1(arg_0: vec2<f32>) -> f32 {
    global1 = array<vec4<bool>, 2>();
    global1 = array<vec4<bool>, 2>();
    global1 = array<vec4<bool>, 2>();
    let var_0 = _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(firstTrailingBit(15014i), max(u_input.a, u_input.a), countOneBits(u_input.a)), min(_wgslsmith_div_vec3_i32(~vec3<i32>(-1i, u_input.a, -1i), vec3<i32>(-2026i, u_input.a, u_input.a) << (vec3<u32>(7886u, 29849u, 0u) % vec3<u32>(32u))), vec3<i32>(-2147483647i, u_input.a, u_input.a) << (~vec3<u32>(105591u, 1u, 32410u) % vec3<u32>(32u)))), -min(~u_input.a, _wgslsmith_clamp_i32(-1i, u_input.a, -11644i)) ^ firstTrailingBit(func_2(4294967295u) << (~4294967295u % 32u)));
    global0 = array<vec2<u32>, 5>();
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-420f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-935f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_0.x)) + 810f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1(vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1021f + _wgslsmith_f_op_f32(f32(-1f) * -849f))))));
    let var_1 = Struct_1(~_wgslsmith_sub_u32(~1u, firstTrailingBit(4294967295u)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0 + -792f), _wgslsmith_f_op_f32(trunc(var_0)), var_0, _wgslsmith_div_f32(var_0, var_0)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(399f, -1505f, -1945f, 745f) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1089f, var_0, 1512f, 2212f))))))), ~abs(global0[_wgslsmith_index_u32(90629u, 5u)]));
    let var_2 = ~u_input.a;
    var var_3 = var_1;
    var var_4 = max(61689u, var_3.a);
    global0 = array<vec2<u32>, 5>();
    var var_5 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(abs(var_3.b.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -448f) - _wgslsmith_f_op_f32(-var_0)))), var_3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-266f + _wgslsmith_f_op_f32(min(var_3.b.x, -396f))))), all(!select(vec2<bool>(true, true), vec2<bool>(false, true), !global2[_wgslsmith_index_u32(var_1.a, 14u)])), Struct_1(~var_1.c.x, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_3.b + var_1.b) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_3.b.x, 1673f, -1000f) * var_3.b)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(var_3.b)))))), max(var_3.c, abs(_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.c.x, 1u), vec2<u32>(var_1.a, 23349u))))), true);
    global2 = array<vec2<bool>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_div_f32(var_3.b.x, var_3.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -360f) + _wgslsmith_f_op_f32(var_3.b.x + var_3.b.x)), var_1.b.x), min(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.c.x, var_3.c.x, 3641u), ~vec3<u32>(0u, var_1.c.x, var_3.c.x)) << (vec3<u32>(~var_1.c.x, 95230u, ~var_1.c.x) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(0u, var_5.c.a, var_1.a)), ~vec3<u32>(var_1.a, var_3.c.x, 1u))));
}

