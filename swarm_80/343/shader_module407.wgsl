struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec3<f32>,
    d: vec3<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec4<bool>(false, false, false, true), 1050f, vec3<f32>(532f, 696f, -733f), vec3<bool>(true, true, true), 6101u), Struct_1(vec4<bool>(true, false, false, true), -2038f, vec3<f32>(-669f, -1000f, 1225f), vec3<bool>(true, false, false), 0u));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(select(!vec4<bool>(true, true, u_input.b < u_input.b, false), vec4<bool>(true, false, any(vec4<bool>(true, false, true, false)), true), false), -135f, vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(638f, 1000f) + -1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(781f - 1065f))))), _wgslsmith_div_f32(-1187f, 862f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -720f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(795f, -1121f)))))), vec3<bool>((u_input.a.x & _wgslsmith_mult_u32(u_input.a.x, 1u)) <= ((23409u << (u_input.a.x % 32u)) | reverseBits(1u)), true, all(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false))), _wgslsmith_mod_u32(1u, ~countOneBits(1u)));
    var var_1 = ~_wgslsmith_mod_i32(~max(29308i, _wgslsmith_mod_i32(-48901i, -2147483647i)), _wgslsmith_add_i32(-(~2291i), -2147483647i));
    let var_2 = ~var_0.e << (~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(u_input.b, u_input.a.x), var_0.e, ~u_input.a.x), vec3<u32>(0u, u_input.b, u_input.a.x) ^ vec3<u32>(0u, 19512u, 4294967295u)) % 32u);
    global0 = array<Struct_1, 2>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), 282f)));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec2<f32>) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * arg_2.x)))), _wgslsmith_f_op_f32(-116f + arg_2.x))));
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    let var_1 = arg_2.x;
    let var_2 = Struct_1(vec4<bool>(~(~5289u) < u_input.b, !select(!arg_1, !arg_1, all(vec2<bool>(false, false))), true, firstLeadingBit(1u) <= u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(118f + var_1) + _wgslsmith_div_f32(237f, -413f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(117f, _wgslsmith_f_op_f32(-arg_2.x), 368f))), vec3<bool>(all(select(select(vec2<bool>(arg_0, arg_1), vec2<bool>(arg_1, false), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(false, true), arg_1), !vec2<bool>(arg_1, arg_0))), arg_1, (arg_1 && arg_1) != (-777f < _wgslsmith_f_op_f32(trunc(-816f)))), firstLeadingBit(~110347u));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(788f, var_2.c.x, var_1) - var_2.c) * vec3<f32>(_wgslsmith_f_op_f32(var_0.x - 1059f), _wgslsmith_f_op_f32(1892f + -1182f), _wgslsmith_f_op_f32(func_3()))));
}

fn func_1() -> Struct_1 {
    var var_0 = -_wgslsmith_mod_vec2_i32(vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, -28423i), vec3<i32>(1i, -2147483647i, 26127i)), _wgslsmith_sub_i32(i32(-1i) * -67127i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -71351i), vec2<i32>(14261i, -1i)))), -(~vec2<i32>(0i, -2147483647i)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(279f * -754f), 1260f, _wgslsmith_f_op_f32(trunc(-560f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1039f, -845f, -1273f)))))) + _wgslsmith_f_op_vec3_f32(func_2(false, _wgslsmith_clamp_i32(var_0.x, -29208i, firstLeadingBit(1i)) <= _wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_0.x, var_0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(var_0.x, 1i)), ~4051i), vec2<f32>(-991f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1216f))))));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(1422f - var_1.x)))));
    let var_3 = vec2<i32>(-1433i >> (firstLeadingBit(1u << (u_input.b % 32u)) % 32u), -(~var_0.x >> (abs(abs(1u)) % 32u)));
    global0 = array<Struct_1, 2>();
    return Struct_1(vec4<bool>(true, any(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), true)), (min(var_3.x, 31263i) >> (_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) % 32u)) < min(32886i, 0i), true), var_1.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1 * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1 - vec3<f32>(-933f, var_1.x, var_1.x)))) - _wgslsmith_f_op_vec3_f32(-var_1)), select(select(vec3<bool>(true, u_input.a.x != u_input.b, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), true), true), vec3<bool>(true, false, all(vec3<bool>(false, true, false))), true), u_input.b);
}

