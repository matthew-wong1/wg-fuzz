struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> Struct_2 {
    var var_0 = u_input.a;
    var var_1 = vec2<u32>(_wgslsmith_sub_u32(14830u, u_input.a), 1914u);
    global0 = reverseBits(~(-(_wgslsmith_mod_i32(0i, u_input.b.x) & 1i)));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 949f, 1622f, 623f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1304f, -1009f, 276f, 929f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1668f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-809f * -119f))), -(~u_input.b.x)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_2(arg_0.a);
    var var_1 = ~(-_wgslsmith_clamp_vec3_i32(u_input.b.xyy, -u_input.b.ywx ^ vec3<i32>(arg_1, 2147483647i, 18227i), vec3<i32>(-13311i & arg_1, select(var_0.a.c, u_input.b.x, true), i32(-1i) * -2147483647i)));
    let var_2 = u_input.a;
    let var_3 = _wgslsmith_f_op_f32(abs(arg_0.a.a.x));
    var var_4 = !select(select(vec2<bool>(true, select(true, true, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, true)), !select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)), false));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2 * _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.x, var_3, -2506f, arg_0.a.a.x), arg_2)) - vec4<f32>(1803f, _wgslsmith_f_op_f32(max(arg_0.a.a.x, _wgslsmith_f_op_f32(arg_2.x * var_0.a.a.x))), 1000f, 742f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-607f, var_0.a.b.x) * _wgslsmith_f_op_vec2_f32(-arg_2.xx)), ~firstTrailingBit(1i >> (1u % 32u)) | ~arg_1);
}

fn func_1() -> vec4<f32> {
    let var_0 = Struct_2(func_3(func_2(), (_wgslsmith_mod_i32(-35307i, -16467i) ^ reverseBits(u_input.b.x)) >> (~u_input.a % 32u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1218f, _wgslsmith_f_op_f32(sign(457f)), -205f, _wgslsmith_f_op_f32(-1000f * 430f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(783f, 281f, -1072f, -775f) * vec4<f32>(675f, 2383f, 374f, -422f)), vec4<f32>(-889f, -241f, 1048f, -777f), !global1[_wgslsmith_index_u32(u_input.a, 2u)])))));
    let var_1 = countOneBits(vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 34174u, u_input.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(72210u, 4294967295u, 0u), vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(4294967295u, u_input.a, 67795u)) | _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(22885u, 1u, 82839u), vec3<u32>(u_input.a, u_input.a, u_input.a))), ~1u, u_input.a));
    let var_2 = ~u_input.b;
    var var_3 = abs(~min(13088i, -var_0.a.c) << (4294967295u % 32u));
    let var_4 = firstLeadingBit(~(~abs(0u)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1550f, var_0.a.a.x, _wgslsmith_f_op_f32(func_2().a.a.x * _wgslsmith_f_op_f32(f32(-1f) * -501f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(432f + var_0.a.b.x) - var_0.a.a.x)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(256f, _wgslsmith_f_op_f32(trunc(-1701f)), _wgslsmith_f_op_f32(-var_0.a.b.x), 649f), var_0.a.a, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.b;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(109f, _wgslsmith_f_op_f32(-369f - -605f), _wgslsmith_f_op_f32(438f - 1694f), -936f))), vec2<f32>(func_3(Struct_2(func_3(Struct_2(Struct_1(vec4<f32>(112f, -669f, 1481f, 552f), vec2<f32>(-1000f, 882f), -2147483647i)), var_0.x, vec4<f32>(309f, -1845f, -1488f, 1261f))), -60827i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-890f, -669f, 1141f, 1234f), vec4<f32>(1405f, 274f, 917f, -886f)))).a.x, _wgslsmith_f_op_f32(f32(-1f) * -161f)), -25690i);
    var_1 = func_2().a;
    var var_2 = Struct_3(true | all(select(!global1[_wgslsmith_index_u32(u_input.a, 2u)], global1[_wgslsmith_index_u32(~120035u, 2u)], select(global1[_wgslsmith_index_u32(u_input.a, 2u)], global1[_wgslsmith_index_u32(u_input.a, 2u)], false))), func_2(), var_0 & -u_input.b, func_3(func_2(), _wgslsmith_div_i32(2147483647i, _wgslsmith_dot_vec3_i32(~u_input.b.wwx, vec3<i32>(-9118i, var_0.x, var_0.x))), vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.x), var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 548f)), var_1.a.x)), func_3(Struct_2(func_2().a), u_input.b.x, vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -367f)), -539f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-550f)))))));
    var var_3 = 66072i;
    var_3 = var_2.d.c;
    var var_4 = var_2.e.a;
    var_3 = var_0.x;
    global1 = array<vec4<bool>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(68426u, _wgslsmith_mod_u32(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(1u, 0u)))), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(max(vec2<u32>(7842u, u_input.a), vec2<u32>(u_input.a, 78807u)), max(vec2<u32>(1u, u_input.a), vec2<u32>(48506u, 32435u))), ~abs(vec2<u32>(16677u, 4051u)), ~abs(vec2<u32>(17772u, u_input.a))) & _wgslsmith_mod_vec2_u32(~abs(vec2<u32>(4294967295u, u_input.a)), (vec2<u32>(u_input.a, 4294967295u) & vec2<u32>(3158u, 29782u)) << (~vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_4.x, var_2.d.a.x, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-299f * -249f) - _wgslsmith_f_op_f32(select(var_2.b.a.a.x, var_4.x, false))) - var_2.b.a.a.x)), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -515f) - var_1.a.x))), _wgslsmith_f_op_f32(step(var_4.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_1.a.x, -971f, var_2.a)))))), _wgslsmith_f_op_f32(var_2.b.a.a.x + 704f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.d.a.x)) + -427f)));
}

