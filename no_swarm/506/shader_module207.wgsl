struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = arg_2.a.xy;
    let var_1 = Struct_1(~_wgslsmith_mult_vec3_u32(~(~vec3<u32>(var_0.x, 57581u, arg_1.a.x)), arg_1.a), !(!arg_1.b), 1000f, arg_1.d);
    var_0 = _wgslsmith_mod_vec2_u32(arg_1.a.zz, _wgslsmith_clamp_vec2_u32(~max(arg_1.a.xx, ~arg_2.a.xx), arg_2.a.zz, vec2<u32>(max(31212u, 0u), arg_2.a.x) | arg_2.a.xx));
    var_0 = ~(~max(vec2<u32>(var_0.x, countOneBits(arg_2.a.x)), vec2<u32>(~arg_1.d, _wgslsmith_mod_u32(var_1.a.x, arg_1.d))));
    let var_2 = ~u_input.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(606f)));
}

fn func_2(arg_0: f32) -> vec4<f32> {
    let var_0 = ~(-(~firstTrailingBit(firstLeadingBit(vec4<i32>(21941i, 28704i, -14659i, 0i)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1202f, arg_0, arg_0))), vec3<f32>(-1326f, arg_0, -2292f)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<u32>(53035u, 24723u, 4294967295u, 122273u), Struct_1(vec3<u32>(u_input.c, 56638u, u_input.a.x), vec4<bool>(true, true, false, false), arg_0, u_input.c), Struct_1(vec3<u32>(u_input.c, 42825u, u_input.a.x), vec4<bool>(false, true, false, false), 2551f, u_input.b))) * _wgslsmith_f_op_f32(arg_0 - -1103f)), -1411f, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -825f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, var_1.x, -1404f)) + vec3<f32>(var_1.x, -177f, -417f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, 231f, 1378f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, arg_0, 1910f) + vec3<f32>(arg_0, var_1.x, var_1.x)))))));
    var var_2 = vec2<f32>(arg_0, var_1.x);
    var var_3 = 1972f;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(248f, _wgslsmith_f_op_f32(func_3(vec4<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.c), u_input.c ^ u_input.a.x, u_input.b, ~u_input.c), Struct_1(~vec3<u32>(u_input.b, 109903u, 4294967295u), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), true), _wgslsmith_f_op_f32(round(-473f)), u_input.b), Struct_1(vec3<u32>(u_input.a.x, u_input.c, 4294967295u), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(floor(1880f)), u_input.b))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), arg_0));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>) -> i32 {
    let var_0 = ~vec2<u32>(abs(~(~u_input.a.x)), u_input.a.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_div_f32(-983f, _wgslsmith_f_op_f32(floor(arg_0.c))))));
    var var_2 = _wgslsmith_mult_vec3_u32(select(~arg_0.a << (_wgslsmith_mod_vec3_u32(arg_0.a, vec3<u32>(13344u, 1u, var_0.x)) % vec3<u32>(32u)), select(vec3<u32>(0u, 19570u, 17426u) | vec3<u32>(4294967295u, 28157u, var_0.x), _wgslsmith_clamp_vec3_u32(arg_0.a, arg_1, arg_1), arg_0.b.xww), select(vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x), !arg_0.b.zxy, !vec3<bool>(true, false, arg_0.b.x))), select(~(arg_1 ^ vec3<u32>(var_0.x, u_input.a.x, 61582u)), ~arg_1, false)) & vec3<u32>(arg_1.x << (4294967295u % 32u), ~firstTrailingBit(arg_0.a.x), 44288u);
    let var_3 = select(false, !(!(~arg_1.x < 32295u)), true);
    let var_4 = arg_0;
    return ~1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(min(~u_input.a.x, u_input.b), ~5147u, 1u, 129u << (1u % 32u));
    var var_1 = -1557f;
    var var_2 = vec4<i32>(func_1(Struct_1(vec3<u32>(_wgslsmith_div_u32(23405u, var_0.x), ~1u, 1u), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(970f)) + _wgslsmith_f_op_f32(-1152f + -185f)), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(33633u, var_0.x)), var_0.wy)), ~vec3<u32>(_wgslsmith_mult_u32(8370u, u_input.c), u_input.b, 47222u << (var_0.x % 32u))), min(_wgslsmith_mod_i32(-func_1(Struct_1(var_0.wxw, vec4<bool>(false, false, true, true), 529f, u_input.c), var_0.wxz), 1i), _wgslsmith_clamp_i32(-54428i, _wgslsmith_dot_vec3_i32(vec3<i32>(7291i, 17183i, 2147483647i), vec3<i32>(2147483647i, 0i, 7029i)), select(48474i, -1i, false) & ~(-39639i))), i32(-1i) * -abs(_wgslsmith_dot_vec3_i32(vec3<i32>(23538i, 3764i, -2147483647i), vec3<i32>(2147483647i, -2147483647i, 0i))), max(~_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-55929i, 66738i, -34378i, 0i)), -vec4<i32>(2347i, 2147483647i, -1i, -1i)), _wgslsmith_mod_i32(53365i, _wgslsmith_clamp_i32(-46089i, -1i, ~57377i))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1152f)));
    let var_3 = Struct_1(~(~(~var_0.wyx) ^ max(~var_0.xyx, ~vec3<u32>(1u, 4294967295u, 70102u))), vec4<bool>(true, true, !select(false, true, all(vec2<bool>(false, false))), false), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(677f + -414f) + 645f) * _wgslsmith_f_op_f32(ceil(-1166f))), -1885f)), u_input.c);
    var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -183f) - _wgslsmith_f_op_f32(-1100f - var_3.c)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec4_f32(func_2(var_3.c)).x)), false != (all(select(vec4<bool>(var_3.b.x, true, true, false), var_3.b, var_3.b)) || !any(var_3.b.yxz))));
    let var_4 = _wgslsmith_dot_vec4_u32(var_0, _wgslsmith_add_vec4_u32(max(~var_0, countOneBits(abs(vec4<u32>(u_input.b, 48071u, 21721u, 13957u)))), var_0));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -264f)));
    var_1 = _wgslsmith_f_op_f32(round(164f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_mod_i32(var_2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, var_2.x, var_2.x, -1i), ~vec4<i32>(2147483647i, 1i, 40515i, 1i))), -3220i, i32(-1i) * -1i, var_2.x & _wgslsmith_div_i32(~var_2.x, max(var_2.x, var_2.x))), ~(_wgslsmith_mod_i32(0i, var_2.x) << (~var_3.d % 32u)) ^ (-max(var_2.x, -14805i) >> (_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(9955u, 51520u), var_3.a.yz), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 12170u, 24061u, var_4), vec4<u32>(u_input.a.x, 0u, var_0.x, u_input.a.x)), 0u) % 32u)), 0u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.c, -1000f, var_3.c) - vec3<f32>(var_3.c, 1037f, var_3.c)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-1991f, 1480f, -239f), vec3<f32>(var_3.c, var_3.c, 637f))))), var_3.c);
}