fn func_4(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = func_1();
    let var_1 = any(func_1().a.wz);
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    return _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(func_1().e, _wgslsmith_dot_vec3_u32(vec3<u32>(78305u, 17351u, u_input.a.x), vec3<u32>(var_0.e, var_0.e, arg_0.e)) << (arg_0.e % 32u)), firstTrailingBit(1u) >> (63954u % 32u), ~_wgslsmith_mod_u32(27591u, select(arg_0.e, var_0.e, true))), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, var_0.e, 4294967295u), vec3<u32>(4294967295u, u_input.b, 38267u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 77180u, 1u), vec3<u32>(0u, u_input.a.x, arg_0.e), vec3<u32>(0u, 1u, var_0.e))), _wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(var_0.e, arg_0.e, 4294967295u)), ~vec3<u32>(u_input.a.x, arg_0.e, u_input.b))) ^ (abs(vec3<u32>(u_input.b, 48401u, u_input.b) | vec3<u32>(u_input.b, 10998u, arg_0.e)) << (~abs(vec3<u32>(1u, var_0.e, arg_0.e)) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~func_4(func_1())), _wgslsmith_mod_vec3_u32(vec3<u32>(25700u, u_input.a.x, 4017u), ~vec3<u32>(u_input.a.x, ~u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b), vec4<u32>(4294967295u, 30219u, u_input.b, 1u))))), 2u)];
    var var_1 = -2147483647i;
    let var_2 = Struct_1(!vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x), -984f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(func_1().b)), -1522f, _wgslsmith_f_op_f32(1038f - var_0.b))), func_1().d, var_0.e >> (((~var_0.e << ((var_0.e << (var_0.e % 32u)) % 32u)) & select(18672u, u_input.a.x, true)) % 32u));
    var var_3 = global0[_wgslsmith_index_u32(u_input.a.x, 2u)];
    var var_4 = Struct_1(vec4<bool>(var_3.e != 1u, true, var_2.d.x, !(!var_3.a.x) || true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(116f, _wgslsmith_f_op_f32(var_2.b - var_2.c.x))) * var_3.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2(all(vec2<bool>(var_3.a.x, var_0.d.x)), !var_0.a.x, vec2<f32>(var_2.b, -1000f))).x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.c)) * _wgslsmith_f_op_vec3_f32(var_2.c + vec3<f32>(var_2.c.x, -1541f, var_2.b))) + _wgslsmith_f_op_vec3_f32(-var_0.c)), !select(var_0.a.xzy, !select(vec3<bool>(true, false, var_0.d.x), vec3<bool>(var_2.d.x, var_3.d.x, var_3.a.x), vec3<bool>(false, var_0.a.x, var_2.d.x)), all(var_3.a)), abs(~(~26690u) >> (_wgslsmith_clamp_u32(79814u, var_0.e, min(u_input.b, var_2.e)) % 32u)));
    var var_5 = func_1();
    let var_6 = var_3.d.x;
    var var_7 = Struct_1(!(!vec4<bool>(!var_3.d.x, var_5.a.x, var_5.d.x, true)), var_2.b, _wgslsmith_f_op_vec3_f32(var_2.c - var_2.c), !select(select(vec3<bool>(false, var_0.d.x, true), func_1().a.wxz, var_2.d), !(!var_5.a.zyx), var_0.d.x), var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.c.x, 1u, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.c.x, var_0.c.x) + _wgslsmith_f_op_vec2_f32(-var_7.c.xz)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_3.b, 384f))), vec2<bool>(true, var_4.a.x))), var_3.c.yx, vec2<bool>(!(true && var_0.d.x), var_3.a.x))), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(~var_7.e, _wgslsmith_mult_u32(var_5.e, var_4.e), _wgslsmith_mod_u32(36862u, 29639u), var_2.e), ~abs(vec4<u32>(41744u, var_0.e, 4294967295u, 24394u))), ~(vec4<u32>(1u, 13949u, 1u, 11554u) << (vec4<u32>(0u, u_input.b, 4294967295u, var_5.e) % vec4<u32>(32u))) >> (firstLeadingBit(vec4<u32>(0u, 0u, 0u, 0u)) % vec4<u32>(32u)), vec4<u32>(~var_5.e, 9610u, var_7.e, 0u)), abs(max(abs(1u | var_4.e), u_input.b)));
}

