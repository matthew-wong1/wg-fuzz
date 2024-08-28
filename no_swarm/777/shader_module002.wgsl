struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(arg_0.a);
    var var_1 = 233f;
    let var_2 = u_input.c;
    var var_3 = vec3<u32>(4294967295u, _wgslsmith_clamp_u32(13021u, ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 1u, var_2.x), vec3<u32>(37819u, var_2.x, 4294967295u)), ~1u), ~(var_2.x | _wgslsmith_sub_u32(var_2.x, 7909u))), ~(~(~(~24832u))));
    let var_4 = u_input.c;
    return Struct_1(!(!(!(!arg_0.a))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global0 = array<Struct_1, 13>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1675f)) != _wgslsmith_f_op_f32(1046f * _wgslsmith_f_op_f32(ceil(932f))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1400f, -1477f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-817f, -1795f), vec2<f32>(-1343f, 1103f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(128f, 994f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(264f, -970f), vec2<f32>(567f, 440f)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 1885f)))) + vec2<f32>(_wgslsmith_f_op_f32(1000f * var_1.x), _wgslsmith_f_op_f32(-var_1.x))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x))))))));
    return _wgslsmith_f_op_f32(floor(1454f));
}

fn func_4(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_0.x;
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(countOneBits(1u), _wgslsmith_clamp_u32(0u, ~(~u_input.d), 0u)), 13u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(arg_0 * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1333f, arg_0.x, var_0, var_0))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-351f, var_0, -1188f, 1313f) * arg_0), _wgslsmith_f_op_vec4_f32(step(arg_0, arg_0))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1229f, _wgslsmith_f_op_f32(961f + var_0), _wgslsmith_f_op_f32(min(1073f, arg_0.x)), var_0))) * vec4<f32>(_wgslsmith_f_op_f32(-862f - _wgslsmith_f_op_f32(sign(var_0))), _wgslsmith_f_op_f32(-arg_0.x), -829f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x))))));
    let var_3 = _wgslsmith_sub_vec4_u32(min(select(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c.x, arg_1, u_input.d, arg_1), reverseBits(vec4<u32>(38560u, u_input.c.x, 1094u, u_input.c.x))), vec4<u32>(arg_1, u_input.d << (127188u % 32u), max(arg_1, u_input.c.x), _wgslsmith_add_u32(arg_1, 1u)), !select(vec4<bool>(var_1.a, true, var_1.a, arg_2.a), vec4<bool>(false, true, arg_2.a, true), vec4<bool>(arg_2.a, false, true, arg_2.a))), vec4<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.c.x, 0u, 57732u, arg_1)), select(vec4<u32>(arg_1, arg_1, u_input.c.x, 0u), vec4<u32>(arg_1, u_input.d, 4294967295u, 26404u), vec4<bool>(true, var_1.a, true, arg_2.a))), min(arg_1 & arg_1, ~u_input.d), 40458u, firstLeadingBit(46965u))), _wgslsmith_sub_vec4_u32(~(~countOneBits(vec4<u32>(arg_1, u_input.d, arg_1, u_input.d))), ~(~(vec4<u32>(arg_1, 1u, 15157u, arg_1) >> (vec4<u32>(u_input.d, u_input.d, u_input.d, arg_1) % vec4<u32>(32u))))));
    let var_4 = func_2(func_2(Struct_1(!(arg_0.x >= arg_0.x))));
    return Struct_1(var_1.a);
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_1, 13>();
    let var_0 = func_2(global0[_wgslsmith_index_u32(~abs(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, u_input.c.x))), 13u)]);
    let var_1 = any(vec2<bool>(select(true, var_0.a, !var_0.a), all(!vec4<bool>(false, false, true, var_0.a)) || (all(vec3<bool>(var_0.a, true, var_0.a)) | var_0.a)));
    let var_2 = false;
    var var_3 = var_0;
    return func_4(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -440f), 468f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1175f - _wgslsmith_f_op_f32(step(940f, 514f))) - _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), 13u)], Struct_1(false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-542f - -851f) - _wgslsmith_f_op_f32(step(1014f, -1562f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1549f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1236f, _wgslsmith_f_op_f32(214f + -1631f))) + _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(4294967295u, 13u)], var_0)))), 0u & countOneBits(~u_input.d), global0[_wgslsmith_index_u32(4294967295u, 13u)]);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = Struct_1(true);
    var var_1 = u_input.c | abs(min(countOneBits(reverseBits(vec2<u32>(20057u, 4294967295u))), _wgslsmith_mult_vec2_u32(u_input.c, abs(vec2<u32>(0u, 1u)))));
    let var_2 = !vec2<bool>(!(!any(vec4<bool>(var_0.a, arg_0.a, arg_1.a, arg_0.a))), arg_0.a);
    let var_3 = global0[_wgslsmith_index_u32(u_input.c.x, 13u)];
    let var_4 = select(vec4<bool>(var_3.a, !arg_0.a, all(!select(vec4<bool>(var_3.a, true, false, arg_1.a), vec4<bool>(var_2.x, var_2.x, arg_1.a, arg_0.a), arg_1.a)), var_3.a), vec4<bool>(false, u_input.a >= -max(0i, u_input.e), !var_2.x && true, (var_2.x & var_3.a) == true), true);
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 226f, 1000f), vec3<f32>(-374f, 1089f, 167f)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1327f, -1363f, -504f)))), vec3<f32>(-127f, -418f, _wgslsmith_f_op_f32(round(-928f))))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-188f, 613f, 1557f), vec3<f32>(-584f, -726f, 401f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(545f, 1000f, -1000f)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-576f, -392f, 2035f)))))))));
}

