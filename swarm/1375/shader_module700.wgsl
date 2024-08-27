struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(11771u, 0u);

var<private> global1: array<u32, 3>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(step(894f, 1741f)), -215f)))), _wgslsmith_f_op_f32(trunc(-282f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2998f, -1435f, -768f)))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-447f, 503f, -847f))) - vec3<f32>(-1453f, -617f, -825f)))))), global1[_wgslsmith_index_u32(arg_0, 3u)]);
    var var_1 = Struct_1(true, select(select(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, 1u <= var_0.d, any(vec4<bool>(false, true, false, true))), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), vec3<bool>(true, true, true)), vec3<bool>(!all(vec2<bool>(true, false)), all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false))), any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-427f + _wgslsmith_f_op_f32(f32(-1f) * -387f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 1126f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -437f), -804f)), all(vec4<bool>(false & any(vec2<bool>(true, true)), true, true && all(vec2<bool>(false, true)), true)));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a) * _wgslsmith_div_vec2_f32(var_0.a, var_0.a)), -388f, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, -424f, 604f)))))), ~var_0.d);
    let var_3 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(166f, _wgslsmith_div_f32(var_1.c, var_1.c)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_0.b, 201f, var_1.a))))), -2898f), var_2.a.x, var_0.c, ~(1u >> (global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(37885u, 1u), vec2<u32>(global1[_wgslsmith_index_u32(14797u, 3u)], arg_0), false), vec2<u32>(42449u, 0u) >> (vec2<u32>(global0.x, 3588u) % vec2<u32>(32u))), 3u)] % 32u)));
    var var_4 = firstLeadingBit(min(select(vec2<u32>(var_2.d, var_3.d) & (vec2<u32>(arg_0, var_2.d) ^ vec2<u32>(4294967295u, 0u)), vec2<u32>(0u, 1u) & ~vec2<u32>(u_input.b, arg_0), false), vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 0u, global1[_wgslsmith_index_u32(arg_0, 3u)], var_3.d), vec4<u32>(4294967295u, 1u, 13114u, 0u)), ~select(u_input.b, var_0.d, false))));
    return _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 62894u, global1[_wgslsmith_index_u32(43818u, 3u)]), vec3<u32>(var_3.d, var_4.x, 26894u)), 3u)], countOneBits(1u), global1[_wgslsmith_index_u32(var_4.x, 3u)], 16760u & (0u & global0.x)), ~vec4<u32>(24383u, abs(u_input.b), select(0u, arg_0, false), abs(4294967295u))), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(arg_0, var_2.d), _wgslsmith_add_u32(0u, firstLeadingBit(0u))), max(~vec2<u32>(81158u, var_0.d), vec2<u32>(0u, ~var_4.x))));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: f32) -> Struct_1 {
    global0 = _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(15520u, global1[_wgslsmith_index_u32(2281u, 3u)]), vec2<u32>(global1[_wgslsmith_index_u32(20794u, 3u)], global0.x)) >> (vec2<u32>(abs(42547u), func_3(global0.x)) % vec2<u32>(32u)), firstTrailingBit(~(~vec2<u32>(global0.x, 43696u)))), vec2<u32>(min(global0.x, countOneBits(1u)), u_input.b) ^ _wgslsmith_div_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, global1[_wgslsmith_index_u32(26899u, 3u)]), vec2<u32>(51920u, global1[_wgslsmith_index_u32(4294967295u, 3u)])), ~vec2<u32>(1u, 1u)));
    global1 = array<u32, 3>();
    global0 = abs(~vec2<u32>(0u, firstTrailingBit(1u))) | ~(~firstTrailingBit(firstLeadingBit(vec2<u32>(u_input.b, 0u))));
    let var_0 = vec3<f32>(arg_2, arg_2, -2160f);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(round(arg_2))));
    return Struct_1(!(!(~arg_0.x > ~(-2147483647i))), !vec3<bool>(835f <= _wgslsmith_f_op_f32(-var_1), any(vec2<bool>(true, true)), true), arg_2, true);
}