fn func_6(arg_0: vec2<i32>, arg_1: vec3<f32>) -> vec4<f32> {
    global0 = array<Struct_1, 13>();
    var var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, ~51978u, ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(44812u, u_input.c.x, 14222u, 40253u) ^ vec4<u32>(17506u, u_input.c.x, 70445u, 19880u), ~vec4<u32>(u_input.c.x, 1u, 5376u, u_input.d))), vec4<u32>(min(u_input.c.x & 0u, 15170u), 0u, ~48260u, u_input.c.x >> (~4294967295u % 32u))), vec4<u32>(74895u, 4294967295u, u_input.c.x, 82545u));
    var var_1 = ~reverseBits(u_input.c.x) & ~u_input.c.x;
    let var_2 = vec2<bool>(!(!(firstLeadingBit(33037u) == _wgslsmith_clamp_u32(4294967295u, u_input.c.x, 4294967295u))), false);
    var_0 = u_input.d ^ _wgslsmith_dot_vec3_u32(select(_wgslsmith_mult_vec3_u32(vec3<u32>(18170u, u_input.c.x, 15051u) & vec3<u32>(u_input.c.x, 4568u, u_input.d), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, 85479u, 71459u), vec3<u32>(4433u, 19578u, u_input.d))), ~(vec3<u32>(1u, 0u, 11400u) >> (vec3<u32>(u_input.c.x, u_input.d, u_input.c.x) % vec3<u32>(32u))), any(select(var_2, vec2<bool>(false, var_2.x), vec2<bool>(true, false)))), ~vec3<u32>(1u | u_input.c.x, 105797u, reverseBits(u_input.d)));
    return vec4<f32>(_wgslsmith_f_op_f32(195f + arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-arg_1.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + arg_1.x) - _wgslsmith_f_op_f32(-347f + _wgslsmith_f_op_f32(arg_1.x + -584f)))), -710f, arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), 1u) << (u_input.d % 32u), 13u)];
    let var_1 = -2147483647i;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-1285f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -120f), _wgslsmith_f_op_f32(round(1378f)), -343f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_6(-_wgslsmith_add_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(var_1, 1i)), _wgslsmith_f_op_vec3_f32(func_5(Struct_1(true), func_1()))))));
    let var_3 = vec3<bool>(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x) * var_2))) + vec4<f32>(_wgslsmith_f_op_f32(trunc(1000f)), var_2.x, _wgslsmith_div_f32(2252f, -374f), var_2.x)), min(1u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 1u), u_input.c), 46013u, 4294967295u)), global0[_wgslsmith_index_u32(abs(0u) | u_input.c.x, 13u)]).a, var_0.a, any(vec2<bool>(var_0.a, true)));
    let x = u_input.a;
    s_output = StorageBuffer(1f, -(-countOneBits(vec3<i32>(u_input.b, u_input.e, 61724i)) | vec3<i32>(-var_1, max(var_1, 0i), 3195i)));
}