fn func_1() -> Struct_1 {
    global0 = vec2<u32>(_wgslsmith_add_u32(global0.x, ~max(global1[_wgslsmith_index_u32(23487u, 3u)] >> (global0.x % 32u), ~global0.x)), u_input.b ^ ~global0.x);
    var var_0 = func_2(_wgslsmith_add_vec4_i32(vec4<i32>(-_wgslsmith_div_i32(u_input.a.x, 2147483647i), -53184i, _wgslsmith_clamp_i32(20795i, _wgslsmith_dot_vec3_i32(u_input.a.wxz, u_input.a.yzz), u_input.c << (global1[_wgslsmith_index_u32(68719u, 3u)] % 32u)), -u_input.a.x | (u_input.a.x << (global1[_wgslsmith_index_u32(1u, 3u)] % 32u))), u_input.a), _wgslsmith_dot_vec4_i32(-(~(-vec4<i32>(u_input.a.x, u_input.d, 2147483647i, u_input.d))), u_input.a), 587f);
    let var_1 = func_2(u_input.a, firstTrailingBit(1i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1000f)))) * var_0.c), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-func_2(u_input.a, 0i, var_0.c).c)))));
    global0 = vec2<u32>(0u, min(min(u_input.b, 1u), ~u_input.b));
    let var_2 = all(!vec4<bool>(_wgslsmith_f_op_f32(-var_1.c) <= _wgslsmith_f_op_f32(f32(-1f) * -198f), var_0.a, all(var_0.b.zz), any(vec2<bool>(true, var_0.a))));
    return Struct_1(!(!(var_0.c > 507f) == true), select(vec3<bool>(true || (u_input.a.x >= u_input.a.x), var_2, var_2), var_1.b, !(!var_2)), var_0.c, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = countOneBits(~countOneBits(max(vec3<u32>(1u, 101777u, global1[_wgslsmith_index_u32(4294967295u, 3u)]), vec3<u32>(44566u, 4294967295u, u_input.b)))) & _wgslsmith_mod_vec3_u32(vec3<u32>(~_wgslsmith_mod_u32(4851u, 3744u), func_3(22684u) >> (4294967295u % 32u), global0.x), ~(~firstLeadingBit(vec3<u32>(u_input.b, 21215u, u_input.b))));
    var var_2 = vec2<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(98145u, 83788u, 4294967295u, global0.x) >> (countOneBits(vec4<u32>(global0.x, 50155u, global1[_wgslsmith_index_u32(u_input.b, 3u)], global0.x)) % vec4<u32>(32u))), reverseBits(~(vec4<u32>(2130u, 68413u, var_1.x, u_input.b) << (vec4<u32>(0u, 33793u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 4294967295u) % vec4<u32>(32u))))), min(global0.x, _wgslsmith_mod_u32(~var_1.x ^ ~var_1.x, var_1.x)));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, -227f, -483f, 1391f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, 1000f, 837f, 474f) * vec4<f32>(638f, -2065f, var_0.c, 961f)), !vec4<bool>(var_0.d, false, false, true)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1221f, -1083f, 456f, var_0.c) - vec4<f32>(1000f, var_0.c, 636f, var_0.c))), vec4<f32>(-1280f, _wgslsmith_div_f32(var_0.c, 113f), var_0.c, _wgslsmith_f_op_f32(var_0.c - 1103f)), !(!vec4<bool>(var_0.d, false, true, true)))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, 1117f, -467f, 327f))))))));
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.c, -abs(_wgslsmith_div_i32(u_input.d, -30257i)), min((u_input.c << (global0.x % 32u)) | u_input.d, firstTrailingBit(14154i) << ((1u << (var_1.x % 32u)) % 32u)), abs(-1i) | u_input.c), u_input.a.x);
}

